@interface AXSwitchControlSwitchIntentHandler
- (void)handleSetSwitchControlSwitch:(id)a3 completion:(id)a4;
- (void)provideSwitchesOptionsCollectionForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4;
- (void)resolveSwitchesForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4;
@end

@implementation AXSwitchControlSwitchIntentHandler

- (void)provideSwitchesOptionsCollectionForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4
{
  v22 = a4;
  v4 = objc_opt_new();
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchSwitches];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100007B24;
  v32[3] = &unk_100018478;
  v7 = v4;
  v33 = v7;
  [v6 enumerateObjectsUsingBlock:v32];

  v23 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [v8 objectForKeyedSubscript:v13];
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            v19 = 0;
            do
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v14 addObject:{*(*(&v24 + 1) + 8 * v19), v22}];
              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v17);
        }

        v20 = [[INObjectSection alloc] initWithTitle:v13 items:v14];
        [v23 addObject:v20];

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  v21 = [[INObjectCollection alloc] initWithSections:v23];
  v22[2](v22, v21, 0);
}

- (void)handleSetSwitchControlSwitch:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 assistiveTouchSwitches];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100007E9C;
  v23[3] = &unk_1000184C8;
  v9 = v5;
  v24 = v9;
  v10 = [v8 objectsPassingTest:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if ([v9 operation] == 2)
        {
          v17 = [v16 isEnabled] ^ 1;
LABEL_8:
          [v16 setIsEnabled:v17];
          goto LABEL_14;
        }

        if ([v9 operation] == 1)
        {
          if ([v9 state] == 1)
          {
            v17 = 1;
            goto LABEL_8;
          }

          if ([v9 state] == 2)
          {
            v17 = 0;
            goto LABEL_8;
          }
        }

LABEL_14:
        SCATAddOrUpdateSwitchToSettings();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [[AXSetSwitchControlSwitchIntentResponse alloc] initWithCode:4 userActivity:0];
  v6[2](v6, v18);
}

- (void)resolveOperationForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveSwitchesForSetSwitchControlSwitch:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v5 switches];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [AXSwitchControlSwitchResolutionResult successWithResolvedSwitchControlSwitch:*(*(&v14 + 1) + 8 * v12)];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v6[2](v6, v7);
}

@end