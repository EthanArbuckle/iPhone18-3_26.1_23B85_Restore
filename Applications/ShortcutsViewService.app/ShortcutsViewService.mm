id sub_100001568()
{
  if (qword_100016998 != -1)
  {
    dispatch_once(&qword_100016998, &stru_100010370);
  }

  v1 = qword_1000169A0;

  return v1;
}

void sub_1000015BC(uint64_t a1)
{
  v4 = [*(a1 + 32) bannerSourceForPresentable:*(a1 + 40)];
  v2 = [*(a1 + 40) requestIdentifier];
  v3 = [v4 revokePresentableWithRequestIdentifier:v2 reason:@"done" animated:1 userInfo:&__NSDictionary0__struct error:0];
}

void sub_10000164C(id a1)
{
  qword_1000169A0 = os_log_create(WFLogSubsystem, "ViewServiceApplication");

  _objc_release_x1();
}

void sub_100001C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100001568();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[WFViewServiceApplication _handlePlatformSpecificActions:forScene:withTransitionContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s XPC connection interrupted", &v3, 0xCu);
  }

  [WeakRetained setActiveConnection:0];
}

void sub_100001D98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100001568();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[WFViewServiceApplication _handlePlatformSpecificActions:forScene:withTransitionContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s XPC connection invalidated", &v3, 0xCu);
  }

  [WeakRetained setActiveConnection:0];
}

void sub_100002254(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setAlpha:0.0];
}

void sub_10000229C(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setHidden:1];
}

id sub_1000022E4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100002368;
  v2[3] = &unk_1000105A8;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.4];
}

void sub_100002368(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setAlpha:1.0];
}

id sub_100002508(uint64_t a1)
{
  [*(a1 + 32) setProgressSuppressionState:3];
  v2 = *(a1 + 32);

  return [v2 setProgressSuppressionTimer:0];
}

id sub_100002690(uint64_t a1)
{
  [*(a1 + 32) updateMicaViewState];
  v2 = *(a1 + 40) != 4;
  v3 = [*(a1 + 32) cancelButton];
  [v3 setHidden:v2];

  result = [*(a1 + 32) progressSuppressionState];
  if (result != 3)
  {
    v5 = [*(a1 + 32) activeLayoutMode];
    v6 = *(a1 + 32);
    if (v5 == 4)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v7 = 1;
      v8 = 0;
    }

    return [v6 setMicaViewHidden:v7 animated:v8];
  }

  return result;
}

id sub_1000028F4(uint64_t a1)
{
  [*(a1 + 32) setLastKnownProgressValue:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateMicaViewState];
}

id sub_100002C94(uint64_t a1)
{
  v2 = [*(a1 + 40) CGColor];
  v3 = *(a1 + 32);

  return [v3 setBackgroundColor:v2];
}

id sub_100003510()
{
  if (qword_1000169A8 != -1)
  {
    dispatch_once(&qword_1000169A8, &stru_100010450);
  }

  v1 = qword_1000169B0;

  return v1;
}

void sub_100003564(uint64_t a1)
{
  v2 = [*(a1 + 32) compactViewController];
  [v2 dismissPersistentChromeWithSuccess:*(a1 + 56) customAttribution:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_1000035BC(id a1)
{
  qword_1000169B0 = os_log_create(WFLogSubsystem, "RemoteAlert");

  _objc_release_x1();
}

void sub_10000372C(uint64_t a1)
{
  v2 = [*(a1 + 32) compactViewController];
  [v2 dismissPresentedContentWithCompletionHandler:*(a1 + 40)];
}

void sub_1000038D8(uint64_t a1)
{
  v2 = [*(a1 + 32) compactViewController];
  [v2 handleRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_100003A8C(uint64_t a1)
{
  v2 = [*(a1 + 32) compactViewController];
  [v2 preparePersistentChromeWithContext:*(a1 + 40) attribution:*(a1 + 48)];
}

id sub_100003CAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003D1C;
  v3[3] = &unk_1000105A8;
  v3[4] = v1;
  return [v1 dismissPresentedContentWithCompletionHandler:v3];
}

id sub_100003D1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003D94;
  v3[3] = &unk_1000105A8;
  v3[4] = v1;
  return [v1 dismissPersistentChromeWithSuccess:0 customAttribution:0 completionHandler:v3];
}

void sub_100003D94(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcConnection];
  v2 = [v1 remoteObjectProxy];

  [v2 requestDismissalWithReason:WFViewServiceDismissalReasonUserCancelledWithHomeButton];
}

void sub_1000042E4(id a1)
{
  v1 = sub_100003510();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WFRemoteAlertViewController configureWithContext:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s XPC connection invalidated", &v2, 0xCu);
  }
}

void sub_10000438C(id a1)
{
  v1 = sub_100003510();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WFRemoteAlertViewController configureWithContext:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s XPC connection interrupted", &v2, 0xCu);
  }
}

uint64_t start(int a1, char **a2)
{
  [WFInitialization initializeProcessWithDatabase:0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = UIApplicationMain(a1, a2, v5, 0);

  return v6;
}

void sub_100004F54(uint64_t a1)
{
  if ([*(a1 + 32) activeLayoutMode] == 4)
  {
    [*(a1 + 32) setOverrideLayoutMode:3];
    v2 = [*(a1 + 32) systemApertureElementContext];
    [v2 requestTransitionToPreferredLayoutMode];
  }
}

void sub_10000505C(uint64_t a1)
{
  v3 = [*(a1 + 32) progressView];
  v2 = [*(a1 + 32) progress];
  [v2 fractionCompleted];
  [v3 updateProgressWithValue:?];
}

void sub_100005A34(uint64_t a1)
{
  [*(a1 + 32) setInitialPresentationTransitioning:0];
  v2 = [*(a1 + 32) pendingDelayedAttribution];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 pendingDelayedAttribution];
    [v3 setAttribution:v4];

    v5 = *(a1 + 32);

    [v5 setPendingDelayedAttribution:0];
  }
}

void sub_100005E18(uint64_t a1)
{
  [*(a1 + 32) setAwaitingIconOwnershipSwap:0];
  v2 = [*(a1 + 32) systemApertureElementContext];
  [v2 setElementNeedsUpdate];
}

void sub_100005F70(uint64_t a1)
{
  v1 = [*(a1 + 32) systemApertureElementContext];
  [v1 setElementNeedsUpdate];
}