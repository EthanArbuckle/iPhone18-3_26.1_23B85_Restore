id SCATLocStringForAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 108)
  {
    switch(a1)
    {
      case 200:
        v8 = @"SWITCH_ACTION_APP_SWITCHER_LABEL";
        goto LABEL_49;
      case 201:
        v8 = @"SWITCH_ACTION_HOME_LABEL";
        goto LABEL_49;
      case 202:
        v8 = @"SWITCH_ACTION_NOTIFICATION_CENTER_LABEL";
        goto LABEL_49;
      case 203:
        v8 = @"SWITCH_ACTION_SIRI_LABEL";
        goto LABEL_49;
      case 204:
        v8 = @"SWITCH_ACTION_VOLUME_DOWN_LABEL";
        goto LABEL_49;
      case 205:
        v8 = @"SWITCH_ACTION_VOLUME_UP_LABEL";
        goto LABEL_49;
      case 206:
        v8 = @"CUSTOMIZE_MENU_ForceTouch";
        goto LABEL_49;
      case 207:
        v8 = @"SWITCH_ACTION_DICTATE_LABEL";
        goto LABEL_49;
      case 208:
        v8 = @"SWITCH_ACTION_TRIPLE_CLICK";
        goto LABEL_49;
      case 209:
        v8 = @"SWITCH_ACTION_CONTROL_CENTER_LABEL";
        goto LABEL_49;
      case 210:
        v8 = @"SWITCH_ACTION_ESCAPE_LABEL";
        goto LABEL_49;
      case 211:
        v8 = @"SWITCH_ACTION_CAMERA_BUTTON";
        goto LABEL_49;
      case 212:
        v8 = @"SWITCH_ACTION_CAMERA_BUTTON_LIGHT_PRESS";
        goto LABEL_49;
      case 213:
        v8 = @"SWITCH_ACTION_CAMERA_BUTTON_DOUBLE_LIGHT_PRESS";
        goto LABEL_49;
      case 214:
        v8 = @"SWITCH_ACTION_VISUAL_INTELLIGENCE";
        goto LABEL_49;
      case 215:
        v8 = @"SWITCH_ACTION_SCROLL_UP_LABEL";
        goto LABEL_49;
      case 216:
        v8 = @"SWITCH_ACTION_SCROLL_DOWN_LABEL";
        goto LABEL_49;
      case 217:
        v8 = @"SWITCH_ACTION_SCROLL_LEFT_LABEL";
        goto LABEL_49;
      case 218:
        v8 = @"SWITCH_ACTION_SCROLL_RIGHT_LABEL";
        goto LABEL_49;
      default:
        if (a1 == 109)
        {
          goto LABEL_21;
        }

        if (a1 != 400)
        {
          goto LABEL_28;
        }

        v8 = @"SWITCH_ACTION_ACTIVE_HOLD_AND_DRAG_LABEL";
        break;
    }

    goto LABEL_49;
  }

  if (a1 > 103)
  {
    if (a1 <= 105)
    {
      if (a1 == 104)
      {
        v8 = @"SWITCH_ACTION_STEP_NEXT_LABEL";
      }

      else
      {
        v8 = @"SWITCH_ACTION_STEP_PREVIOUS_LABEL";
      }
    }

    else if (a1 == 106)
    {
      v8 = @"SWITCH_ACTION_STOP_LABEL";
    }

    else if (a1 == 107)
    {
      v8 = @"SWITCH_ACTION_VOICE_SHORTCUTS_MENU_LABEL";
    }

    else
    {
      v8 = @"SWITCH_ACTION_APPLE_WATCH_REMOTE_SCREEN_MENU_LABEL";
    }

    goto LABEL_49;
  }

  if (a1 > 100)
  {
    if (a1 == 101)
    {
      v8 = @"SWITCH_ACTION_MENU_LABEL";
    }

    else if (a1 == 102)
    {
      v8 = @"SWITCH_ACTION_RUN_LABEL";
    }

    else
    {
LABEL_21:
      v8 = @"SWITCH_ACTION_SELECT_LABEL";
    }

    goto LABEL_49;
  }

  if (!a1)
  {
    v8 = @"SWITCH_ACTION_UNKNOWN_LABEL";
    goto LABEL_49;
  }

  if (a1 == 100)
  {
    v8 = @"SWITCH_ACTION_ACTIVATE_LABEL";
LABEL_49:
    v10 = AXParameterizedLocalizedString(2, v8, a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_50;
  }

LABEL_28:
  v9 = SWCHLogSettings();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    SCATLocStringForAction_cold_1(v9);
  }

  v10 = 0;
LABEL_50:

  return v10;
}

id SCATSwitchesWithSource(void *a1)
{
  v1 = a1;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchSwitches];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SCATSwitchesWithSource_block_invoke;
  v7[3] = &unk_1E71ECB00;
  v8 = v1;
  v4 = v1;
  v5 = [v3 objectsPassingTest:v7];

  return v5;
}

uint64_t __SCATSwitchesWithSource_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id SCATSwitchesWithType(void *a1)
{
  v1 = a1;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchSwitches];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SCATSwitchesWithType_block_invoke;
  v7[3] = &unk_1E71ECB00;
  v8 = v1;
  v4 = v1;
  v5 = [v3 objectsPassingTest:v7];

  return v5;
}

uint64_t __SCATSwitchesWithType_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

BOOL SCATIsATVRemoteButtonSwitchCandidateEvent()
{
  result = SCATIsATVRemoteButtonEvent();
  if (result)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v2 = (IntegerValue - 205) > 0x1D || ((1 << (IntegerValue + 51)) & 0x30000001) == 0;
    return !v2 || IntegerValue == 96 || IntegerValue == 4;
  }

  return result;
}

BOOL SCATIsATVRemoteButtonEvent()
{
  if (IOHIDEventGetType() != 3)
  {
    return 0;
  }

  if (IOHIDEventGetIntegerValue() != 12)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      return IOHIDEventGetIntegerValue() == 134;
    }

    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  result = 0;
  if (IntegerValue <= 127)
  {
    if (((IntegerValue - 48) > 0x30 || ((1 << (IntegerValue - 48)) & 0x10000003F0001) == 0) && IntegerValue != 4)
    {
      return result;
    }

    return 1;
  }

  if (IntegerValue > 432)
  {
    if (IntegerValue != 547 && IntegerValue != 433)
    {
      return result;
    }

    return 1;
  }

  if ((IntegerValue - 178) <= 0x38 && ((1 << (IntegerValue + 78)) & 0x181000008000001) != 0 || IntegerValue == 128)
  {
    return 1;
  }

  return result;
}

uint64_t SCATActionForTADSwitchControlButtonType(uint64_t a1)
{
  if ((a1 - 1) > 0x16)
  {
    return 0;
  }

  else
  {
    return qword_18B2F87F0[a1 - 1];
  }
}

void sub_18B221494(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B223AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCVoiceShortcutClientClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("VCVoiceShortcutClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCVoiceShortcutClientClass_block_invoke_cold_1();
  }

  getVCVoiceShortcutClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VoiceShortcutClientLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __VoiceShortcutClientLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E71ECBB8;
    v2 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    VoiceShortcutClientLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWFAccessibilityWorkflowRunnerClientClass_block_invoke(uint64_t a1)
{
  VoiceShortcutClientLibrary();
  result = objc_getClass("WFAccessibilityWorkflowRunnerClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFAccessibilityWorkflowRunnerClientClass_block_invoke_cold_1();
  }

  getWFAccessibilityWorkflowRunnerClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL _AXMIDIHandleErrorOSStatus(int a1, uint64_t a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v7 = a3;
    v8 = [v5 errorWithDomain:v6 code:a1 userInfo:0];
    v9 = MEMORY[0x1E696ABC0];
    v10 = AXMIDIErrorDomain;
    v11 = *MEMORY[0x1E696A578];
    v16 = *MEMORY[0x1E696AA08];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v7, v16, v11, v8];

    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:2];
    v14 = [v9 errorWithDomain:v10 code:a2 userInfo:v13];

    AXMIDILogError(v14);
  }

  return a1 != 0;
}

void AXMIDILogError(void *a1)
{
  v1 = a1;
  v2 = [v1 code];
  if ((v2 - 1) > 6)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_1E71ECBD0[v2 - 1];
  }

  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = [v1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  v7 = [v4 initWithFormat:@"AX MIDI Error: %@ - %@", v3, v6];

  v8 = [v1 userInfo];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v9)
  {
    [v7 appendFormat:@" [Underlying Error: %@]", v9];
    v10 = [v9 code] + 10844;
    if (v10 <= 0xE)
    {
      [v7 appendString:off_1E71ECC08[v10]];
    }
  }

  v11 = AXLogMIDI();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    AXMIDILogError_cold_1(v7, v11);
  }
}

BOOL _AXMIDIHandlePropertyLookupError(int a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1 != -10835 && a1)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a1 userInfo:0];
    v5 = MEMORY[0x1E696ABC0];
    v6 = AXMIDIErrorDomain;
    v7 = *MEMORY[0x1E696A578];
    v12 = *MEMORY[0x1E696AA08];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error fetching MIDI property '%@'", v3, v12, v7, v4];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:2];
    v10 = [v5 errorWithDomain:v6 code:5 userInfo:v9];

    AXMIDILogError(v10);
  }

  return a1 != 0;
}

__CFString *_AXMIDIStringProperty(MIDIObjectRef a1, const __CFString *a2, void *a3)
{
  str = 0;
  v5 = a3;
  StringProperty = MIDIObjectGetStringProperty(a1, a2, &str);
  LODWORD(a2) = _AXMIDIHandlePropertyLookupError(StringProperty, v5);

  v7 = str;
  if (a2)
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

id _AXMIDIIntegerProperty(MIDIObjectRef a1, const __CFString *a2, void *a3)
{
  outValue = 0;
  v5 = a3;
  IntegerProperty = MIDIObjectGetIntegerProperty(a1, a2, &outValue);
  LOBYTE(a2) = _AXMIDIHandlePropertyLookupError(IntegerProperty, v5);

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:outValue];
  }

  return v7;
}

id _AXMIDIBooleanProperty(MIDIObjectRef a1, const __CFString *a2, void *a3)
{
  outValue = 0;
  v5 = a3;
  IntegerProperty = MIDIObjectGetIntegerProperty(a1, a2, &outValue);
  LOBYTE(a2) = _AXMIDIHandlePropertyLookupError(IntegerProperty, v5);

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:outValue];
  }

  return v7;
}

id AXMIDIEntityForEndpoint(MIDIEndpointRef a1)
{
  outEntity = 0;
  Entity = MIDIEndpointGetEntity(a1, &outEntity);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find entity for endpoint"];
  LOBYTE(Entity) = _AXMIDIHandleErrorOSStatus(Entity, 5, v2);

  if (Entity)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outEntity];
  }

  return v3;
}

id AXMIDIDeviceForEntity(MIDIEntityRef a1)
{
  outDevice = 0;
  Device = MIDIEntityGetDevice(a1, &outDevice);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find device for entity"];
  LOBYTE(Device) = _AXMIDIHandleErrorOSStatus(Device, 5, v2);

  if (Device)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDevice];
  }

  return v3;
}

id AXMIDIDeviceForEndpoint(MIDIEndpointRef a1)
{
  outEntity = 0;
  Entity = MIDIEndpointGetEntity(a1, &outEntity);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find entity for endpoint"];
  LOBYTE(Entity) = _AXMIDIHandleErrorOSStatus(Entity, 5, v2);

  if (Entity & 1) != 0 || (outDevice = 0, Device = MIDIEntityGetDevice(outEntity, &outDevice), [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find device for entity"], v4 = objc_claimAutoreleasedReturnValue(), LOBYTE(Device) = _AXMIDIHandleErrorOSStatus(Device, 5, v4), v4, (Device))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDevice];
  }

  return v5;
}

uint64_t _AXIPCSendData(int a1, int a2, mach_msg_timeout_t a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  memset(&msg[4], 0, 32);
  *&msg[24] = 2;
  *&msg[28] = a2;
  v18 = 1245184;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a5;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0xD5AD200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v12 = *&msg[12];
  }

  else
  {
    v12 = reply_port;
  }

  v13 = mach_msg(msg, 275, 0x44u, 0x40u, v12, a3, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v13)
    {
      if (*&msg[20] == 71)
      {
        v14 = 4294966988;
      }

      else if (*&msg[20] == 875318)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v14 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = *&msg[32];
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_29;
        }

        v14 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && HIBYTE(v18) == 1)
        {
          v15 = v19;
          if (v19 == v21)
          {
            v14 = 0;
            *a6 = *&msg[28];
            *a7 = v15;
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v14;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v14;
}

uint64_t _AXIPCSimpleSendDataWithFencePort(mach_port_name_t a1, int a2, int a3, mach_msg_timeout_t timeout, uint64_t a5, int a6)
{
  v11 = 0;
  v13 = 0u;
  *name = 0u;
  v12 = a2;
  DWORD1(v13) = 1245184;
  DWORD2(v13) = a3;
  v14 = 1245184;
  v15 = a5;
  v16 = 16777472;
  v17 = a6;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a6;
  v9 = -2147483629;
  name[1] = a1;
  v11 = 0x3000D5AD4;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v9);
  }

  v7 = mach_msg(&v9, 17, 0x50u, 0, 0, timeout, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((v9 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t _AXIPCSendDataWithAsyncReply(mach_port_name_t a1, int a2, int a3, mach_msg_timeout_t timeout, uint64_t a5, int a6)
{
  v11 = 0;
  v13 = 0u;
  *name = 0u;
  v12 = a2;
  DWORD1(v13) = 1245184;
  DWORD2(v13) = a3;
  v14 = 1376256;
  v15 = a5;
  v16 = 16777472;
  v17 = a6;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a6;
  v9 = -2147483629;
  name[1] = a1;
  v11 = 0x3000D5AD5;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v9);
  }

  v7 = mach_msg(&v9, 17, 0x50u, 0, 0, timeout, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((v9 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t (*_AXIPCServer_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 875222) >= 0xFFFFFFFC)
  {
    return __AXXIPC_AXIPCServer_subsystem[5 * (v1 - 875218) + 5];
  }

  else
  {
    return 0;
  }
}

void _XSendData(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 68)
  {
    v5 = -304;
    goto LABEL_12;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 52) != *(a1 + 64))
  {
    v5 = -300;
    goto LABEL_12;
  }

  if (*(a1 + 68) || (v4 = *(a1 + 72), v4 <= 7) || v4 - 8 <= 0x1F)
  {
    v5 = -309;
LABEL_12:
    *(a2 + 32) = v5;
    goto LABEL_13;
  }

  *(a2 + 52) = 0;
  v6 = a2 + 52;
  *(a2 + 36) = 16777472;
  v7 = a2 + 28;
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = *(a1 + 28);
  v11 = *(a1 + 40);
  v12 = *(a1 + 52);
  v13 = *(a1 + 80);
  v14 = *(a1 + 104);
  v16[0] = *(a1 + 88);
  v16[1] = v14;
  v15 = __AXXIPCSendData(v8, v9, v10, v11, v12, v7, v6, v13, v16);
  mig_deallocate(*(a1 + 40), *(a1 + 52));
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  if (!v15)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return;
  }

  *(a2 + 32) = v15;
LABEL_13:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSimpleSendDataWithFencePort(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 3 && *(a1 + 4) == 80)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 50) << 16 == 1114112 && *(a1 + 63) == 1 && (v4 = *(a1 + 64), v4 == *(a1 + 76)))
    {
      if (!*(a1 + 80))
      {
        v5 = *(a1 + 84);
        if (v5 > 7 && v5 - 8 > 0x1F)
        {
          v7 = *(a1 + 12);
          v8 = *(a1 + 28);
          v9 = *(a1 + 40);
          v10 = *(a1 + 52);
          v11 = *(a1 + 92);
          v12 = *(a1 + 116);
          v13[0] = *(a1 + 100);
          v13[1] = v12;
          *(a2 + 32) = __AXXIPCSimpleSendDataWithFencePort(v7, v8, v9, v10, v4, v11, v13);
          mig_deallocate(*(a1 + 52), *(a1 + 64));
          *(a1 + 52) = 0;
          *(a1 + 64) = 0;
          return;
        }
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSendDataWithAsyncReply(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 3 && *(a1 + 4) == 80)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 50) << 16 == 1179648 && *(a1 + 63) == 1 && (v4 = *(a1 + 64), v4 == *(a1 + 76)))
    {
      if (!*(a1 + 80))
      {
        v5 = *(a1 + 84);
        if (v5 > 7 && v5 - 8 > 0x1F)
        {
          v7 = *(a1 + 12);
          v8 = *(a1 + 28);
          v9 = *(a1 + 40);
          v10 = *(a1 + 52);
          v11 = *(a1 + 92);
          v12 = *(a1 + 116);
          v13[0] = *(a1 + 100);
          v13[1] = v12;
          *(a2 + 32) = __AXXIPCSendDataWithAsyncReply(v7, v8, v9, v10, v4, v11, v13);
          mig_deallocate(*(a1 + 52), *(a1 + 64));
          *(a1 + 52) = 0;
          *(a1 + 64) = 0;
          return;
        }
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _AXIPCServer_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 875222) >= 0xFFFFFFFC && (v5 = __AXXIPC_AXIPCServer_subsystem[5 * (v4 - 875218) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _AXIPCAsyncSendDataReply(unsigned int a1, int a2, uint64_t a3, int a4)
{
  v10 = 0;
  v9 = 0u;
  memset(&msg[4], 0, 32);
  if (a2)
  {
    *&msg[32] = a2;
    *&msg[24] = *MEMORY[0x1E69E99E0];
    v5 = 18;
  }

  else
  {
    *&msg[24] = 1;
    *&msg[28] = a3;
    LODWORD(v9) = 16777472;
    DWORD1(v9) = a4;
    *(&v9 + 1) = *MEMORY[0x1E69E99E0];
    v10 = a4;
    v5 = -2147483630;
  }

  *msg = v5;
  *&msg[8] = a1;
  *&msg[16] = 0;
  *&msg[20] = 875318;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  if (a2)
  {
    v6 = 36;
  }

  else
  {
    v6 = 56;
  }

  return mach_msg(msg, 1, v6, 0, 0, 0, 0);
}

uint64_t _AXIPCReplyToAsyncRequest(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 16777472;
  v7 = a3;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  *msg = 2147483666;
  *&msg[8] = a1;
  *&msg[12] = xmmword_18B2F88D0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
}

void (*_AXIPCAsyncRequestReply_server_routine(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 2015010900)
  {
    return _XReplyToAsyncRequest;
  }

  else
  {
    return 0;
  }
}

void _XReplyToAsyncRequest(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1)
    {
      v3 = *(a1 + 40);
      if (v3 == *(a1 + 52))
      {
        *(a2 + 32) = __AXXIPCReplyToAsyncRequest(*(a1 + 12), *(a1 + 28), v3);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _AXIPCAsyncRequestReply_server(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) != 2015010900)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_10:
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return 1;
  }

  if (*(a1 + 39) != 1 || (v5 = *(a1 + 40), v5 != *(a1 + 52)))
  {
    v7 = -300;
    goto LABEL_10;
  }

  *(a2 + 32) = __AXXIPCReplyToAsyncRequest(*(a1 + 12), *(a1 + 28), v5);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t AXSettings.SpokenContent.resolver.getter()
{
  v1 = sub_18B2C9244();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_18B2C9134();
  MEMORY[0x1EEE9AC00](v4);
  if (*(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver))
  {
    v8 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver);
  }

  else
  {
    v42 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver;
    v36 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v38 = v7;
    v39 = v6;
    v41 = sub_18B2C9154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63A0);
    v9 = sub_18B2C90F4();
    v10 = *(v9 - 8);
    v40 = v0;
    v11 = v10;
    v12 = *(v10 + 72);
    v13 = *(v10 + 80);
    v37 = v3;
    v14 = (v13 + 32) & ~v13;
    v15 = swift_allocObject();
    v35 = v15;
    *(v15 + 16) = xmmword_18B2F88E0;
    v16 = v15 + v14;
    v17 = *MEMORY[0x1E69D9E60];
    v18 = sub_18B2C9174();
    v19 = *(v18 - 8);
    v33 = *(v19 + 104);
    v34 = v19 + 104;
    v33(v16, v17, v18);
    v32 = *MEMORY[0x1E69D9E70];
    v20 = v32;
    v21 = sub_18B2C9184();
    v22 = *(*(v21 - 8) + 104);
    v22(v16, v20, v21);
    v23 = *MEMORY[0x1E69D9E10];
    v24 = *(v11 + 104);
    (v24)(v16, v23, v9);
    v33(v16 + v12, *MEMORY[0x1E69D9E68], v18);
    v22(v16 + v12, v32, v21);
    (v24)(v16 + v12, v23, v9);
    v25 = (v16 + 2 * v12);
    *v25 = sub_18B225F40;
    v25[1] = 0;
    v24();
    sub_18B2C91F4();
    v26 = *MEMORY[0x1E69D9E18];
    (v24)(v16 + 3 * v12, v26, v9);
    sub_18B2C9204();
    (v24)(v16 + 4 * v12, v26, v9);
    (v24)(v16 + 5 * v12, *MEMORY[0x1E69D9E28], v9);
    (v24)(v16 + 6 * v12, *MEMORY[0x1E69D9E08], v9);
    v27 = v36;
    *v36 = v35;
    (*(v38 + 104))(v27, *MEMORY[0x1E69D9E40], v39);
    v28 = sub_18B2C9294();
    v29 = sub_18B2C9284();
    v44 = v28;
    v45 = MEMORY[0x1E69D9E88];
    v43 = v29;
    sub_18B2C9234();
    v8 = sub_18B2C9104();
    *(v40 + v42) = v8;
  }

  return v8;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18B225EB0@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.SpokenContent.resolver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B225EDC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver) = *a1;
}

uint64_t sub_18B225F40(uint64_t a1)
{
  v2 = sub_18B2C9244();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - v7;
  v33[1] = a1;
  sub_18B2C9254();
  sub_18B2C9214();
  sub_18B22DDC0(&qword_1EA9B66C0, 255, MEMORY[0x1E69D9E78]);
  v9 = sub_18B2C9C44();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  sub_18B2C9254();
  sub_18B2C9214();
  LODWORD(a1) = sub_18B2C9C44() & 1;
  v10(v6, v2);
  v11 = (v10)(v8, v2);
  if ((v9 & 1) == a1)
  {
    if (v9)
    {
      if (qword_1EA9B62D8 != -1)
      {
        v11 = swift_once();
      }

      v14 = qword_1EA9BC248;
      v15 = *(qword_1EA9BC248 + 16);
      MEMORY[0x1EEE9AC00](v11);
      v33[-2] = sub_18B22EFD8;
      v33[-1] = v14;

      os_unfair_lock_lock(v15 + 4);
      sub_18B22EFF4(&v34);
      os_unfair_lock_unlock(v15 + 4);
      v16 = v34;

      if (v16)
      {
        v17 = [v16 name];
        if (v17)
        {

          result = [v16 name];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v18 = result;
          sub_18B2C9894();

          v19 = sub_18B2C98B4();
          v21 = v20;

          sub_18B2C91E4();
          v22 = sub_18B2C98B4();
          v24 = v23;

          sub_18B2C91E4();
          v25 = sub_18B2C98B4();
          v27 = v26;

          if (v22 == v25 && v24 == v27)
          {
          }

          else
          {
            v28 = sub_18B2C9F24();

            if ((v28 & 1) == 0)
            {
              sub_18B2C91E4();
              v29 = sub_18B2C98B4();
              v31 = v30;

              if (v29 == v19 && v31 == v21)
              {

                return -1;
              }

              v32 = sub_18B2C9F24();

              v12 = (v32 & 1) == 0;
              goto LABEL_3;
            }
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  v12 = (v9 & 1) == 0;
LABEL_3:
  if (v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t (*AXSettings.SpokenContent.resolver.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = AXSettings.SpokenContent.resolver.getter();
  return sub_18B2263C8;
}

uint64_t AXSettings.SpokenContent._$voiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B22646C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___voiceSelectionsByLanguage_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___voiceSelectionsByLanguage_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___voiceSelectionsByLanguage_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
    v7 = a1;
    sub_18B2C9674();
    sub_18B22ED04();
    sub_18B22EDF8();
    sub_18B22DDC0(&qword_1EA9B6688, v8, type metadata accessor for AXSettings.SpokenContent);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B226638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B22D0B0();
  *a1 = result;
  return result;
}

uint64_t sub_18B226690@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SpokenContent.voiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t sub_18B2267D0@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.SpokenContent.voiceSelectionsByLanguage.getter();
  *a1 = result;
  return result;
}

uint64_t AXSettings.SpokenContent.voiceSelectionsByLanguage.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.SpokenContent.voiceSelectionsByLanguage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B2269F8;
}

void sub_18B2269F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.SpokenContent._$macroLanguageDisambiguations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B226BB4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___macroLanguageDisambiguations_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___macroLanguageDisambiguations_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___macroLanguageDisambiguations_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6410);
    v16[3] = "TechnologyTypesInSettings";
    v16[4] = v11;
    v16[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B22DDC0(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[1] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B22EC20(&qword_1ED653BE8, &qword_1ED653C08);
    sub_18B22EC20(&qword_1ED653BF0, &qword_1ED653C10);
    sub_18B22DDC0(&qword_1EA9B6688, v14, type metadata accessor for AXSettings.SpokenContent);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

unint64_t sub_18B226FA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18B2B5198(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_18B22702C(uint64_t a1, uint64_t *a2)
{
  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_18B2C96C4();
}

uint64_t sub_18B2270B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SpokenContent.macroLanguageDisambiguations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t sub_18B2271F4@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.SpokenContent.macroLanguageDisambiguations.getter();
  *a1 = result;
  return result;
}

uint64_t AXSettings.SpokenContent.macroLanguageDisambiguations.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.SpokenContent.macroLanguageDisambiguations.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B22741C;
}

void sub_18B22741C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.SpokenContent._$internalShowSiriTechnologyTypesInSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2275D8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___internalShowSiriTechnologyTypesInSettings_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___internalShowSiriTechnologyTypesInSettings_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___internalShowSiriTechnologyTypesInSettings_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B22DDC0(&qword_1EA9B6688, v8, type metadata accessor for AXSettings.SpokenContent);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.SpokenContent.internalShowSiriTechnologyTypesInSettingsStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B227808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SpokenContent.internalShowSiriTechnologyTypesInSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t sub_18B227948@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SpokenContent.internalShowSiriTechnologyTypesInSettings.getter();
  *a1 = result & 1;
  return result;
}

uint64_t AXSettings.SpokenContent.internalShowSiriTechnologyTypesInSettings.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SpokenContent.internalShowSiriTechnologyTypesInSettings.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B227B08;
}

uint64_t sub_18B227B08(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.SpokenContent.speechVoiceIdentifier(forLanguage:exists:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_18B2C9094();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_18B2C90B4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B227D84, 0, 0);
}

uint64_t sub_18B227D84()
{
  v22 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B22F02C;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v21);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v0[4];

  sub_18B2C9474();

  v6 = v0[2];
  v0[15] = v6;
  v7 = AXSettings.SpokenContent.resolver.getter();
  v0[16] = v7;
  if (v5)
  {
    v8 = v0[12];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v20 = v0[7];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v10 + 8))(v8, v9);
    sub_18B2C9084();
    (*(v11 + 8))(v12, v20);
  }

  else
  {
    v13 = v0[13];
    v14 = sub_18B2C9014();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_18B227FF4;
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[5];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v16, v17, v7, v18, v6);
}

uint64_t sub_18B227FF4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B22810C, 0, 0);
}

uint64_t sub_18B22810C()
{
  v1 = v0[13];
  v2 = v0[14];

  sub_18B1630AC(v1, &qword_1EA9B63D0);
  v3 = sub_18B2C9424();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[14];
  if (v5 == 1)
  {
    sub_18B1630AC(v0[14], &qword_1EA9B63D8);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_18B2C9404();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[1];

  return v10(v7, v8);
}

uint64_t sub_18B228400(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[4] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_18B2284F4;

  return AXSettings.SpokenContent.speechVoiceIdentifier(forLanguage:exists:)(a1, v9, a2);
}

uint64_t sub_18B2284F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_18B2C9864();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t AXSettings.SpokenContent.voiceSelection(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_18B2C9094();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B22880C, 0, 0);
}

uint64_t sub_18B22880C()
{
  v21 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B22F02C;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v20);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v0[5];

  sub_18B2C9474();

  v6 = v0[2];
  v0[15] = v6;
  v7 = AXSettings.SpokenContent.resolver.getter();
  v0[16] = v7;
  if (v5)
  {
    v8 = v0[12];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v19 = v0[7];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v10 + 8))(v8, v9);
    sub_18B2C9084();
    (*(v11 + 8))(v12, v19);
  }

  else
  {
    v13 = v0[13];
    v14 = sub_18B2C9014();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_18B228A78;
  v17 = v0[13];
  v16 = v0[14];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v16, v17, v7, 0, v6);
}

uint64_t sub_18B228A78()
{

  return MEMORY[0x1EEE6DFA0](sub_18B228B90, 0, 0);
}

uint64_t sub_18B228B90()
{
  v2 = v0[13];
  v1 = v0[14];

  sub_18B1630AC(v2, &qword_1EA9B63D0);
  v3 = sub_18B2C9424();
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    sub_18B1630AC(v0[14], &qword_1EA9B63D8);
    v4 = 0;
  }

  else
  {
    sub_18B2C9B94();
    swift_dynamicCast();
    v4 = v0[3];
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_18B228E58(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18B228F3C;

  return AXSettings.SpokenContent.voiceSelection(forLanguage:)(a1, v7);
}

uint64_t sub_18B228F3C(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t AXSettings.SpokenContent.set(forLanguage:voiceSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B229150, 0, 0);
}

uint64_t sub_18B229150()
{
  v23 = v0;
  if (v0[7])
  {
    v1 = v0[9];
    v2 = sub_18B2C9424();
    v3 = *(v2 - 8);
    v4 = *(v3 + 56);
    v4(v1, 1, 1, v2);
    sub_18B22DDC0(&qword_1EA9B63E0, 255, MEMORY[0x1E6988218]);
    sub_18B2C9E14();
    v5 = (*(v3 + 48))(v1, 1, v2);
    v6 = v0[10];
    if (v5 == 1)
    {
      v7 = v0[10];
      v8 = 1;
    }

    else
    {
      (*(v3 + 32))(v0[10], v0[9], v2);
      v7 = v6;
      v8 = 0;
    }

    v4(v7, v8, 1, v2);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_18B2C9424();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = v0[8];
  v12 = AXSettings.SpokenContent.resolver.getter();
  v13 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  v0[11] = v12;
  v0[12] = v13;
  v14 = *(v11 + v13);
  v15 = swift_task_alloc();
  *(v15 + 16) = v11;
  v16 = swift_task_alloc();
  *(v16 + 16) = sub_18B22F02C;
  *(v16 + 24) = v15;

  os_unfair_lock_lock(v14 + 4);
  sub_18B22F010(&v22);
  v0[13] = 0;
  os_unfair_lock_unlock(v14 + 4);

  sub_18B2C9474();

  v0[2] = v0[3];
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_18B22946C;
  v18 = v0[10];
  v19 = v0[5];
  v20 = v0[6];

  return Dictionary<>.set(voiceSelection:forLanguage:withResolver:)(v18, v19, v20, v12);
}

uint64_t sub_18B22946C()
{
  v14 = v0;
  v14 = *v0;
  v1 = v14;
  v2 = v14[13];
  v3 = v14[12];
  v4 = v14[10];
  v5 = v14[8];
  v6 = *v0;
  v14 = *v0;

  sub_18B1630AC(v4, &qword_1EA9B63D8);
  v7 = v1[2];
  v8 = *(v5 + v3);
  v9 = swift_task_alloc();
  *(v9 + 16) = v5;
  v10 = swift_task_alloc();
  *(v10 + 16) = sub_18B22F02C;
  *(v10 + 24) = v9;

  os_unfair_lock_lock(v8 + 4);
  sub_18B22F010(&v13);
  if (v2)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v8 + 4);

    v1[4] = v7;
    sub_18B2C9484();

    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_18B22987C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_18B229974;

  return AXSettings.SpokenContent.set(forLanguage:voiceSelection:)(a1, v9, a2);
}

uint64_t sub_18B229974()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t AXSettings.SpokenContent.set(voiceId:forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B229B10, 0, 0);
}

uint64_t sub_18B229B10()
{
  v14 = v0;
  v1 = v0[9];
  v2 = AXSettings.SpokenContent.resolver.getter();
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  v0[10] = v2;
  v0[11] = v3;
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_18B22F02C;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v13);
  v0[12] = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  v0[2] = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_18B229CA8;
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  return Dictionary<>.set(voiceId:forLanguage:withResolver:)(v11, v10, v8, v9, v2);
}

uint64_t sub_18B229CA8()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[12];
  v3 = v13[11];
  v4 = v13[9];
  v5 = *v0;
  v13 = *v0;

  v6 = v1[2];
  v7 = *(v4 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B22F02C;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B22F010(&v12);
  if (v2)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v1[4] = v6;
    sub_18B2C9484();

    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_18B22A078(uint64_t a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;
  v8 = v7;
  v9 = sub_18B2C9894();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_18B22A184;

  return AXSettings.SpokenContent.set(voiceId:forLanguage:)(a1, v8, v9, v11);
}

uint64_t sub_18B22A184()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_18B22A2FC(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a1;
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a3;
  v6 = sub_18B2C9094();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_18B2C90B4();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B22A49C, 0, 0);
}

uint64_t sub_18B22A49C()
{
  v22 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  v0[18] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_18B22F02C;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v21);
  v0[19] = 0;
  os_unfair_lock_unlock(v3 + 4);
  v6 = v0[8];

  sub_18B2C9474();

  v7 = v0[2];
  v0[20] = v7;
  v8 = AXSettings.SpokenContent.resolver.getter();
  v0[21] = v8;
  if (v6)
  {
    v9 = v0[14];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[11];
    v20 = v0[9];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v11 + 8))(v9, v10);
    sub_18B2C9084();
    (*(v12 + 8))(v13, v20);
  }

  else
  {
    v14 = v0[15];
    v15 = sub_18B2C9014();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_18B22A718;
  v17 = v0[17];
  v18 = v0[15];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v17, v18, v8, 0, v7);
}

uint64_t sub_18B22A718()
{

  return MEMORY[0x1EEE6DFA0](sub_18B22A830, 0, 0);
}

uint64_t sub_18B22A830()
{
  v17 = v0;
  v1 = v0[17];
  v2 = v0[15];

  sub_18B1630AC(v2, &qword_1EA9B63D0);
  v3 = sub_18B2C9424();
  if (!(*(*(v3 - 8) + 48))(v1, 1, v3))
  {
    LOBYTE(v16) = 0;
    sub_18B2C9384();
  }

  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[6];
  sub_18B22E344(v0[17], v0[16]);
  v7 = *(v6 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver);
  v0[23] = v7;
  v8 = *(v6 + v4);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  v10 = swift_task_alloc();
  *(v10 + 16) = sub_18B22F02C;
  *(v10 + 24) = v9;

  os_unfair_lock_lock(v8 + 4);
  sub_18B22F010(&v16);
  v0[24] = v5;
  os_unfair_lock_unlock(v8 + 4);
  if (v5)
  {
  }

  else
  {

    sub_18B2C9474();

    v0[3] = v0[4];
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_18B22AA58;
    v13 = v0[16];
    v14 = v0[7];
    v15 = v0[8];

    return Dictionary<>.set(voiceSelection:forLanguage:withResolver:)(v13, v14, v15, v7);
  }
}

uint64_t sub_18B22AA58()
{
  v12 = v0;
  v12 = *v0;
  v1 = v12;
  v2 = v12[24];
  v3 = v12[18];
  v4 = v12[16];
  v5 = v12[6];
  v12 = *v0;

  sub_18B1630AC(v4, &qword_1EA9B63D8);
  v6 = v1[3];
  v7 = *(v5 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B22F02C;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B22F010(&v11);
  if (v2)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v1[5] = v6;
    sub_18B2C9484();

    return MEMORY[0x1EEE6DFA0](sub_18B22ACCC, 0, 0);
  }
}

uint64_t sub_18B22ACCC()
{
  sub_18B1630AC(*(v0 + 136), &qword_1EA9B63D8);

  v1 = *(v0 + 8);

  return v1();
}

float sub_18B22AE50(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage];

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(&v10);
  os_unfair_lock_unlock(v5 + 4);

  sub_18B2C9474();

  v6 = v10;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v2;

  v8 = v2;
  sub_18B2C95A4();

  return *&v10;
}

uint64_t sub_18B22AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_18B2C9094();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_18B2C90B4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B22B0F4, 0, 0);
}

uint64_t sub_18B22B0F4()
{
  v1 = v0[5];
  v2 = AXSettings.SpokenContent.resolver.getter();
  v0[15] = v2;
  if (v1)
  {
    v3 = v0[12];
    v4 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v15 = v0[7];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v5 + 8))(v3, v4);
    sub_18B2C9084();
    (*(v7 + 8))(v6, v15);
  }

  else
  {
    v8 = v0[13];
    v9 = sub_18B2C9014();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_18B22B288;
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[3];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v11, v12, v2, 0, v13);
}

uint64_t sub_18B22B288()
{

  return MEMORY[0x1EEE6DFA0](sub_18B22B384, 0, 0);
}

uint64_t sub_18B22B384()
{
  v1 = v0[14];
  v2 = v0[13];

  sub_18B1630AC(v2, &qword_1EA9B63D0);
  v3 = sub_18B2C9424();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[14];
  if (v5 == 1)
  {
    sub_18B1630AC(v0[14], &qword_1EA9B63D8);
    v7 = 1056964608;
  }

  else
  {
    v8 = sub_18B2C9374();
    (*(v4 + 8))(v6, v3);
    if ((v8 & 0x100000000) != 0)
    {
      v7 = 1056964608;
    }

    else
    {
      v7 = v8;
    }
  }

  v9 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18B2F88F0;
  *(v10 + 56) = MEMORY[0x1E69E6448];
  *(v10 + 32) = v7;
  sub_18B2C9F54();

  *v9 = v7;

  v11 = v0[1];

  return v11();
}

uint64_t AXSettings.SpokenContent.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage);
  v31 = sub_18B22F02C;
  v32 = &v33;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v37;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
  v39 = sub_18B22EBD8(&qword_1EA9B6408, &qword_1EA9B6400);
  *&v37 = v3;
  sub_18B22C7E4(&v37, v35);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v4;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  sub_18B22CB40(*v8, 0xD00000000000001ALL, 0x800000018B2F14E0, isUniquelyReferenced_nonNull_native, &v34, &qword_1EA9B6400, &unk_18B2F8948, &qword_1EA9B6408);
  v10 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v11 = v34;
  v12 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations);
  v13 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);

  os_unfair_lock_lock(v12 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v12 + 4);
  v14 = v37;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6410);
  v39 = sub_18B22EBD8(&qword_1EA9B6418, &qword_1EA9B6410);
  *&v37 = v14;
  sub_18B22C7E4(&v37, v35);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v11;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  sub_18B22CD80(*v18, 0xD00000000000001DLL, 0x800000018B2F1500, v15, &v34);
  v20 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v21 = v34;
  v22 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings);
  v23 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v22 + 4);
  sub_18B22F010(&v37);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v37;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v39 = sub_18B22EBD8(&qword_1EA9B6428, &qword_1EA9B6420);
  *&v37 = v24;
  sub_18B22C7E4(&v37, v35);
  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v34 = v21;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v30[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  sub_18B22CB40(*v27, 0xD00000000000002ALL, 0x800000018B2F1520, v22, &v34, &qword_1EA9B6420, &unk_18B2F9C40, &qword_1EA9B6428);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v34;
}

id AXSettings.SpokenContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.SpokenContent.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent____lazy_storage___resolver] = 0;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___voiceSelectionsByLanguage_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___macroLanguageDisambiguations_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_macroLanguageDisambiguations;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___internalShowSiriTechnologyTypesInSettings_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_internalShowSiriTechnologyTypesInSettings;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v8] = sub_18B2C9584();
  v9 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v9] = sub_18B2C9564();
  sub_18B2C95B4();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id AXSettings.SpokenContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B22BF90@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  sub_18B2C9574();
  swift_allocObject();
  sub_18B2C9564();
  sub_18B2C94C4();
  if (*(&v6 + 1))
  {
    v8[0] = v5;
    v8[1] = v6;
    v9 = v7;
    sub_18B2C9554();
    sub_18B22EB84(v8);

    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  else
  {

    sub_18B1630AC(&v5, &qword_1EA9B6680);
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }
}

uint64_t sub_18B22C18C(uint64_t a1, id *a2)
{
  result = sub_18B2C9874();
  *a2 = 0;
  return result;
}

uint64_t sub_18B22C204(uint64_t a1, id *a2)
{
  v3 = sub_18B2C9884();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18B22C284@<X0>(uint64_t *a1@<X8>)
{
  sub_18B2C9894();
  v2 = sub_18B2C9864();

  *a1 = v2;
  return result;
}

uint64_t sub_18B22C2C8()
{
  v1 = *v0;
  sub_18B2C9F64();
  MEMORY[0x18CFF1080](v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B22C310()
{
  v1 = *v0;
  sub_18B2C9F64();
  MEMORY[0x18CFF1080](v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B22C354@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B2C9864();

  *a1 = v2;
  return result;
}

uint64_t sub_18B22C39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B2C9894();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B22C3C8()
{
  v0 = sub_18B2C9894();
  v2 = v1;
  if (v0 == sub_18B2C9894() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18B2C9F24();
  }

  return v5 & 1;
}

uint64_t sub_18B22C450(uint64_t a1)
{
  v2 = sub_18B22DDC0(&qword_1ED653BB0, 255, type metadata accessor for AXSSVoiceOverTextualContext);
  v3 = sub_18B22DDC0(&qword_1EA9B64D8, 255, type metadata accessor for AXSSVoiceOverTextualContext);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B22C5B8()
{
  sub_18B2C9F64();
  swift_getWitnessTable();
  sub_18B2C92B4();
  return sub_18B2C9FB4();
}

uint64_t sub_18B22C620()
{
  swift_getWitnessTable();

  return sub_18B2C92A4();
}

void *sub_18B22C6EC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_18B22C738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18B22C7E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_18B22CB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v36 = v16;
  v34 = a8;
  v37 = sub_18B22EBD8(a8, a6);
  *&v35 = a1;
  v17 = *a5;
  v19 = sub_18B293E34(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = v25[7] + 40 * v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      return sub_18B22C7E4(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_18B26AA84();
    goto LABEL_7;
  }

  sub_18B268A9C(v22, a4 & 1);
  v28 = sub_18B293E34(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_18B2C9F44();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v16);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_18B22CFC8(v19, a2, a3, *v32, v25, a6, a7, v34);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v35);
}

uint64_t sub_18B22CD80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6410);
  v30 = v10;
  v31 = sub_18B22EBD8(&qword_1EA9B6418, &qword_1EA9B6410);
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_18B293E34(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = v19[7] + 40 * v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      return sub_18B22C7E4(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_18B26AA84();
    goto LABEL_7;
  }

  sub_18B268A9C(v16, a4 & 1);
  v22 = sub_18B293E34(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_18B2C9F44();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_18B22CFC8(v13, a2, a3, *v26, v19, &qword_1EA9B6410, &unk_18B2F8950, &qword_1EA9B6418);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v29);
}

uint64_t sub_18B22CFC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v22 = sub_18B22EBD8(a8, a6);
  *&v20 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_18B22C7E4(&v20, a5[7] + 40 * a1);
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_18B22D0B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v102 - v1;
  v131 = sub_18B2C9424();
  v3 = *(v131 - 8);
  v4 = MEMORY[0x1EEE9AC00](v131);
  v129 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v128 = &v102 - v6;
  v7 = sub_18B2C9014();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  v12 = [v11 selectedSpeechVoiceIdentifiersWithLanguageSource];

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A8);
    v13 = sub_18B2C9814();

    v124 = *MEMORY[0x1E6988648];
    v14 = sub_18B2C9894();
    if (*(v13 + 16))
    {
      v16 = sub_18B293E34(v14, v15);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v16);

        sub_18B2C95B4();
        __swift_project_boxed_opaque_existential_1(v136, v136[3]);
        sub_18B22BF90(MEMORY[0x1E69E6448], &v134);
        v20 = v134;
        v21 = BYTE4(v134);
        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        v22 = 0;
        v24 = v19 + 64;
        v23 = *(v19 + 64);
        v122 = v19;
        v25 = 1 << *(v19 + 32);
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = v26 & v23;
        v28 = (v25 + 63) >> 6;
        v114 = *MEMORY[0x1E69D9EB8];
        v121 = (v8 + 56);
        v29 = 1056964608;
        if (!v21)
        {
          v29 = v20;
        }

        v120 = v29;
        v123 = (v3 + 32);
        v112 = v8 + 16;
        v113 = v8;
        v117 = (v8 + 8);
        v119 = v3;
        v111 = v3 + 40;
        v30 = MEMORY[0x1E69E7CC8];
        v116 = v19 + 64;
        v115 = v28;
        v118 = v10;
        while (1)
        {
          if (!v27)
          {
            while (1)
            {
              v31 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v31 >= v28)
              {

                goto LABEL_58;
              }

              v27 = *(v24 + 8 * v31);
              ++v22;
              if (v27)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            sub_18B2C9F44();
            __break(1u);
LABEL_71:
            result = sub_18B2C9F44();
            __break(1u);
            return result;
          }

          v31 = v22;
LABEL_17:
          v32 = (v31 << 10) | (16 * __clz(__rbit64(v27)));
          v33 = *(v122 + 56);
          v34 = (*(v122 + 48) + v32);
          v35 = *v34;
          v125 = v34[1];
          v126 = v35;
          v36 = (v33 + v32);
          v38 = *v36;
          v37 = v36[1];

          v39 = [v10 sharedInstance];
          v127 = v37;
          v40 = sub_18B2C9864();
          v41 = [v39 customSettingsForVoice:v40 sourceKey:v124];

          if (!v41)
          {
            goto LABEL_27;
          }

          v42 = sub_18B2C9814();

          v132 = sub_18B2C9894();
          v133 = v43;
          sub_18B2C9D14();
          if (!*(v42 + 16))
          {
            break;
          }

          v44 = sub_18B293EAC(v136);
          if ((v45 & 1) == 0)
          {
            break;
          }

          sub_18B22EF7C(*(v42 + 56) + 32 * v44, &v134);
          sub_18B22EB84(v136);

          if (!*(&v135 + 1))
          {
            goto LABEL_28;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
          if (swift_dynamicCast())
          {
            v46 = 0;
            v48 = v136[0] + 64;
            v47 = *(v136[0] + 64);
            v108 = v136[0];
            v49 = 1 << *(v136[0] + 32);
            if (v49 < 64)
            {
              v50 = ~(-1 << v49);
            }

            else
            {
              v50 = -1;
            }

            v51 = v50 & v47;
            v52 = (v49 + 63) >> 6;
            v53 = MEMORY[0x1E69E7CC8];
            v107 = v38;
            v104 = v136[0] + 64;
            v103 = v52;
            v106 = v7;
            v105 = v2;
            while (v51)
            {
              v71 = v46;
LABEL_45:
              v72 = __clz(__rbit64(v51)) | (v71 << 6);
              v73 = (*(v108 + 48) + 16 * v72);
              v75 = *v73;
              v74 = v73[1];
              v76 = *(*(v108 + 56) + 8 * v72);

              v110 = v76;
              [v110 floatValue];
              v78 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v136[0] = v53;
              v109 = v75;
              v81 = sub_18B293E34(v75, v74);
              v82 = v53[2];
              v83 = (v80 & 1) == 0;
              v84 = v82 + v83;
              if (__OFADD__(v82, v83))
              {
                goto LABEL_67;
              }

              v85 = v80;
              if (v53[3] >= v84)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_18B26A91C();
                }
              }

              else
              {
                sub_18B2687F8(v84, isUniquelyReferenced_nonNull_native);
                v86 = sub_18B293E34(v109, v74);
                if ((v85 & 1) != (v87 & 1))
                {
                  goto LABEL_71;
                }

                v81 = v86;
              }

              v51 &= v51 - 1;
              if (v85)
              {

                v53 = v136[0];
                *(*(v136[0] + 56) + 4 * v81) = v78;
              }

              else
              {
                v53 = v136[0];
                *(v136[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
                v88 = (v53[6] + 16 * v81);
                *v88 = v109;
                v88[1] = v74;
                *(v53[7] + 4 * v81) = v78;

                v89 = v53[2];
                v62 = __OFADD__(v89, 1);
                v90 = v89 + 1;
                if (v62)
                {
                  goto LABEL_68;
                }

                v53[2] = v90;
              }

              v46 = v71;
              v7 = v106;
              v2 = v105;
              v48 = v104;
              v52 = v103;
            }

            while (1)
            {
              v71 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                goto LABEL_64;
              }

              if (v71 >= v52)
              {

                break;
              }

              v51 = *(v48 + 8 * v71);
              ++v46;
              if (v51)
              {
                goto LABEL_45;
              }
            }
          }

LABEL_29:
          v54 = v130;
          sub_18B2C9024();
          (*v121)(v2, 1, 1, v7);
          LOBYTE(v136[0]) = 1;
          v55 = v128;
          sub_18B2C93F4();
          v56 = *v123;
          (*v123)(v129, v55, v131);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v30;
          v58 = sub_18B293C80(v54);
          v60 = v30[2];
          v61 = (v59 & 1) == 0;
          v62 = __OFADD__(v60, v61);
          v63 = v60 + v61;
          if (v62)
          {
            goto LABEL_65;
          }

          v64 = v59;
          if (v30[3] >= v63)
          {
            v10 = v118;
            if ((v57 & 1) == 0)
            {
              v91 = v58;
              sub_18B26A5C8();
              v58 = v91;
            }
          }

          else
          {
            sub_18B26834C(v63, v57);
            v58 = sub_18B293C80(v130);
            v10 = v118;
            if ((v64 & 1) != (v65 & 1))
            {
              goto LABEL_70;
            }
          }

          v27 &= v27 - 1;
          v30 = v136[0];
          if (v64)
          {
            (*(v119 + 40))(*(v136[0] + 56) + *(v119 + 72) * v58, v129, v131);
            (*v117)(v130, v7);
          }

          else
          {
            *(v136[0] + 8 * (v58 >> 6) + 64) |= 1 << v58;
            v66 = v113;
            v67 = v58;
            v68 = v130;
            (*(v113 + 16))(v30[6] + *(v113 + 72) * v58, v130, v7);
            v56((v30[7] + *(v119 + 72) * v67), v129, v131);
            (*(v66 + 8))(v68, v7);
            v69 = v30[2];
            v62 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v62)
            {
              goto LABEL_66;
            }

            v30[2] = v70;
          }

          v22 = v31;
          v24 = v116;
          v28 = v115;
        }

        sub_18B22EB84(v136);
LABEL_27:
        v134 = 0u;
        v135 = 0u;
LABEL_28:
        sub_18B1630AC(&v134, &qword_1EA9B66B0);
        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  v30 = MEMORY[0x1E69E7CC8];
LABEL_58:
  v92 = sub_18B2C9B74();
  v93 = AXTTSLogCommon();
  if (!v93)
  {
    goto LABEL_69;
  }

  v94 = v93;
  if (os_log_type_enabled(v93, v92))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v136[0] = v96;
    *v95 = 136315138;
    sub_18B22DDC0(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);

    v97 = sub_18B2C9824();
    v99 = v98;

    v100 = sub_18B27ACAC(v97, v99, v136);

    *(v95 + 4) = v100;
    _os_log_impl(&dword_18B15E000, v94, v92, "Migrating general selections to %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x18CFF4B10](v96, -1, -1);
    MEMORY[0x18CFF4B10](v95, -1, -1);
  }

  return v30;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE13SpokenContentC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_speechVoiceIdentifierForLanguage_exists_completionHandler_);
  sub_18B232DFC(&v1, sel_voiceSelectionForLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setForLanguage_voiceSelection_completionHandler_);
  sub_18B232DFC(&v1, sel_setWithVoiceId_forLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setQuickSpeakSpeakingRate_forLanguage_);
  sub_18B232DFC(&v1, sel_quickSpeakSpeakingRateForLanguage_);
  sub_18B232DFC(&v1, sel_quickSpeakSpeakingRate);
  sub_18B232DFC(&v1, sel_setQuickSpeakSpeakingRate_);
  return v2;
}

uint64_t sub_18B22DDC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B22E05C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B22E07C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_18B22E0B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18B22E280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B22F028;

  return sub_18B22A2FC(v7, a1, v4, v5, v6);
}

uint64_t sub_18B22E344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B22E3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B22F028;

  return sub_18B22AF60(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_94Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_18B22E4B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B22F028;

  return sub_18B22A078(v2, v3, v5, v4);
}

uint64_t sub_18B22E574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22F028;

  return sub_18B29CE7C(a1, v4, v5, v6);
}

uint64_t objectdestroy_118Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B22E690()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B22F028;

  return sub_18B22987C(v2, v3, v5, v4);
}

uint64_t sub_18B22E750()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B22F028;

  return sub_18B29CD94(v2, v3, v4);
}

uint64_t sub_18B22E810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22E8DC;

  return sub_18B29CE7C(a1, v4, v5, v6);
}

uint64_t sub_18B22E8DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B22E9D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B22F028;

  return sub_18B228E58(v2, v3, v4);
}

uint64_t sub_18B22EA84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B22F028;

  return sub_18B228400(v2, v3, v5, v4);
}

uint64_t objectdestroy_122Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B22EBD8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B22EC20(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B63C0);
    sub_18B22DDC0(a2, 255, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_18B22ECC0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_18B22ED04()
{
  result = qword_1EA9B5640;
  if (!qword_1EA9B5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B63B0);
    sub_18B22DDC0(&qword_1ED653C08, 255, MEMORY[0x1E6969610]);
    sub_18B22DDC0(&qword_1EA9B5660, 255, MEMORY[0x1E6988218]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B5640);
  }

  return result;
}

unint64_t sub_18B22EDF8()
{
  result = qword_1EA9B5648;
  if (!qword_1EA9B5648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B63B0);
    sub_18B22DDC0(&qword_1ED653C10, 255, MEMORY[0x1E6969610]);
    sub_18B22DDC0(&qword_1EA9B5668, 255, MEMORY[0x1E6988218]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B5648);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_18B22EF7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t UserVoiceConfiguration.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserVoiceConfiguration.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserVoiceConfiguration.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserVoiceConfiguration() + 20);
  v4 = sub_18B2C9424();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UserVoiceConfiguration()
{
  result = qword_1EA9B6718;
  if (!qword_1EA9B6718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserVoiceConfiguration.selection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserVoiceConfiguration() + 20);
  v4 = sub_18B2C9424();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserVoiceConfiguration.userDefinedName.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserVoiceConfiguration() + 24));

  return v1;
}

uint64_t UserVoiceConfiguration.userDefinedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserVoiceConfiguration() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_18B22F3B8()
{
  type metadata accessor for UserVoiceConfiguration();

  return sub_18B2C9414();
}

uint64_t (*UserVoiceConfiguration.voiceId.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = *(type metadata accessor for UserVoiceConfiguration() + 20);
  *a1 = sub_18B2C9404();
  *(a1 + 8) = v3;
  return sub_18B22F4AC;
}

uint64_t sub_18B22F4AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_18B2C9414();
  }

  sub_18B2C9414();
}

uint64_t UserVoiceConfiguration.init(id:selection:userDefinedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for UserVoiceConfiguration();
  v13 = &a6[*(v12 + 24)];
  *a6 = a1;
  *(a6 + 1) = a2;
  v14 = *(v12 + 20);
  v15 = sub_18B2C9424();
  result = (*(*(v15 - 8) + 32))(&a6[v14], a3, v15);
  *v13 = a4;
  *(v13 + 1) = a5;
  return result;
}

uint64_t UserVoiceConfiguration.init(id:voiceId:speechRate:speechPitch:voiceSettings:userDefinedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, void *a4@<X8>, uint64_t a5)
{
  v19 = a2;
  v20 = a3;
  v18 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_18B2C9014();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for UserVoiceConfiguration();
  v21 = 1;
  result = sub_18B2C93F4();
  v13 = (a4 + *(v11 + 24));
  v14 = v19;
  v15 = v20;
  *a4 = a1;
  a4[1] = v14;
  v16 = v18;
  *v13 = v15;
  v13[1] = v16;
  return result;
}

uint64_t static UserVoiceConfiguration.migrations.getter()
{
  if (qword_1EA9B6260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static UserVoiceConfiguration.migrations.setter(uint64_t a1)
{
  if (qword_1EA9B6260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B66C8 = a1;
}

uint64_t (*static UserVoiceConfiguration.migrations.modify())()
{
  if (qword_1EA9B6260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18B22F8CC@<X0>(void *a1@<X8>)
{
  if (qword_1EA9B6260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EA9B66C8;
}

uint64_t sub_18B22F94C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EA9B6260;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B66C8 = v1;
}

uint64_t sub_18B22F9D4()
{
  type metadata accessor for UserVoiceConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9B6740);
  result = sub_18B2C98A4();
  qword_1EA9B66D0 = result;
  qword_1EA9B66D8 = v1;
  return result;
}

uint64_t static UserVoiceConfiguration.typeKey.getter()
{
  if (qword_1EA9B6268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9B66D0;

  return v0;
}

uint64_t static UserVoiceConfiguration.typeKey.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EA9B6268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B66D0 = a1;
  qword_1EA9B66D8 = a2;
}

uint64_t (*static UserVoiceConfiguration.typeKey.modify())()
{
  if (qword_1EA9B6268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_18B22FBC0@<X0>(void *a1@<X8>)
{
  if (qword_1EA9B6268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EA9B66D8;
  *a1 = qword_1EA9B66D0;
  a1[1] = v2;
}

uint64_t sub_18B22FC40(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EA9B6268;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B66D0 = v2;
  qword_1EA9B66D8 = v1;
}

uint64_t sub_18B22FCE8()
{
  v1 = *v0;
  sub_18B2C9F64();
  MEMORY[0x18CFF1080](v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B22FD5C()
{
  v1 = *v0;
  sub_18B2C9F64();
  MEMORY[0x18CFF1080](v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B22FDA0()
{
  v1 = 0x6F697463656C6573;
  if (*v0 != 1)
  {
    v1 = 0x6966654472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18B22FE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B2310DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B22FE40(uint64_t a1)
{
  v2 = sub_18B230B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B22FE7C(uint64_t a1)
{
  v2 = sub_18B230B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserVoiceConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B230B1C();
  sub_18B2C9FD4();
  v8[15] = 0;
  sub_18B2C9ED4();
  if (!v1)
  {
    type metadata accessor for UserVoiceConfiguration();
    v8[14] = 1;
    sub_18B2C9424();
    sub_18B230D14(&qword_1EA9B5668, MEMORY[0x1E6988218]);
    sub_18B2C9EF4();
    v8[13] = 2;
    sub_18B2C9E94();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UserVoiceConfiguration.hash(into:)()
{
  sub_18B2C98D4();
  v1 = type metadata accessor for UserVoiceConfiguration();
  sub_18B2C9424();
  sub_18B230D14(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
  sub_18B2C9844();
  if (!*(v0 + *(v1 + 24) + 8))
  {
    return sub_18B2C9F84();
  }

  sub_18B2C9F84();

  return sub_18B2C98D4();
}

uint64_t UserVoiceConfiguration.hashValue.getter()
{
  sub_18B2C9F64();
  sub_18B2C98D4();
  v1 = type metadata accessor for UserVoiceConfiguration();
  sub_18B2C9424();
  sub_18B230D14(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
  sub_18B2C9844();
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_18B2C9F84();
    sub_18B2C98D4();
  }

  else
  {
    sub_18B2C9F84();
  }

  return sub_18B2C9FB4();
}

uint64_t UserVoiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_18B2C9424();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66F8);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for UserVoiceConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B230B1C();
  sub_18B2C9FC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_18B2C9E64();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_18B230D14(&qword_1EA9B5660, MEMORY[0x1E6988218]);
  sub_18B2C9E84();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_18B2C9E24();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  v20 = (v13 + *(v15 + 24));
  (*(v12 + 8))(v7, v30);
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_18B230B70(v13, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return sub_18B230BD4(v13);
}

uint64_t sub_18B23065C()
{
  if (qword_1EA9B6268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9B66D0;

  return v0;
}

uint64_t sub_18B2306E0()
{
  if (qword_1EA9B6260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_18B230758@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_18B230764(uint64_t a1)
{
  sub_18B2C9F64();
  sub_18B2C98D4();
  sub_18B2C9424();
  sub_18B230D14(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
  sub_18B2C9844();
  if (*(v1 + *(a1 + 24) + 8))
  {
    sub_18B2C9F84();
    sub_18B2C98D4();
  }

  else
  {
    sub_18B2C9F84();
  }

  return sub_18B2C9FB4();
}

uint64_t sub_18B230850(uint64_t a1, uint64_t a2)
{
  sub_18B2C98D4();
  sub_18B2C9424();
  sub_18B230D14(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
  sub_18B2C9844();
  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_18B2C9F84();
  }

  sub_18B2C9F84();

  return sub_18B2C98D4();
}

uint64_t sub_18B230944(uint64_t a1, uint64_t a2)
{
  sub_18B2C9F64();
  sub_18B2C98D4();
  sub_18B2C9424();
  sub_18B230D14(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
  sub_18B2C9844();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_18B2C9F84();
    sub_18B2C98D4();
  }

  else
  {
    sub_18B2C9F84();
  }

  return sub_18B2C9FB4();
}

uint64_t _s22AccessibilityUtilities22UserVoiceConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_18B2C9F24() & 1) != 0)
  {
    v5 = type metadata accessor for UserVoiceConfiguration();
    if (MEMORY[0x18CFF0470](a1 + *(v5 + 20), a2 + *(v5 + 20)))
    {
      v6 = *(v5 + 24);
      v7 = (a1 + v6);
      v8 = *(a1 + v6 + 8);
      v9 = (a2 + v6);
      v10 = v9[1];
      if (v8)
      {
        if (v10)
        {
          v11 = *v7 == *v9 && v8 == v10;
          if (v11 || (sub_18B2C9F24() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_18B230B1C()
{
  result = qword_1EA9B66E8;
  if (!qword_1EA9B66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B66E8);
  }

  return result;
}

uint64_t sub_18B230B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B230BD4(uint64_t a1)
{
  v2 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B230D14(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18B230D84()
{
  sub_18B2C9424();
  if (v0 <= 0x3F)
  {
    sub_18B230E18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B230E18()
{
  if (!qword_1EA9B5638)
  {
    v0 = sub_18B2C9C14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9B5638);
    }
  }
}

uint64_t getEnumTagSinglePayload for UserVoiceConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserVoiceConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18B230FD8()
{
  result = qword_1EA9B6728;
  if (!qword_1EA9B6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6728);
  }

  return result;
}

unint64_t sub_18B231030()
{
  result = qword_1EA9B6730;
  if (!qword_1EA9B6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6730);
  }

  return result;
}

unint64_t sub_18B231088()
{
  result = qword_1EA9B6738;
  if (!qword_1EA9B6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6738);
  }

  return result;
}

uint64_t sub_18B2310DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_18B2C9F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL || (sub_18B2C9F24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF656D614E64656ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_18B2C9F24();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void AccessibilityObservableSettingsAccessor.wrappedValue.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  swift_getAtKeyPath();
}

uint64_t AccessibilityObservableSettingsAccessor.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_18B2314E4(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AccessibilityObservableSettingsAccessor.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AccessibilityObservableSettingsAccessor.wrappedValue.getter();
  return sub_18B2313F8;
}

void sub_18B2313F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_18B2314E4(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_18B2314E4((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_18B2314E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  (*(v4 + 16))(v6, a1, v3);
  swift_setAtWritableKeyPath();
}

uint64_t sub_18B2315E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18B2316E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B23172C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AXSettings.AccessibilityReader._$enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23183C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___enabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___enabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___enabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B235FB0(&qword_1EA9B5690, v8, type metadata accessor for AXSettings.AccessibilityReader);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B231A40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AccessibilityReader.enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AccessibilityReader.enabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AccessibilityReader.enabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B231D70;
}

uint64_t sub_18B231D70(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AccessibilityReader._$automaticallyStartSpeaking.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B231EE8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___automaticallyStartSpeaking_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___automaticallyStartSpeaking_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___automaticallyStartSpeaking_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B235FB0(&qword_1EA9B5690, v8, type metadata accessor for AXSettings.AccessibilityReader);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2320B4()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B232124@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AccessibilityReader.automaticallyStartSpeaking.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AccessibilityReader.automaticallyStartSpeaking.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AccessibilityReader.automaticallyStartSpeaking.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B232454;
}

uint64_t sub_18B232454(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AccessibilityReader.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled);
  v25 = sub_18B235FFC;
  v26 = &v27;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v31);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v31;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v32 = v4;
  v5 = sub_18B235E04();
  v33 = v5;
  *&v31 = v3;
  sub_18B22C7E4(&v31, v29);
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v6;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10);
  sub_18B22C8D8(*v10, 0x64656C62616E6524, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v12 = v28;
  v13 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking);
  v24 = v1;
  v21 = sub_18B236014;
  v22 = &v23;

  os_unfair_lock_lock(v13 + 4);
  sub_18B23602C(&v31);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v31;

  v32 = v4;
  v33 = v5;
  *&v31 = v14;
  sub_18B22C7E4(&v31, v29);
  LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
  v28 = v12;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  sub_18B22C8D8(*v17, 0xD00000000000001BLL, 0x800000018B2F18D0, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v28;
}

uint64_t AXSettings.AccessibilityReader.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_accessibilityReaderEnabled);
  sub_18B232DFC(&v1, sel_setAccessibilityReaderEnabled_);
  sub_18B232DFC(&v1, sel_accessibilityReaderAutomaticallyStartSpeaking);
  sub_18B232DFC(&v1, sel_setAccessibilityReaderAutomaticallyStartSpeaking_);
  return v2;
}

id AXSettings.AccessibilityReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.AccessibilityReader.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___enabled_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_enabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___automaticallyStartSpeaking_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader___lock_automaticallyStartSpeaking;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v6] = sub_18B2C9584();
  v7 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings19AccessibilityReader_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v7] = sub_18B2C9564();
  sub_18B2C95B4();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AXSettings.AccessibilityReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B232BCC()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_accessibilityReaderEnabled);
  sub_18B232DFC(&v1, sel_setAccessibilityReaderEnabled_);
  sub_18B232DFC(&v1, sel_accessibilityReaderAutomaticallyStartSpeaking);
  sub_18B232DFC(&v1, sel_setAccessibilityReaderAutomaticallyStartSpeaking_);
  return v2;
}

uint64_t sub_18B232C50(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_18B2C9894();
  sub_18B2C9F64();
  sub_18B2C98D4();
  v7 = sub_18B2C9FB4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_18B2C9894();
      v13 = v12;
      if (v11 == sub_18B2C9894() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_18B2C9F24();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_18B234320(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_18B232DFC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18B2C9F64();
  sub_18B2C90D4();
  v6 = sub_18B2C9FB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while ((sub_18B2C90C4() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18B234508(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_18B232F08(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18B2C9014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_18B235FB0(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
  v33 = a2;
  v11 = sub_18B2C9834();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_18B235FB0(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
      v21 = sub_18B2C9854();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_18B23465C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_18B2331F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18B2C9CC4();

    if (v9)
    {

      sub_18B235F64();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_18B2C9CB4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_18B233408(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_18B234074();
    }

    v18 = v8;
    sub_18B23429C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_18B235F64();
  v11 = sub_18B2C9BF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_18B234908(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18B2C9C04();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_18B233408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6810);
    v2 = sub_18B2C9D44();
    v14 = v2;
    sub_18B2C9CA4();
    if (sub_18B2C9CD4())
    {
      sub_18B235F64();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_18B234074();
        }

        v2 = v14;
        result = sub_18B2C9BF4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_18B2C9CD4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_18B2335E8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6800);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18B2C9894();
      sub_18B2C9F64();
      sub_18B2C98D4();
      v17 = sub_18B2C9FB4();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18B233864()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6828);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18B2C9F64();
      sub_18B2C90D4();
      result = sub_18B2C9FB4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18B233AB4()
{
  v1 = v0;
  v35 = sub_18B2C9014();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6820);
  result = sub_18B2C9D34();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_18B235FB0(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
      result = sub_18B2C9834();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_18B233E14()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6818);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18B234074()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6810);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_18B2C9BF4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_18B23429C(uint64_t a1, uint64_t a2)
{
  sub_18B2C9BF4();
  result = sub_18B2C9C94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_18B234320(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_18B2335E8();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_18B234A68();
      goto LABEL_16;
    }

    sub_18B2351DC();
  }

  v9 = *v3;
  sub_18B2C9894();
  sub_18B2C9F64();
  sub_18B2C98D4();
  v10 = sub_18B2C9FB4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AXSSVoiceOverTextualContext(0);
    do
    {
      v13 = sub_18B2C9894();
      v15 = v14;
      if (v13 == sub_18B2C9894() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_18B2C9F24();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_18B2C9F34();
  __break(1u);
  return result;
}

uint64_t sub_18B234508(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18B233864();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_18B234BB8();
      goto LABEL_12;
    }

    sub_18B235430();
  }

  v8 = *v3;
  sub_18B2C9F64();
  sub_18B2C90D4();
  result = sub_18B2C9FB4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_18B2C90C4();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18B2C9F34();
  __break(1u);
  return result;
}

uint64_t sub_18B23465C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_18B2C9014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18B233AB4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B234CF8();
      goto LABEL_12;
    }

    sub_18B235650();
  }

  v12 = *v3;
  sub_18B235FB0(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
  v13 = sub_18B2C9834();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_18B235FB0(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
      v21 = sub_18B2C9854();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18B2C9F34();
  __break(1u);
  return result;
}

void sub_18B234908(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18B234074();
  }

  else
  {
    if (v7 > v6)
    {
      sub_18B23508C();
      goto LABEL_12;
    }

    sub_18B235BA8();
  }

  v8 = *v3;
  v9 = sub_18B2C9BF4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_18B235F64();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_18B2C9C04();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18B2C9F34();
  __break(1u);
}

id sub_18B234A68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6800);
  v2 = *v0;
  v3 = sub_18B2C9D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B234BB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6828);
  v2 = *v0;
  v3 = sub_18B2C9D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B234CF8()
{
  v1 = v0;
  v2 = sub_18B2C9014();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6820);
  v6 = *v0;
  v7 = sub_18B2C9D24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_18B234F30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6818);
  v2 = *v0;
  v3 = sub_18B2C9D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_18B23508C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6810);
  v2 = *v0;
  v3 = sub_18B2C9D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18B2351DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6800);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18B2C9894();
      sub_18B2C9F64();
      v17 = v16;
      sub_18B2C98D4();
      v18 = sub_18B2C9FB4();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18B235430()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6828);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_18B2C9F64();
      sub_18B2C90D4();
      result = sub_18B2C9FB4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18B235650()
{
  v1 = v0;
  v32 = sub_18B2C9014();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6820);
  v6 = sub_18B2C9D34();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_18B235FB0(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
      result = sub_18B2C9834();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_18B235970()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6818);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_18B2C9F64();

      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18B235BA8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6810);
  result = sub_18B2C9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_18B2C9BF4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_18B235E04()
{
  result = qword_1EA9B6428;
  if (!qword_1EA9B6428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6428);
  }

  return result;
}

unint64_t sub_18B235F64()
{
  result = qword_1EA9B6808;
  if (!qword_1EA9B6808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9B6808);
  }

  return result;
}

uint64_t sub_18B235FB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AXSettings.VoiceOver.resolver.getter()
{
  v1 = sub_18B2C9244();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18B2C9134();
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
  if (*(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver))
  {
    v10 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
  }

  else
  {
    v24 = v5;
    v23[0] = v6;
    v26 = sub_18B2C9154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63A0);
    v11 = sub_18B2C90F4();
    v12 = *(v11 - 8);
    v25 = v0;
    v23[1] = v3;
    v13 = v12;
    v14 = *(v12 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18B2F9B10;
    v17 = v16 + v15;
    sub_18B2C91F4();
    v18 = *MEMORY[0x1E69D9E18];
    v19 = *(v13 + 104);
    v19(v17, v18, v11);
    sub_18B2C9204();
    v19(v17 + v14, v18, v11);
    v19(v17 + 2 * v14, *MEMORY[0x1E69D9E28], v11);
    v19(v17 + 3 * v14, *MEMORY[0x1E69D9E08], v11);
    *v8 = v16;
    (*(v23[0] + 104))(v8, *MEMORY[0x1E69D9E40], v24);
    v20 = sub_18B2C9294();
    v21 = sub_18B2C9284();
    v28 = v20;
    v29 = MEMORY[0x1E69D9E88];
    v27 = v21;
    sub_18B2C9234();
    v10 = sub_18B2C9104();
    *(v25 + v9) = v10;
  }

  return v10;
}

uint64_t (*AXSettings.VoiceOver.resolver.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = AXSettings.VoiceOver.resolver.getter();
  return sub_18B23640C;
}

uint64_t AXSettings.VoiceOver._$defaultVoiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2364B0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultVoiceSelectionsByLanguage_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultVoiceSelectionsByLanguage_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultVoiceSelectionsByLanguage_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
    v17[5] = "VoiceOverVoiceRotors";
    v17[6] = v12;
    v17[4] = "aultVoiceSelectionsByLanguage";
    v17[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[3] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v18 = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F9B20;
    v17[2] = a1;
    sub_18B2C94D4();
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    a2 = v18;
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B22ED04();
    sub_18B22EDF8();
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    v11 = sub_18B2C9454();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B236878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B26C9C0();
  *a1 = result;
  return result;
}

uint64_t sub_18B2368D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.defaultVoiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.defaultVoiceSelectionsByLanguage.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.defaultVoiceSelectionsByLanguage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B23602C(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B236BE0;
}

void sub_18B236BE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t sub_18B236D84()
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CD0);
  v1 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v66 = &v55 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v55 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v55 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CD8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = (&v55 - v8);
  v10 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v80 = v0;
  v77 = sub_18B26FD34;
  v78 = &v79;

  os_unfair_lock_lock(v10 + 4);
  sub_18B23602C(v81);
  v56 = 0;
  os_unfair_lock_unlock(v10 + 4);

  sub_18B2C9474();

  v11 = v81[0];
  v12 = *(v81[0] + 16);
  if (v12)
  {
    v81[0] = MEMORY[0x1E69E7CC0];
    sub_18B28B288(0, v12, 0);
    v13 = v81[0];
    v14 = v11 + 64;
    v15 = sub_18B2C9C74();
    v16 = 0;
    v17 = *(v11 + 36);
    v57 = v11 + 72;
    v76 = v9;
    v58 = v12;
    v61 = v11 + 64;
    v59 = v17;
    v60 = v11;
    do
    {
      if ((v15 & 0x8000000000000000) != 0 || v15 >= 1 << *(v11 + 32))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (v17 != *(v11 + 36))
      {
        goto LABEL_28;
      }

      v70 = 1 << v15;
      v71 = v15 >> 6;
      v69 = v16;
      v19 = v68;
      v20 = *(v68 + 48);
      v21 = *(v11 + 48);
      v22 = v15;
      v23 = sub_18B2C9014();
      v24 = *(v23 - 8);
      v25 = v24;
      v26 = v21 + *(v24 + 72) * v22;
      v27 = *(v24 + 16);
      v75 = v13;
      v28 = v64;
      v27(v64, v26, v23);
      v29 = *(v11 + 56);
      v30 = sub_18B2C9424();
      v31 = *(v30 - 8);
      v32 = *(v31 + 72);
      v74 = v22;
      (*(v31 + 16))(&v28[v20], v29 + v32 * v22, v30);
      v33 = v65;
      (*(v25 + 32))(v65, v28, v23);
      v34 = *(v31 + 32);
      v34(v33 + *(v19 + 48), &v28[v20], v30);
      v72 = *(v63 + 48);
      v35 = v66;
      sub_18B163044(v33, v66, &qword_1EA9B6CD0);
      v73 = *(v19 + 48);
      *v76 = sub_18B2C9004();
      v76[1] = v36;
      v37 = *(v25 + 8);
      v37(v35, v23);
      v38 = v33;
      v39 = v67;
      sub_18B26F738(v38, v67, &qword_1EA9B6CD0);
      v40 = *(v19 + 48);
      v41 = v76;
      v34(v76 + v72, (v39 + v40), v30);
      v37(v39, v23);
      v13 = v75;
      (*(v31 + 8))(v35 + v73, v30);
      v81[0] = v13;
      v43 = *(v13 + 16);
      v42 = *(v13 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_18B28B288(v42 > 1, v43 + 1, 1);
        v13 = v81[0];
      }

      *(v13 + 16) = v43 + 1;
      sub_18B26F738(v41, v13 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v43, &qword_1EA9B6CD8);
      v11 = v60;
      v18 = 1 << *(v60 + 32);
      v14 = v61;
      if (v74 >= v18)
      {
        goto LABEL_29;
      }

      v44 = *(v61 + 8 * v71);
      if ((v44 & v70) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v17) = v59;
      if (v59 != *(v60 + 36))
      {
        goto LABEL_31;
      }

      v45 = v44 & (-2 << (v74 & 0x3F));
      if (v45)
      {
        v18 = __clz(__rbit64(v45)) | v74 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v71 << 6;
        v47 = v71 + 1;
        v48 = (v57 + 8 * v71);
        while (v47 < (v18 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_18B16333C(v74, v59, 0);
            v18 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        sub_18B16333C(v74, v59, 0);
      }

LABEL_4:
      v16 = v69 + 1;
      v15 = v18;
    }

    while (v69 + 1 != v58);

    if (!*(v13 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CE0);
    v51 = sub_18B2C9DF4();
    goto LABEL_24;
  }

LABEL_23:
  v51 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v81[0] = v51;

  v53 = v56;
  sub_18B26B374(v52, 1, v81);
  if (v53)
  {
LABEL_32:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    return v81[0];
  }

  return result;
}

uint64_t sub_18B237528(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CB0);
  v2 = MEMORY[0x1EEE9AC00](v61);
  v60 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v59 = (v50 - v5);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CB8);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v50 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_18B28B2C8(0, v10, 0);
    v11 = v70[0];
    v12 = a1 + 64;
    v13 = sub_18B2C9C74();
    v14 = 0;
    v15 = *(a1 + 36);
    v51 = a1 + 72;
    v52 = v10;
    v69 = v9;
    v53 = v15;
    v54 = a1 + 64;
    v55 = a1;
    do
    {
      if (v13 < 0 || v13 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      if (v15 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v63 = 1 << v13;
      v64 = v13 >> 6;
      v62 = v14;
      v17 = v61;
      v18 = *(v61 + 48);
      v68 = v11;
      v19 = *(a1 + 56);
      v20 = (*(a1 + 48) + 16 * v13);
      v22 = *v20;
      v65 = v20[1];
      v21 = v65;
      v23 = sub_18B2C9424();
      v24 = *(v23 - 8);
      v25 = v58;
      (*(v24 + 16))(&v58[v18], v19 + *(v24 + 72) * v13, v23);
      v26 = v59;
      *v59 = v22;
      *(v26 + 8) = v21;
      v27 = *(v17 + 48);
      v67 = *(v24 + 32);
      v67(v26 + v27, &v25[v18], v23);
      v66 = *(v57 + 48);
      v28 = v60;
      sub_18B163044(v26, v60, &qword_1EA9B6CB0);
      v29 = *(v17 + 48);

      sub_18B2C9024();
      (*(v24 + 8))(v28 + v29, v23);
      sub_18B26F738(v26, v28, &qword_1EA9B6CB0);

      v30 = *(v17 + 48);
      v31 = v69;
      v67(&v69[v66], (v28 + v30), v23);
      v11 = v68;
      v70[0] = v68;
      v33 = *(v68 + 16);
      v32 = *(v68 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_18B28B2C8(v32 > 1, v33 + 1, 1);
        v11 = v70[0];
      }

      *(v11 + 16) = v33 + 1;
      sub_18B26F738(v31, v11 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33, &qword_1EA9B6CB8);
      a1 = v55;
      v16 = 1 << *(v55 + 32);
      if (v13 >= v16)
      {
        goto LABEL_28;
      }

      v12 = v54;
      v34 = *(v54 + 8 * v64);
      if ((v34 & v63) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v15) = v53;
      if (v53 != *(v55 + 36))
      {
        goto LABEL_30;
      }

      v35 = v34 & (-2 << (v13 & 0x3F));
      if (v35)
      {
        v16 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v64 << 6;
        v37 = v64 + 1;
        v38 = (v51 + 8 * v64);
        while (v37 < (v16 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_18B16333C(v13, v53, 0);
            v16 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        sub_18B16333C(v13, v53, 0);
      }

LABEL_4:
      v14 = v62 + 1;
      v13 = v16;
    }

    while (v62 + 1 != v52);

    if (!*(v11 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_23:
      v41 = MEMORY[0x1E69E7CC8];
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC0);
  v41 = sub_18B2C9DF4();
LABEL_24:
  v70[0] = v41;

  sub_18B26B8E0(v42, 1, v70);

  v44 = v70[0];
  v45 = *(v50[1] + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v50[-2] = v47;
  MEMORY[0x1EEE9AC00](v46);
  v50[-2] = sub_18B26FD34;
  v50[-1] = v48;

  os_unfair_lock_lock(v45 + 4);
  sub_18B23602C(v70);
  os_unfair_lock_unlock(v45 + 4);

  v70[0] = v44;
  sub_18B2C9484();
}

uint64_t sub_18B237B6C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for UserVoiceConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_18B28B328(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_18B28B328(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_18B26C784(v9, v11 + v18 + v15 * v13);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t AXSettings.VoiceOver._$voiceRotors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B237D8C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___voiceRotors_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___voiceRotors_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___voiceRotors_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6670);
    v16[5] = "RotorVoiceIdentifier";
    v16[6] = v11;
    v16[4] = "aultVoiceSelectionsByLanguage";
    v16[2] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[3] = a1;
    sub_18B2C94D4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[1] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FB14();
    sub_18B26FBCC();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B238128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B26D6F0();
  *a1 = result;
  return result;
}

uint64_t sub_18B23819C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.voiceRotors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.voiceRotors.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.voiceRotors.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B238504;
}

void sub_18B238504(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$_oldDomainRotors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2386C0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____oldDomainRotors_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____oldDomainRotors_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____oldDomainRotors_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6660);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FA9C(&qword_1EA9B6DB8, sub_18B26FB14);
    sub_18B26FA9C(&qword_1EA9B6DC8, sub_18B26FBCC);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B238900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver._$currentRotorVoiceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B238A30@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___currentRotorVoiceIdentifier_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___currentRotorVoiceIdentifier_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___currentRotorVoiceIdentifier_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8);
    sub_18B26F4B0(&qword_1ED653BE0);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B238C58@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5[0];
  *a2 = *v5;
  return result;
}

uint64_t AXSettings.VoiceOver.currentRotorVoiceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.currentRotorVoiceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.currentRotorVoiceIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B238FA4;
}

void sub_18B238FA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$rotorItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B239168@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___rotorItems_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___rotorItems_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___rotorItems_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6640);
    v16[3] = "vertouch.cursors.style";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94D4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F9D0(&qword_1EA9B6D98, sub_18B26F97C);
    sub_18B26F9D0(&qword_1EA9B6DA8, sub_18B26FA48);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23957C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.rotorItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.rotorItems.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.rotorItems.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B23988C;
}

void sub_18B23988C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$largeCursorEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B239A48@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___largeCursorEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___largeCursorEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___largeCursorEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "pDefaultToMediaPlayback";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B239DF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.largeCursorEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.largeCursorEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.largeCursorEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23A124;
}

uint64_t sub_18B23A124(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$magicTapDefaultToMediaPlayback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23A29C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___magicTapDefaultToMediaPlayback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___magicTapDefaultToMediaPlayback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___magicTapDefaultToMediaPlayback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "entDescriptionLevel";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23A648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23A978;
}

uint64_t sub_18B23A978(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$contentDescriptionLevel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23AAF0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___contentDescriptionLevel_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___contentDescriptionLevel_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___contentDescriptionLevel_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6630);
    v16[3] = "ageCaptionsEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23AE9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.contentDescriptionLevel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.contentDescriptionLevel.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.contentDescriptionLevel.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B23B234;
}

void sub_18B23B234(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$useDigitalCrownNavigation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23B3B4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v19 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useDigitalCrownNavigation_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useDigitalCrownNavigation_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useDigitalCrownNavigation_Storage];
  }

  else
  {
    v19[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v12 = sub_18B2C9894();
    v19[4] = v13;
    v19[5] = v12;
    v19[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v20 = a2;
    v14 = sub_18B2C9504();
    v21 = v2;
    v15 = swift_allocObject();
    v19[3] = ObjectType;
    v16 = v15;
    *(v15 + 16) = xmmword_18B2F88F0;
    v19[2] = a1;
    sub_18B2C94F4();
    v23 = v16;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    a2 = v20;
    sub_18B2C9C64();
    v23 = v8;
    v22 = v14;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v17, type metadata accessor for AXSettings.VoiceOver);
    v11 = sub_18B2C9454();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B23B760@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.useDigitalCrownNavigation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.useDigitalCrownNavigation.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.useDigitalCrownNavigation.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23BA90;
}

uint64_t sub_18B23BA90(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$imageCaptionsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23BC08@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___imageCaptionsEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___imageCaptionsEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___imageCaptionsEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B23BDDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.imageCaptionsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.imageCaptionsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.imageCaptionsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23C10C;
}

uint64_t sub_18B23C10C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$useTVToggleStyleNavigation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23C284@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useTVToggleStyleNavigation_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useTVToggleStyleNavigation_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useTVToggleStyleNavigation_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v16[3] = "HearingAidRouting";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23C630@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.useTVToggleStyleNavigation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.useTVToggleStyleNavigation.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.useTVToggleStyleNavigation.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23C960;
}

uint64_t sub_18B23C960(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$continuousPathKeyboardStartTimeout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23CAD8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v19 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___continuousPathKeyboardStartTimeout_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___continuousPathKeyboardStartTimeout_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___continuousPathKeyboardStartTimeout_Storage];
  }

  else
  {
    v19[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6620);
    v12 = sub_18B2C9894();
    v19[4] = v13;
    v19[5] = v12;
    v19[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v20 = a2;
    v14 = sub_18B2C9504();
    v21 = v2;
    v15 = swift_allocObject();
    v19[3] = ObjectType;
    v16 = v15;
    *(v15 + 16) = xmmword_18B2F88F0;
    v19[2] = a1;
    sub_18B2C94F4();
    v23 = v16;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    a2 = v20;
    sub_18B2C9C64();
    v23 = v8;
    v22 = v14;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v17, type metadata accessor for AXSettings.VoiceOver);
    v11 = sub_18B2C9454();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

double sub_18B23CE5C@<D0>(void *a1@<X8>)
{
  result = *MEMORY[0x1E6988A18];
  *a1 = *MEMORY[0x1E6988A18];
  return result;
}

double sub_18B23CE98@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5;
  *a2 = v5;
  return result;
}

double AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.setter(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B23D244;
}

void sub_18B23D244(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$hearingAidRoutingEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23D3CC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___hearingAidRoutingEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___hearingAidRoutingEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___hearingAidRoutingEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B23D5A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.hearingAidRoutingEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.hearingAidRoutingEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.hearingAidRoutingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23D8D0;
}

uint64_t sub_18B23D8D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$listAnnotation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23DA48@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6610);
    v17[3] = "AXSVoiceOverUsesSiriSounds";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5528, 255, type metadata accessor for AXSVoiceOverFeedbackOption);
    sub_18B26FC84(&qword_1EA9B6D88, 255, type metadata accessor for AXSVoiceOverFeedbackOption);
    sub_18B26FC84(&qword_1EA9B6D90, 255, type metadata accessor for AXSVoiceOverFeedbackOption);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}