@interface MFPreviewViewController
+ (OS_os_log)log;
- (MFPreviewViewController)init;
- (UIEdgeInsets)minMargins;
- (id)_errorLabel;
- (id)_messageForMessageIdentifier:(id)a3;
- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation MFPreviewViewController

+ (OS_os_log)log
{
  if (qword_10003DF90 != -1)
  {
    sub_10001AE04();
  }

  v3 = qword_10003DF88;

  return v3;
}

- (MFPreviewViewController)init
{
  v25.receiver = self;
  v25.super_class = MFPreviewViewController;
  v2 = [(MFPreviewViewController *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(EMDaemonInterface);
    daemonInterface = v2->_daemonInterface;
    v2->_daemonInterface = v3;

    [MFWKWebViewFactory setDaemonInterface:v2->_daemonInterface URLCacheWithMemoryCapacity:0];
    v5 = [(EMDaemonInterface *)v2->_daemonInterface vipManager];
    [VIPManager setBackingManager:v5];

    v6 = objc_alloc_init(MUICachingSVGConverter);
    v7 = [MUIBrandIndicatorProvider alloc];
    v8 = [(MFPreviewViewController *)v2 daemonInterface];
    v9 = [v8 messageRepository];
    v10 = [v7 initWithMessageRepository:v9 svgConverter:v6];
    [(MFPreviewViewController *)v2 setBrandIndicatorProvider:v10];

    v11 = objc_alloc_init(EMCachingContactStore);
    [(MFPreviewViewController *)v2 setContactStore:v11];

    objc_initWeak(&location, v2);
    v12 = [MUIAvatarImageGenerator alloc];
    brandIndicatorProvider = v2->_brandIndicatorProvider;
    v14 = [(MFPreviewViewController *)v2 daemonInterface];
    v15 = [v14 messageRepository];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100018964;
    v22 = &unk_100035030;
    objc_copyWeak(&v23, &location);
    v16 = [v12 initWithBimiProvider:brandIndicatorProvider messageRepository:v15 contactsProviderHandler:&v19];
    [(MFPreviewViewController *)v2 setAvatarGenerator:v16, v19, v20, v21, v22];

    v17 = [(MFPreviewViewController *)v2 avatarGenerator];
    [v17 allowGeneratingAvatarImages];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MFPreviewViewController;
  [(MFPreviewViewController *)&v13 viewDidLoad];
  [(MFPreviewViewController *)self systemMinimumLayoutMargins];
  v3 = [(MFPreviewViewController *)self view];
  -[MFPreviewViewController setIsRTL:](self, "setIsRTL:", [v3 mf_prefersRightToLeftInterfaceLayout]);

  [(MFPreviewViewController *)self isRTL];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  [(MFPreviewViewController *)self setMinMargins:?];
  p_minMargins = &self->_minMargins;
  top = p_minMargins->top;
  if (p_minMargins->top == 0.0 || (top = p_minMargins->right, top == 0.0) || (top = p_minMargins->bottom, top == 0.0) || (top = p_minMargins->left, top == 0.0))
  {
    v6 = +[MFPreviewViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromUIEdgeInsets(*p_minMargins);
      sub_10001AE18(v7, buf, v6);
    }

    __asm { FMOV            V0.2D, #16.0 }

    *&p_minMargins->top = _Q0;
    *&p_minMargins->bottom = _Q0;
  }
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MFPreviewViewController *)self _messageForMessageIdentifier:v7];
  v10 = +[EFScheduler mainThreadScheduler];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100018D80;
  v17[3] = &unk_100035058;
  objc_copyWeak(&v19, &location);
  v11 = v8;
  v18 = v11;
  [v9 onScheduler:v10 addSuccessBlock:v17];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100019210;
  v14[3] = &unk_100035080;
  v12 = v11;
  v16 = v12;
  v14[4] = self;
  v13 = v7;
  v15 = v13;
  [v9 onScheduler:v10 addFailureBlock:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (id)_errorLabel
{
  [(MFPreviewViewController *)self minMargins];
  v4 = v3;
  v5 = [(MFPreviewViewController *)self view];
  [v5 frame];
  v19 = CGRectInset(v18, v4, v4);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v10 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"MESSAGE_CAUSED_PROBLEM" value:&stru_100035108 table:@"Main"];
  [v10 setText:v12];

  v13 = +[UIColor labelColor];
  [v10 setTextColor:v13];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v10 setFont:v14];

  [v10 setNumberOfLines:2];
  [v10 setTextAlignment:1];
  [v10 sizeToFit];
  v15 = [(MFPreviewViewController *)self view];
  [v15 center];
  [v10 setCenter:?];

  return v10;
}

- (id)_messageForMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MFPreviewViewController *)self daemonInterface];
  v6 = [v5 messageRepository];

  v7 = [v6 messageForSearchableItemIdentifier:v4];

  return v7;
}

- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4
{
  v7 = a4;
  v5 = [(MFPreviewViewController *)self daemonInterface];
  v6 = [v5 messageRepository];
  [v6 noteViewOfRemoteContentLinks:v7];
}

- (UIEdgeInsets)minMargins
{
  top = self->_minMargins.top;
  left = self->_minMargins.left;
  bottom = self->_minMargins.bottom;
  right = self->_minMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end