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

  v5 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [v5 addSubview:self->_spinner];

  v6 = [UIButton buttonWithType:1];
  [v6 setTitle:@"+" forState:0];
  v7 = [v6 titleLabel];
  v8 = [UIFont boldSystemFontOfSize:36.0];
  [v7 setFont:v8];

  [v6 addTarget:self action:"_addProgress" forControlEvents:64];
  v9 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [v9 addSubview:v6];

  v10 = [UIButton buttonWithType:1];
  [v10 setTitle:@"-" forState:0];
  [v10 addTarget:self action:"_removeProgress" forControlEvents:64];
  v11 = [v10 titleLabel];
  v12 = [v6 titleLabel];
  v13 = [v12 font];
  [v11 setFont:v13];

  v14 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  [v14 addSubview:v10];

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[NSMutableArray array];
  v16 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v17 = [v16 centerXAnchor];

  v18 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v19 = [v18 centerYAnchor];

  v20 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner centerXAnchor];
  v21 = [v20 constraintEqualToAnchor:v17];
  [v15 addObject:v21];

  v22 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self->_spinner centerYAnchor];
  v23 = [v22 constraintEqualToAnchor:v19];
  [v15 addObject:v23];

  v24 = [v10 leadingAnchor];
  v25 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v26 = [v25 leadingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v15 addObject:v27];

  v28 = [v10 trailingAnchor];
  v29 = [v28 constraintEqualToAnchor:v17];
  [v15 addObject:v29];

  v30 = [v6 leadingAnchor];
  v31 = [v30 constraintEqualToAnchor:v17];
  [v15 addObject:v31];

  v32 = [v6 trailingAnchor];
  v33 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v15 addObject:v35];

  v36 = [v6 bottomAnchor];
  v37 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v15 addObject:v39];

  v40 = [v10 bottomAnchor];
  v41 = [(SSSDebugUICatalogWaitingForImageIdentifierUpdatesViewController *)self view];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
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