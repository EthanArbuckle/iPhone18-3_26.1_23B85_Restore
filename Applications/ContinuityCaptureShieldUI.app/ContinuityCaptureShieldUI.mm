void sub_1000014AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000014C8(uint64_t a1, void *a2, void *a3)
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

void sub_100001548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCurrentAttribution:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = WeakRetained[4];
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001604;
    v5[3] = &unk_1000184B0;
    v6 = v3;
    [v4 handleUserInteractionsWithBlock:v5];
  }

  else
  {
    [WeakRetained[4] handleUserInteractionsWithBlock:0];
  }
}

id sub_100002D74(uint64_t a1)
{
  v2 = sub_100006DC0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIBaseViewController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Request refresh ui", &v5, 0x16u);
  }

  return [*(a1 + 32) updateUI];
}

id sub_100002E0C(uint64_t a1)
{
  v2 = sub_100006DC0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIBaseViewController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Updated FaceTime continuity session state. Refresh UI", &v5, 0x16u);
  }

  return [*(a1 + 32) updateUI];
}

void sub_1000032DC(id a1, BSActionResponse *a2)
{
  v2 = a2;
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BSActionResponse *)v2 error];
    v6 = 136315394;
    v7 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Scene torn down with error: %@, exit now ", &v6, 0x16u);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 terminateWithSuccess];
}

void sub_1000033A8(uint64_t a1)
{
  v2 = sub_100006DC0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: destroy scene: %@ in lock mode", &v6, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = [NSSet setWithObject:*(a1 + 40)];
  [v4 sendActions:v5];
}

void sub_1000035A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006DC0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "[ContinuityCaptureShieldUIBaseViewController disconnectSession]_block_invoke";
      v5 = 2112;
      v6 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:  %@ disconnect timeout", &v3, 0x16u);
    }

    [WeakRetained tearDownShield];
  }
}

void sub_100004180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000041C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIViewController _showHowToReconnectDialog]_block_invoke";
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: <%p> OK button pressed", &v5, 0x16u);
  }

  [WeakRetained disconnectSession];
}

void sub_100004270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIViewController _showHowToReconnectDialog]_block_invoke";
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: <%p> Cancel button pressed", &v5, 0x16u);
  }

  WeakRetained[33] = 0;
}

void sub_1000045FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIViewController _showDedicatedDisconnectDialog]_block_invoke";
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: <%p> OK button pressed", &v5, 0x16u);
  }

  [WeakRetained disconnectSession];
}

void sub_1000046E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006DC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIViewController _showDedicatedDisconnectDialog]_block_invoke";
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: <%p> Cancel button pressed", &v5, 0x16u);
  }

  WeakRetained[33] = 0;
}

void sub_10000558C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000055B4(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 neighborhoodActivityConduit];
  v4 = [*(a1 + 32) UUID];
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000056C0;
  v6[3] = &unk_100018620;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v3 pullConversation:v4 fromTVDevice:v5 completion:v6];

  objc_destroyWeak(&v8);
}

void sub_1000056C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100006DC0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000AA78(a1, v4, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 56));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_100005E88(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    [WeakRetained setDisconnectReason:1];
    [v5 _pullConversation:*(a1 + 32) deviceHandle:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v6 = sub_100006DC0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10000AB00();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recalculateState];
}

id sub_100006DC0()
{
  if (qword_10001EAD8 != -1)
  {
    sub_10000AC50();
  }

  v1 = qword_10001EAD0;

  return v1;
}

void sub_100006E04(id a1)
{
  qword_10001EAD0 = os_log_create("com.apple.ContinuityCaptureShieldUI", "default");

  _objc_release_x1();
}

void sub_100006E94(id a1)
{
  qword_10001EAE0 = objc_alloc_init(ContinuityCaptureShieldUIBackgroundPauseManager);

  _objc_release_x1();
}

void sub_100008438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a72);
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_1000084BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006DC0();
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

void sub_100008574(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 41) & 1) == 0)
  {
    v6 = sub_100006DC0();
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
      v10[2] = sub_100008704;
      v10[3] = &unk_1000185D0;
      objc_copyWeak(&v11, (a1 + 32));
      [v9 contentViewDidSelectFaceTimeButton:v5 completion:v10];

      objc_destroyWeak(&v11);
    }
  }
}

void sub_100008704(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008794;
  block[3] = &unk_1000185D0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100008794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPullFaceTimeButtonLoading:0];
}

void sub_1000087D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006DC0();
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

void sub_1000088C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006DC0();
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

void sub_100008978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006DC0();
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

void sub_100008F48(uint64_t a1)
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

void sub_10000A160(id a1)
{
  qword_10001EAF0 = objc_alloc_init(ContinuityCaptureShieldUIBackgroundActivityManager);

  _objc_release_x1();
}

void sub_10000A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A6E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A6FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isBackgroundActivityActive])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_10000A92C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ContinuityCaptureShieldUIBackgroundActivityController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"backgroundActivityIdentifier"}];
}

void sub_10000A9A4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[ContinuityCaptureShieldUIBaseSceneDelegate scene:openURLContexts:]";
  v5 = 2048;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: <%p> Launching ShieldUI via URL without a valid URL payload for the launchUIConfiguration: %@", &v3, 0x20u);
}

void sub_10000AA14()
{
  v2[0] = 136315650;
  sub_100006178();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: %@ shield UI in placement step unexpectedly with client device model %d", v2, 0x1Cu);
}

void sub_10000AA78(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = 136315650;
  sub_100006178();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: %@ pullConversation failed with error=%@", v7, 0x20u);
}

void sub_10000AB00()
{
  v1[0] = 136315394;
  sub_100006178();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s: %@ error talking to ccd about pulling conversation", v1, 0x16u);
}

void sub_10000AB54()
{
  v1[0] = 136315394;
  sub_100006178();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: %@: error opening favorites", v1, 0x16u);
}

void sub_10000ABA8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 24);
  v7 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v8 = 136315906;
  v9 = "[ContinuityCaptureShieldUIPauseSceneComponent _scene:willTransitionToActivationState:withReasonsMask:]";
  v10 = 2048;
  v11 = a1;
  v12 = 2048;
  v13 = a2;
  v14 = 2112;
  v15 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%s: <%p> state:%zu deactivationReasons:%@", &v8, 0x2Au);
}