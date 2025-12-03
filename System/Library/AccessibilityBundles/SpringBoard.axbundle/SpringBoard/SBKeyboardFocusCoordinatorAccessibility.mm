@interface SBKeyboardFocusCoordinatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFocusLockedToSpringBoard;
- (BOOL)_accessibilitySwitchNativeFocusedApplicationWithPID:(int)d identifier:(id)identifier;
- (id)_accessibilityTokenStringForPid:(int)pid sceneID:(id)d;
- (void)_accessibilityFocusOnAppWithPid:(int)pid bundleIdentifier:(id)identifier identifier:(id)a5;
- (void)_accessibilityFocusOnSpringBoardWithSceneID:(id)d;
- (void)_accessibilityInvalidateSpringBoardKeyboardDeferral;
- (void)_accessibilityUserFocusRequestForScene:(id)scene;
- (void)_axClearKeyboardFocusOverrideDeferral;
- (void)_axDeferKeyboardFocusToPid:(int)pid sceneID:(id)d forPrimaryOverride:(BOOL)override;
- (void)_axSetKeyboardFocusPid:(int)pid sceneID:(id)d forPrimaryOverride:(BOOL)override;
- (void)setHandlingKeyboardArbiterSuggestion:(BOOL)suggestion;
@end

@implementation SBKeyboardFocusCoordinatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" conformsToProtocol:@"SBKeyboardFocusControlling"];
  [validationsCopy validateProtocol:@"SBKeyboardFocusControlling" hasRequiredInstanceMethod:@"userFocusRequestForScene:reason:completion:"];
  [validationsCopy validateClass:@"SBKeyboardFocusSceneController" hasInstanceVariable:@"_springBoardFocusLockAssertions" withType:"BSCompoundAssertion"];
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" hasInstanceVariable:@"_sceneControllers" withType:"NSMutableSet"];
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" hasInstanceMethod:@"focusLockSpringBoardWindowScene:forAccessibilityReason:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" hasInstanceMethod:@"requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:forAccessibilityReason:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" hasInstanceMethod:@"suppressKeyboardFocusEvaluationForReason:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBKeyboardFocusCoordinator" hasInstanceMethod:@"setHandlingKeyboardArbiterSuggestion:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"systemUIScenesCoordinator" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBFSceneWorkspaceControlling" hasMethod:@"enumerateScenesWithBlock:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"SBSystemUISceneController" conformsToProtocol:@"SBFSceneWorkspaceControlling"];
  [validationsCopy validateClass:@"SBLiveTranscriptionUISceneController" isKindOfClass:@"SBSystemUISceneController"];
  [validationsCopy validateClass:@"SBFullKeyboardAccessUISceneController" isKindOfClass:@"SBSystemUISceneController"];
  [validationsCopy validateClass:@"SBAssistiveTouchUISceneController" isKindOfClass:@"SBSystemUISceneController"];
  [validationsCopy validateClass:@"SBAccessibilityUIServerUISceneController" isKindOfClass:@"SBSystemUISceneController"];
  [validationsCopy validateClass:@"SBSystemUIScenesCoordinator" hasInstanceMethod:@"liveTranscriptionUISceneController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSystemUIScenesCoordinator" hasInstanceMethod:@"fullKeyboardAccessUISceneController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSystemUIScenesCoordinator" hasInstanceMethod:@"assistiveTouchUISceneController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSystemUIScenesCoordinator" hasInstanceMethod:@"accessibilityUIServerUISceneController" withFullSignature:{"@", 0}];
}

- (void)setHandlingKeyboardArbiterSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  v5.receiver = self;
  v5.super_class = SBKeyboardFocusCoordinatorAccessibility;
  [(SBKeyboardFocusCoordinatorAccessibility *)&v5 setHandlingKeyboardArbiterSuggestion:?];
  if (suggestionCopy)
  {
    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityInvalidateSpringBoardKeyboardDeferral];
  }
}

- (void)_accessibilityUserFocusRequestForScene:(id)scene
{
  sceneCopy = scene;
  v3 = sceneCopy;
  AXPerformSafeBlock();
}

- (BOOL)_accessibilityIsFocusLockedToSpringBoard
{
  v2 = [(SBKeyboardFocusCoordinatorAccessibility *)self safeSetForKey:@"_sceneControllers"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __83__SBKeyboardFocusCoordinatorAccessibility__accessibilityIsFocusLockedToSpringBoard__block_invoke;
  v5[3] = &unk_29F2FC1E0;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __83__SBKeyboardFocusCoordinatorAccessibility__accessibilityIsFocusLockedToSpringBoard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"_springBoardFocusLockAssertions"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 reasons];
  v7 = [v6 ax_filteredSetUsingBlock:&__block_literal_global_15];
  *(*(*(a1 + 32) + 8) + 24) = [v7 count] != 0;
}

- (void)_axDeferKeyboardFocusToPid:(int)pid sceneID:(id)d forPrimaryOverride:(BOOL)override
{
  v6 = *&pid;
  dCopy = d;
  v9 = [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityTokenStringForPid:v6 sceneID:dCopy];
  v10 = v9;
  if (v9)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__7;
    v28 = __Block_byref_object_dispose__7;
    v29 = 0;
    v17 = MEMORY[0x29EDCA5F8];
    v18 = 3221225472;
    v19 = __97__SBKeyboardFocusCoordinatorAccessibility__axDeferKeyboardFocusToPid_sceneID_forPrimaryOverride___block_invoke;
    v20 = &unk_29F2FB9F0;
    v23 = &v24;
    selfCopy = self;
    v22 = v9;
    AXPerformSafeBlock();
    v11 = v25[5];

    _Block_object_dispose(&v24, 8);
    [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetNativeFocusedApplicationDeferral:v11];
    v12 = objc_alloc(MEMORY[0x29EDBFBE0]);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __97__SBKeyboardFocusCoordinatorAccessibility__axDeferKeyboardFocusToPid_sceneID_forPrimaryOverride___block_invoke_2;
    v14[3] = &unk_29F2FC208;
    overrideCopy = override;
    v15 = v6;
    v14[4] = self;
    v13 = [v12 initWithPID:v6 queue:MEMORY[0x29EDCA578] deathHandler:v14];
    [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetNativeFocusedApplicationDeathWatcher:v13];
  }

  else
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBKeyboardFocusCoordinatorAccessibility _axDeferKeyboardFocusToPid:v6 sceneID:dCopy forPrimaryOverride:v11];
    }
  }
}

uint64_t __97__SBKeyboardFocusCoordinatorAccessibility__axDeferKeyboardFocusToPid_sceneID_forPrimaryOverride___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:*(a1 + 40) forAccessibilityReason:@"Accessibility-FKA"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __97__SBKeyboardFocusCoordinatorAccessibility__axDeferKeyboardFocusToPid_sceneID_forPrimaryOverride___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    if (*(a1 + 44))
    {
      v4 = @"primary";
    }

    else
    {
      v4 = @"secondary";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_29C37A000, v2, OS_LOG_TYPE_INFO, "Reset %@ override for dead native focused application with pid: %i", &v7, 0x12u);
  }

  v5 = *(a1 + 32);
  if (*(a1 + 44) == 1)
  {
    return [v5 _accessibilitySetPrimaryKeyboardFocusOverridePid:0 sceneID:0];
  }

  else
  {
    return [v5 _accessibilitySetSecondaryKeyboardFocusOverridePid:0 sceneID:0];
  }
}

- (void)_axSetKeyboardFocusPid:(int)pid sceneID:(id)d forPrimaryOverride:(BOOL)override
{
  overrideCopy = override;
  v6 = *&pid;
  v16 = *MEMORY[0x29EDCA608];
  dCopy = d;
  [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityInvalidateSpringBoardKeyboardDeferral];
  v9 = FKALogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"secondary";
    if (overrideCopy)
    {
      v10 = @"primary";
    }

    v12 = 138412546;
    v13 = v10;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_29C37A000, v9, OS_LOG_TYPE_INFO, "Set %@ keyboard focus override pid: %i", &v12, 0x12u);
  }

  if (overrideCopy)
  {
    [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetPrimaryKeyboardFocusOverridePid:v6];
    [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetPrimaryKeyboardFocusOverrideSceneID:dCopy];
    goto LABEL_11;
  }

  [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetSecondaryKeyboardFocusOverridePid:v6];
  [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetSecondaryKeyboardFocusOverrideSceneID:dCopy];
  if (![(SBKeyboardFocusCoordinatorAccessibility *)self _axPrimaryKeyboardFocusOverridePid])
  {
LABEL_11:
    [(SBKeyboardFocusCoordinatorAccessibility *)self _axClearKeyboardFocusOverrideDeferral];
    if (v6)
    {
      [(SBKeyboardFocusCoordinatorAccessibility *)self _axDeferKeyboardFocusToPid:v6 sceneID:dCopy forPrimaryOverride:overrideCopy];
    }

    goto LABEL_13;
  }

  v11 = FKALogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_29C37A000, v11, OS_LOG_TYPE_INFO, "Not updating deferral, because the primary keyboard focus override was in effect.", &v12, 2u);
  }

LABEL_13:
}

- (id)_accessibilityTokenStringForPid:(int)pid sceneID:(id)d
{
  v32 = *MEMORY[0x29EDCA608];
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v4 = [*MEMORY[0x29EDC8008] safeValueForKey:@"systemUIScenesCoordinator"];
  v5 = MEMORY[0x29EDB8D80];
  v6 = [v4 safeValueForKey:@"liveTranscriptionUISceneController"];
  v7 = [v4 safeValueForKey:@"fullKeyboardAccessUISceneController"];
  v8 = [v4 safeValueForKey:@"assistiveTouchUISceneController"];
  v9 = [v4 safeValueForKey:@"accessibilityUIServerUISceneController"];
  v10 = [v5 axArrayByIgnoringNilElementsWithCount:{4, v6, v7, v8, v9}];
  v18 = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v12)
  {
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v20 = dCopy;
      AXPerformSafeBlock();
      v15 = v26[5] == 0;

      if (!v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v16;
}

void __83__SBKeyboardFocusCoordinatorAccessibility__accessibilityTokenStringForPid_sceneID___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __83__SBKeyboardFocusCoordinatorAccessibility__accessibilityTokenStringForPid_sceneID___block_invoke_2;
  v5[3] = &unk_29F2FC230;
  v8 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateScenesWithBlock:v5];
}

void __83__SBKeyboardFocusCoordinatorAccessibility__accessibilityTokenStringForPid_sceneID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v5 = [v13 clientHandle];
  v6 = [v5 processHandle];
  if ([v6 pid] == *(a1 + 48))
  {
    v7 = [v13 identifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      v9 = [v13 identityToken];
      v10 = [v9 stringRepresentation];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a3 = 1;
    }
  }

  else
  {
  }
}

- (void)_axClearKeyboardFocusOverrideDeferral
{
  _axNativeFocusedApplicationDeferral = [(SBKeyboardFocusCoordinatorAccessibility *)self _axNativeFocusedApplicationDeferral];
  [_axNativeFocusedApplicationDeferral invalidate];

  [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetNativeFocusedApplicationDeferral:0];
  _axNativeFocusedApplicationDeathWatcher = [(SBKeyboardFocusCoordinatorAccessibility *)self _axNativeFocusedApplicationDeathWatcher];
  [_axNativeFocusedApplicationDeathWatcher invalidate];

  [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetNativeFocusedApplicationDeathWatcher:0];
}

- (void)_accessibilityFocusOnSpringBoardWithSceneID:(id)d
{
  dCopy = d;
  [(SBKeyboardFocusCoordinatorAccessibility *)self _axClearKeyboardFocusOverrideDeferral];
  [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityInvalidateSpringBoardKeyboardDeferral];
  v5 = MEMORY[0x29EDC8008];
  v6 = [*MEMORY[0x29EDC8008] safeArrayForKey:@"_accessibilityFocusableScenes"];
  _accessibilityMainWindow = [*v5 _accessibilityMainWindow];
  windowScene = [_accessibilityMainWindow windowScene];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v9 = windowScene;
  v28 = v9;
  if ([dCopy length])
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke;
    v20[3] = &unk_29F2FBE00;
    v21 = dCopy;
    v22 = &v23;
    [v6 enumerateObjectsUsingBlock:v20];
  }

  if ([v6 containsObject:v24[5]])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    v13[5] = MEMORY[0x29EDCA5F8];
    v13[6] = 3221225472;
    v13[7] = __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke_2;
    v13[8] = &unk_29F2FC280;
    v13[9] = self;
    v13[10] = &v14;
    v13[11] = &v23;
    AXPerformSafeBlock();
    v10 = v15[5];
    _Block_object_dispose(&v14, 8);

    [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetSpringBoardDeferral:v10];
    v11 = v24[5];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    LOBYTE(v17) = 0;
    v12 = AXFrontBoardRunningAppProcesses();
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke_3;
    v13[3] = &unk_29F2FC2A8;
    v13[4] = &v14;
    [v12 enumerateObjectsUsingBlock:v13];
    if ((v15[3] & 1) == 0 && v9 == v11)
    {
      [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityInvalidateSpringBoardKeyboardDeferral];
    }

    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v23, 8);
}

void __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v8 _sceneIdentifier];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) focusLockSpringBoardWindowScene:*(*(*(a1 + 48) + 8) + 40) forAccessibilityReason:@"Accessibility-FKA"];

  return MEMORY[0x2A1C71028]();
}

void __87__SBKeyboardFocusCoordinatorAccessibility__accessibilityFocusOnSpringBoardWithSceneID___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSystemApplicationProcess] & 1) == 0)
  {
    if ([v5 isApplicationProcess])
    {
      if ([v5 isForeground])
      {
        v3 = [v5 state];
        v4 = [v3 taskState];

        if (v4 == 2)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }
    }
  }
}

- (void)_accessibilityFocusOnAppWithPid:(int)pid bundleIdentifier:(id)identifier identifier:(id)a5
{
  v18 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v9 = a5;
  v10 = FKALogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = identifierCopy;
    v16 = 1024;
    pidCopy = pid;
    _os_log_impl(&dword_29C37A000, v10, OS_LOG_TYPE_INFO, "Focusing on app with bundle identifier: %@, pid: %i", &v14, 0x12u);
  }

  mEMORY[0x29EDC1180] = [MEMORY[0x29EDC1180] sharedInstance];
  v12 = [mEMORY[0x29EDC1180] sceneWithIdentifier:v9];

  if (v12)
  {
    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityUserFocusRequestForScene:v12];
  }

  else
  {
    v13 = FKALogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinatorAccessibility _accessibilityFocusOnAppWithPid:v9 bundleIdentifier:v13 identifier:?];
    }
  }
}

- (BOOL)_accessibilitySwitchNativeFocusedApplicationWithPID:(int)d identifier:(id)identifier
{
  v4 = *&d;
  v20 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v7 = [(SBKeyboardFocusCoordinatorAccessibility *)self suppressKeyboardFocusEvaluationForReason:@"Accessibility-FKA"];
  v8 = AXFrontBoardRunningAppProcesses();
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __106__SBKeyboardFocusCoordinatorAccessibility__accessibilitySwitchNativeFocusedApplicationWithPID_identifier___block_invoke;
  v16[3] = &__block_descriptor_36_e19_B16__0__FBProcess_8l;
  v17 = v4;
  v9 = [v8 ax_firstObjectUsingBlock:v16];

  if ([v9 isSystemApplicationProcess] && (objc_msgSend(identifierCopy, "containsString:", @"SystemAperture") & 1) == 0)
  {
    v12 = FKALogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29C37A000, v12, OS_LOG_TYPE_INFO, "Switching to system application", buf, 2u);
    }

    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilitySetSecondaryKeyboardFocusOverridePid:0 sceneID:0];
    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityFocusOnSpringBoardWithSceneID:identifierCopy];
    goto LABEL_15;
  }

  if (![v9 isApplicationProcess])
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v19) = v4;
      _os_log_impl(&dword_29C37A000, v11, OS_LOG_TYPE_INFO, "Switching to non-application %i", buf, 8u);
    }

    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilitySetSecondaryKeyboardFocusOverridePid:v4 sceneID:identifierCopy];
    goto LABEL_15;
  }

  if (![(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityIsFocusLockedToSpringBoard])
  {
    v13 = FKALogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_29C37A000, v13, OS_LOG_TYPE_INFO, "Switching to regular application %@", buf, 0xCu);
    }

    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilitySetSecondaryKeyboardFocusOverridePid:0 sceneID:0];
    bundleIdentifier = [v9 bundleIdentifier];
    [(SBKeyboardFocusCoordinatorAccessibility *)self _accessibilityFocusOnAppWithPid:v4 bundleIdentifier:bundleIdentifier identifier:identifierCopy];

LABEL_15:
    v10 = 1;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  [v7 invalidate];

  return v10;
}

- (void)_accessibilityInvalidateSpringBoardKeyboardDeferral
{
  _axSpringBoardDeferral = [(SBKeyboardFocusCoordinatorAccessibility *)self _axSpringBoardDeferral];
  [_axSpringBoardDeferral invalidate];

  [(SBKeyboardFocusCoordinatorAccessibility *)self _axSetSpringBoardDeferral:0];
}

- (void)_axDeferKeyboardFocusToPid:(uint64_t)a1 sceneID:(uint64_t)a2 forPrimaryOverride:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = [MEMORY[0x29EDBA070] numberWithInt:a1];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_29C37A000, a3, OS_LOG_TYPE_DEBUG, "Found nil tokenString for pid: %@ sceneID: %@", &v6, 0x16u);
}

- (void)_accessibilityFocusOnAppWithPid:(uint64_t)a1 bundleIdentifier:(NSObject *)a2 identifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_29C37A000, a2, OS_LOG_TYPE_ERROR, "No scene available, can't focus on app %@", &v2, 0xCu);
}

@end