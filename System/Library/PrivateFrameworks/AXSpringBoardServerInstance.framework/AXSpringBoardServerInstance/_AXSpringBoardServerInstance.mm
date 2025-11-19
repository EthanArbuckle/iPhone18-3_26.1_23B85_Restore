@interface _AXSpringBoardServerInstance
+ (id)springBoardServerInstance;
- (AXSpringBoardServerInstanceDelegate)delegate;
- (BOOL)_hasReachabilityHandlerForClientPort:(unsigned int)a3;
- (BOOL)_inSetupMode;
- (BOOL)hasActiveCall;
- (BOOL)hasActiveEndpointCall;
- (BOOL)hasActiveOrPendingCall;
- (BOOL)hasActiveOrPendingCallOrFaceTime;
- (BOOL)onlySystemGesturesDisabledHolderIsGuidedAccess;
- (BOOL)shouldAllowActiveWatchToAutoAnswer;
- (BOOL)shouldBlockGestureActivation:(unint64_t)a3;
- (_AXSpringBoardServerInstance)init;
- (id)_actionHandling:(id)a3;
- (id)_activateSOSMode:(id)a3;
- (id)_allowedMedusaGestures:(id)a3;
- (id)_appNameFromPid:(id)a3;
- (id)_areSystemGesturesDisabledByAccessibility:(id)a3;
- (id)_areSystemGesturesDisabledNatively:(id)a3;
- (id)_armApplePay:(id)a3;
- (id)_assertionClientForPort:(unsigned int)a3;
- (id)_canSetDockIconActivationMode:(id)a3;
- (id)_cancelGestureActivation:(id)a3;
- (id)_cancelSiriDismissalForAssistiveTouch:(id)a3;
- (id)_connectedDevicesHaveAssistiveTouchCustomActions:(id)a3;
- (id)_connectedDevicesRequireAssistiveTouch:(id)a3;
- (id)_copyStringToPasteboard:(id)a3;
- (id)_diminishJindo:(id)a3;
- (id)_dismissAppSwitcher:(id)a3;
- (id)_dismissShelfSwitcher:(id)a3;
- (id)_dismissSiri:(id)a3;
- (id)_getActiveInterfaceOrientation:(id)a3;
- (id)_getApplicationOrientation:(id)a3;
- (id)_getPid:(id)a3;
- (id)_getSplashImageForApp:(id)a3;
- (id)_handleAcquireAssertion:(id)a3;
- (id)_handleBluetoothPowerEnabled:(id)a3;
- (id)_handleDisplayIdentifierForSceneIdentifier:(id)a3;
- (id)_handleFreezeClarityUILoadingScreen:(id)a3;
- (id)_handleGetFocusedAppPID:(id)a3;
- (id)_handleGetFocusedApps:(id)a3;
- (id)_handleGetFocusedOccludedAppScenes:(id)a3;
- (id)_handleGetPurpleBuddyPID:(id)a3;
- (id)_handleGetRunningAppPIDs:(id)a3;
- (id)_handleInstalledApps:(id)a3;
- (id)_handleInternalApps:(id)a3;
- (id)_handleIsChamoisOrFlexibleWindowingEnabled:(id)a3;
- (id)_handleIsInspectorMinimized:(id)a3;
- (id)_handleIsMagnifierVisible:(id)a3;
- (id)_handleIsMenuBarModal:(id)a3;
- (id)_handleIsMenuBarVisible:(id)a3;
- (id)_handleIsPurpleBuddyAppFrontmost:(id)a3;
- (id)_handleIsSettingsAppFrontmost:(id)a3;
- (id)_handleIsSystemAppFrontmost:(id)a3;
- (id)_handleIsSystemAppShowingAnAlert:(id)a3;
- (id)_handleLaunchMagnifierApp:(id)a3;
- (id)_handleLaunchOnboardingViewService:(id)a3;
- (id)_handleLaunchVoiceOverImageExplorerViewService:(id)a3;
- (id)_handleLaunchVoiceOverQuickSettingsViewService:(id)a3;
- (id)_handleLoadGAXBundleForUnmanagedASAM:(id)a3;
- (id)_handleNativeFocusedApplication:(id)a3;
- (id)_handlePresentNearbyDeviceControlPicker:(id)a3;
- (id)_handleReactivateInCallService:(id)a3;
- (id)_handleRelinquishAssertion:(id)a3;
- (id)_handleRevealSpotlight:(id)a3;
- (id)_handleSetBluetoothPowerEnabled:(id)a3;
- (id)_handleSetMenuBarVisible:(id)a3;
- (id)_handleSetVoiceOverEnabled:(id)a3;
- (id)_handleSetZoomEnabled:(id)a3;
- (id)_handleSpringBoardInfoQuery:(id)a3;
- (id)_handleToggleIncomingCall:(id)a3;
- (id)_handleToggleSpotlight:(id)a3;
- (id)_handleVoiceOverEnabled:(id)a3;
- (id)_handleZoomEnabled:(id)a3;
- (id)_hasActiveCall:(id)a3;
- (id)_hasActiveEndpointCall:(id)a3;
- (id)_hasActiveOrPendingCall:(id)a3;
- (id)_hasActiveOrPendingCallOrFaceTime:(id)a3;
- (id)_hideAlert:(id)a3;
- (id)_hideRemoteView:(id)a3;
- (id)_initServer;
- (id)_installGuestPassAcceptDialogGesture:(id)a3;
- (id)_installGuestPassPINGesture:(id)a3;
- (id)_isAppSwitcherVisible:(id)a3;
- (id)_isContinuitySessionActive:(id)a3;
- (id)_isControlCenterVisible:(id)a3;
- (id)_isDarkModeActive:(id)a3;
- (id)_isDockVisible:(id)a3;
- (id)_isGuidedAccessActive:(id)a3;
- (id)_isLockScreenVisible:(id)a3;
- (id)_isLongLookNotificationVisible:(id)a3;
- (id)_isMakingEmergencyCall:(id)a3;
- (id)_isMediaPlaying:(id)a3;
- (id)_isNotificationCenterVisible:(id)a3;
- (id)_isOrientationLocked:(id)a3;
- (id)_isPIPWindowVisible:(id)a3;
- (id)_isPasscodeLockVisible:(id)a3;
- (id)_isPointInAXInspector:(id)a3;
- (id)_isRingerMuted:(id)a3;
- (id)_isShelfSwitcherVisible:(id)a3;
- (id)_isShowingHomescreen:(id)a3;
- (id)_isShowingNonSystemApp:(id)a3;
- (id)_isShowingRemoteView:(id)a3;
- (id)_isSideSwitchUsedForOrientation:(id)a3;
- (id)_isSiriVisible:(id)a3;
- (id)_isSpeakThisTemporarilyDisabled:(id)a3;
- (id)_isSpotlightVisible:(id)a3;
- (id)_isSyncingRestoringResettingOrUpdating:(id)a3;
- (id)_isSystemSleeping:(id)a3;
- (id)_isTypeToSiriVisible:(id)a3;
- (id)_isVoiceControlRunning:(id)a3;
- (id)_jindoAppIdentifiers:(id)a3;
- (id)_launchAccessibilityReader:(id)a3;
- (id)_medusaApps:(id)a3;
- (id)_openAppSwitcher:(id)a3;
- (id)_openCommandAndControlCommands:(id)a3;
- (id)_openCommandAndControlSettings:(id)a3;
- (id)_openCommandAndControlVocabulary:(id)a3;
- (id)_openCustomGestureCreationForAST:(id)a3;
- (id)_openCustomGestureCreationForSCAT:(id)a3;
- (id)_openTypeToSiri:(id)a3;
- (id)_openVoiceControl:(id)a3;
- (id)_pauseMedia:(id)a3;
- (id)_performMedusaGesture:(id)a3;
- (id)_reachabilityActive:(id)a3;
- (id)_reachabilityEnabled:(id)a3;
- (id)_reachabilityHandling:(id)a3;
- (id)_reachabilityOffset:(id)a3;
- (id)_rebootDevice:(id)a3;
- (id)_removeGuestPassAcceptDialogGesture:(id)a3;
- (id)_resetDimTimer:(id)a3;
- (id)_resumeMedia:(id)a3;
- (id)_setCaptionPanelContextId:(id)a3;
- (id)_setDockIconActivationMode:(id)a3;
- (id)_setOrientation:(id)a3;
- (id)_setOrientationLocked:(id)a3;
- (id)_setSpeechPlaybackControls:(id)a3;
- (id)_showAlert:(id)a3;
- (id)_showControlCenter:(id)a3;
- (id)_showNotificationCenter:(id)a3;
- (id)_showRemoteView:(id)a3;
- (id)_simulateEdgePressHaptics:(id)a3;
- (id)_startHearingAidServer:(id)a3;
- (id)_toggleAppLibrary:(id)a3;
- (id)_toggleBackgroundSounds:(id)a3;
- (id)_toggleConversationBoost:(id)a3;
- (id)_toggleDarkMode:(id)a3;
- (id)_toggleDetectionMode:(id)a3;
- (id)_toggleDock:(id)a3;
- (id)_toggleHearingControl:(id)a3;
- (id)_toggleLiveTranscription:(id)a3;
- (id)_toggleNotificationCenter:(id)a3;
- (id)_toggleQuickNote:(id)a3;
- (id)_toggleTorch:(id)a3;
- (id)_topEventPidOverride:(id)a3;
- (id)_unlockDevice:(id)a3;
- (id)_visibleTripleClickItems:(id)a3;
- (id)_volumeLevel:(id)a3;
- (id)_wakeUpDeviceIfNecessary:(id)a3;
- (void)_accessibilityRetrieveAVSystemControlData:(id)a3 withCompletionBlock:(id)a4;
- (void)_biomeDonationLargeTextDidChange:(id)a3;
- (void)_handleLiveTranscriptionStatusChange;
- (void)_initializeAutoAnswerWatchObserver;
- (void)_initializeBiomeStreamDonations;
- (void)_initializeHandlers;
- (void)_initializeHearing;
- (void)_initializeLiveTranscriptionObserver;
- (void)_performBlockAsynchronously:(id)a3 afterDelay:(double)a4;
- (void)_performValidation;
- (void)_playSafetySoundAndHaptic;
- (void)_proximityDidChange:(id)a3;
- (void)_rampUpCallVolume;
- (void)_rampUpCallVolumeFromVolume:(float)a3 toVolume:(float)a4 totalDuration:(float)a5 progress:(float)a6;
- (void)_registerServerAndNotifyClients;
- (void)_removeReachabilityHandler:(unsigned int)a3;
- (void)_requestOnWristState;
- (void)_setAVCallRoute:(id)a3 rampUp:(BOOL)a4;
- (void)_setCallRoute:(int)a3 ifCurrentlyRoutedTo:(id)a4 rampUp:(BOOL)a5;
- (void)_setCallRoute:(int)a3 ifCurrentlyRoutedTo:(id)a4 withRoutes:(id)a5 rampUp:(BOOL)a6;
- (void)_setDashboardSystemGesturesDisabled:(BOOL)a3;
- (void)_setSystemGesturesEnabled:(BOOL)a3;
- (void)_setupAssertionServerIfNeeded;
- (void)_springBoardFinishedLaunching:(id)a3;
- (void)_updateProcess:(id)a3;
- (void)dealloc;
- (void)didReceiveIncomingData:(id)a3;
- (void)springBoardActionOccurred:(int64_t)a3 withPayload:(id)a4;
- (void)userChangedRouteNotification:(id)a3;
@end

@implementation _AXSpringBoardServerInstance

+ (id)springBoardServerInstance
{
  if (springBoardServerInstance_onceToken != -1)
  {
    +[_AXSpringBoardServerInstance springBoardServerInstance];
  }

  v3 = ServerInstance;

  return v3;
}

- (BOOL)hasActiveOrPendingCallOrFaceTime
{
  v2 = self;
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  LOBYTE(v2) = [v3 hasActiveOrPendingCallOrFaceTimeWithServerInstance:v2];

  return v2;
}

- (AXSpringBoardServerInstanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)springBoardActionOccurred:(int64_t)a3 withPayload:(id)a4
{
  v6 = a4;
  v7 = [(_AXSpringBoardServerInstance *)self actionHandlerHelper];
  [v7 notifyActionOccurredWithType:a3 payload:v6];

  if (a3 == 2 && UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [(_AXSpringBoardServerInstance *)self delegate];
    v9 = [v8 isRingerMutedWithServerInstance:self];

    if ((v9 & 1) == 0)
    {

      AXPerformBlockOnMainThread();
    }
  }
}

- (BOOL)shouldBlockGestureActivation:(unint64_t)a3
{
  if (a3 != 4)
  {
    if (a3 == 2)
    {
      if ((AXCancelControlCenter & 1) != 0 || [(_AXSpringBoardServerInstance *)self disableControlCenterAssertionHeld])
      {
        return 1;
      }
    }

    else if (a3 == 1 && ((AXCancelShowNotificationGesture & 1) != 0 || [(_AXSpringBoardServerInstance *)self disableNotificationCenterAssertionHeld]))
    {
      return 1;
    }

    return 0;
  }

  return (AXCancelShowHUD & 1) != 0;
}

- (BOOL)_hasReachabilityHandlerForClientPort:(unsigned int)a3
{
  reachabilityHandlers = self->_reachabilityHandlers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69___AXSpringBoardServerInstance__hasReachabilityHandlerForClientPort___block_invoke;
  v5[3] = &__block_descriptor_36_e28_B32__0__AXIPCClient_8Q16_B24l;
  v6 = a3;
  return [(NSMutableArray *)reachabilityHandlers indexOfObjectPassingTest:v5]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_removeReachabilityHandler:(unsigned int)a3
{
  reachabilityHandlers = self->_reachabilityHandlers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___AXSpringBoardServerInstance__removeReachabilityHandler___block_invoke;
  v6[3] = &__block_descriptor_36_e15_B32__0_8Q16_B24l;
  v7 = a3;
  v5 = [(NSMutableArray *)reachabilityHandlers indexesOfObjectsPassingTest:v6];
  if (v5)
  {
    [(NSMutableArray *)self->_reachabilityHandlers removeObjectsAtIndexes:v5];
  }
}

- (BOOL)hasActiveCall
{
  v2 = self;
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  LOBYTE(v2) = [v3 hasActiveCallWithServerInstance:v2];

  return v2;
}

- (BOOL)hasActiveEndpointCall
{
  v2 = self;
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  LOBYTE(v2) = [v3 hasActiveEndpointCallWithServerInstance:v2];

  return v2;
}

- (BOOL)hasActiveOrPendingCall
{
  v2 = self;
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  LOBYTE(v2) = [v3 hasActiveOrPendingCallWithServerInstance:v2];

  return v2;
}

- (void)userChangedRouteNotification:(id)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x277CE7CB0];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
}

- (void)_proximityDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67B30]];
  v6 = [v5 BOOLValue];

  if (UIAccessibilityIsVoiceOverRunning() && [(_AXSpringBoardServerInstance *)self hasActiveCall]&& _AXSVoiceOverTouchShouldRouteToSpeakerWithProximity())
  {
    v7 = HCLogHearing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = v6;
      _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_DEFAULT, "Proximity Changed (%d) triggering an audio route change", v13, 8u);
    }

    if (v6)
    {
      v8 = @"Speaker";
      v9 = self;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v8 = @"Receiver";
      v9 = self;
      v10 = 2;
      v11 = 1;
    }

    [(_AXSpringBoardServerInstance *)v9 _setCallRoute:v10 ifCurrentlyRoutedTo:v8 rampUp:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_accessibilityRetrieveAVSystemControlData:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  avSystemRetrievalQueue = self->_avSystemRetrievalQueue;
  if (!avSystemRetrievalQueue)
  {
    v9 = dispatch_queue_create("accessibility.avsystem.retrieval", 0);
    v10 = self->_avSystemRetrievalQueue;
    self->_avSystemRetrievalQueue = v9;

    avSystemRetrievalQueue = self->_avSystemRetrievalQueue;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94___AXSpringBoardServerInstance__accessibilityRetrieveAVSystemControlData_withCompletionBlock___block_invoke;
  v13[3] = &unk_27842C3C0;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(avSystemRetrievalQueue, v13);
}

- (void)_setCallRoute:(int)a3 ifCurrentlyRoutedTo:(id)a4 rampUp:(BOOL)a5
{
  v8 = a4;
  if ([(_AXSpringBoardServerInstance *)self hasActiveOrPendingCallOrFaceTime])
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__2;
    v15[4] = __Block_byref_object_dispose__2;
    v16 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73___AXSpringBoardServerInstance__setCallRoute_ifCurrentlyRoutedTo_rampUp___block_invoke;
    v14[3] = &unk_27842BD38;
    v14[4] = v15;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73___AXSpringBoardServerInstance__setCallRoute_ifCurrentlyRoutedTo_rampUp___block_invoke_349;
    v9[3] = &unk_27842C3E8;
    v9[4] = self;
    v12 = a3;
    v10 = v8;
    v11 = v15;
    v13 = a5;
    [(_AXSpringBoardServerInstance *)self _accessibilityRetrieveAVSystemControlData:v14 withCompletionBlock:v9];

    _Block_object_dispose(v15, 8);
  }
}

- (void)_setCallRoute:(int)a3 ifCurrentlyRoutedTo:(id)a4 withRoutes:(id)a5 rampUp:(BOOL)a6
{
  v31 = a6;
  v76 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v33 = a5;
  v7 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v7 displayedCall];
  if (v8)
  {

LABEL_4:
    v10 = [MEMORY[0x277D6EDD0] sharedAudioSystemController];
    v11 = [v8 audioCategory];
    v12 = [v8 audioMode];
    v32 = [v10 pickableRoutesForCategory:v11 andMode:v12];

    goto LABEL_5;
  }

  v9 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v9 currentVideoCall];

  if (v8)
  {
    goto LABEL_4;
  }

  v32 = 0;
LABEL_5:
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__2;
  v70 = __Block_byref_object_dispose__2;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__2;
  v64 = __Block_byref_object_dispose__2;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__2;
  v58 = __Block_byref_object_dispose__2;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__2;
  v40[4] = __Block_byref_object_dispose__2;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__2;
  v38[4] = __Block_byref_object_dispose__2;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__2;
  v36[4] = __Block_byref_object_dispose__2;
  v37 = 0;
  v13 = [v32 arrayByAddingObjectsFromArray:v33];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __84___AXSpringBoardServerInstance__setCallRoute_ifCurrentlyRoutedTo_withRoutes_rampUp___block_invoke;
  v35[3] = &unk_27842C410;
  v35[4] = &v66;
  v35[5] = &v54;
  v35[6] = &v60;
  v35[7] = v40;
  v35[8] = &v48;
  v35[9] = v38;
  v35[10] = v36;
  v35[11] = &v42;
  [v13 enumerateObjectsUsingBlock:v35];

  v14 = v67[5];
  if (!v14)
  {
    v15 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v16 = [v15 attributeForKey:*MEMORY[0x277D26C70]];
    v17 = v67[5];
    v67[5] = v16;

    v14 = v67[5];
  }

  v18 = [v14 valueForKey:*MEMORY[0x277D26AE0]];
  v19 = v18;
  if (!v34 || [v18 isEqualToString:v34])
  {
    v20 = [MEMORY[0x277D12E20] sharedInstance];
    v21 = [v20 pairedHearingAids];
    if (v21)
    {
      v22 = [MEMORY[0x277D12E20] sharedInstance];
      v23 = [v22 isiCloudPaired];

      if (!v23)
      {
        v24 = HCLogHearing();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21FE6B000, v24, OS_LOG_TYPE_DEFAULT, "Hearing aids paired. Skipping call route", buf, 2u);
        }

        v25 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (a3 == 2)
    {
      v26 = v61;
    }

    else if (a3 == 1)
    {
      v25 = v49[5];
      if (v25)
      {
LABEL_26:
        v27 = AXLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v25;
          _os_log_impl(&dword_21FE6B000, v27, OS_LOG_TYPE_DEFAULT, "Setting new telephony route for accessibility: %@", buf, 0xCu);
        }

        if (v25)
        {
          objc_storeStrong(&AXPreviousCallRoute, v67[5]);
        }

        [(_AXSpringBoardServerInstance *)self _setAVCallRoute:v25 rampUp:v31];
        goto LABEL_31;
      }

      v26 = v55;
    }

    else
    {
      v25 = 0;
      if (a3 || !v34)
      {
        goto LABEL_26;
      }

      v26 = v43;
    }

    v25 = v26[5];
    goto LABEL_26;
  }

  v25 = HCLogHearing();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v73 = v34;
    v74 = 2112;
    v75 = v19;
    _os_log_impl(&dword_21FE6B000, v25, OS_LOG_TYPE_DEFAULT, "Not switching call route to %@ as it did not match expected route (%@)", buf, 0x16u);
  }

LABEL_31:

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setAVCallRoute:(id)a3 rampUp:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = HCLogHearing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_DEFAULT, "Changing route to %@", &v11, 0xCu);
    }

    v8 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [v8 setAttribute:v6 forKey:*MEMORY[0x277D26C70] error:0];

    if (v4)
    {
      [(_AXSpringBoardServerInstance *)self _rampUpCallVolume];
    }

    else
    {
      callAudioRampTimer = self->_callAudioRampTimer;
      if (callAudioRampTimer)
      {
        [(NSTimer *)callAudioRampTimer invalidate];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_rampUpCallVolume
{
  v14 = *MEMORY[0x277D85DE8];
  callAudioRampTimer = self->_callAudioRampTimer;
  if (callAudioRampTimer)
  {
    [(NSTimer *)callAudioRampTimer invalidate];
  }

  v11 = 0.0;
  v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v5 = [v4 getVolume:&v11 forCategory:@"PhoneCall"];

  if (v5)
  {
    v6 = HCLogHearing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v11;
      _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_DEFAULT, "Ramping up call volume from 0.2 to %f", buf, 0xCu);
    }

    *&v7 = v11;
    LODWORD(v8) = 1045220557;
    LODWORD(v9) = 1.5;
    [(_AXSpringBoardServerInstance *)self _rampUpCallVolumeFromVolume:v8 toVolume:v7 totalDuration:v9 progress:0.0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_rampUpCallVolumeFromVolume:(float)a3 toVolume:(float)a4 totalDuration:(float)a5 progress:(float)a6
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92___AXSpringBoardServerInstance__rampUpCallVolumeFromVolume_toVolume_totalDuration_progress___block_invoke;
  block[3] = &unk_27842C438;
  objc_copyWeak(&v19, &location);
  v20 = a4;
  v21 = a3;
  v22 = a6;
  v23 = a5;
  v11 = dispatch_block_create(0, block);
  v12 = MEMORY[0x277CBEBB8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92___AXSpringBoardServerInstance__rampUpCallVolumeFromVolume_toVolume_totalDuration_progress___block_invoke_378;
  v16[3] = &unk_27842C460;
  v13 = v11;
  v17 = v13;
  v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v16 block:0.1];
  callAudioRampTimer = self->_callAudioRampTimer;
  self->_callAudioRampTimer = v14;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_playSafetySoundAndHaptic
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_21FE6B000, v0, v1, "failed to play haptic: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (_AXSpringBoardServerInstance)init
{
  NSLog(&cfstr_YouShouldnTHav.isa, a2);

  return 0;
}

- (void)dealloc
{
  [(AXIPCServer *)self->_server removeAllHandlersForTarget:self];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277D679E0], 0);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277D6EFD8], 0);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, *MEMORY[0x277D81DB8], 0);
  hidManager = self->_hidManager;
  Current = CFRunLoopGetCurrent();
  IOHIDManagerUnscheduleFromRunLoop(hidManager, Current, *MEMORY[0x277CBF058]);
  CFRelease(self->_hidManager);
  self->_hidManager = 0;
  v9.receiver = self;
  v9.super_class = _AXSpringBoardServerInstance;
  [(_AXSpringBoardServerInstance *)&v9 dealloc];
}

- (id)_initServer
{
  v30.receiver = self;
  v30.super_class = _AXSpringBoardServerInstance;
  v2 = [(_AXSpringBoardServerInstance *)&v30 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE7E10]) initWithRegistrationMessageKey:4012 actionResultMessageKey:5002];
    actionHandlerHelper = v2->_actionHandlerHelper;
    v2->_actionHandlerHelper = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    reachabilityHandlers = v2->_reachabilityHandlers;
    v2->_reachabilityHandlers = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    assertionClients = v2->_assertionClients;
    v2->_assertionClients = v7;

    v9 = objc_alloc(MEMORY[0x277CE7D98]);
    v10 = [v9 initWithServiceName:*MEMORY[0x277CE7CA8] perPidService:0];
    server = v2->_server;
    v2->_server = v10;

    [(_AXSpringBoardServerInstance *)v2 _performValidation];
    v12 = [MEMORY[0x277D75128] sharedApplication];
    v13 = [v12 safeBoolForKey:@"_hasFinishedLaunching"];

    if (v13)
    {
      [(_AXSpringBoardServerInstance *)v2 _registerServerAndNotifyClients];
    }

    else
    {
      LOBYTE(v29) = 1;
      _AXLogWithFacility();
      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:v2 selector:sel__springBoardFinishedLaunching_ name:*MEMORY[0x277D76668] object:0];
    }

    [(_AXSpringBoardServerInstance *)v2 _initializeHearing];
    [(_AXSpringBoardServerInstance *)v2 _initializeBiomeStreamDonations];
    AXPerformBlockOnMainThreadAfterDelay();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, callStateChanged, *MEMORY[0x277D679E0], 0, 0);
    v16 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v16, v2, callStateChanged, *MEMORY[0x277D6EFD8], 0, 0);
    v17 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v17, v2, incomingCallStateChanged, *MEMORY[0x277D67A40], 0, 0);
    v18 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v18, v2, incomingCallStateChanged, @"SBFaceTimeStateChangedNotification", 0, 0);
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v2 selector:sel__proximityDidChange_ name:*MEMORY[0x277D67AA0] object:0];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v2 selector:sel_userChangedRouteNotification_ name:@"MPAVRoutingControllerDidPickRouteNotification" object:0];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v2 selector:sel_bluetoothPairingDidChange_ name:*MEMORY[0x277CF31F8] object:0];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 postNotificationName:AXSpringBoardServerInstanceDidInitializeNotification object:v2];

    v23 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);
    v2->_hidManager = v23;
    IOHIDManagerRegisterDeviceMatchingCallback(v23, hidDeviceCallback, v2);
    IOHIDManagerRegisterInputValueCallback(v2->_hidManager, inputValueCallback, v2);
    v24 = [MEMORY[0x277CBEB18] array];
    [v24 addObject:&unk_2833B1800];
    [v24 addObject:&unk_2833B1828];
    [v24 addObject:&unk_2833B1850];
    [v24 addObject:&unk_2833B1878];
    if (AXHasCapability())
    {
      [v24 addObject:&unk_2833B18A0];
    }

    IOHIDManagerSetDeviceMatchingMultiple(v2->_hidManager, v24);
    hidManager = v2->_hidManager;
    Current = CFRunLoopGetCurrent();
    IOHIDManagerScheduleWithRunLoop(hidManager, Current, *MEMORY[0x277CBF058]);
    v27 = v2;
  }

  return v2;
}

- (void)_springBoardFinishedLaunching:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76668] object:0];

  [(_AXSpringBoardServerInstance *)self _registerServerAndNotifyClients];

  [(_AXSpringBoardServerInstance *)self _initializeAutoAnswerWatchObserver];
}

- (void)_registerServerAndNotifyClients
{
  server = self->_server;
  v8 = 0;
  [(AXIPCServer *)server startServerWithError:&v8];
  v4 = v8;
  [(AXIPCServer *)self->_server setQueueSize:100];
  [(_AXSpringBoardServerInstance *)self _initializeHandlers];
  [(AXIPCServer *)self->_server setClientInvalidationCallback:&__block_literal_global_471];
  if (v4)
  {
    NSLog(&cfstr_ErrorStartingA.isa, v4);
  }

  AXPerformBlockOnMainThreadAfterDelay();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63___AXSpringBoardServerInstance__registerServerAndNotifyClients__block_invoke_3;
  v7[3] = &unk_27842C4D0;
  v7[4] = self;
  v5 = [MEMORY[0x277D46F80] monitorWithConfiguration:v7];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v5;

  [(_AXSpringBoardServerInstance *)self _initializeLiveTranscriptionObserver];
}

- (void)_updateProcess:(id)a3
{
  v9 = a3;
  v3 = [v9 identity];
  v4 = [v3 safeValueForKey:@"hostIdentity"];
  v5 = [v4 safeStringForKey:@"embeddedApplicationIdentifier"];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE68E8]];

  if ((v6 & 1) == 0)
  {
    v7 = [v9 currentState];
    v8 = [v7 taskState];

    if (v8 == 3 || (RBSTaskStateIsRunning() & 1) == 0)
    {
      [v9 pid];
      AXPidSuspend();
    }

    else
    {
      [v9 pid];
      AXPidUnsuspend();
    }
  }
}

- (void)_initializeHandlers
{
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__getApplicationOrientation_ forKey:4000 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__getPid_ forKey:4001 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__showAlert_ forKey:4002 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hideAlert_ forKey:4003 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__showRemoteView_ forKey:4085 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.commandandcontrol", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hideRemoteView_ forKey:4086 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.commandandcontrol", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isShowingRemoteView_ forKey:4095 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.commandandcontrol", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isMakingEmergencyCall_ forKey:4005 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hasActiveCall_ forKey:4027 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hasActiveEndpointCall_ forKey:4081 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hasActiveOrPendingCall_ forKey:4051 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__hasActiveOrPendingCallOrFaceTime_ forKey:4057 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__topEventPidOverride_ forKey:4006 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__takeScreenshot_ forKey:4009 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openAppSwitcher_ forKey:4010 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__dismissAppSwitcher_ forKey:4047 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__dismissShelfSwitcher_ forKey:4004 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__simulateEdgePressHaptics_ forKey:4067 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleAppLibrary_ forKey:4112 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleQuickNote_ forKey:4113 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__wakeUpDeviceIfNecessary_ forKey:4068 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.fullkeyboardaccess", @"com.apple.axremoted.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__unlockDevice_ forKey:4048 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__rebootDevice_ forKey:4075 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__dismissSiri_ forKey:4049 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleNotificationCenter_ forKey:4034 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isNotificationCenterVisible_ forKey:4033 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isLongLookNotificationVisible_ forKey:4111 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openVoiceControl_ forKey:4029 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openTypeToSiri_ forKey:4132 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__getActiveInterfaceOrientation_ forKey:4030 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__actionHandling_ forKey:4012 possibleRequiredEntitlements:@"com.apple.accessibility.automation.client", @"com.apple.accessibility.BackBoard", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", @"com.apple.private.security.storage.Spotlight", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isVoiceControlRunning_ forKey:4013 possibleRequiredEntitlements:@"com.apple.accessibility.api", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSystemSleeping_ forKey:4016 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__volumeLevel_ forKey:4017 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isOrientationLocked_ forKey:4018 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setOrientation_ forKey:4107 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setOrientationLocked_ forKey:4059 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSideSwitchUsedForOrientation_ forKey:4019 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isRingerMuted_ forKey:4020 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openCustomGestureCreationForAST_ forKey:4021 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openCustomGestureCreationForSCAT_ forKey:4022 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openCommandAndControlSettings_ forKey:4097 possibleRequiredEntitlements:@"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openCommandAndControlCommands_ forKey:4087 possibleRequiredEntitlements:@"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__openCommandAndControlVocabulary_ forKey:4088 possibleRequiredEntitlements:@"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__cancelGestureActivation_ forKey:4008 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleHearingControl_ forKey:4023 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setCaptionPanelContextId_ forKey:4096 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isPointInAXInspector_ forKey:4024 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isMediaPlaying_ forKey:4025 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.axctl", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__pauseMedia_ forKey:4053 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__resumeMedia_ forKey:4054 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__resetDimTimer_ forKey:4026 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__startHearingAidServer_ forKey:4035 possibleRequiredEntitlements:@"com.apple.CoreRoutine.preferences", @"com.apple.hearingaids", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__showControlCenter_ forKey:4032 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleDock_ forKey:4077 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__armApplePay_ forKey:4078 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__showNotificationCenter_ forKey:4050 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isControlCenterVisible_ forKey:4031 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__copyStringToPasteboard_ forKey:4036 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSiriVisible_ forKey:4037 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isAppSwitcherVisible_ forKey:4011 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isTypeToSiriVisible_ forKey:4133 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isShelfSwitcherVisible_ forKey:4007 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isShowingHomescreen_ forKey:4079 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isContinuitySessionActive_ forKey:4131 possibleRequiredEntitlements:@"com.apple.fullkeyboardaccess", @"com.apple.CoreRoutine.preferences", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.hearingaids", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isDockVisible_ forKey:4076 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isPasscodeLockVisible_ forKey:4082 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isLockScreenVisible_ forKey:4104 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isShowingNonSystemApp_ forKey:4090 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSyncingRestoringResettingOrUpdating_ forKey:4039 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__areSystemGesturesDisabledNatively_ forKey:4043 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__areSystemGesturesDisabledByAccessibility_ forKey:4044 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSpringBoardInfoQuery_ forKey:4045 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleInstalledApps_ forKey:4046 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleInternalApps_ forKey:4093 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsInspectorMinimized_ forKey:4052 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleCancelReachabilityTimer_ forKey:4058 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleToggleSpotlight_ forKey:4065 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRevealSpotlight_ forKey:4066 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSpotlightVisible_ forKey:4098 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isPIPWindowVisible_ forKey:4102 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isGuidedAccessActive_ forKey:4038 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isDarkModeActive_ forKey:4099 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AXSpringBoardServerAccess", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleDarkMode_ forKey:4100 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AXSpringBoardServerAccess", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLoadGAXBundleForUnmanagedASAM_ forKey:4069];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleReactivateInCallService_ forKey:4084 possibleRequiredEntitlements:@"com.apple.hearingaids", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLaunchMagnifierApp_ forKey:4070 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AXSettingsShortcuts", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsMagnifierVisible_ forKey:4071 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AXSettingsShortcuts", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLaunchOnboardingViewService_ forKey:4122 possibleRequiredEntitlements:@"com.apple.accessibility.AXSettingsShortcuts", @"com.apple.accessibility.axctl", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLaunchVoiceOverQuickSettingsViewService_ forKey:4094 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.accessibility.axctl", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLaunchVoiceOverImageExplorerViewService_ forKey:4105 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.accessibility.axctl", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__visibleTripleClickItems_ forKey:4108 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setSpeechPlaybackControls_ forKey:4040 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__isSpeakThisTemporarilyDisabled_ forKey:4042 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", @"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleAcquireAssertion_ forKey:1000 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.CoreRoutine.preferences", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AXSBServer.assertions", @"com.apple.accessibility.feature.securepay", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRelinquishAssertion_ forKey:1001 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.CoreRoutine.preferences", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.AXSBServer.assertions", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__activateSOSMode_ forKey:4074 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__getSplashImageForApp_ forKey:4089 possibleRequiredEntitlements:@"com.apple.AXUIViewService", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleDisplayIdentifierForSceneIdentifier_ forKey:4120 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__connectedDevicesRequireAssistiveTouch_ forKey:4101 possibleRequiredEntitlements:@"com.apple.CoreRoutine.preferences", 0];
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  v4 = [v3 laserEnabled];

  if (v4)
  {
    [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__connectedDevicesHaveAssistiveTouchCustomActions_ forKey:4109 possibleRequiredEntitlements:@"com.apple.CoreRoutine.preferences", 0];
  }

  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__cancelSiriDismissalForAssistiveTouch_ forKey:4103 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleTorch_ forKey:4106 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsSystemAppShowingAnAlert_ forKey:4501 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetFocusedAppPID_ forKey:4503 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.AXSpringBoardServerAccess", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetPurpleBuddyPID_ forKey:4507 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.fullkeyboardaccess", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetRunningAppPIDs_ forKey:4504 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetFocusedApps_ forKey:4509 possibleRequiredEntitlements:@"com.apple.hearingaids", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetFocusedOccludedAppScenes_ forKey:4510 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.commandandcontrol", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsSystemAppFrontmost_ forKey:4500 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsPurpleBuddyAppFrontmost_ forKey:4506 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsSettingsAppFrontmost_ forKey:4505 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.BackBoard", @"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__appNameFromPid_ forKey:4114 possibleRequiredEntitlements:@"com.apple.livetranscriptionui", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleLiveTranscription_ forKey:4115 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleNativeFocusedApplication_ forKey:4123 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetZoomEnabled_ forKey:4124 possibleRequiredEntitlements:@"com.apple.accessibility.settings-modifier-client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleZoomEnabled_ forKey:4125 possibleRequiredEntitlements:@"com.apple.accessibility.settings-modifier-client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetBluetoothPowerEnabled_ forKey:4128 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleBluetoothPowerEnabled_ forKey:4129 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetVoiceOverEnabled_ forKey:4126 possibleRequiredEntitlements:@"com.apple.accessibility.settings-modifier-client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleVoiceOverEnabled_ forKey:4127 possibleRequiredEntitlements:@"com.apple.accessibility.settings-modifier-client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleFreezeClarityUILoadingScreen_ forKey:4116 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handlePresentNearbyDeviceControlPicker_ forKey:4117 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__diminishJindo_ forKey:4118 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__jindoAppIdentifiers_ forKey:4121 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleDetectionMode_ forKey:4119 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleConversationBoost_ forKey:4130 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__launchAccessibilityReader_ forKey:4138 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__reachabilityOffset_ forKey:4055 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__reachabilityHandling_ forKey:4056 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__reachabilityActive_ forKey:4060 possibleRequiredEntitlements:@"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleToggleIncomingCall_ forKey:4061 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__reachabilityEnabled_ forKey:4083 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__allowedMedusaGestures_ forKey:4063 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.fullkeyboardaccess", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__performMedusaGesture_ forKey:4064 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", @"com.apple.fullkeyboardaccess", @"com.apple.commandandcontrol", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__medusaApps_ forKey:4080 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setDockIconActivationMode_ forKey:4091 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__canSetDockIconActivationMode_ forKey:4092 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__toggleBackgroundSounds_ forKey:4110 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__installGuestPassPINGesture_ forKey:4135 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__installGuestPassAcceptDialogGesture_ forKey:4136 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__removeGuestPassAcceptDialogGesture_ forKey:4137 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetMenuBarVisible_ forKey:4139 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsMenuBarVisible_ forKey:4140 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsMenuBarModal_ forKey:4142 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsChamoisOrFlexibleWindowingEnabled_ forKey:4141 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
}

- (void)_biomeDonationLargeTextDidChange:(id)a3
{
  v3 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
  v4 = v3;
  if (v3 && ([v3 isEqualToString:*MEMORY[0x277D76838]] & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "Donating text size changed to TipKit", v9, 2u);
    }

    v6 = [MEMORY[0x277CF1B58] discoverabilitySignal];
    v7 = [v6 source];
    v8 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.accessibility.textsize.changed" bundleID:@"com.apple.accessibility" context:0];
    [v7 sendEvent:v8];
  }
}

- (void)_initializeBiomeStreamDonations
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__biomeDonationLargeTextDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(_AXSpringBoardServerInstance *)self _biomeDonationLargeTextDidChange:0];
}

- (void)_initializeHearing
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___AXSpringBoardServerInstance__initializeHearing__block_invoke;
  aBlock[3] = &unk_27842BB18;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = dispatch_time(0, 3000000000);
  v5 = dispatch_get_global_queue(0, 0);
  dispatch_after(v4, v5, v3);

  v6 = [MEMORY[0x277D12E20] sharedInstance];
  [v6 registerUpdateBlock:v3 forRetrieveSelector:sel_pairedHearingAids withListener:self];

  v7 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v7 registerUpdateBlock:v3 forRetrieveSelector:sel_personalMediaConfiguration withListener:self];

  v8 = [MEMORY[0x277D12E18] sharedInstance];
  [v8 registerUpdateBlock:v3 forRetrieveSelector:sel_comfortSoundsEnabled withListener:self];
}

- (void)_performBlockAsynchronously:(id)a3 afterDelay:(double)a4
{
  if (a3)
  {
    v4 = (a4 * 1000000000.0);
    v5 = a3;
    v6 = dispatch_time(0, v4);
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_after(v6, v7, v5);
  }
}

- (void)_initializeAutoAnswerWatchObserver
{
  if (AXDeviceIsPhone())
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(_AXSpringBoardServerInstance *)self setWatchActiveWristState:v3];

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66___AXSpringBoardServerInstance__initializeAutoAnswerWatchObserver__block_invoke;
    v4[3] = &unk_27842BB18;
    v4[4] = self;
    [(_AXSpringBoardServerInstance *)self _performBlockAsynchronously:v4 afterDelay:3.0];
  }
}

- (void)_requestOnWristState
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6968] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CE6968] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_21FE6B000, v5, v6, "%{public}@", &v12, 0xCu);
      }
    }
  }

  v9 = [MEMORY[0x277CE6A88] sharedInstance];
  v10 = [v9 publishMessage:&unk_2833B18C8 priority:1 requestingResponse:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveIncomingData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CE6968] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CE6968] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v19 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_21FE6B000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = [v4 objectForKeyedSubscript:{*MEMORY[0x277CE6A78], v19}];
  v13 = [v12 objectForKeyedSubscript:@"onWristState"];
  v14 = [v13 BOOLValue];

  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x277CE6A58]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v17 = [(_AXSpringBoardServerInstance *)self watchActiveWristState];
    [v17 setObject:v16 forKeyedSubscript:v15];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_assertionClientForPort:(unsigned int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_assertionClients;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 serviceMachPort] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_inSetupMode
{
  v2 = +[AXSpringBoardServerHelper sharedServerHelper];
  v3 = [v2 isBuddyRunning];

  return v3;
}

- (void)_performValidation
{
  v2 = [MEMORY[0x277CE69B0] sharedInstance];
  [v2 performValidations:&__block_literal_global_897 withPreValidationHandler:&__block_literal_global_1130 postValidationHandler:0];
}

- (void)_setSystemGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = AXLogAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v3;
    _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "System gestures enabled: %d", &buf, 8u);
  }

  AXPerformSafeBlock();
  LOBYTE(buf) = 0;
  v6 = [*MEMORY[0x277D76620] safeValueForKey:@"_interactiveScreenshotGestureManager"];
  v7 = __UIAccessibilitySafeClass();

  if (buf == 1)
  {
    abort();
  }

  v8 = [(_AXSpringBoardServerInstance *)self _accessibilityValueForKey:@"AXScreenshotAssertion"];
  v9 = v8;
  if (v3 || v8)
  {
    if (v3 && v8)
    {
      [v8 invalidate];
      [(_AXSpringBoardServerInstance *)self _accessibilityRemoveValueForKey:v9];
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v12 = v7;
    AXPerformSafeBlock();
    v9 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    [(_AXSpringBoardServerInstance *)self _accessibilitySetRetainedValue:v9 forKey:@"AXScreenshotAssertion"];
    v10 = AXLogAssertions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_21FE6B000, v10, OS_LOG_TYPE_INFO, "Acquired screenshot assertion: %@", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)onlySystemGesturesDisabledHolderIsGuidedAccess
{
  v2 = [(_AXSpringBoardServerInstance *)self assertionServer];
  v3 = [v2 clientsHoldingAssertionOfType:*MEMORY[0x277CE79F0]];
  v4 = [v3 isEqualToArray:&unk_2833B1768];

  return v4;
}

- (void)_setupAssertionServerIfNeeded
{
  v3 = [(_AXSpringBoardServerInstance *)self assertionServer];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE7E90]);
    [(_AXSpringBoardServerInstance *)self setAssertionServer:v4];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61___AXSpringBoardServerInstance__setupAssertionServerIfNeeded__block_invoke;
    v7[3] = &unk_27842C548;
    objc_copyWeak(&v8, &location);
    [v4 setAssertionWasAcquiredHandler:v7];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61___AXSpringBoardServerInstance__setupAssertionServerIfNeeded__block_invoke_2;
    v5[3] = &unk_27842C548;
    objc_copyWeak(&v6, &location);
    [v4 setAssertionWasReleasedHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_setDashboardSystemGesturesDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = @"disabling dashboard system gestures";
  if (a3)
  {
    v5 = @"reenabling dashboard system gestures";
  }

  LOBYTE(v6) = 1;
  v7 = v5;
  _AXLogWithFacility();
  v8 = [(_AXSpringBoardServerInstance *)self delegate:v6];
  [v8 setDashBoardSystemGesturesEnabled:!v3 withServerInstance:self];
}

- (BOOL)shouldAllowActiveWatchToAutoAnswer
{
  v81 = *MEMORY[0x277D85DE8];
  if (AXDeviceIsPhone())
  {
    v3 = [MEMORY[0x277D2BCF8] sharedInstance];
    v4 = [v3 getActivePairedDevice];

    if (v4)
    {
      v5 = [v4 valueForProperty:*MEMORY[0x277D2BB28]];
      v6 = [v5 BOOLValue];

      if (!v6)
      {
        v17 = [MEMORY[0x277D2BCF8] sharedInstance];
        v18 = [v17 deviceIDForNRDevice:v4];
        v10 = [v18 UUIDString];

        v19 = [MEMORY[0x277CE6968] sharedInstance];
        LOBYTE(v18) = [v19 ignoreLogging];

        if ((v18 & 1) == 0)
        {
          v20 = [MEMORY[0x277CE6968] identifier];
          v21 = AXLoggerForFacility();

          v22 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = AXColorizeFormatLog();
            v71 = v10;
            v24 = _AXStringForArgs();
            if (os_log_type_enabled(v21, v22))
            {
              *buf = 138543362;
              v80 = v24;
              _os_log_impl(&dword_21FE6B000, v21, v22, "%{public}@", buf, 0xCu);
            }
          }
        }

        v25 = [MEMORY[0x277CE6A88] sharedInstance];
        v26 = [v25 connectedDevices];

        if (![v26 count])
        {
          v27 = [MEMORY[0x277CE6968] sharedInstance];
          v28 = [v27 ignoreLogging];

          if ((v28 & 1) == 0)
          {
            v29 = [MEMORY[0x277CE6968] identifier];
            v30 = AXLoggerForFacility();

            v31 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = AXColorizeFormatLog();
              v33 = _AXStringForArgs();
              if (os_log_type_enabled(v30, v31))
              {
                *buf = 138543362;
                v80 = v33;
                _os_log_impl(&dword_21FE6B000, v30, v31, "%{public}@", buf, 0xCu);
              }
            }
          }
        }

        v34 = [MEMORY[0x277CE6968] sharedInstance];
        v35 = [v34 ignoreLogging];

        if ((v35 & 1) == 0)
        {
          v36 = [MEMORY[0x277CE6968] identifier];
          v37 = AXLoggerForFacility();

          v38 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = AXColorizeFormatLog();
            v72 = v26;
            v40 = _AXStringForArgs();
            if (os_log_type_enabled(v37, v38))
            {
              *buf = 138543362;
              v80 = v40;
              _os_log_impl(&dword_21FE6B000, v37, v38, "%{public}@", buf, 0xCu);
            }
          }
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v12 = v26;
        v41 = [v12 countByEnumeratingWithState:&v74 objects:v78 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v75;
          v44 = *MEMORY[0x277CE6A58];
LABEL_32:
          v45 = 0;
          while (1)
          {
            if (*v75 != v43)
            {
              objc_enumerationMutation(v12);
            }

            v46 = [*(*(&v74 + 1) + 8 * v45) objectForKeyedSubscript:{v44, v72}];
            v47 = [v46 isEqualToString:v10];

            if (v47)
            {
              break;
            }

            if (v42 == ++v45)
            {
              v42 = [v12 countByEnumeratingWithState:&v74 objects:v78 count:16];
              if (v42)
              {
                goto LABEL_32;
              }

              goto LABEL_38;
            }
          }

          v13 = *MEMORY[0x277D81C18];
          v50 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v13 pairedDevice:v4];
          if ([v50 BOOLForKey:*MEMORY[0x277CE7ED8]])
          {
            v51 = [(_AXSpringBoardServerInstance *)self watchActiveWristState];
            v52 = [v51 objectForKeyedSubscript:v10];

            if (!v52)
            {
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __66___AXSpringBoardServerInstance_shouldAllowActiveWatchToAutoAnswer__block_invoke;
              v73[3] = &unk_27842BB18;
              v73[4] = self;
              [(_AXSpringBoardServerInstance *)self _performBlockAsynchronously:v73 afterDelay:3.0];
              v53 = [MEMORY[0x277CE6968] sharedInstance];
              v54 = [v53 ignoreLogging];

              if ((v54 & 1) == 0)
              {
                v55 = [MEMORY[0x277CE6968] identifier];
                v56 = AXLoggerForFacility();

                v57 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v56, v57))
                {
                  v58 = AXColorizeFormatLog();
                  v59 = _AXStringForArgs();
                  if (os_log_type_enabled(v56, v57))
                  {
                    *buf = 138543362;
                    v80 = v59;
                    _os_log_impl(&dword_21FE6B000, v56, v57, "%{public}@", buf, 0xCu);
                  }
                }
              }
            }

            v14 = [v52 BOOLValue];
            goto LABEL_65;
          }

          v61 = [MEMORY[0x277CE6968] sharedInstance];
          v62 = [v61 ignoreLogging];

          if (v62)
          {
            v14 = 0;
            goto LABEL_66;
          }

          v65 = [MEMORY[0x277CE6968] identifier];
          v52 = AXLoggerForFacility();

          v66 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v52, v66))
          {
            v67 = AXColorizeFormatLog();
            v68 = _AXStringForArgs();
            if (os_log_type_enabled(v52, v66))
            {
              *buf = 138543362;
              v80 = v68;
              _os_log_impl(&dword_21FE6B000, v52, v66, "%{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
LABEL_38:

          v48 = [MEMORY[0x277CE6968] sharedInstance];
          v49 = [v48 ignoreLogging];

          if (v49)
          {
            v14 = 0;
LABEL_68:

            goto LABEL_69;
          }

          v63 = [MEMORY[0x277CE6968] identifier];
          v13 = AXLoggerForFacility();

          v64 = AXOSLogLevelFromAXLogLevel();
          if (!os_log_type_enabled(v13, v64))
          {
            goto LABEL_59;
          }

          v50 = AXColorizeFormatLog();
          v52 = _AXStringForArgs();
          if (os_log_type_enabled(v13, v64))
          {
            *buf = 138543362;
            v80 = v52;
            _os_log_impl(&dword_21FE6B000, v13, v64, "%{public}@", buf, 0xCu);
          }
        }

        v14 = 0;
LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v7 = [MEMORY[0x277CE6968] sharedInstance];
      v8 = [v7 ignoreLogging];

      if ((v8 & 1) == 0)
      {
        v9 = [MEMORY[0x277CE6968] identifier];
        v10 = AXLoggerForFacility();

        v11 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = AXColorizeFormatLog();
          v13 = _AXStringForArgs();
          if (os_log_type_enabled(v10, v11))
          {
            *buf = 138543362;
            v80 = v13;
LABEL_52:
            _os_log_impl(&dword_21FE6B000, v10, v11, "%{public}@", buf, 0xCu);
            goto LABEL_59;
          }

          goto LABEL_59;
        }

        goto LABEL_53;
      }
    }

    else
    {
      v15 = [MEMORY[0x277CE6968] sharedInstance];
      v16 = [v15 ignoreLogging];

      if ((v16 & 1) == 0)
      {
        v60 = [MEMORY[0x277CE6968] identifier];
        v10 = AXLoggerForFacility();

        v11 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = AXColorizeFormatLog();
          v13 = _AXStringForArgs();
          if (os_log_type_enabled(v10, v11))
          {
            *buf = 138543362;
            v80 = v13;
            goto LABEL_52;
          }

LABEL_59:
          v14 = 0;
LABEL_67:

          goto LABEL_68;
        }

LABEL_53:
        v14 = 0;
LABEL_69:

        goto LABEL_70;
      }
    }

    v14 = 0;
LABEL_70:

    goto LABEL_71;
  }

  v14 = 0;
LABEL_71:
  v69 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_getApplicationOrientation:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 safeIntegerForKey:@"activeInterfaceOrientation"];

  if ((v4 - 1) < 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"orientation";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4000 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_getPid:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE7D90]);
  v9 = @"pid";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 initWithKey:4001 payload:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_showAlert:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"alertType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
    v8 = [(_AXSpringBoardServerInstance *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43___AXSpringBoardServerInstance__showAlert___block_invoke;
    v12[3] = &unk_27842C570;
    v13 = v4;
    v9 = [v13 payload];
    v10 = [v9 objectForKey:@"data"];
    [v8 serverInstance:self showAlertType:v7 withHandler:v12 withData:v10];
  }

  return 0;
}

- (id)_hideAlert:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 hideAlertWithServerInstance:self];

  return 0;
}

- (id)_showRemoteView:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"remoteViewType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
    v8 = [(_AXSpringBoardServerInstance *)self delegate];
    v9 = [v4 payload];
    v10 = [v9 objectForKey:@"data"];
    [v8 serverInstance:self showRemoteViewType:v7 withData:v10];
  }

  return 0;
}

- (id)_hideRemoteView:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"remoteViewType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 integerValue];
    v7 = [(_AXSpringBoardServerInstance *)self delegate];
    [v7 serverInstance:self hideRemoteViewType:v6];
  }

  return 0;
}

- (id)_isShowingRemoteView:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"remoteViewType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 integerValue];
    v7 = [(_AXSpringBoardServerInstance *)self delegate];
    v8 = [v7 serverInstance:self isShowingRemoteViewType:v6];

    v9 = objc_alloc(MEMORY[0x277CE7D90]);
    v15 = @"result";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 initWithKey:4027 payload:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_isMakingEmergencyCall:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v5 = MEMORY[0x277CCABB0];
  v6 = [(_AXSpringBoardServerInstance *)self delegate];
  v7 = [v5 numberWithBool:{objc_msgSend(v6, "isMakingEmergencyCallWithServerInstance:", self)}];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 initWithKey:4005 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_hasActiveCall:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CE7D90]);
  v10 = @"result";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[_AXSpringBoardServerInstance hasActiveCall](self, "hasActiveCall")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:4027 payload:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_hasActiveEndpointCall:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CE7D90]);
  v10 = @"result";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[_AXSpringBoardServerInstance hasActiveEndpointCall](self, "hasActiveEndpointCall")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:4081 payload:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_hasActiveOrPendingCall:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CE7D90]);
  v10 = @"result";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[_AXSpringBoardServerInstance hasActiveOrPendingCall](self, "hasActiveOrPendingCall")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:4051 payload:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_hasActiveOrPendingCallOrFaceTime:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CE7D90]);
  v10 = @"result";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[_AXSpringBoardServerInstance hasActiveOrPendingCallOrFaceTime](self, "hasActiveOrPendingCallOrFaceTime")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:4057 payload:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_topEventPidOverride:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [*MEMORY[0x277D76620] safeValueForKey:@"_isSpringBoardShowingAnAlert"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = getpid();
  }

  else
  {
    v6 = [NSClassFromString(&cfstr_Sbcoversheetpr.isa) safeValueForKey:@"sharedInstance"];
    v7 = [v6 safeValueForKey:@"lockScreenEnvironment.applicationHoster.hostedAppSceneHandle.application.processState"];
    v5 = [v7 safeIntForKey:@"pid"];
  }

  v8 = objc_alloc(MEMORY[0x277CE7D90]);
  v14 = @"pid";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v8 initWithKey:4006 payload:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_openAppSwitcher:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openAppSwitcherWithServerInstance:self];

  return 0;
}

- (id)_dismissAppSwitcher:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 dismissAppSwitcherWithServerInstance:self];

  return 0;
}

- (id)_dismissShelfSwitcher:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 dismissShelfSwitcherWithServerInstance:self];

  return 0;
}

- (id)_simulateEdgePressHaptics:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 simulateEdgePressHaptics:self];

  return 0;
}

- (id)_toggleAppLibrary:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleAppLibraryWithServerInstance:self];

  return 0;
}

- (id)_toggleQuickNote:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleQuickNoteWithServerInstance:self];

  return 0;
}

- (id)_wakeUpDeviceIfNecessary:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 wakeUpDeviceIfNecessaryWithServerInstance:self];

  return 0;
}

- (id)_unlockDevice:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 unlockDeviceWithServerInstance:self];

  return 0;
}

- (id)_rebootDevice:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 rebootDeviceWithServerInstance:self];

  return 0;
}

- (id)_dismissSiri:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 dismissSiriWithServerInstance:self];

  return 0;
}

- (id)_toggleNotificationCenter:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleNotificationCenterWithServerInstance:self];

  return 0;
}

- (id)_isNotificationCenterVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isNotificationCenterVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4033 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isLongLookNotificationVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isLongLookNotificationVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4111 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_openVoiceControl:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openVoiceControlWithServerInstance:self];

  return 0;
}

- (id)_openTypeToSiri:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openTypeToSiriWithServerInstance:self];

  return 0;
}

- (id)_getActiveInterfaceOrientation:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 safeValueForKey:@"_frontMostAppOrientation"];
  v5 = [v4 integerValue];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"orientation";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4000 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_actionHandling:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self actionHandlerHelper];
  v6 = [v5 handleActionHandlerRegistrationMessage:v4];

  return v6;
}

- (id)_isVoiceControlRunning:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isVoiceControlRunningWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4013 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isSystemSleeping:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSystemSleepingWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4016 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_volumeLevel:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 volumeLevelWithServerInstance:self];
  v6 = v5;

  v7 = objc_alloc(MEMORY[0x277CE7D90]);
  v13 = @"result";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v7 initWithKey:4017 payload:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_isOrientationLocked:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isOrientationLockedWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4016 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_setOrientation:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"orientation"];
  v6 = [v5 integerValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  [v7 serverInstance:self setOrientation:v6];

  return 0;
}

- (id)_setOrientationLocked:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"locked"];
  v6 = [v5 BOOLValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  [v7 serverInstance:self setOrientationLocked:v6];

  return 0;
}

- (id)_isSideSwitchUsedForOrientation:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4016 payload:&unk_2833B18F0];

  return v3;
}

- (id)_isRingerMuted:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isRingerMutedWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4020 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_reachabilityOffset:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 reachabilityOffsetWithServerInstance:self];
  v6 = v5;

  v7 = objc_alloc(MEMORY[0x277CE7D90]);
  v13 = @"result";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v7 initWithKey:4055 payload:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_handleToggleIncomingCall:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 handleToggleIncomingCallWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4061 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_reachabilityActive:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"active"];
  v6 = [v5 BOOLValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  [v7 setReachabilityActive:v6];

  return 0;
}

- (id)_reachabilityEnabled:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKeyedSubscript:@"enabled"];
  [v5 serverInstance:self setReachabilityEnabled:{objc_msgSend(v7, "BOOLValue")}];

  return 0;
}

- (id)_reachabilityHandling:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"register"];
  v7 = [v6 BOOLValue];

  v8 = [v4 clientPort];
  if (v7)
  {
    if (![(_AXSpringBoardServerInstance *)self _hasReachabilityHandlerForClientPort:v8])
    {
      v9 = [objc_alloc(MEMORY[0x277CE7D88]) initWithPort:v8];
      LODWORD(v10) = 1.0;
      [v9 setTimeout:v10];
      [v9 connectWithError:0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54___AXSpringBoardServerInstance__reachabilityHandling___block_invoke;
      v13[3] = &unk_27842BF68;
      v13[4] = self;
      v14 = v8;
      [v9 setPortDeathHandler:v13];
      [(NSMutableArray *)self->_reachabilityHandlers addObject:v9];
    }
  }

  else
  {
    [(_AXSpringBoardServerInstance *)self _removeReachabilityHandler:v8];
  }

  v11 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4056 payload:&unk_2833B1918];

  return v11;
}

- (id)_openCustomGestureCreationForAST:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openCustomGestureCreationForASTWithServerInstance:self];

  return 0;
}

- (id)_openCustomGestureCreationForSCAT:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openCustomGestureCreationForSCATWithServerInstance:self];

  return 0;
}

- (id)_openCommandAndControlSettings:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openCommandAndControlSettingsWithServerInstance:self];

  return 0;
}

- (id)_openCommandAndControlCommands:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openCommandAndControlCommandsWithServerInstance:self];

  return 0;
}

- (id)_openCommandAndControlVocabulary:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 openCommandAndControlVocabularyWithServerInstance:self];

  return 0;
}

- (id)_diminishJindo:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 diminishJindoWithServerInstance:self];

  return 0;
}

- (id)_jindoAppIdentifiers:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 jindoAppBundleIndentifiersWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4121 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_toggleDetectionMode:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleDetectionModeWithServerInstance:self];

  return 0;
}

- (id)_toggleConversationBoost:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleConversationBoostWithServerInstance:self];

  return 0;
}

- (id)_launchAccessibilityReader:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 launchAccessibilityReaderWithServerInstance:self];

  return 0;
}

- (id)_cancelGestureActivation:(id)a3
{
  v3 = a3;
  v4 = [v3 payload];
  v5 = [v4 objectForKey:@"type"];
  v6 = [v5 intValue];

  v7 = [v3 payload];
  v8 = [v7 objectForKey:@"cancelEnabled"];
  v9 = [v8 BOOLValue];

  v10 = v6 - 1;
  if (v6 - 1) <= 7 && ((0x8Bu >> v10))
  {
    v11 = off_27842C6B8[v10];
    *off_27842C678[v10] = v9;
    v12 = *v11;
    [v3 clientPort];
    AXIncrefSendRight();
    *v11 = [v3 clientPort];
    if (v12)
    {
      if (mach_port_deallocate(*MEMORY[0x277D85F48], v12))
      {
        _AXAssert();
      }
    }
  }

  return 0;
}

- (id)_toggleHearingControl:(id)a3
{
  v3 = *MEMORY[0x277D76620];
  v4 = a3;
  v5 = [v3 safeValueForKey:@"windowSceneManager"];
  v6 = [v5 safeValueForKey:@"embeddedDisplayWindowScene"];
  v7 = [v6 safeValueForKey:@"switcherController"];

  [v7 safeBoolForKey:@"isMainSwitcherVisible"];
  v8 = +[AXSBHearingAidDeviceController sharedController];
  [v8 isShowingHearingAidControl];

  v9 = [v4 payload];

  v10 = [v9 valueForKey:@"visible"];

  if (v10)
  {
    [v10 BOOLValue];
  }

  v13 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKeyPath:@"sharedInstance._activeDisplaySwitcherController"];
  v11 = v13;
  AXPerformBlockOnMainThreadAfterDelay();

  return 0;
}

- (id)_setCaptionPanelContextId:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 valueForKey:@"contextId"];
  v5 = [v4 integerValue];

  if (__axCaptionPanelContextId != v5)
  {
    __axCaptionPanelContextId = v5;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:AXCaptionPanelContextDidChangeNotification object:0];
  }

  return 0;
}

- (id)_handleToggleSpotlight:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleSpotlightWithServerInstance:self];

  return 0;
}

- (id)_handleRevealSpotlight:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 revealSpotlightWithServerInstance:self];

  return 0;
}

- (id)_isDarkModeActive:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isDarkModeActiveWithServiceInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4099 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_toggleDarkMode:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 toggleDarkModeWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4100 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isGuidedAccessActive:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isGuidedAccessActiveWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4038 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isSpotlightVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSpotlightVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4098 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isPIPWindowVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isPIPWindowVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4102 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleLoadGAXBundleForUnmanagedASAM:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 forceLoadGAXBundleWithServerInstance:self];

  return 0;
}

- (id)_handleReactivateInCallService:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 reactivateInCallServiceWithServerInstance:self];

  return 0;
}

- (id)_handleLaunchMagnifierApp:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 launchMagnifierAppWithServerInstance:self];

  return 0;
}

- (id)_handleIsMagnifierVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isMagnifierVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4071 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleLaunchOnboardingViewService:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  [v5 launchOnboardingViewServiceWithServerInstance:self data:v6];
  return 0;
}

- (id)_handleLaunchVoiceOverQuickSettingsViewService:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  [v5 launchVoiceOverQuickSettingsViewServiceWithServerInstance:self data:v6];
  return 0;
}

- (id)_handleLaunchVoiceOverImageExplorerViewService:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  [v5 launchVoiceOverImageExplorerViewServiceWithServerInstance:self forData:v6];
  return 0;
}

- (id)_visibleTripleClickItems:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 visibleTripleClickItemsWithServerInstance:self];

  if (v5)
  {
    v10 = @"result";
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4108 payload:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_handleIsInspectorMinimized:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D76620];
  v4 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*v3 _accessibilityIsInspectorMinimized];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4052 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isPointInAXInspector:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D76620];
  v5 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v3 payload];
    v7 = [v6 objectForKey:@"record"];

    v8 = [*v4 _accessibilityIsPointInAXInspector:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CE7D90]);
  v15 = @"result";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithKey:4024 payload:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_isMediaPlaying:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientPort];
  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x3032000000;
  v35[2] = __Block_byref_object_copy__2;
  v35[3] = __Block_byref_object_dispose__2;
  v36 = 0;
  v6 = [objc_alloc(MEMORY[0x277CE7D88]) initWithPort:v5];
  LODWORD(v7) = 1.0;
  [v6 setTimeout:v7];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v8 = (v35[0] + 40);
  obj = *(v35[0] + 40);
  v9 = [v6 connectWithError:&obj];
  objc_storeStrong(v8, obj);
  v33 = v9;
  if ((v31[3] & 1) == 0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_AXSpringBoardServerInstance *)v35 _isMediaPlaying:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = AXLogSpringboardServer();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v4 payload];
    *buf = 138412290;
    v38 = v18;
    _os_log_impl(&dword_21FE6B000, v17, OS_LOG_TYPE_INFO, "Fetching is playing: %@", buf, 0xCu);
  }

  v19 = [(_AXSpringBoardServerInstance *)self delegate];
  v20 = [v4 payload];
  v21 = [v20 objectForKey:@"bundleId"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48___AXSpringBoardServerInstance__isMediaPlaying___block_invoke;
  v25[3] = &unk_27842C598;
  v27 = &v30;
  v22 = v6;
  v26 = v22;
  v28 = &v34;
  [v19 isMediaPlayingWithServerInstance:self forBundleId:v21 completion:v25];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_pauseMedia:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKey:@"bundleId"];
  [v5 serverInstance:self pauseMedia:1 forBundleId:v7];

  return 0;
}

- (id)_resumeMedia:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKey:@"bundleId"];
  [v5 serverInstance:self pauseMedia:0 forBundleId:v7];

  return 0;
}

- (id)_resetDimTimer:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 resetDimTimerWithServerInstance:self];

  return 0;
}

- (id)_startHearingAidServer:(id)a3
{
  v3 = +[AXSBHearingAidDeviceController sharedController];
  [v3 startServer];

  return 0;
}

- (id)_showControlCenter:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKey:@"show"];
  [v5 serverInstance:self showControlCenter:{objc_msgSend(v7, "BOOLValue")}];

  return 0;
}

- (id)_toggleDock:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleDockWithServerInstance:self];

  return 0;
}

- (id)_armApplePay:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 armApplePayWithServerInstance:self];

  return 0;
}

- (id)_showNotificationCenter:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKey:@"show"];
  [v5 serverInstance:self showNotificationCenter:{objc_msgSend(v7, "BOOLValue")}];

  return 0;
}

- (id)_isControlCenterVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isControlCenterVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4033 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_copyStringToPasteboard:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"string"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [*MEMORY[0x277CE1EB0] identifier];
    [v5 setObject:v4 forKey:v6];

    v7 = [MEMORY[0x277D75810] generalPasteboard];
    v11[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v7 setItems:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_isSiriVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSiriVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4037 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isShowingHomescreen:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isShowingHomescreenWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4079 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isContinuitySessionActive:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isContinuitySessionActiveWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4131 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isAppSwitcherVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isAppSwitcherVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4011 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isTypeToSiriVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isTypeToSiriVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4133 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isShelfSwitcherVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isShelfSwitcherVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4007 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isDockVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isDockVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4076 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isShowingNonSystemApp:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isShowingNonSystemAppWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4090 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isPasscodeLockVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isPasscodeLockVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4082 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isLockScreenVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isLockScreenVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4104 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_isSyncingRestoringResettingOrUpdating:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSyncingRestoringResettingOrUpdatingWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4039 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_areSystemGesturesDisabledNatively:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 areSystemGesturesDisabledNativelyWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4043 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_areSystemGesturesDisabledByAccessibility:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 areSystemGesturesDisabledByAccessibilityWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4044 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleSpringBoardInfoQuery:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"query"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  v8 = [v7 serverInstance:self springBoardSystemInfoQuery:v6];

  v9 = objc_alloc(MEMORY[0x277CE7D90]);
  v14 = @"result";
  v15[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v9 initWithKey:4045 payload:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_handleInstalledApps:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 installedAppsWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4046 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_handleInternalApps:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 internalAppsWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4093 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_setSpeechPlaybackControls:(id)a3
{
  v4 = a3;
  v5 = [v4 clientPort];
  v6 = [v4 payload];
  v7 = [v6 objectForKey:@"show"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CE7D88]) initWithPort:v5];
    currentSpeakerClient = self->_currentSpeakerClient;
    self->_currentSpeakerClient = v9;

    [(AXIPCClient *)self->_currentSpeakerClient connectWithError:0];
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = self->_currentSpeakerClient;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59___AXSpringBoardServerInstance__setSpeechPlaybackControls___block_invoke;
    v17[3] = &unk_27842C5C0;
    v13 = WeakRetained;
    v18 = v13;
    objc_copyWeak(&v20, &location);
    v19 = self;
    [(AXIPCClient *)v12 setPortDeathHandler:v17];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  else
  {
    v14 = self->_currentSpeakerClient;
    self->_currentSpeakerClient = 0;
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 serverInstance:self showSpeechPlaybackControls:v8];

  return 0;
}

- (id)_isSpeakThisTemporarilyDisabled:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSpeakThisTemporarilyDisabledWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4042 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleAcquireAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE7C68]];
  v7 = [v4 payload];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CE7C60]];
  v9 = [v4 clientPort];

  [(_AXSpringBoardServerInstance *)self acquireAssertionWithType:v6 identifier:v8 clientPort:v9];
  return 0;
}

- (id)_handleRelinquishAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE7C68]];
  v7 = [v4 payload];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CE7C60]];
  v9 = [v4 clientPort];

  [(_AXSpringBoardServerInstance *)self relinquishAssertionWithType:v6 identifier:v8 clientPort:v9];
  return 0;
}

- (id)_handleIsSystemAppShowingAnAlert:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSystemAppShowingAnAlertWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4501 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleGetFocusedAppPID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 focusedAppPIDWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4503 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_handleGetPurpleBuddyPID:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 purpleBuddyPIDWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4507 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleGetRunningAppPIDs:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 runningAppPIDsWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4504 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_handleGetFocusedApps:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 focusedAppsWithServerInstance:self];

  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = AXLogIPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_AXSpringBoardServerInstance _handleGetFocusedApps:];
      }
    }

    if (v6)
    {
      v14 = @"result";
      v15[0] = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = 0;
LABEL_10:
  v10 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4509 payload:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_handleDisplayIdentifierForSceneIdentifier:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"sceneIdentifier"];

  v6 = [(_AXSpringBoardServerInstance *)self delegate];
  v7 = [v6 displayIdentifierForSceneIdentifier:v5 serverInstance:self];

  if (v7)
  {
    v15 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = AXLogIPC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_AXSpringBoardServerInstance _handleGetFocusedApps:];
      }
    }

    if (v8)
    {
      v16 = @"result";
      v17[0] = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = 0;
LABEL_10:
  v12 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4120 payload:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_handleGetFocusedOccludedAppScenes:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 focusedOccludedAppScenesWithServerInstance:self];

  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = AXLogIPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_AXSpringBoardServerInstance _handleGetFocusedApps:];
      }
    }

    if (v6)
    {
      v14 = @"result";
      v15[0] = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = 0;
LABEL_10:
  v10 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4510 payload:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_handleIsSystemAppFrontmost:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"excludeSiri"];
  v6 = [v5 BOOLValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  v8 = [v7 isSystemAppFrontmostExcludingSiri:v6 withServerInstance:self];

  v9 = objc_alloc(MEMORY[0x277CE7D90]);
  v15 = @"result";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithKey:4500 payload:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_handleIsPurpleBuddyAppFrontmost:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isPurpleBuddyAppFrontmostWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4506 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleIsSettingsAppFrontmost:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isSettingsAppFrontmostWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4505 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_appNameFromPid:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"pid"];

  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_AXSpringBoardServerInstance _appNameFromPid:];
  }

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  v8 = [v7 appNameFromPid:objc_msgSend(v5 withServerInstance:{"intValue"), self}];

  v9 = &stru_2833AA238;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = objc_alloc(MEMORY[0x277CE7D90]);
  v16 = @"result";
  v17[0] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v13 = [v11 initWithKey:4114 payload:v12];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_toggleLiveTranscription:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleLiveTranscriptionWithServerInstance:self];

  return 0;
}

- (id)_handleNativeFocusedApplication:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  v4 = [v3 nativeFocusedApplication];

  v5 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:4123 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_initializeLiveTranscriptionObserver
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, liveTranscriptionStateChanged, *MEMORY[0x277D81DB8], 0, 0);
  if ([(_AXSpringBoardServerInstance *)self _inSetupMode])
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__handleLiveTranscriptionStatusChange selector:0 userInfo:1 repeats:2.0];
    inSetupTimer = self->_inSetupTimer;
    self->_inSetupTimer = v4;

    MEMORY[0x2821F96F8]();
  }

  else
  {

    [(_AXSpringBoardServerInstance *)self _handleLiveTranscriptionStatusChange];
  }
}

- (void)_handleLiveTranscriptionStatusChange
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21FE6B000, a2, OS_LOG_TYPE_ERROR, "Live Transcription error, coudn't execute launch request: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_handleBluetoothPowerEnabled:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___AXSpringBoardServerInstance__handleBluetoothPowerEnabled___block_invoke;
  block[3] = &unk_27842BBA8;
  v15 = &v16;
  v6 = v4;
  v14 = v6;
  dispatch_async(v5, block);

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_alloc(MEMORY[0x277CE7D90]);
  v20 = @"result";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(v17 + 24)];
  v21[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v10 = [v7 initWithKey:4129 payload:v9];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_handleSetBluetoothPowerEnabled:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKeyedSubscript:@"result"];
  v5 = [v4 BOOLValue];

  v6 = [objc_alloc(MEMORY[0x277CBE010]) init];
  v7 = v6;
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  [v6 setPowerState:v8 completion:&__block_literal_global_1298];

  return 0;
}

- (id)_handleSetVoiceOverEnabled:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKeyedSubscript:@"result"];
  [v4 BOOLValue];
  _AXSVoiceOverTouchSetEnabled();

  return 0;
}

- (id)_handleVoiceOverEnabled:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE7D90]);
  v9 = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 initWithKey:4127 payload:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_handleSetZoomEnabled:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKeyedSubscript:@"result"];
  [v4 BOOLValue];
  _AXSZoomTouchSetEnabled();

  return 0;
}

- (id)_handleZoomEnabled:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE7D90]);
  v9 = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 initWithKey:4125 payload:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_handleFreezeClarityUILoadingScreen:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 freezeClarityUILoadingScreenWithServerInstance:self];

  return 0;
}

- (id)_handlePresentNearbyDeviceControlPicker:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 presentNearbyDeviceControlPickerWithServerInstance:self];

  return 0;
}

- (id)_allowedMedusaGestures:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 allowedMedusaGesturesWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4063 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_toggleBackgroundSounds:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleBackgroundSoundsWithServerInstance:self];

  return 0;
}

- (id)_performMedusaGesture:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"gesture"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  v8 = [v7 serverInstance:self performMedusaGesture:v6];

  v9 = objc_alloc(MEMORY[0x277CE7D90]);
  v15 = @"result";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithKey:4064 payload:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_medusaApps:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 medusaAppsWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithKey:4064 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_setDockIconActivationMode:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"mode"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(_AXSpringBoardServerInstance *)self delegate];
  [v7 serverInstance:self setDockIconActivationMode:v6];

  return 0;
}

- (id)_canSetDockIconActivationMode:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 canSetDockIconActivationModeForServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4092 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_activateSOSMode:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 activateSOSModeWithServerInstance:self];

  return 0;
}

- (id)_connectedDevicesRequireAssistiveTouch:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  v4 = [v3 connectedDevicesRequireAssistiveTouch];

  v5 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:4101 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_connectedDevicesHaveAssistiveTouchCustomActions:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  v4 = [v3 currentDevicesHaveAssistiveTouchCustomActions];

  v5 = objc_alloc(MEMORY[0x277CE7D90]);
  v11 = @"result";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:4109 payload:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_cancelSiriDismissalForAssistiveTouch:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 cancelSiriDismissalForAssistiveTouchWithServerInstance:self];

  return 0;
}

- (id)_toggleTorch:(id)a3
{
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  [v4 toggleTorchWithServerInstance:self];

  return 0;
}

- (id)_getSplashImageForApp:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"bundleIdentifier"];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_AXSpringBoardServerInstance *)self delegate];
    v7 = [v6 serverInstance:self splashImageForAppWithBundleIdentifier:v5];

    if (v7)
    {
      v8 = UIImagePNGRepresentation(v7);
      v13 = @"splashData";
      v14[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:4089 payload:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_installGuestPassPINGesture:(id)a3
{
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  [v3 installGuestPassPINGesture];

  return 0;
}

- (id)_installGuestPassAcceptDialogGesture:(id)a3
{
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  [v3 installGuestPassAcceptDialogGesture];

  return 0;
}

- (id)_removeGuestPassAcceptDialogGesture:(id)a3
{
  v3 = [(_AXSpringBoardServerInstance *)self delegate];
  [v3 removeGuestPassAcceptDialogGesture];

  return 0;
}

- (id)_handleSetMenuBarVisible:(id)a3
{
  v4 = a3;
  v5 = [(_AXSpringBoardServerInstance *)self delegate];
  v6 = [v4 payload];

  v7 = [v6 objectForKeyedSubscript:@"result"];
  [v5 serverInstance:self setMenuBarVisible:{objc_msgSend(v7, "BOOLValue")}];

  return 0;
}

- (id)_handleIsMenuBarVisible:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isMenuBarVisibleWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4140 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleIsMenuBarModal:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isMenuBarModalWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4142 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_handleIsChamoisOrFlexibleWindowingEnabled:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(_AXSpringBoardServerInstance *)self delegate];
  v5 = [v4 isChamoisOrFlexibleWindowingEnabledWithServerInstance:self];

  v6 = objc_alloc(MEMORY[0x277CE7D90]);
  v12 = @"result";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithKey:4141 payload:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_isMediaPlaying:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_0(&dword_21FE6B000, a2, a3, "Error connecting media playing: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleGetFocusedApps:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_21FE6B000, v0, v1, "Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_appNameFromPid:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_21FE6B000, v0, OS_LOG_TYPE_DEBUG, "pid: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end