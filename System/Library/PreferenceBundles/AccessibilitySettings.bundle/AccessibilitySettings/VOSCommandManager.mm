@interface VOSCommandManager
- (id)_actualPresentationControllerForController:(id)controller;
- (void)applyAction:(int64_t)action toCommand:(id)command withGesture:(id)gesture keyboardShortcut:(id)shortcut resolver:(id)resolver presentationController:(id)controller completion:(id)completion;
@end

@implementation VOSCommandManager

- (void)applyAction:(int64_t)action toCommand:(id)command withGesture:(id)gesture keyboardShortcut:(id)shortcut resolver:(id)resolver presentationController:(id)controller completion:(id)completion
{
  commandCopy = command;
  gestureCopy = gesture;
  shortcutCopy = shortcut;
  resolverCopy = resolver;
  controllerCopy = controller;
  completionCopy = completion;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__5;
  v90 = __Block_byref_object_dispose__5;
  v91 = 0;
  if ((action - 3) < 3)
  {
    if (!shortcutCopy)
    {
      v21 = @"No keychord provided for action add/remove";
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (action > 2)
  {
    v58 = commandCopy;
    v28 = 0;
    v27 = 0;
    v34 = 0;
LABEL_29:

    commandCopy = v58;
    goto LABEL_30;
  }

  if (gestureCopy)
  {
LABEL_6:
    v57 = controllerCopy;
    v58 = commandCopy;
    v56 = resolverCopy;
    if (action > 2)
    {
      if (action != 3)
      {
        if (action == 4)
        {
          v35 = v83;
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_7;
          v83[3] = &unk_258E60;
          v83[4] = self;
          v83[5] = shortcutCopy;
          v83[6] = commandCopy;
          v83[7] = resolverCopy;
          v83[8] = completionCopy;
          v36 = objc_retainBlock(v83);
          v37 = [v36 copy];
        }

        else
        {
          v35 = v82;
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_10;
          v82[3] = &unk_258E60;
          v82[4] = self;
          v82[5] = shortcutCopy;
          v82[6] = commandCopy;
          v82[7] = resolverCopy;
          v82[8] = completionCopy;
          v36 = objc_retainBlock(v82);
          v37 = [v36 copy];
        }

        goto LABEL_24;
      }

      v47 = resolverCopy;
      v41 = v84;
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_4;
      v84[3] = &unk_258E60;
      v84[4] = self;
      v48 = shortcutCopy;
      v84[5] = v48;
      v49 = commandCopy;
      v84[6] = v49;
      v50 = v47;
      v84[7] = v50;
      v84[8] = completionCopy;
      v51 = objc_retainBlock(v84);
      v34 = [v51 copy];

      v46 = [(VOSCommandManager *)self validateCanAddKeyChord:v48 toCommand:v49 withResolver:v50];
    }

    else
    {
      if (action)
      {
        if (action == 1)
        {
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_2_297;
          v77[3] = &unk_258E60;
          v77[4] = self;
          v22 = gestureCopy;
          v78 = v22;
          v23 = commandCopy;
          v79 = v23;
          v24 = resolverCopy;
          v80 = v24;
          v25 = completionCopy;
          v81 = v25;
          v26 = objc_retainBlock(v77);
          v27 = [v26 copy];

          v28 = [(VOSCommandManager *)self validateCanRemoveGesture:v22 fromCommand:v23 withResolver:v24];

          if (v28 && ([v28 isSuccessful] & 1) == 0)
          {
            v29 = [VoiceOverCommandProfileValidationPresenter presenterWithValidation:v28];
            v62[0] = _NSConcreteStackBlock;
            v62[1] = 3221225472;
            v62[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_6_314;
            v62[3] = &unk_258ED8;
            v63[1] = &v86;
            v30 = v25;
            v63[0] = v30;
            [v29 setUserAcceptedValidationResolutionBlock:v62];
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_7_318;
            v59[3] = &unk_258ED8;
            v61 = &v86;
            v60 = v30;
            [v29 setUserRejectedValidationResolutionBlock:v59];
            v31 = [(VOSCommandManager *)self _actualPresentationControllerForController:v57];
            [v29 presentWithController:v31];
            v32 = v29;
            v33 = v63;

            v34 = 0;
LABEL_27:

            goto LABEL_28;
          }

          goto LABEL_25;
        }

        v35 = v76;
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_5_300;
        v76[3] = &unk_258E60;
        v76[4] = self;
        v76[5] = gestureCopy;
        v76[6] = commandCopy;
        v76[7] = resolverCopy;
        v76[8] = completionCopy;
        v36 = objc_retainBlock(v76);
        v37 = [v36 copy];
LABEL_24:
        v27 = v37;

        v28 = 0;
LABEL_25:
        v27[2](v27);
        v34 = 0;
        goto LABEL_28;
      }

      v40 = resolverCopy;
      v41 = v85;
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke;
      v85[3] = &unk_258E60;
      v85[4] = self;
      v42 = gestureCopy;
      v85[5] = v42;
      v43 = commandCopy;
      v85[6] = v43;
      v44 = v40;
      v85[7] = v44;
      v85[8] = completionCopy;
      v45 = objc_retainBlock(v85);
      v34 = [v45 copy];

      v46 = [(VOSCommandManager *)self validateCanAddGesture:v42 toCommand:v43 withResolver:v44];
    }

    v28 = v46;

    if (![v28 isSuccessful])
    {
      v52 = [VoiceOverCommandProfileValidationPresenter presenterWithValidation:v28];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_2_304;
      v67[3] = &unk_258EB0;
      v28 = v28;
      v68[0] = v28;
      v68[1] = self;
      v69 = gestureCopy;
      v70 = v56;
      v53 = v57;
      v71 = v53;
      v34 = v34;
      v73 = v34;
      v54 = completionCopy;
      v74 = v54;
      v72 = shortcutCopy;
      v75 = &v86;
      [v52 setUserAcceptedValidationResolutionBlock:v67];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_5_310;
      v64[3] = &unk_258ED8;
      v66 = &v86;
      v65 = v54;
      [v52 setUserRejectedValidationResolutionBlock:v64];
      v55 = [(VOSCommandManager *)self _actualPresentationControllerForController:v53];
      [v52 presentWithController:v55];
      v32 = v52;
      v33 = v68;

      v27 = 0;
      goto LABEL_27;
    }

    v34[2](v34);
    v27 = 0;
LABEL_28:
    resolverCopy = v56;
    controllerCopy = v57;
    goto LABEL_29;
  }

  v21 = @"No gesture provided for action add/remove";
LABEL_16:
  v38 = [NSError ax_errorWithDomain:@"VoiceOverCommands" description:v21];
  v39 = v87[5];
  v87[5] = v38;

  (*(completionCopy + 2))(completionCopy, v87[5]);
LABEL_30:
  _Block_object_dispose(&v86, 8);
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_2;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_3;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_4(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_5;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_6;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_7(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_8;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_9;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_10(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_11;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_296;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

id __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) removeKeyChord:*(a1 + 40) fromCommand:*(a1 + 48) withResolver:*(a1 + 56)];
  v3 = [[VOSCommandManager alloc] initWithSystemProfile];
  v4 = [v3 commandForKeyChord:*(a1 + 40) withResolver:*(a1 + 56)];

  v5 = VOTLogCommands();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Got default command %@ for %@", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) addKeyChord:*(a1 + 40) toCommand:v4 withResolver:*(a1 + 56)];

  return v7;
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_2_297(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_3_298;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_4_299;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_5_300(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_6_301;
  v9[3] = &unk_258E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_302;
  v7[3] = &unk_258E38;
  v8 = *(a1 + 64);
  [v6 batchUpdateActiveProfile:v9 saveIfSuccessful:1 completion:v7];
}

id __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_6_301(uint64_t a1)
{
  v2 = [*(a1 + 32) removeGesture:*(a1 + 40) fromCommand:*(a1 + 48) withResolver:*(a1 + 56)];
  v3 = [[VOSCommandManager alloc] initWithSystemProfile];
  v4 = [v3 commandForTouchGesture:*(a1 + 40) withResolver:*(a1 + 56)];

  v5 = VOTLogCommands();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Got default gesture %@ for %@", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) addGesture:*(a1 + 40) toCommand:v4 withResolver:*(a1 + 56)];

  return v7;
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_2_304(uint64_t a1)
{
  if ([*(a1 + 32) isGestureAssignedToOtherCommand])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) previouslyBoundCommand];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_3_305;
    v20[3] = &unk_258E88;
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    [v2 applyAction:1 toCommand:v3 withGesture:v4 keyboardShortcut:0 resolver:v5 presentationController:v6 completion:v20];

    v7 = v21;
LABEL_5:

    return;
  }

  if ([*(a1 + 32) isKeyboardShortcutAssignedToOtherCommand])
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) previouslyBoundCommand];
    v11 = *(a1 + 64);
    v10 = *(a1 + 72);
    v12 = *(a1 + 56);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_4_306;
    v17[3] = &unk_258E88;
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    [v8 applyAction:4 toCommand:v9 withGesture:0 keyboardShortcut:v10 resolver:v12 presentationController:v11 completion:v17];

    v7 = v18;
    goto LABEL_5;
  }

  v13 = [NSError ax_errorWithDomain:@"VoiceOverCommands" description:@"Unexpected validation: %@", *(a1 + 32)];
  v14 = *(*(a1 + 96) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(a1 + 88) + 16);

  v16();
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_3_305(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

void __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_4_306(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

uint64_t __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_5_310(uint64_t a1)
{
  v2 = [NSError ax_errorWithDomain:@"VoiceOverCommands" description:@"User rejected validation resolution"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_6_314(uint64_t a1)
{
  v2 = [NSError ax_errorWithDomain:@"VoiceOverCommands" description:@"User accepted validation resolution"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t __146__VOSCommandManager_VoiceOverCustomCommandsExtras__applyAction_toCommand_withGesture_keyboardShortcut_resolver_presentationController_completion___block_invoke_7_318(uint64_t a1)
{
  v2 = [NSError ax_errorWithDomain:@"VoiceOverCommands" description:@"User rejected validation resolution"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (id)_actualPresentationControllerForController:(id)controller
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [controllerCopy presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      controllerCopy = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = controllerCopy;
  }

  return presentedViewController2;
}

@end