void sub_1598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_1FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_200C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8C08(a1, v3, v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2104;
  block[3] = &unk_10448;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_2104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    v6 = [WeakRetained _localizedNameForRemoteApp:v5];
    [*(v4 - 1) setName:v6];

    [v3 reloadSpecifiers];
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_8C94(v4, v7);
    }
  }
}

void sub_27AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_33FC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_3588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35A4(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 supportsVoiceTrigger])
        {
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          [WeakRetained setConnectedDeviceInfo:v8];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_3F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_3F88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v11.receiver = *(a1 + 48);
  v11.super_class = AssistantBridgeTriggerPhrasesController;
  objc_msgSendSuper2(&v11, "tableView:didSelectRowAtIndexPath:", v5, v4);
  v6 = +[AFPreferences sharedPreferences];
  [v6 setNanoPhraseSpotterEnabled:a2];

  if (a2)
  {
    if ([*(a1 + 56) isEqualToString:@"HEY_SIRI_ID"])
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      result = [*(a1 + 56) isEqualToString:@"HS_JS_ID"];
      if (!result)
      {
        return result;
      }

      v8 = 2;
      v7 = 1;
    }

    v10 = +[AFPreferences sharedPreferences];
    [v10 setNanoVTPhraseType:v7];
  }

  else
  {
    v8 = 0;
  }

  return [*(a1 + 48) _updateFootersWithFooterType:v8];
}

void sub_4070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_437C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5740;
    block[3] = &unk_10540;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

BOOL sub_5418(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(PSSpecifier *)v4 identifier];
  if ([v5 isEqualToString:@"CONSIDERATE_VOLUME_SLIDER_ID"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PSSpecifier *)v4 identifier];
    if ([v7 isEqualToString:@"CONSIDERATE_VOLUME_GROUP_ID"])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(PSSpecifier *)v4 identifier];
      if ([v8 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_ID"])
      {
        v6 = 1;
      }

      else
      {
        v9 = [(PSSpecifier *)v4 identifier];
        v6 = [v9 isEqualToString:@"CONSIDERATE_VOLUME_SWITCH_ID"];
      }
    }
  }

  return v6;
}

id sub_5C34(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8DC8(v2);
  }

  return [*(a1 + 32) reloadSpecifiers];
}

void sub_6A5C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void sub_72D4(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_742C;
  v10[3] = &unk_105F8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v2 = objc_retainBlock(v10);
  v3 = v2;
  if (*(a1 + 56) == 1)
  {
    v4 = objc_alloc_init(AssistantBridgeVoiceSelectionTask);
    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_74C0;
    v7[3] = &unk_10620;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    [(AssistantBridgeVoiceSelectionTask *)v6 presentVoiceSelectionIfNecessaryFromViewController:v5 completion:v7];
  }

  else
  {
    (v2[2])(v2, 0);
  }
}

uint64_t sub_742C(uint64_t a1, uint64_t a2)
{
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoAssistantEnabled:a2];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

id sub_74C0(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
    v7 = +[AFPreferences sharedPreferences];
    [v7 setNanoOutputVoice:v6];
  }

  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2 ^ 1u;
  }

  (*(*(a1 + 40) + 16))();
  v9 = *(a1 + 32);

  return [v9 logWhetherSiriWasEnabledAfterCompleted:v8];
}

uint64_t sub_7564(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_7634(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7B1C;
    block[3] = &unk_10540;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_7C38(uint64_t a1)
{
  v6 = [*(a1 + 32) _loadedConfiguration];
  v2 = [*(a1 + 32) _languageCode];
  v3 = [v6 requiresVoiceSelectionForRecognitionLanguage:v2];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _loadedViewController];
    [*(a1 + 40) presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [v4 _executePendingVoiceSelectionCompletionAndDismissViewControllerWithVoiceSelectionRequired:0 selectedVoice:0];
  }
}

void sub_7EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7F68;
  v6[3] = &unk_106D8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_7F68(uint64_t a1)
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:*(a1 + 32) action:"_voiceSelectionCancelled"];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:0 action:0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = qword_156A0;
  v14 = qword_156A0;
  if (!qword_156A0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_83CC;
    v10[3] = &unk_10750;
    v10[4] = &v11;
    sub_83CC(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [[v4 alloc] initWithRecognitionLanguage:*(a1 + 40) allowsRandomSelection:objc_msgSend(*(a1 + 48) barButtonItemForContinue:"voiceSelectionAllowsRandomSelection") customVoicePreviewer:v3 delegate:{0, *(a1 + 32)}];
  v7 = [v6 navigationItem];
  [v7 setLeftBarButtonItem:v2];
  [v7 setRightBarButtonItem:v3];
  v8 = [[UINavigationController alloc] initWithRootViewController:v6];
  [*(a1 + 32) _setLoadedConfiguration:*(a1 + 48)];
  [*(a1 + 32) _setLoadedViewController:v8];
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_82C4(uint64_t a1)
{
  v3 = [*(a1 + 32) _loadedConfiguration];
  v2 = [v3 completionLoggingBlock];
  v2[2](v2, *(a1 + 40));
}

Class sub_83CC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_156A8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_84F8;
    v3[4] = &unk_10788;
    v3[5] = v3;
    v4 = off_10770;
    v5 = 0;
    qword_156A8 = _sl_dlopen();
  }

  if (!qword_156A8)
  {
    sub_9130(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_90B4();
  }

  qword_156A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_84F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_156A8 = result;
  return result;
}

void sub_85B4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_156B0;
  qword_156B0 = v1;

  [qword_156B0 setCountLimit:3];
  v3 = qword_156B0;

  [v3 setEvictsObjectsWhenApplicationEntersBackground:0];
}

void sub_89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8A08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8A20(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_8A8C()
{
  v1[0] = 136315394;
  sub_33E8();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: Returning cached specifier for %@", v1, 0x16u);
}

void sub_8B0C()
{
  v1[0] = 136315394;
  sub_33E8();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: _applicationSuggestionsSpecifierWithBundleId: %@", v1, 0x16u);
}

void sub_8B8C()
{
  v2 = 136315650;
  sub_33E8();
  sub_33FC(&dword_0, v0, v1, "%s AssistantBridge: fetching app name via AppConduit: d:%@ b:%@", v2);
}

void sub_8C08(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[AssistantBridgeController _applicationSuggestionsSpecifierWithBundleId:device:]_block_invoke";
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2112;
  sub_33FC(&dword_0, a2, a3, "%s AssistantBridge: AppConduit fetchApplicationOnPairedDevice for '%@' handler called: %@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_8C94(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 applicationName];
  v5[0] = 136315394;
  sub_33E8();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: appName: %@", v5, 0x16u);
}

void sub_8D44(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AssistantBridgeAppDetailController init]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s AssistantBridge: failed to register for Suggestions settings change notifications.", &v1, 0xCu);
}

void sub_8DC8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AssistantBridgeAppDetailController init]_block_invoke";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: received Suggestions settings changed notification", &v1, 0xCu);
}

void sub_8E4C()
{
  v1[0] = 136315394;
  sub_33E8();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: inAppShowSiriSuggestionsEnabled: %@", v1, 0x16u);
}

void sub_8ECC()
{
  v2 = 136315650;
  sub_6A38();
  sub_6A5C(&dword_0, v0, v1, "%s AssistantBridge: setInAppShowSiriSuggestionsEnabled: %@ %d", v2);
}

void sub_8F40()
{
  v1[0] = 136315394;
  sub_33E8();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: appHasCustomSettingsWithBundleId: %@", v1, 0x16u);
}

void sub_8FC0()
{
  v2 = 136315650;
  sub_6A38();
  sub_6A5C(&dword_0, v0, v1, "%s AssistantBridge: setAppHasCustomSettingsWithBundleId: %@ %d", v2);
}

void sub_9034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"AssistantBridgeAppDetailController.m" lineNumber:174 description:{@"Unexpected watchOS bundle id %@", a3}];
}

void sub_90B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getVTUIVoiceSelectionViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantBridgeVoiceSelectionTask.m" lineNumber:18 description:{@"Unable to find class %s", "VTUIVoiceSelectionViewController"}];

  __break(1u);
}

void sub_9130(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantBridgeVoiceSelectionTask.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void sub_934C(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_8A80();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}