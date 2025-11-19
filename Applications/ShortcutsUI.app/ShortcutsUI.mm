id sub_1000017D0()
{
  if (qword_100030D58 != -1)
  {
    dispatch_once(&qword_100030D58, &stru_100028590);
  }

  v1 = qword_100030D60;

  return v1;
}

void sub_100001824(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFUIPresenterServiceInterface();
  [v3 setInterface:v4];

  v5 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v5];

  v6 = [*(a1 + 32) concretePresenter];
  [v3 setInterfaceTarget:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001918;
  v7[3] = &unk_1000285E0;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
}

void sub_100001918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000017D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[WFUIPresentationServer listener:didReceiveConnection:withContext:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s [Server-side] Connection to host was invalidated", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) bannerManager];
  [v5 removeConnectedHost:v3];
}

void sub_1000019F4(id a1)
{
  qword_100030D60 = os_log_create(WFLogSubsystem, "UIPresentationServer");

  _objc_release_x1();
}

void sub_100001AEC(uint64_t a1, void *a2)
{
  v3 = WFLaunchAngelServiceDomain;
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:WFLaunchAngelUIPresenterServiceName];
  [v4 setDelegate:*(a1 + 32)];
}

id sub_100001F54()
{
  if (qword_100030D68 != -1)
  {
    dispatch_once(&qword_100030D68, &stru_100028628);
  }

  v1 = qword_100030D70;

  return v1;
}

void sub_100001FA8(id a1)
{
  qword_100030D70 = os_log_create(WFLogSubsystem, "AngelSceneManager");

  _objc_release_x1();
}

SBUIRemoteAlertButtonAction *__cdecl sub_100002380(id a1, SBUIRemoteAlertButtonAction *a2)
{
  v2 = a2;
  v3 = (v2 & (([v2 events] << 59) >> 63));
  v4 = v3;

  return v3;
}

void sub_100002508(uint64_t a1)
{
  v2 = [*(a1 + 32) activeScene];

  if (v2)
  {
    v3 = sub_100001F54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[WFAngelSceneManager requestSceneDeactivation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating scene...", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) activeScene];
    [v4 invalidate];
  }
}

void sub_100002824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002848(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (!state64)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained cancellationHandler];

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = [v5 cancellationHandler];
      v6[2]();
    }
  }
}

void sub_1000029EC(id a1)
{
  qword_100030D80 = objc_alloc_init(WFAngelSceneManager);

  _objc_release_x1();
}

void sub_100002FF4(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setAlpha:0.0];
}

void sub_10000303C(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setHidden:1];
}

id sub_100003084(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100003108;
  v2[3] = &unk_1000288A0;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.4];
}

void sub_100003108(uint64_t a1)
{
  v1 = [*(a1 + 32) micaView];
  [v1 setAlpha:1.0];
}

id sub_1000032A8(uint64_t a1)
{
  [*(a1 + 32) setProgressSuppressionState:3];
  v2 = *(a1 + 32);

  return [v2 setProgressSuppressionTimer:0];
}

id sub_100003430(uint64_t a1)
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

id sub_100003694(uint64_t a1)
{
  [*(a1 + 32) setLastKnownProgressValue:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateMicaViewState];
}

id sub_100003A34(uint64_t a1)
{
  v2 = [*(a1 + 40) CGColor];
  v3 = *(a1 + 32);

  return [v3 setBackgroundColor:v2];
}

void sub_10000459C(uint64_t a1)
{
  [*(a1 + 32) setAwaitingIconOwnershipSwap:0];
  v2 = [*(a1 + 32) systemApertureElementContext];
  [v2 setElementNeedsUpdate];
}

void sub_1000046F4(uint64_t a1)
{
  v1 = [*(a1 + 32) systemApertureElementContext];
  [v1 setElementNeedsUpdate];
}

void sub_1000051E8(uint64_t a1)
{
  if ([*(a1 + 32) activeLayoutMode] == 4)
  {
    [*(a1 + 32) setOverrideLayoutMode:3];
    v2 = [*(a1 + 32) systemApertureElementContext];
    [v2 requestTransitionToPreferredLayoutMode];
  }
}

void sub_1000052F0(uint64_t a1)
{
  v3 = [*(a1 + 32) progressView];
  v2 = [*(a1 + 32) progress];
  [v2 fractionCompleted];
  [v3 updateProgressWithValue:?];
}

void sub_100005CC8(uint64_t a1)
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

id sub_100007750()
{
  if (qword_100030D88 != -1)
  {
    dispatch_once(&qword_100030D88, &stru_100028790);
  }

  v1 = qword_100030D90;

  return v1;
}

void sub_1000077A4(id a1)
{
  qword_100030D90 = os_log_create(WFLogSubsystem, "BannerManager");

  _objc_release_x1();
}

void sub_100007A80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[WFBannerManager configuredDisplayLayoutMonitor]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received monitor configuration change: %@", buf, 0x16u);
  }

  v6 = sub_100007750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[WFBannerManager configuredDisplayLayoutMonitor]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Received monitor configuration change: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007CDC;
  block[3] = &unk_1000288A0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  if ([*(a1 + 32) shouldUpdateStateBasedOnLayout:v4] && objc_msgSend(*(a1 + 32), "shouldObserveDisplayLayout"))
  {
    v7 = sub_100007750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[WFBannerManager configuredDisplayLayoutMonitor]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Display layout change matches conditions to present next banner, asking now", buf, 0xCu);
    }

    v8 = [*(a1 + 32) queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007D64;
    v9[3] = &unk_1000288A0;
    v9[4] = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

void sub_100007CDC(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedBanner];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  [v3 performLayoutUpdate];
}

id sub_100007D64(uint64_t a1)
{
  [*(a1 + 32) queue_updateStateWithReason:@"display lit"];
  v2 = *(a1 + 32);

  return [v2 setShouldObserveDisplayLayout:0];
}

void sub_100007F44(uint64_t a1)
{
  v2 = [WFApertureStatusViewController requestIdentifierForContext:*(a1 + 32)];
  v3 = [*(a1 + 40) bannerSource];
  v7 = @"id";
  v8 = v2;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v3 revokePresentableWithRequestIdentifier:v2 reason:@"WFBannerManager: single step home screen collapsed back to normal animated:dismissing" userInfo:1 error:{v4, 0}];

  v6 = [*(a1 + 40) singleStepHomeScreenRevokeTimers];
  [v6 removeObjectForKey:*(a1 + 32)];
}

void sub_100008228(uint64_t a1)
{
  v2 = [*(a1 + 32) actionUserInterfaceListener];
  v1 = [v2 actionInterface];
  [v1 cancelPresentationWithCompletionHandler:&stru_100028D78];
}

void sub_100008328(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) associatedRunningContext];
    v7 = 136315394;
    v8 = "[WFBannerManager bannerViewControllerHomeGestureDidPassThreshold:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s User dismissed via home gesture <%@>", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) dialogRequestCompletionHandler];

  if (v4)
  {
    v5 = [*(a1 + 40) dialogRequestCompletionHandler];
    v6 = [[WFDialogResponse alloc] initWithCancelled:1];
    (v5)[2](v5, v6, 0);

    [*(a1 + 40) setDialogRequestCompletionHandler:0];
  }
}

void sub_100008540(id *a1)
{
  v2 = [a1[4] hasPrefix:@"WFBannerManager: "];
  v3 = sub_100007750();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [a1[5] associatedRunningContext];
      v6 = a1[4];
      v14 = 136315650;
      v15 = "[WFBannerManager bannerViewController:willDismissWithReason:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Banner (%@) will dismiss with reason: %@", &v14, 0x20u);
    }
  }

  else
  {
    if (v4)
    {
      v7 = [a1[5] associatedRunningContext];
      v8 = a1[4];
      v14 = 136315650;
      v15 = "[WFBannerManager bannerViewController:willDismissWithReason:]_block_invoke";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s System will dismiss banner (%@) with reason: %@", &v14, 0x20u);
    }

    [a1[5] systemDismissedBanner];
    [a1[6] cancelAllPendingRequestsForSystemDismiss];
    v9 = [a1[6] actionUserInterfaceListener];
    v10 = [v9 actionInterface];
    v11 = [v10 runningContext];
    v12 = [a1[5] associatedRunningContext];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      [a1[6] setActionUserInterfaceListener:0];
    }
  }
}

void sub_1000087B4(uint64_t a1)
{
  v2 = [*(a1 + 32) bannerPresentationCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) bannerPresentationCompletion];
    v3[2](v3, 1);

    v4 = *(a1 + 32);

    [v4 setBannerPresentationCompletion:0];
  }
}

void sub_100008988(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008AE0;
  v4[3] = &unk_100028918;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void sub_100008A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerForPresenting];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008AD0;
  v3[3] = &unk_100028B80;
  v4 = *(a1 + 40);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_100008AE0(uint64_t a1)
{
  v2 = +[WFBannerPrototypeSettings sharedSettings];
  v3 = [v2 useRemoteAlertsForActionInterfaceDialogRequests];

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 queue_dismissRemoteAlertViewControllerWithReason:@"dismissing action UI scene"];
  }

  else
  {
    [v4 queue_dismissPresentableWithReason:@"dismissPlatterForActionUserInterface" interruptible:0 forced:0];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_100008EF4(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v31 = "[WFBannerManager dialogViewController:didFinishWithResponse:waitForFollowUpRequest:]_block_invoke";
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Dialog finished: %@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) request];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = *(a1 + 40);
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000926C;
  v24[3] = &unk_100028CB8;
  v29 = *(a1 + 56);
  v24[4] = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v10 = v6;
  v27 = v10;
  v11 = v9;
  v28 = v11;
  v12 = objc_retainBlock(v24);
  v13 = v12;
  if (v10 && v11)
  {
    v14 = [v10 configuration];
    v15 = [v14 workflowReference];
    v16 = [v11 promptedStatesData];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v11 promptedStatesData];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000094F0;
      v21[3] = &unk_100028D08;
      v22 = v14;
      v23 = v15;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000095E8;
      v19[3] = &unk_100028D30;
      v19[4] = *(a1 + 48);
      v20 = v13;
      [v18 if_mapAsynchronously:v21 completionHandler:v19];
    }

    else
    {
      v13[2](v13);
    }
  }

  else
  {
    (v12[2])(v12);
  }
}

void sub_10000926C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = sub_100007750();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[WFBannerManager dialogViewController:didFinishWithResponse:waitForFollowUpRequest:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Asked to wait for follow up", buf, 0xCu);
    }

    v3 = [*(a1 + 40) associatedRunningContext];
    [*(a1 + 32) setRunningContextWaitingForFollowUpRequest:v3];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009724;
  block[3] = &unk_1000287E0;
  block[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
  if ([*(a1 + 48) isCancelled])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) associatedRunningContext];
    [v4 queue_removePendingStatusPresentationsForRunningContext:v5];
  }

  if (!*(a1 + 56) || !*(a1 + 64))
  {
    goto LABEL_15;
  }

  v6 = [*(a1 + 32) presentedBanner];
  if (v6)
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 embeddedPlatter];

  if (!v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000097A8;
    v10[3] = &unk_1000288A0;
    v11 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
LABEL_15:
    if ((*(a1 + 72) & 1) == 0)
    {
      [*(a1 + 32) queue_dismissPresentableWithReason:@"dialog view controller did finish with response" interruptible:1 forced:0];
    }
  }
}

void sub_1000094F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = +[VCVoiceShortcutClient standardClient];
  v9 = [*(a1 + 32) actionUUID];
  v10 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000963C;
  v12[3] = &unk_100028CE0;
  v13 = v6;
  v11 = v6;
  [v8 setPerWorkflowStateData:v7 forSmartPromptWithActionUUID:v9 reference:v10 completion:v12];
}

void sub_1000095E8(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_async(v2, *(a1 + 40));
}

void sub_10000963C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100007750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFBannerManager dialogViewController:didFinishWithResponse:waitForFollowUpRequest:]_block_invoke_4";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to set smart prompt data with error: %@", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100009724(uint64_t a1)
{
  v2 = [*(a1 + 32) dialogRequestCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) dialogRequestCompletionHandler];
    v3[2](v3, *(a1 + 40), 0);

    v4 = *(a1 + 32);

    [v4 setDialogRequestCompletionHandler:0];
  }
}

void sub_100009840(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) pendingRequests];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [[WFDialogResponse alloc] initWithCancelled:1];
            v8 = [v6 completionHandler];

            if (v8)
            {
              v9 = [v6 completionHandler];
              (v9)[2](v9, v7, 0);

              [v6 setCompletionHandler:0];
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_100009CC0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) defaultPostOptions];
  if ([*v2 presentsApertureStatus])
  {
    v4 = [WFSingleStepHomeScreenCompletionStatusViewController alloc];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) attribution];
    v7 = [(WFApertureStatusViewController *)v4 initWithRunningContext:v5 attribution:v6];

    [(WFApertureStatusViewController *)v7 setDelegate:*(a1 + 32)];
    [(WFApertureStatusViewController *)v7 setCompletingSuccessfully:1];
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [WFApertureStatusViewController requestIdentifierForContext:v8];
    v11 = [v3 mutableCopy];
    v12 = [(WFApertureStatusViewController *)v9 postOptions];

    v13 = [v11 if_dictionaryByAddingEntriesFromDictionary:v12];

    v3 = v13;
  }

  else
  {
    v14 = [[WFSingleStepHomeScreenShortcutCompletionDialogViewController alloc] initWithRequest:*(a1 + 48)];
    [v14 setAssociatedRunningContext:*(a1 + 40)];
    v9 = [*(a1 + 32) requestContainerForRunningContext:*(a1 + 40)];
    v15 = sub_100007750();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(WFSingleStepHomeScreenCompletionStatusViewController *)v9 embeddedPlatter];
      *buf = 136315650;
      v39 = "[WFBannerManager handleSingleStepHomeScreenDialogRequest:runningContext:completionHandler:]_block_invoke";
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Morphing to platter %@ in container %@", buf, 0x20u);
    }

    [(WFSingleStepHomeScreenCompletionStatusViewController *)v9 setEmbeddedPlatter:v14];
    [*(a1 + 32) preferredPresentationSize];
    v18 = v17;
    [*(a1 + 32) preferredPresentationSize];
    [v14 platterHeightForWidth:v18 withMaximumHeight:?];
    [v14 setPreferredContentSize:{v18, v19}];
    v10 = [(WFApertureStatusViewController *)v9 requestIdentifier];
  }

  objc_initWeak(&location, *(a1 + 32));
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000A128;
  v32[3] = &unk_100028C90;
  objc_copyWeak(&v36, &location);
  v20 = v10;
  v33 = v20;
  v21 = v9;
  v34 = v21;
  v35 = *(a1 + 40);
  v22 = objc_retainBlock(v32);
  v23 = [*(a1 + 32) presentedBanner];
  v24 = v23 == v21;

  if (v24)
  {
    v27 = 0;
    goto LABEL_12;
  }

  v25 = [*(a1 + 32) bannerSource];
  v31 = 0;
  v26 = [v25 postPresentable:v21 options:0 userInfo:v3 error:&v31];
  v27 = v31;

  if (v26)
  {
LABEL_12:
    (v22[2])(v22, 1.0);
    goto LABEL_13;
  }

  v28 = sub_100007750();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[WFBannerManager handleSingleStepHomeScreenDialogRequest:runningContext:completionHandler:]_block_invoke_5";
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Unable to post single step home screen completion (%@)", buf, 0x16u);
  }

LABEL_13:
  v29 = *(a1 + 56);
  v30 = [[WFDialogResponse alloc] initWithResponseCode:0];
  (*(v29 + 16))(v29, v30, 0);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void sub_10000A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A128(id *a1, double a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A250;
  v7[3] = &unk_100028C68;
  v7[4] = WeakRetained;
  v8 = a1[4];
  v9 = @"WFBannerManager: Hit single step home screen revoke timer.";
  v10 = a1[5];
  v11 = a1[6];
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:a2];
  v6 = [WeakRetained singleStepHomeScreenRevokeTimers];
  [v6 setObject:v5 forKey:a1[6]];
}

void sub_10000A250(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) presentsApertureStatus])
  {
    v4 = [*(a1 + 32) bannerSource];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v20 = @"id";
    v21 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8 = [v4 revokePresentableWithRequestIdentifier:v5 reason:v6 animated:1 userInfo:v7 error:0];
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v4 = v10;

    [v4 dismissEmbeddedPlatterWithCompletion:&stru_100028C18 interruptible:0];
    objc_initWeak(&location, *(a1 + 32));
    v11 = [WFDispatchSourceTimer alloc];
    v12 = [*(a1 + 32) queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000A4D8;
    v15[3] = &unk_100028C40;
    objc_copyWeak(&v18, &location);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v13 = [v11 initWithInterval:v12 queue:v15 handler:0.5];

    [v13 setPreventSuspension:1];
    [v13 start];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v14 = [*(a1 + 32) singleStepHomeScreenRevokeTimers];
  [v14 removeObjectForKey:*(a1 + 64)];
}

void sub_10000A49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A4D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained bannerSource];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = @"id";
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [v3 revokePresentableWithRequestIdentifier:v5 reason:v4 animated:0 userInfo:v6 error:0];
}

void sub_10000AF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AF94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [NSString stringWithFormat:@"pause timer kicked, %.2f seconds elapsed", *(a1 + 40)];
  v3 = [WeakRetained queue_resumeDialogPresentationWithReason:v2 onRequestFromHost:0];
}

void sub_10000B178(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) context];
  if (([*(a1 + 40) queuedDialogIsActionUIRequest:*v2] & 1) == 0)
  {
    objc_initWeak(location, *(a1 + 40));
    v4 = *(a1 + 40);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000B5B4;
    v31[3] = &unk_100028B58;
    v32 = *(a1 + 32);
    objc_copyWeak(&v33, location);
    [v4 setDialogRequestCompletionHandler:v31];
    objc_destroyWeak(&v33);

    objc_destroyWeak(location);
  }

  if ([*(a1 + 40) queuedDialogIsActionUIRequest:*(a1 + 32)])
  {
    v5 = [[WFBannerViewController alloc] initWithRunningContext:v3];
    [(WFBannerViewController *)v5 setDelegate:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 32) isFollowUp])
  {
    v6 = [*(a1 + 40) presentedPlatter];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;

    v21 = [*(a1 + 32) request];
    v22 = [(WFBannerViewController *)v5 canHandleFollowUpRequest:v21];

    if (v22)
    {
      v23 = [*(a1 + 32) request];
      [(WFBannerViewController *)v5 handleFollowUpRequest:v23];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) request];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v10 = sub_100007750();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = [*(a1 + 32) request];
        *location = 136315394;
        *&location[4] = "[WFBannerManager getBannerForQueuedDialogRequest:dialogIsBreakthroughSmartPrompt:completionHandler:]_block_invoke";
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s %@ was received, but does not have a wf_dialogViewControllerClass implementation. Cancelling.", location, 0x16u);
      }

      v12 = [*(a1 + 32) completionHandler];
      v13 = [[WFDialogResponse alloc] initWithCancelled:1];
      (v12)[2](v12, v13, 0);
    }

    v14 = [*(a1 + 32) request];
    v15 = [v14 wf_dialogViewControllerClass];

    v16 = [v15 alloc];
    v17 = [*(a1 + 32) request];
    v18 = [v16 initWithRequest:v17];

    [v18 setAssociatedRunningContext:v3];
    [v18 setDelegate:*(a1 + 40)];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000B674;
    v24[3] = &unk_100028BA8;
    v30 = *(a1 + 56);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v25 = v19;
    v26 = v20;
    v27 = v18;
    v29 = *(a1 + 48);
    v28 = v3;
    v5 = v18;
    [(WFBannerViewController *)v5 prepareForPresentationWithCompletionHandler:v24];
  }
}

void sub_10000B590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_10000B5B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) completionHandler];
    (v7)[2](v7, v9, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDialogRequestCompletionHandler:0];
}

void sub_10000B674(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B760;
  block[3] = &unk_100028BA8;
  v12 = *(a1 + 72);
  v2 = (a1 + 40);
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *v2;
  v7 = v3;
  v4 = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000B760(uint64_t a1)
{
  if (*(a1 + 72) == 1 && ([*(a1 + 32) request], v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    v4 = [*(a1 + 40) presentedBanner];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;

    v10 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B970;
    v11[3] = &unk_100028B80;
    v12 = *(a1 + 64);
    [v9 presentViewController:v10 animated:1 completion:v11];

    v6 = v12;
  }

  else
  {
    v6 = [*(a1 + 40) requestContainerForRunningContext:*(a1 + 56)];
    v7 = sub_100007750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 embeddedPlatter];
      *buf = 136315650;
      v14 = "[WFBannerManager getBannerForQueuedDialogRequest:dialogIsBreakthroughSmartPrompt:completionHandler:]_block_invoke_2";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Morphing to platter %@ in container %@", buf, 0x20u);
    }

    [v6 setEmbeddedPlatter:*(a1 + 48)];
    (*(*(a1 + 64) + 16))();
  }
}

void sub_10000BB14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007750();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v26 = "[WFBannerManager requestContainerForRunningContext:]_block_invoke";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s User dismissed via dismissal gesture for running context: <%@>", buf, 0x16u);
  }

  v6 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BDF8;
  block[3] = &unk_100028850;
  v16 = *(a1 + 32);
  v7 = v16.i64[0];
  v23 = vextq_s8(v16, v16, 8uLL);
  v8 = v3;
  v24 = v8;
  dispatch_async(v6, block);

  v9 = [*(a1 + 40) dialogRequestCompletionHandler];

  if (v9)
  {
    v10 = [*(a1 + 40) dialogRequestCompletionHandler];
    v11 = [[WFDialogResponse alloc] initWithCancelled:1];
    (v10)[2](v10, v11, 0);

    [*(a1 + 40) setDialogRequestCompletionHandler:0];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BE3C;
  v21[3] = &unk_1000288A0;
  v21[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v21);
  v12 = dispatch_time(0, 550000000);
  v13 = [*(a1 + 40) queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BECC;
  v18[3] = &unk_100028850;
  v17 = *(a1 + 32);
  v14 = v17.i64[0];
  v19 = vextq_s8(v17, v17, 8uLL);
  v20 = v8;
  v15 = v8;
  dispatch_after(v12, v13, v18);
}

id sub_10000BDF8(uint64_t a1)
{
  [*(a1 + 32) queue_removePendingStatusPresentationsForRunningContext:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 queue_revokeIslandPresentableForContext:v3 reason:v4];
}

void sub_10000BE3C(uint64_t a1)
{
  v2 = [*(a1 + 32) actionUserInterfaceListener];

  if (v2)
  {
    v4 = [*(a1 + 32) actionUserInterfaceListener];
    v3 = [v4 actionInterface];
    [v3 cancelPresentationWithCompletionHandler:&stru_100028B08];
  }
}

void sub_10000BFA8(uint64_t a1)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000C62C;
  v42 = sub_10000C63C;
  v43 = 0;
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C644;
  block[3] = &unk_100028AE8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v37 = &v38;
  block[4] = v3;
  v36 = v4;
  dispatch_sync(v2, block);

  v5 = [v39[5] runningContext];
  if (!v5 || ([v39[5] attribution], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v7))
  {
    v15 = sub_100007750();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v45 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s Tracking workflow is not available for the requested status presentation", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) presentsApertureStatus];
    v9 = sub_100007750();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 136315138;
        v45 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Getting view for the island...", buf, 0xCu);
      }

      v11 = [v39[5] associatedPill];
      if (v11 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
      {
        v13 = [v39[5] associatedPill];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v25 = v14;
      }

      else
      {
        v21 = [WFApertureStatusViewController alloc];
        v22 = [v39[5] attribution];
        v23 = [v39[5] progress];
        v24 = [(WFApertureStatusViewController *)v21 initWithRunningContext:v5 attribution:v22 progress:v23];

        [*(a1 + 32) preferredPresentationSize];
        [(WFApertureStatusViewController *)v24 setPreferredContentSize:?];
        v25 = v24;
      }

      if ([v39[5] completed])
      {
        [(WFApertureStatusViewController *)v25 setCompletingSuccessfully:1];
        v30 = dispatch_time(0, 1000000000);
        v31 = [*(a1 + 32) queue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000C6C8;
        v33[3] = &unk_1000287E0;
        v33[4] = *(a1 + 32);
        v34 = v5;
        dispatch_after(v30, v31, v33);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (v10)
      {
        *buf = 136315138;
        v45 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Getting status banner...", buf, 0xCu);
      }

      v16 = [*(a1 + 32) presentedPlatter];
      if (v16 && (objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, (v17 & 1) != 0))
      {
        v18 = sub_100007750();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v45 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Already presented", buf, 0xCu);
        }

        v19 = [*(a1 + 32) presentedPlatter];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v25 = v20;

        v28 = 0;
      }

      else
      {
        v25 = objc_alloc_init(WFCompactStatusViewController);
        v26 = [v39[5] progress];
        [(WFApertureStatusViewController *)v25 setProgress:v26];

        v27 = [v39[5] attribution];
        [(WFApertureStatusViewController *)v25 setAttribution:v27];

        [(WFApertureStatusViewController *)v25 setAssociatedRunningContext:v5];
        v28 = [*(a1 + 32) requestContainerForRunningContext:v5];
        v29 = sub_100007750();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v45 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke";
          v46 = 2112;
          v47 = v25;
          v48 = 2112;
          v49 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Queuing status platter %@ in container %@", buf, 0x20u);
        }

        [v28 setQueuedStatusPlatter:v25];
      }

      v32 = v28;
      (*(*(a1 + 48) + 16))();
    }
  }

  _Block_object_dispose(&v38, 8);
}

void sub_10000C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C62C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C644(uint64_t a1)
{
  v6 = [*(a1 + 32) runningPersistentWorkflows];
  v2 = [*(a1 + 40) context];
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10000C6C8(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFBannerManager getBannerForQueuedStatusPresentation:completionHandler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Revoking status view controller after delay", &v4, 0xCu);
  }

  [*(a1 + 32) queue_revokeIslandPresentableForContext:*(a1 + 40) reason:@"timer fired auto-dismiss completed persistent shortcut"];
  return [*(a1 + 32) queue_stopTrackingPersistentModeContext:*(a1 + 40) withReason:@"completion auto-dismiss timer fired and presentable revoked"];
}

void sub_10000CD50(uint64_t a1)
{
  v2 = [*(a1 + 40) progress];
  [*(a1 + 32) setProgress:v2];

  v3 = [*(a1 + 40) completed];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = [v4 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D244;
    block[3] = &unk_1000288A0;
    block[4] = *(a1 + 48);
    dispatch_async(v5, block);

    [*(a1 + 32) setCompletingSuccessfully:1];
    v6 = dispatch_time(0, 1000000000);
    v7 = [*(a1 + 48) queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000D25C;
    v24[3] = &unk_1000287E0;
    v8 = *(a1 + 56);
    v24[4] = *(a1 + 48);
    v25 = v8;
    dispatch_after(v6, v7, v24);
  }

  else
  {
    v9 = [v4 presentedBanner];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [*(a1 + 48) presentedPlatter];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v11 && ![v11 dismissalPhase] && v14 && (objc_msgSend(v14, "associatedRunningContext"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", *(a1 + 56)), v15, v16))
    {
      v17 = *(a1 + 32);
      v18 = [v14 platterView];
      v19 = [v18 attribution];
      [v17 setAttribution:v19];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000D2AC;
      v22[3] = &unk_1000288A0;
      v23 = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, v22);
    }

    else
    {
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) attribution];
      [v20 setAttribution:v21];
    }
  }
}

id sub_10000D050(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Popping completion checkmark on status view controller: %@", &v5, 0x16u);
  }

  return [*(a1 + 32) transitionToCompleted:1 animated:1];
}

id sub_10000D11C(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Revoking status view controller after delay", &v4, 0xCu);
  }

  [*(a1 + 32) queue_dismissPresentableWithReason:@"timer fired auto-dismiss completed persistent shortcut" interruptible:0 forced:0];
  return [*(a1 + 32) queue_stopTrackingPersistentModeContext:*(a1 + 40) withReason:@"completion auto-dismiss timer fired and presentable revoked"];
}

void sub_10000D1F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) progress];
  [v1 setProgress:v2];
}

id sub_10000D25C(uint64_t a1)
{
  [*(a1 + 32) queue_revokeIslandPresentableForContext:*(a1 + 40) reason:@"updatePresentedStatusWithProgressForRunningContext's auto dismiss timer fired"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 queue_stopTrackingPersistentModeContext:v3 withReason:@"updatePresentedStatusWithProgressForRunningContext's auto dismiss timer fired"];
}

void sub_10000D2AC(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  v3 = [v2 progressSuppressionState];

  if (v3 == 1)
  {
    v4 = [*(a1 + 32) progressView];
    [v4 setProgressSuppressionState:2];
  }
}

void sub_10000D964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D9A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pendingRequests];
  [v2 addObject:*(a1 + 32)];

  [WeakRetained queue_updateStateWithReason:@"Persistent status queued."];
}

void sub_10000E1E8(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultPostOptions];
  v3 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) postOptions];
    v5 = [v2 if_dictionaryByAddingEntriesFromDictionary:v4];

    v2 = v5;
  }

  v6 = [*(a1 + 32) inflightRequest];
  if (v6)
  {

LABEL_6:
    v7 = sub_100007750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [v8 requestIdentifier];
      *buf = 136315650;
      v23 = "[WFBannerManager queue_presentBanner:completion:]_block_invoke_2";
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Presenting banner (%@) for running context (%@)", buf, 0x20u);
    }

    v10 = [*(a1 + 32) bannerSource];
    v11 = *(a1 + 40);
    v21 = 0;
    v12 = [v10 postPresentable:v11 options:0 userInfo:v2 error:&v21];
    v13 = v21;

    if (v12)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        [*(a1 + 32) setPresentedBanner:*(a1 + 40)];
        v14 = [*(a1 + 32) queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000E4EC;
        block[3] = &unk_1000287E0;
        v15 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v20 = v15;
        dispatch_async(v14, block);
      }
    }

    else
    {
      v16 = sub_100007750();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        *buf = 136315650;
        v23 = "[WFBannerManager queue_presentBanner:completion:]_block_invoke";
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to post banner: %@, error: %@", buf, 0x20u);
      }
    }

    goto LABEL_17;
  }

  if (*(a1 + 48))
  {
    goto LABEL_6;
  }

  v18 = sub_100007750();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[WFBannerManager queue_presentBanner:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Didn't find an inflight request for the banner, so not presenting anything", buf, 0xCu);
  }

  v13 = 0;
LABEL_17:
}

void sub_10000E4EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) associatedRunningContext];
  [v1 queue_updatePresentedStatusForRunningContext:v2];
}

void sub_10000E6EC(uint64_t a1)
{
  v2 = [WFApertureStatusViewController requestIdentifierForContext:*(a1 + 32)];
  v3 = [*(a1 + 40) bannerSource];
  v4 = [*(a1 + 40) dismissalReasonWithReason:*(a1 + 48)];
  v9 = 0;
  v5 = [v3 revokePresentableWithRequestIdentifier:v2 reason:v4 animated:1 userInfo:&__NSDictionary0__struct error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = sub_100007750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v11 = "[WFBannerManager queue_revokeIslandPresentableForContext:reason:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to revoke banner for running context: %@, error: %@", buf, 0x20u);
    }
  }
}

void sub_10000F124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_10000F15C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F244;
  block[3] = &unk_1000289E0;
  objc_copyWeak(&v7, (a1 + 56));
  block[4] = WeakRetained;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);
  dispatch_async(v3, block);

  objc_destroyWeak(&v7);
}

void sub_10000F244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) presentedBanner];

  if (v3 == WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [NSString stringWithFormat:@"hinting timer fired, hint reason: %@", *(a1 + 48)];
    [v5 queue_revokePresentableForContext:v6 reason:v7 forced:*(a1 + 64)];
  }

  else
  {
    v4 = sub_100007750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[WFBannerManager queue_dismissPresentableWithReason:interruptible:forced:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Revoked running context does not match current presentable.", buf, 0xCu);
    }
  }
}

void sub_1000100EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007750();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Presenting status presentation: %@", buf, 0x16u);
  }

  if (([*(a1 + 32) presentsApertureStatus] & 1) == 0)
  {
    [*(a1 + 32) setInflightRequest:v3];
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010C24;
  v7[3] = &unk_100028968;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v5 getBannerForQueuedStatusPresentation:v6 completionHandler:v7];
}

void sub_10001023C(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v11 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Requesting remote alert scene for queued action UI request: %@", buf, 0x16u);
  }

  v4 = +[WFAngelSceneManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010838;
  v8[3] = &unk_1000288A0;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000108F8;
  v6[3] = &unk_1000289B8;
  v6[4] = v9;
  v7 = v5;
  [v4 getWindowWithCancellationHandler:v8 completionHandler:v6];
}

void sub_1000103BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010488;
  block[3] = &unk_100028850;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100010488(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v13 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke_7";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Got banner for queued dialog: %@, presentable: %@", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000105D8;
    v9[3] = &unk_100028940;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v10 = v7;
    v11 = v8;
    [v5 queue_presentBanner:v6 completion:v9];
  }

  else
  {
    [*(a1 + 48) setInflightRequest:0];
  }
}

id sub_1000105D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007750();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 - 1) > 5)
    {
      v5 = @"unknown (uh oh)";
    }

    else
    {
      v5 = *(&off_100028E18 + a2 - 1);
    }

    v6 = *(a1 + 32);
    v18 = 136315650;
    v19 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Banner presented for queued dialog with result: %@, dialog: %@", &v18, 0x20u);
  }

  if (a2 == 1)
  {
    if ([*(a1 + 40) queuedDialogIsActionUIRequest:*(a1 + 32)])
    {
      v7 = [*(a1 + 32) completionHandler];

      if (v7)
      {
        v8 = [*(a1 + 32) completionHandler];
        v9 = [WFShowActionInterfaceDialogResponse alloc];
        v10 = [*(a1 + 40) actionUserInterfaceListener];
        v11 = [v10 endpoint];
        v12 = [v9 initWithListenerEndpoint:v11 userInterfaceType:WFUserInterfaceTypeUIKit];
        (v8)[2](v8, v12, 0);

        [*(a1 + 32) setCompletionHandler:0];
      }
    }
  }

  v13 = [*(a1 + 40) queue];
  dispatch_assert_queue_V2(v13);

  result = [*(a1 + 40) setInflightRequest:0];
  if ((a2 - 5) <= 1)
  {
    v15 = [*(a1 + 32) completionHandler];

    if (v15)
    {
      v16 = [*(a1 + 32) completionHandler];
      v17 = [[WFDialogResponse alloc] initWithResponseCode:1];
      (v16)[2](v16, v17, 0);

      [*(a1 + 32) setCompletionHandler:0];
    }

    return [*(a1 + 40) queue_updateStateWithReason:{@"previous dialog failed, moving on"}];
  }

  return result;
}

void sub_100010838(uint64_t a1)
{
  v2 = [*(a1 + 32) actionUserInterfaceListener];

  if (v2)
  {
    v3 = [*(a1 + 32) actionUserInterfaceListener];
    v4 = [v3 actionInterface];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100010B84;
    v5[3] = &unk_1000288A0;
    v5[4] = *(a1 + 32);
    [v4 cancelPresentationWithCompletionHandler:v5];
  }
}

void sub_1000108F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[WFBannerPrototypeSettings sharedSettings];
  v5 = [v4 bannerFramesEnabled];

  if (v5)
  {
    v6 = [v3 layer];
    v7 = +[UIColor systemIndigoColor];
    v8 = [v7 colorWithAlphaComponent:0.7];
    [v6 setBorderColor:{objc_msgSend(v8, "CGColor")}];

    v9 = [v3 layer];
    [v9 setBorderWidth:2.0];

    v10 = +[WFDevice currentDevice];
    [v10 screenCornerRadius];
    [v3 _setContinuousCornerRadius:?];
  }

  v11 = *(a1 + 32);
  v12 = [v3 rootViewController];
  [v11 setPresentedRemoteAlertViewController:v12];

  v13 = [*(a1 + 32) queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100010A98;
  v16[3] = &unk_1000287E0;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v17 = v14;
  v18 = v15;
  dispatch_async(v13, v16);
}

id sub_100010A98(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v4 = [WFShowActionInterfaceDialogResponse alloc];
    v5 = [*(a1 + 40) actionUserInterfaceListener];
    v6 = [v5 endpoint];
    v7 = [v4 initWithListenerEndpoint:v6 userInterfaceType:WFUserInterfaceTypeUIKit];
    (v3)[2](v3, v7, 0);

    [*(a1 + 32) setCompletionHandler:0];
  }

  v8 = *(a1 + 40);

  return [v8 setInflightRequest:0];
}

void sub_100010B84(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010C14;
  block[3] = &unk_1000288A0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100010C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010CEC;
  block[3] = &unk_100028850;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100010CEC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100010DD8;
    v5[3] = &unk_100028940;
    v5[4] = v2;
    v6 = *(a1 + 48);
    [v2 queue_presentBanner:v3 completion:v5];
  }

  else
  {
    if (([*(a1 + 40) presentsApertureStatus] & 1) == 0)
    {
      [*(a1 + 40) setInflightRequest:0];
    }

    v4 = *(a1 + 40);

    [v4 queue_updateStateWithReason:{@"status completion was in queue but tracking workflow was unavailable, moving on"}];
  }
}

void sub_100010DD8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = sub_100007750();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2 == 3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v10 = 136315394;
      v11 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke_3";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Tried presenting status (%@) but display was not lit. Not moving on for now.", &v10, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      if ((a2 - 1) > 5)
      {
        v8 = @"unknown (uh oh)";
      }

      else
      {
        v8 = *(&off_100028DE8 + a2 - 1);
      }

      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[WFBannerManager queue_updateStateWithReason:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Status banner presented with result: %@, status: %@", &v10, 0x20u);
    }

    if (([*(a1 + 32) presentsApertureStatus] & 1) == 0)
    {
      [*(a1 + 32) setInflightRequest:0];
    }

    [*(a1 + 32) queue_updateStateWithReason:@"a status banner was just presented and we need to check if a dialog for this shortcut came in while that was happening"];
  }
}

void sub_1000113E4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedBanner];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = v3;

  v4 = [v9 associatedRunningContext];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5)
  {
    v6 = [v9 queuedStatusPlatter];

    if (v6)
    {
      [v9 setQueuedStatusPlatter:0];
    }

    v7 = [*(a1 + 32) presentedPlatter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v8 = [v9 dismissalPhase];

      if (v8 != 1)
      {
        goto LABEL_13;
      }
    }

    [*(a1 + 32) queue_dismissPresentableWithReason:@"application was launched on last step of run" interruptible:0 forced:0];
  }

LABEL_13:
  [*(a1 + 32) queue_stopTrackingPersistentModeContext:*(a1 + 40) withReason:@"application was launched on last step of run"];
  [*(a1 + 32) queue_removePendingStatusPresentationsForRunningContext:*(a1 + 40)];
}

void sub_100011634(uint64_t a1)
{
  v2 = [*(a1 + 32) runningPersistentWorkflows];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (([v3 completed] & 1) == 0)
    {
      [v3 setAttribution:*(a1 + 48)];
      [*(a1 + 32) queue_updatePresentedStatusForRunningContext:*(a1 + 40)];
      v4 = [v3 associatedPill];
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100011774;
          block[3] = &unk_1000288A0;
          v6 = v4;
          v4 = v4;
          dispatch_async(&_dispatch_main_q, block);
        }
      }
    }
  }

  else
  {

    v3 = 0;
  }
}

void sub_100011774(uint64_t a1)
{
  v1 = [*(a1 + 32) progressView];
  [v1 setProgressSuppressionState:3];
}

void sub_100011870(uint64_t a1)
{
  v2 = [*(a1 + 32) queue_resumeDialogPresentationWithReason:@"host asked us to" onRequestFromHost:1];
  (*(*(a1 + 40) + 16))();
}

void sub_1000119B4(uint64_t a1)
{
  v2 = [*(a1 + 32) queue_pauseDialogPresentationForDuration:*(a1 + 40) withReason:@"host asked us to"];
  (*(*(a1 + 48) + 16))();
}

void sub_100011AF8(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v43 = "[WFBannerManager dismissPresentedContentForRunningContext:completionHandler:]_block_invoke";
    v44 = 2112;
    v45 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Dismissing content for running context: %@", buf, 0x16u);
  }

  [*(a1 + 40) setRunningContextWaitingForFollowUpRequest:0];
  v4 = [*(a1 + 40) actionUserInterfaceListener];
  v5 = [v4 actionInterface];
  v6 = [v5 runningContext];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = sub_100007750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[WFBannerManager dismissPresentedContentForRunningContext:completionHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Found active action UI scene, dismissing", buf, 0xCu);
    }

    [*(a1 + 40) queue_dismissRemoteAlertViewControllerWithReason:@"dismiss presented content was called for the currently presented action UI"];
  }

  v9 = [*(a1 + 40) presentedBanner];
  v10 = [v9 associatedRunningContext];
  v11 = [v10 isEqual:*(a1 + 32)];

  v12 = [*(a1 + 40) inflightRequest];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 context];

  v16 = [v15 isEqual:*(a1 + 32)];
  v17 = [*(a1 + 40) presentedPlatter];
  if (v17)
  {
    objc_opt_class();
    v18 = objc_opt_isKindOfClass() & 1;
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if ((v18 & v11) == 1)
    {
      v21 = sub_100007750();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v43 = "[WFBannerManager dismissPresentedContentForRunningContext:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Can't dismiss status through dismissPresentedContent:", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v17 = v20;
    if (v16)
    {
LABEL_25:
      v22 = sub_100007750();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v43 = "[WFBannerManager dismissPresentedContentForRunningContext:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s The inflight request is for a dialog from this run, cancelling it", buf, 0xCu);
      }

      [*(a1 + 40) setInflightRequest:0];
      if (!v11)
      {
        goto LABEL_28;
      }

LABEL_22:
      [*(a1 + 40) queue_dismissPresentableWithReason:@"dismissPresentedContentForRunningContext" interruptible:1 forced:0];
      [*(a1 + 40) queue_updateStateWithReason:@"dismiss presented content was called for the currently presented banner"];
LABEL_23:
      (*(*(a1 + 48) + 16))();
      goto LABEL_43;
    }
  }

  else if (v16)
  {
    goto LABEL_25;
  }

  if (v11)
  {
    goto LABEL_22;
  }

LABEL_28:
  v36 = v17;
  v23 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = a1;
  v25 = [*(a1 + 40) pendingRequests];
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v37 + 1) + 8 * i);
        if (v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;

        v33 = [v32 context];
        v34 = [v33 isEqual:*(v24 + 32)];

        if (v34)
        {
          [v23 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v27);
  }

  v35 = [*(v24 + 40) pendingRequests];
  [v35 removeObjectsInArray:v23];

  (*(*(v24 + 48) + 16))();
  v17 = v36;
LABEL_43:
}

void sub_1000120E8(id *a1)
{
  v2 = [a1[4] presentedBanner];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [a1[4] presentedBanner];
  v6 = [v5 associatedRunningContext];

  if (v4)
  {
    v7 = [a1[5] automationType];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 identifier];
      v9 = [a1[5] identifier];
      v10 = [v8 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        v26 = [v6 workflowIdentifier];
        if (v26)
        {
          v27 = v26;
          v28 = [a1[5] workflowIdentifier];
          if (v28)
          {
            v29 = v28;
            v30 = [a1[5] workflowIdentifier];
            v31 = [v6 workflowIdentifier];
            v32 = [v30 isEqualToString:v31];

            if (v32)
            {
              v33 = sub_100007750();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s The incoming dialog is from a new run of the same shortcut. Discarding new run and performing bump animation.", buf, 0xCu);
              }

              v66[0] = _NSConcreteStackBlock;
              v66[1] = 3221225472;
              v66[2] = sub_100012970;
              v66[3] = &unk_1000288A0;
              v67 = v4;
              dispatch_async(&_dispatch_main_q, v66);
              v34 = a1[7];
              v35 = [[WFDialogResponse alloc] initWithCancelled:1];
              v34[2](v34, v35, 0);

              v17 = v67;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v44 = sub_100007750();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke_2";
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s A presentable for a different shortcut has come in, immediately revoking the currently presented banner and cancelling the presented dialog. Presenting next dialog after a 0.3s delay.", buf, 0xCu);
        }

        v45 = [a1[4] runningPersistentWorkflows];
        v22 = [v45 objectForKey:v6];

        if (v22)
        {
          v46 = [(WFQueuedDialog *)v22 progress];
          [v46 cancel];
        }

        else
        {
          v47 = a1[4];
          v48 = [0 runningContext];
          [v47 queue_removePendingStatusPresentationsForRunningContext:v48];

          [a1[4] queue_dismissPresentableWithReason:@"dismissPresentedContentForRunningContext" interruptible:0 forced:1];
          v49 = [a1[4] dialogRequestCompletionHandler];

          if (v49)
          {
            v50 = [a1[4] dialogRequestCompletionHandler];
            v51 = [[WFDialogResponse alloc] initWithCancelled:1];
            (v50)[2](v50, v51, 0);

            [a1[4] setDialogRequestCompletionHandler:0];
          }
        }

        v52 = dispatch_time(0, 200000000);
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100012978;
        v63[3] = &unk_1000288F0;
        v58 = a1[4];
        v53 = a1[6];
        v54 = a1[5];
        v55 = a1[7];
        *&v56 = v54;
        *(&v56 + 1) = v55;
        *&v57 = v58;
        *(&v57 + 1) = v53;
        v64 = v57;
        v65 = v56;
        dispatch_after(v52, &_dispatch_main_q, v63);

LABEL_52:
        goto LABEL_53;
      }
    }
  }

  v11 = a1[6];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = a1[6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1[4] handleSingleStepHomeScreenDialogRequest:a1[6] runningContext:a1[5] completionHandler:a1[7]];
      goto LABEL_53;
    }

    v19 = sub_100007750();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[5];
      v20 = a1[6];
      *buf = 136315650;
      v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke_2";
      v70 = 2112;
      v71 = v20;
      v72 = 2112;
      v73 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Queuing a dialog request: %@ for running context: %@", buf, 0x20u);
    }

    v22 = [[WFQueuedDialog alloc] initWithRequest:a1[6] context:a1[5] completionHandler:a1[7]];
    v23 = [a1[4] runningContextWaitingForFollowUpRequest];
    v24 = [v23 isEqual:a1[5]];

    if (v24)
    {
      v25 = sub_100007750();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Moving dialog request to front of line, since it is the follow-up we are waiting for", buf, 0xCu);
      }
    }

    else
    {
      if (([a1[4] presentsApertureStatus] & 1) == 0)
      {
        v36 = [a1[4] presentedPersistentRunningContext];
        if (v36)
        {
          v37 = v36;
          v38 = [a1[4] presentedPersistentRunningContext];
          v39 = [v38 isEqual:a1[5]];

          if (v39)
          {
            v40 = sub_100007750();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s Moving dialog request to front of line, since it is part of the current presented persistent running context", buf, 0xCu);
            }

            goto LABEL_39;
          }
        }
      }

      v41 = [a1[4] runningContextWaitingForFollowUpRequest];
      v42 = [v41 isEqual:a1[5]];

      if (!v42)
      {
        v43 = [a1[4] pendingRequests];
        [v43 addObject:v22];
        goto LABEL_41;
      }

      v25 = sub_100007750();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
        goto LABEL_37;
      }
    }

    [(WFQueuedDialog *)v22 setIsFollowUp:1];
LABEL_39:
    v43 = [a1[4] pendingRequests];
    [v43 insertObject:v22 atIndex:0];
LABEL_41:

    if ([a1[4] runningContextIsInPersistentMode:a1[5]])
    {
      [a1[4] queue_removePendingStatusPresentationsForRunningContext:a1[5]];
    }

    [a1[4] queue_updateStateWithReason:@"an incoming dialog came in"];
    goto LABEL_52;
  }

  v12 = sub_100007750();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[5];
    *buf = 136315394;
    v69 = "[WFBannerManager showDialogRequest:runningContext:completionHandler:]_block_invoke_2";
    v70 = 2112;
    v71 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Handling Link snippet sizing request for context: %@", buf, 0x16u);
  }

  v14 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012988;
  block[3] = &unk_1000288C8;
  v15 = a1[6];
  v16 = a1[4];
  v60 = v15;
  v61 = v16;
  v62 = a1[7];
  dispatch_after(v14, &_dispatch_main_q, block);

  v17 = v60;
LABEL_14:

LABEL_53:
}

void sub_100012988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if ([v4 siriRequest])
  {
    [*(a1 + 40) calculatedSiriSnippetSizeWithDialog:{objc_msgSend(v4, "hasDialog")}];
  }

  else
  {
    [*(a1 + 40) preferredContainerSize];
    [WFCompactPlatterPresentationController preferredSizeForPresentingInContainerViewOfSize:?];
  }

  v6 = v5;
  v7 = +[UIScreen mainScreen];
  v8 = [v7 traitCollection];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[UITraitCollection currentTraitCollection];
  }

  v11 = v10;

  if ([*(a1 + 40) currentUserInterfaceStyle])
  {
    v12 = [*(a1 + 40) currentUserInterfaceStyle];
    if (v12 != [v11 userInterfaceStyle])
    {
      v20[0] = v11;
      v13 = +[UITraitCollection traitCollectionWithUserInterfaceStyle:](UITraitCollection, "traitCollectionWithUserInterfaceStyle:", [*(a1 + 40) currentUserInterfaceStyle]);
      v20[1] = v13;
      v14 = [NSArray arrayWithObjects:v20 count:2];
      v15 = [UITraitCollection traitCollectionWithTraitsFromCollections:v14];

      v11 = v15;
    }
  }

  else
  {
    [*(a1 + 40) setCurrentUserInterfaceStyle:{objc_msgSend(v11, "userInterfaceStyle")}];
  }

  v16 = +[NSLocale currentLocale];
  v17 = [[LNSnippetEnvironment alloc] initWithSize:v16 locale:v11 traitCollection:{v6, 1.79769313e308}];
  v18 = *(a1 + 48);
  v19 = [[WFLinkSnippetEnvironmentDialogResponse alloc] initWithEnvironment:v17];
  (*(v18 + 16))(v18, v19, 0);
}

uint64_t sub_100012CF4(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v29 = "[WFBannerManager completePersistentModeWithSuccess:runningContext:completionHandler:]_block_invoke";
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Finishing persistent mode for running context: %@", buf, 0x16u);
  }

  if ([*(a1 + 40) BOOLValue])
  {
    v4 = [*(a1 + 48) runningPersistentWorkflows];
    v5 = [v4 objectForKey:*(a1 + 32)];

    if (v5)
    {
      [v5 setCompleted:1];
      v6 = [*(a1 + 48) runningPersistentWorkflows];
      [v6 setObject:v5 forKey:*(a1 + 32)];

      [*(a1 + 48) queue_updatePresentedStatusForRunningContext:*(a1 + 32)];
    }

    else
    {
      v5 = sub_100007750();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v29 = "[WFBannerManager completePersistentModeWithSuccess:runningContext:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s must be tracking a workflow at the time we complete it!", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [*(a1 + 48) pendingRequests];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 context];
          v14 = [v13 isEqual:*(a1 + 32)];

          if (v14)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 48) pendingRequests];
    [v15 removeObjectsInArray:v5];

    [*(a1 + 48) queue_stopTrackingPersistentModeContext:*(a1 + 32) withReason:@"complete persistent called with failure"];
    v16 = [*(a1 + 48) inflightRequest];
    v17 = [v16 context];
    v18 = [v17 isEqual:*(a1 + 32)];

    if (v18)
    {
      [*(a1 + 48) setInflightRequest:0];
    }

    if ([*(a1 + 48) presentsApertureStatus])
    {
      [*(a1 + 48) queue_revokeIslandPresentableForContext:*(a1 + 32) reason:@"complete persistent called with failure"];
    }

    v19 = [*(a1 + 48) presentedBanner];
    v20 = [v19 associatedRunningContext];
    v21 = [v20 isEqual:*(a1 + 32)];

    if (v21)
    {
      [*(a1 + 48) queue_dismissPresentableWithReason:@"complete persistent called with failure" interruptible:0 forced:0];
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_10001315C(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WFBannerManager beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Queuing a new persistent mode request for running context: %@", buf, 0x16u);
  }

  objc_initWeak(&location, *(a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000133D4;
  v10[3] = &unk_100028878;
  objc_copyWeak(&v12, &location);
  v11 = *(a1 + 32);
  v4 = objc_retainBlock(v10);
  v5 = [*(a1 + 32) addProgressSubscriberUsingPublishingHandler:v4];
  v6 = [[WFRunningPersistentModeWorkflow alloc] initWithRunningContext:*(a1 + 32) attribution:*(a1 + 48) progressSubscriber:v5];
  v7 = [*(a1 + 40) runningPersistentWorkflows];
  [v7 setObject:v6 forKey:*(a1 + 32)];

  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WFBannerManager beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Starting to track persistent workflow with context: %@", buf, 0x16u);
  }

  [*(a1 + 40) queue_enqueuePersistentModeStatusPresentationForRunningContext:*(a1 + 32)];
  [*(a1 + 40) queue_updateStateWithReason:@"a new persistent mode shortcut started and we just enqueued a new persistent mode request"];
  (*(*(a1 + 56) + 16))();

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1000133AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Block_layout *sub_1000133D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000134B0;
  block[3] = &unk_100028850;
  v9 = *(a1 + 32);
  v10 = WeakRetained;
  v11 = v3;
  v6 = v3;
  dispatch_async(v5, block);

  return &stru_100028828;
}

id sub_1000134B0(uint64_t a1)
{
  v2 = sub_100007750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[WFBannerManager beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke_3";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received progress for persistent workflow: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) runningPersistentWorkflows];
  v5 = [v4 objectForKey:*(a1 + 32)];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 updateWithProgress:*(a1 + 48)];
    }
  }

  return [*(a1 + 40) queue_updatePresentedStatusForRunningContext:*(a1 + 32)];
}

void sub_100013718(uint64_t a1)
{
  v2 = [*(a1 + 32) connectedHosts];
  [v2 removeObject:*(a1 + 40)];

  v3 = sub_100007750();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 136315394;
    v19 = "[WFBannerManager removeConnectedHost:]_block_invoke";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Removed connected host: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectedHosts];
  v6 = [v5 allObjects];
  v7 = [v6 count] == 0;

  if (v7)
  {
    v8 = sub_100007750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[WFBannerManager removeConnectedHost:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s No connected hosts remain, resetting.", buf, 0xCu);
    }

    v9 = [*(a1 + 32) layoutMonitor];
    [v9 invalidate];

    v10 = *(*(a1 + 32) + 128);
    *(*(a1 + 32) + 128) = 0;

    objc_initWeak(buf, *(a1 + 32));
    v11 = [WFDispatchSourceTimer alloc];
    v12 = [*(a1 + 32) queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000139D8;
    v16[3] = &unk_100028808;
    objc_copyWeak(&v17, buf);
    v13 = [v11 initWithInterval:v12 queue:v16 handler:2.0];
    [*(a1 + 32) setCleanUpTimer:v13];

    v14 = [*(a1 + 32) cleanUpTimer];
    [v14 setPreventSuspension:1];

    v15 = [*(a1 + 32) cleanUpTimer];
    [v15 start];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void sub_10001399C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000139D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained queue_resetWithReason:{@"No connected hosts, clean up timer fired."}];
  [WeakRetained revokeAllPresentablesWithReason:{@"No connected hosts, clean up timer fired."}];
  [WeakRetained setCleanUpTimer:0];
}

void sub_100013B88(uint64_t a1)
{
  v2 = [*(a1 + 32) connectedHosts];
  v3 = [v2 allObjects];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [*(a1 + 32) configuredDisplayLayoutMonitor];
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = v5;
  }

  v8 = [*(a1 + 32) connectedHosts];
  [v8 addObject:*(a1 + 40)];

  v9 = sub_100007750();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v13 = 136315394;
    v14 = "[WFBannerManager addConnectedHost:]_block_invoke";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Added connected host: %@", &v13, 0x16u);
  }

  v11 = [*(a1 + 32) cleanUpTimer];

  if (v11)
  {
    [*(a1 + 32) queue_resetWithReason:{@"Was awaiting cleanup, but new run started, so cleaning up now"}];
    [*(a1 + 32) revokeAllPresentablesWithReason:{@"Was awaiting cleanup, but new run started, so cleaning up now"}];
    v12 = [*(a1 + 32) cleanUpTimer];
    [v12 cancel];

    [*(a1 + 32) setCleanUpTimer:0];
  }
}

void sub_100013F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013F58(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInterfaceStyle];

  [WeakRetained setCurrentUserInterfaceStyle:v4];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_new();
  [v4 start];
  v5 = +[WFBannerPrototypeSettings sharedSettings];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  return v8;
}