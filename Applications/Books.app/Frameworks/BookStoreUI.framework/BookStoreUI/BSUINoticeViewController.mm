@interface BSUINoticeViewController
+ (BOOL)allowsAutoDownloadOfSamplesToWantToRead;
+ (BSUIAddToWTRDelegate)addToWTRDelegate;
+ (UIImage)noticeViewAddedImage;
+ (id)_noticeMessageForAddingAssets:(id)assets toCollectionNamed:(id)named isAddingToWantToRead:(BOOL)read useNonSpecificDeterminerInMessage:(BOOL)message;
+ (id)_presentedViewControllers;
+ (id)_presentingViewControllerForModalWithOptions:(id)options;
+ (void)dismissViewController:(id)controller;
+ (void)js_presentNoticeForAddingAssets:(id)assets toCollectionNamed:(id)named options:(id)options;
+ (void)presentNoticeForAddingAssets:(id)assets collectionTitle:(id)title collectionID:(id)d sourceViewController:(id)controller options:(id)options;
+ (void)presentNoticeForBookLoved:(BOOL)loved options:(id)options;
+ (void)presentNoticeForMigratingBooksCollection:(id)collection options:(id)options;
+ (void)presentNoticeForNoSampleAvailable:(BOOL)available options:(id)options;
+ (void)presentNoticeForRemovingBooks:(id)books fromCollectionNamed:(id)named options:(id)options useNonSpecificDeterminerInMessage:(BOOL)message;
+ (void)presentNoticeWithTitle:(id)title message:(id)message imageURLString:(id)string options:(id)options;
+ (void)presentNoticeWithTitle:(id)title message:(id)message symbolImageName:(id)name options:(id)options;
+ (void)presentViewController:(id)controller;
- (BOOL)shouldDismissAutomatically;
- (BSUINoticeViewController)initWithTitle:(id)title message:(id)message image:(id)image confirmString:(id)string;
- (BSUINoticeViewController)initWithTitle:(id)title message:(id)message imageURLString:(id)string;
- (UIVisualEffectView)noticeView;
- (int64_t)_lineCountForLabel:(id)label constrainedToWidth:(double)width;
- (void)_announceTheNoticeToAVoiceOverUser;
- (void)_hide:(BOOL)_hide withDelay:(double)delay;
- (void)_runWithOptions:(id)options completion:(id)completion;
- (void)_show:(BOOL)_show options:(id)options;
- (void)_updateTitleMessageAndConfirmLabels;
- (void)downloadIcon;
- (void)hide:(BOOL)hide;
- (void)show:(BOOL)show options:(id)options;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BSUINoticeViewController

+ (BSUIAddToWTRDelegate)addToWTRDelegate
{
  WeakRetained = objc_loadWeakRetained(&qword_3CA7F8);

  return WeakRetained;
}

- (BSUINoticeViewController)initWithTitle:(id)title message:(id)message image:(id)image confirmString:(id)string
{
  titleCopy = title;
  messageCopy = message;
  imageCopy = image;
  stringCopy = string;
  v27.receiver = self;
  v27.super_class = BSUINoticeViewController;
  v14 = [(BSUINoticeViewController *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(BSUINoticeViewController *)v14 setModalPresentationStyle:6];
    v16 = [titleCopy copy];
    noticeTitle = v15->_noticeTitle;
    v15->_noticeTitle = v16;

    v18 = [messageCopy copy];
    message = v15->_message;
    v15->_message = v18;

    v20 = [stringCopy copy];
    confirmString = v15->_confirmString;
    v15->_confirmString = v20;

    objc_storeStrong(&v15->_iconImage, image);
    v15->_iconImageAlwaysTemplate = 1;
    v22 = +[BSUINoticeViewLayout layoutWithAction:](BSUINoticeViewLayout, "layoutWithAction:", [stringCopy length] != 0);
    noticeViewLayout = v15->_noticeViewLayout;
    v15->_noticeViewLayout = v22;

    v24 = +[UITraitCollection bc_allAPITraits];
    v25 = [(BSUINoticeViewController *)v15 registerForTraitChanges:v24 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v15;
}

- (BSUINoticeViewController)initWithTitle:(id)title message:(id)message imageURLString:(id)string
{
  titleCopy = title;
  messageCopy = message;
  stringCopy = string;
  v24.receiver = self;
  v24.super_class = BSUINoticeViewController;
  v11 = [(BSUINoticeViewController *)&v24 init];
  v12 = v11;
  if (v11)
  {
    [(BSUINoticeViewController *)v11 setModalPresentationStyle:6];
    v13 = [titleCopy copy];
    noticeTitle = v12->_noticeTitle;
    v12->_noticeTitle = v13;

    v15 = [messageCopy copy];
    message = v12->_message;
    v12->_message = v15;

    v17 = [stringCopy copy];
    imageURL = v12->_imageURL;
    v12->_imageURL = v17;

    v12->_iconImageAlwaysTemplate = 1;
    v19 = [BSUINoticeViewLayout layoutWithAction:0];
    noticeViewLayout = v12->_noticeViewLayout;
    v12->_noticeViewLayout = v19;

    v21 = +[UITraitCollection bc_allAPITraits];
    v22 = [(BSUINoticeViewController *)v12 registerForTraitChanges:v21 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v12;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v53 viewDidLoad];
  shouldDismissAutomatically = [(BSUINoticeViewController *)self shouldDismissAutomatically];
  view = [(BSUINoticeViewController *)self view];
  v5 = view;
  if (shouldDismissAutomatically)
  {
    [view setAccessibilityElementsHidden:1];

    view2 = [(BSUINoticeViewController *)self view];
    [view2 setAccessibilityElements:0];

    presentationController = [(BSUINoticeViewController *)self presentationController];
    [presentationController _setContainerIgnoresDirectTouchEvents:1];

    view3 = [(BSUINoticeViewController *)self view];
    [view3 setUserInteractionEnabled:0];
  }

  else
  {
    [view setAccessibilityViewIsModal:1];

    view3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapGesture:"];
    noticeView = [(BSUINoticeViewController *)self noticeView];
    contentView = [noticeView contentView];
    [contentView addGestureRecognizer:view3];
  }

  v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BSUINoticeViewController *)self setIconImageView:v11];

  iconImageView = [(BSUINoticeViewController *)self iconImageView];
  [iconImageView setContentMode:1];

  iconImageView2 = [(BSUINoticeViewController *)self iconImageView];
  [iconImageView2 setAlpha:0.64];

  iconImage = [(BSUINoticeViewController *)self iconImage];

  if (iconImage)
  {
    iconImageAlwaysTemplate = [(BSUINoticeViewController *)self iconImageAlwaysTemplate];
    iconImage2 = [(BSUINoticeViewController *)self iconImage];
    v17 = iconImage2;
    v18 = iconImage2;
    if (iconImageAlwaysTemplate)
    {
      v18 = [iconImage2 imageWithRenderingMode:2];
    }

    iconImageView3 = [(BSUINoticeViewController *)self iconImageView];
    [iconImageView3 setImage:v18];

    if (iconImageAlwaysTemplate)
    {
    }
  }

  else
  {
    [(BSUINoticeViewController *)self downloadIcon];
  }

  v20 = objc_alloc_init(UILabel);
  [(BSUINoticeViewController *)self setTitleLabel:v20];

  v21 = UIAccessibilityTraitStaticText;
  v22 = UIAccessibilityTraitHeader;
  titleLabel = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel setAccessibilityTraits:v22 | v21];

  titleLabel2 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleLabel3 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel3 setNumberOfLines:2];

  titleLabel4 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel4 setLineBreakMode:4];

  v27 = objc_alloc_init(UILabel);
  [(BSUINoticeViewController *)self setMessageLabel:v27];

  messageLabel = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel setTextAlignment:1];

  messageLabel2 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel2 setNumberOfLines:0];

  messageLabel3 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel3 setLineBreakMode:4];

  confirmString = [(BSUINoticeViewController *)self confirmString];

  if (confirmString)
  {
    v32 = objc_alloc_init(UILabel);
    [(BSUINoticeViewController *)self setConfirmLabel:v32];

    v33 = UIAccessibilityTraitButton;
    confirmLabel = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel setAccessibilityTraits:v33];

    confirmLabel2 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel2 setTextAlignment:1];

    confirmLabel3 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel3 setNumberOfLines:1];

    confirmLabel4 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel4 setLineBreakMode:4];
  }

  [(BSUINoticeViewController *)self _updateTitleMessageAndConfirmLabels];
  noticeView2 = [(BSUINoticeViewController *)self noticeView];
  contentView2 = [noticeView2 contentView];
  iconImageView4 = [(BSUINoticeViewController *)self iconImageView];
  [contentView2 addSubview:iconImageView4];

  noticeView3 = [(BSUINoticeViewController *)self noticeView];
  contentView3 = [noticeView3 contentView];
  titleLabel5 = [(BSUINoticeViewController *)self titleLabel];
  [contentView3 addSubview:titleLabel5];

  noticeView4 = [(BSUINoticeViewController *)self noticeView];
  contentView4 = [noticeView4 contentView];
  messageLabel4 = [(BSUINoticeViewController *)self messageLabel];
  [contentView4 addSubview:messageLabel4];

  confirmLabel5 = [(BSUINoticeViewController *)self confirmLabel];

  if (confirmLabel5)
  {
    noticeView5 = [(BSUINoticeViewController *)self noticeView];
    contentView5 = [noticeView5 contentView];
    confirmLabel6 = [(BSUINoticeViewController *)self confirmLabel];
    [contentView5 addSubview:confirmLabel6];
  }

  view4 = [(BSUINoticeViewController *)self view];
  noticeView6 = [(BSUINoticeViewController *)self noticeView];
  [view4 addSubview:noticeView6];
}

- (void)viewDidLayoutSubviews
{
  v156.receiver = self;
  v156.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v156 viewDidLayoutSubviews];
  noticeViewLayout = [(BSUINoticeViewController *)self noticeViewLayout];
  titleLabel = [(BSUINoticeViewController *)self titleLabel];
  text = [titleLabel text];
  v159 = NSFontAttributeName;
  titleLabel2 = [(BSUINoticeViewController *)self titleLabel];
  font = [titleLabel2 font];
  v160 = font;
  v8 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  [text sizeWithAttributes:v8];
  v10 = v9;

  messageLabel = [(BSUINoticeViewController *)self messageLabel];
  [noticeViewLayout defaultSize];
  v13 = v12;
  [noticeViewLayout horizontalMargin];
  v15 = [(BSUINoticeViewController *)self _lineCountForLabel:messageLabel constrainedToWidth:v13 + v14 * -2.0];

  if (v15 >= 5)
  {
    messageLabel2 = [(BSUINoticeViewController *)self messageLabel];
    text2 = [messageLabel2 text];
    v157 = NSFontAttributeName;
    messageLabel3 = [(BSUINoticeViewController *)self messageLabel];
    font2 = [messageLabel3 font];
    v158 = font2;
    v20 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
    [text2 sizeWithAttributes:v20];
    v22 = v21;

    if (v10 < v22)
    {
      v10 = v22;
    }
  }

  [noticeViewLayout defaultSize];
  v24 = v23;
  [noticeViewLayout horizontalMargin];
  v26 = v10 + v25 * 2.0;
  if (v24 >= v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  [noticeViewLayout maxWidth];
  if (v27 >= v28)
  {
    v27 = v28;
  }

  [noticeViewLayout maxHeight];
  v30 = v29;
  noticeView = [(BSUINoticeViewController *)self noticeView];
  [noticeView setFrame:{0.0, 0.0, v27, v30}];

  [noticeViewLayout maxHeight];
  v33 = v32;
  [noticeViewLayout topContentInset];
  v35 = v33 - v34;
  [noticeViewLayout bottomContentInset];
  v37 = v35 - v36;
  [noticeViewLayout imageSize];
  v39 = v38;
  [noticeViewLayout imageSize];
  v41 = v40;
  [noticeViewLayout imageSize];
  if (CGSizeZero.width == v43 && CGSizeZero.height == v42)
  {
    iconImage = [(BSUINoticeViewController *)self iconImage];
    [iconImage size];
    v39 = v45;
    v41 = v46;
  }

  [noticeViewLayout topContentInset];
  v48 = v47 + 0.0;
  iconImageView = [(BSUINoticeViewController *)self iconImageView];
  [iconImageView setFrame:{(v27 - v39) * 0.5, v48, v39, v41}];

  v50 = v41 + v48;
  v51 = v37 - v41;
  [noticeViewLayout titleTopMargin];
  v53 = v50 + v52;
  [noticeViewLayout titleTopMargin];
  v155 = v51 - v54;
  titleLabel3 = [(BSUINoticeViewController *)self titleLabel];
  [noticeViewLayout horizontalMargin];
  v57 = v27 + v56 * -2.0;
  titleLabel4 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel4 bounds];
  [titleLabel3 sizeThatFits:{v57, v59}];
  v61 = v60;

  [noticeViewLayout horizontalMargin];
  v63 = v62;
  [noticeViewLayout horizontalMargin];
  v65 = v27 + v64 * -2.0;
  titleLabel5 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel5 setFrame:{v63, v53 - v61 * 0.5, v65, v61 + v61 * 0.5 * 2.0}];

  titleLabel6 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel6 center];
  v69 = v68;
  titleLabel7 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel7 setCenter:{v27 * 0.5, v69}];

  titleLabel8 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel8 _lastLineBaseline];
  v73 = v53 + ceil(v72 - v61 * 0.5);

  titleLabel9 = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel9 _lastLineBaseline];
  v76 = v155 - ceil(v75 - v61 * 0.5);

  [noticeViewLayout messageTopMargin];
  v78 = v73 + v77;
  [noticeViewLayout messageTopMargin];
  v80 = v76 - v79;
  messageLabel4 = [(BSUINoticeViewController *)self messageLabel];
  [noticeViewLayout horizontalMargin];
  [messageLabel4 sizeThatFits:{v27 + v82 * -2.0, v80}];
  v84 = v83;

  [noticeViewLayout horizontalMargin];
  v86 = v85;
  [noticeViewLayout horizontalMargin];
  v88 = v27 + v87 * -2.0;
  messageLabel5 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel5 setFrame:{v86, v78, v88, v84}];

  messageLabel6 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel6 center];
  v92 = v91;
  messageLabel7 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel7 setCenter:{v27 * 0.5, v92}];

  messageLabel8 = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel8 _lastLineBaseline];
  v96 = v78 + ceil(v95);

  confirmLabel = [(BSUINoticeViewController *)self confirmLabel];

  if (confirmLabel)
  {
    [noticeViewLayout confirmLabelTopMargin];
    v99 = v96 + v98;
    confirmLabel2 = [(BSUINoticeViewController *)self confirmLabel];
    [noticeViewLayout horizontalMargin];
    v102 = v27 + v101 * -2.0;
    confirmLabel3 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel3 bounds];
    [confirmLabel2 sizeThatFits:{v102, v104}];
    v106 = v105;

    if (v106 < 32.0)
    {
      v106 = 32.0;
    }

    [noticeViewLayout horizontalMargin];
    v108 = v107;
    [noticeViewLayout horizontalMargin];
    v110 = v27 + v109 * -2.0;
    confirmLabel4 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel4 setFrame:{v108, v99, v110, v106}];

    confirmLabel5 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel5 center];
    v114 = v113;
    confirmLabel6 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel6 setCenter:{v27 * 0.5, v114}];

    confirmLabel7 = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel7 _lastLineBaseline];
    v96 = v99 + ceil(v117);
  }

  [noticeViewLayout bottomContentInset];
  v119 = v96 + v118;
  [noticeViewLayout maxHeight];
  if (v119 >= v120)
  {
    v119 = v120;
  }

  noticeView2 = [(BSUINoticeViewController *)self noticeView];
  [noticeView2 frame];
  MinX = CGRectGetMinX(v161);
  noticeView3 = [(BSUINoticeViewController *)self noticeView];
  [noticeView3 frame];
  MinY = CGRectGetMinY(v162);
  noticeView4 = [(BSUINoticeViewController *)self noticeView];
  [noticeView4 setFrame:{MinX, MinY, v27, v119}];

  noticeView5 = [(BSUINoticeViewController *)self noticeView];
  [noticeView5 frame];
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  view = [(BSUINoticeViewController *)self view];
  [view bounds];
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  traitCollection = [(BSUINoticeViewController *)self traitCollection];
  [traitCollection displayScale];
  [BSUIGeometryUtils centeredCGRectFromRect:1 centerHorizontally:1 centerVertically:v128 bounds:v130 scale:v132, v134, v137, v139, v141, v143, v145];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;
  noticeView6 = [(BSUINoticeViewController *)self noticeView];
  [noticeView6 setFrame:{v147, v149, v151, v153}];
}

- (BOOL)shouldDismissAutomatically
{
  confirmString = [(BSUINoticeViewController *)self confirmString];
  v3 = confirmString == 0;

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v4 viewDidAppear:appear];
  if ([(BSUINoticeViewController *)self shouldDismissAutomatically])
  {
    [(BSUINoticeViewController *)self _announceTheNoticeToAVoiceOverUser];
  }
}

- (void)_announceTheNoticeToAVoiceOverUser
{
  v13 = objc_opt_new();
  noticeTitle = [(BSUINoticeViewController *)self noticeTitle];
  v4 = [noticeTitle length];

  if (v4)
  {
    noticeTitle2 = [(BSUINoticeViewController *)self noticeTitle];
    [v13 addObject:noticeTitle2];
  }

  message = [(BSUINoticeViewController *)self message];
  v7 = [message length];

  if (v7)
  {
    message2 = [(BSUINoticeViewController *)self message];
    [v13 addObject:message2];
  }

  confirmString = [(BSUINoticeViewController *)self confirmString];
  v10 = [confirmString length];

  if (v10)
  {
    confirmString2 = [(BSUINoticeViewController *)self confirmString];
    [v13 addObject:confirmString2];
  }

  if ([v13 count])
  {
    v12 = [v13 componentsJoinedByString:{@", "}];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v3 viewWillLayoutSubviews];
  [(BSUINoticeViewController *)self updateUI];
}

- (void)_updateTitleMessageAndConfirmLabels
{
  v3 = [NSAttributedString alloc];
  noticeTitle = [(BSUINoticeViewController *)self noticeTitle];
  v5 = +[BSUINoticeViewController noticeViewTitleFontAttributes];
  v6 = [v3 initWithString:noticeTitle attributes:v5];
  titleLabel = [(BSUINoticeViewController *)self titleLabel];
  [titleLabel setAttributedText:v6];

  v8 = [NSAttributedString alloc];
  message = [(BSUINoticeViewController *)self message];
  v10 = +[BSUINoticeViewController noticeViewMessageFontAttributes];
  v11 = [v8 initWithString:message attributes:v10];
  messageLabel = [(BSUINoticeViewController *)self messageLabel];
  [messageLabel setAttributedText:v11];

  confirmString = [(BSUINoticeViewController *)self confirmString];

  if (confirmString)
  {
    v14 = [NSAttributedString alloc];
    confirmString2 = [(BSUINoticeViewController *)self confirmString];
    v15 = +[BSUINoticeViewController noticeViewConfirmLabelFontAttributes];
    v16 = [v14 initWithString:confirmString2 attributes:v15];
    confirmLabel = [(BSUINoticeViewController *)self confirmLabel];
    [confirmLabel setAttributedText:v16];
  }
}

- (void)updateUI
{
  v3 = +[UIColor bc_booksKeyColor];
  iconImageView = [(BSUINoticeViewController *)self iconImageView];
  [iconImageView setTintColor:v3];

  traitCollection = [(BSUINoticeViewController *)self traitCollection];
  if ([traitCollection bc_userInterfaceStyleDark])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [UIBlurEffect effectWithStyle:v6];
  noticeView = [(BSUINoticeViewController *)self noticeView];
  [noticeView setEffect:v7];

  [(BSUINoticeViewController *)self _updateTitleMessageAndConfirmLabels];
}

- (UIVisualEffectView)noticeView
{
  noticeView = self->_noticeView;
  if (!noticeView)
  {
    v4 = [[UIVisualEffectView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_noticeView;
    self->_noticeView = v4;

    v6 = [UIBlurEffect effectWithStyle:0];
    [(UIVisualEffectView *)self->_noticeView setEffect:v6];

    [(UIVisualEffectView *)self->_noticeView setClipsToBounds:1];
    v7 = _UISolariumEnabled();
    v8 = 12.0;
    if (v7)
    {
      v8 = 25.0;
    }

    [(UIVisualEffectView *)self->_noticeView _setContinuousCornerRadius:v8];
    noticeView = self->_noticeView;
  }

  return noticeView;
}

- (void)downloadIcon
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(2, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_36F74;
  v3[3] = &unk_387698;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

+ (id)_presentedViewControllers
{
  if (qword_3CA808 != -1)
  {
    sub_2BD9F4();
  }

  v3 = qword_3CA800;

  return v3;
}

+ (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  _presentedViewControllers = [self _presentedViewControllers];
  v6 = [_presentedViewControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(_presentedViewControllers);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 shouldDismissAutomatically])
        {
          [v10 hide:1];
        }
      }

      v7 = [_presentedViewControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  window = [controllerCopy window];
  window2 = [controllerCopy window];
  sub_3737C(self, controllerCopy, window2);

  view = [controllerCopy view];
  [window addSubview:view];

  window3 = [controllerCopy window];
  [window3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  view2 = [controllerCopy view];
  [view2 setFrame:{v16, v18, v20, v22}];

  _presentedViewControllers2 = [self _presentedViewControllers];
  [_presentedViewControllers2 addObject:controllerCopy];
}

+ (id)_presentingViewControllerForModalWithOptions:(id)options
{
  v3 = sub_3747C(self, options);
  v4 = [UIViewController jsa_topMostViewControllerForWindow:v3];

  return v4;
}

+ (void)dismissViewController:(id)controller
{
  controllerCopy = controller;
  _presentedViewControllers = [self _presentedViewControllers];
  v5 = [_presentedViewControllers containsObject:controllerCopy];

  if (v5)
  {
    view = [controllerCopy view];
    [view removeFromSuperview];

    _presentedViewControllers2 = [self _presentedViewControllers];
    [_presentedViewControllers2 removeObject:controllerCopy];
  }

  completion = [controllerCopy completion];
  [controllerCopy setCompletion:0];
  if (completion)
  {
    dispatch_async(&_dispatch_main_q, completion);
  }
}

- (void)_runWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  [(BSUINoticeViewController *)self setCompletion:completion];
  [(BSUINoticeViewController *)self show:1 options:optionsCopy];
}

- (void)show:(BOOL)show options:(id)options
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_37778;
  v8[3] = &unk_386FD8;
  v8[4] = self;
  showCopy = show;
  optionsCopy = options;
  v9 = optionsCopy;
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_37788;
      v6[3] = &unk_386C58;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (void)_show:(BOOL)_show options:(id)options
{
  _showCopy = _show;
  optionsCopy = options;
  view = [(BSUINoticeViewController *)self view];
  [view setAlpha:0.0];

  CGAffineTransformMakeScale(&v15, 0.88, 0.88);
  view2 = [(BSUINoticeViewController *)self view];
  v14 = v15;
  [view2 setTransform:&v14];

  v9 = sub_3747C(BSUINoticeViewController, optionsCopy);

  [(BSUINoticeViewController *)self setWindow:v9];
  [BSUINoticeViewController presentViewController:self];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_37970;
  v13[3] = &unk_3873D8;
  v13[4] = self;
  v10 = objc_retainBlock(v13);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_379F0;
  v12[3] = &unk_388288;
  v12[4] = self;
  v11 = objc_retainBlock(v12);
  if (_showCopy)
  {
    [UIView animateWithDuration:131074 delay:v10 options:v11 animations:0.2 completion:0.0];
  }

  else
  {
    (v10[2])(v10);
    (v11[2])(v11, 1);
  }
}

- (void)hide:(BOOL)hide
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_37B98;
  v6[3] = &unk_3882B0;
  v6[4] = self;
  hideCopy = hide;
  v3 = objc_retainBlock(v6);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_37BAC;
      block[3] = &unk_386C58;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_hide:(BOOL)_hide withDelay:(double)delay
{
  _hideCopy = _hide;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_37D04;
  v10[3] = &unk_3873D8;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_37D88;
  v9[3] = &unk_388288;
  v9[4] = self;
  v8 = objc_retainBlock(v9);
  if (_hideCopy)
  {
    [UIView animateWithDuration:131074 delay:v7 options:v8 animations:0.2 completion:delay];
  }

  else
  {
    (v7[2])(v7);
    (v8[2])(v8, 1);
  }
}

+ (void)presentNoticeWithTitle:(id)title message:(id)message symbolImageName:(id)name options:(id)options
{
  titleCopy = title;
  messageCopy = message;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_37EA4;
  v15[3] = &unk_3882D8;
  nameCopy = name;
  v17 = titleCopy;
  v18 = messageCopy;
  optionsCopy = options;
  v11 = optionsCopy;
  v12 = messageCopy;
  v13 = titleCopy;
  v14 = nameCopy;
  dispatch_async(&_dispatch_main_q, v15);
}

+ (void)presentNoticeWithTitle:(id)title message:(id)message imageURLString:(id)string options:(id)options
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3807C;
  v13[3] = &unk_3882D8;
  titleCopy = title;
  messageCopy = message;
  stringCopy = string;
  optionsCopy = options;
  v9 = optionsCopy;
  v10 = stringCopy;
  v11 = messageCopy;
  v12 = titleCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

+ (void)js_presentNoticeForAddingAssets:(id)assets toCollectionNamed:(id)named options:(id)options
{
  optionsCopy = options;
  namedCopy = named;
  assetsCopy = assets;
  v11 = BSUIBundle();
  v13 = [v11 localizedStringForKey:@"Want to Read" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  if ([namedCopy isEqualToString:v13])
  {
    v12 = kBKCollectionDefaultIDWantToRead;
  }

  else
  {
    v12 = 0;
  }

  [self presentNoticeForAddingAssets:assetsCopy collectionTitle:namedCopy collectionID:v12 sourceViewController:0 options:optionsCopy];
}

+ (id)_noticeMessageForAddingAssets:(id)assets toCollectionNamed:(id)named isAddingToWantToRead:(BOOL)read useNonSpecificDeterminerInMessage:(BOOL)message
{
  messageCopy = message;
  readCopy = read;
  assetsCopy = assets;
  namedCopy = named;
  v12 = BSUIBundle();
  v13 = [v12 localizedStringForKey:@"\\U2026" value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  v14 = [namedCopy stringByTruncatingToLength:50 options:3 truncationString:v13];

  v15 = [assetsCopy count];
  if (!readCopy)
  {
    if (v15 != &dword_0 + 1)
    {
      allValues = [assetsCopy allValues];
      lastObject = [NSSet setWithArray:allValues];

      if ([lastObject count] == &dword_0 + 1)
      {
        anyObject = [lastObject anyObject];
        integerValue = [anyObject integerValue];

        v18 = BSUIBundle();
        if (integerValue == &dword_4 + 2)
        {
          if (messageCopy)
          {
            v37 = @"The audiobooks were added to %@.";
          }

          else
          {
            v37 = @"These audiobooks were added to %@.";
          }
        }

        else if (integerValue == &dword_0 + 3)
        {
          if (messageCopy)
          {
            v37 = @"The PDFs were added to %@.";
          }

          else
          {
            v37 = @"These PDFs were added to %@.";
          }
        }

        else if (messageCopy)
        {
          v37 = @"The books were added to %@.";
        }

        else
        {
          v37 = @"These books were added to %@.";
        }
      }

      else
      {
        v18 = BSUIBundle();
        if (messageCopy)
        {
          v37 = @"The items were added to %@.";
        }

        else
        {
          v37 = @"These items were added to %@.";
        }
      }

      v58 = [v18 localizedStringForKey:v37 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
      v29 = [NSString localizedStringWithFormat:v58, v14];

      goto LABEL_72;
    }

    allValues2 = [assetsCopy allValues];
    lastObject = [allValues2 lastObject];

    integerValue2 = [lastObject integerValue];
    v22 = BSUIBundle();
    v23 = v22;
    v24 = @"This audiobook was added to %@.";
    if (messageCopy)
    {
      v24 = @"The audiobook was added to %@.";
      v25 = @"The book was added to %@.";
    }

    else
    {
      v25 = @"This book was added to %@.";
    }

    v26 = @"This PDF was added to %@.";
    if (messageCopy)
    {
      v26 = @"The PDF was added to %@.";
    }

    if (integerValue2 == &dword_0 + 3)
    {
      v25 = v26;
    }

    if (integerValue2 == &dword_4 + 2)
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    v28 = [v22 localizedStringForKey:v27 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    v29 = [NSString localizedStringWithFormat:v28, v14];

    goto LABEL_73;
  }

  if (v15 == &dword_0 + 1)
  {
    allValues3 = [assetsCopy allValues];
    lastObject = [allValues3 lastObject];

    integerValue3 = [lastObject integerValue];
    if (integerValue3 == &dword_4 + 2)
    {
      v18 = BSUIBundle();
      if (messageCopy)
      {
        v19 = @"The audiobook was added to your Want to Read list in Home.";
      }

      else
      {
        v19 = @"This audiobook was added to your Want to Read list in Home.";
      }

      goto LABEL_63;
    }

    if (integerValue3 == &dword_0 + 3)
    {
      v18 = BSUIBundle();
      if (messageCopy)
      {
        v19 = @"The PDF was added to your Want to Read collection and can be viewed in Home.";
      }

      else
      {
        v19 = @"This PDF was added to your Want to Read collection and can be viewed in Home.";
      }

      goto LABEL_63;
    }

    objc_opt_class();
    v38 = +[BSUITemplate manager];
    dynamicRegistry = [v38 dynamicRegistry];
    v40 = [dynamicRegistry stateProviderForKind:@"libraryItem"];
    v18 = BUDynamicCast();

    provider = [v18 provider];
    allKeys = [assetsCopy allKeys];
    lastObject2 = [allKeys lastObject];

    v44 = [provider itemStateWithIdentifier:lastObject2];
    if ([v44 library] == &dword_4 || objc_msgSend(v44, "library") == &dword_0 + 2)
    {
      [v44 isSample];
    }

    else
    {
      library = [v44 library];
      isSample = [v44 isSample];
      if (library != &dword_4 + 1 && (isSample & 1) == 0 && [self allowsAutoDownloadOfSamplesToWantToRead])
      {
        v45 = BSUIBundle();
        if (messageCopy)
        {
          v46 = @"The book was added to your Want to Read list in Home, and a sample was downloaded.";
        }

        else
        {
          v46 = @"This book was added to your Want to Read list in Home, and a sample was downloaded.";
        }

        goto LABEL_59;
      }
    }

    v45 = BSUIBundle();
    if (messageCopy)
    {
      v46 = @"The book was added to your Want to Read list in Home.";
    }

    else
    {
      v46 = @"This book was added to your Want to Read list in Home.";
    }

LABEL_59:
    v29 = [v45 localizedStringForKey:v46 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

LABEL_72:
    goto LABEL_73;
  }

  allValues4 = [assetsCopy allValues];
  lastObject = [NSSet setWithArray:allValues4];

  if ([lastObject count] != &dword_0 + 1)
  {
    v18 = BSUIBundle();
    if (messageCopy)
    {
      v19 = @"The items were added to your Want to Read collection and can be viewed in Home.";
    }

    else
    {
      v19 = @"These items were added to your Want to Read collection and can be viewed in Home.";
    }

    goto LABEL_63;
  }

  anyObject2 = [lastObject anyObject];
  integerValue4 = [anyObject2 integerValue];

  if (integerValue4 == &dword_4 + 2)
  {
    v18 = BSUIBundle();
    if (messageCopy)
    {
      v19 = @"The audiobooks were added to your Want to Read list in Home.";
    }

    else
    {
      v19 = @"These audiobooks were added to your Want to Read list in Home.";
    }

    goto LABEL_63;
  }

  if (integerValue4 == &dword_0 + 3)
  {
    v18 = BSUIBundle();
    if (messageCopy)
    {
      v19 = @"The PDFs were added to your Want to Read collection and can be viewed in Home.";
    }

    else
    {
      v19 = @"These PDFs were added to your Want to Read collection and can be viewed in Home.";
    }

LABEL_63:
    v29 = [v18 localizedStringForKey:v19 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    goto LABEL_72;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  if ([self allowsAutoDownloadOfSamplesToWantToRead])
  {
    objc_opt_class();
    v47 = +[BSUITemplate manager];
    dynamicRegistry2 = [v47 dynamicRegistry];
    v49 = [dynamicRegistry2 stateProviderForKind:@"libraryItem"];
    v50 = BUDynamicCast();

    provider2 = [v50 provider];
    allKeys2 = [assetsCopy allKeys];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_389F8;
    v60[3] = &unk_388300;
    v53 = provider2;
    v61 = v53;
    v62 = &v63;
    [allKeys2 enumerateObjectsUsingBlock:v60];
  }

  if (*(v64 + 24) == 1)
  {
    v54 = BSUIBundle();
    if (messageCopy)
    {
      [v54 localizedStringForKey:@"The books were added to your Want to Read list in Home value:and samples were downloaded." table:{&stru_3960F8, @"BookStoreUILocalizable"}];
    }

    else
    {
      [v54 localizedStringForKey:@"These books were added to your Want to Read list in Home value:and samples were downloaded." table:{&stru_3960F8, @"BookStoreUILocalizable"}];
    }
  }

  else
  {
    v54 = BSUIBundle();
    if (messageCopy)
    {
      [v54 localizedStringForKey:@"The books were added to your Want to Read list in Home." value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    }

    else
    {
      [v54 localizedStringForKey:@"These books were added to your Want to Read list in Home." value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    }
  }
  v55 = ;
  v29 = v55;

  _Block_object_dispose(&v63, 8);
LABEL_73:

  return v29;
}

+ (UIImage)noticeViewAddedImage
{
  v2 = _UISolariumEnabled();
  v3 = [UIImage systemImageNamed:@"text.badge.checkmark"];
  if (v2)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:192.0];
  }
  v4 = ;
  v5 = [v3 imageWithConfiguration:v4];

  return v5;
}

+ (void)presentNoticeForRemovingBooks:(id)books fromCollectionNamed:(id)named options:(id)options useNonSpecificDeterminerInMessage:(BOOL)message
{
  booksCopy = books;
  optionsCopy = options;
  namedCopy = named;
  v12 = BSUIBundle();
  v13 = [v12 localizedStringForKey:@"\\U2026" value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  v14 = [namedCopy stringByTruncatingToLength:50 options:3 truncationString:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_38CD0;
  v18[3] = &unk_388328;
  messageCopy = message;
  v19 = booksCopy;
  v20 = v14;
  v21 = optionsCopy;
  v15 = optionsCopy;
  v16 = v14;
  v17 = booksCopy;
  dispatch_async(&_dispatch_main_q, v18);
}

+ (void)presentNoticeForBookLoved:(BOOL)loved options:(id)options
{
  lovedCopy = loved;
  optionsCopy = options;
  v6 = BSUIBundle();
  v7 = v6;
  if (lovedCopy)
  {
    v8 = @"Suggest More";
  }

  else
  {
    v8 = @"Suggest Less";
  }

  if (lovedCopy)
  {
    v9 = @"Books will suggest more like this.";
  }

  else
  {
    v9 = @"Books will suggest less like this.";
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v11 = BSUIBundle();
  v12 = [v11 localizedStringForKey:v9 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_39188;
  v16[3] = &unk_388328;
  v20 = lovedCopy;
  v17 = v10;
  v18 = v12;
  v19 = optionsCopy;
  v13 = optionsCopy;
  v14 = v12;
  v15 = v10;
  dispatch_async(&_dispatch_main_q, v16);
}

+ (void)presentNoticeForMigratingBooksCollection:(id)collection options:(id)options
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_39344;
  v7[3] = &unk_386D98;
  collectionCopy = collection;
  optionsCopy = options;
  v5 = optionsCopy;
  v6 = collectionCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)presentNoticeForNoSampleAvailable:(BOOL)available options:(id)options
{
  availableCopy = available;
  optionsCopy = options;
  v6 = BSUIBundle();
  v7 = [v6 localizedStringForKey:@"No Sample" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v8 = BSUIBundle();
  v9 = v8;
  if (availableCopy)
  {
    v10 = @"There’s no sample available for this audiobook.";
  }

  else
  {
    v10 = @"There’s no sample available for this book.";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39664;
  block[3] = &unk_387000;
  v16 = v7;
  v17 = v11;
  v18 = optionsCopy;
  v12 = optionsCopy;
  v13 = v11;
  v14 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (int64_t)_lineCountForLabel:(id)label constrainedToWidth:(double)width
{
  labelCopy = label;
  text = [labelCopy text];

  if (text)
  {
    v7 = objc_alloc_init(NSStringDrawingContext);
    [v7 setWantsNumberOfLineFragments:1];
    text2 = [labelCopy text];
    v13 = NSFontAttributeName;
    font = [labelCopy font];
    v14 = font;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [text2 boundingRectWithSize:33 options:v10 attributes:v7 context:{width, 1.79769313e308}];

    numberOfLineFragments = [v7 numberOfLineFragments];
  }

  else
  {
    numberOfLineFragments = 0;
  }

  return numberOfLineFragments;
}

+ (BOOL)allowsAutoDownloadOfSamplesToWantToRead
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  configs = [v2 configs];
  v4 = [configs valueForKeyPath:BRCBooksDefaultsKeyReadingNowWtrSimpleModeEnabled];
  v5 = BUDynamicCast();

  LOBYTE(v2) = [v5 BOOLValue];
  return v2 ^ 1;
}

+ (void)presentNoticeForAddingAssets:(id)assets collectionTitle:(id)title collectionID:(id)d sourceViewController:(id)controller options:(id)options
{
  v10 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  sub_66278(0, &qword_3BC790);
  v25 = sub_2C57E8();
  v13 = sub_2C58C8();
  v15 = v14;
  if (!d)
  {
    v17 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  d = sub_2C58C8();
  v17 = v16;
  if (options)
  {
LABEL_3:
    options = sub_2C57E8();
  }

LABEL_4:
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v19 = sub_2C5C58();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_2C5C18();
  controllerCopy = controller;
  v21 = sub_2C5C08();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v23 = v25;
  v22[4] = ObjCClassMetadata;
  v22[5] = v23;
  v22[6] = v13;
  v22[7] = v15;
  v22[8] = d;
  v22[9] = v17;
  v22[10] = options;
  v22[11] = controller;
  sub_249B98(0, 0, v12, &unk_2FBD88, v22);
}

@end