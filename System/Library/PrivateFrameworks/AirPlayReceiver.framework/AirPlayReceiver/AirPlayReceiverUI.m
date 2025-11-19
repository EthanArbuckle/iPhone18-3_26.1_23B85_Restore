@interface AirPlayReceiverUI
@end

@implementation AirPlayReceiverUI

void __AirPlayReceiverUI_GetShared_block_invoke()
{
  v0 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10E00403FEE3558uLL);
  v1 = dispatch_queue_create("AirPlayReceiverUI", 0);
  *v0 = v1;
  dispatch_set_context(v1, v0);
  IsAppleTV();
  v2 = APSSettingsGetIntWithDefault() != 0;
  *(v0 + 40) = v2;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v2 = *(v0 + 40);
  }

  if (v2)
  {
    if (!v0[2])
    {
      mach_service = xpc_connection_create_mach_service("com.apple.airplay.receiver", *v0, 1uLL);
      v0[2] = mach_service;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___AirPlayReceiverUI_StartServer_block_invoke;
      handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
      handler[4] = v0;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v0[2]);
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  AirPlayReceiverUI_GetShared_ui = v0;
}

void ___AirPlayReceiverUI_StartServer_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(v3 + 16))
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 90 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_25;
  }

  v4 = MEMORY[0x23EF1BE90](a2);
  if (v4 != MEMORY[0x277D86450])
  {
    if (v4 != MEMORY[0x277D86480])
    {
      if (a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8])
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        xpc_connection_cancel(*(v3 + 32));
        xpc_release(*(v3 + 32));
        *(v3 + 32) = 0;

        _AirPlayReceiverUI_HandleServerReset(v3);
      }

      return;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 60 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
LABEL_25:
    LogPrintF();
    return;
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 90)
    {
      goto LABEL_22;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v5 = *(v3 + 32);
    if (v5)
    {
LABEL_22:
      xpc_connection_cancel(v5);
      xpc_release(v5);
      *(v3 + 32) = 0;
    }
  }

  xpc_retain(a2);
  *(v3 + 32) = a2;
  xpc_connection_set_target_queue(a2, *v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = ___AirPlayReceiverUI_XPCListenerEventHandler_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = v3;
  xpc_connection_set_event_handler(a2, handler);
  xpc_connection_resume(a2);
  *(v3 + 24) = 1;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 40 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_25;
  }
}

void ___AirPlayReceiverUI_XPCListenerEventHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v13 = a2;
    LogPrintF();
  }

  if (!*(v3 + 32))
  {
    return;
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_49;
  }

  if (a2 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    xpc_connection_cancel(*(v3 + 32));
    xpc_release(*(v3 + 32));
    *(v3 + 32) = 0;
LABEL_49:

    _AirPlayReceiverUI_HandleServerReset(v3);
    return;
  }

  if (MEMORY[0x23EF1BE90](a2) != MEMORY[0x277D86468])
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 90 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_41;
    }

    return;
  }

  string = xpc_dictionary_get_string(a2, "function");
  if (!string)
  {

    goto LABEL_87;
  }

  v5 = string;
  if (strcmp(string, "postEvent"))
  {
    if (!strcmp(v5, "ping"))
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_41;
      }
    }

    else if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
LABEL_41:
      LogPrintF();
      return;
    }

    return;
  }

  v6 = xpc_dictionary_get_string(a2, "eventType");
  if (!strcmp(v6, "ended"))
  {
LABEL_42:

    _AirPlayReceiverUI_HandleStateEvent(a2);
    return;
  }

  if (!strcmp(v6, "error"))
  {
    if (AirPlayReceiverUI_GetShared_once != -1)
    {
      dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
    }

    v7 = AirPlayReceiverUI_GetShared_ui;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:@"video" forKey:@"category"];
    v9 = xpc_dictionary_copy_cf_object();
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        [v8 setObject:v10 forKey:@"error"];
        Value = CFDictionaryGetValue(v10, @"sessionID");
        if (Value)
        {
          [v8 setObject:Value forKey:@"sessionID"];
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___AirPlayReceiverUI_HandleErrorEvent_block_invoke;
        block[3] = &unk_278C60A58;
        block[4] = v8;
        block[5] = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        APSLogErrorAt();
      }

      CFRelease(v10);
      return;
    }

LABEL_87:
    APSLogErrorAt();
    return;
  }

  if (!strcmp(v6, "failedURLRequest"))
  {

    _AirPlayReceiverUI_HandleFailedURLRequest();
    return;
  }

  if (!strcmp(v6, "loading"))
  {
    goto LABEL_42;
  }

  if (!strcmp(v6, "metaDataChanged"))
  {

    _AirPlayReceiverUI_HandleMetaDataEvent();
    return;
  }

  if (!strcmp(v6, "paused") || !strcmp(v6, "playing"))
  {
    goto LABEL_42;
  }

  if (!strcmp(v6, "stopAudio"))
  {

    _AirPlayReceiverUI_HandleAudioStop(v3);
    return;
  }

  if (!strcmp(v6, "stopped"))
  {
    goto LABEL_42;
  }

  if (strcmp_prefix())
  {
    if (strcmp(v6, "currentItemChanged"))
    {
      if (!strcmp(v6, "dateRange"))
      {

        _AirPlayReceiverUI_HandleDateRangeEvent();
        return;
      }

      if (strcmp(v6, "itemPlayedToEnd") && strcmp(v6, "itemRemoved"))
      {
        if (!strcmp(v6, "fpsSecureStopGenerated"))
        {

          _AirPlayReceiverUI_HandleFPSSecureStopGenerated();
        }

        else
        {

          _AirPlayReceiverUI_HandleOtherEvent(a2);
        }

        return;
      }
    }

    _AirPlayReceiverUI_HandlePlaylistEvent(a2);
    return;
  }

  _AirPlayReceiverUI_HandleUserEvent(a2);
}

void ___AirPlayReceiverUI_HandleServerReset_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (!*(v2 + 112))
  {
    if (!v3)
    {
      if (!*(v2 + 160))
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

LABEL_5:
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    _AirPlayReceiverUI_CleanupPresentation(v2, 0, 0);
    v2 = *(a1 + 32);
    if (!*(v2 + 112))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v3)
  {
    goto LABEL_5;
  }

LABEL_12:
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v5 = _LogCategory_Initialize(), v2 = *(a1 + 32), v5))
    {
      LogPrintF();
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
LABEL_17:
  if (*(v2 + 160))
  {
    if (*(v2 + 176))
    {
      v6 = *(v2 + 48);
      if (v6)
      {
        do
        {
          (v6[2])("stopPlayingOverP2P", 0, v6[3]);
          v6 = *v6;
        }

        while (v6);
        v2 = *(a1 + 32);
      }

      *(v2 + 176) = 0;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 32), v7))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    *(v2 + 164) = 0;
    *(v2 + 168) = 0;
    v2 = *(a1 + 32);
  }

  _AirPlayReceiverUI_ActiveSessionsStopped(v2);
  v2 = *(a1 + 32);
LABEL_29:
  v8 = *(v2 + 48);
  if (v8)
  {
    do
    {
      (v8[2])("serverDied", 0, v8[3]);
      v8 = *v8;
    }

    while (v8);
    v2 = *(a1 + 32);
  }

  v9 = *v2;

  dispatch_release(v9);
}

void ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke(void *a1)
{
  if (*(a1[8] + 24))
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = a1[5];

    dispatch_semaphore_signal(v2);
  }

  else
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = a1[8];
    v4 = *(v3 + 32);
    v5 = *v3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke_2;
    handler[3] = &unk_278C5FFF8;
    v6 = a1[7];
    v7 = a1[4];
    handler[4] = a1[5];
    handler[5] = v6;
    xpc_connection_send_message_with_reply(v4, v7, v5, handler);
    *(*(a1[6] + 8) + 24) = 0;
  }
}

intptr_t ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke_2(uint64_t a1, xpc_object_t object)
{
  xpc_retain(object);
  *(*(*(a1 + 40) + 8) + 40) = object;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

uint64_t ___AirPlayReceiverUI_HandleErrorEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleOtherEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

void ___AirPlayReceiverUI_HandleFPSSecureStopGenerated_block_invoke(uint64_t a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = *(a1 + 32);
  v3 = *(AirPlayReceiverUI_GetShared_ui + 48);
  if (v3)
  {
    do
    {
      (v3[2])("FPSSecureStopGenerated", v2, v3[3]);
      v3 = *v3;
    }

    while (v3);
    v2 = *(a1 + 32);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t ___AirPlayReceiverUI_HandleDateRangeEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandlePlaylistEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

void ___AirPlayReceiverUI_HandleUserEvent_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  if ([*(a1 + 40) count])
  {
    v2 = *(a1 + 48);
    v3 = *(v2 + 184);
    if (v3)
    {
      v3(*(v2 + 192), *(a1 + 40));
    }
  }

  if (*(a1 + 56))
  {
    if (AirPlayReceiverUI_GetShared_once != -1)
    {
      dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
    }

    for (i = *(AirPlayReceiverUI_GetShared_ui + 48); i; i = *i)
    {
      (i[2])("userStop", 0, i[3]);
    }
  }
}

void ___AirPlayReceiverUI_HandleAudioStop_block_invoke(uint64_t a1)
{
  _AirPlayReceiverUI_NotifyObserversF(*(a1 + 32), "stopAudio", "{%kO=%i}");
  v2 = **(a1 + 32);

  dispatch_release(v2);
}

uint64_t ___AirPlayReceiverUI_HandleMetaDataEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleFailedURLRequest_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleStateEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

@end