@interface CARTemplateUIDashboardSceneViewController
- (void)contentReady;
- (void)prepareSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation CARTemplateUIDashboardSceneViewController

- (void)contentReady
{
  objc_opt_class();
  view = [(CARTemplateUIDashboardSceneViewController *)self view];
  window = [view window];
  if (window && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = window;
  }

  else
  {
    v5 = 0;
  }

  [v5 setContentReady];
}

- (void)prepareSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = CARTemplateUIDashboardSceneViewController;
  [(CARTemplateUISceneViewController *)&v9 prepareSettings:settingsCopy];
  objc_opt_class();
  v5 = settingsCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  templateInstance = [(CARTemplateUISceneViewController *)self templateInstance];
  dashboardEndpoint = [templateInstance dashboardEndpoint];
  [v6 setTemplateEndpoint:dashboardEndpoint];
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v6.receiver = self;
  v6.super_class = CARTemplateUIDashboardSceneViewController;
  [(CARTemplateUISceneViewController *)&v6 setScene:sceneCopy];
  if (sceneCopy)
  {
    templateInstance = [(CARTemplateUISceneViewController *)self templateInstance];
    [templateInstance setMapWidgetScene:sceneCopy];
  }
}

@end