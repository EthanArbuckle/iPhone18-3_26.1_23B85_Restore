@interface QLDetachedSceneDelegate
- (id)activityFromOptions:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)stateRestorationActivityForScene:(id)a3;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)previewControllerWillDismiss:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation QLDetachedSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 stateRestorationActivity];

  if (v11)
  {
    [v9 stateRestorationActivity];
  }

  else
  {
    [(QLDetachedSceneDelegate *)self activityFromOptions:v10];
  }
  v12 = ;
  [(QLDetachedSceneDelegate *)self setQuicklookActivity:v12];

  v13 = [(QLDetachedSceneDelegate *)self quicklookActivity];
  v14 = [v13 userInfo];
  v15 = [v14 objectForKey:@"com.apple.quicklook.private.activity.URLsKey"];
  [(QLDetachedSceneDelegate *)self setUrls:v15];

  v16 = [(QLDetachedSceneDelegate *)self quicklookActivity];
  v17 = [v16 userInfo];
  v18 = [v17 objectForKey:@"com.apple.quicklook.private.activity.IndexKey"];
  -[QLDetachedSceneDelegate setSelectedURLIndex:](self, "setSelectedURLIndex:", [v18 unsignedIntValue]);

  v19 = [(QLDetachedSceneDelegate *)self quicklookActivity];
  v20 = [v19 userInfo];
  v21 = [v20 objectForKey:@"com.apple.quicklook.private.activity.EditingModes"];
  [(QLDetachedSceneDelegate *)self setEditingModes:v21];

  v31 = v8;
  v22 = objc_alloc_init(QLPreviewController);
  [(QLDetachedSceneDelegate *)self setQuicklookController:v22];

  v23 = [(QLDetachedSceneDelegate *)self quicklookController];
  [v23 setDelegate:self];

  v24 = [(QLDetachedSceneDelegate *)self quicklookController];
  [v24 setDataSource:self];

  v25 = [(QLDetachedSceneDelegate *)self selectedURLIndex];
  v26 = [(QLDetachedSceneDelegate *)self quicklookController];
  [v26 setCurrentPreviewItemIndex:v25];

  v27 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v31];
  [(QLDetachedSceneDelegate *)self setWindow:v27];

  v28 = [(QLDetachedSceneDelegate *)self quicklookController];
  v29 = [(QLDetachedSceneDelegate *)self window];
  [v29 setRootViewController:v28];

  v30 = [(QLDetachedSceneDelegate *)self window];
  [v30 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)a3
{
  [(QLDetachedSceneDelegate *)self setWindow:0];
  [(QLDetachedSceneDelegate *)self setQuicklookController:0];
  [(QLDetachedSceneDelegate *)self setUrls:0];
  [(QLDetachedSceneDelegate *)self setSelectedURLIndex:0];
  v4 = MEMORY[0x277CBEC10];

  [(QLDetachedSceneDelegate *)self setEditingModes:v4];
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = [(QLDetachedSceneDelegate *)self quicklookController];
  -[QLDetachedSceneDelegate setSelectedURLIndex:](self, "setSelectedURLIndex:", [v4 currentPreviewItemIndex]);
}

- (id)activityFromOptions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 userActivities];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 activityType];
        v10 = [v9 isEqualToString:@"com.apple.quicklook.private.scene.detachedActivityType"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)previewControllerWillDismiss:(id)a3
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [(QLDetachedSceneDelegate *)self window];
  v5 = [v4 windowScene];
  v6 = [v5 session];
  [v7 requestSceneSessionDestruction:v6 options:0 errorHandler:0];
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = [(QLDetachedSceneDelegate *)self urls];
  v4 = [v3 count];

  return v4;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = [(QLDetachedSceneDelegate *)self urls];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v5 = a4;
  v6 = [(QLDetachedSceneDelegate *)self editingModes];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 integerValue];
  return v8;
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.quicklook.private.scene.detachedActivityType"];
  v10[0] = @"com.apple.quicklook.private.activity.URLsKey";
  v5 = [(QLDetachedSceneDelegate *)self urls];
  v10[1] = @"com.apple.quicklook.private.activity.IndexKey";
  v11[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[QLDetachedSceneDelegate selectedURLIndex](self, "selectedURLIndex")}];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addUserInfoEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

@end