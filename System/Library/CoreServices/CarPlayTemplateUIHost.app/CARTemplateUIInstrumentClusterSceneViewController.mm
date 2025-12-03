@interface CARTemplateUIInstrumentClusterSceneViewController
- (void)prepareSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation CARTemplateUIInstrumentClusterSceneViewController

- (void)prepareSettings:(id)settings
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = CARTemplateUIInstrumentClusterSceneViewController;
  [(CARTemplateUISceneViewController *)&v13 prepareSettings:settingsCopy];
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

  objc_opt_class();
  windowScene = [(CARTemplateUISceneViewController *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = settings;
  }

  else
  {
    v10 = 0;
  }

  [v6 setItemType:{objc_msgSend(v10, "itemType")}];
  [v6 setShowsSpeedLimit:{objc_msgSend(v10, "showsSpeedLimit")}];
  [v6 setShowsCompass:{objc_msgSend(v10, "showsCompass")}];
  [v6 setLayoutJustification:{objc_msgSend(v10, "layoutJustification")}];
  templateInstance = [(CARTemplateUISceneViewController *)self templateInstance];
  instrumentClusterEndpoint = [templateInstance instrumentClusterEndpoint];
  [v6 setTemplateEndpoint:instrumentClusterEndpoint];

  [v6 setMapStyle:{-[CARTemplateUISceneViewController mapStyle](self, "mapStyle")}];
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v6.receiver = self;
  v6.super_class = CARTemplateUIInstrumentClusterSceneViewController;
  [(CARTemplateUISceneViewController *)&v6 setScene:sceneCopy];
  if (sceneCopy)
  {
    templateInstance = [(CARTemplateUISceneViewController *)self templateInstance];
    [templateInstance setInstrumentClusterScene:sceneCopy];
  }
}

@end