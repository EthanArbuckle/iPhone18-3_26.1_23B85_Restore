@interface ASCredentialRequestBasicPaneViewController
- (ASCredentialRequestBasicPaneViewController)initWithConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestBasicPaneViewController

- (ASCredentialRequestBasicPaneViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestBasicPaneViewController;
  v6 = [(ASCredentialRequestPaneViewController *)&v10 initRequiringTableView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 134, configuration);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ASCredentialRequestBasicPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v9 viewDidLoad];
  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addHeaderWithConfiguration:self->_configuration];

  v4 = objc_alloc_init(_ASCredentialRequestBasicPaneFooterView);
  [(_ASCredentialRequestBasicPaneFooterView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerPaneContext2 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  stackView = [headerPaneContext2 stackView];
  [stackView addArrangedSubview:v4];

  headerPaneContext3 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  stackView2 = [headerPaneContext3 stackView];
  [stackView2 setCustomSpacing:v4 afterView:0.0];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

@end