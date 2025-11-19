@interface NPKRemotePassActionCompanionBubbleViewController
+ (id)_cardArtImageForMessage:(id)a3;
+ (id)_fallbackHeaderImageForMessage:(id)a3;
+ (id)_makeViewModelForMessage:(id)a3;
- (CGSize)suggestedViewSizeThatFits:(CGSize)a3;
- (CGSize)suggestedViewSizeThatFits:(CGSize)a3 message:(id)a4;
- (NPKRemotePassActionCompanionBubbleViewController)initWithMessage:(id)a3 delegate:(id)a4;
- (void)_setUpMessageBubbleForMessage:(id)a3;
- (void)_updateMessageBubbleForMessage:(id)a3;
- (void)remotePassActionRequestBubbleContentViewDidReceiveTap:(id)a3;
- (void)viewDidLoad;
@end

@implementation NPKRemotePassActionCompanionBubbleViewController

- (NPKRemotePassActionCompanionBubbleViewController)initWithMessage:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NPKRemotePassActionCompanionBubbleViewController;
  v9 = [(NPKRemotePassActionCompanionBubbleViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [[NPKRemotePassActionCompanionBubbleContentView alloc] initWithDelegate:v10];
    bubbleContentView = v10->_bubbleContentView;
    v10->_bubbleContentView = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionBubbleViewController;
  [(NPKRemotePassActionCompanionBubbleViewController *)&v5 viewDidLoad];
  [(NPKRemotePassActionCompanionBubbleViewController *)self _setUpMessageBubbleForMessage:self->_message];
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView backgroundColor];
  v4 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (CGSize)suggestedViewSizeThatFits:(CGSize)a3
{
  [(NPKRemotePassActionCompanionBubbleViewController *)self suggestedViewSizeThatFits:self->_message message:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)suggestedViewSizeThatFits:(CGSize)a3 message:(id)a4
{
  height = a3.height;
  v5 = fmin(a3.width, 230.0);
  v6 = a4;
  v7 = [objc_opt_class() _makeViewModelForMessage:v6];

  [NPKRemotePassActionCompanionBubbleContentView contentViewHeightForViewModel:v7 withWidth:v5];
  v9 = fmin(v8, height);
  if (v9 < 0.0)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[NPKRemotePassActionCompanionBubbleViewController suggestedViewSizeThatFits:message:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/RemotePaymentPassActionsCompanionMessagesExtension/NPKRemotePassActionCompanionBubbleViewController.m";
        v19 = 2048;
        v20 = 82;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected the content height to be a positive number!)", &v15, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v13 = v5 + 0.0;
  v14 = v9 + 0.0;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (id)_makeViewModelForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 remotePassAction];
  v6 = [a1 _cardArtImageForMessage:v5];
  if ([v5 isResponse])
  {
    v7 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
    v8 = [v5 passLocalizedDescription];
    v9 = [v5 caption];
    v10 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)v7 initWithCardArtImage:v6 shouldDimPass:0 titleText:v8 detailText:v9 actionButtonText:0 showsActionButton:0];
  }

  else
  {
    if (([v5 supportsTopUp] & 1) != 0 || objc_msgSend(v5, "supportsCommutePlanRenewal"))
    {
      v8 = [v4 request];
      v11 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
      v9 = [v8 caption];
      v12 = [v8 actionText];
      v13 = [v4 isFromMe] ^ 1;
      v14 = v11;
      v15 = v6;
      v16 = v9;
    }

    else
    {
      v17 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
      v8 = [v5 caption];
      v9 = [NSBundle bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v12 = [v9 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_UPDATE_CAPTION" value:&stru_100014880 table:@"NanoPassKitUI-RemotePaymentPassAction"];
      v13 = [v4 isFromMe] ^ 1;
      v14 = v17;
      v15 = v6;
      v16 = v8;
    }

    v10 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)v14 initWithCardArtImage:v15 shouldDimPass:0 titleText:v16 detailText:0 actionButtonText:v12 showsActionButton:v13];
  }

  return v10;
}

+ (id)_cardArtImageForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 image];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 _fallbackHeaderImageForMessage:v4];
  }

  v8 = v7;

  return v8;
}

+ (id)_fallbackHeaderImageForMessage:(id)a3
{
  v3 = [a3 cardType];
  if (v3 <= 2)
  {
    v4 = [UIImage imageNamed:off_1000145A0[v3]];
  }

  return v4;
}

- (void)_setUpMessageBubbleForMessage:(id)a3
{
  v4 = a3;
  if (self->_bubbleContentView)
  {
    v5 = [objc_opt_class() _makeViewModelForMessage:v4];
    [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView setViewModel:v5];

    v6 = [v4 isFromMe];
    if (v6)
    {
      v7 = -6.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (v6)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 6.0;
    }

    v9 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    [v9 addSubview:self->_bubbleContentView];

    v27 = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView topAnchor];
    v30 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    v29 = [v30 topAnchor];
    v28 = [v27 constraintEqualToAnchor:v29 constant:0.0];
    v34[0] = v28;
    v25 = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView bottomAnchor];
    v26 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    v24 = [v26 bottomAnchor];
    v10 = [v25 constraintEqualToAnchor:v24 constant:0.0];
    v34[1] = v10;
    v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView leadingAnchor];
    [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    v12 = v31 = v4;
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:v8];
    v34[2] = v14;
    v15 = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView trailingAnchor];
    v16 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:v7];
    v34[3] = v18;
    v19 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v4 = v31;
    v20 = v27;
  }

  else
  {
    v21 = pk_RemotePassAction_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      goto LABEL_10;
    }

    v20 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      bubbleContentView = self->_bubbleContentView;
      *buf = 138412290;
      v33 = bubbleContentView;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Unable to set up message bubble for nil message view! messageView: %@", buf, 0xCu);
    }
  }

LABEL_10:
}

- (void)_updateMessageBubbleForMessage:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _makeViewModelForMessage:v4];

  [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView setViewModel:v5];
  v6 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [v6 setNeedsLayout];

  v7 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [v7 layoutIfNeeded];
}

- (void)remotePassActionRequestBubbleContentViewDidReceiveTap:(id)a3
{
  v4 = a3;
  v5 = pk_RemotePassAction_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      message = self->_message;
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = message;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Bubble view: %@ did receive tap for message: %@", &v14, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remotePassActionRequestBubbleViewController:self didTapMessage:self->_message];
  }

  else
  {
    v11 = pk_RemotePassAction_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_8;
    }

    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Unable to handle tap. Did you forget to set the delegate? delegate: %@", &v14, 0xCu);
    }
  }

LABEL_8:
}

@end