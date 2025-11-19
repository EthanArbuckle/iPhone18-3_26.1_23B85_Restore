void sub_229530118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2295306A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXRDeviceRemoteActionsForCurrentDevice()
{
  v3[5] = *MEMORY[0x277D85DE8];
  if (AXDeviceIsAudioAccessory())
  {
    v0 = AXRDeviceRemoteActionsForMediaForCurrentDevice();
  }

  else
  {
    v3[0] = @"Home";
    v3[1] = @"AppSwitcher";
    v3[2] = @"NotificationCenter";
    v3[3] = @"ControlCenter";
    v3[4] = @"Siri";
    v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  }

  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXRDeviceRemoteActionsForMediaForCurrentDevice()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"MediaPlayPause";
  v3[1] = @"MediaPreviousTrack";
  v3[2] = @"MediaNextTrack";
  v3[3] = @"MediaVolumeUp";
  v3[4] = @"MediaVolumeDown";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXRDeviceRemoteActionsForSwitchControlForCurrentDevice()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"SwitchControlCommandMovePrevious";
  v3[1] = @"SwitchControlCommandMoveNext";
  v3[2] = @"SwitchControlCommandSelect";
  v3[3] = @"SwitchControlCommandMenu";
  v3[4] = @"SwitchControlCommandStartScanning";
  v3[5] = @"SwitchControlCommandStopScanning";
  v3[6] = @"SwitchControlCommandActivate";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXRDeviceRemoteActionsForVoiceOverForCurrentDevice()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = @"VoiceOverCommandPreviousElement";
  v3[1] = @"VoiceOverCommandNextElement";
  v3[2] = @"VoiceOverCommandSimpleTap";
  v3[3] = @"VoiceOverCommandPreviousRotorOption";
  v3[4] = @"VoiceOverCommandNextRotorOption";
  v3[5] = @"VoiceOverCommandPreviousRotorItem";
  v3[6] = @"VoiceOverCommandNextRotorItem";
  v3[7] = @"VoiceOverCommandScrollUpPage";
  v3[8] = @"VoiceOverCommandScrollDownPage";
  v3[9] = @"VoiceOverCommandScrollLeftPage";
  v3[10] = @"VoiceOverCommandScrollRightPage";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXRDevicePreferredRemoteActionsForCurrentDevice()
{
  v3[3] = *MEMORY[0x277D85DE8];
  if (AXDeviceIsAudioAccessory())
  {
    v3[0] = @"MediaPreviousTrack";
    v3[1] = @"MediaNextTrack";
    v3[2] = @"MediaPlayPause";
    v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  }

  else if (_AXSAssistiveTouchScannerEnabled())
  {
    v0 = AXRDeviceRemoteActionsForSwitchControlForCurrentDevice();
  }

  else if (_AXSVoiceOverTouchEnabled() && (AXDeviceIsTV() & 1) == 0)
  {
    v0 = AXRDeviceRemoteActionsForVoiceOverForCurrentDevice();
  }

  else
  {
    v0 = AXRDeviceRemoteActionsForCurrentDevice();
  }

  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXRDeviceRemoteActionsPayloadForCurrentDevice()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB18];
  v27[0] = @"title";
  v1 = AXRLocalizedStringForKey(@"REMOTE_ACTION_SECTION_SYSTEM");
  v28[0] = v1;
  v28[1] = &unk_283CD5330;
  v27[1] = @"preferredContextType";
  v27[2] = @"actionsList";
  v2 = AXRDeviceRemoteActionsForCurrentDevice();
  v28[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v29[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v5 = [v0 arrayWithArray:v4];

  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v25[0] = @"title";
    v6 = AXRLocalizedStringForKey(@"REMOTE_ACTION_SECTION_MEDIA_CONTROL");
    v26[0] = v6;
    v26[1] = &unk_283CD5348;
    v25[1] = @"preferredContextType";
    v25[2] = @"actionsList";
    v7 = AXRDeviceRemoteActionsForMediaForCurrentDevice();
    v26[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v5 addObject:v8];

    if (_AXSAssistiveTouchScannerEnabled())
    {
      v23[0] = @"title";
      v9 = AXRLocalizedStringForKey(@"REMOTE_ACTION_SECTION_SWITCH_CONTROL");
      v24[0] = v9;
      v24[1] = &unk_283CD5360;
      v23[1] = @"preferredContextType";
      v23[2] = @"actionsList";
      v10 = AXRDeviceRemoteActionsForSwitchControlForCurrentDevice();
      v24[2] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [v5 addObject:v11];
    }

    if (_AXSVoiceOverTouchEnabled())
    {
      v17 = @"title";
      v12 = AXRLocalizedStringForKey(@"REMOTE_ACTION_SECTION_VOICEOVER");
      v20 = v12;
      v21 = &unk_283CD5378;
      v18 = @"preferredContextType";
      v19 = @"actionsList";
      v13 = AXRDeviceRemoteActionsForVoiceOverForCurrentDevice();
      v22 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v17 count:3];
      [v5 addObject:{v14, v17, v18, v19, v20, v21}];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

id AXRLocalizedStringForRemoteAction(void *a1)
{
  v1 = a1;
  Type = AXDeviceGetType();
  v3 = AXRLocalizedStringForRemoteActionWithDeviceType(v1, Type);

  return v3;
}

id AXRLocalizedStringForRemoteActionWithDeviceType(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = @"REMOTE_ACTION_NONE";
LABEL_63:
    v5 = AXRLocalizedStringForKeyWithDeviceType(v4, a2);
    goto LABEL_64;
  }

  if ([v3 isEqualToString:@"Home"])
  {
    v4 = @"REMOTE_ACTION_HOME";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"AppSwitcher"])
  {
    v4 = @"REMOTE_ACTION_APP_SWITCHER";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"NotificationCenter"])
  {
    v4 = @"REMOTE_ACTION_NOTIFICATION_CENTER";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"ControlCenter"])
  {
    v4 = @"REMOTE_ACTION_CONTROL_CENTER";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"Siri"])
  {
    v4 = @"REMOTE_ACTION_SIRI";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"TVMenu"])
  {
    v4 = @"REMOTE_ACTION_TV_MENU";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"TVSelect"])
  {
    v4 = @"REMOTE_ACTION_TV_SELECT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandActivate"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_ACTIVATE";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandMenu"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_MENU";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandStartScanning"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_START_SCANNING";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandSelect"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_SELECT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandMoveNext"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_MOVE_NEXT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandMovePrevious"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_MOVE_PREVIOUS";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"SwitchControlCommandStopScanning"])
  {
    v4 = @"REMOTE_ACTION_SWITCH_CONTROL_STOP_SCANNING";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandSimpleTap"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_SIMPLE_TAP";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandNextElement"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_NEXT_ELEMENT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandPreviousElement"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_PREVIOUS_ELEMENT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandNextRotorOption"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_NEXT_ROTOR_OPTION";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandPreviousRotorOption"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_PREVIOUS_ROTOR_OPTION";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandNextRotorItem"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_NEXT_ROTOR_ITEM";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandPreviousRotorItem"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_PREVIOUS_ROTOR_ITEM";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandScrollUpPage"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_SCROLL_PAGE_UP";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandScrollDownPage"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_SCROLL_PAGE_DOWN";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandScrollLeftPage"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_SCROLL_PAGE_LEFT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"VoiceOverCommandScrollRightPage"])
  {
    v4 = @"REMOTE_ACTION_VOICEOVER_SCROLL_PAGE_RIGHT";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"MediaPlayPause"])
  {
    v4 = @"REMOTE_ACTION_MEDIA_PLAY_PAUSE";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"MediaNextTrack"])
  {
    v4 = @"REMOTE_ACTION_MEDIA_NEXT_TRACK";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"MediaPreviousTrack"])
  {
    v4 = @"REMOTE_ACTION_MEDIA_PREVIOUS_TRACK";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"MediaVolumeUp"])
  {
    v4 = @"REMOTE_ACTION_MEDIA_VOLUME_UP";
    goto LABEL_63;
  }

  if ([v3 isEqualToString:@"MediaVolumeDown"])
  {
    v4 = @"REMOTE_ACTION_MEDIA_VOLUME_DOWN";
    goto LABEL_63;
  }

  v5 = v3;
LABEL_64:
  v6 = v5;

  return v6;
}

id AXRLocalizedSectionTitleForPreferredContextType(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = AXRLocalizedStringForKey(off_2786658A8[a1]);
  }

  return v2;
}

void sub_229532704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_2295331CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229533474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ax_remote_general_log()
{
  if (ax_remote_general_log_onceToken != -1)
  {
    ax_remote_general_log_cold_1();
  }

  v1 = ax_remote_general_log___logger;

  return v1;
}

void __ax_remote_general_log_block_invoke()
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"remote_%s", "general"];
  v0 = v3;
  v1 = os_log_create("com.apple.Accessibility", [v3 UTF8String]);
  v2 = ax_remote_general_log___logger;
  ax_remote_general_log___logger = v1;
}

id ax_remote_connection_log()
{
  if (ax_remote_connection_log_onceToken != -1)
  {
    ax_remote_connection_log_cold_1();
  }

  v1 = ax_remote_connection_log___logger;

  return v1;
}

void __ax_remote_connection_log_block_invoke()
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"remote_%s", "connection"];
  v0 = v3;
  v1 = os_log_create("com.apple.Accessibility", [v3 UTF8String]);
  v2 = ax_remote_connection_log___logger;
  ax_remote_connection_log___logger = v1;
}

id ax_remote_daemon_log()
{
  if (ax_remote_daemon_log_onceToken != -1)
  {
    ax_remote_daemon_log_cold_1();
  }

  v1 = ax_remote_daemon_log___logger;

  return v1;
}

void __ax_remote_daemon_log_block_invoke()
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"remote_%s", "daemon"];
  v0 = v3;
  v1 = os_log_create("com.apple.Accessibility", [v3 UTF8String]);
  v2 = ax_remote_daemon_log___logger;
  ax_remote_daemon_log___logger = v1;
}

id ax_remote_event_log()
{
  if (ax_remote_event_log_onceToken != -1)
  {
    ax_remote_event_log_cold_1();
  }

  v1 = ax_remote_event_log___logger;

  return v1;
}

void __ax_remote_event_log_block_invoke()
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"remote_%s", "event"];
  v0 = v3;
  v1 = os_log_create("com.apple.Accessibility", [v3 UTF8String]);
  v2 = ax_remote_event_log___logger;
  ax_remote_event_log___logger = v1;
}

id _AXRBundle()
{
  if (_AXRBundle_onceToken != -1)
  {
    _AXRBundle_cold_1();
  }

  v1 = _AXRBundle__AXRBundle;

  return v1;
}

id AXRLocalizedStringForKey(void *a1)
{
  v1 = a1;
  Type = AXDeviceGetType();
  v3 = AXRLocalizedStringForKeyWithDeviceType(v1, Type);

  return v3;
}

id AXRLocalizedStringForKeyWithDeviceType(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 - 1) <= 5)
  {
    v5 = [v3 stringByAppendingString:off_278665B30[a2 - 1]];
    v6 = _AXRBundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_283CD4BF0 table:@"Localizable"];

    if (![v7 isEqualToString:v5])
    {
      goto LABEL_5;
    }
  }

  v5 = _AXRBundle();
  v7 = [v5 localizedStringForKey:v4 value:&stru_283CD4BF0 table:@"Localizable"];
LABEL_5:

  return v7;
}

void sub_2295340B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}