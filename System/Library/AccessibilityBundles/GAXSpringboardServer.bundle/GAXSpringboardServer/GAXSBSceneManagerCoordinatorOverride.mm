@interface GAXSBSceneManagerCoordinatorOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)scene:(id)a3 handleActions:(id)a4;
@end

@implementation GAXSBSceneManagerCoordinatorOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSceneManagerCoordinator" hasInstanceMethod:@"scene:didReceiveActions:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBSceneManagerCoordinator" hasInstanceMethod:@"scene:handleActions:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"BSAction" hasInstanceMethod:@"UIActionType" withFullSignature:{"q", 0}];
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v17 = self;
  v18 = a3;
  v19 = a4;
  v20 = +[GAXSpringboard sharedInstance];
  if ([v20 isActive])
  {
    v5 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v41 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 safeValueForKey:{@"UIActionType", v17, v18}];
          v12 = [v11 integerValue];

          if (v12 == &stru_20.cmdsize + 2 || v12 == &dword_4 + 3)
          {
            v14 = GAXLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Guided Access active. Intercepting status bar tap", buf, 2u);
            }
          }

          else
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v41 count:16];
      }

      while (v7);
    }

    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = sub_14688;
    v39 = sub_14698;
    v40 = 0;
    v21 = v18;
    v22 = v5;
    AXPerformSafeBlock();
    v15 = *(v36 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = sub_14688;
    v39 = sub_14698;
    v40 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_146A0;
    v30 = &unk_2C680;
    v34 = buf;
    v31 = v18;
    v32 = v19;
    v33 = v17;
    AXPerformSafeBlock();
    v15 = *(v36 + 5);

    _Block_object_dispose(buf, 8);
  }

  return v15;
}

@end