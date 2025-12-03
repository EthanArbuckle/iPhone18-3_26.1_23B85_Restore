@interface SetSoundDetectorIntentHandler
- (SetSoundDetectorIntentHandler)init;
- (void)handleSetSoundDetector:(id)detector completion:(id)completion;
- (void)provideParameterOptionsCollectionForSetSoundDetector:(id)detector withCompletion:(id)completion;
- (void)resolveOperationForSetSoundDetector:(id)detector withCompletion:(id)completion;
- (void)resolveParameterForSetSoundDetector:(id)detector withCompletion:(id)completion;
- (void)resolveStateForSetSoundDetector:(id)detector withCompletion:(id)completion;
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

- (void)resolveOperationForSetSoundDetector:(id)detector withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [detector operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveParameterForSetSoundDetector:(id)detector withCompletion:(id)completion
{
  completionCopy = completion;
  parameter = [detector parameter];
  v7 = [AXSoundResolutionResult successWithResolvedSound:parameter];
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForSetSoundDetector:(id)detector withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [detector state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)provideParameterOptionsCollectionForSetSoundDetector:(id)detector withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[AXSDSettings sharedInstance];
  soundDetectionState = [v5 soundDetectionState];

  if (!soundDetectionState)
  {
    v7 = [NSError ax_errorWithDomain:@"SiriShortcutsSoundRecognition" description:@"Sound Recognition is currently not enabled. Enable the feature in Accessibility Settings."];
    completionCopy[2](completionCopy, 0, v7);
  }

  v43 = completionCopy;
  v8 = &AXDeviceSupportsWatchRemoteScreen_ptr;
  v9 = +[AXSDDetectorStore sharedInstance];
  localizedNamesByIdentifier = [v9 localizedNamesByIdentifier];
  v11 = [localizedNamesByIdentifier mutableCopy];

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

        allKeys = [v11 allKeys];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = allKeys;
        v25 = [allKeys countByEnumeratingWithState:&v52 objects:v64 count:16];
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
              sharedInstance = [v8[108] sharedInstance];
              v31 = [sharedInstance detectorWithIdentifier:v29];

              if (v31)
              {
                if ([v31 isCustom])
                {
                  category = [v31 category];
                  v33 = [category isEqualToString:v51];

                  if (v33)
                  {
                    if ([v31 isTrainingComplete])
                    {
                      v34 = [AXSound alloc];
                      identifier = [v31 identifier];
                      [v31 name];
                      v37 = v36 = v11;
                      v38 = [(AXSound *)v34 initWithIdentifier:identifier displayString:v37];

                      v11 = v36;
                      v8 = &AXDeviceSupportsWatchRemoteScreen_ptr;

                      category2 = [v31 category];
                      [(AXSound *)v38 setCategory:category2];

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

- (void)handleSetSoundDetector:(id)detector completion:(id)completion
{
  detectorCopy = detector;
  completionCopy = completion;
  parameter = [detectorCopy parameter];
  identifier = [parameter identifier];
  if (!identifier)
  {
    v18 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SetSoundDetectorIntentHandler: Received a parameter with a nil identifier.", v32, 2u);
    }

    goto LABEL_26;
  }

  if ([detectorCopy operation] == 1 && !objc_msgSend(detectorCopy, "state"))
  {
    v18 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(detectorCopy, v18);
    }

LABEL_26:

    v30 = [AXSetSoundDetectorIntentResponse alloc];
    v31 = 5;
LABEL_27:
    v28 = [(AXSetSoundDetectorIntentResponse *)v30 initWithCode:v31 userActivity:0];
    completionCopy[2](completionCopy, v28);
    goto LABEL_28;
  }

  v9 = +[AXSDSettings sharedInstance];
  enabledSoundDetectionTypes = [v9 enabledSoundDetectionTypes];
  identifier2 = [parameter identifier];
  v12 = [enabledSoundDetectionTypes containsObject:identifier2];

  isCustom = [parameter isCustom];
  LODWORD(enabledSoundDetectionTypes) = [isCustom BOOLValue];

  if (enabledSoundDetectionTypes)
  {
    v14 = +[AXSDSettings sharedInstance];
    enabledKShotDetectorIdentifiers = [v14 enabledKShotDetectorIdentifiers];
    identifier3 = [parameter identifier];
    v12 = [enabledKShotDetectorIdentifiers containsObject:identifier3];
  }

  if ([detectorCopy operation] == 2)
  {
    v17 = v12 ^ 1;
  }

  else
  {
    v17 = [detectorCopy state] == 1;
  }

  isCustom2 = [parameter isCustom];
  bOOLValue = [isCustom2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v26 = v12 | ~v17;
    v23 = +[AXSDSettings sharedInstance];
    identifier4 = [parameter identifier];
    if (v26)
    {
      [v23 removeSoundDetectionType:identifier4];
    }

    else
    {
      [v23 addSoundDetectionType:identifier4];
    }

    goto LABEL_21;
  }

  v21 = +[AXSDDetectorStore sharedInstance];
  identifier5 = [parameter identifier];
  v23 = [v21 detectorWithIdentifier:identifier5];

  if (v23 && [v23 isCustom])
  {
    v24 = v12 ^ 1;
    identifier4 = +[AXSDSettings sharedInstance];
    [identifier4 setKShotDetectorIsEnabled:v23 isEnabled:v17 & v24];
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
    sub_10000D964(parameter, v27);
  }

  v28 = [[AXSetSoundDetectorIntentResponse alloc] initWithCode:5 userActivity:0];
  completionCopy[2](completionCopy, v28);

LABEL_28:
}

@end