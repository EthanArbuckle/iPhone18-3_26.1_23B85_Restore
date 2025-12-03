@interface SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController
- (void)_addProgress;
- (void)_removeProgress;
- (void)viewDidLoad;
@end

@implementation SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController;
  [(SSSDebugUICatalogContentViewController *)&v44 viewDidLoad];
  v3 = objc_alloc_init(SSSWaitingForImageIdentifierUpdatesAlertContentView);
  spinner = self->_spinner;
  self->_spinner = v3;

  view = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [view addSubview:self->_spinner];

  v6 = [UIButton buttonWithType:1];
  [v6 setTitle:@"+" forState:0];
  titleLabel = [v6 titleLabel];
  v8 = [UIFont boldSystemFontOfSize:36.0];
  [titleLabel setFont:v8];

  [v6 addTarget:self action:"_addProgress" forControlEvents:64];
  view2 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [view2 addSubview:v6];

  v10 = [UIButton buttonWithType:1];
  [v10 setTitle:@"-" forState:0];
  [v10 addTarget:self action:"_removeProgress" forControlEvents:64];
  titleLabel2 = [v10 titleLabel];
  titleLabel3 = [v6 titleLabel];
  font = [titleLabel3 font];
  [titleLabel2 setFont:font];

  view3 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [view3 addSubview:v10];

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[NSMutableArray array];
  view4 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  centerXAnchor = [view4 centerXAnchor];

  view5 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  centerYAnchor = [view5 centerYAnchor];

  centerXAnchor2 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner centerXAnchor];
  v21 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor];
  [v15 addObject:v21];

  centerYAnchor2 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner centerYAnchor];
  v23 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor];
  [v15 addObject:v23];

  leadingAnchor = [v10 leadingAnchor];
  view6 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v15 addObject:v27];

  trailingAnchor = [v10 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
  [v15 addObject:v29];

  leadingAnchor3 = [v6 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor];
  [v15 addObject:v31];

  trailingAnchor2 = [v6 trailingAnchor];
  view7 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  trailingAnchor3 = [view7 trailingAnchor];
  v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v15 addObject:v35];

  bottomAnchor = [v6 bottomAnchor];
  view8 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 addObject:v39];

  bottomAnchor3 = [v10 bottomAnchor];
  view9 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  bottomAnchor4 = [view9 bottomAnchor];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v15 addObject:v43];

  [NSLayoutConstraint activateConstraints:v15];
}

- (void)_addProgress
{
  spinner = self->_spinner;
  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)spinner progress];
  v4 = v3 + 0.1;

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)spinner setProgress:v4];
}

- (void)_removeProgress
{
  spinner = self->_spinner;
  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)spinner progress];
  v4 = v3 + -0.1;

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)spinner setProgress:v4];
}

@end