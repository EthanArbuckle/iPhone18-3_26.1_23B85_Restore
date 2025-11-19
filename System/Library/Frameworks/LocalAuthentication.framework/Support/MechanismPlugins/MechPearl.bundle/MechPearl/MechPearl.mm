id sub_1114()
{
  if (qword_153B0 != -1)
  {
    sub_7268();
  }

  v1 = qword_153B8;

  return v1;
}

void sub_18C0(id a1)
{
  qword_153B8 = os_log_create("com.apple.LocalAuthentication", "CoachingFeedbackFilter");

  _objc_release_x1();
}

void sub_191C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _matchOperation:*(a1 + 32) matchedWithResult:*(a1 + 40)];
}

void sub_24DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 11, *(a1 + 32));
    (*(*(a1 + 40) + 16))();
    v3 = v4[11];
    v4[11] = 0;

    WeakRetained = v4;
  }
}

void sub_30BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_30E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v7 = @"Result";
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [*(a1 + 40) identity];
  v6 = [v5 uuid];
  [WeakRetained _succeedAuthenticationWithResult:v4 identityUUID:v6];
}

void sub_3294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_32B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) finishedWithReason:*(a1 + 48)];
}

void sub_3584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_35A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) stateChanged:*(a1 + 48)];
}

void sub_3D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_3D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) presenceStateChanged:*(a1 + 48)];
}

void sub_40C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_40E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) failedWithReason:*(a1 + 48)];
}

void sub_44A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_44C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) providedFeedback:*(a1 + 48)];
}

void sub_4B90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = 0;
  v3 = [v2 startWithError:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = +[NSDate date];
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = v5;

    v8 = *(a1 + 32);
    v12 = &off_10B58;
    v13 = &off_10BA0;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 noResponseEventWithParams:v9];
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = [LAErrorHelper errorWithCode:-1 subcode:32 message:@"match failed" suberror:v4];
    [v10 failAuthenticationWithError:v9];
  }
}

uint64_t sub_4FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) request];
  v3 = [v2 log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ received reply from mirrored default UI", &v6, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_50BC(uint64_t a1)
{
  v2 = [*(a1 + 32) request];
  v3 = [v2 log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ received reply from custom UI client", &v6, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void *sub_55F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    result = [result isRunning];
    if (result)
    {
      result = *(a1 + 32);
      if (*(a1 + 40) == result[6])
      {

        return [result _finishFaceDetectPhase];
      }
    }
  }

  return result;
}

void sub_5DB8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v7 = 0;
  v3 = [v2 startNewMatchAttemptWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [LAErrorHelper errorWithCode:-1000 message:@"Failed to restart match"];
    [v5 failAuthenticationWithError:v6];
  }
}

_UNKNOWN **sub_6090(uint64_t a1)
{
  v2 = [*(a1 + 32) preCompanion];
  v3 = [v2 rootMechanism];
  v4 = [v3 eventsDelegate];

  if (v4)
  {
    v5 = &off_10CA8;
  }

  else
  {
    if (!v2)
    {
      goto LABEL_6;
    }

    if ([v2 axMode])
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) request];
    v7 = [v6 options];
    v8 = [v7 objectForKeyedSubscript:&off_10B10];
    v9 = [v8 BOOLValue];

    if (v9)
    {
LABEL_6:
      v5 = 0;
    }

    else
    {
      v11 = [v2 isCredentialValid];
      v12 = &off_10B88;
      if (v11)
      {
        v12 = &off_10C48;
      }

      v5 = v12;
    }
  }

  return v5;
}

void sub_64CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = v2;
    WeakRetained = objc_loadWeakRetained((v4 + 64));
    *buf = 67109634;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = WeakRetained;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Sending mechanism event after coaching %d (%@) to %@", buf, 0x1Cu);
  }

  v8 = objc_loadWeakRetained((*(a1 + 48) + 64));
  v9 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6648;
  v11[3] = &unk_10608;
  v10 = *(a1 + 64);
  v12 = *(a1 + 56);
  [v8 mechanismEvent:v10 value:v9 reply:v11];
}

void sub_67F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_6818(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_68D8;
    v7[3] = &unk_10608;
    v8 = v3;
    [WeakRetained mechanismEvent:v5 value:v6 reply:v7];
  }
}

void sub_68D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[LACBackgroundTaskResult alloc] initWithValue:&__kCFBooleanTrue];
  (*(v1 + 16))(v1, v2);
}

void sub_6B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isRunning])
  {
    [WeakRetained _expireMatchThatStartedAt:*(a1 + 32)];
  }
}

void sub_6E80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == dword_153C0)
  {
    v3 = LACLogBiometry();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ restarting after secure UI movement", &v4, 0xCu);
    }

    [WeakRetained pause:0 forEvent:7 error:0];
  }
}

void sub_722C()
{
  sub_1910();
  sub_1904();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_72FC()
{
  sub_1910();
  sub_1904();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_73B8()
{
  sub_1910();
  sub_1904();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_73F4()
{
  sub_1910();
  sub_1904();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7430(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identity];
  [v5 userID];
  sub_7130();
  v7 = a2;
  _os_log_fault_impl(&dword_0, a3, OS_LOG_TYPE_FAULT, "failed to get hash for matched user %u: %{public}@", v6, 0x12u);
}

void sub_74DC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unknown coaching feedback: %d", v2, 8u);
}

void sub_7554(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ will not restart in biolockout", &v2, 0xCu);
}

void sub_75CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%@ will not restart in biolockout.", &v2, 0xCu);
}

void sub_7644(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 intValue];
  sub_7130();
  v6 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to pause/resume for feedback %d: %{public}@", v5, 0x12u);
}

void sub_76D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = 0;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ failed to pause after secure UI movement: %{public}@", &v2, 0x16u);
}