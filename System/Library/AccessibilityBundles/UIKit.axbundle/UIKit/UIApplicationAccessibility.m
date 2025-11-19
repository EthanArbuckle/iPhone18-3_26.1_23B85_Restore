@interface UIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityAllowsNotificationsDuringSuspension;
- (BOOL)_accessibilityBeginMonitoringIdleRunLoop;
- (BOOL)_accessibilityDispatchKeyboardAction:(id)a3;
- (BOOL)_accessibilityDispatchScrollWithAmount:(int64_t)a3;
- (BOOL)_accessibilityElementBelongsToKeyboardWindow:(id)a3;
- (BOOL)_accessibilityHardwareKeyboardActive;
- (BOOL)_accessibilityKeyboardIsEmojiInputMode;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4;
- (BOOL)_accessibilityResetAndClearNativeFocusSystem;
- (BOOL)_accessibilitySoftwareKeyboardActive;
- (BOOL)_accessibilitySoftwareKeyboardCoversElement:(id)a3;
- (BOOL)_accessibilityUpdateNativeFocusImmediately;
- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (BOOL)accessibilityStartStopToggle;
- (BOOL)openURL:(id)a3;
- (CGRect)_accessibilitySoftwareKeyboardAccessibilityFrame;
- (CGRect)accessibilityFrame;
- (__GSKeyboard)GSKeyboardForHWLayout:(id)a3 senderID:(unint64_t)a4 forceRebuild:(BOOL)a5 createIfNeeded:(BOOL)a6;
- (double)_accessibilityLastDictationMagicTapTime;
- (id)_accessibilityActiveScenes;
- (id)_accessibilityApplicationSemanticContextWithViewController:(uint64_t)a1;
- (id)_accessibilityApplicationWindowFramesAndIds;
- (id)_accessibilityAuditIssuesWithOptions:(id)a3;
- (id)_accessibilityBundleIdentifier;
- (id)_accessibilityCellWithRowIndex:(int64_t)a3 column:(int64_t)a4 containingView:(id)a5;
- (id)_accessibilityConnectedScenes;
- (id)_accessibilityCurrentHardwareKeyboardLayout;
- (id)_accessibilityCurrentSoftwareKeyboardLayout;
- (id)_accessibilityCurrentSoftwareLanguage;
- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 parameters:(id)a7;
- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 traversalOptions:(id)a7;
- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 parameters:(id)a6;
- (id)_accessibilityElementsForSearchParameter:(id)a3;
- (id)_accessibilityElementsWithSemanticContext:(id)a3;
- (id)_accessibilityExplorerElements;
- (id)_accessibilityFindContainerAccessibleElement:(char)a3 first:(char)a4 focus:(char)a5 allowScrolling:;
- (id)_accessibilityFirstElementForFocusWithOptions:(id)a3;
- (id)_accessibilityFirstElementsForSpeakThis;
- (id)_accessibilityFocusContainer;
- (id)_accessibilityFocusableScenes;
- (id)_accessibilityFocusableScenesDictionary;
- (id)_accessibilityFocusedScene;
- (id)_accessibilityMLProxiedElements;
- (id)_accessibilityMainWindow;
- (id)_accessibilityMainWindowInWindows:(id)a3;
- (id)_accessibilityMakeUIPressInfoWithType:(uint64_t)a3 phase:(int)a4 timestamp:(double)a5 contextID:;
- (id)_accessibilityNativeFocusElement;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)_accessibilityNativeFocusableElements:(id)a3;
- (id)_accessibilityNativeFocusableElements:(id)a3 matchingBlock:(id)a4;
- (id)_accessibilityNativeFocusableElements:(id)a3 matchingBlock:(id)a4 forExistenceCheckOnly:(BOOL)a5;
- (id)_accessibilityNativeFocusableElements:(id)a3 withQueryString:(id)a4;
- (id)_accessibilityPreferredFocusedWindow;
- (id)_accessibilityPreviewWindow;
- (id)_accessibilityRealtimeElements;
- (id)_accessibilityResponderElement:(BOOL)a3;
- (id)_accessibilitySemanticContext;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_accessibilitySpeakThisRootElement;
- (id)_accessibilitySpeakThisViewController;
- (id)_accessibilitySummaryElement;
- (id)_accessibilityTextReplacementCandidates;
- (id)_accessibilityTitleBarElement;
- (id)_accessibilityTypingCandidates;
- (id)_accessibilityUIWindowFindWithGlobalPoint:(double)a3;
- (id)_accessibilityValidateResponderForFocus:(void *)a1;
- (id)_accessibilityValidatedResponderForExistingGoodResponder:(char)a3 forFocus:;
- (id)_accessibilityWindowSceneForSceneID:(id)a3;
- (id)_accessibilityWindowSections;
- (id)_accessibilityWindowsIgnoringWindowsWithHiddenElements:(BOOL)a3;
- (id)_axActiveEmojiSearchField;
- (id)_axAllSubviews;
- (id)_axAuditCheckDynamicTextSupport:(char)a3 andClippingIssues:(char)a4 spinRunloop:;
- (id)_axSubviews;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4;
- (id)_responderForKeyEvents;
- (id)_targetInChainForAction:(SEL)a3 sender:(id)a4;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (uint64_t)_accessibilityActionIsPhysicalButton:(uint64_t *)a3 nativeUIKitTypeRef:;
- (uint64_t)_accessibilityApplicationInterfaceOrientation;
- (uint64_t)_accessibilityCancelRewindOrFastForward;
- (uint64_t)_accessibilityDictationIsAvailable;
- (uint64_t)_accessibilityDictationIsListening;
- (uint64_t)_accessibilityHandleFullKeyboardAccessAction:(id)obj value:;
- (uint64_t)_accessibilityIsInitialBundleLoadFinished;
- (uint64_t)_accessibilityIsTappingMediaLegibilityEvents;
- (uint64_t)_accessibilityMediaFastForward;
- (uint64_t)_accessibilityMediaNextTrack;
- (uint64_t)_accessibilityMediaPause;
- (uint64_t)_accessibilityMediaPlay;
- (uint64_t)_accessibilityMediaPlayPause;
- (uint64_t)_accessibilityMediaPreviousTrack;
- (uint64_t)_accessibilityMediaRewind;
- (uint64_t)_accessibilityMediaSkipDuration:(void *)a1;
- (uint64_t)_accessibilityShowKeyboardHints;
- (uint64_t)_accessibilityStartStopDictation;
- (void)_accessibilityAVCaptureStarted:(id)a3;
- (void)_accessibilityAVCaptureStopped:(id)a3;
- (void)_accessibilityDidFocusOnApplication;
- (void)_accessibilityFocusDidUpdate:(id)a3;
- (void)_accessibilityInitialize;
- (void)_accessibilityKeyboardDidHide:(id)a3;
- (void)_accessibilityKeyboardDidShow:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterForDictationLifecycleNotifications;
- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)a3;
- (void)_accessibilitySetSpeakThisRootElement:(id)a3;
- (void)_accessibilitySetSpeakThisRootElementAccessibilityIdentifier:(id)a3;
- (void)_accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:(id)a3;
- (void)_accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:(id)a3;
- (void)_accessibilitySetTextInsertionGlowModeEnabled:(BOOL)a3;
- (void)_accessibilitySetUIAppDisplayIDForContinuityDisplay:(id)a3;
- (void)_accessibilitySetUIAppFocusedOnContinuityDisplay:(id)a3;
- (void)_accessibilityShowEditingHUD;
- (void)_addEntriesToMapTable:(id)a3 fromMapTable:(id)a4;
- (void)_finishButtonEvent:(id)a3;
- (void)_iosAccessibilitySetValue:(id)a3 forAttribute:(int64_t)a4;
- (void)_loadAllAccessibilityInformation;
- (void)dealloc;
- (void)handleKeyHIDEvent:(__IOHIDEvent *)a3;
- (void)sendEvent:(id)a3;
@end

@implementation UIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v25 = location;
  v24 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = "@";
  v20 = "B";
  v22 = @"UIApplication";
  [location[0] validateClass:"@" hasInstanceMethod:"Q" withFullSignature:{"B", "B", 0}];
  [location[0] validateClass:@"_UIViewServiceSessionManager" hasClassMethod:@"hasActiveSessions" withFullSignature:{v20, 0}];
  v3 = @"UIDictationController";
  [location[0] validateClass:0 hasClassMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasClassMethod:@"isListening" withFullSignature:{v20, 0}];
  [location[0] validateClass:v3 hasClassMethod:@"dictationIsFunctional" withFullSignature:{v20, 0}];
  [location[0] validateClass:v3 hasClassMethod:@"fetchCurrentInputModeSupportsDictation" withFullSignature:{v20, 0}];
  v14 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"startDictation" withFullSignature:0];
  [location[0] validateClass:v3 hasClassMethod:@"activeInstance" withFullSignature:{v23, 0}];
  v9 = "i";
  [location[0] validateClass:@"UIPhysicalKeyboardEvent" hasClassMethod:@"_eventWithInput: inputFlags:" withFullSignature:{v23, "i", 0}];
  [location[0] validateClass:@"UIDimmingView" hasInstanceMethod:@"delegate" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"_UIFormSheetPresentationController"];
  v8 = @"UIKeyboardImpl";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UITextReplacement" hasInstanceMethod:@"replacementText" withFullSignature:{v23, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"textInteractionAssistant" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UITextInteractionAssistant" hasInstanceMethod:@"_selectionView" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UITextSelectionView" hasInstanceMethod:@"selectionChanged" withFullSignature:{v14, 0}];
  [location[0] validateClass:v22 hasInstanceMethod:@"_systemNavigationAction" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UIStatusBarWindow" hasInstanceVariable:@"_statusBar" withType:"UIStatusBar"];
  v4 = @"_UIPopoverView";
  [location[0] validateClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"standardChromeView" withFullSignature:{v23, 0}];
  [location[0] validateClass:v22 hasInstanceMethod:@"_isActivating" withFullSignature:{v20, 0}];
  v5 = @"UIKeyShortcutHUDService";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasClassMethod:@"sharedHUDService" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UIViewController" hasInstanceMethod:@"dropShadowView" withFullSignature:{v23, 0}];
  v6 = @"UICompatibilityInputViewController";
  [location[0] validateClass:v23 hasClassMethod:0 withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"inputController" withFullSignature:{v23, 0}];
  v7 = @"UIKeyboardInputModeController";
  [location[0] validateClass:?];
  [location[0] validateClass:v7 hasClassMethod:@"sharedInputModeController" withFullSignature:{v23, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"switchToDictationInputMode" withFullSignature:{v14, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"currentInputMode" withFullSignature:{v23, 0}];
  v10 = @"UIScreen";
  v17 = "q";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"candidateController" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UIKBInputDelegateManager" hasInstanceMethod:@"selectionDisplayInteraction" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UITextSelectionDisplayInteraction" hasInstanceMethod:@"_setGlowViewMode:" withFullSignature:{v14, v9, 0}];
  [location[0] validateClass:@"UIWheelEvent"];
  [location[0] validateClass:v10 hasInstanceMethod:@"_isMainScreen" withFullSignature:{v20, 0}];
  [location[0] validateClass:v10 hasClassMethod:@"_enumerateScreensWithBlock:" withFullSignature:{v14, "@?", 0}];
  v16 = @"UIFocusSystem";
  [location[0] validateClass:v23 hasInstanceMethod:v20 withFullSignature:{v20, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_updateFocusWithContext:report:" withFullSignature:{v20, v23, v23, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_setEnabled:" withFullSignature:{v14, v20, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_isEnabled" withFullSignature:{v20, 0}];
  [location[0] validateClass:@"UIFocusUpdateContext" hasInstanceVariable:@"_request" withType:"<_UIFocusUpdateRequesting>"];
  v15 = @"_UIFocusSystemSceneComponent";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateProtocol:@"_UIFocusUpdateRequesting" hasMethod:@"focusSystem" isInstanceMethod:1 isRequired:1];
  [location[0] validateClass:v15 hasClassMethod:@"sceneComponentForFocusSystem:" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"activeViews" withFullSignature:{v23, 0}];
  [location[0] validateClass:v22 hasClassMethod:@"_isSystemUIService" withFullSignature:{v20, 0}];
  v11 = @"UITextEffectsWindow";
  [location[0] validateClass:?];
  [location[0] validateClass:v11 hasInstanceVariable:@"_editingOverlayViewController" withType:"UIEditingOverlayViewController"];
  v12 = @"UIEditingOverlayViewController";
  [location[0] validateClass:?];
  [location[0] validateClass:v12 hasInstanceMethod:@"undoInteraction" withFullSignature:{v23, 0}];
  v13 = @"UIUndoGestureInteraction";
  [location[0] validateClass:?];
  [location[0] validateClass:v13 hasInstanceMethod:@"setUndoInteractiveHUDVisibility:" withFullSignature:{v14, v20, 0}];
  [location[0] validateClass:v15 hasClassMethod:@"needsFocusSystem" withFullSignature:{v20, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_preferredFirstResponder" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityGetContextID" withFullSignature:{"I", 0}];
  v18 = @"UIWindowScene";
  v19 = @"UIScene";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v18 hasInstanceMethod:@"_referenceBoundsForOrientation:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", v17, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"keyWindow" withFullSignature:{v23, 0}];
  [location[0] validateClass:v19 hasClassMethod:@"_scenesIncludingInternal:" withFullSignature:{v23, v20, 0}];
  [location[0] validateClass:v19 hasInstanceMethod:@"_FBSScene" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"FBSScene" hasInstanceMethod:@"identifier" withFullSignature:{v23, 0}];
  v21 = @"UIWindow";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v21 hasInstanceMethod:@"_focusResponder" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"UIKeyboardSceneDelegate" hasInstanceVariable:@"_systemInputAssistantViewController" withType:"UISystemInputAssistantViewController"];
  [location[0] validateClass:@"UISystemInputAssistantViewController" hasInstanceMethod:@"emojiSearchViewController" withFullSignature:{v23, 0}];
  [location[0] validateClass:@"_UIFindNavigatorSearchTextField" isKindOfClass:@"UITextField"];
  [location[0] validateClass:v22 hasProperty:@"connectedScenes" withType:v23];
  objc_storeStrong(v25, v24);
}

- (CGRect)accessibilityFrame
{
  v81 = *MEMORY[0x29EDCA608];
  v78 = self;
  v77[1] = a2;
  if (AXRequestingClient() == 3)
  {
    v43 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    [v43 accessibilityFrame];
    v44.origin.x = v2;
    v44.origin.y = v3;
    v44.size.width = v4;
    v44.size.height = v5;
    v79 = v44;
    MEMORY[0x29EDC9740](v43);
  }

  else
  {
    v77[0] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AXAppFrame-%p", v78];
    v76 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v77[0]];
    if (v76)
    {
      [v76 rectValue];
      v42.origin.x = v6;
      v42.origin.y = v7;
      v42.size.width = v8;
      v42.size.height = v9;
      v79 = v42;
      v75 = 1;
    }

    else
    {
      memset(&v79, 0, sizeof(v79));
      v79 = **&MEMORY[0x29EDB90E0];
      memset(__b, 0, 0x40uLL);
      v73 = 0;
      objc_opt_class();
      v65 = 0;
      v66 = &v65;
      v67 = 838860800;
      v68 = 48;
      v69 = __Block_byref_object_copy__5;
      v70 = __Block_byref_object_dispose__5;
      v71 = 0;
      v59 = MEMORY[0x29EDCA5F8];
      v60 = -1073741824;
      v61 = 0;
      v62 = __48__UIApplicationAccessibility_accessibilityFrame__block_invoke;
      v63 = &unk_29F30CA38;
      v64 = &v65;
      AXPerformSafeBlock();
      v58 = MEMORY[0x29EDC9748](v66[5]);
      _Block_object_dispose(&v65, 8);
      objc_storeStrong(&v71, 0);
      v72 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v58);
      if (v73)
      {
        abort();
      }

      v57 = MEMORY[0x29EDC9748](v72);
      objc_storeStrong(&v72, 0);
      obj = v57;
      v41 = [v57 countByEnumeratingWithState:__b objects:v80 count:16];
      if (v41)
      {
        v37 = *__b[2];
        v38 = 0;
        v39 = v41;
        while (1)
        {
          v36 = v38;
          if (*__b[2] != v37)
          {
            objc_enumerationMutation(obj);
          }

          __b[8] = *(__b[1] + 8 * v38);
          v55 = 0;
          objc_opt_class();
          v54 = __UIAccessibilityCastAsClass();
          if (v55)
          {
            abort();
          }

          v53 = MEMORY[0x29EDC9748](v54);
          objc_storeStrong(&v54, 0);
          v56 = v53;
          v35 = [v53 screen];
          v51 = 0;
          v34 = 0;
          if ([v35 safeBoolForKey:@"_isMainScreen"])
          {
            v52 = [v56 windows];
            v51 = 1;
            v34 = [v52 count] != 0;
          }

          if (v51)
          {
            MEMORY[0x29EDC9740](v52);
          }

          MEMORY[0x29EDC9740](v35);
          if (v34)
          {
            v33 = [v56 keyWindow];
            [v33 accessibilityFrame];
            r2.origin.x = v10;
            r2.origin.y = v11;
            r2.size.width = v12;
            r2.size.height = v13;
            MEMORY[0x29EDC9740](v33);
            v49 = CGRectUnion(v79, r2);
            v79 = v49;
          }

          objc_storeStrong(&v56, 0);
          ++v38;
          if (v36 + 1 >= v39)
          {
            v38 = 0;
            v39 = [obj countByEnumeratingWithState:__b objects:v80 count:16];
            if (!v39)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      if (CGRectIsEmpty(v79))
      {
        v47 = 0;
        v32 = [(UIApplicationAccessibility *)v78 safeValueForKey:@"_mainScene"];
        v31 = [v32 safeValueForKey:@"settings"];
        v46 = __UIAccessibilitySafeClass();
        MEMORY[0x29EDC9740](v31);
        MEMORY[0x29EDC9740](v32);
        v45 = MEMORY[0x29EDC9748](v46);
        objc_storeStrong(&v46, 0);
        v48 = v45;
        v29 = [v45 displayConfiguration];
        [v29 bounds];
        v30.origin.x = v14;
        v30.origin.y = v15;
        v30.size.width = v16;
        v30.size.height = v17;
        v79 = v30;
        MEMORY[0x29EDC9740](v29);
        objc_storeStrong(&v48, 0);
      }

      if (CGRectIsEmpty(v79))
      {
        v27 = [MEMORY[0x29EDC7C40] mainScreen];
        [v27 bounds];
        v28.origin.x = v18;
        v28.origin.y = v19;
        v28.size.width = v20;
        v28.size.height = v21;
        v79 = v28;
        MEMORY[0x29EDC9740](v27);
      }

      v26 = [MEMORY[0x29EDBA168] valueWithRect:{*&v79.origin, *&v79.size}];
      [*MEMORY[0x29EDC7300] setObject:? forKeyedSubscript:?];
      MEMORY[0x29EDC9740](v26);
      v75 = 1;
    }

    objc_storeStrong(&v76, 0);
    objc_storeStrong(v77, 0);
  }

  height = v79.size.height;
  width = v79.size.width;
  y = v79.origin.y;
  x = v79.origin.x;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

double __48__UIApplicationAccessibility_accessibilityFrame__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7DD8] _scenesIncludingInternal:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)v12 _accessibilityConnectedScenes];
  v7 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v9 _accessibilityLoadAccessibilityInformation];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
}

- (void)_accessibilityKeyboardDidHide:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA88]);
  UIAccessibilityPostNotification(0x407u, &unk_2A238E948);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityKeyboardDidShow:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] userInfo];
  v13 = [v14 objectForKey:*MEMORY[0x29EDC81A8]];
  [v13 CGRectValue];
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v5;
  v17.size.height = v6;
  v12 = [location[0] userInfo];
  v11 = [v12 objectForKey:*MEMORY[0x29EDC81B0]];
  [v11 CGRectValue];
  rect2.origin.x = v7;
  rect2.origin.y = v8;
  rect2.size.width = v9;
  rect2.size.height = v10;
  v15 = CGRectEqualToRect(v17, rect2);
  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](v12);
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](v14);
  if (!v15)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA80]);
    UIAccessibilityPostNotification(0x407u, &unk_2A238E970);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityStartStopToggle
{
  v26 = *MEMORY[0x29EDCA608];
  v22 = self;
  v21[1] = a2;
  if ([(UIApplicationAccessibility *)self _accessibilityOverrideStartStopExtraExtras])
  {
    v9 = [MEMORY[0x29EDBD6C0] sharedInstance];
    v10 = [v9 ignoreLogging];
    *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    if ((v10 & 1) == 0)
    {
      v8 = [MEMORY[0x29EDBD6C0] identifier];
      v21[0] = AXLoggerForFacility();
      MEMORY[0x29EDC9740](v8);
      v20 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21[0], v20))
      {
        v19 = AXColorizeFormatLog();
        v18 = _AXStringForArgs();
        location = MEMORY[0x29EDC9748](v21[0]);
        v16 = v20;
        if (os_log_type_enabled(location, v20))
        {
          __os_log_helper_16_2_1_8_66(v25, v18);
          _os_log_impl(&dword_29C4D6000, location, v16, "%{public}@", v25, 0xCu);
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(v21, 0);
    }

    return 1;
  }

  else if (([(UIApplicationAccessibility *)v22 _accessibilityStartStopDictation]& 1) != 0)
  {
    v6 = [MEMORY[0x29EDBD6C0] sharedInstance];
    v7 = [v6 ignoreLogging];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if ((v7 & 1) == 0)
    {
      v5 = [MEMORY[0x29EDBD6C0] identifier];
      v15 = AXLoggerForFacility();
      MEMORY[0x29EDC9740](v5);
      v14 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v14))
      {
        v13 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        oslog = MEMORY[0x29EDC9748](v15);
        if (os_log_type_enabled(oslog, v14))
        {
          __os_log_helper_16_2_1_8_66(v24, v12);
          _os_log_impl(&dword_29C4D6000, oslog, v14, "%{public}@", v24, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        objc_storeStrong(&v12, 0);
        objc_storeStrong(&v13, 0);
      }

      objc_storeStrong(&v15, 0);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_accessibilityStartStopDictation
{
  v100 = *MEMORY[0x29EDCA608];
  v91 = a1;
  if (a1)
  {
    v90 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeValueForKey:@"activeInstance"];
    if (([NSClassFromString(&cfstr_Uidictationcon.isa) safeBoolForKey:@"isListening"]& 1) != 0)
    {
      v42 = [MEMORY[0x29EDBD6C0] sharedInstance];
      v43 = [v42 ignoreLogging];
      *&v1 = MEMORY[0x29EDC9740](v42).n128_u64[0];
      if ((v43 & 1) == 0)
      {
        v41 = [MEMORY[0x29EDBD6C0] identifier];
        v89 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](v41);
        v88 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v89, v88))
        {
          v87 = AXColorizeFormatLog();
          v86 = _AXStringForArgs();
          location = MEMORY[0x29EDC9748](v89);
          v84 = v88;
          if (os_log_type_enabled(location, v88))
          {
            __os_log_helper_16_2_1_8_66(v99, v86);
            _os_log_impl(&dword_29C4D6000, location, v84, "%{public}@", v99, 0xCu);
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v86, 0);
          objc_storeStrong(&v87, 0);
        }

        objc_storeStrong(&v89, 0);
      }

      v83 = [NSClassFromString(&cfstr_Uikeyboarddict.isa) safeValueForKey:@"activeInstance"];
      if (v83)
      {
        v82 = [NSClassFromString(&cfstr_Uikbdictationa.isa) safeValueForKey:@"sharedInstance"];
        [v82 setUserInteractionEnabled:0];
        v2 = [v83 safeValueForKey:@"fade"];
        v39 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v40 = [v39 ignoreLogging];
        *&v3 = MEMORY[0x29EDC9740](v39).n128_u64[0];
        if ((v40 & 1) == 0)
        {
          v38 = [MEMORY[0x29EDBD6C0] identifier];
          v81 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](v38);
          v80 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v81, v80))
          {
            v79 = AXColorizeFormatLog();
            v78 = _AXStringForArgs();
            v77 = MEMORY[0x29EDC9748](v81);
            v76 = v80;
            if (os_log_type_enabled(v77, v80))
            {
              __os_log_helper_16_2_1_8_66(v98, v78);
              _os_log_impl(&dword_29C4D6000, v77, v76, "%{public}@", v98, 0xCu);
            }

            objc_storeStrong(&v77, 0);
            objc_storeStrong(&v78, 0);
            objc_storeStrong(&v79, 0);
          }

          objc_storeStrong(&v81, 0);
        }

        objc_storeStrong(&v82, 0);
      }

      else
      {
        v4 = [v90 safeValueForKey:@"stopDictation"];
        v36 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v37 = [v36 ignoreLogging];
        *&v5 = MEMORY[0x29EDC9740](v36).n128_u64[0];
        if ((v37 & 1) == 0)
        {
          v35 = [MEMORY[0x29EDBD6C0] identifier];
          v75 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](v35);
          v74 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v75, v74))
          {
            v73 = AXColorizeFormatLog();
            v72 = _AXStringForArgs();
            v71 = MEMORY[0x29EDC9748](v75);
            v70 = v74;
            if (os_log_type_enabled(v71, v74))
            {
              __os_log_helper_16_2_1_8_66(v97, v72);
              _os_log_impl(&dword_29C4D6000, v71, v70, "%{public}@", v97, 0xCu);
            }

            objc_storeStrong(&v71, 0);
            objc_storeStrong(&v72, 0);
            objc_storeStrong(&v73, 0);
          }

          objc_storeStrong(&v75, 0);
        }

        v34 = [v90 safeValueForKey:{@"keyboardInputModeToReturn", v5}];
        *&v6 = MEMORY[0x29EDC9740](v34).n128_u64[0];
        if (v34)
        {
          v31 = [MEMORY[0x29EDC7B08] activeInstance];
          v30 = [v31 safeValueForKey:@"textInteractionAssistant"];
          v29 = [v30 safeValueForKey:@"_selectionView"];
          v7 = [v29 safeValueForKey:@"selectionChanged"];
          MEMORY[0x29EDC9740](v29);
          MEMORY[0x29EDC9740](v30);
          v33 = [MEMORY[0x29EDC7B08] activeInstance];
          v32 = [v90 safeValueForKey:?];
          [v33 setKeyboardInputMode:? userInitiated:?];
          MEMORY[0x29EDC9740](v32);
          [v90 _accessibilitySetRetainedValue:0 forKey:{@"keyboardInputModeToReturn", MEMORY[0x29EDC9740](v33).n128_f64[0]}];
        }
      }

      v27 = v91;
      v28 = [MEMORY[0x29EDBA070] numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [v27 _accessibilitySetRetainedValue:? forKey:?];
      MEMORY[0x29EDC9740](v28);
      v92 = 1;
      v69 = 1;
      objc_storeStrong(&v83, 0);
    }

    else if ([_lastActiveDictationController accessibilityPerformMagicTap])
    {
      v25 = [MEMORY[0x29EDBD6C0] sharedInstance];
      v26 = [v25 ignoreLogging];
      *&v8 = MEMORY[0x29EDC9740](v25).n128_u64[0];
      if ((v26 & 1) == 0)
      {
        v24 = [MEMORY[0x29EDBD6C0] identifier];
        v68 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](v24);
        v67 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v68, v67))
        {
          v66 = AXColorizeFormatLog();
          v65 = _AXStringForArgs();
          v64 = MEMORY[0x29EDC9748](v68);
          v63 = v67;
          if (os_log_type_enabled(v64, v67))
          {
            __os_log_helper_16_2_1_8_66(v96, v65);
            _os_log_impl(&dword_29C4D6000, v64, v63, "%{public}@", v96, 0xCu);
          }

          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
          objc_storeStrong(&v66, 0);
        }

        objc_storeStrong(&v68, 0);
      }

      v92 = 1;
      v69 = 1;
    }

    else
    {
      if (([v91 _accessibilitySoftwareKeyboardActive] & 1) == 0)
      {
        goto LABEL_62;
      }

      v22 = [MEMORY[0x29EDBD6C0] sharedInstance];
      v23 = [v22 ignoreLogging];
      *&v9 = MEMORY[0x29EDC9740](v22).n128_u64[0];
      if ((v23 & 1) == 0)
      {
        v21 = [MEMORY[0x29EDBD6C0] identifier];
        v62 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](v21);
        v61 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v62, v61))
        {
          v60 = AXColorizeFormatLog();
          v59 = _AXStringForArgs();
          oslog = MEMORY[0x29EDC9748](v62);
          v57 = v61;
          if (os_log_type_enabled(oslog, v61))
          {
            __os_log_helper_16_2_1_8_66(v95, v59);
            _os_log_impl(&dword_29C4D6000, oslog, v57, "%{public}@", v95, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          objc_storeStrong(&v59, 0);
          objc_storeStrong(&v60, 0);
        }

        objc_storeStrong(&v62, 0);
      }

      v56 = UIAccessibilityFocusedElement(*MEMORY[0x29EDC7EE8]);
      if ([v56 accessibilityPerformMagicTap])
      {
        v19 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v20 = [v19 ignoreLogging];
        *&v10 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        if ((v20 & 1) == 0)
        {
          v18 = [MEMORY[0x29EDBD6C0] identifier];
          v55 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](v18);
          v54 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v55, v54))
          {
            v53 = AXColorizeFormatLog();
            v52 = _AXStringForArgs();
            v51 = MEMORY[0x29EDC9748](v55);
            v50 = v54;
            if (os_log_type_enabled(v51, v54))
            {
              __os_log_helper_16_2_1_8_66(v94, v52);
              _os_log_impl(&dword_29C4D6000, v51, v50, "%{public}@", v94, 0xCu);
            }

            objc_storeStrong(&v51, 0);
            objc_storeStrong(&v52, 0);
            objc_storeStrong(&v53, 0);
          }

          objc_storeStrong(&v55, 0);
        }

        v92 = 1;
        v69 = 1;
      }

      else
      {
        v49 = NSClassFromString(&cfstr_Uidictationcon.isa);
        if ([v49 safeBoolForKey:@"dictationIsFunctional"] & 1) != 0 && (objc_msgSend(v49, "safeBoolForKey:", @"fetchCurrentInputModeSupportsDictation"))
        {
          v15 = [NSClassFromString(&cfstr_Uikeyboardinpu.isa) safeValueForKey:@"sharedInputModeController"];
          v11 = [v15 safeValueForKey:@"switchToDictationInputMode"];
          v16 = [MEMORY[0x29EDBD6C0] sharedInstance];
          v17 = [v16 ignoreLogging];
          *&v12 = MEMORY[0x29EDC9740](v16).n128_u64[0];
          if ((v17 & 1) == 0)
          {
            v14 = [MEMORY[0x29EDBD6C0] identifier];
            v48 = AXLoggerForFacility();
            MEMORY[0x29EDC9740](v14);
            v47 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v48, v47))
            {
              v46 = AXColorizeFormatLog();
              v45 = _AXStringForArgs();
              v44 = MEMORY[0x29EDC9748](v48);
              if (os_log_type_enabled(v44, v47))
              {
                __os_log_helper_16_2_1_8_66(v93, v45);
                _os_log_impl(&dword_29C4D6000, v44, v47, "%{public}@", v93, 0xCu);
              }

              objc_storeStrong(&v44, 0);
              objc_storeStrong(&v45, 0);
              objc_storeStrong(&v46, 0);
            }

            objc_storeStrong(&v48, 0);
          }

          v92 = 1;
          v69 = 1;
        }

        else
        {
          v69 = 0;
        }

        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&v56, 0);
      if (!v69)
      {
LABEL_62:
        v92 = 0;
        v69 = 1;
      }
    }

    objc_storeStrong(&v90, 0);
  }

  else
  {
    v92 = 0;
  }

  return v92 & 1;
}

- (void)_accessibilityAVCaptureStarted:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIApplicationAccessibility *)v4 _accessibilitySetCameraIrisOpen:1];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityAVCaptureStopped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIApplicationAccessibility *)v4 _accessibilitySetCameraIrisOpen:0];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusDidUpdate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] userInfo];
  v29 = [v9 objectForKey:*MEMORY[0x29EDC80D8]];
  v28 = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusPreferredElement];
  v27 = [v29 safeValueForKeyPath:@"_request.focusSystem"];
  if (v27)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 838860800;
    v22 = 48;
    v23 = __Block_byref_object_copy__5;
    v24 = __Block_byref_object_dispose__5;
    v25 = 0;
    v13 = MEMORY[0x29EDCA5F8];
    v14 = -1073741824;
    v15 = 0;
    v16 = __59__UIApplicationAccessibility__accessibilityFocusDidUpdate___block_invoke;
    v17 = &unk_29F30CC70;
    v18[1] = &v19;
    v18[0] = MEMORY[0x29EDC9748](v27);
    AXPerformSafeBlock();
    v12 = MEMORY[0x29EDC9748](v20[5]);
    objc_storeStrong(v18, 0);
    _Block_object_dispose(&v19, 8);
    objc_storeStrong(&v25, 0);
    v26 = v12;
    v11 = [v12 safeValueForKey:@"_windowScene"];
    if ([v11 _accessibilityIsFKARunningForFocusItem])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7498], v28);
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v26, 0);
  }

  v8 = [v29 nextFocusedView];
  [v8 bounds];
  frame.origin.x = v3;
  frame.origin.y = v4;
  frame.size.width = v5;
  frame.size.height = v6;
  v7 = [v29 nextFocusedView];
  UIAccessibilityZoomFocusChanged(5, frame, v7);
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

double __59__UIApplicationAccessibility__accessibilityFocusDidUpdate___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7E30] sceneComponentForFocusSystem:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_loadAllAccessibilityInformation
{
  v2 = [MEMORY[0x29EDBA108] callStackSymbols];
  _AXAssert();
  v3 = [MEMORY[0x29EDC7348] sharedInstance];
  [v3 setNeedsLoadAccessibilityInformation];
  MEMORY[0x29EDC9740](v3);
}

- (void)_accessibilityInitialize
{
  v16 = self;
  v15 = a2;
  v14 = _AXSApplicationAccessibilityEnabled() != 0;
  v6 = 0;
  if ((_UIAccessibilityStartedWithInitialization() & 1) == 0)
  {
    v6 = 0;
    if ((_AXStatusEnabled & 1) == 0)
    {
      v6 = v14;
    }
  }

  v13 = v6;
  if ((_AXStatusEnabled & 1) == 0)
  {
    _AXStatusEnabled = v14;
  }

  _AXAddToElementCache();
  if (objc_opt_respondsToSelector())
  {
    [*MEMORY[0x29EDC8008] performSelector:sel_accessibilityInitialize];
  }

  v7[1] = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __54__UIApplicationAccessibility__accessibilityInitialize__block_invoke;
  v11 = &__block_descriptor_33_e5_v8__0l;
  v12 = v13;
  AXPerformBlockOnMainThreadAfterDelay();
  if ((_accessibilityInitialize_DidRegister & 1) == 0)
  {
    v7[0] = [MEMORY[0x29EDBA068] defaultCenter];
    [v7[0] addObserver:v16 selector:sel__accessibilityAVCaptureStarted_ name:@"AVCaptureSessionDidStartRunningNotification" object:?];
    [v7[0] addObserver:v16 selector:sel__accessibilityAVCaptureStopped_ name:@"AVCaptureSessionDidStopRunningNotification" object:0];
    [v7[0] addObserver:v16 selector:sel__accessibilityFocusDidUpdate_ name:*MEMORY[0x29EDC80D0] object:0];
    [v7[0] addObserver:v16 selector:sel__accessibilityKeyboardDidHide_ name:*MEMORY[0x29EDC8198] object:0];
    [v7[0] addObserver:v16 selector:sel__accessibilityKeyboardDidShow_ name:*MEMORY[0x29EDC81A0] object:0];
    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    v3 = *MEMORY[0x29EDC7120];
    v4 = [MEMORY[0x29EDBA088] mainQueue];
    v2 = [v5 addObserverForName:v3 object:0 queue:? usingBlock:?];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    _accessibilityInitialize_DidRegister = 1;
    objc_storeStrong(v7, 0);
  }
}

double __54__UIApplicationAccessibility__accessibilityInitialize__block_invoke(uint64_t a1)
{
  v5 = [*MEMORY[0x29EDC8008] delegate];
  v6 = objc_opt_respondsToSelector();
  *&result = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v3 = [*MEMORY[0x29EDC8008] delegate];
    [v3 performSelector:sel_accessibilityInitialize];
    *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  }

  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x29EDC7348] sharedInstance];
    [v2 setNeedsLoadAccessibilityInformation];
    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

void __54__UIApplicationAccessibility__accessibilityInitialize__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  ForceKeyboardRebuild = 1;
  objc_storeStrong(location, 0);
}

- (__GSKeyboard)GSKeyboardForHWLayout:(id)a3 senderID:(unint64_t)a4 forceRebuild:(BOOL)a5 createIfNeeded:(BOOL)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = a5;
  v17 = a6;
  if ((ForceKeyboardRebuild & 1) != 0 && v19 == 0x8000000817319373)
  {
    v18 = 1;
    ForceKeyboardRebuild = 0;
    v16 = AXLogCommon();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_29C4D6000, log, type, "Force rebuilding keyboard because TextInput changed observed and VO SenderID causes too much caching", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  v13.receiver = v21;
  v13.super_class = UIApplicationAccessibility;
  v7 = [(UIApplicationAccessibility *)&v13 GSKeyboardForHWLayout:location[0] senderID:v19 forceRebuild:v18 createIfNeeded:v17];
  objc_storeStrong(location, 0);
  return v7;
}

- (void)dealloc
{
  v4 = self;
  v3[1] = a2;
  v3[0] = [MEMORY[0x29EDBA068] defaultCenter];
  [v3[0] removeObserver:v4 name:*MEMORY[0x29EDC8198] object:?];
  [v3[0] removeObserver:v4 name:*MEMORY[0x29EDC81A0] object:0];
  [v3[0] removeObserver:v4 name:*MEMORY[0x29EDC80D0] object:0];
  [v3[0] removeObserver:v4 name:@"AVCaptureSessionDidStartRunningNotification" object:0];
  [v3[0] removeObserver:v4 name:@"AVCaptureSessionDidStopRunningNotification" object:0];
  [(UIApplicationAccessibility *)v4 _accessibilityUnregister];
  objc_storeStrong(v3, 0);
  v2.receiver = v4;
  v2.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v2 dealloc];
}

- (BOOL)_accessibilityResetAndClearNativeFocusSystem
{
  v30 = *MEMORY[0x29EDCA608];
  v27 = self;
  v26 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)v27 _accessibilityFocusableScenes];
  v10 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v7);
      oslog[1] = MEMORY[0x29EDCA5F8];
      v14 = -1073741824;
      v15 = 0;
      v16 = __74__UIApplicationAccessibility__accessibilityResetAndClearNativeFocusSystem__block_invoke;
      v17 = &unk_29F30D098;
      v18[0] = MEMORY[0x29EDC9748](v20);
      v18[1] = &v21;
      AXPerformSafeBlock();
      objc_storeStrong(v18, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  oslog[0] = AXLogFocusEngine();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v4 = NSStringFromBOOL();
    v11 = MEMORY[0x29EDC9748](v4);
    __os_log_helper_16_2_2_8_64_8_64(v28, v11, v27);
    _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "reset and clear focus system: %@, app: %@", v28, 0x16u);
    MEMORY[0x29EDC9740](v4);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(oslog, 0);
  v3 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return v3 & 1;
}

void __74__UIApplicationAccessibility__accessibilityResetAndClearNativeFocusSystem__block_invoke(void *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v5 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  v6[0] = v3;
  v1 = 1;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v1 = [(UIWindowSceneAccessibility *)v6[0] _accessibilityResetAndClearNativeFocusSystem];
  }

  *(*(a1[5] + 8) + 24) = v1;
  objc_storeStrong(v6, 0);
}

- (BOOL)_accessibilityUpdateNativeFocusImmediately
{
  v33 = *MEMORY[0x29EDCA608];
  v30 = self;
  v29 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x20000000;
  v27 = 32;
  v28 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)v30 _accessibilityFocusableScenes];
  v12 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v9);
      oslog[1] = MEMORY[0x29EDCA5F8];
      v17 = -1073741824;
      v18 = 0;
      v19 = __72__UIApplicationAccessibility__accessibilityUpdateNativeFocusImmediately__block_invoke;
      v20 = &unk_29F30D098;
      v21[0] = MEMORY[0x29EDC9748](v23);
      v21[1] = &v24;
      AXPerformSafeBlock();
      objc_storeStrong(v21, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  oslog[0] = AXLogFocusEngine();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromBOOL();
    v14 = MEMORY[0x29EDC9748](v5);
    v6 = v30;
    v4 = [(UIApplicationAccessibility *)v30 _accessibilityNativeFocusElement];
    v13 = MEMORY[0x29EDC9748](v4);
    __os_log_helper_16_2_3_8_64_8_64_8_64(v31, v14, v6, v13);
    _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "did update native focus system: %@, app: %@, newElement: %@", v31, 0x20u);
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(oslog, 0);
  v3 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v3 & 1;
}

void __72__UIApplicationAccessibility__accessibilityUpdateNativeFocusImmediately__block_invoke(void *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v5 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  v6[0] = v3;
  updated = 1;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    updated = [(UIWindowSceneAccessibility *)v6[0] _accessibilityUpdateNativeFocusImmediately];
  }

  *(*(a1[5] + 8) + 24) = updated & 1;
  objc_storeStrong(v6, 0);
}

- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = self;
  v10 = a2;
  v9 = a3;
  location = AXLogFocusEngine();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x29EDBA070] numberWithBool:v9];
    __os_log_helper_16_2_2_8_64_8_64(v12, v3, v11);
    _os_log_debug_impl(&dword_29C4D6000, location, v7, "Setting focus %@ in application %@", v12, 0x16u);
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(&location, 0);
  v6 = [(UIApplicationAccessibility *)v11 _accessibilityPreferredFocusedWindow];
  if ([v6 conformsToProtocol:&unk_2A2390418])
  {
    v4 = MEMORY[0x29EDC9748](v6);
    v5 = v9;
    AXPerformSafeBlock();
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&v6, 0);
}

double __73__UIApplicationAccessibility__accessibilitySetFocusEnabledInApplication___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:*(a1 + 32)];
  [v3 _setEnabled:*(a1 + 40) & 1];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_accessibilitySetTextInsertionGlowModeEnabled:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v4 = [MEMORY[0x29EDC7B08] activeInstance];
  v3 = [v4 inputDelegateManager];
  v7 = [v3 safeValueForKey:@"selectionDisplayInteraction"];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  if (v7)
  {
    v5 = MEMORY[0x29EDC9748](v7);
    v6 = v8;
    AXPerformSafeBlock();
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v7, 0);
}

uint64_t __76__UIApplicationAccessibility__accessibilitySetTextInsertionGlowModeEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 _setGlowViewMode:{v3, a1, a1}];
}

- (id)_axActiveEmojiSearchField
{
  location[1] = a1;
  if (a1)
  {
    v6 = [MEMORY[0x29EDC7B30] activeKeyboardSceneDelegate];
    v5 = [v6 safeValueForKey:@"_systemInputAssistantViewController"];
    v4 = [v5 safeValueForKey:@"emojiSearchViewController"];
    v3 = [v4 safeValueForKey:@"emojiSearchView"];
    location[0] = [v3 safeValueForKey:@"searchTextField"];
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    if (([location[0] safeBoolForKey:{@"isActive", MEMORY[0x29EDC9740](v6).n128_f64[0]}] & 1) == 0)
    {
      objc_storeStrong(location, 0);
    }

    v8 = MEMORY[0x29EDC9748](location[0]);
    objc_storeStrong(location, 0);
  }

  else
  {
    v8 = 0;
  }

  v1 = v8;

  return v1;
}

- (id)_accessibilityResponderElement:(BOOL)a3
{
  v100 = *MEMORY[0x29EDCA608];
  v95 = self;
  v94 = a2;
  v93 = a3;
  v92 = [(UIApplicationAccessibility *)self _axActiveEmojiSearchField];
  if (v92)
  {
    v96 = MEMORY[0x29EDC9748](v92);
    v91 = 1;
    goto LABEL_92;
  }

  v90 = [(UIApplicationAccessibility *)v95 _accessibilityMainWindow];
  v89 = [v90 safeValueForKey:@"firstResponder"];
  location = AXLogAppAccessibility();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v99, v89);
    _os_log_debug_impl(&dword_29C4D6000, location, type, "First responder: %@", v99, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (!v89 && ([v90 accessibilityViewIsModal] & 1) == 0)
  {
    v32 = [(UIApplicationAccessibility *)v95 safeValueForKey:@"keyWindow"];
    v3 = [v32 safeValueForKey:@"firstResponder"];
    v4 = v89;
    v89 = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v32);
  }

  if (!v93)
  {
    goto LABEL_18;
  }

  v31 = [v89 _accessibilityWindow];
  v30 = [v31 rootViewController];
  v86 = [v30 presentedViewController];
  MEMORY[0x29EDC9740](v30);
  MEMORY[0x29EDC9740](v31);
  objc_opt_class();
  v85 = __UIAccessibilityCastAsClass();
  if (!v85 && v86)
  {
    v5 = [v86 presentedViewController];
    v6 = v86;
    v86 = v5;
    MEMORY[0x29EDC9740](v6);
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v8 = v85;
    v85 = v7;
    MEMORY[0x29EDC9740](v8);
  }

  v29 = v89;
  v78 = MEMORY[0x29EDCA5F8];
  v79 = -1073741824;
  v80 = 0;
  v81 = __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke;
  v82 = &unk_29F30C818;
  v83 = MEMORY[0x29EDC9748](v85);
  v84 = [v29 _accessibilityFindAncestor:&v78 startWithSelf:1];
  if (!v85 || v84)
  {
    v91 = 0;
  }

  else
  {
    v96 = 0;
    v91 = 1;
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  if (!v91)
  {
LABEL_18:
    if (!v89 && (AXProcessIsInCallService() & 1) == 0)
    {
      v77 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
      [v77 setSorted:0];
      v76 = [(UIApplicationAccessibility *)v95 _accessibilityViewChildrenWithOptions:v77];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v76);
      v28 = [obj countByEnumeratingWithState:__b objects:v98 count:16];
      if (v28)
      {
        v24 = *__b[2];
        v25 = 0;
        v26 = v28;
        while (1)
        {
          v23 = v25;
          if (*__b[2] != v24)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(__b[1] + 8 * v25);
          if (([v75 _accessibilityServesAsFirstResponder] & 1) != 0 && *MEMORY[0x29EDC75F8] != v75 && (objc_msgSend(*MEMORY[0x29EDC75F8], "_accessibilityIsDescendantOfElement:", v75) & 1) == 0)
          {
            break;
          }

          ++v25;
          if (v23 + 1 >= v26)
          {
            v25 = 0;
            v26 = [obj countByEnumeratingWithState:__b objects:v98 count:16];
            if (!v26)
            {
              goto LABEL_29;
            }
          }
        }

        objc_storeStrong(&v89, v75);
        v91 = 2;
      }

      else
      {
LABEL_29:
        v91 = 0;
      }

      MEMORY[0x29EDC9740](obj);
      objc_storeStrong(&v76, 0);
      objc_storeStrong(&v77, 0);
    }

    v67 = 0;
    v68 = &v67;
    v69 = 838860800;
    v70 = 48;
    v71 = __Block_byref_object_copy__5;
    v72 = __Block_byref_object_dispose__5;
    v73 = 0;
    v66 = [v89 _accessibilityResponderElement];
    if (v66)
    {
      TypeID = AXUIElementGetTypeID();
      if (TypeID == CFGetTypeID(v66))
      {
        v96 = MEMORY[0x29EDC9748](v66);
        v91 = 1;
LABEL_90:
        objc_storeStrong(&v66, 0);
        _Block_object_dispose(&v67, 8);
        objc_storeStrong(&v73, 0);
        goto LABEL_91;
      }

      objc_opt_class();
      LOBYTE(v21) = 0;
      if (objc_opt_isKindOfClass())
      {
        v21 = [v66 _accessibilityViewIsVisible] ^ 1;
      }

      v65 = v21 & 1;
      v20 = 1;
      if ((v21 & 1) == 0)
      {
        v20 = [v66 accessibilityElementsHidden];
      }

      v65 = v20 & 1;
      v64 = AXRemoteElementFromObject();
      if ((([v66 isAccessibilityElement] & 1) != 0 || v64) && (v65 & 1) == 0)
      {
        objc_storeStrong(v68 + 5, v66);
        v96 = [(UIApplicationAccessibility *)v95 _accessibilityValidatedResponderForExistingGoodResponder:v93 forFocus:?];
        v91 = 1;
      }

      else
      {
        v91 = 0;
      }

      objc_storeStrong(&v64, 0);
      if (v91)
      {
        goto LABEL_90;
      }
    }

    while (1)
    {
      LOBYTE(v19) = 0;
      if (v89)
      {
        objc_opt_class();
        v19 = objc_opt_isKindOfClass() ^ 1;
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      v9 = [v89 nextResponder];
      v10 = v89;
      v89 = v9;
      MEMORY[0x29EDC9740](v10);
    }

    if (v89)
    {
      v63 = MEMORY[0x29EDC9748](v89);
      v62 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v62, v89);
      }

      while (v62)
      {
        if ([v62 _accessibilityIsFrameOutOfBounds] & 1) == 0 && (objc_msgSend(v62, "_accessibilityViewIsVisible"))
        {
          if ([v62 isAccessibilityElement] & 1) != 0 || (objc_msgSend(v62, "_accessibilityCanBeFirstResponderWhenNotAnElement"))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = [v62 safeValueForKey:@"_accessibilityMockParent"];
              if (v61 && ([v61 isAccessibilityElement] & 1) != 0)
              {
                objc_storeStrong(v68 + 5, v61);
                v91 = 7;
              }

              else
              {
                v91 = 0;
              }

              objc_storeStrong(&v61, 0);
              if (v91)
              {
                break;
              }
            }

            objc_storeStrong(v68 + 5, v62);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            v60 = 0;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = [v62 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
              if (!v59 || ([v59 _accessibilityHasOrderedChildren] & 1) == 0 || ((v60 = 1, v54 = 0, v55 = &v54, v56 = 0x20000000, v57 = 32, v58 = 0, v18 = v59, v48 = MEMORY[0x29EDCA5F8], v49 = -1073741824, v50 = 0, v51 = __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke_2, v52 = &unk_29F30D0C0, v53[0] = MEMORY[0x29EDC9748](v62), v53[1] = &v67, v53[2] = &v54, objc_msgSend(v18, "accessibilityEnumerateContainerElementsUsingBlock:", &v48), (v55[3] & 1) != 0) ? (v91 = 0) : (AXPerformBlockOnMainThreadAfterDelay(), objc_storeStrong(v68 + 5, 0), v91 = 7), objc_storeStrong(v53, 0), _Block_object_dispose(&v54, 8), !v91))
              {
                v91 = 0;
              }

              objc_storeStrong(&v59, 0);
              if (v91)
              {
                break;
              }
            }

            v47 = [v62 accessibilityElementCount];
            if (v47 > 0 && v47 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v46 = MEMORY[0x29EDC9748](v62);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) == 0 || (v60)
              {
                v41 = 0;
                v42 = &v41;
                v43 = 0x20000000;
                v44 = 32;
                v45 = 0;
                v17 = v68[5];
                v35 = MEMORY[0x29EDCA5F8];
                v36 = -1073741824;
                v37 = 0;
                v38 = __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke_4;
                v39 = &unk_29F30D0E8;
                v40[3] = v47;
                v40[0] = MEMORY[0x29EDC9748](v63);
                v40[1] = &v67;
                v40[2] = &v41;
                [v17 accessibilityEnumerateContainerElementsUsingBlock:&v35];
                v91 = (v42[3] & 1) != 0 ? 7 : 0;
                objc_storeStrong(v40, 0);
                _Block_object_dispose(&v41, 8);
              }

              else
              {
                v11 = [v46 accessibilityElementAtIndex:0];
                v12 = v68[5];
                v68[5] = v11;
                MEMORY[0x29EDC9740](v12);
                v91 = 7;
              }

              objc_storeStrong(&v46, 0);
              if (v91)
              {
                break;
              }
            }
          }
        }

        v13 = [v62 superview];
        v14 = v62;
        v62 = v13;
        MEMORY[0x29EDC9740](v14);
      }

      if ([v68[5] _accessibilityIsWebDocumentView])
      {
        objc_storeStrong(v68 + 5, 0);
      }

      v34 = [(UIApplicationAccessibility *)v95 _accessibilityValidatedResponderForExistingGoodResponder:v93 forFocus:?];
      oslog = AXLogCommon();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_3_1_8_69(v97, v34);
        _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Validated first responder: %{sensitive}@", v97, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v96 = MEMORY[0x29EDC9748](v34);
      v91 = 1;
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
    }

    else
    {
      v96 = 0;
      v91 = 1;
    }

    goto LABEL_90;
  }

LABEL_91:
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
LABEL_92:
  objc_storeStrong(&v92, 0);
  v15 = v96;

  return v15;
}

BOOL __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = location[0];
  v2 = [a1[4] view];
  v6 = v5 == v2;
  MEMORY[0x29EDC9740](v2);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)_accessibilityValidatedResponderForExistingGoodResponder:(char)a3 forFocus:
{
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v9)
  {
    if (a3)
    {
      v3 = [(UIApplicationAccessibility *)v9 _accessibilityValidateResponderForFocus:?];
      v4 = location;
      location = v3;
      MEMORY[0x29EDC9740](v4);
    }

    v10 = MEMORY[0x29EDC9748](location);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&location, 0);
  v5 = v10;

  return v5;
}

void __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = a3;
  v10 = a4;
  v9[1] = a1;
  v9[0] = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] realTableViewCell];
    v5 = v9[0];
    v9[0] = v4;
    MEMORY[0x29EDC9740](v5);
  }

  if ([v9[0] isEqual:a1[4]])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
    *(*(a1[6] + 8) + 24) = 1;
    *v10 = 1;
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

void __61__UIApplicationAccessibility__accessibilityResponderElement___block_invoke_4(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a3 < a1[7])
  {
    v9 = 0;
    v5 = 1;
    if (location[0] != a1[4])
    {
      objc_opt_class();
      v4 = 0;
      if (objc_opt_isKindOfClass())
      {
        v10 = [(UIAccessibilityElementMockView *)location[0] view];
        v9 = 1;
        v4 = v10 == a1[4];
      }

      v5 = v4;
    }

    if (v9)
    {
      MEMORY[0x29EDC9740](v10);
    }

    if (v5)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityValidateResponderForFocus:(void *)a1
{
  v108 = *MEMORY[0x29EDCA608];
  v102 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v102)
  {
    v99 = 0;
    v98 = 0;
    v97 = NSClassFromString(&cfstr_Uipopoverview.isa);
    v96 = NSClassFromString(&cfstr_Uitransitionvi.isa);
    v95 = NSClassFromString(&cfstr_Uidimmingview.isa);
    v94[1] = NSClassFromString(&cfstr_Uiformsheetpre.isa);
    v94[0] = [v102 _accessibilityWindows];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v94[0]);
    v47 = [obj countByEnumeratingWithState:__b objects:v107 count:16];
    if (v47)
    {
      v43 = *__b[2];
      v44 = 0;
      v45 = v47;
      while (1)
      {
        v42 = v44;
        if (*__b[2] != v43)
        {
          objc_enumerationMutation(obj);
        }

        v93 = *(__b[1] + 8 * v44);
        memset(v90, 0, sizeof(v90));
        v39 = [v93 subviews];
        v40 = [v39 reverseObjectEnumerator];
        v41 = [v40 countByEnumeratingWithState:v90 objects:v106 count:{16, MEMORY[0x29EDC9740](v39).n128_f64[0]}];
        if (v41)
        {
          v36 = *v90[2];
          v37 = 0;
          v38 = v41;
          while (1)
          {
            v35 = v37;
            if (*v90[2] != v36)
            {
              objc_enumerationMutation(v40);
            }

            v91 = *(v90[1] + 8 * v37);
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v99, v91);
            }

            if (objc_opt_isKindOfClass())
            {
              v84 = MEMORY[0x29EDCA5F8];
              v85 = -1073741824;
              v86 = 0;
              v87 = __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke;
              v88 = &__block_descriptor_40_e8_B16__0_8lu32l8;
              v89 = v95;
              v2 = [v91 _accessibilityFindSubviewDescendant:?];
              v3 = v98;
              v98 = v2;
              *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
              v78 = MEMORY[0x29EDCA5F8];
              v79 = -1073741824;
              v80 = 0;
              v81 = __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke_2;
              v82 = &__block_descriptor_40_e8_B16__0_8lu32l8;
              v83 = v97;
              v5 = [v91 _accessibilityFindSubviewDescendant:v4];
              v6 = v99;
              v99 = v5;
              *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
              v76 = 0;
              isKindOfClass = 1;
              if (!v99)
              {
                v77 = [v98 safeValueForKey:{@"delegate", v7}];
                v76 = 1;
                isKindOfClass = objc_opt_isKindOfClass();
              }

              if (v76)
              {
                MEMORY[0x29EDC9740](v77);
              }

              if (isKindOfClass)
              {
                v100 = 4;
                goto LABEL_26;
              }
            }

            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v98, v91);
              v70 = MEMORY[0x29EDCA5F8];
              v71 = -1073741824;
              v72 = 0;
              v73 = __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke_3;
              v74 = &__block_descriptor_40_e8_B16__0_8lu32l8;
              v75 = v97;
              v8 = [v98 _accessibilityFindSubviewDescendant:?];
              v9 = v99;
              v99 = v8;
              MEMORY[0x29EDC9740](v9);
              if (v99)
              {
                break;
              }
            }

            ++v37;
            if (v35 + 1 >= v38)
            {
              v37 = 0;
              v38 = [v40 countByEnumeratingWithState:v90 objects:v106 count:16];
              if (!v38)
              {
                goto LABEL_25;
              }
            }
          }

          v100 = 4;
        }

        else
        {
LABEL_25:
          v100 = 0;
        }

LABEL_26:
        *&v10 = MEMORY[0x29EDC9740](v40).n128_u64[0];
        ++v44;
        if (v42 + 1 >= v45)
        {
          v44 = 0;
          v45 = [obj countByEnumeratingWithState:__b objects:v107 count:{16, v10}];
          if (!v45)
          {
            break;
          }
        }
      }
    }

    v11 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    LOBYTE(v33) = 0;
    if (v99)
    {
      LOBYTE(v33) = 0;
      if (([v99 isHidden] & 1) == 0)
      {
        v33 = [location _accessibilityIsDescendantOfElement:v99] ^ 1;
      }
    }

    v69 = v33 & 1;
    v66 = 0;
    v64 = 0;
    v62 = 0;
    LOBYTE(v32) = 0;
    if (v98)
    {
      LOBYTE(v32) = 0;
      if (([v98 isHidden] & 1) == 0)
      {
        v67 = [v98 safeValueForKey:@"delegate"];
        v66 = 1;
        LOBYTE(v32) = 0;
        if (objc_opt_isKindOfClass())
        {
          v31 = location;
          v65 = [v98 safeValueForKey:@"delegate"];
          v64 = 1;
          v63 = [v65 safeValueForKey:@"dropShadowView"];
          v62 = 1;
          v32 = [v31 _accessibilityIsDescendantOfElement:?] ^ 1;
        }
      }
    }

    if (v62)
    {
      v11 = MEMORY[0x29EDC9740](v63).n128_u64[0];
    }

    if (v64)
    {
      v11 = MEMORY[0x29EDC9740](v65).n128_u64[0];
    }

    if (v66)
    {
      v11 = MEMORY[0x29EDC9740](v67).n128_u64[0];
    }

    v68 = v32 & 1;
    v60 = 0;
    if (v69 & 1) != 0 || (LOBYTE(v30) = 0, (v68))
    {
      v61 = [location _accessibilityWindow];
      v60 = 1;
      objc_opt_class();
      v30 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v60)
    {
      v11 = MEMORY[0x29EDC9740](v61).n128_u64[0];
    }

    if (v30)
    {
      v59 = [v98 _accessibilityObscuredScreenAllowedViews];
      v58 = 0;
      v12 = [*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive];
      v55 = 0;
      if (v12)
      {
        v56 = [MEMORY[0x29EDC7AF8] activeKeyboard];
        v55 = 1;
        v13 = MEMORY[0x29EDC9748](v56);
      }

      else
      {
        v13 = MEMORY[0x29EDC9748](0);
      }

      v57 = v13;
      if (v55)
      {
        MEMORY[0x29EDC9740](v56);
      }

      memset(v53, 0, sizeof(v53));
      v28 = MEMORY[0x29EDC9748](v59);
      v29 = [v28 countByEnumeratingWithState:v53 objects:v105 count:16];
      if (v29)
      {
        v25 = *v53[2];
        v26 = 0;
        v27 = v29;
        while (1)
        {
          v24 = v26;
          if (*v53[2] != v25)
          {
            objc_enumerationMutation(v28);
          }

          v54 = *(v53[1] + 8 * v26);
          if (([location _accessibilityIsDescendantOfElement:v54] & 1) != 0 || v54 == v57)
          {
            break;
          }

          ++v26;
          if (v24 + 1 >= v27)
          {
            v26 = 0;
            v27 = [v28 countByEnumeratingWithState:v53 objects:v105 count:16];
            if (!v27)
            {
              goto LABEL_61;
            }
          }
        }

        v58 = 1;
        v100 = 6;
      }

      else
      {
LABEL_61:
        v100 = 0;
      }

      MEMORY[0x29EDC9740](v28);
      if ((v58 & 1) == 0)
      {
        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(&v57, 0);
      objc_storeStrong(&v59, 0);
    }

    v52 = [location accessibilityContainer];
    v51 = MEMORY[0x29EDC9748](location);
    while (v52)
    {
      if (objc_opt_respondsToSelector())
      {
        v50 = [v52 subviews];
        if ([v50 count] > 1)
        {
          memset(v48, 0, sizeof(v48));
          v22 = MEMORY[0x29EDC9748](v50);
          v23 = [v22 countByEnumeratingWithState:v48 objects:v104 count:16];
          if (v23)
          {
            v19 = *v48[2];
            v20 = 0;
            v21 = v23;
            while (1)
            {
              v18 = v20;
              if (*v48[2] != v19)
              {
                objc_enumerationMutation(v22);
              }

              v49 = *(v48[1] + 8 * v20);
              if (v49 != v51 && ([v49 accessibilityViewIsModal] & 1) != 0)
              {
                break;
              }

              ++v20;
              if (v18 + 1 >= v21)
              {
                v20 = 0;
                v21 = [v22 countByEnumeratingWithState:v48 objects:v104 count:16];
                if (!v21)
                {
                  goto LABEL_78;
                }
              }
            }

            objc_storeStrong(&location, 0);
            v100 = 10;
          }

          else
          {
LABEL_78:
            v100 = 0;
          }

          MEMORY[0x29EDC9740](v22);
        }

        objc_storeStrong(&v50, 0);
      }

      objc_storeStrong(&v51, v52);
      v14 = [v52 accessibilityContainer];
      v15 = v52;
      v52 = v14;
      MEMORY[0x29EDC9740](v15);
    }

    v103 = MEMORY[0x29EDC9748](location);
    v100 = 1;
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(v94, 0);
    objc_storeStrong(&v98, 0);
    objc_storeStrong(&v99, 0);
  }

  else
  {
    v103 = 0;
    v100 = 1;
  }

  objc_storeStrong(&location, 0);
  v16 = v103;

  return v16;
}

uint64_t __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __70__UIApplicationAccessibility__accessibilityValidateResponderForFocus___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_accessibilityMainWindow
{
  v4 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v5 = [(UIApplicationAccessibility *)self _accessibilityMainWindowInWindows:?];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (BOOL)_accessibilityKeyboardIsEmojiInputMode
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v3 = [v5[0] currentInputMode];
  v4 = [v3 isEmojiInputMode];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v5, 0);
  return v4;
}

- (id)_accessibilityMainWindowInWindows:(id)a3
{
  v58 = *MEMORY[0x29EDCA608];
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!_accessibilityMainWindowInWindows__AlertWindows)
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDB8E20]) init];
    v4 = _accessibilityMainWindowInWindows__AlertWindows;
    _accessibilityMainWindowInWindows__AlertWindows = v3;
    v52 = [MEMORY[0x29EDB8E50] setWithObjects:{@"SBTransientOverlayWindow", MEMORY[0x29EDC9740](v4).n128_f64[0], @"SBBannerWindow", @"SBAlertItemWindow", 0}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v52);
    v36 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
    if (v36)
    {
      v32 = *__b[2];
      v33 = 0;
      v34 = v36;
      while (1)
      {
        v31 = v33;
        if (*__b[2] != v32)
        {
          objc_enumerationMutation(obj);
        }

        aClassName = *(__b[1] + 8 * v33);
        v49 = NSClassFromString(aClassName);
        [_accessibilityMainWindowInWindows__AlertWindows axSafelyAddObject:v49];
        ++v33;
        if (v31 + 1 >= v34)
        {
          v33 = 0;
          v34 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
          if (!v34)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&v52, 0);
  }

  v48 = 0;
  v47 = 0;
  memset(v45, 0, sizeof(v45));
  v29 = [location[0] reverseObjectEnumerator];
  v30 = [v29 countByEnumeratingWithState:v45 objects:v56 count:16];
  if (v30)
  {
    v26 = *v45[2];
    v27 = 0;
    v28 = v30;
    while (1)
    {
      v25 = v27;
      if (*v45[2] != v26)
      {
        objc_enumerationMutation(v29);
      }

      v46 = *(v45[1] + 8 * v27);
      if (!-[UIViewAccessibility _accessibilityViewIsActive](v46) && (([v46 isHidden] & 1) != 0 || (objc_msgSend(v46, "isOpaque") & 1) != 0 || (objc_msgSend(_accessibilityMainWindowInWindows__AlertWindows, "containsObject:", objc_opt_class()) & 1) == 0))
      {
        goto LABEL_37;
      }

      v44 = [v46 windowScene];
      if (v44 && [v44 activationState] == 1)
      {
        v43 = 5;
      }

      else
      {
        v23 = [v46 screen];
        v22 = [MEMORY[0x29EDC7C40] mainScreen];
        v24 = [v23 isEqual:?];
        MEMORY[0x29EDC9740](v22);
        *&v5 = MEMORY[0x29EDC9740](v23).n128_u64[0];
        if (v24)
        {
          if ([v46 accessibilityElementsHidden])
          {
            v43 = 5;
          }

          else if ([v46 _accessibilityIsMainWindow])
          {
            v55 = MEMORY[0x29EDC9748](v46);
            v43 = 1;
          }

          else
          {
            if (([_accessibilityMainWindowInWindows__AlertWindows containsObject:objc_opt_class()] & 1) == 0)
            {
              if (([v46 _accessibilityCanBeConsideredAsMainWindow] & 1) == 0)
              {
                v43 = 5;
                goto LABEL_35;
              }

              if (!v47)
              {
                objc_storeStrong(&v47, v46);
              }

              if (([v46 accessibilityViewIsModal] & 1) == 0)
              {
                v43 = 0;
                goto LABEL_35;
              }
            }

            objc_storeStrong(&v48, v46);
            v43 = 4;
          }
        }

        else
        {
          v43 = 5;
        }
      }

LABEL_35:
      objc_storeStrong(&v44, 0);
      if (v43 && v43 != 5)
      {
        goto LABEL_40;
      }

LABEL_37:
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [v29 countByEnumeratingWithState:v45 objects:v56 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  v43 = 0;
LABEL_40:
  *&v6 = MEMORY[0x29EDC9740](v29).n128_u64[0];
  if (!v43 || v43 == 4)
  {
    if (!v48)
    {
      v42 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
      if ([location[0] containsObject:v42])
      {
        v21 = v42;
      }

      else
      {
        v21 = v48;
      }

      objc_storeStrong(&v48, v21);
      objc_storeStrong(&v42, 0);
    }

    if (v47)
    {
      if (([v47 accessibilityElementsHidden] & 1) == 0)
      {
        [v47 windowLevel];
        v20 = v7;
        [v48 windowLevel];
        if (v20 > v8 || ([v48 alpha], v9 == 0.0) || (objc_msgSend(v48, "_accessibilityCanBeConsideredAsMainWindow") & 1) == 0)
        {
          objc_storeStrong(&v48, v47);
        }
      }
    }

    if (!v48)
    {
      AXDeviceGetMainScreenPixelBounds();
      v39 = v10;
      v40 = v11;
      *&v41 = v12;
      *(&v41 + 1) = v13;
      v38 = v41;
      v19 = v54;
      CGPointMake_2();
      v37 = [(UIApplicationAccessibility *)v19 _accessibilityUIWindowFindWithGlobalPoint:v14, v15];
      if ([location[0] containsObject:v37])
      {
        v18 = v37;
      }

      else
      {
        v18 = v48;
      }

      objc_storeStrong(&v48, v18);
      objc_storeStrong(&v37, 0);
    }

    if (!v48 || ([v48 accessibilityElementsHidden] & 1) != 0)
    {
      objc_storeStrong(&v48, v47);
    }

    v55 = MEMORY[0x29EDC9748](v48);
    v43 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  v16 = v55;

  return v16;
}

- (id)_accessibilityUIWindowFindWithGlobalPoint:(double)a3
{
  v44 = *MEMORY[0x29EDCA608];
  v40 = a2;
  v41 = a3;
  v39[1] = a1;
  if (a1)
  {
    context = objc_autoreleasePoolPush();
    if (!_accessibilityUIWindowFindWithGlobalPoint__UIWindowClass)
    {
      _accessibilityUIWindowFindWithGlobalPoint__UIWindowClass = objc_opt_class();
      _accessibilityUIWindowFindWithGlobalPoint__FBRootWindowClass = NSClassFromString(&cfstr_Fbrootwindow.isa);
    }

    v39[0] = [MEMORY[0x29EDBBA80] allContexts];
    v38 = -3.4028e38;
    location = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v39[0]);
    v25 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
    if (v25)
    {
      v21 = *__b[2];
      v22 = 0;
      v23 = v25;
      while (1)
      {
        v20 = v22;
        if (*__b[2] != v21)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(__b[1] + 8 * v22);
        v34 = [v36 layer];
        memset(&rect, 0, sizeof(rect));
        [v34 bounds];
        rect.origin.x = v3;
        rect.origin.y = v4;
        rect.size.width = v5;
        rect.size.height = v6;
        v31 = 0;
        v19 = 0;
        if (v34)
        {
          v19 = 0;
          if (([v34 isHidden] & 1) == 0)
          {
            [v34 opacity];
            v19 = 0;
            if (v7 > 0.05)
            {
              v32 = [v34 delegate];
              v31 = 1;
              v19 = 0;
              if (objc_opt_isKindOfClass())
              {
                [v34 convertPoint:0 fromLayer:{v40, v41}];
                point.x = v8;
                point.y = v9;
                v19 = 0;
                if (CGRectContainsPoint(rect, point))
                {
                  v18 = 0;
                  if (rect.size.width > 1.0)
                  {
                    v18 = rect.size.height > 1.0;
                  }

                  v19 = v18;
                }
              }
            }
          }
        }

        if (v31)
        {
          MEMORY[0x29EDC9740](v32);
        }

        if (v19)
        {
          v29 = [v34 delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v36 level];
            v27 = 0;
            LOBYTE(v17) = 0;
            if (v10 > v38)
            {
              LOBYTE(v17) = 0;
              if ([v29 isUserInteractionEnabled])
              {
                [v29 bounds];
                LOBYTE(v17) = 0;
                if (v11 > 1.0)
                {
                  [v29 bounds];
                  LOBYTE(v17) = 0;
                  if (v12 > 1.0)
                  {
                    v28 = [v29 hitTest:0 withEvent:{v40, v41}];
                    v27 = 1;
                    LOBYTE(v17) = 0;
                    if (v28)
                    {
                      v17 = objc_opt_isKindOfClass() ^ 1;
                    }
                  }
                }
              }
            }

            if (v27)
            {
              MEMORY[0x29EDC9740](v28);
            }

            if (v17)
            {
              objc_storeStrong(&location, v29);
              [v36 level];
              v38 = v13;
            }
          }

          else
          {
            v16 = v29;
            _AXAssert();
          }

          objc_storeStrong(&v29, 0);
        }

        objc_storeStrong(&v34, 0);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v42 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v39, 0);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    v42 = 0;
  }

  v14 = v42;

  return v14;
}

- (id)_accessibilityElementsForSearchParameter:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [location[0] objectForKey:@"searchText"];
  v5 = [location[0] objectForKey:@"resultLimit"];
  v6 = [v5 integerValue];
  MEMORY[0x29EDC9740](v5);
  v23 = v6;
  if (!v6)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = MEMORY[0x29EDCA5F8];
  v17 = -1073741824;
  v18 = 0;
  v19 = __71__UIApplicationAccessibility__accessibilityElementsForSearchParameter___block_invoke;
  v20 = &unk_29F30D130;
  v21 = MEMORY[0x29EDC9748](v24);
  v22 = MEMORY[0x29ED3E4C0](&v16);
  v15 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __71__UIApplicationAccessibility__accessibilityElementsForSearchParameter___block_invoke_2;
  v12 = &unk_29F30D158;
  v14 = MEMORY[0x29EDC9748](v22);
  v13 = MEMORY[0x29EDC9748](v24);
  [v15 setLeafNodePredicate:&v8];
  v7 = [(UIApplicationAccessibility *)v26 _accessibilityLeafDescendantsWithCount:v23 + 1 options:v15];
  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v4;
}

BOOL __71__UIApplicationAccessibility__accessibilityElementsForSearchParameter___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  v6[0] = [location[0] _accessibilityAXAttributedLabel];
  if ([v6[0] length])
  {
    v9 = [v6[0] rangeOfString:a1[4] options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v9;
}

uint64_t __71__UIApplicationAccessibility__accessibilityElementsForSearchParameter___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  if ([location[0] isAccessibilityElement])
  {
    v4 = (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityWindowsIgnoringWindowsWithHiddenElements:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  AXPerformSafeBlock();
  if (v14)
  {
    v3 = [v8[5] ax_filteredArrayUsingBlock:&__block_literal_global_852];
    v4 = v8[5];
    v8[5] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = MEMORY[0x29EDC9748](v8[5]);
  _Block_object_dispose(&v7, 8);
  objc_storeStrong(&v13, 0);

  return v6;
}

double __85__UIApplicationAccessibility__accessibilityWindowsIgnoringWindowsWithHiddenElements___block_invoke(uint64_t a1)
{
  v1 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

uint64_t __85__UIApplicationAccessibility__accessibilityWindowsIgnoringWindowsWithHiddenElements___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] accessibilityElementsHidden] ^ 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilityFindContainerAccessibleElement:(char)a3 first:(char)a4 focus:(char)a5 allowScrolling:
{
  v49 = *MEMORY[0x29EDCA608];
  v46 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v44 = a3;
  v43 = a4;
  v42 = a5;
  if (v46)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 838860800;
    v37 = 48;
    v38 = __Block_byref_object_copy__5;
    v39 = __Block_byref_object_dispose__5;
    v40 = 0;
    if ([location isAccessibilityOpaqueElementProvider] & 1) != 0 && (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilityWantsOpaqueElementProviders"))
    {
      if ((v42 & 1) == 0)
      {
        [location _accessibilitySetShouldPreventOpaqueScrolling:1];
      }

      v32 = 0;
      v30 = 0;
      v28 = 0;
      if (v43)
      {
        v33 = [location _accessibilityFirstOpaqueElementForFocus];
        v32 = 1;
        objc_storeStrong(v35 + 5, v33);
      }

      else
      {
        if (v44)
        {
          v31 = [location _accessibilityFirstOpaqueElement];
          v30 = 1;
          v12 = v31;
        }

        else
        {
          v29 = [location _accessibilityLastOpaqueElement];
          v28 = 1;
          v12 = v29;
        }

        objc_storeStrong(v35 + 5, v12);
      }

      if (v28)
      {
        MEMORY[0x29EDC9740](v29);
      }

      if (v30)
      {
        MEMORY[0x29EDC9740](v31);
      }

      if (v32)
      {
        MEMORY[0x29EDC9740](v33);
      }

      [location _accessibilitySetShouldPreventOpaqueScrolling:0];
      v27 = AXLogFirstElement();
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v35[5] isAccessibilityElement];
        v10 = [v35[5] _accessibilityHasOrderedChildren];
        __os_log_helper_16_3_3_4_0_4_0_8_65(v48, v11, v10, v35[5]);
        _os_log_debug_impl(&dword_29C4D6000, v27, v26, "Opaque element (is element %i is container %i): %{private}@", v48, 0x18u);
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      v9 = location;
      v5 = 0;
      if ((v44 & 1) == 0)
      {
        v5 = 2;
      }

      v8 = v5;
      v16 = MEMORY[0x29EDCA5F8];
      v17 = -1073741824;
      v18 = 0;
      v19 = __102__UIApplicationAccessibility__accessibilityFindContainerAccessibleElement_first_focus_allowScrolling___block_invoke;
      v20 = &unk_29F30D1A0;
      v22[1] = &v34;
      v21 = MEMORY[0x29EDC9748](location);
      v22[0] = MEMORY[0x29EDC9748](v46);
      v23 = v44 & 1;
      v24 = v43 & 1;
      v25 = v42 & 1;
      [v9 accessibilityEnumerateContainerElementsWithOptions:v8 usingBlock:&v16];
      objc_storeStrong(v22, 0);
      objc_storeStrong(&v21, 0);
    }

    v47 = MEMORY[0x29EDC9748](v35[5]);
    v41 = 1;
    _Block_object_dispose(&v34, 8);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v47 = 0;
    v41 = 1;
  }

  objc_storeStrong(&location, 0);
  v6 = v47;

  return v6;
}

void __102__UIApplicationAccessibility__accessibilityFindContainerAccessibleElement_first_focus_allowScrolling___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = a3;
  v35 = a4;
  v34[1] = a1;
  v34[0] = AXRemoteElementFromObject();
  if ([location[0] isAccessibilityElement] & 1) == 0 || (v4 = objc_msgSend(location[0], "accessibilityTraits"), (v4 & *MEMORY[0x29EDC7578]) != 0) || (objc_msgSend(location[0], "_accessibilityIsNotFirstElement"))
  {
    if (location[0] == *(a1 + 32))
    {
      _AXAssert();
      *v35 = 1;
    }

    else if (([location[0] isAccessibilityOpaqueElementProvider] & 1) != 0 && (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilityWantsOpaqueElementProviders") & 1) != 0 || objc_msgSend(location[0], "accessibilityElementCount") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(UIApplicationAccessibility *)*(a1 + 40) _accessibilityFindContainerAccessibleElement:*(a1 + 56) & 1 first:*(a1 + 57) & 1 focus:*(a1 + 58) & 1 allowScrolling:?];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
      MEMORY[0x29EDC9740](v7);
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        *v35 = 1;
      }
    }

    else if (!v34[0] || *MEMORY[0x29EDC75F8] == v34[0] || ([*MEMORY[0x29EDC75F8] _accessibilityIsDescendantOfElement:v34[0]] & 1) != 0)
    {
      objc_opt_class();
      v27 = 0;
      v25 = 0;
      if (objc_opt_isKindOfClass())
      {
        v19 = location[0];
        v28 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
        v27 = 1;
        v26 = [v19 _accessibilityViewChildrenWithOptions:?];
        v25 = 1;
        v9 = MEMORY[0x29EDC9748](v26);
      }

      else
      {
        v9 = MEMORY[0x29EDC9748](0);
      }

      v29 = v9;
      if (v25)
      {
        MEMORY[0x29EDC9740](v26);
      }

      if (v27)
      {
        MEMORY[0x29EDC9740](v28);
      }

      memset(__b, 0, sizeof(__b));
      v17 = MEMORY[0x29EDC9748](v29);
      v18 = [v17 countByEnumeratingWithState:__b objects:v38 count:16];
      if (v18)
      {
        v14 = *__b[2];
        v15 = 0;
        v16 = v18;
        while (1)
        {
          v13 = v15;
          if (*__b[2] != v14)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(__b[1] + 8 * v15);
          if ([v24 isAccessibilityElement])
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v24);
          }

          else
          {
            v10 = [(UIApplicationAccessibility *)*(a1 + 40) _accessibilityFindContainerAccessibleElement:v24 first:*(a1 + 56) & 1 focus:*(a1 + 57) & 1 allowScrolling:*(a1 + 58) & 1];
            v11 = *(*(a1 + 48) + 8);
            v12 = *(v11 + 40);
            *(v11 + 40) = v10;
            MEMORY[0x29EDC9740](v12);
          }

          if (*(*(*(a1 + 48) + 8) + 40))
          {
            break;
          }

          ++v15;
          if (v13 + 1 >= v16)
          {
            v15 = 0;
            v16 = [v17 countByEnumeratingWithState:__b objects:v38 count:16];
            if (!v16)
            {
              goto LABEL_44;
            }
          }
        }

        *v35 = 1;
      }

LABEL_44:
      MEMORY[0x29EDC9740](v17);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v8 = *(a1 + 56);
      v32 = 0;
      v30 = 0;
      if (v8)
      {
        v33 = [location[0] _accessibilityFirstElement];
        v32 = 1;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v33);
      }

      else
      {
        v31 = [location[0] _accessibilityLastElement];
        v30 = 1;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v31);
      }

      if (v30)
      {
        MEMORY[0x29EDC9740](v31);
      }

      if (v32)
      {
        MEMORY[0x29EDC9740](v33);
      }

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        *v35 = 1;
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), location[0]);
    *v35 = 1;
  }

  objc_storeStrong(v34, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityAllowsNotificationsDuringSuspension
{
  v7 = self;
  location[1] = a2;
  v4 = [(UIApplicationAccessibility *)self _accessibilityValueForKey:@"AXAppAllowsNotifications"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [(UIApplicationAccessibility *)v7 _accessibilityBoolValueForKey:@"AXAppAllowsNotifications", v2]& 1;
  }

  else if ([MEMORY[0x29EDC7E78] hasActiveSessions] & 1) == 0 || ((location[0] = -[UIApplicationAccessibility _accessibilityMainWindow](v7, "_accessibilityMainWindow"), (objc_msgSend(location[0], "isHidden")) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_msgSend(location[0], "safeBoolForKey:", @"_isHostedInAnotherProcess") & 1) == 0 ? (v5 = 0) : (v8 = 1, v5 = 1), objc_storeStrong(location, 0), !v5))
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_accessibilityCellWithRowIndex:(int64_t)a3 column:(int64_t)a4 containingView:(id)a5
{
  v33 = *MEMORY[0x29EDCA608];
  v30 = self;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v25 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v24 = [v25 leafNodePredicate];
  v17 = MEMORY[0x29EDCA5F8];
  v18 = -1073741824;
  v19 = 0;
  v20 = __83__UIApplicationAccessibility__accessibilityCellWithRowIndex_column_containingView___block_invoke;
  v21 = &unk_29F30D1C8;
  v22 = MEMORY[0x29EDC9748](v24);
  v23 = MEMORY[0x29ED3E4C0](&v17);
  [v25 setLeafNodePredicate:v23];
  v16 = [(UIApplicationAccessibility *)v30 _accessibilityLeafDescendantsWithOptions:v25];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v16);
  v12 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if (v15 == location)
        {
          break;
        }
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v10)
        {
          goto LABEL_11;
        }
      }
    }

    v31 = [v15 accessibilityElementForRow:v28 andColumn:v27];
    v13 = 1;
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v13)
  {
    v31 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  v5 = v31;

  return v5;
}

uint64_t __83__UIApplicationAccessibility__accessibilityCellWithRowIndex_column_containingView___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 1;
  if (([location[0] isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    v4 = (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 parameters:(id)a6
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v7 = [(UIApplicationAccessibility *)v13 _accessibilityElementFirst:v11 last:v10 forFocus:v9 allowScrolling:0 parameters:location];
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 parameters:(id)a7
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  location = 0;
  objc_storeStrong(&location, a7);
  v11 = [location objectForKey:*MEMORY[0x29EDBD7D8]];
  v12 = [v11 BOOLValue];
  *&v7 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  v13 = v28;
  v14 = v26;
  v15 = v25;
  v16 = v24;
  v17 = v23;
  v20 = 0;
  v18 = 0;
  if (v12)
  {
    v21 = [MEMORY[0x29EDC7328] defaultVoiceOverOptionsHonoringGroups];
    v20 = 1;
    v10 = v21;
  }

  else
  {
    v19 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    v18 = 1;
    v10 = v19;
  }

  v29 = [(UIApplicationAccessibility *)v13 _accessibilityElementFirst:v14 last:v15 forFocus:v16 allowScrolling:v17 traversalOptions:v10];
  if (v18)
  {
    MEMORY[0x29EDC9740](v19);
  }

  if (v20)
  {
    MEMORY[0x29EDC9740](v21);
  }

  objc_storeStrong(&location, 0);
  v8 = v29;

  return v8;
}

- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 traversalOptions:(id)a7
{
  v151 = *MEMORY[0x29EDCA608];
  v136 = self;
  v135 = a2;
  v134 = a3;
  v133 = a4;
  v132 = a5;
  v131 = a6;
  location = 0;
  objc_storeStrong(&location, a7);
  v129 = AXLogFirstElement();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v150, v134, v133, v132, v131);
    _os_log_debug_impl(&dword_29C4D6000, v129, type, "Getting first: %i last: %i forFocus: %i allowScrolling: %i", v150, 0x1Au);
  }

  objc_storeStrong(&v129, 0);
  v127 = [(UIApplicationAccessibility *)v136 _accessibilityViewChildrenWithOptions:location];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v127);
  v57 = [obj countByEnumeratingWithState:__b objects:v149 count:16];
  if (v57)
  {
    v53 = *__b[2];
    v54 = 0;
    v55 = v57;
    while (1)
    {
      v52 = v54;
      if (*__b[2] != v53)
      {
        objc_enumerationMutation(obj);
      }

      v126 = *(__b[1] + 8 * v54);
      v124 = AXLogFirstElement();
      v123 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
      {
        v51 = v124;
        __os_log_helper_16_3_1_8_65(v148, v126);
        _os_log_debug_impl(&dword_29C4D6000, v51, v123, "Element: %{private}@", v148, 0xCu);
      }

      objc_storeStrong(&v124, 0);
      ++v54;
      if (v52 + 1 >= v55)
      {
        v54 = 0;
        v55 = [obj countByEnumeratingWithState:__b objects:v149 count:16];
        if (!v55)
        {
          break;
        }
      }
    }
  }

  v122 = [v127 objectEnumerator];
  if (v133)
  {
    v7 = [v127 reverseObjectEnumerator];
    v8 = v122;
    v122 = v7;
    MEMORY[0x29EDC9740](v8);
  }

  v121 = NSClassFromString(&cfstr_Uidimmingview.isa);
  v120 = NSClassFromString(&cfstr_Uipopoverview.isa);
  v119 = 0;
  v118 = 0;
  memset(v116, 0, sizeof(v116));
  v49 = MEMORY[0x29EDC9748](v122);
  v50 = [v49 countByEnumeratingWithState:v116 objects:v147 count:16];
  if (v50)
  {
    v46 = *v116[2];
    v47 = 0;
    v48 = v50;
    while (1)
    {
      v45 = v47;
      if (*v116[2] != v46)
      {
        objc_enumerationMutation(v49);
      }

      v117 = MEMORY[0x29EDC9748](*(v116[1] + 8 * v47));
      v109[1] = MEMORY[0x29EDCA5F8];
      v110 = -1073741824;
      v111 = 0;
      v112 = __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke;
      v113 = &__block_descriptor_40_e8_B16__0_8lu32l8;
      v114 = v120;
      v115 = [v117 _accessibilityFindAncestor:? startWithSelf:?];
      if (v115)
      {
        if ([v117 isAccessibilityElement])
        {
          objc_storeStrong(&v118, v117);
        }

        else
        {
          v9 = [(UIApplicationAccessibility *)v136 _accessibilityFindContainerAccessibleElement:v117 first:v134 focus:v132 allowScrolling:v131];
          v10 = v118;
          v118 = v9;
          MEMORY[0x29EDC9740](v10);
        }

        if (v118)
        {
          v109[0] = AXLogFirstElement();
          v108 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v109[0], OS_LOG_TYPE_DEBUG))
          {
            v43 = v109[0];
            v44 = v108;
            __os_log_helper_16_3_1_8_65(v146, v118);
            _os_log_debug_impl(&dword_29C4D6000, v43, v44, "Got element from popover view: %{private}@", v146, 0xCu);
          }

          objc_storeStrong(v109, 0);
          v107 = 4;
          goto LABEL_113;
        }
      }

      v42 = 0;
      if ([location honorsElementGrouping])
      {
        v42 = [v117 _accessibilityIsGroupedParent];
      }

      v106 = v42 & 1;
      if (([v117 isAccessibilityElement] & 1) == 0 && (v106 & 1) == 0)
      {
        break;
      }

      v17 = [v117 accessibilityTraits];
      v85 = (v17 & *MEMORY[0x29EDC7578]) == *MEMORY[0x29EDC7578];
      v29 = 0;
      if (v134)
      {
        v29 = [v117 _accessibilityServesAsFirstElement];
      }

      v84 = v29 & 1;
      if (v85 || v118 && (v84 & 1) == 0 || v134 && ([v117 _accessibilityIsNotFirstElement] & 1) != 0)
      {
        goto LABEL_92;
      }

      objc_storeStrong(&v118, v117);
      v83 = AXLogFirstElement();
      v82 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v27 = v83;
        v28 = v82;
        __os_log_helper_16_3_1_8_65(v140, v118);
        _os_log_debug_impl(&dword_29C4D6000, v27, v28, "Got first element: %{private}@", v140, 0xCu);
      }

      objc_storeStrong(&v83, 0);
      if ((v84 & 1) == 0)
      {
LABEL_92:
        v71 = 0;
        LOBYTE(v24) = 0;
        if (v134)
        {
          LOBYTE(v24) = 0;
          if ((v119 & 1) == 0)
          {
            v73 = MEMORY[0x29EDCA5F8];
            v74 = -1073741824;
            v75 = 0;
            v76 = __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_863;
            v77 = &__block_descriptor_40_e8_B16__0_8lu32l8;
            v78 = v121;
            v72 = [v117 _accessibilityFindAncestor:? startWithSelf:?];
            v71 = 1;
            LOBYTE(v24) = 0;
            if (v72)
            {
              v24 = [v117 _accessibilityIsNotFirstElement] ^ 1;
            }
          }
        }

        if (v71)
        {
          MEMORY[0x29EDC9740](v72);
        }

        if (v24)
        {
          objc_storeStrong(&v118, v117);
          oslog = AXLogFirstElement();
          v69 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v22 = oslog;
            v23 = v69;
            __os_log_helper_16_3_1_8_65(v139, v118);
            _os_log_debug_impl(&dword_29C4D6000, v22, v23, "Got dimming view element: %{private}@", v139, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v119 = 1;
        }

LABEL_102:
        v61 = 0;
        LOBYTE(v21) = 0;
        if (v134)
        {
          LOBYTE(v21) = 0;
          if ((v119 & 1) == 0)
          {
            v63 = MEMORY[0x29EDCA5F8];
            v64 = -1073741824;
            v65 = 0;
            v66 = __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_864;
            v67 = &__block_descriptor_40_e8_B16__0_8lu32l8;
            v68 = v121;
            v62 = [v117 _accessibilityFindAncestor:? startWithSelf:?];
            v61 = 1;
            LOBYTE(v21) = 0;
            if (v62)
            {
              v21 = [v117 _accessibilityIsNotFirstElement] ^ 1;
            }
          }
        }

        if (v61)
        {
          MEMORY[0x29EDC9740](v62);
        }

        if (v21)
        {
          v119 = 1;
          objc_storeStrong(&v118, v117);
          v60 = AXLogFirstElement();
          v59 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v20 = v60;
            __os_log_helper_16_3_1_8_65(v138, v118);
            _os_log_debug_impl(&dword_29C4D6000, v20, v59, "Got dimming view element: %{private}@", v138, 0xCu);
          }

          objc_storeStrong(&v60, 0);
        }

        v107 = 0;
        goto LABEL_113;
      }

      v81 = AXLogFirstElement();
      v80 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        v25 = v81;
        v26 = v80;
        __os_log_helper_16_0_0(v79);
        _os_log_debug_impl(&dword_29C4D6000, v25, v26, "Ending now because element serves as first element", v79, 2u);
      }

      objc_storeStrong(&v81, 0);
      v107 = 4;
LABEL_113:
      objc_storeStrong(&v115, 0);
      if (!v107)
      {
        v107 = 0;
      }

      objc_storeStrong(&v117, 0);
      if (v107)
      {
        goto LABEL_119;
      }

      ++v47;
      if (v45 + 1 >= v48)
      {
        v47 = 0;
        v48 = [v49 countByEnumeratingWithState:v116 objects:v147 count:16];
        if (!v48)
        {
          goto LABEL_118;
        }
      }
    }

    v105 = [(UIApplicationAccessibility *)v136 _accessibilityFindContainerAccessibleElement:v117 first:v134 focus:v132 allowScrolling:v131];
    v104 = AXLogFirstElement();
    v103 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      v40 = v104;
      v41 = v103;
      __os_log_helper_16_3_1_8_65(v145, v105);
      _os_log_debug_impl(&dword_29C4D6000, v40, v41, "Container accessible element: %{private}@", v145, 0xCu);
    }

    objc_storeStrong(&v104, 0);
    if (!v105)
    {
      goto LABEL_53;
    }

    v102 = AXRemoteElementFromObject();
    v39 = CFGetTypeID(v105);
    if (v39 == AXUIElementGetTypeID() || v102 && ([v105 _accessibilityIsNotFirstElement] & 1) == 0)
    {
      if (!v118)
      {
        objc_storeStrong(&v118, v102);
        v101 = AXLogFirstElement();
        v100 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          v37 = v101;
          v38 = v100;
          __os_log_helper_16_3_1_8_65(v144, v118);
          _os_log_debug_impl(&dword_29C4D6000, v37, v38, "Got remote element: %{private}@", v144, 0xCu);
        }

        objc_storeStrong(&v101, 0);
        v107 = 4;
LABEL_52:
        objc_storeStrong(&v102, 0);
        if (v107)
        {
          goto LABEL_77;
        }

LABEL_53:
        if (v134 && ([v117 _accessibilityServesAsFirstElement] & 1) != 0 || v132 && (objc_msgSend(v117, "_accessibilityIsFirstElementForFocus") & 1) != 0)
        {
          if (([v117 _accessibilityHasOrderedChildren] & 1) != 0 || (objc_msgSend(v117, "isAccessibilityElement") & 1) == 0)
          {
            v13 = [v117 _accessibilityUnignoredDescendant];
            v14 = v117;
            v117 = v13;
            MEMORY[0x29EDC9740](v14);
          }

          if (v117)
          {
            objc_storeStrong(&v118, v117);
            v97 = AXLogFirstElement();
            v96 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
            {
              v33 = v97;
              v34 = v96;
              __os_log_helper_16_3_1_8_65(v142, v118);
              _os_log_debug_impl(&dword_29C4D6000, v33, v34, "Got element that serves as first element or is first element for focus: %{private}@", v142, 0xCu);
            }

            objc_storeStrong(&v97, 0);
            v107 = 4;
LABEL_77:
            objc_storeStrong(&v105, 0);
            if (v107)
            {
              goto LABEL_113;
            }

            goto LABEL_102;
          }
        }

        else
        {
          v88 = 0;
          v32 = 0;
          if (v134)
          {
            v32 = 0;
            if ((v119 & 1) == 0)
            {
              v90 = MEMORY[0x29EDCA5F8];
              v91 = -1073741824;
              v92 = 0;
              v93 = __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_862;
              v94 = &__block_descriptor_40_e8_B16__0_8lu32l8;
              v95 = v121;
              v89 = [v117 _accessibilityFindAncestor:? startWithSelf:?];
              v88 = 1;
              v32 = v89 != 0;
            }
          }

          if (v88)
          {
            MEMORY[0x29EDC9740](v89);
          }

          if (v32)
          {
            objc_storeStrong(&v118, v117);
            v87 = AXLogFirstElement();
            v86 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              v30 = v87;
              v31 = v86;
              __os_log_helper_16_3_1_8_65(v141, v118);
              _os_log_debug_impl(&dword_29C4D6000, v30, v31, "Got dimming view element: %{private}@", v141, 0xCu);
            }

            objc_storeStrong(&v87, 0);
            if (([v118 isAccessibilityElement] & 1) == 0)
            {
              v15 = [v118 _accessibilityUnignoredDescendant];
              v16 = v118;
              v118 = v15;
              MEMORY[0x29EDC9740](v16);
            }

            v119 = 1;
          }
        }

        v107 = 0;
        goto LABEL_77;
      }
    }

    else if (!v118 || v134 && (([v105 _accessibilityServesAsFirstElement] & 1) != 0 || (objc_msgSend(v117, "_accessibilityServesAsFirstElement"))) && (!v134 || (objc_msgSend(v105, "_accessibilityIsNotFirstElement") & 1) == 0))
    {
      if (([v105 isAccessibilityElement] & 1) == 0)
      {
        v11 = [v105 _accessibilityUnignoredDescendant];
        v12 = v105;
        v105 = v11;
        MEMORY[0x29EDC9740](v12);
      }

      objc_storeStrong(&v118, v105);
      v99 = AXLogFirstElement();
      v98 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v35 = v99;
        v36 = v98;
        __os_log_helper_16_3_1_8_65(v143, v118);
        _os_log_debug_impl(&dword_29C4D6000, v35, v36, "Got element that serves as first element: %{private}@", v143, 0xCu);
      }

      objc_storeStrong(&v99, 0);
    }

    v107 = 0;
    goto LABEL_52;
  }

LABEL_118:
  v107 = 0;
LABEL_119:
  MEMORY[0x29EDC9740](v49);
  v58 = AXLogFirstElement();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_3_1_8_65(v137, v118);
    _os_log_debug_impl(&dword_29C4D6000, v58, OS_LOG_TYPE_DEBUG, "Returning %{private}@", v137, 0xCu);
  }

  objc_storeStrong(&v58, 0);
  v19 = MEMORY[0x29EDC9748](v118);
  v107 = 1;
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&location, 0);

  return v19;
}

BOOL __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [location[0] safeValueForKey:@"standardChromeView"], v4 = 1, v3 = 1, !v5))
  {
    v3 = [location[0] accessibilityContainerType] == 10;
  }

  v7 = v3;
  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(location, 0);
  return v7;
}

uint64_t __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_862(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_863(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __103__UIApplicationAccessibility__accessibilityElementFirst_last_forFocus_allowScrolling_traversalOptions___block_invoke_864(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_accessibilityFirstElementForFocusWithOptions:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UIApplicationAccessibility *)v6 _accessibilityElementFirst:1 last:0 forFocus:1 allowScrolling:0 traversalOptions:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityTitleBarElement
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  v24 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  [v24 setSorted:0];
  v23 = [(UIApplicationAccessibility *)v26 _accessibilityViewChildrenWithOptions:v24];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v23);
  v10 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v7);
      if ([v22 _accessibilityIsTitleElement] & 1) != 0 || (objc_msgSend(v22, "_accessibilityBoolValueForKey:", kUIAccessibilityStorageKeyIsTitleElement))
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    objc_storeStrong(location, v22);
    v20 = 2;
  }

  else
  {
LABEL_10:
    v20 = 0;
  }

  *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if (location[0])
  {
    v19 = [(UIApplicationAccessibility *)v26 _accessibilityElementFirst:1 last:0 forFocus:1 allowScrolling:0 parameters:0, v2];
    v18 = NSClassFromString(&cfstr_Uipopoverview.isa);
    v11[1] = MEMORY[0x29EDCA5F8];
    v12 = -1073741824;
    v13 = 0;
    v14 = __59__UIApplicationAccessibility__accessibilityTitleBarElement__block_invoke;
    v15 = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v16 = v18;
    v17 = [v19 _accessibilityFindAncestor:? startWithSelf:?];
    if (v17)
    {
      v11[0] = [location[0] _accessibilityFindAncestor:? startWithSelf:?];
      if (v17 != v11[0])
      {
        objc_storeStrong(location, 0);
      }

      objc_storeStrong(v11, 0);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v19, 0);
  }

  v4 = MEMORY[0x29EDC9748](location[0]);
  v20 = 1;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __59__UIApplicationAccessibility__accessibilityTitleBarElement__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __59__UIApplicationAccessibility__accessibilityTitleBarElement__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_accessibilitySummaryElement
{
  v21 = *MEMORY[0x29EDCA608];
  v18 = a1;
  if (a1)
  {
    v17 = [v18 _accessibilityMainWindow];
    v16 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [v16 setSorted:0];
    v11 = [v18 _accessibilityViewChildrenWithOptions:v16];
    v15 = [v11 mutableCopyWithZone:0];
    *&v1 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    if (v17)
    {
      [v15 insertObject:v17 atIndex:{0, v1}];
    }

    location = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v15);
    v10 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v7);
        v2 = [v13 accessibilityTraits];
        if ((v2 & *MEMORY[0x29EDC7FD8]) == *MEMORY[0x29EDC7FD8])
        {
          objc_storeStrong(&location, v13);
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v19 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v19 = 0;
  }

  v3 = v19;

  return v3;
}

- (id)_accessibilityWindowSections
{
  v24 = *MEMORY[0x29EDCA608];
  v22 = self;
  v21[1] = a2;
  v21[0] = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)v22 _accessibilityWindows];
  v12 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v9);
      v4 = v21[0];
      v6 = [v20 _accessibilityWindowSections];
      v13 = MEMORY[0x29EDCA5F8];
      v14 = -1073741824;
      v15 = 0;
      v16 = __58__UIApplicationAccessibility__accessibilityWindowSections__block_invoke;
      v17 = &unk_29F30D1F0;
      v18 = MEMORY[0x29EDC9748](v20);
      v5 = [v6 axFilterObjectsUsingBlock:&v13];
      [v4 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v6);
      objc_storeStrong(&v18, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v21[0]);
  objc_storeStrong(v21, 0);

  return v3;
}

BOOL __58__UIApplicationAccessibility__accessibilityWindowSections__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] _accessibilityWindow];
  v5 = v2 == a1[4];
  MEMORY[0x29EDC9740](v2);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_axAllSubviews
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [MEMORY[0x29EDBA050] string];
  v3 = AXUIApplicationWindows();
  v5 = MEMORY[0x29EDC9748](v6[0]);
  [v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __44__UIApplicationAccessibility__axAllSubviews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = a1[4];
  v4 = [location[0] safeValueForKey:@"_axSubviews"];
  [v3 appendFormat:@"%@\n", v4];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityTextReplacementCandidates
{
  v37 = *MEMORY[0x29EDCA608];
  v33[1] = a1;
  if (a1)
  {
    v33[0] = [MEMORY[0x29EDC7B08] activeInstance];
    v32 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = [v33[0] safeArrayForKey:@"replacementsFromSelectedText"];
    v22 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(__b[1] + 8 * v19);
        v15 = v32;
        v16 = [v31 safeStringForKey:@"replacementText"];
        [v15 axSafelyAddObject:?];
        *&v1 = MEMORY[0x29EDC9740](v16).n128_u64[0];
        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [obj countByEnumeratingWithState:__b objects:v36 count:{16, v1}];
          if (!v20)
          {
            break;
          }
        }
      }
    }

    if (![v32 count])
    {
      v29 = [*MEMORY[0x29EDC8008] _accessibilityFirstResponderForKeyWindow];
      if (!v29)
      {
        v29 = _UIAccessibilityFocusedElementForAssistiveTech();
        MEMORY[0x29EDC9740](0);
      }

      if (objc_opt_respondsToSelector())
      {
        v28 = [v29 safeStringForKey:@"selectedText"];
        if ([v28 length])
        {
          v13 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
          v2 = [v28 stringByTrimmingCharactersInSet:?];
          v3 = v28;
          v28 = v2;
          MEMORY[0x29EDC9740](v3);
          v14 = [MEMORY[0x29EDC7B08] activeInstance];
          v27 = [v14 generateAutocorrectionReplacements:v28];
          *&v4 = MEMORY[0x29EDC9740](v14).n128_u64[0];
          if (v27)
          {
            v26 = [MEMORY[0x29EDB8E50] setWithArray:{v27, v4}];
            memset(v24, 0, sizeof(v24));
            v11 = MEMORY[0x29EDC9748](v26);
            v12 = [v11 countByEnumeratingWithState:v24 objects:v35 count:16];
            if (v12)
            {
              v8 = *v24[2];
              v9 = 0;
              v10 = v12;
              while (1)
              {
                v7 = v9;
                if (*v24[2] != v8)
                {
                  objc_enumerationMutation(v11);
                }

                v25 = *(v24[1] + 8 * v9);
                location = [v25 label];
                if (([location isEqualToString:v28] & 1) == 0)
                {
                  [v32 axSafelyAddObject:location];
                }

                objc_storeStrong(&location, 0);
                ++v9;
                if (v7 + 1 >= v10)
                {
                  v9 = 0;
                  v10 = [v11 countByEnumeratingWithState:v24 objects:v35 count:16];
                  if (!v10)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x29EDC9740](v11);
            objc_storeStrong(&v26, 0);
          }

          objc_storeStrong(&v27, 0);
        }

        objc_storeStrong(&v28, 0);
      }

      objc_storeStrong(&v29, 0);
    }

    v34 = MEMORY[0x29EDC9748](v32);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(v33, 0);
  }

  else
  {
    v34 = 0;
  }

  v5 = v34;

  return v5;
}

- (id)_accessibilityTypingCandidates
{
  v18[1] = a1;
  if (a1)
  {
    v18[0] = [MEMORY[0x29EDB8DE8] array];
    v17 = [MEMORY[0x29EDC7B08] activeInstance];
    location = [v17 safeValueForKey:@"m_autocorrectPrompt"];
    if (location)
    {
      if (UIKeyboardPredictionEnabledForCurrentInputMode() & 1) != 0 && (NSClassFromString(&cfstr_Uiautocorrecti.isa), (objc_opt_isKindOfClass()))
      {
        objc_storeStrong(&location, 0);
      }

      else
      {
        [location setAccessibilityTraits:*MEMORY[0x29EDC7570]];
        v8 = accessibilityLocalizedString(@"typing.correction.view.hint");
        [location setAccessibilityHint:?];
        [v18[0] addObject:{location, MEMORY[0x29EDC9740](v8).n128_f64[0]}];
      }
    }

    if (![v18[0] count])
    {
      v15 = [v17 safeValueForKey:@"candidateController"];
      v14 = [v15 safeArrayForKey:@"activeViews"];
      v6 = [v14 firstObject];
      v13 = [v6 safeValueForKey:@"primaryGrid"];
      MEMORY[0x29EDC9740](v6);
      v11 = 0;
      objc_opt_class();
      v7 = [v13 safeValueForKey:@"collectionView"];
      v10 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v7);
      v9 = MEMORY[0x29EDC9748](v10);
      objc_storeStrong(&v10, 0);
      v12 = v9;
      v3 = v18[0];
      v5 = [v9 visibleCells];
      v4 = [v5 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
      [v3 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v4);
      MEMORY[0x29EDC9740](v5);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    v19 = MEMORY[0x29EDC9748](v18[0]);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v19 = 0;
  }

  v1 = v19;

  return v1;
}

- (BOOL)_accessibilitySoftwareKeyboardCoversElement:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if ([(UIApplicationAccessibility *)v19 _accessibilitySoftwareKeyboardActive])
  {
    v7 = 0;
    if (![(UIApplicationAccessibility *)v19 _accessibilityElementBelongsToKeyboardWindow:location[0]])
    {
      v17 = [location[0] _accessibilityParentView];
      v16 = 1;
      v15 = [v17 window];
      v14 = 1;
      v7 = 0;
      if (v15)
      {
        v13 = [location[0] _accessibilityParentView];
        v12 = 1;
        v11 = [v13 window];
        v10 = 1;
        [v11 windowLevel];
        v6 = v3;
        v9 = AXUIKeyboardWindow();
        v8 = 1;
        [v9 windowLevel];
        v7 = v6 <= v4;
      }
    }
  }

  v20 = v7;
  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](v15);
  }

  if (v16)
  {
    MEMORY[0x29EDC9740](v17);
  }

  objc_storeStrong(location, 0);
  return v20;
}

- (CGRect)_accessibilitySoftwareKeyboardAccessibilityFrame
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = [MEMORY[0x29EDC7AF8] activeKeyboard];
  [v10[0] accessibilityFrame];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  objc_storeStrong(v10, 0);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)_accessibilityElementBelongsToKeyboardWindow:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = AXUIAllKeyboardWindows();
  v5 = [location[0] _accessibilityParentView];
  v7 = [v5 window];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = [v8 containsObject:{v7, v3}];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)_accessibilitySoftwareKeyboardActive
{
  if (([NSClassFromString(&cfstr_Uidictationcon.isa) safeBoolForKey:@"isRunning"]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return UIAXKeyboardIsOnScreen() & 1;
  }
}

- (BOOL)_accessibilityHardwareKeyboardActive
{
  v3 = [MEMORY[0x29EDC7B08] activeInstance];
  v4 = [v3 isInHardwareKeyboardMode];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)handleKeyHIDEvent:(__IOHIDEvent *)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v3 handleKeyHIDEvent:a3];
  _UIAXSetLastKeyboardUsed();
}

- (void)_accessibilityRegisterForDictationLifecycleNotifications
{
  v5 = self;
  location[1] = a2;
  location[0] = MEMORY[0x29EDC9748](@"_axRegisteredForRemoteElement");
  if (([(UIApplicationAccessibility *)v5 _accessibilityBoolValueForKey:location[0]]& 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v5, _accessibilityReceiveDictationLifecycleNotfication, *MEMORY[0x29EDBD7C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v3, v5, _accessibilityReceiveDictationLifecycleNotfication, *MEMORY[0x29EDBD7C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(UIApplicationAccessibility *)v5 _accessibilitySetBoolValue:1 forKey:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (double)_accessibilityLastDictationMagicTapTime
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = [a1 _accessibilityValueForKey:kAXLastDictationMagicTapTime];
  [v3 doubleValue];
  v4 = v1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (uint64_t)_accessibilityDictationIsListening
{
  v5 = a1;
  if (a1)
  {
    location = [v5 _accessibilityValueForKey:@"_accessibilityIsDictationListeningOverride"];
    if (location)
    {
      v6 = [location BOOLValue] & 1;
    }

    else if ([_lastActiveDictationController safeBoolForKey:@"_accessibilityIsDictating"])
    {
      v6 = 1;
    }

    else
    {
      v2 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeValueForKey:@"isRunning"];
      v3 = [v2 BOOLValue];
      MEMORY[0x29EDC9740](v2);
      if (v3)
      {
        v6 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeBoolForKey:@"isListening"]& 1;
      }

      else
      {
        v6 = 0;
      }
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (uint64_t)_accessibilityDictationIsAvailable
{
  v4 = a1;
  if (a1)
  {
    if (([v4 _accessibilitySoftwareKeyboardActive] & 1) == 0 || ((location = NSClassFromString(&cfstr_Uidictationcon.isa), (objc_msgSend(location, "safeBoolForKey:", @"dictationIsFunctional") & 1) == 0) || (objc_msgSend(location, "safeBoolForKey:", @"fetchCurrentInputModeSupportsDictation") & 1) == 0 ? (v2 = 0) : (v5 = 1, v2 = 1), objc_storeStrong(&location, 0), !v2))
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)_accessibilityCurrentSoftwareLanguage
{
  v4[1] = a1;
  if (a1)
  {
    v4[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v3 = [v4[0] currentInputMode];
    v5 = [v3 primaryLanguage];
    objc_storeStrong(&v3, 0);
    objc_storeStrong(v4, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (id)_accessibilityCurrentSoftwareKeyboardLayout
{
  v29 = *MEMORY[0x29EDCA608];
  v26[1] = a1;
  if (a1)
  {
    v26[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v25 = [v26[0] activeInputModes];
    v24 = [v26[0] currentInputMode];
    v15 = [v24 softwareLayout];
    *&v1 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    if (v15)
    {
      v27 = [v24 softwareLayout];
      v23 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v25);
      v14 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
      if (v14)
      {
        v10 = *__b[2];
        v11 = 0;
        v12 = v14;
        while (1)
        {
          v9 = v11;
          if (*__b[2] != v10)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(__b[1] + 8 * v11);
          location = [v22 softwareLayout];
          v6 = [v22 primaryLanguage];
          v7 = [v24 primaryLanguage];
          v8 = 0;
          if ([v6 isEqualToString:?])
          {
            v8 = location != 0;
          }

          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](v6);
          if (v8)
          {
            v27 = MEMORY[0x29EDC9748](location);
            v23 = 1;
          }

          else
          {
            v23 = 0;
          }

          objc_storeStrong(&location, 0);
          if (v23)
          {
            break;
          }

          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
            if (!v12)
            {
              goto LABEL_17;
            }
          }
        }
      }

      else
      {
LABEL_17:
        v23 = 0;
      }

      *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
      if (!v23)
      {
        v18 = 0;
        v16 = 0;
        if ([v25 count])
        {
          v19 = [v25 objectAtIndex:0];
          v18 = 1;
          v17 = [v19 softwareLayout];
          v16 = 1;
          v3 = MEMORY[0x29EDC9748](v17);
        }

        else
        {
          v3 = MEMORY[0x29EDC9748](@"US");
        }

        v27 = v3;
        if (v16)
        {
          MEMORY[0x29EDC9740](v17);
        }

        if (v18)
        {
          MEMORY[0x29EDC9740](v19);
        }

        v23 = 1;
      }
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(v26, 0);
  }

  else
  {
    v27 = 0;
  }

  v4 = v27;

  return v4;
}

- (id)_accessibilityCurrentHardwareKeyboardLayout
{
  v27 = *MEMORY[0x29EDCA608];
  v24[1] = a1;
  if (a1)
  {
    v24[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v23 = [v24[0] activeInputModes];
    v22 = [v24[0] currentInputMode];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v23);
    v13 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v10);
        location = [v21 hardwareLayout];
        v5 = [v21 primaryLanguage];
        v6 = [v22 primaryLanguage];
        v7 = 0;
        if ([v5 isEqualToString:?])
        {
          v7 = location != 0;
        }

        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](v5);
        if (v7)
        {
          v25 = MEMORY[0x29EDC9748](location);
          v18 = 1;
        }

        else
        {
          v18 = 0;
        }

        objc_storeStrong(&location, 0);
        if (v18)
        {
          break;
        }

        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
LABEL_15:
      v18 = 0;
    }

    *&v1 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if (!v18)
    {
      v16 = 0;
      v14 = 0;
      if ([v23 count])
      {
        v17 = [v23 objectAtIndex:0];
        v16 = 1;
        v15 = [v17 hardwareLayout];
        v14 = 1;
        v2 = MEMORY[0x29EDC9748](v15);
      }

      else
      {
        v2 = MEMORY[0x29EDC9748](@"US");
      }

      v25 = v2;
      if (v14)
      {
        MEMORY[0x29EDC9740](v15);
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](v17);
      }
    }

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(v24, 0);
  }

  else
  {
    v25 = 0;
  }

  v3 = v25;

  return v3;
}

- (id)_axSubviews
{
  v17 = *MEMORY[0x29EDCA608];
  v15[2] = self;
  v15[1] = a2;
  v15[0] = [MEMORY[0x29EDBA050] string];
  memset(__b, 0, sizeof(__b));
  obj = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v12 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = v15[0];
      v6 = [v14 _axSubviews];
      [v5 appendFormat:@"%@\n\n", v6];
      *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, v2}];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v4 = MEMORY[0x29EDC9748](v15[0]);
  objc_storeStrong(v15, 0);

  return v4;
}

- (BOOL)_accessibilityDispatchKeyboardAction:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [*MEMORY[0x29EDC8008] accessibilityKeyboardKeyDispatchOverride];
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v7)
  {
    v6 = [*MEMORY[0x29EDC8008] accessibilityKeyboardKeyDispatchOverride];
    v36 = v6[2](v6, location[0]) & 1;
    MEMORY[0x29EDC9740](v6);
    v33 = 1;
  }

  else
  {
    v5 = [location[0] keyInfo];
    v32 = [v5 unmodifiedInput];
    MEMORY[0x29EDC9740](v5);
    v24 = 0;
    v25 = &v24;
    v26 = 838860800;
    v27 = 48;
    v28 = __Block_byref_object_copy__5;
    v29 = __Block_byref_object_dispose__5;
    v30 = 0;
    v18 = MEMORY[0x29EDCA5F8];
    v19 = -1073741824;
    v20 = 0;
    v21 = __67__UIApplicationAccessibility__accessibilityDispatchKeyboardAction___block_invoke;
    v22 = &unk_29F30CC70;
    v23[1] = &v24;
    v23[0] = MEMORY[0x29EDC9748](v32);
    AXPerformSafeBlock();
    v17 = MEMORY[0x29EDC9748](v25[5]);
    objc_storeStrong(v23, 0);
    _Block_object_dispose(&v24, 8);
    objc_storeStrong(&v30, 0);
    v31 = v17;
    v10[1] = MEMORY[0x29EDCA5F8];
    v11 = -1073741824;
    v12 = 0;
    v13 = __67__UIApplicationAccessibility__accessibilityDispatchKeyboardAction___block_invoke_2;
    v14 = &unk_29F30C888;
    v15 = MEMORY[0x29EDC9748](location[0]);
    v16 = MEMORY[0x29EDC9748](v31);
    AXPerformSafeBlock();
    v8 = MEMORY[0x29EDC9748](location[0]);
    v9 = MEMORY[0x29EDC9748](v31);
    v10[0] = MEMORY[0x29EDC9748](v35);
    AXPerformSafeBlock();
    v36 = 1;
    v33 = 1;
    objc_storeStrong(v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(location, 0);
  return v36 & 1;
}

double __67__UIApplicationAccessibility__accessibilityDispatchKeyboardAction___block_invoke(uint64_t a1)
{
  v1 = [NSClassFromString(&cfstr_Uiphysicalkeyb.isa) _eventWithInput:*(a1 + 32) inputFlags:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

uint64_t __67__UIApplicationAccessibility__accessibilityDispatchKeyboardAction___block_invoke_2(uint64_t a1)
{
  cf = [*(a1 + 32) newHIDEventRef];
  [*(a1 + 40) _setHIDEvent:cf];
  if (cf)
  {
    CFRelease(cf);
  }

  return [*(a1 + 40) _setTimestamp:GSCurrentEventTimestamp()];
}

void __67__UIApplicationAccessibility__accessibilityDispatchKeyboardAction___block_invoke_3(uint64_t a1)
{
  v4 = 0;
  if ([*(a1 + 32) type] == 4500 || objc_msgSend(*(a1 + 32), "type") == 4501)
  {
    v2 = [MEMORY[0x29EDC7B08] sharedInstance];
    v4 = [v2 handleKeyCommand:*(a1 + 40) repeatOkay:0 beforePublicKeyCommands:1];
    *&v1 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  if ((v4 & 1) == 0)
  {
    [*(a1 + 48) handleKeyUIEvent:{*(a1 + 40), v1}];
  }
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4
{
  v49 = self;
  v48 = a2;
  v47 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v47 == 91506)
  {
    v16 = MEMORY[0x29EDBA070];
    v15 = MEMORY[0x29EDC7DD0];
    [location pointValue];
    v44 = v4;
    v45 = v5;
    v17 = [v15 _findWithDisplayPoint:{v4, v5}];
    v50 = [v16 numberWithUnsignedInt:{objc_msgSend(v17, "_accessibilityContextId")}];
    MEMORY[0x29EDC9740](v17);
    v43 = 1;
  }

  else if (v47 == 91509)
  {
    v13 = MEMORY[0x29EDBA070];
    [location unsignedIntValue];
    v14 = UIAccessibilityWindowForContextId();
    v50 = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "_accessibilityDisplayId")}];
    MEMORY[0x29EDC9740](v14);
    v43 = 1;
  }

  else if (v47 == 94500)
  {
    v42 = MEMORY[0x29EDC9748](location);
    v11 = [v42 objectAtIndexedSubscript:0];
    v41 = [v11 BOOLValue];
    v12 = [v42 objectAtIndexedSubscript:{1, MEMORY[0x29EDC9740](v11).n128_f64[0]}];
    v40 = [v12 BOOLValue];
    v37 = 0;
    if ([v42 count] <= 2)
    {
      v6 = MEMORY[0x29EDC9748](0);
    }

    else
    {
      v38 = [v42 objectAtIndexedSubscript:2];
      v37 = 1;
      v6 = MEMORY[0x29EDC9748](v38);
    }

    v39 = v6;
    if (v37)
    {
      MEMORY[0x29EDC9740](v38);
    }

    v36 = [(UIApplicationAccessibility *)v49 _accessibilityConnectedScenes];
    if ([v36 count])
    {
      v9 = v36;
      v28 = MEMORY[0x29EDCA5F8];
      v29 = -1073741824;
      v30 = 0;
      v31 = __75__UIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke;
      v32 = &unk_29F30D240;
      v33 = MEMORY[0x29EDC9748](v39);
      v34 = [v9 ax_filteredSetUsingBlock:&v28];
      v27 = objc_opt_new();
      v10 = v34;
      v19 = MEMORY[0x29EDCA5F8];
      v20 = -1073741824;
      v21 = 0;
      v22 = __75__UIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2;
      v23 = &unk_29F30D268;
      v24 = MEMORY[0x29EDC9748](v27);
      v25 = v41 & 1;
      v26 = v40 & 1;
      [v10 enumerateObjectsUsingBlock:&v19];
      v50 = MEMORY[0x29EDC9748](v27);
      v43 = 1;
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
    }

    else
    {
      v35.receiver = v49;
      v35.super_class = UIApplicationAccessibility;
      v50 = [(UIApplicationAccessibility *)&v35 _iosAccessibilityAttributeValue:v47 forParameter:location];
      v43 = 1;
    }

    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v42, 0);
  }

  else if (v47 == 95253)
  {
    v50 = [(UIApplicationAccessibility *)v49 _accessibilityElementFirst:1 last:0 forFocus:0 parameters:location];
    v43 = 1;
  }

  else if (v47 == 95254)
  {
    v50 = [(UIApplicationAccessibility *)v49 _accessibilityElementFirst:0 last:1 forFocus:0 parameters:location];
    v43 = 1;
  }

  else if (v47 == 95256)
  {
    v50 = [(UIApplicationAccessibility *)v49 _accessibilityWindowSceneForSceneID:location];
    v43 = 1;
  }

  else
  {
    if (v47 == 95257)
    {
      v50 = [(UIApplicationAccessibility *)v49 _accessibilityFocusableScenesDictionary];
    }

    else
    {
      v18.receiver = v49;
      v18.super_class = UIApplicationAccessibility;
      v50 = [(UIApplicationAccessibility *)&v18 _iosAccessibilityAttributeValue:v47 forParameter:location];
    }

    v43 = 1;
  }

  objc_storeStrong(&location, 0);
  v7 = v50;

  return v7;
}

uint64_t __75__UIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[2] = a3;
  v12[1] = a1;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12[0] = v9;
  v4 = a1[4];
  v5 = [v9 _sceneIdentifier];
  v6 = [v4 containsObject:?] ^ 1;
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  return v6;
}

void __75__UIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = *(a1 + 32);
  v4 = [location[0] _accessibilityScannerElementsGrouped:*(a1 + 40) & 1 shouldIncludeNonScannerElements:*(a1 + 41) & 1];
  [v3 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  switch(a3)
  {
    case 1514:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:{-[UIApplicationAccessibility _accessibilityApplicationIsModal](v11, "_accessibilityApplicationIsModal")}];
      break;
    case 3001:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilitySummaryElement];
      break;
    case 3002:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityResponderElement];
      break;
    case 3003:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityBundleIdentifier];
      break;
    case 3004:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityTypingCandidates];
      break;
    case 3005:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:{-[UIApplicationAccessibility _accessibilitySoftwareKeyboardActive](v11, "_accessibilitySoftwareKeyboardActive")}];
      break;
    case 3006:
      v6 = MEMORY[0x29EDB8D80];
      v7 = [(UIApplicationAccessibility *)v11 _accessibilityTitleBarElement];
      v12 = [v6 axArrayByIgnoringNilElementsWithCount:{1, v7}];
      MEMORY[0x29EDC9740](v7);
      break;
    case 3007:
      v12 = _UIAXLastKeyboardUsed();
      break;
    case 3010:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityDictationIsListening](v11)];
      break;
    case 3011:
      v12 = [(UIApplicationAccessibility *)v11 _firstStatusBarElement];
      break;
    case 3012:
      v12 = [(UIApplicationAccessibility *)v11 _lastStatusBarElement];
      break;
    case 3013:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityCurrentHardwareKeyboardLayout];
      break;
    case 3016:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityLastElement];
      break;
    case 3018:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityCurrentSoftwareKeyboardLayout];
      break;
    case 3019:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityCurrentSoftwareLanguage];
      break;
    case 3023:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityResponderElementForFocus];
      break;
    case 3024:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityNativeFocusElement];
      break;
    case 3027:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityNativeFocusPreferredElement];
      break;
    case 3034:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityDictationIsAvailable](v11)];
      break;
    case 3035:
      v12 = [MEMORY[0x29EDBA070] numberWithInt:-[UIApplicationAccessibility _accessibilityApplicationInterfaceOrientation](v11)];
      break;
    case 3036:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityIsTappingMediaLegibilityEvents](v11)];
      break;
    case 3037:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityRealtimeElements];
      break;
    case 3040:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityApplicationWindowContextIDs];
      break;
    case 3043:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityTextReplacementCandidates];
      break;
    case 3045:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityIsInitialBundleLoadFinished](v11)];
      break;
    case 3046:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityFirstElementsForSpeakThis];
      break;
    case 3047:
      v12 = [MEMORY[0x29EDBA070] numberWithBool:_UIApplicationIsExtension()];
      break;
    case 3050:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityFirstElementForReadFromTop];
      break;
    case 3051:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityMLProxiedElements];
      break;
    case 3052:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityApplicationWindowFramesAndIds];
      break;
    case 3054:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityStatusBarElements:1 sorted:1];
      break;
    case 3060:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityGetSpeakThisRootElementAccessibilityIdentifier];
      break;
    case 3061:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityGetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession];
      break;
    case 3062:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityFocusContainer];
      break;
    case 3069:
      v5 = [(UIApplicationAccessibility *)v11 _accessibilityFocusedScene];
      v12 = [v5 _sceneIdentifier];
      MEMORY[0x29EDC9740](v5);
      break;
    case 3071:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityUIAppFocusedOnContinuityDisplay];
      break;
    case 3075:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityUIAppDisplayIDForContinuityDisplay];
      break;
    case 5044:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityPreviewWindow];
      break;
    case 13001:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilitySemanticContext];
      break;
    case 14000:
      v12 = [(UIApplicationAccessibility *)v11 _accessibilityIsolatedWindows];
      break;
    default:
      v8.receiver = v11;
      v8.super_class = UIApplicationAccessibility;
      v12 = [(UIApplicationAccessibility *)&v8 _iosAccessibilityAttributeValue:v9];
      break;
  }

  v3 = v12;

  return v3;
}

- (uint64_t)_accessibilityApplicationInterfaceOrientation
{
  v3[1] = a1;
  if (a1)
  {
    v3[0] = [MEMORY[0x29EDC7C40] mainScreen];
    v2 = [v3[0] safeValueForKey:@"_interfaceOrientation"];
    v4 = [v2 integerValue];
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(v3, 0);
  }

  else
  {
    return 0;
  }

  return v4;
}

- (uint64_t)_accessibilityIsTappingMediaLegibilityEvents
{
  if (a1)
  {
    v2 = [NSClassFromString(&cfstr_Axavfoundation.isa) safeValueForKey:@"sharedManagerIfExists"];
    v3 = [v2 safeBoolForKey:@"isTappingMediaDescriptions"] & 1;
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_accessibilityPreviewWindow
{
  v5 = a1;
  if (a1)
  {
    v3 = [v5 _accessibilityMainWindow];
    v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_1013];
    MEMORY[0x29EDC9740](v3);
    v6 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v6 = 0;
  }

  v1 = v6;

  return v1;
}

- (id)_accessibilityApplicationWindowFramesAndIds
{
  v33 = *MEMORY[0x29EDCA608];
  v28 = a1;
  if (a1)
  {
    v27 = [v28 _accessibilityApplicationWindowContextIDs];
    v26 = [MEMORY[0x29EDB8DE8] array];
    v25 = [v28 _accessibilityMainWindow];
    v24 = AXUIKeyboardWindow();
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v27);
    v16 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(__b[1] + 8 * v13);
        location = [MEMORY[0x29EDC7DD0] _windowWithContextId:{objc_msgSend(v23, "unsignedIntValue")}];
        if (location)
        {
          v19 = 0u;
          v20 = 0u;
          [location accessibilityFrame];
          *&v19 = v1;
          *(&v19 + 1) = v2;
          *&v20 = v3;
          *(&v20 + 1) = v4;
          cf = AXValueCreate(kAXValueTypeCGRect, &v19);
          v17 = location == v24;
          v7 = v26;
          v30[0] = @"contextId";
          v31[0] = v23;
          v30[1] = @"frame";
          v31[1] = cf;
          v30[2] = @"isMainWindow";
          v10 = [MEMORY[0x29EDBA070] numberWithInt:v25 == location];
          v31[2] = v10;
          v30[3] = @"isKeyboardWindow";
          v9 = [MEMORY[0x29EDBA070] numberWithBool:v17];
          v31[3] = v9;
          v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
          [v7 addObject:?];
          MEMORY[0x29EDC9740](v8);
          MEMORY[0x29EDC9740](v9);
          MEMORY[0x29EDC9740](v10);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        objc_storeStrong(&location, 0);
        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v29 = MEMORY[0x29EDC9748](v26);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v29 = 0;
  }

  v5 = v29;

  return v5;
}

- (id)_accessibilityRealtimeElements
{
  v18 = *MEMORY[0x29EDCA608];
  v15 = a1;
  if (a1)
  {
    v14 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = [v15 _accessibilityWindows];
    v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v7);
        v11 = [v13 _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_1018];
        [v14 addObjectsFromArray:v11];
        objc_storeStrong(&v11, 0);
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    *&v1 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    v4 = [v14 reverseObjectEnumerator];
    v16 = [v4 allObjects];
    MEMORY[0x29EDC9740](v4);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v16 = 0;
  }

  v2 = v16;

  return v2;
}

- (uint64_t)_accessibilityIsInitialBundleLoadFinished
{
  if (a1)
  {
    v2 = [MEMORY[0x29EDBD698] defaultLoader];
    v3 = [v2 isInitialLoadFinished] & 1;
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_accessibilityMLProxiedElements
{
  v9 = a1;
  if (a1)
  {
    v8 = 0;
    v5 = MEMORY[0x29EDB8D80];
    v7 = [v9 _accessibilityMainWindow];
    v6 = [(UIWindowAccessibility *)v7 _accessibilityMLRemoteElement];
    v1 = [v5 axArrayByIgnoringNilElementsWithCount:{1, v6}];
    v2 = v8;
    v8 = v1;
    MEMORY[0x29EDC9740](v2);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
    v10 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v10 = 0;
  }

  v3 = v10;

  return v3;
}

- (void)_iosAccessibilitySetValue:(id)a3 forAttribute:(int64_t)a4
{
  v52 = *MEMORY[0x29EDCA608];
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = a4;
  switch(a4)
  {
    case 2603:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = MEMORY[0x29EDC9748](location[0]);
        [*MEMORY[0x29EDC8008] _accessibilitySetRetainedValue:v32 forKey:@"AXShowOnscreenKeyboardWithBraille"];
        if ([v32 BOOLValue])
        {
          v10 = [MEMORY[0x29EDC7B08] sharedInstance];
          v11 = [v10 isMinimized];
          MEMORY[0x29EDC9740](v10);
          if (v11)
          {
            AXPerformSafeBlock();
          }
        }

        else
        {
          v8 = [MEMORY[0x29EDC7B08] sharedInstance];
          v9 = [v8 isMinimized];
          MEMORY[0x29EDC9740](v8);
          if ((v9 & 1) == 0)
          {
            AXPerformSafeBlock();
          }
        }

        objc_storeStrong(&v32, 0);
      }

      else
      {
        v31 = AXLogBrailleHW();
        v30 = 2;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v6 = v31;
          v7 = v30;
          __os_log_helper_16_0_0(v29);
          _os_log_debug_impl(&dword_29C4D6000, v6, v7, "AXShowOnscreenKeyboardWithBraille set to nil", v29, 2u);
        }

        objc_storeStrong(&v31, 0);
        [*MEMORY[0x29EDC8008] _accessibilitySetRetainedValue:0 forKey:@"AXShowOnscreenKeyboardWithBraille"];
        AXPerformSafeBlock();
      }

      break;
    case 3060:
      v22 = [location[0] stringValue];
      *&v4 = MEMORY[0x29EDC9740](v22).n128_u64[0];
      if (v22)
      {
        v44 = [location[0] stringValue];
        v43 = AXLogSpeakScreen();
        v42 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v51, v44);
          _os_log_debug_impl(&dword_29C4D6000, v43, v42, "kAXSpeakThisRootElementAccessibilityIdentifierParameterizedAttribute %@", v51, 0xCu);
        }

        objc_storeStrong(&v43, 0);
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisRootElementAccessibilityIdentifier:v44];
        v20 = v47;
        v21 = [(UIApplicationAccessibility *)v47 _accessibilitySpeakThisElementWithIdentifier:v44];
        [(UIApplicationAccessibility *)v20 _accessibilitySetSpeakThisRootElement:?];
        MEMORY[0x29EDC9740](v21);
        objc_storeStrong(&v44, 0);
      }

      else
      {
        v41 = AXLogSpeakScreen();
        v40 = 2;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v18 = v41;
          v19 = v40;
          __os_log_helper_16_0_0(v39);
          _os_log_debug_impl(&dword_29C4D6000, v18, v19, "kAXSpeakThisRootElementAccessibilityIdentifierParameterizedAttribute set to nil", v39, 2u);
        }

        objc_storeStrong(&v41, 0);
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisRootElementAccessibilityIdentifier:0];
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisRootElement:0];
      }

      break;
    case 3061:
      v17 = [location[0] stringValue];
      *&v5 = MEMORY[0x29EDC9740](v17).n128_u64[0];
      if (v17)
      {
        v38 = [location[0] stringValue];
        v37 = AXLogSpeakScreen();
        v36 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v50, v38);
          _os_log_debug_impl(&dword_29C4D6000, v37, v36, "kAXSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSessionAttribute %@", v50, 0xCu);
        }

        objc_storeStrong(&v37, 0);
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:v38];
        v14 = v47;
        v16 = [MEMORY[0x29EDC7938] sharedApplication];
        v15 = [v16 _accessibilitySpeakThisViewsFromSceneWithSceneIdentifier:v38];
        [(UIApplicationAccessibility *)v14 _accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:?];
        MEMORY[0x29EDC9740](v15);
        MEMORY[0x29EDC9740](v16);
        objc_storeStrong(&v38, 0);
      }

      else
      {
        v35 = AXLogSpeakScreen();
        v34 = 2;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v12 = v35;
          v13 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_debug_impl(&dword_29C4D6000, v12, v13, "kAXSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSessionAttribute set to nil", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:0];
        [(UIApplicationAccessibility *)v47 _accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:0];
      }

      break;
    case 3071:
      if (location[0])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          oslog = AXLogCommon();
          v27 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v49, location[0]);
            _os_log_debug_impl(&dword_29C4D6000, oslog, v27, "Setting kAXApplicationIsFocusedOnContinuityDisplay: %@", v49, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          [(UIApplicationAccessibility *)v47 _accessibilitySetUIAppFocusedOnContinuityDisplay:location[0]];
        }
      }

      break;
    case 3075:
      if (location[0])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = AXLogCommon();
          v25 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v48, location[0]);
            _os_log_debug_impl(&dword_29C4D6000, v26, v25, "Setting kAXApplicationDisplayIDForContinuityDisplay: %@", v48, 0xCu);
          }

          objc_storeStrong(&v26, 0);
          [(UIApplicationAccessibility *)v47 _accessibilitySetUIAppDisplayIDForContinuityDisplay:location[0]];
        }
      }

      break;
    default:
      v24.receiver = v47;
      v24.super_class = UIApplicationAccessibility;
      [(UIApplicationAccessibility *)&v24 _iosAccessibilitySetValue:location[0] forAttribute:v45];
      break;
  }

  objc_storeStrong(location, 0);
}

double __69__UIApplicationAccessibility__iosAccessibilitySetValue_forAttribute___block_invoke()
{
  v1 = [MEMORY[0x29EDC7B08] sharedInstance];
  [v1 showKeyboardWithoutSuppressionPolicy];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

double __69__UIApplicationAccessibility__iosAccessibilitySetValue_forAttribute___block_invoke_2()
{
  v1 = [MEMORY[0x29EDC7B08] sharedInstance];
  [v1 hideKeyboard];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

double __69__UIApplicationAccessibility__iosAccessibilitySetValue_forAttribute___block_invoke_974()
{
  v1 = [MEMORY[0x29EDC7B08] sharedInstance];
  [v1 showKeyboardIfNeeded];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

- (BOOL)openURL:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UIApplicationAccessibility;
  v6 = [(UIApplicationAccessibility *)&v5 openURL:location[0]];
  if (v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityBundleIdentifier
{
  v3 = [MEMORY[0x29EDB9F48] mainBundle];
  v4 = [v3 bundleIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

uint64_t __57__UIApplicationAccessibility__accessibilityPreviewWindow__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"PreviewContainerElement"];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
  return v4;
}

uint64_t __60__UIApplicationAccessibility__accessibilityRealtimeElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityIsRealtimeElement];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)accessibilityLabel
{
  v21 = self;
  v20[1] = a2;
  v20[0] = [(UIApplicationAccessibility *)self accessibilityUserDefinedLabel];
  if (v20[0])
  {
    v22 = MEMORY[0x29EDC9748](v20[0]);
    v19 = 1;
  }

  else
  {
    v18 = [MEMORY[0x29EDB9F48] mainBundle];
    v16 = [v18 localizedInfoDictionary];
    v17 = [v16 objectForKey:@"CFBundleSpokenName"];
    if (![v17 length])
    {
      v15 = [v18 infoDictionary];
      v2 = [v15 objectForKey:@"CFBundleSpokenName"];
      v3 = v17;
      v17 = v2;
      MEMORY[0x29EDC9740](v3);
      MEMORY[0x29EDC9740](v15);
    }

    if (![v17 length])
    {
      v4 = [v18 objectForInfoDictionaryKey:*MEMORY[0x29EDB8EB8]];
      v5 = v17;
      v17 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (![v17 length])
    {
      v6 = [v18 objectForInfoDictionaryKey:*MEMORY[0x29EDB8F18]];
      v7 = v17;
      v17 = v6;
      MEMORY[0x29EDC9740](v7);
    }

    if (![v17 length])
    {
      v8 = [v18 objectForInfoDictionaryKey:*MEMORY[0x29EDB8F08]];
      v9 = v17;
      v17 = v8;
      MEMORY[0x29EDC9740](v9);
    }

    if (![v17 length])
    {
      v10 = [(UIApplicationAccessibility *)v21 _accessibilityBundleIdentifier];
      v11 = v17;
      v17 = v10;
      MEMORY[0x29EDC9740](v11);
    }

    [(UIApplicationAccessibility *)v21 setAccessibilityLabel:v17, &v17];
    v22 = MEMORY[0x29EDC9748](v17);
    v19 = 1;
    objc_storeStrong(location, 0);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(v20, 0);
  v12 = v22;

  return v12;
}

- (id)_accessibilityElementsWithSemanticContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  if (location[0])
  {
    objc_storeStrong(location, location[0]);
  }

  else
  {
    v16 = [MEMORY[0x29EDC7938] sharedApplication];
    v15 = 1;
    objc_storeStrong(location, v16);
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  v14 = [MEMORY[0x29EDC7328] options];
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel__accessibilitySemanticContextForElement_);
  Implementation = method_getImplementation(InstanceMethod);
  v6[1] = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__UIApplicationAccessibility__accessibilityElementsWithSemanticContext___block_invoke;
  v10 = &__block_descriptor_40_e8_B16__0_8l;
  v11 = Implementation;
  [v14 setLeafNodePredicate:?];
  v6[0] = [location[0] _accessibilityLeafDescendantsWithOptions:v14];
  v5 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v5;
}

uint64_t __72__UIApplicationAccessibility__accessibilityElementsWithSemanticContext___block_invoke(IMP *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] _accessibilitySupportsSemanticContext];
  if (v6)
  {
    v2 = objc_opt_class();
    m = class_getInstanceMethod(v2, sel__accessibilitySemanticContextForElement_);
    v6 = method_getImplementation(m) != a1[4];
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (uint64_t)_accessibilityActionIsPhysicalButton:(uint64_t *)a3 nativeUIKitTypeRef:
{
  if (a1)
  {
    v5 = 1;
    v4 = -1;
    switch(a2)
    {
      case 4000:
        v4 = 4;
        break;
      case 4001:
        v4 = 7;
        break;
      case 4002:
        v4 = 5;
        break;
      case 4003:
        v4 = 6;
        break;
      case 4004:
        v4 = 0;
        break;
      case 4005:
        v4 = 1;
        break;
      case 4006:
        v4 = 3;
        break;
      case 4007:
        v4 = 2;
        break;
      case 4008:
        v4 = 8;
        break;
      case 4009:
        v4 = 9;
        break;
      case 4010:
        v4 = 10;
        break;
      case 4011:
        v4 = 11;
        break;
      case 4012:
        v4 = 12;
        break;
      case 4013:
        v4 = 13;
        break;
      case 4014:
        v4 = 14;
        break;
      case 4015:
        v4 = 15;
        break;
      case 4016:
        v4 = 16;
        break;
      case 4017:
        v4 = 17;
        break;
      case 4018:
        v4 = 18;
        break;
      default:
        v5 = 0;
        break;
    }

    if (a3)
    {
      *a3 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_accessibilityMakeUIPressInfoWithType:(uint64_t)a3 phase:(int)a4 timestamp:(double)a5 contextID:
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a5;
  v14 = a4;
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 838860800;
    v10 = 48;
    v11 = __Block_byref_object_copy__5;
    v12 = __Block_byref_object_dispose__5;
    v13 = 0;
    AXPerformSafeBlock();
    v19 = MEMORY[0x29EDC9748](v8[5]);
    _Block_object_dispose(&v7, 8);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v19 = 0;
  }

  v5 = v19;

  return v5;
}

uint64_t __94__UIApplicationAccessibility__accessibilityMakeUIPressInfoWithType_phase_timestamp_contextID___block_invoke(uint64_t a1)
{
  v6 = 1.0;
  if (*(a1 + 40) == 3 || *(a1 + 40) == 4)
  {
    v6 = 0.0;
  }

  v1 = objc_alloc_init(NSClassFromString(&cfstr_Uipressinfo.isa));
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  [*(*(*(a1 + 32) + 8) + 40) setType:{*(a1 + 48), MEMORY[0x29EDC9740](v3).n128_f64[0]}];
  [*(*(*(a1 + 32) + 8) + 40) setPhase:*(a1 + 40)];
  [*(*(*(a1 + 32) + 8) + 40) setTimestamp:*(a1 + 56)];
  [*(*(*(a1 + 32) + 8) + 40) setForce:v6];
  [*(*(*(a1 + 32) + 8) + 40) setContextID:*(a1 + 64)];
  return [*(*(*(a1 + 32) + 8) + 40) setSource:3];
}

- (BOOL)_accessibilityDispatchScrollWithAmount:(int64_t)a3
{
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a3 >= 0;
  v29 = 0;
  v28 = 0.0;
  while (1)
  {
    v27 = v29;
    v12 = v29 < 0 ? -v27 : v27;
    v26 = v12;
    v25 = v31;
    v11 = v31 < 0 ? -v25 : v25;
    v24 = v11;
    if (v12 >= v11)
    {
      break;
    }

    v28 = v28 + 0.02;
    v23 = 5;
    v21 = v31;
    if (v31 < 0)
    {
      v10 = -v21;
    }

    else
    {
      v10 = v21;
    }

    v20 = v10;
    v19 = v29;
    if (v29 < 0)
    {
      v9 = -v19;
    }

    else
    {
      v9 = v19;
    }

    v18[2] = v9;
    v22 = v10 - v9;
    if (v10 - v9 < v23)
    {
      v23 = v22;
    }

    if (v30)
    {
      v8 = v23;
    }

    else
    {
      v8 = -v23;
    }

    v23 = v8;
    when = dispatch_time(0, (v28 * 1000000000.0));
    v5 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    queue = v5;
    v13 = MEMORY[0x29EDCA5F8];
    v14 = -1073741824;
    v15 = 0;
    v16 = __69__UIApplicationAccessibility__accessibilityDispatchScrollWithAmount___block_invoke;
    v17 = &unk_29F30C690;
    v18[1] = v23;
    v18[0] = MEMORY[0x29EDC9748](v33);
    dispatch_after(when, queue, &v13);
    MEMORY[0x29EDC9740](queue);
    v29 += v23;
    objc_storeStrong(v18, 0);
  }

  return 1;
}

void __69__UIApplicationAccessibility__accessibilityDispatchScrollWithAmount___block_invoke(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 838860800;
  v7 = 48;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  AXPerformSafeBlock();
  v3 = MEMORY[0x29EDC9748](v5[5]);
  _Block_object_dispose(&v4, 8);
  objc_storeStrong(&v10, 0);
  v11[0] = v3;
  mach_absolute_time();
  cf = IOHIDEventCreateScrollEvent();
  [v11[0] _setHIDEvent:cf];
  if (cf)
  {
    CFRelease(cf);
  }

  [a1[4] sendEvent:v11[0]];
  objc_storeStrong(v11, 0);
}

double __69__UIApplicationAccessibility__accessibilityDispatchScrollWithAmount___block_invoke_2(uint64_t a1)
{
  v1 = objc_alloc_init(NSClassFromString(&cfstr_Uiwheelevent.isa));
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v22 = a5;
  v21 = 0;
  if (([(UIApplicationAccessibility *)v26 _accessibilityActionIsPhysicalButton:v24 nativeUIKitTypeRef:&v21]& 1) != 0)
  {
    v7 = [MEMORY[0x29EDB8DB0] date];
    [v7 timeIntervalSinceNow];
    v8 = v5;
    MEMORY[0x29EDC9740](v7);
    v20[1] = v8;
    v20[0] = [(UIApplicationAccessibility *)v26 _accessibilityMakeUIPressInfoWithType:v21 phase:0 timestamp:[(UIApplicationAccessibility *)v26 _accessibilityGetContextID] contextID:*&v8];
    v9 = [MEMORY[0x29EDC7938] sharedApplication];
    [v9 _sendButtonEventWithPressInfo:v20[0]];
    MEMORY[0x29EDC9740](v9);
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __81__UIApplicationAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke;
    v18 = &unk_29F30C690;
    v19[0] = MEMORY[0x29EDC9748](v26);
    v19[1] = v21;
    AXPerformBlockOnMainThreadAfterDelay();
    v27 = 1;
    v13 = 1;
    objc_storeStrong(v19, 0);
    objc_storeStrong(v20, 0);
  }

  else if (v24 == 5016)
  {
    [(UIApplicationAccessibility *)v26 _accessibilityShowKeyboardHints];
    v27 = 1;
    v13 = 1;
  }

  else if (v24 == 2049)
  {
    [(UIApplicationAccessibility *)v26 _accessibilityStartStopDictation];
    v27 = 1;
    v13 = 1;
  }

  else if (v24 != 5021 || ((v12 = MEMORY[0x29EDC9748](location), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v13 = 0) : (v27 = -[UIApplicationAccessibility _accessibilityDispatchScrollWithAmount:](v26, "_accessibilityDispatchScrollWithAmount:", [v12 integerValue]), v13 = 1), objc_storeStrong(&v12, 0), !v13))
  {
    if (([(UIApplicationAccessibility *)v26 _accessibilityHandleFullKeyboardAccessAction:v24 value:location]& 1) != 0)
    {
      v27 = 1;
      v13 = 1;
    }

    else if (v24 - 4100 <= 3)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityApplicationHandleButtonAction:v24]& 1;
      v13 = 1;
    }

    else if (v24 == 5200)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaPlay]& 1;
      v13 = 1;
    }

    else if (v24 == 5201)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaPause]& 1;
      v13 = 1;
    }

    else if (v24 == 5202)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaPlayPause]& 1;
      v13 = 1;
    }

    else if (v24 == 5203)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaNextTrack]& 1;
      v13 = 1;
    }

    else if (v24 == 5204)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaPreviousTrack]& 1;
      v13 = 1;
    }

    else if (v24 == 5205)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaSkipDuration:?]& 1;
      v13 = 1;
    }

    else if (v24 == 5207)
    {
      v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaRewind]& 1;
      v13 = 1;
    }

    else
    {
      if (v24 == 5208)
      {
        v27 = [(UIApplicationAccessibility *)v26 _accessibilityMediaFastForward]& 1;
      }

      else
      {
        v11.receiver = v26;
        v11.super_class = UIApplicationAccessibility;
        v27 = [(UIApplicationAccessibility *)&v11 _iosAccessibilityPerformAction:v24 withValue:location fencePort:v22];
      }

      v13 = 1;
    }
  }

  objc_storeStrong(&location, 0);
  return v27 & 1;
}

void __81__UIApplicationAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke(uint64_t *a1)
{
  v6[3] = a1;
  v6[2] = a1;
  v2 = [MEMORY[0x29EDB8DB0] date];
  [v2 timeIntervalSinceNow];
  v3 = v1;
  MEMORY[0x29EDC9740](v2);
  v6[1] = v3;
  v6[0] = -[UIApplicationAccessibility _accessibilityMakeUIPressInfoWithType:phase:timestamp:contextID:](a1[4], a1[5], 3, [a1[4] _accessibilityGetContextID], *&v3);
  v5 = [MEMORY[0x29EDC7938] sharedApplication];
  [v5 _sendButtonEventWithPressInfo:v6[0]];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(v6, 0);
}

- (uint64_t)_accessibilityShowKeyboardHints
{
  if (result)
  {
    return AXPerformSafeBlock();
  }

  return result;
}

- (uint64_t)_accessibilityHandleFullKeyboardAccessAction:(id)obj value:
{
  v45 = *MEMORY[0x29EDCA608];
  v42 = a1;
  v41 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v42)
  {
    v38 = 0;
    switch(v41)
    {
      case 5310:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = 0;
          memset(__b, 0, 0x40uLL);
          v35 = 0;
          objc_opt_class();
          v27 = 0;
          v28 = &v27;
          v29 = 838860800;
          v30 = 48;
          v31 = __Block_byref_object_copy__5;
          v32 = __Block_byref_object_dispose__5;
          v33 = 0;
          v21 = MEMORY[0x29EDCA5F8];
          v22 = -1073741824;
          v23 = 0;
          v24 = __81__UIApplicationAccessibility__accessibilityHandleFullKeyboardAccessAction_value___block_invoke;
          v25 = &unk_29F30CA38;
          v26 = &v27;
          AXPerformSafeBlock();
          v20 = MEMORY[0x29EDC9748](v28[5]);
          _Block_object_dispose(&v27, 8);
          objc_storeStrong(&v33, 0);
          v34 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v20);
          if (v35)
          {
            abort();
          }

          v19 = MEMORY[0x29EDC9748](v34);
          objc_storeStrong(&v34, 0);
          obja = v19;
          v14 = [v19 countByEnumeratingWithState:__b objects:v44 count:16];
          if (v14)
          {
            v10 = *__b[2];
            v11 = 0;
            v12 = v14;
            while (1)
            {
              v9 = v11;
              if (*__b[2] != v10)
              {
                objc_enumerationMutation(obja);
              }

              __b[8] = *(__b[1] + 8 * v11);
              v17 = 0;
              objc_opt_class();
              v16 = __UIAccessibilityCastAsClass();
              if (v17)
              {
                abort();
              }

              v15 = MEMORY[0x29EDC9748](v16);
              objc_storeStrong(&v16, 0);
              v18 = v15;
              v8 = [v15 safeValueForKey:@"_FBSScene"];
              v6 = [v8 safeStringForKey:@"identifier"];
              v7 = [v6 isEqualToString:location];
              MEMORY[0x29EDC9740](v6);
              MEMORY[0x29EDC9740](v8);
              if (v7)
              {
                objc_storeStrong(&v37, v18);
                v39 = 3;
              }

              else
              {
                v39 = 0;
              }

              objc_storeStrong(&v18, 0);
              if (v39)
              {
                break;
              }

              ++v11;
              if (v9 + 1 >= v12)
              {
                v11 = 0;
                v12 = [obja countByEnumeratingWithState:__b objects:v44 count:16];
                if (!v12)
                {
                  goto LABEL_22;
                }
              }
            }
          }

          else
          {
LABEL_22:
            v39 = 0;
          }

          *&v3 = MEMORY[0x29EDC9740](obja).n128_u64[0];
          v5 = [v37 keyWindow];
          [v5 makeKeyWindow];
          MEMORY[0x29EDC9740](v5);
          v38 = 1;
          objc_storeStrong(&v37, 0);
        }

        break;
      case 5311:
        v38 = [v42 _accessibilityResetAndClearNativeFocusSystem];
        break;
      case 5313:
        v38 = [v42 _accessibilityUpdateNativeFocusImmediately];
        break;
    }

    v43 = v38 & 1;
    v39 = 1;
  }

  else
  {
    v43 = 0;
    v39 = 1;
  }

  objc_storeStrong(&location, 0);
  return v43 & 1;
}

- (uint64_t)_accessibilityMediaPlay
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    [a1 _accessibilitySetLastMediaRemoteCommand:?];
    MRMediaRemoteSendCommand();
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaPause
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [a1 _accessibilitySetLastMediaRemoteCommand:1];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaPlayPause
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    [a1 _accessibilitySetLastMediaRemoteCommand:?];
    MRMediaRemoteSendCommand();
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaNextTrack
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [a1 _accessibilitySetLastMediaRemoteCommand:4];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaPreviousTrack
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [a1 _accessibilitySetLastMediaRemoteCommand:5];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaSkipDuration:(void *)a1
{
  v13[1] = *MEMORY[0x29EDCA608];
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v9)
  {
    [(UIApplicationAccessibility *)v9 _accessibilityCancelRewindOrFastForward];
    [location doubleValue];
    if (v2 <= 0.0)
    {
      v3 = 18;
    }

    else
    {
      v3 = 17;
    }

    v7 = v3;
    v11 = v2;
    v12 = *MEMORY[0x29EDC5930];
    v6 = [MEMORY[0x29EDBA070] numberWithDouble:fabs(v2)];
    v13[0] = v6;
    [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    MRMediaRemoteSendCommand();
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    [v9 _accessibilitySetLastMediaRemoteCommand:{v7, v4}];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&location, 0);
  return v10 & 1;
}

- (uint64_t)_accessibilityMediaRewind
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [a1 _accessibilitySetLastMediaRemoteCommand:10];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaFastForward
{
  if (a1)
  {
    [(UIApplicationAccessibility *)a1 _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [a1 _accessibilitySetLastMediaRemoteCommand:8];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __61__UIApplicationAccessibility__accessibilityShowKeyboardHints__block_invoke(void *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = [NSClassFromString(&cfstr_Uikeyshortcuth_14.isa) safeValueForKey:@"sharedHUDService"];
  [v1[0] scheduleHUDPresentation];
  objc_storeStrong(v1, 0);
}

double __81__UIApplicationAccessibility__accessibilityHandleFullKeyboardAccessAction_value___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7DD8] _scenesIncludingInternal:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityFocusableScenesDictionary
{
  v8 = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v6 = [(UIApplicationAccessibility *)v8 _accessibilityFocusableScenes];
  v3 = v6;
  v5 = MEMORY[0x29EDC9748](v7[0]);
  [v3 enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v4;
}

void __69__UIApplicationAccessibility__accessibilityFocusableScenesDictionary__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20[3] = a3;
  v20[2] = a4;
  v20[1] = a1;
  v13 = MEMORY[0x29EDBA070];
  v19 = 0;
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v9 = [v17 screen];
  v8 = [v9 displayIdentity];
  v20[0] = [v13 numberWithUnsignedInt:{objc_msgSend(v8, "displayID")}];
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  *&v4 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  if (v20[0])
  {
    v7 = [a1[4] objectForKeyedSubscript:{v20[0], v4}];
    v14 = 0;
    if (v7)
    {
      v5 = MEMORY[0x29EDC9748](v7);
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v14 = 1;
      v5 = MEMORY[0x29EDC9748](v15);
    }

    v16 = v5;
    if (v14)
    {
      MEMORY[0x29EDC9740](v15);
    }

    *&v6 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    [v16 addObject:{location[0], v6}];
    [a1[4] setObject:v16 forKeyedSubscript:v20[0]];
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(v20, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityFocusableScenes
{
  v3 = [(UIApplicationAccessibility *)self _accessibilityActiveScenes];
  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_1036];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

uint64_t __59__UIApplicationAccessibility__accessibilityFocusableScenes__block_invoke(void *a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a3;
  v11 = a1;
  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v4 = [v8 _focusSystemSceneComponent];
  v5 = [objc_opt_class() safeBoolForKey:@"needsFocusSystem"];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v8);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_accessibilityActiveScenes
{
  v16 = self;
  v15 = a2;
  v14 = 0;
  objc_opt_class();
  v6 = 0;
  v7 = &v6;
  v8 = 838860800;
  v9 = 48;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  AXPerformSafeBlock();
  v5 = MEMORY[0x29EDC9748](v7[5]);
  _Block_object_dispose(&v6, 8);
  objc_storeStrong(&v12, 0);
  v13 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  if (v14)
  {
    abort();
  }

  v4 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v3 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_1038];
  MEMORY[0x29EDC9740](v4);

  return v3;
}

double __56__UIApplicationAccessibility__accessibilityActiveScenes__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7DD8] _scenesIncludingInternal:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

BOOL __56__UIApplicationAccessibility__accessibilityActiveScenes__block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[2] = a3;
  v10[1] = a1;
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  v4 = [v7 activationState] == 0;
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_accessibilityWindowSceneForSceneID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(UIApplicationAccessibility *)v9 _accessibilityActiveScenes];
  v7 = MEMORY[0x29EDC9748](location[0]);
  v4 = [v5 ax_filteredArrayUsingBlock:?];
  v6 = [v4 firstObject];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v7, 0);
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);

  return v6;
}

uint64_t __66__UIApplicationAccessibility__accessibilityWindowSceneForSceneID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = a3;
  v14 = a4;
  v13 = a1;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v5 = [v10 _sceneIdentifier];
  v6 = [v5 isEqualToString:a1[4]];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v10);
  if (v6)
  {
    *v14 = 1;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(location, 0);
  return v17 & 1;
}

- (id)_accessibilityFocusContainer
{
  v3 = [(UIApplicationAccessibility *)self _accessibilityPreferredFocusedWindow];
  v4 = [v3 _accessibilityFocusContainer];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityFocusedScene
{
  v3 = [(UIApplicationAccessibility *)self _accessibilityPreferredFocusedWindow];
  v4 = [v3 windowScene];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4
{
  v5 = [(UIApplicationAccessibility *)self _accessibilityFocusContainer];
  v6 = [v5 _accessibilityMoveFocusWithHeading:a3 byGroup:a4];
  MEMORY[0x29EDC9740](v5);
  return v6;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v6 = [(UIApplicationAccessibility *)v11 _accessibilityPreferredFocusedWindow];
  v5 = [v6 windowScene];
  v7 = [v5 _accessibilityMoveFocusWithHeading:v9 toElementMatchingQuery:location];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)_accessibilityDidFocusOnApplication
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIApplicationAccessibility *)self _accessibilityNativeFocusElement];
  if ([location[0] _accessibilityHandlesRemoteFocusMovement])
  {
    [location[0] _accessibilitySetFocusOnElement:1];
  }

  objc_storeStrong(location, 0);
}

- (id)_responderForKeyEvents
{
  location[2] = self;
  location[1] = a2;
  v6.receiver = self;
  v6.super_class = UIApplicationAccessibility;
  location[0] = [(UIApplicationAccessibility *)&v6 _responderForKeyEvents];
  if ((_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0 && !_AXSFullKeyboardAccessPassthroughModeEnabled())
  {
    v4 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    v5 = [v4 safeValueForKey:@"_focusResponder"];
    if (v5)
    {
      objc_storeStrong(location, v5);
    }

    else
    {
      objc_storeStrong(location, location[0]);
    }

    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v4);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_targetInChainForAction:(SEL)a3 sender:(id)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14.receiver = v19;
  v14.super_class = UIApplicationAccessibility;
  v15 = [(UIApplicationAccessibility *)&v14 _targetInChainForAction:v17 sender:location];
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v12 = 0;
    objc_opt_class();
    v9 = [(UIApplicationAccessibility *)v19 safeValueForKey:@"_responderForKeyEvents"];
    v11 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v9);
    v10 = MEMORY[0x29EDC9748](v11);
    objc_storeStrong(&v11, 0);
    v13 = v10;
    while (1)
    {
      LOBYTE(v8) = 0;
      if (v13)
      {
        v8 = [v13 canPerformAction:v17 withSender:location] ^ 1;
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      v4 = [v13 nextResponder];
      v5 = v13;
      v13 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (v13)
    {
      objc_storeStrong(&v15, v13);
    }

    else
    {
      objc_storeStrong(&v15, v15);
    }

    objc_storeStrong(&v13, 0);
  }

  v7 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)_axAuditCheckDynamicTextSupport:(char)a3 andClippingIssues:(char)a4 spinRunloop:
{
  v237 = *MEMORY[0x29EDCA608];
  v229 = a1;
  v228 = a2;
  v227 = a3;
  v226 = a4;
  if (!a1)
  {
    v230 = 0;
    goto LABEL_75;
  }

  v225 = [MEMORY[0x29EDB8DE8] array];
  v224 = [MEMORY[0x29EDBA028] weakToStrongObjectsMapTable];
  v223 = [MEMORY[0x29EDBA028] weakToStrongObjectsMapTable];
  v222 = 0;
  v221 = [MEMORY[0x29EDB9FD0] weakObjectsHashTable];
  v138 = MEMORY[0x29EDC7368];
  v141 = [MEMORY[0x29EDC7938] sharedApplication];
  v140 = [v141 _accessibilityMainWindow];
  v139 = [v140 rootViewController];
  v220 = [v138 _axAuditFindFrontmostViewControllerForHierarchy:?];
  MEMORY[0x29EDC9740](v139);
  MEMORY[0x29EDC9740](v140);
  *&v4 = MEMORY[0x29EDC9740](v141).n128_u64[0];
  v142 = MEMORY[0x29EDC7368];
  v143 = [v220 view];
  [v142 _axAuditCaptureReferenceToCellsForViewHierarchy:?];
  v144 = [MEMORY[0x29EDC7A10] system];
  v219 = [v144 preferredContentSizeCategory];
  v218 = [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:{1, MEMORY[0x29EDC9740](v144).n128_f64[0]}];
  if (v218)
  {
    v217 = [MEMORY[0x29EDC7368] _axAuditGetAllFontSizes];
    v134 = MEMORY[0x29EDC7368];
    v135 = [v220 view];
    v216 = [v134 _accessibilityGetAllSwiftUISubviews:? withFiltering:?];
    MEMORY[0x29EDC9740](v135);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v217);
    v137 = [obj countByEnumeratingWithState:__b objects:v236 count:16];
    if (v137)
    {
      v131 = *__b[2];
      v132 = 0;
      v133 = v137;
      while (1)
      {
        v130 = v132;
        if (*__b[2] != v131)
        {
          objc_enumerationMutation(obj);
        }

        v215 = *(__b[1] + 8 * v132);
        [MEMORY[0x29EDC7368] _axAuditUIKitShouldReportFontSize:v215];
        if (v226)
        {
          [MEMORY[0x29EDC7368] _axAuditSpinRunloopForDuration:0.1];
        }

        v121 = [v220 view];
        [v121 setNeedsLayout];
        *&v5 = MEMORY[0x29EDC9740](v121).n128_u64[0];
        v122 = [v220 view];
        [v122 layoutIfNeeded];
        *&v6 = MEMORY[0x29EDC9740](v122).n128_u64[0];
        v123 = MEMORY[0x29EDC7368];
        v124 = [v220 view];
        v213 = [v123 _accessibilityGetAllSubviews:? withFiltering:?];
        *&v7 = MEMORY[0x29EDC9740](v124).n128_u64[0];
        v125 = MEMORY[0x29EDC7368];
        v127 = [v220 view];
        v126 = [v125 _accessibilityGetAllSubviews:? withFiltering:?];
        v212 = [v126 mutableCopy];
        MEMORY[0x29EDC9740](v126);
        *&v8 = MEMORY[0x29EDC9740](v127).n128_u64[0];
        v211 = [v212 mutableCopy];
        [MEMORY[0x29EDC7368] _axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:v213];
        v210 = MEMORY[0x29ED3E4C0](&__block_literal_global_1053);
        v209 = MEMORY[0x29ED3E4C0](&__block_literal_global_1058);
        [MEMORY[0x29EDC7368] _axAuditRemoveUIViewsFromArray:v212 usingFilter:v210];
        [MEMORY[0x29EDC7368] _axAuditRemoveUIViewsFromArray:v211 usingFilter:v209];
        location = [v220 view];
        [MEMORY[0x29EDC7368] _axAuditUpdateReferenceOfCellsForViewHierarchy:location forFontSize:v215];
        memset(v206, 0, sizeof(v206));
        v128 = MEMORY[0x29EDC9748](v212);
        v129 = [v128 countByEnumeratingWithState:v206 objects:v235 count:16];
        if (v129)
        {
          v118 = *v206[2];
          v119 = 0;
          v120 = v129;
          while (1)
          {
            v117 = v119;
            if (*v206[2] != v118)
            {
              objc_enumerationMutation(v128);
            }

            v207 = *(v206[1] + 8 * v119);
            [MEMORY[0x29EDC7368] _axAuditStoreFontForElement:v207 intoDictionary:v224 forCurrentFont:v215];
            ++v119;
            if (v117 + 1 >= v120)
            {
              v119 = 0;
              v120 = [v128 countByEnumeratingWithState:v206 objects:v235 count:16];
              if (!v120)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](v128);
        memset(v204, 0, sizeof(v204));
        v115 = MEMORY[0x29EDC9748](v216);
        v116 = [v115 countByEnumeratingWithState:v204 objects:v234 count:16];
        if (v116)
        {
          v112 = *v204[2];
          v113 = 0;
          v114 = v116;
          while (1)
          {
            v111 = v113;
            if (*v204[2] != v112)
            {
              objc_enumerationMutation(v115);
            }

            v205 = *(v204[1] + 8 * v113);
            [MEMORY[0x29EDC7368] _axAuditStoreFontForSwiftUIView:v205 intoDictionary:v223 forCurrentFont:v215];
            [MEMORY[0x29EDC7368] _axAuditCheckSwiftUIViewForClipping:v205 storeIntoSet:v221];
            ++v113;
            if (v111 + 1 >= v114)
            {
              v113 = 0;
              v114 = [v115 countByEnumeratingWithState:v204 objects:v234 count:16];
              if (!v114)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](v115);
        memset(v202, 0, sizeof(v202));
        v109 = MEMORY[0x29EDC9748](v211);
        v110 = [v109 countByEnumeratingWithState:v202 objects:v233 count:16];
        if (v110)
        {
          v106 = *v202[2];
          v107 = 0;
          v108 = v110;
          while (1)
          {
            v105 = v107;
            if (*v202[2] != v106)
            {
              objc_enumerationMutation(v109);
            }

            v203 = *(v202[1] + 8 * v107);
            [MEMORY[0x29EDC7368] _axAuditCheckElementForClipping:v203 storeIntoSet:v221];
            ++v107;
            if (v105 + 1 >= v108)
            {
              v107 = 0;
              v108 = [v109 countByEnumeratingWithState:v202 objects:v233 count:16];
              if (!v108)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](v109);
        objc_storeStrong(&location, 0);
        objc_storeStrong(&v209, 0);
        objc_storeStrong(&v210, 0);
        objc_storeStrong(&v211, 0);
        objc_storeStrong(&v212, 0);
        objc_storeStrong(&v213, 0);
        ++v132;
        if (v130 + 1 >= v133)
        {
          v132 = 0;
          v133 = [obj countByEnumeratingWithState:__b objects:v236 count:16];
          if (!v133)
          {
            break;
          }
        }
      }
    }

    *&v9 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    [MEMORY[0x29EDC7368] _axAuditUIKitShouldReportFontSize:{v219, v9}];
    [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:0];
    [MEMORY[0x29EDC7368] _axAuditSpinRunloopForDuration:0.1];
    v101 = [v220 view];
    v10 = [v101 accessibilityElements];
    *&v11 = MEMORY[0x29EDC9740](v101).n128_u64[0];
    v102 = MEMORY[0x29EDC7368];
    v104 = [v220 view];
    v103 = [v102 _accessibilityGetAllSubviews:? withFiltering:?];
    [v102 _axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:?];
    MEMORY[0x29EDC9740](v103);
    *&v12 = MEMORY[0x29EDC9740](v104).n128_u64[0];
    v201 = [v220 view];
    v200 = [MEMORY[0x29EDC7368] _axAuditDereferenceCellsForViewHierarchy:v201];
    v199 = [v200 objectForKey:@"Font Info for Cells"];
    v198 = [v200 objectForKey:@"Clipping Info for Cells"];
    [v229 _addEntriesToMapTable:v224 fromMapTable:v199];
    [v221 unionHashTable:v198];
    [MEMORY[0x29EDC7368] _axAuditRemoveUnsupportedCategories:v224];
    v13 = [MEMORY[0x29EDC7368] _axAuditFindElementsNotSupportingDynamicText:v224];
    v14 = v222;
    v222 = v13;
    *&v15 = MEMORY[0x29EDC9740](v14).n128_u64[0];
    v197 = [MEMORY[0x29EDC7368] _axAuditFindElementsNotSupportingDynamicText:{v223, v15}];
    [v229 _addEntriesToMapTable:v222 fromMapTable:v197];
    if (v228)
    {
      memset(v195, 0, sizeof(v195));
      v99 = MEMORY[0x29EDC9748](v222);
      v100 = [v99 countByEnumeratingWithState:v195 objects:v232 count:16];
      if (v100)
      {
        v96 = *v195[2];
        v97 = 0;
        v98 = v100;
        while (1)
        {
          v95 = v97;
          if (*v195[2] != v96)
          {
            objc_enumerationMutation(v99);
          }

          v196 = *(v195[1] + 8 * v97);
          v194 = [v222 objectForKey:v196];
          v193 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v194 forKey:@"AuditIssueUnsupportedFontSizes"];
          v192 = 3002;
          v93 = [v194 sortedArrayUsingSelector:0x1FB932CF3uLL];
          v92 = [v217 sortedArrayUsingSelector:0x1FB932CF3uLL];
          v94 = [v93 isEqualToArray:?];
          MEMORY[0x29EDC9740](v92);
          MEMORY[0x29EDC9740](v93);
          if (v94)
          {
            v192 = 3001;
            objc_storeStrong(&v193, 0);
          }

          v191 = 0;
          v190 = 0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v189 = MEMORY[0x29EDC9748](v196);
            if ([v189 _accessibilityViewIsVisible])
            {
              v91 = [v189 window];
              v16 = MEMORY[0x29EDC9740](v91).n128_u64[0];
              if (v91)
              {
                v186 = 0;
                v187 = 0;
                v90 = [v189 superview];
                [v189 frame];
                *&v182 = v17;
                *(&v182 + 1) = v18;
                v183 = v19;
                v184 = v20;
                v185 = v182;
                [v90 convertPoint:0 toView:{v17, v18}];
                v186 = v21;
                v187 = v22;
                MEMORY[0x29EDC9740](v90);
                v180 = 0u;
                v181 = 0u;
                [v189 bounds];
                v176 = v23;
                v177 = v24;
                v178 = v25;
                v179 = v26;
                [v189 bounds];
                v172 = v27;
                v173 = v28;
                v174 = v29;
                v175 = v30;
                CGRectMake_1();
                *&v180 = v31;
                *(&v180 + 1) = v32;
                *&v181 = v33;
                *(&v181 + 1) = v34;
                v35 = [MEMORY[0x29EDBA168] valueWithCGRect:{v31, v32, v33, v34}];
                v36 = v191;
                v191 = v35;
                v16 = MEMORY[0x29EDC9740](v36).n128_u64[0];
              }

              v37 = [MEMORY[0x29EDC7368] _axAuditGetTextFromObject:{v189, *&v16}];
              v38 = v190;
              v190 = v37;
              MEMORY[0x29EDC9740](v38);
              v188 = 0;
            }

            else
            {
              v188 = 11;
            }

            objc_storeStrong(&v189, 0);
            if (v188)
            {
              goto LABEL_50;
            }
          }

          else if ([MEMORY[0x29EDC7368] _axAuditViewIsSwiftUI:v196])
          {
            v89 = [MEMORY[0x29EDC7368] _axAuditGetAttrLabelFromSwiftUIView:v196];
            v39 = [v89 string];
            v40 = v190;
            v190 = v39;
            MEMORY[0x29EDC9740](v40);
            MEMORY[0x29EDC9740](v89);
            if (objc_opt_respondsToSelector())
            {
              v170 = 0u;
              v171 = 0u;
              [v196 accessibilityFrame];
              *&v170 = v41;
              *(&v170 + 1) = v42;
              *&v171 = v43;
              *(&v171 + 1) = v44;
              v45 = [MEMORY[0x29EDBA168] valueWithCGRect:{v41, v42, v43, v44}];
              v46 = v191;
              v191 = v45;
              MEMORY[0x29EDC9740](v46);
            }
          }

          v169 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:v192 element:v196 additionalInfo:v193 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:v191 elementRect:v190 text:?];
          [v225 addObject:v169];
          objc_storeStrong(&v169, 0);
          v188 = 0;
LABEL_50:
          objc_storeStrong(&v190, 0);
          objc_storeStrong(&v191, 0);
          objc_storeStrong(&v193, 0);
          objc_storeStrong(&v194, 0);
          ++v97;
          if (v95 + 1 >= v98)
          {
            v97 = 0;
            v98 = [v99 countByEnumeratingWithState:v195 objects:v232 count:16];
            if (!v98)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](v99);
    }

    if (v227)
    {
      memset(v167, 0, sizeof(v167));
      v87 = MEMORY[0x29EDC9748](v221);
      v88 = [v87 countByEnumeratingWithState:v167 objects:v231 count:16];
      if (v88)
      {
        v84 = *v167[2];
        v85 = 0;
        v86 = v88;
        while (1)
        {
          v83 = v85;
          if (*v167[2] != v84)
          {
            objc_enumerationMutation(v87);
          }

          v168 = *(v167[1] + 8 * v85);
          v166 = 0;
          v165 = 0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v164 = MEMORY[0x29EDC9748](v168);
            if ([v164 _accessibilityViewIsVisible])
            {
              v82 = [v164 window];
              v47 = MEMORY[0x29EDC9740](v82).n128_u64[0];
              if (v82)
              {
                v162 = 0;
                v163 = 0;
                v81 = [v164 superview];
                [v164 frame];
                *&v158 = v48;
                *(&v158 + 1) = v49;
                v159 = v50;
                v160 = v51;
                v161 = v158;
                [v81 convertPoint:0 toView:{v48, v49}];
                v162 = v52;
                v163 = v53;
                MEMORY[0x29EDC9740](v81);
                v156 = 0u;
                v157 = 0u;
                [v164 bounds];
                v152 = v54;
                v153 = v55;
                v154 = v56;
                v155 = v57;
                [v164 bounds];
                v148 = v58;
                v149 = v59;
                v150 = v60;
                v151 = v61;
                CGRectMake_1();
                *&v156 = v62;
                *(&v156 + 1) = v63;
                *&v157 = v64;
                *(&v157 + 1) = v65;
                v66 = [MEMORY[0x29EDBA168] valueWithCGRect:{v62, v63, v64, v65}];
                v67 = v166;
                v166 = v66;
                v47 = MEMORY[0x29EDC9740](v67).n128_u64[0];
              }

              v68 = [MEMORY[0x29EDC7368] _axAuditGetTextFromObject:{v164, *&v47}];
              v69 = v165;
              v165 = v68;
              MEMORY[0x29EDC9740](v69);
              v188 = 0;
            }

            else
            {
              v188 = 13;
            }

            objc_storeStrong(&v164, 0);
            if (v188)
            {
              goto LABEL_70;
            }
          }

          else if ([MEMORY[0x29EDC7368] _axAuditViewIsSwiftUI:v168])
          {
            v80 = [MEMORY[0x29EDC7368] _axAuditGetAttrLabelFromSwiftUIView:v168];
            v70 = [v80 string];
            v71 = v165;
            v165 = v70;
            MEMORY[0x29EDC9740](v71);
            MEMORY[0x29EDC9740](v80);
            if (objc_opt_respondsToSelector())
            {
              v146 = 0u;
              v147 = 0u;
              [v168 accessibilityFrame];
              *&v146 = v72;
              *(&v146 + 1) = v73;
              *&v147 = v74;
              *(&v147 + 1) = v75;
              v76 = [MEMORY[0x29EDBA168] valueWithCGRect:{v72, v73, v74, v75}];
              v77 = v166;
              v166 = v76;
              MEMORY[0x29EDC9740](v77);
            }
          }

          v145 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:3003 element:v168 additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:v166 elementRect:v165 text:?];
          [v225 addObject:v145];
          objc_storeStrong(&v145, 0);
          v188 = 0;
LABEL_70:
          objc_storeStrong(&v165, 0);
          objc_storeStrong(&v166, 0);
          ++v85;
          if (v83 + 1 >= v86)
          {
            v85 = 0;
            v86 = [v87 countByEnumeratingWithState:v167 objects:v231 count:16];
            if (!v86)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](v87);
    }

    objc_storeStrong(&v197, 0);
    objc_storeStrong(&v198, 0);
    objc_storeStrong(&v199, 0);
    objc_storeStrong(&v200, 0);
    objc_storeStrong(&v201, 0);
    objc_storeStrong(&v216, 0);
    objc_storeStrong(&v217, 0);
    goto LABEL_74;
  }

  [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:0];
LABEL_74:
  v230 = MEMORY[0x29EDC9748](v225);
  v188 = 1;
  objc_storeStrong(&v219, 0);
  objc_storeStrong(&v220, 0);
  objc_storeStrong(&v221, 0);
  objc_storeStrong(&v222, 0);
  objc_storeStrong(&v223, 0);
  objc_storeStrong(&v224, 0);
  objc_storeStrong(&v225, 0);
LABEL_75:
  v78 = v230;

  return v78;
}

uint64_t __92__UIApplicationAccessibility__axAuditCheckDynamicTextSupport_andClippingIssues_spinRunloop___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = 1;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        isKindOfClass = 1;
        if (([location[0] isHidden] & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = 1;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __92__UIApplicationAccessibility__axAuditCheckDynamicTextSupport_andClippingIssues_spinRunloop___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  isKindOfClass = 1;
  if (([location[0] isHidden] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (void)_addEntriesToMapTable:(id)a3 fromMapTable:(id)a4
{
  v17 = *MEMORY[0x29EDCA608];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  memset(__b, 0, sizeof(__b));
  v9 = [v14 keyEnumerator];
  v10 = [v9 countByEnumeratingWithState:__b objects:v16 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [v14 objectForKey:v13];
      [location[0] setObject:v11 forKey:v13];
      objc_storeStrong(&v11, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v9 countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAuditIssuesWithOptions:(id)a3
{
  v65 = *MEMORY[0x29EDCA608];
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v59.receiver = v62;
  v59.super_class = UIApplicationAccessibility;
  v60 = [(UIApplicationAccessibility *)&v59 _accessibilityAuditIssuesWithOptions:location[0]];
  if (!v60)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = v60;
    v60 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v58 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:@"AXAuditShouldHonorGroupsOption" inDictionary:location[0]];
  v57 = [(UIApplicationAccessibility *)v62 _accessibilityAuditVisibleElementsHonoringGroups:v58 & 1];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v57);
  v33 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
  if (v33)
  {
    v29 = *__b[2];
    v30 = 0;
    v31 = v33;
    while (1)
    {
      v28 = v30;
      if (*__b[2] != v29)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(__b[1] + 8 * v30);
      v54 = [MEMORY[0x29EDC7368] _axAuditUnlabeledIssueDictForElement:v56 honorsGroups:v58 & 1];
      if (v54)
      {
        [v60 addObject:v54];
      }

      if (objc_opt_respondsToSelector())
      {
        v53 = [v56 _accessibilityAuditIssuesWithOptions:location[0]];
        [v60 axSafelyAddObjectsFromArray:v53];
        objc_storeStrong(&v53, 0);
      }

      objc_storeStrong(&v54, 0);
      ++v30;
      if (v28 + 1 >= v31)
      {
        v30 = 0;
        v31 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
        if (!v31)
        {
          break;
        }
      }
    }
  }

  *&v5 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  v52 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD788] inDictionary:{location[0], v5}];
  v51 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD778] inDictionary:location[0]];
  v50 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD798] inDictionary:location[0]];
  v49 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD780] inDictionary:location[0]];
  v27 = MEMORY[0x29EDBD7A8];
  v48 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v52];
  v47 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*v27 inDictionary:v51];
  v46 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*v27 inDictionary:v50];
  v45 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7B0] inDictionary:v52];
  v44 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*v27 inDictionary:v49];
  v43 = 0;
  v42 = 0;
  v41 = [MEMORY[0x29EDB8DE8] array];
  if (v48 & 1) != 0 || (v47)
  {
    v6 = [(UIApplicationAccessibility *)v62 _axAuditCheckDynamicTextSupport:v47 & 1 andClippingIssues:v45 & 1 spinRunloop:?];
    v7 = v43;
    v43 = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (v46)
  {
    v24 = MEMORY[0x29EDC7368];
    v26 = [(UIApplicationAccessibility *)v62 _accessibilityMainWindow];
    v25 = [v26 rootViewController];
    v40 = [v24 _axAuditFindFrontmostViewControllerForHierarchy:?];
    MEMORY[0x29EDC9740](v25);
    *&v8 = MEMORY[0x29EDC9740](v26).n128_u64[0];
    v39 = [v40 view];
    v9 = [MEMORY[0x29EDC7368] _axAuditFindDescendantInaccessibleElements:v39 honorsGroups:v58 & 1];
    v10 = v42;
    v42 = v9;
    MEMORY[0x29EDC9740](v10);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  if (v44)
  {
    v17 = MEMORY[0x29EDC7368];
    v21 = [MEMORY[0x29EDC7938] sharedApplication];
    v20 = [v21 _accessibilityMainWindow];
    v19 = [v20 rootViewController];
    v18 = [v17 _axAuditFindFrontmostViewControllerForHierarchy:?];
    v38 = [v18 view];
    MEMORY[0x29EDC9740](v18);
    MEMORY[0x29EDC9740](v19);
    MEMORY[0x29EDC9740](v20);
    v37 = [MEMORY[0x29EDC7368] _accessibilityGetAllSwiftUISubviews:v38 withFiltering:{1, MEMORY[0x29EDC9740](v21).n128_f64[0]}];
    memset(v35, 0, sizeof(v35));
    v22 = MEMORY[0x29EDC9748](v37);
    v23 = [v22 countByEnumeratingWithState:v35 objects:v63 count:16];
    if (v23)
    {
      v14 = *v35[2];
      v15 = 0;
      v16 = v23;
      while (1)
      {
        v13 = v15;
        if (*v35[2] != v14)
        {
          objc_enumerationMutation(v22);
        }

        v36 = *(v35[1] + 8 * v15);
        v34 = [MEMORY[0x29EDC7368] _axAuditContrastDetectionForSwiftUIView:v36];
        [v41 addObjectsFromArray:v34];
        objc_storeStrong(&v34, 0);
        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [v22 countByEnumeratingWithState:v35 objects:v63 count:16];
          if (!v16)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](v22);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  if (v43)
  {
    [v60 addObjectsFromArray:v43];
  }

  if (v42)
  {
    [v60 addObjectsFromArray:v42];
  }

  if (v41)
  {
    [v60 addObjectsFromArray:v41];
  }

  v12 = MEMORY[0x29EDC9748](v60);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)_accessibilitySemanticContext
{
  v10 = self;
  v9[1] = a2;
  v8 = [(UIApplicationAccessibility *)self _accessibilityMainWindow];
  location = [v8 rootViewController];
  v9[0] = [(UIApplicationAccessibility *)v10 _accessibilityApplicationSemanticContextWithViewController:?];
  *&v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
  if (!v9[0])
  {
    v9[0] = [*MEMORY[0x29EDC8008] _accessibilityApplicationSemanticContext];
    *&v3 = MEMORY[0x29EDC9740](0).n128_u64[0];
    if (!v9[0])
    {
      v6 = [*MEMORY[0x29EDC8008] delegate];
      v9[0] = [v6 _accessibilityApplicationSemanticContext];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](v6);
    }
  }

  v5 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

- (id)_accessibilityApplicationSemanticContextWithViewController:(uint64_t)a1
{
  v23 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v23)
  {
    v20 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x29EDC9748](location);
      v18 = [v19 visibleViewController];
      v2 = [v18 _accessibilityApplicationSemanticContext];
      v3 = v20;
      v20 = v2;
      MEMORY[0x29EDC9740](v3);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
    }

    if (!v20)
    {
      v4 = [location _accessibilityApplicationSemanticContext];
      v5 = v20;
      v20 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (!v20)
    {
      v13 = [location childViewControllers];
      v14 = [v13 count];
      *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      v17 = v14;
      for (i = v14 - 1; (i & 0x8000000000000000) == 0; --i)
      {
        v12 = [location childViewControllers];
        v15 = [v12 objectAtIndex:i];
        v7 = MEMORY[0x29EDC9740](v12);
        v8 = [(UIApplicationAccessibility *)v23 _accessibilityApplicationSemanticContextWithViewController:v15, v7];
        v9 = v20;
        v20 = v8;
        MEMORY[0x29EDC9740](v9);
        v21 = v20 ? 2 : 0;
        objc_storeStrong(&v15, 0);
        if (v21)
        {
          break;
        }
      }
    }

    v24 = MEMORY[0x29EDC9748](v20);
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v24 = 0;
    v21 = 1;
  }

  objc_storeStrong(&location, 0);
  v10 = v24;

  return v10;
}

- (id)_accessibilitySpeakThisViewController
{
  v4 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  v3 = [v4 rootViewController];
  v5 = [v3 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)_accessibilityFirstElementsForSpeakThis
{
  v21 = *MEMORY[0x29EDCA608];
  v16 = self;
  v15[1] = a2;
  v19 = &_accessibilityFirstElementsForSpeakThis_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1080);
  if (*v19 != -1)
  {
    dispatch_once(v19, location);
  }

  objc_storeStrong(&location, 0);
  v15[0] = [(UIApplicationAccessibility *)v16 _accessibilitySpeakThisViewController];
  v14 = AXLogSpeakScreen();
  v13 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_66(v20, v15[0]);
    _os_log_impl(&dword_29C4D6000, v14, v13, "Speak This view controller was %{public}@", v20, 0xCu);
  }

  objc_storeStrong(&v14, 0);
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel__accessibilitySpeakThisElementsAndStrings);
  if (InstanceMethod == _accessibilityFirstElementsForSpeakThis_speakThisElementsBaseMethod)
  {
    v7 = [v15[0] _accessibilitySpeakThisViews];
    v9 = [v7 firstObject];
    *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v17 = [v9 _accessibilityFirstElementsForSpeakThis];
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = [v15[0] _accessibilitySpeakThisElementsAndStrings];
    v11 = [v8 mutableCopy];
    *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    [v11 addObject:{@"SpeakThis-LegacyMethodWasUsed", v3}];
    v17 = MEMORY[0x29EDC9748](v11);
    v10 = 1;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v15, 0);
  v5 = v17;

  return v5;
}

Method __69__UIApplicationAccessibility__accessibilityFirstElementsForSpeakThis__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel__accessibilitySpeakThisElementsAndStrings);
  _accessibilityFirstElementsForSpeakThis_speakThisElementsBaseMethod = result;
  return result;
}

- (void)_accessibilitySetSpeakThisRootElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisRootElementAccessibilityIdentifier:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (id)_accessibilitySpeakThisRootElement
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UIApplicationAccessibility *)self _accessibilityGetSpeakThisRootElement];
  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v7 = *MEMORY[0x29EDCA608];
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(UIApplicationAccessibility *)self _accessibilitySpeakThisViewController];
  oslog = AXLogSpeakScreen();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_66(v6, v5[0]);
    _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Speak This view controller was %{public}@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [v5[0] _accessibilitySpeakThisElementsAndStrings];
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)_accessibilitySetUIAppFocusedOnContinuityDisplay:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetUIAppDisplayIDForContinuityDisplay:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityBeginMonitoringIdleRunLoop
{
  if (!_accessibilityBeginMonitoringIdleRunLoop_idleRunLoopObserver)
  {
    _accessibilityBeginMonitoringIdleRunLoop_idleRunLoopObserver = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, &__block_literal_global_1089);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, _accessibilityBeginMonitoringIdleRunLoop_idleRunLoopObserver, *MEMORY[0x29EDB8FC0]);
  }

  return 1;
}

void __70__UIApplicationAccessibility__accessibilityBeginMonitoringIdleRunLoop__block_invoke()
{
  UIAccessibilityPostNotification(0xFA2u, &unk_2A238E998);
  cf = _accessibilityBeginMonitoringIdleRunLoop_idleRunLoopObserver;
  _accessibilityBeginMonitoringIdleRunLoop_idleRunLoopObserver = 0;
  CFRelease(cf);
}

- (void)sendEvent:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25.receiver = v27;
  v25.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v25 sendEvent:location[0]];
  if (_AXSAutomationEnabled())
  {
    if ([location[0] type])
    {
      if ([location[0] type] == 7)
      {
        v28[0] = @"event";
        v29[0] = @"ScrollEventCompleted";
        v28[1] = @"Timestamp";
        v3 = MEMORY[0x29EDBA070];
        [location[0] timestamp];
        v5 = [v3 numberWithDouble:?];
        v29[1] = v5;
        v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        UIAccessibilityPostNotification(0xFA2u, v4);
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](v5);
      }
    }

    else
    {
      oslog = AXLogUIA();
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v32, location[0]);
        _os_log_impl(&dword_29C4D6000, oslog, type, "UIA: incoming touch %@", v32, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v22 = 1;
      memset(__b, 0, sizeof(__b));
      obj = [location[0] allTouches];
      v14 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
      if (v14)
      {
        v10 = *__b[2];
        v11 = 0;
        v12 = v14;
        while (1)
        {
          v9 = v11;
          if (*__b[2] != v10)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(__b[1] + 8 * v11);
          v19 = AXLogUIA();
          v18 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v8 = v19;
            __os_log_helper_16_0_1_4_0(v30, [v21 phase]);
            _os_log_impl(&dword_29C4D6000, v8, v18, "UIA: touch handled: %d", v30, 8u);
          }

          objc_storeStrong(&v19, 0);
          if ([v21 phase] != 3 && objc_msgSend(v21, "phase") != 4)
          {
            v22 = 0;
          }

          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
            if (!v12)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      if (v22)
      {
        v17 = AXLogUIA();
        v16 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v6 = v17;
          v7 = v16;
          __os_log_helper_16_0_0(v15);
          _os_log_impl(&dword_29C4D6000, v6, v7, "UIA: touches are complete", v15, 2u);
        }

        objc_storeStrong(&v17, 0);
        UIAccessibilityPostNotification(0xFA2u, &unk_2A238E9C0);
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_finishButtonEvent:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10.receiver = v12;
  v10.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v10 _finishButtonEvent:location[0]];
  v9 = AXLogUIA();
  v8 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v6 = [location[0] allPresses];
    __os_log_helper_16_0_1_4_0(v14, [v6 count]);
    _os_log_impl(&dword_29C4D6000, v9, v8, "Received button event (%d)", v14, 8u);
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(&v9, 0);
  if (_AXSAutomationEnabled())
  {
    oslog = AXLogUIA();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = [location[0] allPresses];
      __os_log_helper_16_0_1_4_0(v13, [v5 count]);
      _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Processed button event (%d)", v13, 8u);
      MEMORY[0x29EDC9740](v5);
    }

    objc_storeStrong(&oslog, 0);
    v3 = [location[0] allPresses];
    v4 = [v3 count];
    MEMORY[0x29EDC9740](v3);
    if (!v4)
    {
      UIAccessibilityPostNotification(0xFA2u, &unk_2A238E9E8);
    }
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)_accessibilityCancelRewindOrFastForward
{
  if (a1)
  {
    v3 = 0;
    v2 = [a1 _accessibilityGetLastMediaRemoteCommand];
    if (v2 == 10 || v2 == 8)
    {
      MRMediaRemoteSendCommand();
      v3 = 1;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)_accessibilityNativeFocusElement
{
  v8[2] = self;
  v8[1] = a2;
  v7 = [(UIApplicationAccessibility *)self _accessibilityFocusedScene];
  v8[0] = [v7 _accessibilityNativeFocusElement];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (!v8[0])
  {
    v6 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    v5 = [v6 windowScene];
    v8[0] = [v5 _accessibilityNativeFocusElement];
    MEMORY[0x29EDC9740](0);
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
  }

  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v4;
}

- (id)_accessibilityPreferredFocusedWindow
{
  v52 = *MEMORY[0x29EDCA608];
  v49 = self;
  __b[9] = a2;
  memset(__b, 0, 0x40uLL);
  v47 = 0;
  objc_opt_class();
  v39 = 0;
  v40 = &v39;
  v41 = 838860800;
  v42 = 48;
  v43 = __Block_byref_object_copy__5;
  v44 = __Block_byref_object_dispose__5;
  v45 = 0;
  v33 = MEMORY[0x29EDCA5F8];
  v34 = -1073741824;
  v35 = 0;
  v36 = __66__UIApplicationAccessibility__accessibilityPreferredFocusedWindow__block_invoke;
  v37 = &unk_29F30CA38;
  v38 = &v39;
  AXPerformSafeBlock();
  v32 = MEMORY[0x29EDC9748](v40[5]);
  _Block_object_dispose(&v39, 8);
  objc_storeStrong(&v45, 0);
  v46 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v32);
  if (v47)
  {
    abort();
  }

  v31 = MEMORY[0x29EDC9748](v46);
  objc_storeStrong(&v46, 0);
  obj = v31;
  v17 = [v31 countByEnumeratingWithState:__b objects:v51 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v14);
      v29 = 0;
      objc_opt_class();
      v28 = __UIAccessibilityCastAsClass();
      if (v29)
      {
        abort();
      }

      v27 = MEMORY[0x29EDC9748](v28);
      objc_storeStrong(&v28, 0);
      v30 = v27;
      v26 = [v27 focusSystem];
      v11 = [v26 _isEnabled];
      v24 = 0;
      v22 = 0;
      LOBYTE(v10) = 0;
      if (v11)
      {
        v25 = [v30 session];
        v24 = 1;
        v23 = [v25 role];
        v22 = 1;
        v10 = [v23 isEqualToString:*MEMORY[0x29EDC8270]] ^ 1;
      }

      if (v22)
      {
        MEMORY[0x29EDC9740](v23);
      }

      if (v24)
      {
        MEMORY[0x29EDC9740](v25);
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_25;
      }

      v9 = [v26 focusedItem];
      v8 = [v9 _accessibilityWindow];
      v19 = 0;
      if (v8)
      {
        v2 = MEMORY[0x29EDC9748](v8);
      }

      else
      {
        v20 = [v30 keyWindow];
        v19 = 1;
        v2 = MEMORY[0x29EDC9748](v20);
      }

      v21 = v2;
      if (v19)
      {
        MEMORY[0x29EDC9740](v20);
      }

      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v9);
      if (v21)
      {
        v50 = MEMORY[0x29EDC9748](v21);
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(&v21, 0);
      if (!v18)
      {
LABEL_25:
        v18 = 0;
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v30, 0);
      if (v18)
      {
        break;
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v51 count:16];
        if (!v15)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
LABEL_29:
    v18 = 0;
  }

  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if (!v18)
  {
    v7 = v49;
    v6 = [MEMORY[0x29EDC7C40] mainScreen];
    v50 = [(UIApplicationAccessibility *)v7 _keyWindowForScreen:?];
    MEMORY[0x29EDC9740](v6);
  }

  v4 = v50;

  return v4;
}

double __66__UIApplicationAccessibility__accessibilityPreferredFocusedWindow__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7DD8] _scenesIncludingInternal:1];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UIApplicationAccessibility *)self _accessibilityNativeFocusElement];
  if (location[0] != v6)
  {
    obj = [location[0] _accessibilityNativeFocusPreferredElement];
    if (obj)
    {
      objc_storeStrong(location, obj);
    }

    objc_storeStrong(&obj, 0);
  }

  if (([location[0] _accessibilityNativeFocusPreferredElementIsValid] & 1) == 0)
  {
    objc_storeStrong(location, 0);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_accessibilityExplorerElements
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  [v8[0] setLeafNodePredicate:&__block_literal_global_1125];
  v7 = [(UIApplicationAccessibility *)v9 _accessibilityLeafDescendantsWithOptions:v8[0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v7];
    v2 = [v6 array];
    v3 = v7;
    v7 = v2;
    MEMORY[0x29EDC9740](v3);
    objc_storeStrong(&v6, 0);
  }

  v5 = [(UIApplicationAccessibility *)v9 _accessibilitySortExplorerElements:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

uint64_t __60__UIApplicationAccessibility__accessibilityExplorerElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _isAccessibilityExplorerElement];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilityNativeFocusableElements:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UIApplicationAccessibility *)v6 _accessibilityNativeFocusableElements:location[0] matchingBlock:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityNativeFocusableElements:(id)a3 withQueryString:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = v12;
  v6 = location[0];
  v9 = MEMORY[0x29EDC9748](v10);
  v8 = [(UIApplicationAccessibility *)v7 _accessibilityNativeFocusableElements:v6 matchingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

uint64_t __84__UIApplicationAccessibility__accessibilityNativeFocusableElements_withQueryString___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a1;
  if ([a1[4] length])
  {
    memset(__b, 0, sizeof(__b));
    obj = [location[0] _accessibilityAXAttributedUserInputLabelsIncludingFallbacks];
    v12 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(__b[1] + 8 * v9);
        v5 = [v16 localizedLowercaseString];
        v4 = [a1[4] localizedLowercaseString];
        v6 = [v5 containsString:?];
        MEMORY[0x29EDC9740](v4);
        *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
        if (v6)
        {
          break;
        }

        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v20 count:{16, v2}];
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      v19 = 1;
      v14 = 1;
    }

    else
    {
LABEL_10:
      v14 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v14)
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (id)_accessibilityNativeFocusableElements:(id)a3 matchingBlock:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(UIApplicationAccessibility *)v9 _accessibilityNativeFocusableElements:location[0] matchingBlock:v7 forExistenceCheckOnly:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accessibilityNativeFocusableElements:(id)a3 matchingBlock:(id)a4 forExistenceCheckOnly:(BOOL)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v20 = 0;
  if (location[0])
  {
    objc_storeStrong(location, location[0]);
  }

  else
  {
    v21 = [MEMORY[0x29EDC7938] sharedApplication];
    v20 = 1;
    objc_storeStrong(location, v21);
  }

  if (v20)
  {
    MEMORY[0x29EDC9740](v21);
  }

  v19 = [MEMORY[0x29EDC7328] defaultFullKeyboardAccessOptions];
  v9 = v19;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = -1073741824;
  v15 = 0;
  v16 = __104__UIApplicationAccessibility__accessibilityNativeFocusableElements_matchingBlock_forExistenceCheckOnly___block_invoke;
  v17 = &unk_29F30D1C8;
  v18 = MEMORY[0x29EDC9748](v23);
  [v9 setLeafNodePredicate:&v13];
  v12 = 0;
  if (v22)
  {
    v5 = [location[0] _accessibilityLeafDescendantsWithCount:1 options:v19];
  }

  else
  {
    v5 = [location[0] _accessibilityLeafDescendantsWithOptions:v19];
  }

  v6 = v12;
  v12 = v5;
  MEMORY[0x29EDC9740](v6);
  v8 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v8;
}

uint64_t __104__UIApplicationAccessibility__accessibilityNativeFocusableElements_matchingBlock_forExistenceCheckOnly___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] _accessibilityCanBecomeNativeFocused])
  {
    v3 = 1;
    if (a1[4])
    {
      v3 = (*(a1[4] + 16))();
    }

    v6 = v3 & 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)_accessibilityShowEditingHUD
{
  v9[2] = self;
  v9[1] = a2;
  if (AXDeviceIsPad())
  {
    v4 = [MEMORY[0x29EDC7938] sharedApplication];
    v3 = [v4 _accessibilityMainWindow];
    v9[0] = [v3 windowScene];
    MEMORY[0x29EDC9740](v3);
    *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    v8 = [MEMORY[0x29EDC7D40] activeTextEffectsWindowForWindowScene:{v9[0], v2}];
    v7 = [v8 safeValueForKey:@"_editingOverlayViewController"];
    v6 = [v7 safeValueForKey:@"undoInteraction"];
    v5 = MEMORY[0x29EDC9748](v6);
    AXPerformSafeBlock();
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
  }
}

- (id)accessibilityElements
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIApplicationAccessibility;
  return [(UIApplicationAccessibility *)&v3 accessibilityElements];
}

- (id)_accessibilityConnectedScenes
{
  v8 = self;
  v7[1] = a2;
  v4 = [(UIApplicationAccessibility *)self safeSetForKey:@"connectedScenes"];
  v7[0] = [v4 mutableCopy];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = [(UIApplicationAccessibility *)v8 _accessibilityActiveScenes];
  [v7[0] addObjectsFromArray:v6];
  v5 = [v7[0] copy];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

@end