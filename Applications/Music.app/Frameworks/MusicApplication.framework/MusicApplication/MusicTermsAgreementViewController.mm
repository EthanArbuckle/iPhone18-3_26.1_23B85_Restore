@interface MusicTermsAgreementViewController
- (MusicTermsAgreementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MusicTermsAgreementViewControllerDelegate)delegate;
- (void)_agreeBarButtonItemAction:(id)action;
- (void)_cancelBarButtonItemAction:(id)action;
- (void)_sendEmailBarButtonItemAction:(id)action;
- (void)_updateBarButtonItems;
- (void)_updateViewState;
- (void)setAccepting:(BOOL)accepting;
- (void)setLoading:(BOOL)loading;
- (void)setTermsText:(id)text;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MusicTermsAgreementViewController

- (MusicTermsAgreementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = MusicTermsAgreementViewController;
  v4 = [(MusicTermsAgreementViewController *)&v10 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(MusicTermsAgreementViewController *)v4 navigationItem];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Terms & Conditions" value:&stru_D5B658 table:0];
    [navigationItem setTitle:v8];
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v69.receiver = self;
  v69.super_class = MusicTermsAgreementViewController;
  [(MusicTermsAgreementViewController *)&v69 viewDidLayoutSubviews];
  view = [(MusicTermsAgreementViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  traitCollection = [(MusicTermsAgreementViewController *)self traitCollection];
  [traitCollection displayScale];
  v14 = MusicSafeDisplayScale(v13);
  if (self->_loading)
  {
    v58 = v14;
    view2 = [(MusicTermsAgreementViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    rect = v11;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v70.origin.x = v18;
    v70.origin.y = v20;
    v70.size.width = v22;
    v70.size.height = v24;
    MinX = CGRectGetMinX(v70);
    v71.origin.x = v5;
    v62 = v7;
    v63 = v5;
    v71.origin.y = v7;
    v71.size.width = v9;
    v71.size.height = rect;
    v67 = v9;
    Height = CGRectGetHeight(v71);
    v72.origin.x = v18;
    v72.origin.y = v20;
    v72.size.width = v22;
    v72.size.height = v24;
    v65 = v7 + MinX;
    v66 = v5 + 0.0;
    v64 = rect - (MinX + Height - CGRectGetMaxY(v72));
    [(UIActivityIndicatorView *)self->_loadingActivityIndicatorView frame];
    v28 = v27;
    v30 = v29;
    y = CGPointZero.y;
    [(UILabel *)self->_loadingLabel frame];
    v73.origin.x = CGPointZero.x;
    v73.origin.y = y;
    v73.size.width = v28;
    v73.size.height = v30;
    CGRectGetMaxX(v73);
    v53 = y;
    v60 = v28;
    v61 = v30;
    UIRectCenteredYInRectScale();
    v54 = v74.origin.y;
    x = v74.origin.x;
    v56 = v74.size.height;
    width = v74.size.width;
    v80.origin.x = CGPointZero.x;
    v80.origin.y = y;
    v80.size.width = v28;
    v80.size.height = v30;
    v75 = CGRectUnion(v74, v80);
    v32 = v75.origin.y;
    v51 = v75.origin.x;
    v52 = v75.size.width;
    v33 = v75.size.height;
    v50 = v58;
    v34 = v75.origin.x;
    UIRectCenteredIntegralRectScale();
    v35 = v76.origin.x;
    v36 = v76.origin.y;
    v37 = v76.size.width;
    v38 = v76.size.height;
    MinY = CGRectGetMinY(v76);
    v77.origin.x = v34;
    v77.origin.y = v32;
    v77.size.width = v52;
    v77.size.height = v33;
    v40 = MinY - CGRectGetMinY(v77);
    v78.origin.x = v35;
    v78.origin.y = v36;
    v78.size.width = v37;
    v78.size.height = v38;
    v41 = CGRectGetMinX(v78);
    v79.origin.x = v51;
    v79.origin.y = v32;
    v79.size.width = v52;
    v9 = v67;
    v79.size.height = v33;
    v7 = v62;
    v5 = v63;
    v42 = v41 - CGRectGetMinX(v79);
    v43 = x + v42;
    v59 = CGPointZero.x + v42;
    loadingLabel = self->_loadingLabel;
    view3 = [(MusicTermsAgreementViewController *)self view];
    effectiveUserInterfaceLayoutDirection = [view3 effectiveUserInterfaceLayoutDirection];
    v47 = v43;
    v11 = rect;
    [(UILabel *)loadingLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect(effectiveUserInterfaceLayoutDirection, v47, v54 + v40, width, v56, v66, v65, v67, v64)];

    loadingActivityIndicatorView = self->_loadingActivityIndicatorView;
    view4 = [(MusicTermsAgreementViewController *)self view];
    -[UIActivityIndicatorView setFrame:](loadingActivityIndicatorView, "setFrame:", MusicRectByApplyingUserInterfaceLayoutDirectionInRect([view4 effectiveUserInterfaceLayoutDirection], v59, v53 + v40, v60, v61, v66, v65, v67, v64));
  }

  [(UITextView *)self->_termsTextView setFrame:v5, v7, v9, v11];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MusicTermsAgreementViewController;
  [(MusicTermsAgreementViewController *)&v11 viewDidLoad];
  view = [(MusicTermsAgreementViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];

  v5 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  termsTextView = self->_termsTextView;
  self->_termsTextView = v5;

  v7 = self->_termsTextView;
  v8 = +[UIColor clearColor];
  [(UITextView *)v7 setBackgroundColor:v8];

  v9 = self->_termsTextView;
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UITextView *)v9 setFont:v10];

  [(UITextView *)self->_termsTextView setEditable:0];
  [(UITextView *)self->_termsTextView setSelectable:0];
  [(UITextView *)self->_termsTextView setScrollEnabled:1];
  [(UITextView *)self->_termsTextView setScrollsToTop:1];
  [view addSubview:self->_termsTextView];
  [(MusicTermsAgreementViewController *)self _updateViewState];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MusicTermsAgreementViewController;
  [(MusicTermsAgreementViewController *)&v6 viewWillAppear:appear];
  navigationController = [(MusicTermsAgreementViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];

  [navigationController setToolbarHidden:0];
  [(MusicTermsAgreementViewController *)self _updateBarButtonItems];
}

- (void)setAccepting:(BOOL)accepting
{
  if (self->_accepting != accepting)
  {
    self->_accepting = accepting;
    [(MusicTermsAgreementViewController *)self _updateBarButtonItems];
  }
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    [(MusicTermsAgreementViewController *)self _updateBarButtonItems];

    [(MusicTermsAgreementViewController *)self _updateViewState];
  }
}

- (void)setTermsText:(id)text
{
  textCopy = text;
  termsText = self->_termsText;
  if (termsText != textCopy)
  {
    v9 = textCopy;
    v6 = [(NSString *)termsText isEqualToString:textCopy];
    textCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_termsText;
      self->_termsText = v7;

      [(MusicTermsAgreementViewController *)self _updateViewState];
      textCopy = v9;
    }
  }
}

- (void)_agreeBarButtonItemAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 termsAgreementViewControllerDidAcceptTerms:self];
  }
}

- (void)_cancelBarButtonItemAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 termsAgreementViewControllerDidCancel:self];
  }
}

- (void)_sendEmailBarButtonItemAction:(id)action
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Send by Email" value:&stru_D5B658 table:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Enter an email address to send these Terms & Conditions." value:&stru_D5B658 table:0];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  [v8 addTextFieldWithConfigurationHandler:&__block_literal_global];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Send" value:&stru_D5B658 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __67__MusicTermsAgreementViewController__sendEmailBarButtonItemAction___block_invoke_2;
  v19 = &unk_CEEE38;
  selfCopy = self;
  v21 = v8;
  v11 = v8;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v16];

  [v11 addAction:{v12, v16, v17, v18, v19, selfCopy}];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_D5B658 table:0];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

  [v11 addAction:v15];
  [(MusicTermsAgreementViewController *)self presentViewController:v11 animated:1 completion:0];
}

void __67__MusicTermsAgreementViewController__sendEmailBarButtonItemAction___block_invoke(id a1, UITextField *a2)
{
  v2 = a2;
  [(UITextField *)v2 setAutocorrectionType:1];
  [(UITextField *)v2 setAutocapitalizationType:0];
  [(UITextField *)v2 setKeyboardType:7];
}

void __67__MusicTermsAgreementViewController__sendEmailBarButtonItemAction___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) textFields];
    v4 = [v3 firstObject];
    v5 = [v4 text];
    [v6 termsAgreementViewController:v2 didRequestSendByEmailToEmailAddress:v5];
  }
}

- (void)_updateBarButtonItems
{
  sendEmailBarButtonItem = self->_sendEmailBarButtonItem;
  if (!sendEmailBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Send by Email" value:&stru_D5B658 table:0];
    v7 = [v4 initWithTitle:v6 style:0 target:self action:"_sendEmailBarButtonItemAction:"];
    v8 = self->_sendEmailBarButtonItem;
    self->_sendEmailBarButtonItem = v7;

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v10 = self->_sendEmailBarButtonItem;
    v25[0] = v9;
    v25[1] = v10;
    v11 = [NSArray arrayWithObjects:v25 count:2];
    [(MusicTermsAgreementViewController *)self setToolbarItems:v11];

    sendEmailBarButtonItem = self->_sendEmailBarButtonItem;
  }

  v12 = !self->_loading && !self->_accepting;
  [(UIBarButtonItem *)sendEmailBarButtonItem setEnabled:v12];
  navigationItem = [(MusicTermsAgreementViewController *)self navigationItem];
  if (self->_accepting)
  {
    p_acceptingBarButtonItem = &self->_acceptingBarButtonItem;
    acceptingBarButtonItem = self->_acceptingBarButtonItem;
    if (acceptingBarButtonItem)
    {
      goto LABEL_14;
    }

    v16 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v16 sizeToFit];
    [v16 startAnimating];
    v17 = [[UIBarButtonItem alloc] initWithCustomView:v16];
    v18 = *p_acceptingBarButtonItem;
    *p_acceptingBarButtonItem = v17;
    goto LABEL_13;
  }

  if (self->_loading)
  {
    acceptingBarButtonItem = 0;
    goto LABEL_14;
  }

  p_acceptingBarButtonItem = &self->_agreeBarButtonItem;
  acceptingBarButtonItem = self->_agreeBarButtonItem;
  if (!acceptingBarButtonItem)
  {
    v19 = [UIBarButtonItem alloc];
    v16 = +[NSBundle mainBundle];
    v18 = [v16 localizedStringForKey:@"Agree" value:&stru_D5B658 table:0];
    v20 = [v19 initWithTitle:v18 style:2 target:self action:"_agreeBarButtonItemAction:"];
    v21 = *p_acceptingBarButtonItem;
    *p_acceptingBarButtonItem = v20;

LABEL_13:
    acceptingBarButtonItem = *p_acceptingBarButtonItem;
  }

LABEL_14:
  [navigationItem setRightBarButtonItem:acceptingBarButtonItem];
  cancelBarButtonItem = self->_cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelBarButtonItemAction:"];
    v24 = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = v23;

    [navigationItem setLeftBarButtonItem:self->_cancelBarButtonItem];
    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  [(UIBarButtonItem *)cancelBarButtonItem setEnabled:!self->_accepting];
}

- (void)_updateViewState
{
  if (![(MusicTermsAgreementViewController *)self isViewLoaded])
  {
    return;
  }

  view = [(MusicTermsAgreementViewController *)self view];
  termsTextView = self->_termsTextView;
  if (self->_loading)
  {
    [(UITextView *)termsTextView setHidden:1];
    loadingLabel = self->_loadingLabel;
    v5 = loadingLabel == 0;
    if (!loadingLabel)
    {
      v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v7 = self->_loadingLabel;
      self->_loadingLabel = v6;

      v8 = self->_loadingLabel;
      v9 = +[UIColor clearColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_loadingLabel;
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Loading…" value:&stru_D5B658 table:0];
      [(UILabel *)v10 setText:v12];

      v13 = self->_loadingLabel;
      v14 = [UIFont systemFontOfSize:14.0];
      [(UILabel *)v13 setFont:v14];

      [(UILabel *)self->_loadingLabel sizeToFit];
      [view addSubview:self->_loadingLabel];
    }

    if (!self->_loadingActivityIndicatorView)
    {
      v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      loadingActivityIndicatorView = self->_loadingActivityIndicatorView;
      self->_loadingActivityIndicatorView = v15;

      [(UIActivityIndicatorView *)self->_loadingActivityIndicatorView startAnimating];
      [(UIActivityIndicatorView *)self->_loadingActivityIndicatorView sizeToFit];
      [view addSubview:self->_loadingActivityIndicatorView];
LABEL_13:
      [view setNeedsLayout];
      v21 = view;
      goto LABEL_14;
    }
  }

  else
  {
    [(UITextView *)termsTextView setHidden:0];
    [(UITextView *)self->_termsTextView setText:self->_termsText];
    v17 = self->_loadingLabel;
    v5 = v17 != 0;
    if (v17)
    {
      [(UILabel *)v17 removeFromSuperview];
      v18 = self->_loadingLabel;
      self->_loadingLabel = 0;
    }

    v19 = self->_loadingActivityIndicatorView;
    if (v19)
    {
      [(UIActivityIndicatorView *)v19 stopAnimating];
      [(UIActivityIndicatorView *)self->_loadingActivityIndicatorView removeFromSuperview];
      v20 = self->_loadingLabel;
      self->_loadingLabel = 0;

      goto LABEL_13;
    }
  }

  v21 = view;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (MusicTermsAgreementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end