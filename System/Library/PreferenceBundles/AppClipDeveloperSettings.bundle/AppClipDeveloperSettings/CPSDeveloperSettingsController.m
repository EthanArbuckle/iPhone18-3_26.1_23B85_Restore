@interface CPSDeveloperSettingsController
- (void)viewDidLoad;
@end

@implementation CPSDeveloperSettingsController

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = CPSDeveloperSettingsController;
  [(CPSDeveloperSettingsController *)&v38 viewDidLoad];
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] identifier];
  v6 = [v5 isEqualToString:@"APP_CLIPS_LOCAL_EXPERIENCES"];

  if (v6)
  {
    v7 = objc_alloc_init(CPSDeveloperSettingsLocalOverrideController);
    goto LABEL_8;
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_10;
  }

  v8 = [*&self->PSViewController_opaque[v4] identifier];
  v9 = [v8 isEqualToString:@"APP_CLIPS_DIAGNOSTICS"];

  if (v9)
  {
    v7 = +[_TtC24AppClipDeveloperSettings41DeveloperDiagnosticsViewControllerFactory appClipsDeveloperDiagnosticsViewController];
    goto LABEL_8;
  }

  v10 = [*&self->PSViewController_opaque[v4] identifier];
  v11 = [v10 isEqualToString:@"UNIVERSAL_LINKS_DIAGNOSTICS"];

  if (!v11)
  {
LABEL_10:
    sub_245F8(&self->PSViewController_opaque[v4], a2, self);
    v12 = 0;
    goto LABEL_9;
  }

  v7 = +[_TtC24AppClipDeveloperSettings41DeveloperDiagnosticsViewControllerFactory universalLinksDeveloperDiagnosticsViewController];
LABEL_8:
  v12 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  v13 = [*&self->PSViewController_opaque[v4] name];
  [(CPSDeveloperSettingsController *)self setTitle:v13];

  [(CPSDeveloperSettingsController *)self addChildViewController:v12];
  v14 = [(CPSDeveloperSettingsController *)self view];
  v15 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  [v14 addSubview:v15];

  [(CPSDeveloperSettingsLocalOverrideController *)v12 didMoveToParentViewController:self];
  v16 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  v35 = [v37 centerXAnchor];
  v36 = [(CPSDeveloperSettingsController *)self view];
  v34 = [v36 centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v39[0] = v33;
  v32 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  v30 = [v32 centerYAnchor];
  v31 = [(CPSDeveloperSettingsController *)self view];
  v29 = [v31 centerYAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v39[1] = v28;
  v27 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  v26 = [v27 widthAnchor];
  v17 = [(CPSDeveloperSettingsController *)self view];
  v18 = [v17 widthAnchor];
  v19 = [v26 constraintEqualToAnchor:v18];
  v39[2] = v19;
  v20 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  v21 = [v20 heightAnchor];
  v22 = [(CPSDeveloperSettingsController *)self view];
  v23 = [v22 heightAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v39[3] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

@end