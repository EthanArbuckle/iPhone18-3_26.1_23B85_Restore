@interface PKPeerPaymentIntentViewController
- (CGSize)_desiredSize;
- (id)localizedPeerPaymentSiriString:(id)a3;
- (void)_configureSnippetContentViewWithCurrency:(id)a3 amount:(id)a4 note:(id)a5 toFieldText:(id)a6 bubbleViewState:(unint64_t)a7 recipient:(id)a8;
- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7;
- (void)configureWithInteraction:(id)a3 context:(unint64_t)a4 completion:(id)a5;
- (void)viewDidLayoutSubviews;
@end

@implementation PKPeerPaymentIntentViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIntentViewController;
  [(PKPeerPaymentIntentViewController *)&v5 viewDidLayoutSubviews];
  snippetContentView = self->_snippetContentView;
  if (snippetContentView)
  {
    v4 = [(PKPeerPaymentIntentViewController *)self view];
    [v4 bounds];
    [(PKPeerPaymentSiriSnippetContentView *)snippetContentView setFrame:?];
  }
}

- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [v12 intent];
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v43 = v17;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Configuring view for %{public}@ with parameter key paths: %@", buf, 0x16u);
  }

  if ([v11 count])
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received unexpected parameter render request containing a non-empty parameter set. Displaying generic UI for parameters: %@", buf, 0xCu);
    }

LABEL_6:

    (*(v13 + 2))(v13, 0, 0, CGSizeZero.width, CGSizeZero.height);
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = self;
    v32 = a6;
    v18 = objc_opt_class();
    v35 = NSStringFromSelector("payee");
    v34 = [INParameter parameterForClass:v18 keyPath:?];
    v41[0] = v34;
    v19 = objc_opt_class();
    v33 = NSStringFromSelector("currencyAmount");
    v20 = [INParameter parameterForClass:v19 keyPath:?];
    v41[1] = v20;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector("note");
    v23 = [INParameter parameterForClass:v21 keyPath:v22];
    v41[2] = v23;
    v24 = [INParameter parameterForClass:objc_opt_class() keyPath:@"paymentRecord.feeAmount"];
    v41[3] = v24;
    v25 = [NSArray arrayWithObjects:v41 count:4];

    a6 = v32;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received unexpected intent class: %{public}@. Displaying generic UI for parameters: %@", buf, 0x16u);
      }

      goto LABEL_6;
    }

    v36 = self;
    v26 = objc_opt_class();
    v35 = NSStringFromSelector("payer");
    v34 = [INParameter parameterForClass:v26 keyPath:?];
    v40[0] = v34;
    v27 = objc_opt_class();
    v33 = NSStringFromSelector("currencyAmount");
    v20 = [INParameter parameterForClass:v27 keyPath:?];
    v40[1] = v20;
    v28 = objc_opt_class();
    v22 = NSStringFromSelector("note");
    v23 = [INParameter parameterForClass:v28 keyPath:v22];
    v40[2] = v23;
    v25 = [NSArray arrayWithObjects:v40 count:3];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rendering the primary content view. Telling Siri the following parameters were rendered: %@", buf, 0xCu);
  }

  [NSSet setWithArray:v25];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000014D0;
  v38 = v37[3] = &unk_100008258;
  v39 = v13;
  v29 = v38;
  [(PKPeerPaymentIntentViewController *)v36 configureWithInteraction:v12 context:a6 completion:v37];

LABEL_14:
}

- (void)configureWithInteraction:(id)a3 context:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a3 intent];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuring snippet for intent %@", &v24, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 currencyAmount];
    v12 = [v11 amount];

    v13 = [v10 currencyAmount];
    v14 = [v13 currencyCode];

    v15 = [v10 note];
    v16 = [v10 payee];
    v17 = [v16 displayName];

    v18 = [v10 payee];
    v19 = 5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = 0;
      v15 = 0;
      v14 = 0;
      v12 = 0;
      v17 = 0;
      goto LABEL_13;
    }

    v20 = v8;
    v21 = [v20 currencyAmount];
    v12 = [v21 amount];

    v22 = [v20 currencyAmount];
    v14 = [v22 currencyCode];

    v15 = [v20 note];
    v23 = [v20 payer];
    v17 = [v23 displayName];

    v18 = [v20 payer];
    v19 = 1;
  }

  if (v12)
  {
    if (v14)
    {
      if (v17)
      {
        [(PKPeerPaymentIntentViewController *)self _configureSnippetContentViewWithCurrency:v14 amount:v12 note:v15 toFieldText:v17 bubbleViewState:v19 recipient:v18];
        [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setNeedsLayout];
        if (v7)
        {
          [(PKPeerPaymentIntentViewController *)self _desiredSize];
          v7[2](v7);
        }
      }
    }
  }

LABEL_13:
}

- (CGSize)_desiredSize
{
  v3 = [(PKPeerPaymentIntentViewController *)self extensionContext];
  [v3 hostedViewMaximumAllowedSize];
  v5 = v4;
  v7 = v6;

  [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView sizeThatFits:v5, v7];
  v9 = v8;
  v11 = v10;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Snippet content view desired size: %.1f x %.1f", &v15, 0x16u);
  }

  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_configureSnippetContentViewWithCurrency:(id)a3 amount:(id)a4 note:(id)a5 toFieldText:(id)a6 bubbleViewState:(unint64_t)a7 recipient:(id)a8
{
  v28 = a8;
  if (self->_snippetContentView)
  {
    peerPaymentBubbleView = self->_peerPaymentBubbleView;
    v15 = a6;
    v16 = a5;
    v17 = a4;
    v18 = a3;
    [(PKPeerPaymentBubbleView *)peerPaymentBubbleView setAmount:v17];

    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setCurrency:v18];
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setState:a7];
    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setToFieldText:v15];

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setMemoText:v16];
  }

  else
  {
    v19 = a6;
    v20 = a5;
    v21 = a4;
    v22 = a3;
    v23 = [[PKPeerPaymentBubbleView alloc] initWithAmount:v21 currency:v22 state:a7];

    v24 = self->_peerPaymentBubbleView;
    self->_peerPaymentBubbleView = v23;

    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setDisplaysCashLogo:1];
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setLiveRenderingEnabled:1];
    v16 = [[PKPeerPaymentMessageBalloonView alloc] initWithBubbleView:self->_peerPaymentBubbleView peerPaymentType:1];
    [v16 setHasTail:0];
    v25 = [[PKPeerPaymentSiriSnippetContentView alloc] initWithBalloonView:v16];
    snippetContentView = self->_snippetContentView;
    self->_snippetContentView = v25;

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setToFieldText:v19];
    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setMemoText:v20];

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setRecipient:v28];
    v27 = [(PKPeerPaymentIntentViewController *)self view];
    [v27 addSubview:self->_snippetContentView];
  }
}

- (id)localizedPeerPaymentSiriString:(id)a3
{
  v3 = a3;
  v4 = PKPassKitBundle();
  v5 = [v4 assistantUILocalizedStringFromSiriLanguageForKey:v3 table:@"PeerPayment_Localizable"];

  return v5;
}

@end