@interface AXSpringBoardServerHelper
- (id)_wallpaperStyleAnimationFactoryWithDelay:(double)a3;
- (id)_windowsToHost;
- (id)serverInstance:(id)a3 appNameForDisplayID:(id)a4;
- (void)animateWallpaperStyleToNormalWithServerInstance:(id)a3;
- (void)animateWallpaperStyleToOriginalWithServerInstance:(id)a3;
- (void)beginRequiringWallpaperWithServerInstance:(id)a3;
- (void)endRequiringWallpaperWithServerInstance:(id)a3;
- (void)serverInstance:(id)a3 activateApp:(id)a4;
@end

@implementation AXSpringBoardServerHelper

- (id)serverInstance:(id)a3 appNameForDisplayID:(id)a4
{
  v4 = a4;
  v5 = +[AXSpringBoardServerHelper _applicationController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 applicationWithBundleIdentifier:v4];
    v7 = [v6 safeValueForKey:@"displayName"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)serverInstance:(id)a3 activateApp:(id)a4
{
  v5 = a4;
  v4 = v5;
  AXPerformSafeBlock();
}

- (void)beginRequiringWallpaperWithServerInstance:(id)a3
{
  v4 = a3;
  v5 = +[AXSpringBoardServerHelper _wallpaperController];
  v6 = [(AXSpringBoardServerHelper *)self _gaxWallpaperAssertion];
  [v6 invalidate];

  v16 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_15530;
  v14 = sub_15540;
  v15 = 0;
  v7 = v5;
  AXPerformSafeBlock();
  v8 = v11[5];

  _Block_object_dispose(&v10, 8);
  v9 = __UIAccessibilityCastAsProtocol();

  if (v16 == 1)
  {
    abort();
  }

  [(AXSpringBoardServerHelper *)self _gaxSetWallpaperAssertion:v9];
}

- (void)endRequiringWallpaperWithServerInstance:(id)a3
{
  v4 = [(AXSpringBoardServerHelper *)self _gaxWallpaperAssertion];
  [v4 invalidate];

  [(AXSpringBoardServerHelper *)self _gaxSetWallpaperAssertion:0];
}

- (void)animateWallpaperStyleToNormalWithServerInstance:(id)a3
{
  v4 = +[AXSpringBoardServerHelper _wallpaperController];
  v3 = v4;
  AXPerformSafeBlock();
}

- (void)animateWallpaperStyleToOriginalWithServerInstance:(id)a3
{
  v4 = +[AXSpringBoardServerHelper _wallpaperController];
  v3 = v4;
  AXPerformSafeBlock();
}

- (id)_windowsToHost
{
  v2 = +[NSMutableArray array];
  v38 = 0;
  objc_opt_class();
  v3 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v4 = [v3 safeValueForKey:@"_activeDisplaySwitcherController"];
  v5 = [v4 safeValueForKey:@"switcherWindow"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    [v2 addObject:v6];
  }

  else
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_16E20(v7);
    }
  }

  v25 = v6;
  v8 = [AXSafeClassFromString() safeValueForKey:@"mainWorkspace"];
  v9 = [v8 safeValueForKey:@"transientOverlayPresentationManager"];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v38 = 0;
  objc_opt_class();
  v24 = v9;
  v10 = [v9 safeValueForKey:@"_presentersByWindowScene"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 objectEnumerator];

  obj = v12;
  v28 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v13;
        v14 = *(*(&v34 + 1) + 8 * v13);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = [v14 safeArrayForKey:@"_entities"];
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v30 + 1) + 8 * i);
              v38 = 0;
              objc_opt_class();
              v21 = [v20 safeValueForKey:@"window"];
              v22 = __UIAccessibilityCastAsClass();

              if (v38 == 1)
              {
                abort();
              }

              if (v22 && ([v22 isHidden] & 1) == 0)
              {
                [v2 addObject:v22];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v17);
        }

        ++v13;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v28);
  }

  return v2;
}

- (id)_wallpaperStyleAnimationFactoryWithDelay:(double)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_15530;
  v9 = sub_15540;
  v10 = 0;
  AXPerformSafeBlock();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

@end