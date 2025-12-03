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
  identifier = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] identifier];
  v6 = [identifier isEqualToString:@"APP_CLIPS_LOCAL_EXPERIENCES"];

  if (v6)
  {
    v7 = objc_alloc_init(CPSDeveloperSettingsLocalOverrideController);
    goto LABEL_8;
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_10;
  }

  identifier2 = [*&self->PSViewController_opaque[v4] identifier];
  v9 = [identifier2 isEqualToString:@"APP_CLIPS_DIAGNOSTICS"];

  if (v9)
  {
    v7 = +[_TtC24AppClipDeveloperSettings41DeveloperDiagnosticsViewControllerFactory appClipsDeveloperDiagnosticsViewController];
    goto LABEL_8;
  }

  identifier3 = [*&self->PSViewController_opaque[v4] identifier];
  v11 = [identifier3 isEqualToString:@"UNIVERSAL_LINKS_DIAGNOSTICS"];

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
  name = [*&self->PSViewController_opaque[v4] name];
  [(CPSDeveloperSettingsController *)self setTitle:name];

  [(CPSDeveloperSettingsController *)self addChildViewController:v12];
  view = [(CPSDeveloperSettingsController *)self view];
  view2 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  [view addSubview:view2];

  [(CPSDeveloperSettingsLocalOverrideController *)v12 didMoveToParentViewController:self];
  view3 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  centerXAnchor = [view4 centerXAnchor];
  view5 = [(CPSDeveloperSettingsController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v39[0] = v33;
  view6 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  centerYAnchor = [view6 centerYAnchor];
  view7 = [(CPSDeveloperSettingsController *)self view];
  centerYAnchor2 = [view7 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v39[1] = v28;
  view8 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  widthAnchor = [view8 widthAnchor];
  view9 = [(CPSDeveloperSettingsController *)self view];
  widthAnchor2 = [view9 widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v39[2] = v19;
  view10 = [(CPSDeveloperSettingsLocalOverrideController *)v12 view];
  heightAnchor = [view10 heightAnchor];
  view11 = [(CPSDeveloperSettingsController *)self view];
  heightAnchor2 = [view11 heightAnchor];
  v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v39[3] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

@end