@interface QLDetachedSceneDelegate
- (id)activityFromOptions:(id)options;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)stateRestorationActivityForScene:(id)scene;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillResignActive:(id)active;
@end

@implementation QLDetachedSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  stateRestorationActivity = [sessionCopy stateRestorationActivity];

  if (stateRestorationActivity)
  {
    [sessionCopy stateRestorationActivity];
  }

  else
  {
    [(QLDetachedSceneDelegate *)self activityFromOptions:optionsCopy];
  }
  v12 = ;
  [(QLDetachedSceneDelegate *)self setQuicklookActivity:v12];

  quicklookActivity = [(QLDetachedSceneDelegate *)self quicklookActivity];
  userInfo = [quicklookActivity userInfo];
  v15 = [userInfo objectForKey:@"com.apple.quicklook.private.activity.URLsKey"];
  [(QLDetachedSceneDelegate *)self setUrls:v15];

  quicklookActivity2 = [(QLDetachedSceneDelegate *)self quicklookActivity];
  userInfo2 = [quicklookActivity2 userInfo];
  v18 = [userInfo2 objectForKey:@"com.apple.quicklook.private.activity.IndexKey"];
  -[QLDetachedSceneDelegate setSelectedURLIndex:](self, "setSelectedURLIndex:", [v18 unsignedIntValue]);

  quicklookActivity3 = [(QLDetachedSceneDelegate *)self quicklookActivity];
  userInfo3 = [quicklookActivity3 userInfo];
  v21 = [userInfo3 objectForKey:@"com.apple.quicklook.private.activity.EditingModes"];
  [(QLDetachedSceneDelegate *)self setEditingModes:v21];

  v31 = sceneCopy;
  v22 = objc_alloc_init(QLPreviewController);
  [(QLDetachedSceneDelegate *)self setQuicklookController:v22];

  quicklookController = [(QLDetachedSceneDelegate *)self quicklookController];
  [quicklookController setDelegate:self];

  quicklookController2 = [(QLDetachedSceneDelegate *)self quicklookController];
  [quicklookController2 setDataSource:self];

  selectedURLIndex = [(QLDetachedSceneDelegate *)self selectedURLIndex];
  quicklookController3 = [(QLDetachedSceneDelegate *)self quicklookController];
  [quicklookController3 setCurrentPreviewItemIndex:selectedURLIndex];

  v27 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v31];
  [(QLDetachedSceneDelegate *)self setWindow:v27];

  quicklookController4 = [(QLDetachedSceneDelegate *)self quicklookController];
  window = [(QLDetachedSceneDelegate *)self window];
  [window setRootViewController:quicklookController4];

  window2 = [(QLDetachedSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  [(QLDetachedSceneDelegate *)self setWindow:0];
  [(QLDetachedSceneDelegate *)self setQuicklookController:0];
  [(QLDetachedSceneDelegate *)self setUrls:0];
  [(QLDetachedSceneDelegate *)self setSelectedURLIndex:0];
  v4 = MEMORY[0x277CBEC10];

  [(QLDetachedSceneDelegate *)self setEditingModes:v4];
}

- (void)sceneWillResignActive:(id)active
{
  quicklookController = [(QLDetachedSceneDelegate *)self quicklookController];
  -[QLDetachedSceneDelegate setSelectedURLIndex:](self, "setSelectedURLIndex:", [quicklookController currentPreviewItemIndex]);
}

- (id)activityFromOptions:(id)options
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  userActivities = [options userActivities];
  v4 = [userActivities countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(userActivities);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        activityType = [v8 activityType];
        v10 = [activityType isEqualToString:@"com.apple.quicklook.private.scene.detachedActivityType"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [userActivities countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  window = [(QLDetachedSceneDelegate *)self window];
  windowScene = [window windowScene];
  session = [windowScene session];
  [mEMORY[0x277D75128] requestSceneSessionDestruction:session options:0 errorHandler:0];
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  urls = [(QLDetachedSceneDelegate *)self urls];
  v4 = [urls count];

  return v4;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  urls = [(QLDetachedSceneDelegate *)self urls];
  v6 = [urls objectAtIndexedSubscript:index];

  return v6;
}

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  itemCopy = item;
  editingModes = [(QLDetachedSceneDelegate *)self editingModes];
  v7 = [editingModes objectForKeyedSubscript:itemCopy];

  integerValue = [v7 integerValue];
  return integerValue;
}

- (id)stateRestorationActivityForScene:(id)scene
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.quicklook.private.scene.detachedActivityType"];
  v10[0] = @"com.apple.quicklook.private.activity.URLsKey";
  urls = [(QLDetachedSceneDelegate *)self urls];
  v10[1] = @"com.apple.quicklook.private.activity.IndexKey";
  v11[0] = urls;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[QLDetachedSceneDelegate selectedURLIndex](self, "selectedURLIndex")}];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addUserInfoEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

@end