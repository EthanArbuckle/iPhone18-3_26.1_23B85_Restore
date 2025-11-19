@interface SetSoundDetectorIntentHandler
- (SetSoundDetectorIntentHandler)init;
- (void)handleSetSoundDetector:(id)a3 completion:(id)a4;
- (void)provideParameterOptionsCollectionForSetSoundDetector:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForSetSoundDetector:(id)a3 withCompletion:(id)a4;
- (void)resolveParameterForSetSoundDetector:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForSetSoundDetector:(id)a3 withCompletion:(id)a4;
@end

@implementation SetSoundDetectorIntentHandler

- (SetSoundDetectorIntentHandler)init
{
  v5.receiver = self;
  v5.super_class = SetSoundDetectorIntentHandler;
  v2 = [(SetSoundDetectorIntentHandler *)&v5 init];
  if (v2)
  {
    v3 = +[AXSDDetectorStore sharedInstance];
    [v3 loadDetectors];
  }

  return v2;
}

- (void)resolveOperationForSetSoundDetector:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveParameterForSetSoundDetector:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8 = [a3 parameter];
  v7 = [AXSoundResolutionResult successWithResolvedSound:v8];
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForSetSoundDetector:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)provideParameterOptionsCollectionForSetSoundDetector:(id)a3 withCompletion:(id)a4
{
  v4 = a4;
  v5 = +[AXSDSettings sharedInstance];
  v6 = [v5 soundDetectionState];

  if (!v6)
  {
    v7 = [NSError ax_errorWithDomain:@"SiriShortcutsSoundRecognition" description:@"Sound Recognition is currently not enabled. Enable the feature in Accessibility Settings."];
    v4[2](v4, 0, v7);
  }

  v43 = v4;
  v8 = &AXDeviceSupportsWatchRemoteScreen_ptr;
  v9 = +[AXSDDetectorStore sharedInstance];
  v10 = [v9 localizedNamesByIdentifier];
  v11 = [v10 mutableCopy];

  v46 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = AXSDSoundDetectionCategories();
  v47 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v47)
  {
    v12 = 0;
    v45 = *v61;
    do
    {
      v13 = 0;
      do
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v13;
        v14 = *(*(&v60 + 1) + 8 * v13);
        v50 = objc_opt_new();
        v51 = v14;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v15 = AXSDSoundDetectionTypesForCategory();
        v16 = [v15 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v57;
          do
          {
            v19 = 0;
            do
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v56 + 1) + 8 * v19);
              IsAppliance = AXSDSoundDetectionTypeIsAppliance();
              if (IsAppliance & v12)
              {
                v12 = 1;
              }

              else
              {
                v12 |= IsAppliance;
                v22 = [v11 objectForKey:v20];
                v23 = [[AXSound alloc] initWithIdentifier:v20 displayString:v22];
                [(AXSound *)v23 setCategory:v51];
                [(AXSound *)v23 setIsCustom:&__kCFBooleanFalse];
                [v50 addObject:v23];
                [v11 removeObjectForKey:v20];
              }

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v17);
        }

        v24 = [v11 allKeys];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = v24;
        v25 = [v24 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v53;
          do
          {
            v28 = 0;
            do
            {
              if (*v53 != v27)
              {
                objc_enumerationMutation(v49);
              }

              v29 = *(*(&v52 + 1) + 8 * v28);
              v30 = [v8[108] sharedInstance];
              v31 = [v30 detectorWithIdentifier:v29];

              if (v31)
              {
                if ([v31 isCustom])
                {
                  v32 = [v31 category];
                  v33 = [v32 isEqualToString:v51];

                  if (v33)
                  {
                    if ([v31 isTrainingComplete])
                    {
                      v34 = [AXSound alloc];
                      v35 = [v31 identifier];
                      [v31 name];
                      v37 = v36 = v11;
                      v38 = [(AXSound *)v34 initWithIdentifier:v35 displayString:v37];

                      v11 = v36;
                      v8 = &AXDeviceSupportsWatchRemoteScreen_ptr;

                      v39 = [v31 category];
                      [(AXSound *)v38 setCategory:v39];

                      [(AXSound *)v38 setIsCustom:&__kCFBooleanTrue];
                      [v50 addObject:v38];
                      [v11 removeObjectForKey:v29];
                    }
                  }
                }
              }

              v28 = v28 + 1;
            }

            while (v26 != v28);
            v26 = [v49 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v26);
        }

        v40 = AXSDSoundDetectionLocalizedStringForCategory();
        v41 = [[INObjectSection alloc] initWithTitle:v40 items:v50];
        [v46 addObject:v41];

        v13 = v48 + 1;
      }

      while ((v48 + 1) != v47);
      v47 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v47);
  }

  v42 = [[INObjectCollection alloc] initWithSections:v46];
  (v43)[2](v43, v42, 0);
}

- (void)handleSetSoundDetector:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 parameter];
  v8 = [v7 identifier];
  if (!v8)
  {
    v18 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SetSoundDetectorIntentHandler: Received a parameter with a nil identifier.", v32, 2u);
    }

    goto LABEL_26;
  }

  if ([v5 operation] == 1 && !objc_msgSend(v5, "state"))
  {
    v18 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(v5, v18);
    }

LABEL_26:

    v30 = [AXSetSoundDetectorIntentResponse alloc];
    v31 = 5;
LABEL_27:
    v28 = [(AXSetSoundDetectorIntentResponse *)v30 initWithCode:v31 userActivity:0];
    v6[2](v6, v28);
    goto LABEL_28;
  }

  v9 = +[AXSDSettings sharedInstance];
  v10 = [v9 enabledSoundDetectionTypes];
  v11 = [v7 identifier];
  v12 = [v10 containsObject:v11];

  v13 = [v7 isCustom];
  LODWORD(v10) = [v13 BOOLValue];

  if (v10)
  {
    v14 = +[AXSDSettings sharedInstance];
    v15 = [v14 enabledKShotDetectorIdentifiers];
    v16 = [v7 identifier];
    v12 = [v15 containsObject:v16];
  }

  if ([v5 operation] == 2)
  {
    v17 = v12 ^ 1;
  }

  else
  {
    v17 = [v5 state] == 1;
  }

  v19 = [v7 isCustom];
  v20 = [v19 BOOLValue];

  if ((v20 & 1) == 0)
  {
    v26 = v12 | ~v17;
    v23 = +[AXSDSettings sharedInstance];
    v25 = [v7 identifier];
    if (v26)
    {
      [v23 removeSoundDetectionType:v25];
    }

    else
    {
      [v23 addSoundDetectionType:v25];
    }

    goto LABEL_21;
  }

  v21 = +[AXSDDetectorStore sharedInstance];
  v22 = [v7 identifier];
  v23 = [v21 detectorWithIdentifier:v22];

  if (v23 && [v23 isCustom])
  {
    v24 = v12 ^ 1;
    v25 = +[AXSDSettings sharedInstance];
    [v25 setKShotDetectorIsEnabled:v23 isEnabled:v17 & v24];
LABEL_21:

    if (v17)
    {
      v29 = +[AXSDSettings sharedInstance];
      [v29 setSoundDetectionState:2 source:AXSDSettingsEventSourceShortcutsApp];
    }

    v30 = [AXSetSoundDetectorIntentResponse alloc];
    v31 = 4;
    goto LABEL_27;
  }

  v27 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_10000D964(v7, v27);
  }

  v28 = [[AXSetSoundDetectorIntentResponse alloc] initWithCode:5 userActivity:0];
  v6[2](v6, v28);

LABEL_28:
}

@end