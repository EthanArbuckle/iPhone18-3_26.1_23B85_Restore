@interface UIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAllowsNotificationsDuringSuspension;
- (BOOL)_accessibilityBeginMonitoringIdleRunLoop;
- (BOOL)_accessibilityDispatchKeyboardAction:(id)action;
- (BOOL)_accessibilityDispatchScrollWithAmount:(int64_t)amount;
- (BOOL)_accessibilityElementBelongsToKeyboardWindow:(id)window;
- (BOOL)_accessibilityHardwareKeyboardActive;
- (BOOL)_accessibilityKeyboardIsEmojiInputMode;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query;
- (BOOL)_accessibilityResetAndClearNativeFocusSystem;
- (BOOL)_accessibilitySoftwareKeyboardActive;
- (BOOL)_accessibilitySoftwareKeyboardCoversElement:(id)element;
- (BOOL)_accessibilityUpdateNativeFocusImmediately;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (BOOL)accessibilityStartStopToggle;
- (BOOL)openURL:(id)l;
- (CGRect)_accessibilitySoftwareKeyboardAccessibilityFrame;
- (CGRect)accessibilityFrame;
- (__GSKeyboard)GSKeyboardForHWLayout:(id)layout senderID:(unint64_t)d forceRebuild:(BOOL)rebuild createIfNeeded:(BOOL)needed;
- (double)_accessibilityLastDictationMagicTapTime;
- (id)_accessibilityActiveScenes;
- (id)_accessibilityApplicationSemanticContextWithViewController:(uint64_t)controller;
- (id)_accessibilityApplicationWindowFramesAndIds;
- (id)_accessibilityAuditIssuesWithOptions:(id)options;
- (id)_accessibilityBundleIdentifier;
- (id)_accessibilityCellWithRowIndex:(int64_t)index column:(int64_t)column containingView:(id)view;
- (id)_accessibilityConnectedScenes;
- (id)_accessibilityCurrentHardwareKeyboardLayout;
- (id)_accessibilityCurrentSoftwareKeyboardLayout;
- (id)_accessibilityCurrentSoftwareLanguage;
- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling parameters:(id)parameters;
- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling traversalOptions:(id)options;
- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus parameters:(id)parameters;
- (id)_accessibilityElementsForSearchParameter:(id)parameter;
- (id)_accessibilityElementsWithSemanticContext:(id)context;
- (id)_accessibilityExplorerElements;
- (id)_accessibilityFindContainerAccessibleElement:(char)element first:(char)first focus:(char)focus allowScrolling:;
- (id)_accessibilityFirstElementForFocusWithOptions:(id)options;
- (id)_accessibilityFirstElementsForSpeakThis;
- (id)_accessibilityFocusContainer;
- (id)_accessibilityFocusableScenes;
- (id)_accessibilityFocusableScenesDictionary;
- (id)_accessibilityFocusedScene;
- (id)_accessibilityMLProxiedElements;
- (id)_accessibilityMainWindow;
- (id)_accessibilityMainWindowInWindows:(id)windows;
- (id)_accessibilityMakeUIPressInfoWithType:(uint64_t)type phase:(int)phase timestamp:(double)timestamp contextID:;
- (id)_accessibilityNativeFocusElement;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)_accessibilityNativeFocusableElements:(id)elements;
- (id)_accessibilityNativeFocusableElements:(id)elements matchingBlock:(id)block;
- (id)_accessibilityNativeFocusableElements:(id)elements matchingBlock:(id)block forExistenceCheckOnly:(BOOL)only;
- (id)_accessibilityNativeFocusableElements:(id)elements withQueryString:(id)string;
- (id)_accessibilityPreferredFocusedWindow;
- (id)_accessibilityPreviewWindow;
- (id)_accessibilityRealtimeElements;
- (id)_accessibilityResponderElement:(BOOL)element;
- (id)_accessibilitySemanticContext;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_accessibilitySpeakThisRootElement;
- (id)_accessibilitySpeakThisViewController;
- (id)_accessibilitySummaryElement;
- (id)_accessibilityTextReplacementCandidates;
- (id)_accessibilityTitleBarElement;
- (id)_accessibilityTypingCandidates;
- (id)_accessibilityUIWindowFindWithGlobalPoint:(double)point;
- (id)_accessibilityValidateResponderForFocus:(void *)focus;
- (id)_accessibilityValidatedResponderForExistingGoodResponder:(char)responder forFocus:;
- (id)_accessibilityWindowSceneForSceneID:(id)d;
- (id)_accessibilityWindowSections;
- (id)_accessibilityWindowsIgnoringWindowsWithHiddenElements:(BOOL)elements;
- (id)_axActiveEmojiSearchField;
- (id)_axAllSubviews;
- (id)_axAuditCheckDynamicTextSupport:(char)support andClippingIssues:(char)issues spinRunloop:;
- (id)_axSubviews;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
- (id)_responderForKeyEvents;
- (id)_targetInChainForAction:(SEL)action sender:(id)sender;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (uint64_t)_accessibilityActionIsPhysicalButton:(uint64_t *)button nativeUIKitTypeRef:;
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
- (uint64_t)_accessibilityMediaSkipDuration:(void *)duration;
- (uint64_t)_accessibilityShowKeyboardHints;
- (uint64_t)_accessibilityStartStopDictation;
- (void)_accessibilityAVCaptureStarted:(id)started;
- (void)_accessibilityAVCaptureStopped:(id)stopped;
- (void)_accessibilityDidFocusOnApplication;
- (void)_accessibilityFocusDidUpdate:(id)update;
- (void)_accessibilityInitialize;
- (void)_accessibilityKeyboardDidHide:(id)hide;
- (void)_accessibilityKeyboardDidShow:(id)show;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterForDictationLifecycleNotifications;
- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)application;
- (void)_accessibilitySetSpeakThisRootElement:(id)element;
- (void)_accessibilitySetSpeakThisRootElementAccessibilityIdentifier:(id)identifier;
- (void)_accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:(id)session;
- (void)_accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:(id)session;
- (void)_accessibilitySetTextInsertionGlowModeEnabled:(BOOL)enabled;
- (void)_accessibilitySetUIAppDisplayIDForContinuityDisplay:(id)display;
- (void)_accessibilitySetUIAppFocusedOnContinuityDisplay:(id)display;
- (void)_accessibilityShowEditingHUD;
- (void)_addEntriesToMapTable:(id)table fromMapTable:(id)mapTable;
- (void)_finishButtonEvent:(id)event;
- (void)_iosAccessibilitySetValue:(id)value forAttribute:(int64_t)attribute;
- (void)_loadAllAccessibilityInformation;
- (void)dealloc;
- (void)handleKeyHIDEvent:(__IOHIDEvent *)event;
- (void)sendEvent:(id)event;
@end

@implementation UIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v25 = location;
  v24 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v77[1] = a2;
  if (AXRequestingClient() == 3)
  {
    _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    [_applicationKeyWindow accessibilityFrame];
    v44.origin.x = v2;
    v44.origin.y = v3;
    v44.size.width = v4;
    v44.size.height = v5;
    v79 = v44;
    MEMORY[0x29EDC9740](_applicationKeyWindow);
  }

  else
  {
    v77[0] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AXAppFrame-%p", selfCopy];
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
          screen = [v53 screen];
          v51 = 0;
          v34 = 0;
          if ([screen safeBoolForKey:@"_isMainScreen"])
          {
            windows = [v56 windows];
            v51 = 1;
            v34 = [windows count] != 0;
          }

          if (v51)
          {
            MEMORY[0x29EDC9740](windows);
          }

          MEMORY[0x29EDC9740](screen);
          if (v34)
          {
            keyWindow = [v56 keyWindow];
            [keyWindow accessibilityFrame];
            r2.origin.x = v10;
            r2.origin.y = v11;
            r2.size.width = v12;
            r2.size.height = v13;
            MEMORY[0x29EDC9740](keyWindow);
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
        v32 = [(UIApplicationAccessibility *)selfCopy safeValueForKey:@"_mainScene"];
        v31 = [v32 safeValueForKey:@"settings"];
        v46 = __UIAccessibilitySafeClass();
        MEMORY[0x29EDC9740](v31);
        MEMORY[0x29EDC9740](v32);
        v45 = MEMORY[0x29EDC9748](v46);
        objc_storeStrong(&v46, 0);
        v48 = v45;
        displayConfiguration = [v45 displayConfiguration];
        [displayConfiguration bounds];
        v30.origin.x = v14;
        v30.origin.y = v15;
        v30.size.width = v16;
        v30.size.height = v17;
        v79 = v30;
        MEMORY[0x29EDC9740](displayConfiguration);
        objc_storeStrong(&v48, 0);
      }

      if (CGRectIsEmpty(v79))
      {
        mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
        [mainScreen bounds];
        v28.origin.x = v18;
        v28.origin.y = v19;
        v28.size.width = v20;
        v28.size.height = v21;
        v79 = v28;
        MEMORY[0x29EDC9740](mainScreen);
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
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)selfCopy _accessibilityConnectedScenes];
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

- (void)_accessibilityKeyboardDidHide:(id)hide
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hide);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA88]);
  UIAccessibilityPostNotification(0x407u, &unk_2A238E948);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityKeyboardDidShow:(id)show
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, show);
  userInfo = [location[0] userInfo];
  v13 = [userInfo objectForKey:*MEMORY[0x29EDC81A8]];
  [v13 CGRectValue];
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v5;
  v17.size.height = v6;
  userInfo2 = [location[0] userInfo];
  v11 = [userInfo2 objectForKey:*MEMORY[0x29EDC81B0]];
  [v11 CGRectValue];
  rect2.origin.x = v7;
  rect2.origin.y = v8;
  rect2.size.width = v9;
  rect2.size.height = v10;
  v15 = CGRectEqualToRect(v17, rect2);
  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](userInfo2);
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](userInfo);
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
  selfCopy = self;
  v21[1] = a2;
  if ([(UIApplicationAccessibility *)self _accessibilityOverrideStartStopExtraExtras])
  {
    mEMORY[0x29EDBD6C0] = [MEMORY[0x29EDBD6C0] sharedInstance];
    ignoreLogging = [mEMORY[0x29EDBD6C0] ignoreLogging];
    *&v2 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]).n128_u64[0];
    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x29EDBD6C0] identifier];
      v21[0] = AXLoggerForFacility();
      MEMORY[0x29EDC9740](identifier);
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

  else if (([(UIApplicationAccessibility *)selfCopy _accessibilityStartStopDictation]& 1) != 0)
  {
    mEMORY[0x29EDBD6C0]2 = [MEMORY[0x29EDBD6C0] sharedInstance];
    ignoreLogging2 = [mEMORY[0x29EDBD6C0]2 ignoreLogging];
    *&v3 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]2).n128_u64[0];
    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x29EDBD6C0] identifier];
      v15 = AXLoggerForFacility();
      MEMORY[0x29EDC9740](identifier2);
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
  selfCopy = self;
  if (self)
  {
    v90 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeValueForKey:@"activeInstance"];
    if (([NSClassFromString(&cfstr_Uidictationcon.isa) safeBoolForKey:@"isListening"]& 1) != 0)
    {
      mEMORY[0x29EDBD6C0] = [MEMORY[0x29EDBD6C0] sharedInstance];
      ignoreLogging = [mEMORY[0x29EDBD6C0] ignoreLogging];
      *&v1 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]).n128_u64[0];
      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x29EDBD6C0] identifier];
        v89 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](identifier);
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
        mEMORY[0x29EDBD6C0]2 = [MEMORY[0x29EDBD6C0] sharedInstance];
        ignoreLogging2 = [mEMORY[0x29EDBD6C0]2 ignoreLogging];
        *&v3 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]2).n128_u64[0];
        if ((ignoreLogging2 & 1) == 0)
        {
          identifier2 = [MEMORY[0x29EDBD6C0] identifier];
          v81 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](identifier2);
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
        mEMORY[0x29EDBD6C0]3 = [MEMORY[0x29EDBD6C0] sharedInstance];
        ignoreLogging3 = [mEMORY[0x29EDBD6C0]3 ignoreLogging];
        *&v5 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]3).n128_u64[0];
        if ((ignoreLogging3 & 1) == 0)
        {
          identifier3 = [MEMORY[0x29EDBD6C0] identifier];
          v75 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](identifier3);
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
          activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
          v30 = [activeInstance safeValueForKey:@"textInteractionAssistant"];
          v29 = [v30 safeValueForKey:@"_selectionView"];
          v7 = [v29 safeValueForKey:@"selectionChanged"];
          MEMORY[0x29EDC9740](v29);
          MEMORY[0x29EDC9740](v30);
          activeInstance2 = [MEMORY[0x29EDC7B08] activeInstance];
          v32 = [v90 safeValueForKey:?];
          [activeInstance2 setKeyboardInputMode:? userInitiated:?];
          MEMORY[0x29EDC9740](v32);
          [v90 _accessibilitySetRetainedValue:0 forKey:{@"keyboardInputModeToReturn", MEMORY[0x29EDC9740](activeInstance2).n128_f64[0]}];
        }
      }

      v27 = selfCopy;
      v28 = [MEMORY[0x29EDBA070] numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [v27 _accessibilitySetRetainedValue:? forKey:?];
      MEMORY[0x29EDC9740](v28);
      v92 = 1;
      v69 = 1;
      objc_storeStrong(&v83, 0);
    }

    else if ([_lastActiveDictationController accessibilityPerformMagicTap])
    {
      mEMORY[0x29EDBD6C0]4 = [MEMORY[0x29EDBD6C0] sharedInstance];
      ignoreLogging4 = [mEMORY[0x29EDBD6C0]4 ignoreLogging];
      *&v8 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]4).n128_u64[0];
      if ((ignoreLogging4 & 1) == 0)
      {
        identifier4 = [MEMORY[0x29EDBD6C0] identifier];
        v68 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](identifier4);
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
      if (([selfCopy _accessibilitySoftwareKeyboardActive] & 1) == 0)
      {
        goto LABEL_62;
      }

      mEMORY[0x29EDBD6C0]5 = [MEMORY[0x29EDBD6C0] sharedInstance];
      ignoreLogging5 = [mEMORY[0x29EDBD6C0]5 ignoreLogging];
      *&v9 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]5).n128_u64[0];
      if ((ignoreLogging5 & 1) == 0)
      {
        identifier5 = [MEMORY[0x29EDBD6C0] identifier];
        v62 = AXLoggerForFacility();
        MEMORY[0x29EDC9740](identifier5);
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
        mEMORY[0x29EDBD6C0]6 = [MEMORY[0x29EDBD6C0] sharedInstance];
        ignoreLogging6 = [mEMORY[0x29EDBD6C0]6 ignoreLogging];
        *&v10 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]6).n128_u64[0];
        if ((ignoreLogging6 & 1) == 0)
        {
          identifier6 = [MEMORY[0x29EDBD6C0] identifier];
          v55 = AXLoggerForFacility();
          MEMORY[0x29EDC9740](identifier6);
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
          mEMORY[0x29EDBD6C0]7 = [MEMORY[0x29EDBD6C0] sharedInstance];
          ignoreLogging7 = [mEMORY[0x29EDBD6C0]7 ignoreLogging];
          *&v12 = MEMORY[0x29EDC9740](mEMORY[0x29EDBD6C0]7).n128_u64[0];
          if ((ignoreLogging7 & 1) == 0)
          {
            identifier7 = [MEMORY[0x29EDBD6C0] identifier];
            v48 = AXLoggerForFacility();
            MEMORY[0x29EDC9740](identifier7);
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

- (void)_accessibilityAVCaptureStarted:(id)started
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, started);
  [(UIApplicationAccessibility *)selfCopy _accessibilitySetCameraIrisOpen:1];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityAVCaptureStopped:(id)stopped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stopped);
  [(UIApplicationAccessibility *)selfCopy _accessibilitySetCameraIrisOpen:0];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusDidUpdate:(id)update
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  userInfo = [location[0] userInfo];
  v29 = [userInfo objectForKey:*MEMORY[0x29EDC80D8]];
  _accessibilityNativeFocusPreferredElement = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusPreferredElement];
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
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7498], _accessibilityNativeFocusPreferredElement);
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v26, 0);
  }

  nextFocusedView = [v29 nextFocusedView];
  [nextFocusedView bounds];
  frame.origin.x = v3;
  frame.origin.y = v4;
  frame.size.width = v5;
  frame.size.height = v6;
  nextFocusedView2 = [v29 nextFocusedView];
  UIAccessibilityZoomFocusChanged(5, frame, nextFocusedView2);
  MEMORY[0x29EDC9740](nextFocusedView2);
  MEMORY[0x29EDC9740](nextFocusedView);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&_accessibilityNativeFocusPreferredElement, 0);
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
  callStackSymbols = [MEMORY[0x29EDBA108] callStackSymbols];
  _AXAssert();
  mEMORY[0x29EDC7348] = [MEMORY[0x29EDC7348] sharedInstance];
  [mEMORY[0x29EDC7348] setNeedsLoadAccessibilityInformation];
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7348]);
}

- (void)_accessibilityInitialize
{
  selfCopy = self;
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
    [v7[0] addObserver:selfCopy selector:sel__accessibilityAVCaptureStarted_ name:@"AVCaptureSessionDidStartRunningNotification" object:?];
    [v7[0] addObserver:selfCopy selector:sel__accessibilityAVCaptureStopped_ name:@"AVCaptureSessionDidStopRunningNotification" object:0];
    [v7[0] addObserver:selfCopy selector:sel__accessibilityFocusDidUpdate_ name:*MEMORY[0x29EDC80D0] object:0];
    [v7[0] addObserver:selfCopy selector:sel__accessibilityKeyboardDidHide_ name:*MEMORY[0x29EDC8198] object:0];
    [v7[0] addObserver:selfCopy selector:sel__accessibilityKeyboardDidShow_ name:*MEMORY[0x29EDC81A0] object:0];
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    v3 = *MEMORY[0x29EDC7120];
    mainQueue = [MEMORY[0x29EDBA088] mainQueue];
    v2 = [defaultCenter addObserverForName:v3 object:0 queue:? usingBlock:?];
    MEMORY[0x29EDC9740](mainQueue);
    MEMORY[0x29EDC9740](defaultCenter);
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

- (__GSKeyboard)GSKeyboardForHWLayout:(id)layout senderID:(unint64_t)d forceRebuild:(BOOL)rebuild createIfNeeded:(BOOL)needed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layout);
  dCopy = d;
  rebuildCopy = rebuild;
  neededCopy = needed;
  if ((ForceKeyboardRebuild & 1) != 0 && dCopy == 0x8000000817319373)
  {
    rebuildCopy = 1;
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

  v13.receiver = selfCopy;
  v13.super_class = UIApplicationAccessibility;
  v7 = [(UIApplicationAccessibility *)&v13 GSKeyboardForHWLayout:location[0] senderID:dCopy forceRebuild:rebuildCopy createIfNeeded:neededCopy];
  objc_storeStrong(location, 0);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [MEMORY[0x29EDBA068] defaultCenter];
  [v3[0] removeObserver:selfCopy name:*MEMORY[0x29EDC8198] object:?];
  [v3[0] removeObserver:selfCopy name:*MEMORY[0x29EDC81A0] object:0];
  [v3[0] removeObserver:selfCopy name:*MEMORY[0x29EDC80D0] object:0];
  [v3[0] removeObserver:selfCopy name:@"AVCaptureSessionDidStartRunningNotification" object:0];
  [v3[0] removeObserver:selfCopy name:@"AVCaptureSessionDidStopRunningNotification" object:0];
  [(UIApplicationAccessibility *)selfCopy _accessibilityUnregister];
  objc_storeStrong(v3, 0);
  v2.receiver = selfCopy;
  v2.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v2 dealloc];
}

- (BOOL)_accessibilityResetAndClearNativeFocusSystem
{
  v30 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v26 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusableScenes];
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
    __os_log_helper_16_2_2_8_64_8_64(v28, v11, selfCopy);
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
  selfCopy = self;
  v29 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x20000000;
  v27 = 32;
  v28 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusableScenes];
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
    v6 = selfCopy;
    _accessibilityNativeFocusElement = [(UIApplicationAccessibility *)selfCopy _accessibilityNativeFocusElement];
    v13 = MEMORY[0x29EDC9748](_accessibilityNativeFocusElement);
    __os_log_helper_16_2_3_8_64_8_64_8_64(v31, v14, v6, v13);
    _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "did update native focus system: %@, app: %@, newElement: %@", v31, 0x20u);
    MEMORY[0x29EDC9740](_accessibilityNativeFocusElement);
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

- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)application
{
  v13 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v10 = a2;
  applicationCopy = application;
  location = AXLogFocusEngine();
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x29EDBA070] numberWithBool:applicationCopy];
    __os_log_helper_16_2_2_8_64_8_64(v12, v3, selfCopy);
    _os_log_debug_impl(&dword_29C4D6000, location, v7, "Setting focus %@ in application %@", v12, 0x16u);
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(&location, 0);
  _accessibilityPreferredFocusedWindow = [(UIApplicationAccessibility *)selfCopy _accessibilityPreferredFocusedWindow];
  if ([_accessibilityPreferredFocusedWindow conformsToProtocol:&unk_2A2390418])
  {
    v4 = MEMORY[0x29EDC9748](_accessibilityPreferredFocusedWindow);
    v5 = applicationCopy;
    AXPerformSafeBlock();
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&_accessibilityPreferredFocusedWindow, 0);
}

double __73__UIApplicationAccessibility__accessibilitySetFocusEnabledInApplication___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:*(a1 + 32)];
  [v3 _setEnabled:*(a1 + 40) & 1];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_accessibilitySetTextInsertionGlowModeEnabled:(BOOL)enabled
{
  selfCopy = self;
  v9 = a2;
  enabledCopy = enabled;
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  inputDelegateManager = [activeInstance inputDelegateManager];
  v7 = [inputDelegateManager safeValueForKey:@"selectionDisplayInteraction"];
  MEMORY[0x29EDC9740](inputDelegateManager);
  MEMORY[0x29EDC9740](activeInstance);
  if (v7)
  {
    v5 = MEMORY[0x29EDC9748](v7);
    v6 = enabledCopy;
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
  location[1] = self;
  if (self)
  {
    activeKeyboardSceneDelegate = [MEMORY[0x29EDC7B30] activeKeyboardSceneDelegate];
    v5 = [activeKeyboardSceneDelegate safeValueForKey:@"_systemInputAssistantViewController"];
    v4 = [v5 safeValueForKey:@"emojiSearchViewController"];
    v3 = [v4 safeValueForKey:@"emojiSearchView"];
    location[0] = [v3 safeValueForKey:@"searchTextField"];
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    if (([location[0] safeBoolForKey:{@"isActive", MEMORY[0x29EDC9740](activeKeyboardSceneDelegate).n128_f64[0]}] & 1) == 0)
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

- (id)_accessibilityResponderElement:(BOOL)element
{
  v100 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v94 = a2;
  elementCopy = element;
  _axActiveEmojiSearchField = [(UIApplicationAccessibility *)self _axActiveEmojiSearchField];
  if (_axActiveEmojiSearchField)
  {
    v96 = MEMORY[0x29EDC9748](_axActiveEmojiSearchField);
    v91 = 1;
    goto LABEL_92;
  }

  _accessibilityMainWindow = [(UIApplicationAccessibility *)selfCopy _accessibilityMainWindow];
  v89 = [_accessibilityMainWindow safeValueForKey:@"firstResponder"];
  location = AXLogAppAccessibility();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v99, v89);
    _os_log_debug_impl(&dword_29C4D6000, location, type, "First responder: %@", v99, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (!v89 && ([_accessibilityMainWindow accessibilityViewIsModal] & 1) == 0)
  {
    v32 = [(UIApplicationAccessibility *)selfCopy safeValueForKey:@"keyWindow"];
    v3 = [v32 safeValueForKey:@"firstResponder"];
    v4 = v89;
    v89 = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v32);
  }

  if (!elementCopy)
  {
    goto LABEL_18;
  }

  _accessibilityWindow = [v89 _accessibilityWindow];
  rootViewController = [_accessibilityWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  MEMORY[0x29EDC9740](rootViewController);
  MEMORY[0x29EDC9740](_accessibilityWindow);
  objc_opt_class();
  v85 = __UIAccessibilityCastAsClass();
  if (!v85 && presentedViewController)
  {
    v86PresentedViewController = [presentedViewController presentedViewController];
    v6 = presentedViewController;
    presentedViewController = v86PresentedViewController;
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
  objc_storeStrong(&presentedViewController, 0);
  if (!v91)
  {
LABEL_18:
    if (!v89 && (AXProcessIsInCallService() & 1) == 0)
    {
      defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
      [defaultVoiceOverOptions setSorted:0];
      v76 = [(UIApplicationAccessibility *)selfCopy _accessibilityViewChildrenWithOptions:defaultVoiceOverOptions];
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
      objc_storeStrong(&defaultVoiceOverOptions, 0);
    }

    v67 = 0;
    v68 = &v67;
    v69 = 838860800;
    v70 = 48;
    v71 = __Block_byref_object_copy__5;
    v72 = __Block_byref_object_dispose__5;
    v73 = 0;
    _accessibilityResponderElement = [v89 _accessibilityResponderElement];
    if (_accessibilityResponderElement)
    {
      TypeID = AXUIElementGetTypeID();
      if (TypeID == CFGetTypeID(_accessibilityResponderElement))
      {
        v96 = MEMORY[0x29EDC9748](_accessibilityResponderElement);
        v91 = 1;
LABEL_90:
        objc_storeStrong(&_accessibilityResponderElement, 0);
        _Block_object_dispose(&v67, 8);
        objc_storeStrong(&v73, 0);
        goto LABEL_91;
      }

      objc_opt_class();
      LOBYTE(v21) = 0;
      if (objc_opt_isKindOfClass())
      {
        v21 = [_accessibilityResponderElement _accessibilityViewIsVisible] ^ 1;
      }

      v65 = v21 & 1;
      accessibilityElementsHidden = 1;
      if ((v21 & 1) == 0)
      {
        accessibilityElementsHidden = [_accessibilityResponderElement accessibilityElementsHidden];
      }

      v65 = accessibilityElementsHidden & 1;
      v64 = AXRemoteElementFromObject();
      if ((([_accessibilityResponderElement isAccessibilityElement] & 1) != 0 || v64) && (v65 & 1) == 0)
      {
        objc_storeStrong(v68 + 5, _accessibilityResponderElement);
        v96 = [(UIApplicationAccessibility *)selfCopy _accessibilityValidatedResponderForExistingGoodResponder:elementCopy forFocus:?];
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

      nextResponder = [v89 nextResponder];
      v10 = v89;
      v89 = nextResponder;
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

            accessibilityElementCount = [v62 accessibilityElementCount];
            if (accessibilityElementCount > 0 && accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL)
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
                v40[3] = accessibilityElementCount;
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

        superview = [v62 superview];
        v14 = v62;
        v62 = superview;
        MEMORY[0x29EDC9740](v14);
      }

      if ([v68[5] _accessibilityIsWebDocumentView])
      {
        objc_storeStrong(v68 + 5, 0);
      }

      v34 = [(UIApplicationAccessibility *)selfCopy _accessibilityValidatedResponderForExistingGoodResponder:elementCopy forFocus:?];
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
  objc_storeStrong(&_accessibilityMainWindow, 0);
LABEL_92:
  objc_storeStrong(&_axActiveEmojiSearchField, 0);
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

- (id)_accessibilityValidatedResponderForExistingGoodResponder:(char)responder forFocus:
{
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  if (selfCopy)
  {
    if (responder)
    {
      v3 = [(UIApplicationAccessibility *)selfCopy _accessibilityValidateResponderForFocus:?];
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

- (id)_accessibilityValidateResponderForFocus:(void *)focus
{
  v108 = *MEMORY[0x29EDCA608];
  focusCopy = focus;
  location = 0;
  objc_storeStrong(&location, a2);
  if (focusCopy)
  {
    v99 = 0;
    v98 = 0;
    v97 = NSClassFromString(&cfstr_Uipopoverview.isa);
    v96 = NSClassFromString(&cfstr_Uitransitionvi.isa);
    v95 = NSClassFromString(&cfstr_Uidimmingview.isa);
    v94[1] = NSClassFromString(&cfstr_Uiformsheetpre.isa);
    v94[0] = [focusCopy _accessibilityWindows];
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
        subviews = [v93 subviews];
        reverseObjectEnumerator = [subviews reverseObjectEnumerator];
        v41 = [reverseObjectEnumerator countByEnumeratingWithState:v90 objects:v106 count:{16, MEMORY[0x29EDC9740](subviews).n128_f64[0]}];
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
              objc_enumerationMutation(reverseObjectEnumerator);
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
              v38 = [reverseObjectEnumerator countByEnumeratingWithState:v90 objects:v106 count:16];
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
        *&v10 = MEMORY[0x29EDC9740](reverseObjectEnumerator).n128_u64[0];
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
      _accessibilityWindow = [location _accessibilityWindow];
      v60 = 1;
      objc_opt_class();
      v30 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v60)
    {
      v11 = MEMORY[0x29EDC9740](_accessibilityWindow).n128_u64[0];
    }

    if (v30)
    {
      _accessibilityObscuredScreenAllowedViews = [v98 _accessibilityObscuredScreenAllowedViews];
      v58 = 0;
      _accessibilitySoftwareKeyboardActive = [*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive];
      v55 = 0;
      if (_accessibilitySoftwareKeyboardActive)
      {
        activeKeyboard = [MEMORY[0x29EDC7AF8] activeKeyboard];
        v55 = 1;
        v13 = MEMORY[0x29EDC9748](activeKeyboard);
      }

      else
      {
        v13 = MEMORY[0x29EDC9748](0);
      }

      v57 = v13;
      if (v55)
      {
        MEMORY[0x29EDC9740](activeKeyboard);
      }

      memset(v53, 0, sizeof(v53));
      v28 = MEMORY[0x29EDC9748](_accessibilityObscuredScreenAllowedViews);
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
      objc_storeStrong(&_accessibilityObscuredScreenAllowedViews, 0);
    }

    accessibilityContainer = [location accessibilityContainer];
    v51 = MEMORY[0x29EDC9748](location);
    while (accessibilityContainer)
    {
      if (objc_opt_respondsToSelector())
      {
        subviews2 = [accessibilityContainer subviews];
        if ([subviews2 count] > 1)
        {
          memset(v48, 0, sizeof(v48));
          v22 = MEMORY[0x29EDC9748](subviews2);
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

        objc_storeStrong(&subviews2, 0);
      }

      objc_storeStrong(&v51, accessibilityContainer);
      v52AccessibilityContainer = [accessibilityContainer accessibilityContainer];
      v15 = accessibilityContainer;
      accessibilityContainer = v52AccessibilityContainer;
      MEMORY[0x29EDC9740](v15);
    }

    v103 = MEMORY[0x29EDC9748](location);
    v100 = 1;
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&accessibilityContainer, 0);
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
  currentInputMode = [v5[0] currentInputMode];
  isEmojiInputMode = [currentInputMode isEmojiInputMode];
  MEMORY[0x29EDC9740](currentInputMode);
  objc_storeStrong(v5, 0);
  return isEmojiInputMode;
}

- (id)_accessibilityMainWindowInWindows:(id)windows
{
  v58 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, windows);
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
  reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
  v30 = [reverseObjectEnumerator countByEnumeratingWithState:v45 objects:v56 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v46 = *(v45[1] + 8 * v27);
      if (!-[UIViewAccessibility _accessibilityViewIsActive](v46) && (([v46 isHidden] & 1) != 0 || (objc_msgSend(v46, "isOpaque") & 1) != 0 || (objc_msgSend(_accessibilityMainWindowInWindows__AlertWindows, "containsObject:", objc_opt_class()) & 1) == 0))
      {
        goto LABEL_37;
      }

      windowScene = [v46 windowScene];
      if (windowScene && [windowScene activationState] == 1)
      {
        v43 = 5;
      }

      else
      {
        screen = [v46 screen];
        mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
        v24 = [screen isEqual:?];
        MEMORY[0x29EDC9740](mainScreen);
        *&v5 = MEMORY[0x29EDC9740](screen).n128_u64[0];
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
      objc_storeStrong(&windowScene, 0);
      if (v43 && v43 != 5)
      {
        goto LABEL_40;
      }

LABEL_37:
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [reverseObjectEnumerator countByEnumeratingWithState:v45 objects:v56 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  v43 = 0;
LABEL_40:
  *&v6 = MEMORY[0x29EDC9740](reverseObjectEnumerator).n128_u64[0];
  if (!v43 || v43 == 4)
  {
    if (!v48)
    {
      _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
      if ([location[0] containsObject:_applicationKeyWindow])
      {
        v21 = _applicationKeyWindow;
      }

      else
      {
        v21 = v48;
      }

      objc_storeStrong(&v48, v21);
      objc_storeStrong(&_applicationKeyWindow, 0);
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
      v19 = selfCopy;
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

- (id)_accessibilityUIWindowFindWithGlobalPoint:(double)point
{
  v44 = *MEMORY[0x29EDCA608];
  v40 = a2;
  pointCopy = point;
  v39[1] = self;
  if (self)
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
        layer = [v36 layer];
        memset(&rect, 0, sizeof(rect));
        [layer bounds];
        rect.origin.x = v3;
        rect.origin.y = v4;
        rect.size.width = v5;
        rect.size.height = v6;
        v31 = 0;
        v19 = 0;
        if (layer)
        {
          v19 = 0;
          if (([layer isHidden] & 1) == 0)
          {
            [layer opacity];
            v19 = 0;
            if (v7 > 0.05)
            {
              delegate = [layer delegate];
              v31 = 1;
              v19 = 0;
              if (objc_opt_isKindOfClass())
              {
                [layer convertPoint:0 fromLayer:{v40, pointCopy}];
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
          MEMORY[0x29EDC9740](delegate);
        }

        if (v19)
        {
          delegate2 = [layer delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v36 level];
            v27 = 0;
            LOBYTE(v17) = 0;
            if (v10 > v38)
            {
              LOBYTE(v17) = 0;
              if ([delegate2 isUserInteractionEnabled])
              {
                [delegate2 bounds];
                LOBYTE(v17) = 0;
                if (v11 > 1.0)
                {
                  [delegate2 bounds];
                  LOBYTE(v17) = 0;
                  if (v12 > 1.0)
                  {
                    v28 = [delegate2 hitTest:0 withEvent:{v40, pointCopy}];
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
              objc_storeStrong(&location, delegate2);
              [v36 level];
              v38 = v13;
            }
          }

          else
          {
            v16 = delegate2;
            _AXAssert();
          }

          objc_storeStrong(&delegate2, 0);
        }

        objc_storeStrong(&layer, 0);
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

- (id)_accessibilityElementsForSearchParameter:(id)parameter
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameter);
  v24 = [location[0] objectForKey:@"searchText"];
  v5 = [location[0] objectForKey:@"resultLimit"];
  integerValue = [v5 integerValue];
  MEMORY[0x29EDC9740](v5);
  v23 = integerValue;
  if (!integerValue)
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
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __71__UIApplicationAccessibility__accessibilityElementsForSearchParameter___block_invoke_2;
  v12 = &unk_29F30D158;
  v14 = MEMORY[0x29EDC9748](v22);
  v13 = MEMORY[0x29EDC9748](v24);
  [defaultVoiceOverOptions setLeafNodePredicate:&v8];
  v7 = [(UIApplicationAccessibility *)selfCopy _accessibilityLeafDescendantsWithCount:v23 + 1 options:defaultVoiceOverOptions];
  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&defaultVoiceOverOptions, 0);
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

- (id)_accessibilityWindowsIgnoringWindowsWithHiddenElements:(BOOL)elements
{
  selfCopy = self;
  v15 = a2;
  elementsCopy = elements;
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  AXPerformSafeBlock();
  if (elementsCopy)
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

- (id)_accessibilityFindContainerAccessibleElement:(char)element first:(char)first focus:(char)focus allowScrolling:
{
  v49 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  elementCopy = element;
  firstCopy = first;
  focusCopy = focus;
  if (selfCopy)
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
      if ((focusCopy & 1) == 0)
      {
        [location _accessibilitySetShouldPreventOpaqueScrolling:1];
      }

      v32 = 0;
      v30 = 0;
      v28 = 0;
      if (firstCopy)
      {
        _accessibilityFirstOpaqueElementForFocus = [location _accessibilityFirstOpaqueElementForFocus];
        v32 = 1;
        objc_storeStrong(v35 + 5, _accessibilityFirstOpaqueElementForFocus);
      }

      else
      {
        if (elementCopy)
        {
          _accessibilityFirstOpaqueElement = [location _accessibilityFirstOpaqueElement];
          v30 = 1;
          v12 = _accessibilityFirstOpaqueElement;
        }

        else
        {
          _accessibilityLastOpaqueElement = [location _accessibilityLastOpaqueElement];
          v28 = 1;
          v12 = _accessibilityLastOpaqueElement;
        }

        objc_storeStrong(v35 + 5, v12);
      }

      if (v28)
      {
        MEMORY[0x29EDC9740](_accessibilityLastOpaqueElement);
      }

      if (v30)
      {
        MEMORY[0x29EDC9740](_accessibilityFirstOpaqueElement);
      }

      if (v32)
      {
        MEMORY[0x29EDC9740](_accessibilityFirstOpaqueElementForFocus);
      }

      [location _accessibilitySetShouldPreventOpaqueScrolling:0];
      v27 = AXLogFirstElement();
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        isAccessibilityElement = [v35[5] isAccessibilityElement];
        _accessibilityHasOrderedChildren = [v35[5] _accessibilityHasOrderedChildren];
        __os_log_helper_16_3_3_4_0_4_0_8_65(v48, isAccessibilityElement, _accessibilityHasOrderedChildren, v35[5]);
        _os_log_debug_impl(&dword_29C4D6000, v27, v26, "Opaque element (is element %i is container %i): %{private}@", v48, 0x18u);
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      v9 = location;
      v5 = 0;
      if ((elementCopy & 1) == 0)
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
      v22[0] = MEMORY[0x29EDC9748](selfCopy);
      v23 = elementCopy & 1;
      v24 = firstCopy & 1;
      v25 = focusCopy & 1;
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
  selfCopy = self;
  location[1] = a2;
  v4 = [(UIApplicationAccessibility *)self _accessibilityValueForKey:@"AXAppAllowsNotifications"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [(UIApplicationAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXAppAllowsNotifications", v2]& 1;
  }

  else if ([MEMORY[0x29EDC7E78] hasActiveSessions] & 1) == 0 || ((location[0] = -[UIApplicationAccessibility _accessibilityMainWindow](selfCopy, "_accessibilityMainWindow"), (objc_msgSend(location[0], "isHidden")) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_msgSend(location[0], "safeBoolForKey:", @"_isHostedInAnotherProcess") & 1) == 0 ? (v5 = 0) : (v8 = 1, v5 = 1), objc_storeStrong(location, 0), !v5))
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_accessibilityCellWithRowIndex:(int64_t)index column:(int64_t)column containingView:(id)view
{
  v33 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v29 = a2;
  indexCopy = index;
  columnCopy = column;
  location = 0;
  objc_storeStrong(&location, view);
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  leafNodePredicate = [defaultVoiceOverOptions leafNodePredicate];
  v17 = MEMORY[0x29EDCA5F8];
  v18 = -1073741824;
  v19 = 0;
  v20 = __83__UIApplicationAccessibility__accessibilityCellWithRowIndex_column_containingView___block_invoke;
  v21 = &unk_29F30D1C8;
  v22 = MEMORY[0x29EDC9748](leafNodePredicate);
  v23 = MEMORY[0x29ED3E4C0](&v17);
  [defaultVoiceOverOptions setLeafNodePredicate:v23];
  v16 = [(UIApplicationAccessibility *)selfCopy _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];
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

    v31 = [v15 accessibilityElementForRow:indexCopy andColumn:columnCopy];
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
  objc_storeStrong(&leafNodePredicate, 0);
  objc_storeStrong(&defaultVoiceOverOptions, 0);
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

- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus parameters:(id)parameters
{
  selfCopy = self;
  v12 = a2;
  firstCopy = first;
  lastCopy = last;
  focusCopy = focus;
  location = 0;
  objc_storeStrong(&location, parameters);
  v7 = [(UIApplicationAccessibility *)selfCopy _accessibilityElementFirst:firstCopy last:lastCopy forFocus:focusCopy allowScrolling:0 parameters:location];
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling parameters:(id)parameters
{
  selfCopy = self;
  v27 = a2;
  firstCopy = first;
  lastCopy = last;
  focusCopy = focus;
  scrollingCopy = scrolling;
  location = 0;
  objc_storeStrong(&location, parameters);
  v11 = [location objectForKey:*MEMORY[0x29EDBD7D8]];
  bOOLValue = [v11 BOOLValue];
  *&v7 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  v13 = selfCopy;
  v14 = firstCopy;
  v15 = lastCopy;
  v16 = focusCopy;
  v17 = scrollingCopy;
  v20 = 0;
  v18 = 0;
  if (bOOLValue)
  {
    defaultVoiceOverOptionsHonoringGroups = [MEMORY[0x29EDC7328] defaultVoiceOverOptionsHonoringGroups];
    v20 = 1;
    v10 = defaultVoiceOverOptionsHonoringGroups;
  }

  else
  {
    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    v18 = 1;
    v10 = defaultVoiceOverOptions;
  }

  v29 = [(UIApplicationAccessibility *)v13 _accessibilityElementFirst:v14 last:v15 forFocus:v16 allowScrolling:v17 traversalOptions:v10];
  if (v18)
  {
    MEMORY[0x29EDC9740](defaultVoiceOverOptions);
  }

  if (v20)
  {
    MEMORY[0x29EDC9740](defaultVoiceOverOptionsHonoringGroups);
  }

  objc_storeStrong(&location, 0);
  v8 = v29;

  return v8;
}

- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling traversalOptions:(id)options
{
  v151 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v135 = a2;
  firstCopy = first;
  lastCopy = last;
  focusCopy = focus;
  scrollingCopy = scrolling;
  location = 0;
  objc_storeStrong(&location, options);
  v129 = AXLogFirstElement();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v150, firstCopy, lastCopy, focusCopy, scrollingCopy);
    _os_log_debug_impl(&dword_29C4D6000, v129, type, "Getting first: %i last: %i forFocus: %i allowScrolling: %i", v150, 0x1Au);
  }

  objc_storeStrong(&v129, 0);
  v127 = [(UIApplicationAccessibility *)selfCopy _accessibilityViewChildrenWithOptions:location];
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

  objectEnumerator = [v127 objectEnumerator];
  if (lastCopy)
  {
    reverseObjectEnumerator = [v127 reverseObjectEnumerator];
    v8 = objectEnumerator;
    objectEnumerator = reverseObjectEnumerator;
    MEMORY[0x29EDC9740](v8);
  }

  v121 = NSClassFromString(&cfstr_Uidimmingview.isa);
  v120 = NSClassFromString(&cfstr_Uipopoverview.isa);
  v119 = 0;
  v118 = 0;
  memset(v116, 0, sizeof(v116));
  v49 = MEMORY[0x29EDC9748](objectEnumerator);
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
          v9 = [(UIApplicationAccessibility *)selfCopy _accessibilityFindContainerAccessibleElement:v117 first:firstCopy focus:focusCopy allowScrolling:scrollingCopy];
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

      _accessibilityIsGroupedParent = 0;
      if ([location honorsElementGrouping])
      {
        _accessibilityIsGroupedParent = [v117 _accessibilityIsGroupedParent];
      }

      v106 = _accessibilityIsGroupedParent & 1;
      if (([v117 isAccessibilityElement] & 1) == 0 && (v106 & 1) == 0)
      {
        break;
      }

      accessibilityTraits = [v117 accessibilityTraits];
      v85 = (accessibilityTraits & *MEMORY[0x29EDC7578]) == *MEMORY[0x29EDC7578];
      _accessibilityServesAsFirstElement = 0;
      if (firstCopy)
      {
        _accessibilityServesAsFirstElement = [v117 _accessibilityServesAsFirstElement];
      }

      v84 = _accessibilityServesAsFirstElement & 1;
      if (v85 || v118 && (v84 & 1) == 0 || firstCopy && ([v117 _accessibilityIsNotFirstElement] & 1) != 0)
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
        if (firstCopy)
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
        if (firstCopy)
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

    v105 = [(UIApplicationAccessibility *)selfCopy _accessibilityFindContainerAccessibleElement:v117 first:firstCopy focus:focusCopy allowScrolling:scrollingCopy];
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
        if (firstCopy && ([v117 _accessibilityServesAsFirstElement] & 1) != 0 || focusCopy && (objc_msgSend(v117, "_accessibilityIsFirstElementForFocus") & 1) != 0)
        {
          if (([v117 _accessibilityHasOrderedChildren] & 1) != 0 || (objc_msgSend(v117, "isAccessibilityElement") & 1) == 0)
          {
            _accessibilityUnignoredDescendant = [v117 _accessibilityUnignoredDescendant];
            v14 = v117;
            v117 = _accessibilityUnignoredDescendant;
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
          if (firstCopy)
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
              _accessibilityUnignoredDescendant2 = [v118 _accessibilityUnignoredDescendant];
              v16 = v118;
              v118 = _accessibilityUnignoredDescendant2;
              MEMORY[0x29EDC9740](v16);
            }

            v119 = 1;
          }
        }

        v107 = 0;
        goto LABEL_77;
      }
    }

    else if (!v118 || firstCopy && (([v105 _accessibilityServesAsFirstElement] & 1) != 0 || (objc_msgSend(v117, "_accessibilityServesAsFirstElement"))) && (!firstCopy || (objc_msgSend(v105, "_accessibilityIsNotFirstElement") & 1) == 0))
    {
      if (([v105 isAccessibilityElement] & 1) == 0)
      {
        _accessibilityUnignoredDescendant3 = [v105 _accessibilityUnignoredDescendant];
        v12 = v105;
        v105 = _accessibilityUnignoredDescendant3;
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
  objc_storeStrong(&objectEnumerator, 0);
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

- (id)_accessibilityFirstElementForFocusWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v4 = [(UIApplicationAccessibility *)selfCopy _accessibilityElementFirst:1 last:0 forFocus:1 allowScrolling:0 traversalOptions:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityTitleBarElement
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  [defaultVoiceOverOptions setSorted:0];
  v23 = [(UIApplicationAccessibility *)selfCopy _accessibilityViewChildrenWithOptions:defaultVoiceOverOptions];
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
    v19 = [(UIApplicationAccessibility *)selfCopy _accessibilityElementFirst:1 last:0 forFocus:1 allowScrolling:0 parameters:0, v2];
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
  objc_storeStrong(&defaultVoiceOverOptions, 0);
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
  selfCopy = self;
  if (self)
  {
    _accessibilityMainWindow = [selfCopy _accessibilityMainWindow];
    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [defaultVoiceOverOptions setSorted:0];
    v11 = [selfCopy _accessibilityViewChildrenWithOptions:defaultVoiceOverOptions];
    v15 = [v11 mutableCopyWithZone:0];
    *&v1 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    if (_accessibilityMainWindow)
    {
      [v15 insertObject:_accessibilityMainWindow atIndex:{0, v1}];
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
        accessibilityTraits = [v13 accessibilityTraits];
        if ((accessibilityTraits & *MEMORY[0x29EDC7FD8]) == *MEMORY[0x29EDC7FD8])
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
    objc_storeStrong(&defaultVoiceOverOptions, 0);
    objc_storeStrong(&_accessibilityMainWindow, 0);
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
  selfCopy = self;
  v21[1] = a2;
  v21[0] = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = [(UIApplicationAccessibility *)selfCopy _accessibilityWindows];
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
      _accessibilityWindowSections = [v20 _accessibilityWindowSections];
      v13 = MEMORY[0x29EDCA5F8];
      v14 = -1073741824;
      v15 = 0;
      v16 = __58__UIApplicationAccessibility__accessibilityWindowSections__block_invoke;
      v17 = &unk_29F30D1F0;
      v18 = MEMORY[0x29EDC9748](v20);
      v5 = [_accessibilityWindowSections axFilterObjectsUsingBlock:&v13];
      [v4 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](_accessibilityWindowSections);
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
  v33[1] = self;
  if (self)
  {
    v33[0] = [MEMORY[0x29EDC7B08] activeInstance];
    array = [MEMORY[0x29EDB8DE8] array];
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
        v15 = array;
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

    if (![array count])
    {
      _accessibilityFirstResponderForKeyWindow = [*MEMORY[0x29EDC8008] _accessibilityFirstResponderForKeyWindow];
      if (!_accessibilityFirstResponderForKeyWindow)
      {
        _accessibilityFirstResponderForKeyWindow = _UIAccessibilityFocusedElementForAssistiveTech();
        MEMORY[0x29EDC9740](0);
      }

      if (objc_opt_respondsToSelector())
      {
        v28 = [_accessibilityFirstResponderForKeyWindow safeStringForKey:@"selectedText"];
        if ([v28 length])
        {
          whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
          v2 = [v28 stringByTrimmingCharactersInSet:?];
          v3 = v28;
          v28 = v2;
          MEMORY[0x29EDC9740](v3);
          activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
          v27 = [activeInstance generateAutocorrectionReplacements:v28];
          *&v4 = MEMORY[0x29EDC9740](activeInstance).n128_u64[0];
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
                  [array axSafelyAddObject:location];
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

      objc_storeStrong(&_accessibilityFirstResponderForKeyWindow, 0);
    }

    v34 = MEMORY[0x29EDC9748](array);
    objc_storeStrong(&array, 0);
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
  v18[1] = self;
  if (self)
  {
    v18[0] = [MEMORY[0x29EDB8DE8] array];
    activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
    location = [activeInstance safeValueForKey:@"m_autocorrectPrompt"];
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
      v15 = [activeInstance safeValueForKey:@"candidateController"];
      v14 = [v15 safeArrayForKey:@"activeViews"];
      firstObject = [v14 firstObject];
      v13 = [firstObject safeValueForKey:@"primaryGrid"];
      MEMORY[0x29EDC9740](firstObject);
      v11 = 0;
      objc_opt_class();
      v7 = [v13 safeValueForKey:@"collectionView"];
      v10 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v7);
      v9 = MEMORY[0x29EDC9748](v10);
      objc_storeStrong(&v10, 0);
      v12 = v9;
      v3 = v18[0];
      visibleCells = [v9 visibleCells];
      v4 = [visibleCells sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
      [v3 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v4);
      MEMORY[0x29EDC9740](visibleCells);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    v19 = MEMORY[0x29EDC9748](v18[0]);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&activeInstance, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v19 = 0;
  }

  v1 = v19;

  return v1;
}

- (BOOL)_accessibilitySoftwareKeyboardCoversElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if ([(UIApplicationAccessibility *)selfCopy _accessibilitySoftwareKeyboardActive])
  {
    v7 = 0;
    if (![(UIApplicationAccessibility *)selfCopy _accessibilityElementBelongsToKeyboardWindow:location[0]])
    {
      _accessibilityParentView = [location[0] _accessibilityParentView];
      v16 = 1;
      window = [_accessibilityParentView window];
      v14 = 1;
      v7 = 0;
      if (window)
      {
        _accessibilityParentView2 = [location[0] _accessibilityParentView];
        v12 = 1;
        window2 = [_accessibilityParentView2 window];
        v10 = 1;
        [window2 windowLevel];
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
    MEMORY[0x29EDC9740](window2);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](_accessibilityParentView2);
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](window);
  }

  if (v16)
  {
    MEMORY[0x29EDC9740](_accessibilityParentView);
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

- (BOOL)_accessibilityElementBelongsToKeyboardWindow:(id)window
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, window);
  v8 = AXUIAllKeyboardWindows();
  _accessibilityParentView = [location[0] _accessibilityParentView];
  window = [_accessibilityParentView window];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityParentView).n128_u64[0];
  v6 = [v8 containsObject:{window, v3}];
  objc_storeStrong(&window, 0);
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
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  isInHardwareKeyboardMode = [activeInstance isInHardwareKeyboardMode];
  MEMORY[0x29EDC9740](activeInstance);
  return isInHardwareKeyboardMode;
}

- (void)handleKeyHIDEvent:(__IOHIDEvent *)event
{
  selfCopy = self;
  v5 = a2;
  eventCopy = event;
  v3.receiver = self;
  v3.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v3 handleKeyHIDEvent:event];
  _UIAXSetLastKeyboardUsed();
}

- (void)_accessibilityRegisterForDictationLifecycleNotifications
{
  selfCopy = self;
  location[1] = a2;
  location[0] = MEMORY[0x29EDC9748](@"_axRegisteredForRemoteElement");
  if (([(UIApplicationAccessibility *)selfCopy _accessibilityBoolValueForKey:location[0]]& 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, selfCopy, _accessibilityReceiveDictationLifecycleNotfication, *MEMORY[0x29EDBD7C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v3, selfCopy, _accessibilityReceiveDictationLifecycleNotfication, *MEMORY[0x29EDBD7C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(UIApplicationAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (double)_accessibilityLastDictationMagicTapTime
{
  if (!self)
  {
    return 0.0;
  }

  v3 = [self _accessibilityValueForKey:kAXLastDictationMagicTapTime];
  [v3 doubleValue];
  v4 = v1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (uint64_t)_accessibilityDictationIsListening
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy _accessibilityValueForKey:@"_accessibilityIsDictationListeningOverride"];
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
      bOOLValue = [v2 BOOLValue];
      MEMORY[0x29EDC9740](v2);
      if (bOOLValue)
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
  selfCopy = self;
  if (self)
  {
    if (([selfCopy _accessibilitySoftwareKeyboardActive] & 1) == 0 || ((location = NSClassFromString(&cfstr_Uidictationcon.isa), (objc_msgSend(location, "safeBoolForKey:", @"dictationIsFunctional") & 1) == 0) || (objc_msgSend(location, "safeBoolForKey:", @"fetchCurrentInputModeSupportsDictation") & 1) == 0 ? (v2 = 0) : (v5 = 1, v2 = 1), objc_storeStrong(&location, 0), !v2))
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
  v4[1] = self;
  if (self)
  {
    v4[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    currentInputMode = [v4[0] currentInputMode];
    primaryLanguage = [currentInputMode primaryLanguage];
    objc_storeStrong(&currentInputMode, 0);
    objc_storeStrong(v4, 0);
  }

  else
  {
    primaryLanguage = 0;
  }

  v1 = primaryLanguage;

  return v1;
}

- (id)_accessibilityCurrentSoftwareKeyboardLayout
{
  v29 = *MEMORY[0x29EDCA608];
  v26[1] = self;
  if (self)
  {
    v26[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    activeInputModes = [v26[0] activeInputModes];
    currentInputMode = [v26[0] currentInputMode];
    softwareLayout = [currentInputMode softwareLayout];
    *&v1 = MEMORY[0x29EDC9740](softwareLayout).n128_u64[0];
    if (softwareLayout)
    {
      softwareLayout2 = [currentInputMode softwareLayout];
      v23 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](activeInputModes);
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
          primaryLanguage = [v22 primaryLanguage];
          primaryLanguage2 = [currentInputMode primaryLanguage];
          v8 = 0;
          if ([primaryLanguage isEqualToString:?])
          {
            v8 = location != 0;
          }

          MEMORY[0x29EDC9740](primaryLanguage2);
          MEMORY[0x29EDC9740](primaryLanguage);
          if (v8)
          {
            softwareLayout2 = MEMORY[0x29EDC9748](location);
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
        if ([activeInputModes count])
        {
          v19 = [activeInputModes objectAtIndex:0];
          v18 = 1;
          softwareLayout3 = [v19 softwareLayout];
          v16 = 1;
          v3 = MEMORY[0x29EDC9748](softwareLayout3);
        }

        else
        {
          v3 = MEMORY[0x29EDC9748](@"US");
        }

        softwareLayout2 = v3;
        if (v16)
        {
          MEMORY[0x29EDC9740](softwareLayout3);
        }

        if (v18)
        {
          MEMORY[0x29EDC9740](v19);
        }

        v23 = 1;
      }
    }

    objc_storeStrong(&currentInputMode, 0);
    objc_storeStrong(&activeInputModes, 0);
    objc_storeStrong(v26, 0);
  }

  else
  {
    softwareLayout2 = 0;
  }

  v4 = softwareLayout2;

  return v4;
}

- (id)_accessibilityCurrentHardwareKeyboardLayout
{
  v27 = *MEMORY[0x29EDCA608];
  v24[1] = self;
  if (self)
  {
    v24[0] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    activeInputModes = [v24[0] activeInputModes];
    currentInputMode = [v24[0] currentInputMode];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](activeInputModes);
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
        primaryLanguage = [v21 primaryLanguage];
        primaryLanguage2 = [currentInputMode primaryLanguage];
        v7 = 0;
        if ([primaryLanguage isEqualToString:?])
        {
          v7 = location != 0;
        }

        MEMORY[0x29EDC9740](primaryLanguage2);
        MEMORY[0x29EDC9740](primaryLanguage);
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
      if ([activeInputModes count])
      {
        v17 = [activeInputModes objectAtIndex:0];
        v16 = 1;
        hardwareLayout = [v17 hardwareLayout];
        v14 = 1;
        v2 = MEMORY[0x29EDC9748](hardwareLayout);
      }

      else
      {
        v2 = MEMORY[0x29EDC9748](@"US");
      }

      v25 = v2;
      if (v14)
      {
        MEMORY[0x29EDC9740](hardwareLayout);
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](v17);
      }
    }

    objc_storeStrong(&currentInputMode, 0);
    objc_storeStrong(&activeInputModes, 0);
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
      _axSubviews = [v14 _axSubviews];
      [v5 appendFormat:@"%@\n\n", _axSubviews];
      *&v2 = MEMORY[0x29EDC9740](_axSubviews).n128_u64[0];
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

- (BOOL)_accessibilityDispatchKeyboardAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  accessibilityKeyboardKeyDispatchOverride = [*MEMORY[0x29EDC8008] accessibilityKeyboardKeyDispatchOverride];
  *&v3 = MEMORY[0x29EDC9740](accessibilityKeyboardKeyDispatchOverride).n128_u64[0];
  if (accessibilityKeyboardKeyDispatchOverride)
  {
    accessibilityKeyboardKeyDispatchOverride2 = [*MEMORY[0x29EDC8008] accessibilityKeyboardKeyDispatchOverride];
    v36 = accessibilityKeyboardKeyDispatchOverride2[2](accessibilityKeyboardKeyDispatchOverride2, location[0]) & 1;
    MEMORY[0x29EDC9740](accessibilityKeyboardKeyDispatchOverride2);
    v33 = 1;
  }

  else
  {
    keyInfo = [location[0] keyInfo];
    unmodifiedInput = [keyInfo unmodifiedInput];
    MEMORY[0x29EDC9740](keyInfo);
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
    v23[0] = MEMORY[0x29EDC9748](unmodifiedInput);
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
    v10[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v36 = 1;
    v33 = 1;
    objc_storeStrong(v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&unmodifiedInput, 0);
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

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  selfCopy = self;
  v48 = a2;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, parameter);
  if (valueCopy == 91506)
  {
    v16 = MEMORY[0x29EDBA070];
    v15 = MEMORY[0x29EDC7DD0];
    [location pointValue];
    v44 = v4;
    v45 = v5;
    v17 = [v15 _findWithDisplayPoint:{v4, v5}];
    _accessibilityFocusableScenesDictionary = [v16 numberWithUnsignedInt:{objc_msgSend(v17, "_accessibilityContextId")}];
    MEMORY[0x29EDC9740](v17);
    v43 = 1;
  }

  else if (valueCopy == 91509)
  {
    v13 = MEMORY[0x29EDBA070];
    [location unsignedIntValue];
    v14 = UIAccessibilityWindowForContextId();
    _accessibilityFocusableScenesDictionary = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "_accessibilityDisplayId")}];
    MEMORY[0x29EDC9740](v14);
    v43 = 1;
  }

  else if (valueCopy == 94500)
  {
    v42 = MEMORY[0x29EDC9748](location);
    v11 = [v42 objectAtIndexedSubscript:0];
    bOOLValue = [v11 BOOLValue];
    v12 = [v42 objectAtIndexedSubscript:{1, MEMORY[0x29EDC9740](v11).n128_f64[0]}];
    bOOLValue2 = [v12 BOOLValue];
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

    _accessibilityConnectedScenes = [(UIApplicationAccessibility *)selfCopy _accessibilityConnectedScenes];
    if ([_accessibilityConnectedScenes count])
    {
      v9 = _accessibilityConnectedScenes;
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
      v25 = bOOLValue & 1;
      v26 = bOOLValue2 & 1;
      [v10 enumerateObjectsUsingBlock:&v19];
      _accessibilityFocusableScenesDictionary = MEMORY[0x29EDC9748](v27);
      v43 = 1;
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
    }

    else
    {
      v35.receiver = selfCopy;
      v35.super_class = UIApplicationAccessibility;
      _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)&v35 _iosAccessibilityAttributeValue:valueCopy forParameter:location];
      v43 = 1;
    }

    objc_storeStrong(&_accessibilityConnectedScenes, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v42, 0);
  }

  else if (valueCopy == 95253)
  {
    _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)selfCopy _accessibilityElementFirst:1 last:0 forFocus:0 parameters:location];
    v43 = 1;
  }

  else if (valueCopy == 95254)
  {
    _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)selfCopy _accessibilityElementFirst:0 last:1 forFocus:0 parameters:location];
    v43 = 1;
  }

  else if (valueCopy == 95256)
  {
    _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)selfCopy _accessibilityWindowSceneForSceneID:location];
    v43 = 1;
  }

  else
  {
    if (valueCopy == 95257)
    {
      _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusableScenesDictionary];
    }

    else
    {
      v18.receiver = selfCopy;
      v18.super_class = UIApplicationAccessibility;
      _accessibilityFocusableScenesDictionary = [(UIApplicationAccessibility *)&v18 _iosAccessibilityAttributeValue:valueCopy forParameter:location];
    }

    v43 = 1;
  }

  objc_storeStrong(&location, 0);
  v7 = _accessibilityFocusableScenesDictionary;

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

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  selfCopy = self;
  v10 = a2;
  valueCopy = value;
  switch(value)
  {
    case 1514:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:{-[UIApplicationAccessibility _accessibilityApplicationIsModal](selfCopy, "_accessibilityApplicationIsModal")}];
      break;
    case 3001:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilitySummaryElement];
      break;
    case 3002:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityResponderElement];
      break;
    case 3003:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityBundleIdentifier];
      break;
    case 3004:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityTypingCandidates];
      break;
    case 3005:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:{-[UIApplicationAccessibility _accessibilitySoftwareKeyboardActive](selfCopy, "_accessibilitySoftwareKeyboardActive")}];
      break;
    case 3006:
      v6 = MEMORY[0x29EDB8D80];
      _accessibilityTitleBarElement = [(UIApplicationAccessibility *)selfCopy _accessibilityTitleBarElement];
      _accessibilitySummaryElement = [v6 axArrayByIgnoringNilElementsWithCount:{1, _accessibilityTitleBarElement}];
      MEMORY[0x29EDC9740](_accessibilityTitleBarElement);
      break;
    case 3007:
      _accessibilitySummaryElement = _UIAXLastKeyboardUsed();
      break;
    case 3010:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityDictationIsListening](selfCopy)];
      break;
    case 3011:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _firstStatusBarElement];
      break;
    case 3012:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _lastStatusBarElement];
      break;
    case 3013:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityCurrentHardwareKeyboardLayout];
      break;
    case 3016:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityLastElement];
      break;
    case 3018:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityCurrentSoftwareKeyboardLayout];
      break;
    case 3019:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityCurrentSoftwareLanguage];
      break;
    case 3023:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityResponderElementForFocus];
      break;
    case 3024:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityNativeFocusElement];
      break;
    case 3027:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityNativeFocusPreferredElement];
      break;
    case 3034:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityDictationIsAvailable](selfCopy)];
      break;
    case 3035:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithInt:-[UIApplicationAccessibility _accessibilityApplicationInterfaceOrientation](selfCopy)];
      break;
    case 3036:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityIsTappingMediaLegibilityEvents](selfCopy)];
      break;
    case 3037:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityRealtimeElements];
      break;
    case 3040:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityApplicationWindowContextIDs];
      break;
    case 3043:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityTextReplacementCandidates];
      break;
    case 3045:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:-[UIApplicationAccessibility _accessibilityIsInitialBundleLoadFinished](selfCopy)];
      break;
    case 3046:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityFirstElementsForSpeakThis];
      break;
    case 3047:
      _accessibilitySummaryElement = [MEMORY[0x29EDBA070] numberWithBool:_UIApplicationIsExtension()];
      break;
    case 3050:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityFirstElementForReadFromTop];
      break;
    case 3051:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityMLProxiedElements];
      break;
    case 3052:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityApplicationWindowFramesAndIds];
      break;
    case 3054:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityStatusBarElements:1 sorted:1];
      break;
    case 3060:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityGetSpeakThisRootElementAccessibilityIdentifier];
      break;
    case 3061:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityGetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession];
      break;
    case 3062:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusContainer];
      break;
    case 3069:
      _accessibilityFocusedScene = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusedScene];
      _accessibilitySummaryElement = [_accessibilityFocusedScene _sceneIdentifier];
      MEMORY[0x29EDC9740](_accessibilityFocusedScene);
      break;
    case 3071:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityUIAppFocusedOnContinuityDisplay];
      break;
    case 3075:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityUIAppDisplayIDForContinuityDisplay];
      break;
    case 5044:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityPreviewWindow];
      break;
    case 13001:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilitySemanticContext];
      break;
    case 14000:
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)selfCopy _accessibilityIsolatedWindows];
      break;
    default:
      v8.receiver = selfCopy;
      v8.super_class = UIApplicationAccessibility;
      _accessibilitySummaryElement = [(UIApplicationAccessibility *)&v8 _iosAccessibilityAttributeValue:valueCopy];
      break;
  }

  v3 = _accessibilitySummaryElement;

  return v3;
}

- (uint64_t)_accessibilityApplicationInterfaceOrientation
{
  v3[1] = self;
  if (self)
  {
    v3[0] = [MEMORY[0x29EDC7C40] mainScreen];
    v2 = [v3[0] safeValueForKey:@"_interfaceOrientation"];
    integerValue = [v2 integerValue];
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(v3, 0);
  }

  else
  {
    return 0;
  }

  return integerValue;
}

- (uint64_t)_accessibilityIsTappingMediaLegibilityEvents
{
  if (self)
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
  selfCopy = self;
  if (self)
  {
    _accessibilityMainWindow = [selfCopy _accessibilityMainWindow];
    v4 = [_accessibilityMainWindow _accessibilityFindDescendant:&__block_literal_global_1013];
    MEMORY[0x29EDC9740](_accessibilityMainWindow);
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
  selfCopy = self;
  if (self)
  {
    _accessibilityApplicationWindowContextIDs = [selfCopy _accessibilityApplicationWindowContextIDs];
    array = [MEMORY[0x29EDB8DE8] array];
    _accessibilityMainWindow = [selfCopy _accessibilityMainWindow];
    v24 = AXUIKeyboardWindow();
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](_accessibilityApplicationWindowContextIDs);
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
          v7 = array;
          v30[0] = @"contextId";
          v31[0] = v23;
          v30[1] = @"frame";
          v31[1] = cf;
          v30[2] = @"isMainWindow";
          location = [MEMORY[0x29EDBA070] numberWithInt:_accessibilityMainWindow == location];
          v31[2] = location;
          v30[3] = @"isKeyboardWindow";
          v9 = [MEMORY[0x29EDBA070] numberWithBool:v17];
          v31[3] = v9;
          v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
          [v7 addObject:?];
          MEMORY[0x29EDC9740](v8);
          MEMORY[0x29EDC9740](v9);
          MEMORY[0x29EDC9740](location);
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
    v29 = MEMORY[0x29EDC9748](array);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&_accessibilityMainWindow, 0);
    objc_storeStrong(&array, 0);
    objc_storeStrong(&_accessibilityApplicationWindowContextIDs, 0);
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
  selfCopy = self;
  if (self)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = [selfCopy _accessibilityWindows];
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
        [array addObjectsFromArray:v11];
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
    reverseObjectEnumerator = [array reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator);
    objc_storeStrong(&array, 0);
  }

  else
  {
    allObjects = 0;
  }

  v2 = allObjects;

  return v2;
}

- (uint64_t)_accessibilityIsInitialBundleLoadFinished
{
  if (self)
  {
    defaultLoader = [MEMORY[0x29EDBD698] defaultLoader];
    v3 = [defaultLoader isInitialLoadFinished] & 1;
    MEMORY[0x29EDC9740](defaultLoader);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_accessibilityMLProxiedElements
{
  selfCopy = self;
  if (self)
  {
    v8 = 0;
    v5 = MEMORY[0x29EDB8D80];
    _accessibilityMainWindow = [selfCopy _accessibilityMainWindow];
    _accessibilityMLRemoteElement = [(UIWindowAccessibility *)_accessibilityMainWindow _accessibilityMLRemoteElement];
    v1 = [v5 axArrayByIgnoringNilElementsWithCount:{1, _accessibilityMLRemoteElement}];
    v2 = v8;
    v8 = v1;
    MEMORY[0x29EDC9740](v2);
    MEMORY[0x29EDC9740](_accessibilityMLRemoteElement);
    MEMORY[0x29EDC9740](_accessibilityMainWindow);
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

- (void)_iosAccessibilitySetValue:(id)value forAttribute:(int64_t)attribute
{
  v52 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  attributeCopy = attribute;
  switch(attribute)
  {
    case 2603:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = MEMORY[0x29EDC9748](location[0]);
        [*MEMORY[0x29EDC8008] _accessibilitySetRetainedValue:v32 forKey:@"AXShowOnscreenKeyboardWithBraille"];
        if ([v32 BOOLValue])
        {
          mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
          isMinimized = [mEMORY[0x29EDC7B08] isMinimized];
          MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
          if (isMinimized)
          {
            AXPerformSafeBlock();
          }
        }

        else
        {
          mEMORY[0x29EDC7B08]2 = [MEMORY[0x29EDC7B08] sharedInstance];
          isMinimized2 = [mEMORY[0x29EDC7B08]2 isMinimized];
          MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]2);
          if ((isMinimized2 & 1) == 0)
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
      stringValue = [location[0] stringValue];
      *&v4 = MEMORY[0x29EDC9740](stringValue).n128_u64[0];
      if (stringValue)
      {
        stringValue2 = [location[0] stringValue];
        v43 = AXLogSpeakScreen();
        v42 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v51, stringValue2);
          _os_log_debug_impl(&dword_29C4D6000, v43, v42, "kAXSpeakThisRootElementAccessibilityIdentifierParameterizedAttribute %@", v51, 0xCu);
        }

        objc_storeStrong(&v43, 0);
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisRootElementAccessibilityIdentifier:stringValue2];
        v20 = selfCopy;
        v21 = [(UIApplicationAccessibility *)selfCopy _accessibilitySpeakThisElementWithIdentifier:stringValue2];
        [(UIApplicationAccessibility *)v20 _accessibilitySetSpeakThisRootElement:?];
        MEMORY[0x29EDC9740](v21);
        objc_storeStrong(&stringValue2, 0);
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
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisRootElementAccessibilityIdentifier:0];
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisRootElement:0];
      }

      break;
    case 3061:
      stringValue3 = [location[0] stringValue];
      *&v5 = MEMORY[0x29EDC9740](stringValue3).n128_u64[0];
      if (stringValue3)
      {
        stringValue4 = [location[0] stringValue];
        v37 = AXLogSpeakScreen();
        v36 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v50, stringValue4);
          _os_log_debug_impl(&dword_29C4D6000, v37, v36, "kAXSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSessionAttribute %@", v50, 0xCu);
        }

        objc_storeStrong(&v37, 0);
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:stringValue4];
        v14 = selfCopy;
        mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
        v15 = [mEMORY[0x29EDC7938] _accessibilitySpeakThisViewsFromSceneWithSceneIdentifier:stringValue4];
        [(UIApplicationAccessibility *)v14 _accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:?];
        MEMORY[0x29EDC9740](v15);
        MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
        objc_storeStrong(&stringValue4, 0);
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
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:0];
        [(UIApplicationAccessibility *)selfCopy _accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:0];
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
          [(UIApplicationAccessibility *)selfCopy _accessibilitySetUIAppFocusedOnContinuityDisplay:location[0]];
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
          [(UIApplicationAccessibility *)selfCopy _accessibilitySetUIAppDisplayIDForContinuityDisplay:location[0]];
        }
      }

      break;
    default:
      v24.receiver = selfCopy;
      v24.super_class = UIApplicationAccessibility;
      [(UIApplicationAccessibility *)&v24 _iosAccessibilitySetValue:location[0] forAttribute:attributeCopy];
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

- (BOOL)openURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v5.receiver = selfCopy;
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
  mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  MEMORY[0x29EDC9740](mainBundle);

  return bundleIdentifier;
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
  selfCopy = self;
  v20[1] = a2;
  v20[0] = [(UIApplicationAccessibility *)self accessibilityUserDefinedLabel];
  if (v20[0])
  {
    v22 = MEMORY[0x29EDC9748](v20[0]);
    v19 = 1;
  }

  else
  {
    mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
    localizedInfoDictionary = [mainBundle localizedInfoDictionary];
    v17 = [localizedInfoDictionary objectForKey:@"CFBundleSpokenName"];
    if (![v17 length])
    {
      infoDictionary = [mainBundle infoDictionary];
      v2 = [infoDictionary objectForKey:@"CFBundleSpokenName"];
      v3 = v17;
      v17 = v2;
      MEMORY[0x29EDC9740](v3);
      MEMORY[0x29EDC9740](infoDictionary);
    }

    if (![v17 length])
    {
      v4 = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x29EDB8EB8]];
      v5 = v17;
      v17 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (![v17 length])
    {
      v6 = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x29EDB8F18]];
      v7 = v17;
      v17 = v6;
      MEMORY[0x29EDC9740](v7);
    }

    if (![v17 length])
    {
      v8 = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x29EDB8F08]];
      v9 = v17;
      v17 = v8;
      MEMORY[0x29EDC9740](v9);
    }

    if (![v17 length])
    {
      _accessibilityBundleIdentifier = [(UIApplicationAccessibility *)selfCopy _accessibilityBundleIdentifier];
      v11 = v17;
      v17 = _accessibilityBundleIdentifier;
      MEMORY[0x29EDC9740](v11);
    }

    [(UIApplicationAccessibility *)selfCopy setAccessibilityLabel:v17, &v17];
    v22 = MEMORY[0x29EDC9748](v17);
    v19 = 1;
    objc_storeStrong(location, 0);
    objc_storeStrong(&mainBundle, 0);
  }

  objc_storeStrong(v20, 0);
  v12 = v22;

  return v12;
}

- (id)_accessibilityElementsWithSemanticContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  if (location[0])
  {
    objc_storeStrong(location, location[0]);
  }

  else
  {
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    v15 = 1;
    objc_storeStrong(location, mEMORY[0x29EDC7938]);
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
  }

  options = [MEMORY[0x29EDC7328] options];
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel__accessibilitySemanticContextForElement_);
  Implementation = method_getImplementation(InstanceMethod);
  v6[1] = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__UIApplicationAccessibility__accessibilityElementsWithSemanticContext___block_invoke;
  v10 = &__block_descriptor_40_e8_B16__0_8l;
  v11 = Implementation;
  [options setLeafNodePredicate:?];
  v6[0] = [location[0] _accessibilityLeafDescendantsWithOptions:options];
  v5 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&options, 0);
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

- (uint64_t)_accessibilityActionIsPhysicalButton:(uint64_t *)button nativeUIKitTypeRef:
{
  if (self)
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

    if (button)
    {
      *button = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_accessibilityMakeUIPressInfoWithType:(uint64_t)type phase:(int)phase timestamp:(double)timestamp contextID:
{
  selfCopy = self;
  v17 = a2;
  typeCopy = type;
  timestampCopy = timestamp;
  phaseCopy = phase;
  if (self)
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

- (BOOL)_accessibilityDispatchScrollWithAmount:(int64_t)amount
{
  selfCopy = self;
  v32 = a2;
  amountCopy = amount;
  v30 = amount >= 0;
  v29 = 0;
  v28 = 0.0;
  while (1)
  {
    v27 = v29;
    v12 = v29 < 0 ? -v27 : v27;
    v26 = v12;
    v25 = amountCopy;
    v11 = amountCopy < 0 ? -v25 : v25;
    v24 = v11;
    if (v12 >= v11)
    {
      break;
    }

    v28 = v28 + 0.02;
    v23 = 5;
    v21 = amountCopy;
    if (amountCopy < 0)
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
    v18[0] = MEMORY[0x29EDC9748](selfCopy);
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

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  selfCopy = self;
  v25 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, value);
  portCopy = port;
  v21 = 0;
  if (([(UIApplicationAccessibility *)selfCopy _accessibilityActionIsPhysicalButton:actionCopy nativeUIKitTypeRef:&v21]& 1) != 0)
  {
    date = [MEMORY[0x29EDB8DB0] date];
    [date timeIntervalSinceNow];
    v8 = v5;
    MEMORY[0x29EDC9740](date);
    v20[1] = v8;
    v20[0] = [(UIApplicationAccessibility *)selfCopy _accessibilityMakeUIPressInfoWithType:v21 phase:0 timestamp:[(UIApplicationAccessibility *)selfCopy _accessibilityGetContextID] contextID:*&v8];
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    [mEMORY[0x29EDC7938] _sendButtonEventWithPressInfo:v20[0]];
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __81__UIApplicationAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke;
    v18 = &unk_29F30C690;
    v19[0] = MEMORY[0x29EDC9748](selfCopy);
    v19[1] = v21;
    AXPerformBlockOnMainThreadAfterDelay();
    v27 = 1;
    v13 = 1;
    objc_storeStrong(v19, 0);
    objc_storeStrong(v20, 0);
  }

  else if (actionCopy == 5016)
  {
    [(UIApplicationAccessibility *)selfCopy _accessibilityShowKeyboardHints];
    v27 = 1;
    v13 = 1;
  }

  else if (actionCopy == 2049)
  {
    [(UIApplicationAccessibility *)selfCopy _accessibilityStartStopDictation];
    v27 = 1;
    v13 = 1;
  }

  else if (actionCopy != 5021 || ((v12 = MEMORY[0x29EDC9748](location), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v13 = 0) : (v27 = -[UIApplicationAccessibility _accessibilityDispatchScrollWithAmount:](selfCopy, "_accessibilityDispatchScrollWithAmount:", [v12 integerValue]), v13 = 1), objc_storeStrong(&v12, 0), !v13))
  {
    if (([(UIApplicationAccessibility *)selfCopy _accessibilityHandleFullKeyboardAccessAction:actionCopy value:location]& 1) != 0)
    {
      v27 = 1;
      v13 = 1;
    }

    else if (actionCopy - 4100 <= 3)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityApplicationHandleButtonAction:actionCopy]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5200)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaPlay]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5201)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaPause]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5202)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaPlayPause]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5203)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaNextTrack]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5204)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaPreviousTrack]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5205)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaSkipDuration:?]& 1;
      v13 = 1;
    }

    else if (actionCopy == 5207)
    {
      v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaRewind]& 1;
      v13 = 1;
    }

    else
    {
      if (actionCopy == 5208)
      {
        v27 = [(UIApplicationAccessibility *)selfCopy _accessibilityMediaFastForward]& 1;
      }

      else
      {
        v11.receiver = selfCopy;
        v11.super_class = UIApplicationAccessibility;
        v27 = [(UIApplicationAccessibility *)&v11 _iosAccessibilityPerformAction:actionCopy withValue:location fencePort:portCopy];
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
  selfCopy = self;
  v41 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    _accessibilityResetAndClearNativeFocusSystem = 0;
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
          keyWindow = [v37 keyWindow];
          [keyWindow makeKeyWindow];
          MEMORY[0x29EDC9740](keyWindow);
          _accessibilityResetAndClearNativeFocusSystem = 1;
          objc_storeStrong(&v37, 0);
        }

        break;
      case 5311:
        _accessibilityResetAndClearNativeFocusSystem = [selfCopy _accessibilityResetAndClearNativeFocusSystem];
        break;
      case 5313:
        _accessibilityResetAndClearNativeFocusSystem = [selfCopy _accessibilityUpdateNativeFocusImmediately];
        break;
    }

    v43 = _accessibilityResetAndClearNativeFocusSystem & 1;
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    [self _accessibilitySetLastMediaRemoteCommand:?];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [self _accessibilitySetLastMediaRemoteCommand:1];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    [self _accessibilitySetLastMediaRemoteCommand:?];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [self _accessibilitySetLastMediaRemoteCommand:4];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [self _accessibilitySetLastMediaRemoteCommand:5];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (uint64_t)_accessibilityMediaSkipDuration:(void *)duration
{
  v13[1] = *MEMORY[0x29EDCA608];
  durationCopy = duration;
  location = 0;
  objc_storeStrong(&location, a2);
  if (durationCopy)
  {
    [(UIApplicationAccessibility *)durationCopy _accessibilityCancelRewindOrFastForward];
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
    [durationCopy _accessibilitySetLastMediaRemoteCommand:{v7, v4}];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [self _accessibilitySetLastMediaRemoteCommand:10];
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
  if (self)
  {
    [(UIApplicationAccessibility *)self _accessibilityCancelRewindOrFastForward];
    MRMediaRemoteSendCommand();
    [self _accessibilitySetLastMediaRemoteCommand:8];
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
  selfCopy = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x29EDB8E00]);
  _accessibilityFocusableScenes = [(UIApplicationAccessibility *)selfCopy _accessibilityFocusableScenes];
  v3 = _accessibilityFocusableScenes;
  v5 = MEMORY[0x29EDC9748](v7[0]);
  [v3 enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&_accessibilityFocusableScenes, 0);
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
  _accessibilityActiveScenes = [(UIApplicationAccessibility *)self _accessibilityActiveScenes];
  v4 = [_accessibilityActiveScenes axFilterObjectsUsingBlock:&__block_literal_global_1036];
  MEMORY[0x29EDC9740](_accessibilityActiveScenes);

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
  selfCopy = self;
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

- (id)_accessibilityWindowSceneForSceneID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  _accessibilityActiveScenes = [(UIApplicationAccessibility *)selfCopy _accessibilityActiveScenes];
  v7 = MEMORY[0x29EDC9748](location[0]);
  v4 = [_accessibilityActiveScenes ax_filteredArrayUsingBlock:?];
  firstObject = [v4 firstObject];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v7, 0);
  MEMORY[0x29EDC9740](_accessibilityActiveScenes);
  objc_storeStrong(location, 0);

  return firstObject;
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
  _accessibilityPreferredFocusedWindow = [(UIApplicationAccessibility *)self _accessibilityPreferredFocusedWindow];
  _accessibilityFocusContainer = [_accessibilityPreferredFocusedWindow _accessibilityFocusContainer];
  MEMORY[0x29EDC9740](_accessibilityPreferredFocusedWindow);

  return _accessibilityFocusContainer;
}

- (id)_accessibilityFocusedScene
{
  _accessibilityPreferredFocusedWindow = [(UIApplicationAccessibility *)self _accessibilityPreferredFocusedWindow];
  windowScene = [_accessibilityPreferredFocusedWindow windowScene];
  MEMORY[0x29EDC9740](_accessibilityPreferredFocusedWindow);

  return windowScene;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group
{
  _accessibilityFocusContainer = [(UIApplicationAccessibility *)self _accessibilityFocusContainer];
  v6 = [_accessibilityFocusContainer _accessibilityMoveFocusWithHeading:heading byGroup:group];
  MEMORY[0x29EDC9740](_accessibilityFocusContainer);
  return v6;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query
{
  selfCopy = self;
  v10 = a2;
  headingCopy = heading;
  location = 0;
  objc_storeStrong(&location, query);
  _accessibilityPreferredFocusedWindow = [(UIApplicationAccessibility *)selfCopy _accessibilityPreferredFocusedWindow];
  windowScene = [_accessibilityPreferredFocusedWindow windowScene];
  v7 = [windowScene _accessibilityMoveFocusWithHeading:headingCopy toElementMatchingQuery:location];
  MEMORY[0x29EDC9740](windowScene);
  MEMORY[0x29EDC9740](_accessibilityPreferredFocusedWindow);
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
    _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    v5 = [_applicationKeyWindow safeValueForKey:@"_focusResponder"];
    if (v5)
    {
      objc_storeStrong(location, v5);
    }

    else
    {
      objc_storeStrong(location, location[0]);
    }

    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](_applicationKeyWindow);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_targetInChainForAction:(SEL)action sender:(id)sender
{
  selfCopy = self;
  v18 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, sender);
  v14.receiver = selfCopy;
  v14.super_class = UIApplicationAccessibility;
  v15 = [(UIApplicationAccessibility *)&v14 _targetInChainForAction:actionCopy sender:location];
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v12 = 0;
    objc_opt_class();
    v9 = [(UIApplicationAccessibility *)selfCopy safeValueForKey:@"_responderForKeyEvents"];
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
        v8 = [v13 canPerformAction:actionCopy withSender:location] ^ 1;
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      nextResponder = [v13 nextResponder];
      v5 = v13;
      v13 = nextResponder;
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

- (id)_axAuditCheckDynamicTextSupport:(char)support andClippingIssues:(char)issues spinRunloop:
{
  v237 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v228 = a2;
  supportCopy = support;
  issuesCopy = issues;
  if (!self)
  {
    v230 = 0;
    goto LABEL_75;
  }

  array = [MEMORY[0x29EDB8DE8] array];
  weakToStrongObjectsMapTable = [MEMORY[0x29EDBA028] weakToStrongObjectsMapTable];
  weakToStrongObjectsMapTable2 = [MEMORY[0x29EDBA028] weakToStrongObjectsMapTable];
  v222 = 0;
  weakObjectsHashTable = [MEMORY[0x29EDB9FD0] weakObjectsHashTable];
  v138 = MEMORY[0x29EDC7368];
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  _accessibilityMainWindow = [mEMORY[0x29EDC7938] _accessibilityMainWindow];
  rootViewController = [_accessibilityMainWindow rootViewController];
  v220 = [v138 _axAuditFindFrontmostViewControllerForHierarchy:?];
  MEMORY[0x29EDC9740](rootViewController);
  MEMORY[0x29EDC9740](_accessibilityMainWindow);
  *&v4 = MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]).n128_u64[0];
  v142 = MEMORY[0x29EDC7368];
  view = [v220 view];
  [v142 _axAuditCaptureReferenceToCellsForViewHierarchy:?];
  system = [MEMORY[0x29EDC7A10] system];
  preferredContentSizeCategory = [system preferredContentSizeCategory];
  v218 = [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:{1, MEMORY[0x29EDC9740](system).n128_f64[0]}];
  if (v218)
  {
    _axAuditGetAllFontSizes = [MEMORY[0x29EDC7368] _axAuditGetAllFontSizes];
    v134 = MEMORY[0x29EDC7368];
    view2 = [v220 view];
    v216 = [v134 _accessibilityGetAllSwiftUISubviews:? withFiltering:?];
    MEMORY[0x29EDC9740](view2);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](_axAuditGetAllFontSizes);
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
        if (issuesCopy)
        {
          [MEMORY[0x29EDC7368] _axAuditSpinRunloopForDuration:0.1];
        }

        view3 = [v220 view];
        [view3 setNeedsLayout];
        *&v5 = MEMORY[0x29EDC9740](view3).n128_u64[0];
        view4 = [v220 view];
        [view4 layoutIfNeeded];
        *&v6 = MEMORY[0x29EDC9740](view4).n128_u64[0];
        v123 = MEMORY[0x29EDC7368];
        view5 = [v220 view];
        v213 = [v123 _accessibilityGetAllSubviews:? withFiltering:?];
        *&v7 = MEMORY[0x29EDC9740](view5).n128_u64[0];
        v125 = MEMORY[0x29EDC7368];
        view6 = [v220 view];
        v126 = [v125 _accessibilityGetAllSubviews:? withFiltering:?];
        v212 = [v126 mutableCopy];
        MEMORY[0x29EDC9740](v126);
        *&v8 = MEMORY[0x29EDC9740](view6).n128_u64[0];
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
            [MEMORY[0x29EDC7368] _axAuditStoreFontForElement:v207 intoDictionary:weakToStrongObjectsMapTable forCurrentFont:v215];
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
            [MEMORY[0x29EDC7368] _axAuditStoreFontForSwiftUIView:v205 intoDictionary:weakToStrongObjectsMapTable2 forCurrentFont:v215];
            [MEMORY[0x29EDC7368] _axAuditCheckSwiftUIViewForClipping:v205 storeIntoSet:weakObjectsHashTable];
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
            [MEMORY[0x29EDC7368] _axAuditCheckElementForClipping:v203 storeIntoSet:weakObjectsHashTable];
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
    [MEMORY[0x29EDC7368] _axAuditUIKitShouldReportFontSize:{preferredContentSizeCategory, v9}];
    [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:0];
    [MEMORY[0x29EDC7368] _axAuditSpinRunloopForDuration:0.1];
    view7 = [v220 view];
    accessibilityElements = [view7 accessibilityElements];
    *&v11 = MEMORY[0x29EDC9740](view7).n128_u64[0];
    v102 = MEMORY[0x29EDC7368];
    view8 = [v220 view];
    v103 = [v102 _accessibilityGetAllSubviews:? withFiltering:?];
    [v102 _axAuditUpdateRowHeightForTableAndCollectionViewsOfElements:?];
    MEMORY[0x29EDC9740](v103);
    *&v12 = MEMORY[0x29EDC9740](view8).n128_u64[0];
    view9 = [v220 view];
    v200 = [MEMORY[0x29EDC7368] _axAuditDereferenceCellsForViewHierarchy:view9];
    v199 = [v200 objectForKey:@"Font Info for Cells"];
    v198 = [v200 objectForKey:@"Clipping Info for Cells"];
    [selfCopy _addEntriesToMapTable:weakToStrongObjectsMapTable fromMapTable:v199];
    [weakObjectsHashTable unionHashTable:v198];
    [MEMORY[0x29EDC7368] _axAuditRemoveUnsupportedCategories:weakToStrongObjectsMapTable];
    v13 = [MEMORY[0x29EDC7368] _axAuditFindElementsNotSupportingDynamicText:weakToStrongObjectsMapTable];
    v14 = v222;
    v222 = v13;
    *&v15 = MEMORY[0x29EDC9740](v14).n128_u64[0];
    v197 = [MEMORY[0x29EDC7368] _axAuditFindElementsNotSupportingDynamicText:{weakToStrongObjectsMapTable2, v15}];
    [selfCopy _addEntriesToMapTable:v222 fromMapTable:v197];
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
          v92 = [_axAuditGetAllFontSizes sortedArrayUsingSelector:0x1FB932CF3uLL];
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
              window = [v189 window];
              v16 = MEMORY[0x29EDC9740](window).n128_u64[0];
              if (window)
              {
                v186 = 0;
                v187 = 0;
                superview = [v189 superview];
                [v189 frame];
                *&v182 = v17;
                *(&v182 + 1) = v18;
                v183 = v19;
                v184 = v20;
                v185 = v182;
                [superview convertPoint:0 toView:{v17, v18}];
                v186 = v21;
                v187 = v22;
                MEMORY[0x29EDC9740](superview);
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
            string = [v89 string];
            v40 = v190;
            v190 = string;
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
          [array addObject:v169];
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

    if (supportCopy)
    {
      memset(v167, 0, sizeof(v167));
      v87 = MEMORY[0x29EDC9748](weakObjectsHashTable);
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
              window2 = [v164 window];
              v47 = MEMORY[0x29EDC9740](window2).n128_u64[0];
              if (window2)
              {
                v162 = 0;
                v163 = 0;
                superview2 = [v164 superview];
                [v164 frame];
                *&v158 = v48;
                *(&v158 + 1) = v49;
                v159 = v50;
                v160 = v51;
                v161 = v158;
                [superview2 convertPoint:0 toView:{v48, v49}];
                v162 = v52;
                v163 = v53;
                MEMORY[0x29EDC9740](superview2);
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
            string2 = [v80 string];
            v71 = v165;
            v165 = string2;
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
          [array addObject:v145];
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
    objc_storeStrong(&view9, 0);
    objc_storeStrong(&v216, 0);
    objc_storeStrong(&_axAuditGetAllFontSizes, 0);
    goto LABEL_74;
  }

  [MEMORY[0x29EDC7368] _axAuditSwizzleAwayContentSize:0];
LABEL_74:
  v230 = MEMORY[0x29EDC9748](array);
  v188 = 1;
  objc_storeStrong(&preferredContentSizeCategory, 0);
  objc_storeStrong(&v220, 0);
  objc_storeStrong(&weakObjectsHashTable, 0);
  objc_storeStrong(&v222, 0);
  objc_storeStrong(&weakToStrongObjectsMapTable2, 0);
  objc_storeStrong(&weakToStrongObjectsMapTable, 0);
  objc_storeStrong(&array, 0);
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

- (void)_addEntriesToMapTable:(id)table fromMapTable:(id)mapTable
{
  v17 = *MEMORY[0x29EDCA608];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v14 = 0;
  objc_storeStrong(&v14, mapTable);
  memset(__b, 0, sizeof(__b));
  keyEnumerator = [v14 keyEnumerator];
  v10 = [keyEnumerator countByEnumeratingWithState:__b objects:v16 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [v14 objectForKey:v13];
      [location[0] setObject:v11 forKey:v13];
      objc_storeStrong(&v11, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [keyEnumerator countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](keyEnumerator);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAuditIssuesWithOptions:(id)options
{
  v65 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v59.receiver = selfCopy;
  v59.super_class = UIApplicationAccessibility;
  v60 = [(UIApplicationAccessibility *)&v59 _accessibilityAuditIssuesWithOptions:location[0]];
  if (!v60)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v4 = v60;
    v60 = array;
    MEMORY[0x29EDC9740](v4);
  }

  v58 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:@"AXAuditShouldHonorGroupsOption" inDictionary:location[0]];
  v57 = [(UIApplicationAccessibility *)selfCopy _accessibilityAuditVisibleElementsHonoringGroups:v58 & 1];
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
  array2 = [MEMORY[0x29EDB8DE8] array];
  if (v48 & 1) != 0 || (v47)
  {
    v6 = [(UIApplicationAccessibility *)selfCopy _axAuditCheckDynamicTextSupport:v47 & 1 andClippingIssues:v45 & 1 spinRunloop:?];
    v7 = v43;
    v43 = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (v46)
  {
    v24 = MEMORY[0x29EDC7368];
    _accessibilityMainWindow = [(UIApplicationAccessibility *)selfCopy _accessibilityMainWindow];
    rootViewController = [_accessibilityMainWindow rootViewController];
    v40 = [v24 _axAuditFindFrontmostViewControllerForHierarchy:?];
    MEMORY[0x29EDC9740](rootViewController);
    *&v8 = MEMORY[0x29EDC9740](_accessibilityMainWindow).n128_u64[0];
    view = [v40 view];
    v9 = [MEMORY[0x29EDC7368] _axAuditFindDescendantInaccessibleElements:view honorsGroups:v58 & 1];
    v10 = v42;
    v42 = v9;
    MEMORY[0x29EDC9740](v10);
    objc_storeStrong(&view, 0);
    objc_storeStrong(&v40, 0);
  }

  if (v44)
  {
    v17 = MEMORY[0x29EDC7368];
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    _accessibilityMainWindow2 = [mEMORY[0x29EDC7938] _accessibilityMainWindow];
    rootViewController2 = [_accessibilityMainWindow2 rootViewController];
    v18 = [v17 _axAuditFindFrontmostViewControllerForHierarchy:?];
    view2 = [v18 view];
    MEMORY[0x29EDC9740](v18);
    MEMORY[0x29EDC9740](rootViewController2);
    MEMORY[0x29EDC9740](_accessibilityMainWindow2);
    v37 = [MEMORY[0x29EDC7368] _accessibilityGetAllSwiftUISubviews:view2 withFiltering:{1, MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]).n128_f64[0]}];
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
        [array2 addObjectsFromArray:v34];
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
    objc_storeStrong(&view2, 0);
  }

  if (v43)
  {
    [v60 addObjectsFromArray:v43];
  }

  if (v42)
  {
    [v60 addObjectsFromArray:v42];
  }

  if (array2)
  {
    [v60 addObjectsFromArray:array2];
  }

  v12 = MEMORY[0x29EDC9748](v60);
  objc_storeStrong(&array2, 0);
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
  selfCopy = self;
  v9[1] = a2;
  _accessibilityMainWindow = [(UIApplicationAccessibility *)self _accessibilityMainWindow];
  location = [_accessibilityMainWindow rootViewController];
  v9[0] = [(UIApplicationAccessibility *)selfCopy _accessibilityApplicationSemanticContextWithViewController:?];
  *&v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
  if (!v9[0])
  {
    v9[0] = [*MEMORY[0x29EDC8008] _accessibilityApplicationSemanticContext];
    *&v3 = MEMORY[0x29EDC9740](0).n128_u64[0];
    if (!v9[0])
    {
      delegate = [*MEMORY[0x29EDC8008] delegate];
      v9[0] = [delegate _accessibilityApplicationSemanticContext];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](delegate);
    }
  }

  v5 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&_accessibilityMainWindow, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

- (id)_accessibilityApplicationSemanticContextWithViewController:(uint64_t)controller
{
  controllerCopy = controller;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controllerCopy)
  {
    v20 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x29EDC9748](location);
      visibleViewController = [v19 visibleViewController];
      _accessibilityApplicationSemanticContext = [visibleViewController _accessibilityApplicationSemanticContext];
      v3 = v20;
      v20 = _accessibilityApplicationSemanticContext;
      MEMORY[0x29EDC9740](v3);
      objc_storeStrong(&visibleViewController, 0);
      objc_storeStrong(&v19, 0);
    }

    if (!v20)
    {
      _accessibilityApplicationSemanticContext2 = [location _accessibilityApplicationSemanticContext];
      v5 = v20;
      v20 = _accessibilityApplicationSemanticContext2;
      MEMORY[0x29EDC9740](v5);
    }

    if (!v20)
    {
      childViewControllers = [location childViewControllers];
      v14 = [childViewControllers count];
      *&v6 = MEMORY[0x29EDC9740](childViewControllers).n128_u64[0];
      v17 = v14;
      for (i = v14 - 1; (i & 0x8000000000000000) == 0; --i)
      {
        childViewControllers2 = [location childViewControllers];
        v15 = [childViewControllers2 objectAtIndex:i];
        v7 = MEMORY[0x29EDC9740](childViewControllers2);
        v8 = [(UIApplicationAccessibility *)controllerCopy _accessibilityApplicationSemanticContextWithViewController:v15, v7];
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
  _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  rootViewController = [_applicationKeyWindow rootViewController];
  _accessibilitySpeakThisViewController = [rootViewController _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](rootViewController);
  MEMORY[0x29EDC9740](_applicationKeyWindow);

  return _accessibilitySpeakThisViewController;
}

- (id)_accessibilityFirstElementsForSpeakThis
{
  v21 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15[1] = a2;
  v19 = &_accessibilityFirstElementsForSpeakThis_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1080);
  if (*v19 != -1)
  {
    dispatch_once(v19, location);
  }

  objc_storeStrong(&location, 0);
  v15[0] = [(UIApplicationAccessibility *)selfCopy _accessibilitySpeakThisViewController];
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
    _accessibilitySpeakThisViews = [v15[0] _accessibilitySpeakThisViews];
    firstObject = [_accessibilitySpeakThisViews firstObject];
    *&v4 = MEMORY[0x29EDC9740](_accessibilitySpeakThisViews).n128_u64[0];
    _accessibilityFirstElementsForSpeakThis = [firstObject _accessibilityFirstElementsForSpeakThis];
    v10 = 1;
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    _accessibilitySpeakThisElementsAndStrings = [v15[0] _accessibilitySpeakThisElementsAndStrings];
    v11 = [_accessibilitySpeakThisElementsAndStrings mutableCopy];
    *&v3 = MEMORY[0x29EDC9740](_accessibilitySpeakThisElementsAndStrings).n128_u64[0];
    [v11 addObject:{@"SpeakThis-LegacyMethodWasUsed", v3}];
    _accessibilityFirstElementsForSpeakThis = MEMORY[0x29EDC9748](v11);
    v10 = 1;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v15, 0);
  v5 = _accessibilityFirstElementsForSpeakThis;

  return v5;
}

Method __69__UIApplicationAccessibility__accessibilityFirstElementsForSpeakThis__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel__accessibilitySpeakThisElementsAndStrings);
  _accessibilityFirstElementsForSpeakThis_speakThisElementsBaseMethod = result;
  return result;
}

- (void)_accessibilitySetSpeakThisRootElement:(id)element
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisRootElementAccessibilityIdentifier:(id)identifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisSceneIdentifierRequestedForActiveSpeakScreenSession:(id)session
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetSpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession:(id)session
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
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
  _accessibilitySpeakThisElementsAndStrings = [v5[0] _accessibilitySpeakThisElementsAndStrings];
  objc_storeStrong(v5, 0);

  return _accessibilitySpeakThisElementsAndStrings;
}

- (void)_accessibilitySetUIAppFocusedOnContinuityDisplay:(id)display
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, display);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetUIAppDisplayIDForContinuityDisplay:(id)display
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, display);
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

- (void)sendEvent:(id)event
{
  v33 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v25.receiver = selfCopy;
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

- (void)_finishButtonEvent:(id)event
{
  v15 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v10.receiver = selfCopy;
  v10.super_class = UIApplicationAccessibility;
  [(UIApplicationAccessibility *)&v10 _finishButtonEvent:location[0]];
  v9 = AXLogUIA();
  v8 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    allPresses = [location[0] allPresses];
    __os_log_helper_16_0_1_4_0(v14, [allPresses count]);
    _os_log_impl(&dword_29C4D6000, v9, v8, "Received button event (%d)", v14, 8u);
    MEMORY[0x29EDC9740](allPresses);
  }

  objc_storeStrong(&v9, 0);
  if (_AXSAutomationEnabled())
  {
    oslog = AXLogUIA();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      allPresses2 = [location[0] allPresses];
      __os_log_helper_16_0_1_4_0(v13, [allPresses2 count]);
      _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Processed button event (%d)", v13, 8u);
      MEMORY[0x29EDC9740](allPresses2);
    }

    objc_storeStrong(&oslog, 0);
    allPresses3 = [location[0] allPresses];
    v4 = [allPresses3 count];
    MEMORY[0x29EDC9740](allPresses3);
    if (!v4)
    {
      UIAccessibilityPostNotification(0xFA2u, &unk_2A238E9E8);
    }
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)_accessibilityCancelRewindOrFastForward
{
  if (self)
  {
    v3 = 0;
    _accessibilityGetLastMediaRemoteCommand = [self _accessibilityGetLastMediaRemoteCommand];
    if (_accessibilityGetLastMediaRemoteCommand == 10 || _accessibilityGetLastMediaRemoteCommand == 8)
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
  _accessibilityFocusedScene = [(UIApplicationAccessibility *)self _accessibilityFocusedScene];
  v8[0] = [_accessibilityFocusedScene _accessibilityNativeFocusElement];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityFocusedScene).n128_u64[0];
  if (!v8[0])
  {
    _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    windowScene = [_applicationKeyWindow windowScene];
    v8[0] = [windowScene _accessibilityNativeFocusElement];
    MEMORY[0x29EDC9740](0);
    MEMORY[0x29EDC9740](windowScene);
    MEMORY[0x29EDC9740](_applicationKeyWindow);
  }

  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v4;
}

- (id)_accessibilityPreferredFocusedWindow
{
  v52 = *MEMORY[0x29EDCA608];
  selfCopy = self;
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
      focusSystem = [v27 focusSystem];
      _isEnabled = [focusSystem _isEnabled];
      v24 = 0;
      v22 = 0;
      LOBYTE(v10) = 0;
      if (_isEnabled)
      {
        session = [v30 session];
        v24 = 1;
        role = [session role];
        v22 = 1;
        v10 = [role isEqualToString:*MEMORY[0x29EDC8270]] ^ 1;
      }

      if (v22)
      {
        MEMORY[0x29EDC9740](role);
      }

      if (v24)
      {
        MEMORY[0x29EDC9740](session);
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_25;
      }

      focusedItem = [focusSystem focusedItem];
      _accessibilityWindow = [focusedItem _accessibilityWindow];
      v19 = 0;
      if (_accessibilityWindow)
      {
        v2 = MEMORY[0x29EDC9748](_accessibilityWindow);
      }

      else
      {
        keyWindow = [v30 keyWindow];
        v19 = 1;
        v2 = MEMORY[0x29EDC9748](keyWindow);
      }

      v21 = v2;
      if (v19)
      {
        MEMORY[0x29EDC9740](keyWindow);
      }

      MEMORY[0x29EDC9740](_accessibilityWindow);
      MEMORY[0x29EDC9740](focusedItem);
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

      objc_storeStrong(&focusSystem, 0);
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
    v7 = selfCopy;
    mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
    v50 = [(UIApplicationAccessibility *)v7 _keyWindowForScreen:?];
    MEMORY[0x29EDC9740](mainScreen);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIApplicationAccessibility *)self _accessibilityNativeFocusElement];
  if (location[0] != selfCopy)
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
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  [v8[0] setLeafNodePredicate:&__block_literal_global_1125];
  v7 = [(UIApplicationAccessibility *)selfCopy _accessibilityLeafDescendantsWithOptions:v8[0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v7];
    array = [v6 array];
    v3 = v7;
    v7 = array;
    MEMORY[0x29EDC9740](v3);
    objc_storeStrong(&v6, 0);
  }

  v5 = [(UIApplicationAccessibility *)selfCopy _accessibilitySortExplorerElements:v7];
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

- (id)_accessibilityNativeFocusableElements:(id)elements
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  v4 = [(UIApplicationAccessibility *)selfCopy _accessibilityNativeFocusableElements:location[0] matchingBlock:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityNativeFocusableElements:(id)elements withQueryString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  v10 = 0;
  objc_storeStrong(&v10, string);
  v7 = selfCopy;
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

- (id)_accessibilityNativeFocusableElements:(id)elements matchingBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  v7 = 0;
  objc_storeStrong(&v7, block);
  v6 = [(UIApplicationAccessibility *)selfCopy _accessibilityNativeFocusableElements:location[0] matchingBlock:v7 forExistenceCheckOnly:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accessibilityNativeFocusableElements:(id)elements matchingBlock:(id)block forExistenceCheckOnly:(BOOL)only
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  v23 = 0;
  objc_storeStrong(&v23, block);
  onlyCopy = only;
  v20 = 0;
  if (location[0])
  {
    objc_storeStrong(location, location[0]);
  }

  else
  {
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    v20 = 1;
    objc_storeStrong(location, mEMORY[0x29EDC7938]);
  }

  if (v20)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
  }

  defaultFullKeyboardAccessOptions = [MEMORY[0x29EDC7328] defaultFullKeyboardAccessOptions];
  v9 = defaultFullKeyboardAccessOptions;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = -1073741824;
  v15 = 0;
  v16 = __104__UIApplicationAccessibility__accessibilityNativeFocusableElements_matchingBlock_forExistenceCheckOnly___block_invoke;
  v17 = &unk_29F30D1C8;
  v18 = MEMORY[0x29EDC9748](v23);
  [v9 setLeafNodePredicate:&v13];
  v12 = 0;
  if (onlyCopy)
  {
    v5 = [location[0] _accessibilityLeafDescendantsWithCount:1 options:defaultFullKeyboardAccessOptions];
  }

  else
  {
    v5 = [location[0] _accessibilityLeafDescendantsWithOptions:defaultFullKeyboardAccessOptions];
  }

  v6 = v12;
  v12 = v5;
  MEMORY[0x29EDC9740](v6);
  v8 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&defaultFullKeyboardAccessOptions, 0);
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
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    _accessibilityMainWindow = [mEMORY[0x29EDC7938] _accessibilityMainWindow];
    v9[0] = [_accessibilityMainWindow windowScene];
    MEMORY[0x29EDC9740](_accessibilityMainWindow);
    *&v2 = MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]).n128_u64[0];
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
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIApplicationAccessibility;
  return [(UIApplicationAccessibility *)&v3 accessibilityElements];
}

- (id)_accessibilityConnectedScenes
{
  selfCopy = self;
  v7[1] = a2;
  v4 = [(UIApplicationAccessibility *)self safeSetForKey:@"connectedScenes"];
  v7[0] = [v4 mutableCopy];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  _accessibilityActiveScenes = [(UIApplicationAccessibility *)selfCopy _accessibilityActiveScenes];
  [v7[0] addObjectsFromArray:_accessibilityActiveScenes];
  v5 = [v7[0] copy];
  objc_storeStrong(&_accessibilityActiveScenes, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

@end