@interface ASCredentialRequestBasicPaneViewController
- (ASCredentialRequestBasicPaneViewController)initWithConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestBasicPaneViewController

- (ASCredentialRequestBasicPaneViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestBasicPaneViewController;
  v6 = [(ASCredentialRequestPaneViewController *)&v10 initRequiringTableView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 134, a3);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ASCredentialRequestBasicPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v9 viewDidLoad];
  v3 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v3 addHeaderWithConfiguration:self->_configuration];

  v4 = objc_alloc_init(_ASCredentialRequestBasicPaneFooterView);
  [(_ASCredentialRequestBasicPaneFooterView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  v6 = [v5 stackView];
  [v6 addArrangedSubview:v4];

  v7 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  v8 = [v7 stackView];
  [v8 setCustomSpacing:v4 afterView:0.0];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

@end