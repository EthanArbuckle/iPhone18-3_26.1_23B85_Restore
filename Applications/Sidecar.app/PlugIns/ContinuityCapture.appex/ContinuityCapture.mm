void sub_1000011A4(id a1)
{
  qword_100019E90 = objc_alloc_init(ContinuityCaptureShieldUIBackgroundActivityManager);

  _objc_release_x1();
}

void sub_100001710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001728(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001740(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isBackgroundActivityActive])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100003624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a72);
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_1000036A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuityCaptureShieldUILog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[ContinuityCaptureShieldUIContentView initWithFrame:]_block_invoke";
      v6 = 2048;
      v7 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: <%p> pause button pressed", &v4, 0x16u);
    }

    v3 = [WeakRetained delegate];
    [v3 contentViewDidSelectPauseButton:WeakRetained];
  }
}

void sub_100003760(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 41) & 1) == 0)
  {
    v6 = ContinuityCaptureShieldUILog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ContinuityCaptureShieldUIContentView initWithFrame:]_block_invoke";
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: <%p> facetime button pressed", buf, 0x16u);
    }

    v7 = [v5 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      [v5 _setPullFaceTimeButtonLoading:1];
      v9 = [v5 delegate];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000038F0;
      v10[3] = &unk_1000145C8;
      objc_copyWeak(&v11, (a1 + 32));
      [v9 contentViewDidSelectFaceTimeButton:v5 completion:v10];

      objc_destroyWeak(&v11);
    }
  }
}

void sub_1000038F0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003980;
  block[3] = &unk_1000145C8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100003980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPullFaceTimeButtonLoading:0];
}

void sub_1000039C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuityCaptureShieldUILog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[ContinuityCaptureShieldUIContentView initWithFrame:]_block_invoke_3";
      v8 = 2048;
      v9 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: <%p> favorites button pressed", &v6, 0x16u);
    }

    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained delegate];
      [v5 contentViewDidSelectFavoritesButton:WeakRetained];
    }
  }
}

void sub_100003AAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuityCaptureShieldUILog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[ContinuityCaptureShieldUIContentView initWithFrame:]_block_invoke";
      v6 = 2048;
      v7 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: <%p> disconnect button pressed", &v4, 0x16u);
    }

    v3 = [WeakRetained delegate];
    [v3 contentViewDidSelectDisconnectButton:WeakRetained];
  }
}

void sub_100003B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuityCaptureShieldUILog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[ContinuityCaptureShieldUIContentView initWithFrame:]_block_invoke";
      v6 = 2048;
      v7 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: <%p> skip button pressed", &v4, 0x16u);
    }

    v3 = [WeakRetained delegate];
    [v3 contentViewDidSelectSkipButton:WeakRetained];
  }
}

void sub_100004134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = CACurrentMediaTime();
    v3 = [v4[8] rootLayer];
    [v3 setBeginTime:v2];

    [v4[8] setState:@"Animate"];
    WeakRetained = v4;
  }
}

uint64_t ContinuityCaptureShieldUILog()
{
  if (qword_100019EA8 != -1)
  {
    sub_10000B1C4();
  }

  return qword_100019EA0;
}

void sub_100005590(id a1)
{
  v1 = [+[NSBundle mainBundle](NSBundle bundleIdentifier];

  _AVCapturePrewarm(v1);
}

void sub_100005AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005B50;
  v3[3] = &unk_100014630;
  v3[4] = *(a1 + 32);
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

_BYTE *sub_100005B50(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[136] & 1) == 0)
  {
    return [result _handleLayout:*(a1 + 40) ignoringStandby:1];
  }

  return result;
}

id sub_100006200(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(*(a1 + 32) + 168) = v1;
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  if (v1)
  {
    v4 = &kCMContinuityCaptureControlIncomingCall;
  }

  else
  {
    v4 = &kCMContinuityCaptureControlIncomingCallComplete;
  }

  return [v3 postEvent:*v4 entity:4 data:v2];
}

id sub_1000063D4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (*(a1 + 40))
  {
    v2 = &kCMContinuityCaptureEventActiveCallStart;
  }

  else
  {
    v2 = &kCMContinuityCaptureEventActiveCallEnd;
  }

  return [*(*(a1 + 32) + 48) postEvent:*v2 entity:0 data:0];
}

id sub_1000066C8(uint64_t a1)
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(a1 + 32) + 169) = 0;
  return [*(a1 + 32) _disconnectSession];
}

uint64_t sub_1000067FC(uint64_t result)
{
  v1 = result;
  if (dword_100019EC8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(v1 + 32) + 169) = 0;
  return result;
}

uint64_t sub_100006FD4(uint64_t a1)
{
  if (dword_100019EC8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = objc_opt_class();
  objc_sync_enter(v3);

  *(*(a1 + 32) + 128) = 0;
  return objc_sync_exit(v3);
}

id sub_10000763C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = *(v2 + 104);
    if (v4)
    {
      dispatch_source_cancel(v4);

      *(*(a1 + 32) + 104) = 0;
      v3 = *(*(a1 + 32) + 160);
    }

    v5 = *(a1 + 40);

    return [v3 resetRequest:v5];
  }

  else
  {
    *(*(a1 + 32) + 160) = [[CMContinuityCaptureSidecarServer alloc] initWithRequest:*(a1 + 40)];
    FigCaptureSessionRemoteSetWombatEnabled();
    v7 = *(a1 + 32);

    return [v7 updateRequestState];
  }
}

id sub_1000079A0(uint64_t a1)
{
  *(*(a1 + 32) + 120) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 120) == 1)
  {
    if (*(v2 + 160))
    {
      [*(v2 + 160) resetRequest:0];
      v3 = *(a1 + 32);

      return [v3 _setConnectionInterruptTimer];
    }

    goto LABEL_10;
  }

  if (!*(v2 + 48))
  {
LABEL_10:

    return [v2 _terminate];
  }

  v4 = kCMContinuityCaptureEventTerminate;
  v5 = *(v2 + 48);

  return [v5 postEvent:v4 entity:0 data:0];
}

void *sub_100008274(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[6])
  {
    return [result updateRequestState];
  }

  return result;
}

void sub_100008598(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100008610;
  v1[3] = &unk_100014748;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v1);
}

void sub_100008610(uint64_t a1)
{
  if (dword_100019EC8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (--*(*(*(a1 + 40) + 8) + 24) < 0)
  {
    [*(*(a1 + 32) + 48) postEvent:kCMContinuityCaptureEventTerminate entity:0 data:0];
    dispatch_source_cancel(*(*(a1 + 32) + 104));
  }
}

void sub_100008BB4(uint64_t a1)
{
  [*(a1 + 32) _observeValueForKeyPath:*(a1 + 40) ofObject:*(a1 + 48) change:*(a1 + 56) context:*(a1 + 64)];
  v2 = *(a1 + 32);
}

id sub_100009488(uint64_t a1)
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = SBSCreateOpenApplicationService();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009608;
  v5[3] = &unk_100014798;
  v5[4] = *(a1 + 32);
  return [v3 openApplication:@"com.apple.sidecar" withOptions:0 completion:v5];
}

uint64_t sub_100009608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

id sub_10000A2FC(uint64_t a1)
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [*(a1 + 32) _handleLayout:objc_msgSend(*(*(a1 + 32) + 64) ignoringStandby:{"currentLayout", v4, v5), 0}];
}

uint64_t sub_10000A9BC(uint64_t result)
{
  *(*(result + 32) + 97) = *(*(result + 32) + 96) ^ 1;
  if (*(*(result + 32) + 97) == 1 && dword_100019EC8 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void sub_10000AFC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10000AFDC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    [v6 removeAttribution:?];
  }

  if (*(a1 + 40))
  {
    [v6 addAttribution:?];
  }

  [v5 setUserInitiated:1];
}

void sub_10000B05C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCurrentAttribution:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = WeakRetained[4];
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000B118;
    v5[3] = &unk_1000147E8;
    v6 = v3;
    [v4 handleUserInteractionsWithBlock:v5];
  }

  else
  {
    [WeakRetained[4] handleUserInteractionsWithBlock:0];
  }
}

void sub_10000B1D8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ContinuityCaptureShieldUIBackgroundActivityController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"backgroundActivityIdentifier"}];
}