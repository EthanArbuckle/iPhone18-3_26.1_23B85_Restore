@interface CARTemplateUIDashboardSceneViewController
- (void)contentReady;
- (void)prepareSettings:(id)a3;
- (void)setScene:(id)a3;
@end

@implementation CARTemplateUIDashboardSceneViewController

- (void)contentReady
{
  objc_opt_class();
  v3 = [(CARTemplateUIDashboardSceneViewController *)self view];
  v4 = [v3 window];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v5 setContentReady];
}

- (void)prepareSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CARTemplateUIDashboardSceneViewController;
  [(CARTemplateUISceneViewController *)&v9 prepareSettings:v4];
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CARTemplateUISceneViewController *)self templateInstance];
  v8 = [v7 dashboardEndpoint];
  [v6 setTemplateEndpoint:v8];
}

- (void)setScene:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CARTemplateUIDashboardSceneViewController;
  [(CARTemplateUISceneViewController *)&v6 setScene:v4];
  if (v4)
  {
    v5 = [(CARTemplateUISceneViewController *)self templateInstance];
    [v5 setMapWidgetScene:v4];
  }
}

@end