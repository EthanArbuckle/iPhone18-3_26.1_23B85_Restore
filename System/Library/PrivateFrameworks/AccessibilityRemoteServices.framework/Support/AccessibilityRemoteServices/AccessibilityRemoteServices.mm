void sub_10000106C(id a1)
{
  qword_10000CB00 = [[AXRemoteDaemon alloc] _init];

  _objc_release_x1();
}

void sub_100001344(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_dictionary_get_string(xdict, _xpc_event_key_name))
  {
    v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
    v4 = [v3 isEqualToString:AXRemoteDaemonServiceType];

    if (v4)
    {
      if (xpc_dictionary_get_BOOL(xdict, "replyRequired"))
      {
        [*(a1 + 32) _resetTransactionTimer];
        reply = xpc_dictionary_create_reply(xdict);
        xpc_dictionary_send_reply();
      }
    }
  }
}

void sub_100001488(uint64_t a1)
{
  v2 = [*(a1 + 32) transaction];

  if (!v2)
  {
    v3 = ax_remote_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "creating os_transaction", buf, 2u);
    }

    v4 = os_transaction_create();
    [*(a1 + 32) setTransaction:v4];
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = [*(a1 + 32) transactionTimeoutTimer];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000015E4;
  v6[3] = &unk_1000085E8;
  objc_copyWeak(&v7, buf);
  [v5 afterDelay:v6 processBlock:60.0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void sub_1000015C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1000015E4(uint64_t a1)
{
  v2 = ax_remote_daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "timed out, clearing os_transaction", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelTransactionIfNecessary];
}

void sub_100001EF8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:AXRBannerPayloadKey];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:AXRBannerPayloadTitleKey];
    v5 = [v3 objectForKeyedSubscript:AXRBannerPayloadMessageKey];
    v6 = [v3 objectForKeyedSubscript:AXRBannerPayloadDurationKey];
    [v6 doubleValue];
    v8 = v7;

    v9 = +[AXBannerServices sharedInstance];
    [v9 presentBannerWithTitle:v4 message:v5 duration:v8];
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:AXRDeviceRemoteActionPayloadKey];
  v11 = [*(a1 + 32) objectForKeyedSubscript:AXRVoiceOverEventPayloadKey];
  v12 = [*(a1 + 32) objectForKeyedSubscript:AXRScrollEventPayloadKey];
  v13 = [*(a1 + 32) objectForKeyedSubscript:AXRHandGestureEventPayloadKey];
  v14 = [*(a1 + 32) objectForKeyedSubscript:AXRHandGestureCustomizedActionsKey];
  v15 = [*(a1 + 32) objectForKeyedSubscript:AXRTouchEventPayloadKey];
  v16 = v15;
  if (v10)
  {
    v17 = [v10 objectForKeyedSubscript:AXRDeviceRemoteActionNameKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v18 = +[AXRDeviceRemoteActionHelper sharedInstance];
    [v18 performAction:v17];
LABEL_13:

    [*(a1 + 40) _notifyUserEventOccured];
    goto LABEL_14;
  }

  if (v11)
  {
    v73 = v15;
    v19 = [v11 objectForKeyedSubscript:AXRVoiceOverEventCommandNameKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = +[AXVoiceOverServer server];
      v21 = [v20 triggerEventCommand:v19];

      if (v21)
      {
        [*(a1 + 40) _notifyUserEventOccured];
      }
    }

    v16 = v73;
  }

  else
  {
    if (v13)
    {
      v22 = [v13 objectForKeyedSubscript:AXRHandGestureEventPayloadGestureKey];
      v23 = [v22 integerValue];

      v24 = [v13 objectForKeyedSubscript:AXRHandGestureEventPayloadProbabilityKey];
      [v24 floatValue];
      v26 = v25;

      v27 = [v13 objectForKeyedSubscript:AXRHandGestureEventPayloadLatencyKey];
      [v27 floatValue];
      v29 = v28;

      LODWORD(v30) = v26;
      LODWORD(v31) = v29;
      v17 = [AXEventRepresentation accessibilityEventRepresentationWithSender:6 usagePage:2 usage:v23 modifierFlags:0 eventValue1:v30 eventValue2:v31];
      v18 = +[AXEventTapManager sharedManager];
      [v18 sendHIDSystemEvent:v17 senderID:0x8000000817319384];
      goto LABEL_13;
    }

    if (v14)
    {
      v17 = +[AXSettings sharedInstance];
      [v17 setRemoteHandGestureCustomizedActions:v14];
      goto LABEL_14;
    }

    if (v12)
    {
      v32 = [v12 objectForKeyedSubscript:AXRScrollEventPayloadAmountKey];
      v33 = [v32 intValue];

      v34 = [*(a1 + 40) scrollAccumulator];
      [v34 accumulateScrollAmount:v33];

      [*(a1 + 40) _notifyUserEventOccured];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (qword_10000CB18 != -1)
        {
          sub_100003CB8();
        }

        v93 = 0;
        v35 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10000CB10 fromData:v16 error:&v93];
        v36 = v93;
        if (v36)
        {
          obj = ax_remote_daemon_log();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            sub_100003CCC(v36, obj);
          }
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          obj = v35;
          v88 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
          if (v88)
          {
            v66 = 0;
            v67 = v35;
            v72 = 0;
            v74 = v16;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v87 = *v90;
            v86 = AXRTouchEventPayloadHandInfoKey;
            v85 = AXRTouchEventPayloadIsGeneratedEventKey;
            v84 = AXRTouchEventPayloadGenerationCountKey;
            v83 = AXRTouchEventPayloadWillUpdateMaskKey;
            v82 = AXRTouchEventPayloadDidUpdateMaskKey;
            v81 = AXRTouchEventPayloadUseOriginalHIDTimeKey;
            v80 = AXRTouchEventPayloadHIDTimeKey;
            v79 = AXRTouchEventPayloadIsDisplayIntegratedKey;
            v78 = AXRTouchEventPayloadSenderIDKey;
            v77 = AXRTouchEventPayloadContextIdKey;
            v76 = AXRTouchEventPayloadHIDAttributeDataKey;
            v37 = &_AXSAssistiveTouchScannerEnabled_ptr;
            do
            {
              for (i = 0; i != v88; i = i + 1)
              {
                if (*v90 != v87)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v89 + 1) + 8 * i);
                v40 = v37[162];
                v41 = [v39 objectForKeyedSubscript:{v86, v66, v67, v68, v69, v70, v71, v72}];
                v42 = [v40 secureUnarchiveData:v41 withExpectedClass:objc_opt_class() otherAllowedClasses:0];

                if (v42)
                {
                  v43 = mach_absolute_time();
                  v44 = [v42 paths];
                  v45 = [v44 firstObject];
                  [v45 pathLocation];
                  v47 = v46;
                  v49 = v48;
                  v50 = [v42 paths];
                  v51 = [v50 firstObject];
                  [v51 pathLocation];
                  v54 = [AXEventRepresentation representationWithType:3001 subtype:0 time:v43 location:v42 windowLocation:v47 handInfo:v49, v52, v53];

                  v55 = [v39 objectForKeyedSubscript:v85];
                  [v54 setIsGeneratedEvent:{objc_msgSend(v55, "BOOLValue")}];

                  v56 = [v39 objectForKeyedSubscript:v84];
                  [v54 setGenerationCount:{objc_msgSend(v56, "longLongValue")}];

                  v57 = [v39 objectForKeyedSubscript:v83];
                  [v54 setWillUpdateMask:{objc_msgSend(v57, "intValue")}];

                  v58 = [v39 objectForKeyedSubscript:v82];
                  [v54 setDidUpdateMask:{objc_msgSend(v58, "intValue")}];

                  v59 = [v39 objectForKeyedSubscript:v81];
                  [v54 setUseOriginalHIDTime:{objc_msgSend(v59, "BOOLValue")}];

                  v60 = [v39 objectForKeyedSubscript:v80];
                  [v54 setHIDTime:{objc_msgSend(v60, "longLongValue")}];

                  v61 = [v39 objectForKeyedSubscript:v79];
                  [v54 setIsDisplayIntegrated:{objc_msgSend(v61, "BOOLValue")}];

                  v62 = [v39 objectForKeyedSubscript:v78];
                  [v54 setSenderID:{objc_msgSend(v62, "longLongValue")}];

                  v63 = [v39 objectForKeyedSubscript:v77];
                  [v54 setContextId:{objc_msgSend(v63, "intValue")}];

                  v64 = [v39 objectForKeyedSubscript:v76];
                  [v54 setHIDAttributeData:v64];

                  v65 = +[AXEventTapManager sharedManager];
                  [v65 sendHIDSystemEvent:v54 senderID:0x8000000817319384];

                  v37 = &_AXSAssistiveTouchScannerEnabled_ptr;
                }
              }

              v88 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
            }

            while (v88);
            v11 = v71;
            v10 = v72;
            v13 = v69;
            v12 = v70;
            v35 = v67;
            v14 = v68;
            v16 = v74;
            v36 = v66;
          }
        }
      }
    }
  }

LABEL_15:
}

void sub_1000027F8(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:5];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7];
  v3 = qword_10000CB10;
  qword_10000CB10 = v2;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ax_remote_daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting up axremoted", v9, 2u);
  }

  v2 = getpwnam("mobile");
  pw_uid = v2->pw_uid;
  pw_gid = v2->pw_gid;
  if (pw_uid)
  {
    v5 = pw_gid == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (getgid() == pw_gid || !setgid(pw_gid)) && (getuid() == pw_uid || !setuid(pw_uid)))
  {
    v6 = +[AXRemoteDaemon sharedInstance];
    [v6 run];

    v7 = +[NSRunLoop currentRunLoop];
    [v7 run];
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100002D68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 scrollAccumulator:*(a1 + 32) didAccumulateScrollInDirection:1];
}

void sub_100002DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 scrollAccumulator:*(a1 + 32) didAccumulateScrollInDirection:2];
}

void sub_100002ED4(id a1)
{
  qword_10000CB20 = [[AXRDeviceRemoteActionHelper alloc] _init];

  _objc_release_x1();
}

uint64_t sub_1000035DC(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_10000CB30;
  v8 = off_10000CB30;
  if (!off_10000CB30)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000038B0;
    v4[3] = &unk_1000086C8;
    v4[4] = &v5;
    sub_1000038B0(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_100003DE0();
  }

  return v2(a1, 0);
}

void sub_1000036A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003714()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10000CB40;
  v7 = qword_10000CB40;
  if (!qword_10000CB40)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003A64;
    v3[3] = &unk_1000086C8;
    v3[4] = &v4;
    sub_100003A64(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000037DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000038B0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10000CB38)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000039F0;
    v5[4] = &unk_100008700;
    v5[5] = v5;
    v6 = off_1000086E8;
    v7 = 0;
    qword_10000CB38 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10000CB38;
    if (qword_10000CB38)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10000CB38;
LABEL_5:
  result = dlsym(v2, "MRMediaRemoteSendCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000039F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CB38 = result;
  return result;
}

Class sub_100003A64(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000CB48)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100003BA8;
    v4[4] = &unk_100008700;
    v4[5] = v4;
    v5 = off_100008720;
    v6 = 0;
    qword_10000CB48 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000CB48)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100003E04();
  }

  qword_10000CB40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003BA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CB48 = result;
  return result;
}

void sub_100003C30(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "did receive payload: %@, withOptions: %@", &v3, 0x16u);
}

void sub_100003CCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to unarchive touch event payload due to: %@", &v2, 0xCu);
}

void sub_100003DE0()
{
  dlerror();
  v0 = abort_report_np();
  sub_100003E04(v0);
}