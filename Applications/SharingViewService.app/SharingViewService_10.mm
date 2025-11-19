void sub_1000F1494(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 104) containerView];
  [v1 reactivate];
}

id sub_1000F1698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3 animated:1];
}

void sub_1000F2054(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(*(a1 + 32) + 192) sendAppEvent:{&off_10019AF78, v3}];
}

void sub_1000F210C(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 type] == 1)
  {
    if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      v3 = [*(a1 + 32) targetID];
      v4 = [*(a1 + 32) peerPublicKey];
      v5 = [*(a1 + 32) selfPublicKey];
      LogPrintF();
    }
  }

  else if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1000F224C(id a1, RPFileTransferItem *a2, id a3)
{
  v5 = a2;
  v4 = a3;
  if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4[2](v4, 0);
}

void sub_1000F3020(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(*(a1 + 32) + 24) dismiss:*(a1 + 40)];
}

void sub_1000F30CC(id a1, UIAlertAction *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001BE6C8 <= 30)
  {
    v4 = v2;
    if (dword_1001BE6C8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = LogPrintF();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000F36C0(uint64_t a1, int a2)
{
  if (a2 || MKBGetDeviceLockState() - 1 >= 2)
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = objc_alloc_init(SFClient);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F38B0;
    v8[3] = &unk_100194E18;
    v4 = *(a1 + 40);
    v9 = v3;
    v10 = v4;
    v5 = v3;
    [v5 retriggerProximitySetup:v8];
  }

  else
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [*(*(a1 + 32) + 24) dismiss:10];
    v6 = UIApp;
    v7 = *(a1 + 40);

    [v6 endBackgroundTask:v7];
  }
}

id sub_1000F385C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showAuthUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL animated:1];
}

void sub_1000F38B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
  [UIApp endBackgroundTask:*(a1 + 40)];
}

void sub_1000F3968(id a1)
{
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

id sub_1000F48B0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"123456"];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = v3[3];

    return [v4 showFinishUI];
  }

  else
  {

    return [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_1000F4BA0(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  v3 = [*(a1 + 32) containerView];
  [v3 center];
  v5 = v4;
  v6 = [*(a1 + 32) containerView];
  [v6 setCenter:{MidX, v5}];
}

void sub_1000F4C3C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_1000F5090(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 49) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

id sub_1000F5C60(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showBackupSyncUI:300 info:0];
}

id sub_1000F6048(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);

  return [v2 _handleTestTimerFired];
}

void sub_1000F795C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * i) animationDidStart];
        }

        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }

  if (dword_1001BE738 <= 10 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1000F7AD8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F7B5C;
  block[3] = &unk_100195AC0;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000F7B5C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) animationDidComplete];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000F7D80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1000F83BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v3 animationKeys];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = [v3 animationPlayerForKey:v8];
        v10 = [v9 animation];
        [v10 duration];
        v12 = v11;
        v13 = *(*(a1 + 32) + 96);
        if (v13 != v12 && dword_1001BE738 <= 50)
        {
          if (dword_1001BE738 != -1)
          {
            goto LABEL_9;
          }

          if (_LogCategory_Initialize())
          {
            v13 = *(*(a1 + 32) + 96);
LABEL_9:
            v19 = v12;
            v20 = v13;
            LogPrintF();
          }
        }

        [v10 setUsesSceneTimeBase:{1, *&v19, *&v20}];
        [v10 setRepeatCount:0.0];
        [v3 removeAnimationForKey:v8];
        [v3 addAnimation:v10 forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v5 = v14;
    }

    while (v14);
  }

  v15 = [v3 geometry];
  v16 = v15;
  if (v15)
  {
    v17 = *(a1 + 32);
    if (v15 != *(v17 + 64))
    {
      objc_storeStrong((v17 + 40), a2);
      objc_storeStrong((*(a1 + 32) + 48), v16);
    }
  }

  v18 = [v3 camera];
  if (v18)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
  }
}

void sub_1000F953C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BE808 <= 60 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

void sub_1000F95E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

void sub_1000F997C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(a1 + 32) dismiss:8];
}

void sub_1000F9B30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2;
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v1 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v1 + 40));
  [WeakRetained dismiss:8];
}

void sub_1000F9E30(uint64_t a1)
{
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA0D0;
  block[3] = &unk_100195AC0;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000F9F10(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 24) != 20)
  {
    handler[9] = v1;
    handler[10] = v2;
    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = v5;
      dispatch_source_cancel(v6);
      v7 = *(a1 + 32);
      v8 = *(v7 + 32);
      *(v7 + 32) = 0;
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000FA034;
    handler[3] = &unk_100195AC0;
    handler[4] = v12;
    dispatch_source_set_event_handler(v13, handler);
    SFDispatchTimerSet();
    dispatch_resume(*(*(a1 + 32) + 32));
  }
}

id sub_1000FA034(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3;
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v2 = *(a1 + 32);
  }

  [*(v2 + 8) setColorMode:0 animated:1];
  v7 = *(*(a1 + 32) + 8);

  return [v7 setState:9 animated:1 completionHandler:0];
}

void sub_1000FA484(id a1)
{
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void sub_1000FAC00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(a1 + 32) dismiss:8];
}

id sub_1000FB12C(uint64_t a1)
{
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);

  return [v2 dismissIfIdle];
}

id sub_1000FB1B0(uint64_t a1)
{
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);

  return [v2 dismissIfIdle];
}

void sub_1000FB234(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    v4 = v5;
    LogPrintF();
  }

  v3 = [*(*(a1 + 32) + 56) remoteObjectProxyWithErrorHandler:{&stru_100194ED0, v4}];
  [v3 uiActivatedWithCompletion:&stru_100194EF0];
}

void sub_1000FB31C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001BE808 <= 60)
    {
      v4 = v2;
      if (dword_1001BE808 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
LABEL_7:
        v2 = LogPrintF();
        v3 = v4;
      }
    }
  }

  else if (dword_1001BE808 <= 30)
  {
    v4 = 0;
    if (dword_1001BE808 != -1)
    {
      goto LABEL_7;
    }

    v2 = _LogCategory_Initialize();
    v3 = 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000FB404(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001BE808 <= 60)
  {
    v4 = v2;
    if (dword_1001BE808 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = LogPrintF();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

id sub_1000FBF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3 animated:1];
}

void sub_1000FC5E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_38;
  }

  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10[0] = @"scanRate";
  v4 = [*(*(a1 + 32) + 24) scanRate];
  if (v4 > 9)
  {
    if (v4 <= 29)
    {
      if (v4 == 10)
      {
        v5 = "Background";
        goto LABEL_35;
      }

      if (v4 == 20)
      {
        v5 = "Normal";
        goto LABEL_35;
      }
    }

    else
    {
      switch(v4)
      {
        case 30:
          v5 = "HighNormal";
          goto LABEL_35;
        case 40:
          v5 = "High";
          goto LABEL_35;
        case 50:
          v5 = "Aggressive";
          goto LABEL_35;
      }
    }

LABEL_34:
    v5 = "?";
    goto LABEL_35;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = "Invalid";
      goto LABEL_35;
    }

    if (v4 == 1)
    {
      v5 = "BackgroundOld";
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v4 == 2)
  {
    v5 = "NormalOld";
    goto LABEL_35;
  }

  if (v4 == 3)
  {
    v5 = "HighOld";
    goto LABEL_35;
  }

  if (v4 != 4)
  {
    goto LABEL_34;
  }

  v5 = "AggressiveOld";
LABEL_35:
  v6 = [NSString stringWithUTF8String:v5];
  v7 = v6;
  v8 = @"?";
  if (v6)
  {
    v8 = v6;
  }

  v10[1] = @"state";
  v11[0] = v8;
  v11[1] = @"Start";
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  SFPowerLogEvent();

LABEL_38:
}

id sub_1000FD560(uint64_t a1)
{
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(*(a1 + 32) + 131) = 0;
  v2 = *(a1 + 32);

  return [v2 invalidateTouchDelayTimer];
}

uint64_t sub_1000FDDB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FDDC8(uint64_t a1, void *a2, int a3, void *a4)
{
  v9 = a2;
  v8 = a4;
  if (v8)
  {
    if (dword_1001BE938 <= 60 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000FE934(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showDoneUI:0];
}

void sub_100102018(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  if (([v3 isBeingPresented] & 1) == 0 && (objc_msgSend(v3, "isBeingDismissed") & 1) == 0 && (objc_msgSend(v3, "isMovingToParentViewController") & 1) == 0 && (objc_msgSend(v3, "isMovingFromParentViewController") & 1) == 0)
  {
    v4 = [v7 viewControllers];
    v5 = [v4 containsObject:v3];

    if (v5)
    {
      v6 = [v7 popToViewController:v3 animated:1];
    }

    else
    {
      [v7 pushViewController:v3 animated:1];
    }
  }
}

void sub_1001022E0(uint64_t a1)
{
  v2 = [*(a1 + 32) mainController];
  v1 = [v2 colorCalibratorSetupSession];
  [v1 tryAgain];
}

void sub_100102B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 208));
  _Unwind_Resume(a1);
}

void sub_100102B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTryAgainButton];
}

void sub_100102BC4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

void sub_1001032B4(uint64_t a1)
{
  v2 = [*(a1 + 32) mainController];
  v3 = [v2 testFlags];

  v4 = [*(a1 + 32) mainController];
  v5 = v4;
  if ((v3 & 2) != 0)
  {
    [v4 showTryAgainUI];
  }

  else
  {
    [v4 showDoneUI:0 completed:1];
  }
}

void sub_100103744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010378C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

void sub_100103F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100103FB8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

void sub_100104B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100104BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

id sub_100105058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3];
}

void sub_10010540C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

id sub_1001054B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

void sub_100106088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001060D4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

void sub_100106C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100106CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleContinueButton];
}

void sub_100106D2C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissButton];
}

void sub_1001073B8(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"1234"];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = [v3 mainController];
    [v4 showProgressUI];
  }

  else
  {

    [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_10010780C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 49) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

void sub_100107AF8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    v5 = v6;
    LogPrintF();
  }

  [*(*(a1 + 32) + 72) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  [*(a1 + 32) showDoneUI:NSErrorToOSStatus()];
}

id sub_100107BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3];
}

id sub_10010887C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showAuthUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
}

id sub_100108ECC(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  if ([*(a1 + 40) isEqual:@"1234"])
  {
    dispatch_source_cancel(*(a1 + 32));
    v2 = [*(*(a1 + 48) + 24) testFlags];
    v3 = *(*(a1 + 48) + 24);
    if ((v2 & 2) != 0)
    {
      v4 = 4294960574;
    }

    else
    {
      v4 = 0;
    }

    return [v3 showDoneUI:v4];
  }

  else
  {
    v5 = *(a1 + 48);

    return [v5 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_1001091E4(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  v3 = [*(a1 + 32) containerView];
  [v3 center];
  v5 = v4;
  v6 = [*(a1 + 32) containerView];
  [v6 setCenter:{MidX, v5}];
}

void sub_100109280(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_1001096E8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 41) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

void *sub_10010BC4C(void *result, int a2)
{
  v3 = result;
  if (dword_1001BEB48 <= 30)
  {
    if (dword_1001BEB48 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (a2)
  {
    v4 = v3[4];
    v5 = v4[11];

    return [v4 presentViewController:v5 animated:1 completion:&stru_100194FE0];
  }

  return result;
}

void sub_10010BD24(id a1)
{
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

Class sub_10010BD94()
{
  if (qword_1001C37B0 != -1)
  {
    dispatch_once(&qword_1001C37B0, &stru_100195000);
  }

  result = objc_getClass("_SFAppAutoFillPasswordViewController");
  qword_1001C37A8 = result;
  off_1001BEBB8 = sub_10010BDF8;
  return result;
}

void sub_10010C21C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001BEB48 <= 60)
    {
      v4 = v2;
      if (dword_1001BEB48 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
LABEL_7:
        v2 = LogPrintF();
        v3 = v4;
      }
    }
  }

  else if (dword_1001BEB48 <= 30)
  {
    v4 = 0;
    if (dword_1001BEB48 != -1)
    {
      goto LABEL_7;
    }

    v2 = _LogCategory_Initialize();
    v3 = 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10010CE20(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = v7;
    dispatch_source_cancel(v8);
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = 0;

    v6 = *(a1 + 32);
  }

  [*(v6 + 72) invalidate];
  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  *(v11 + 72) = 0;

  v13 = *(a1 + 32);
  if (v5)
  {
    [v13 _pickerAlertShowError:v5];
  }

  else
  {
    [v13 _pickerAlertShowSuccess];
  }
}

void sub_10010CEEC(uint64_t a1)
{
  [*(*(a1 + 32) + 72) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;
}

void sub_10010D40C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [*(a1 + 32) insertObject:v5 atIndex:{objc_msgSend(v4, "indexOfObject:inSortedRange:options:usingComparator:", v5, 0, objc_msgSend(v4, "count"), 1024, &stru_100195060)}];
}

id sub_10010D48C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _pickerAlertHandlePickedDevice:v5];
}

int64_t sub_10010D4E0(id a1, SFDevice *a2, SFDevice *a3)
{
  v4 = a3;
  v5 = [(SFDevice *)a2 name];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"?";
  }

  v8 = v7;

  v9 = [(SFDevice *)v4 name];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"?";
  }

  v11 = v10;

  v12 = [(__CFString *)v8 localizedStandardCompare:v11];
  return v12;
}

void sub_10010D9C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001BEBC0 <= 60)
    {
      v4 = v2;
      if (dword_1001BEBC0 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
LABEL_7:
        v2 = LogPrintF();
        v3 = v4;
      }
    }
  }

  else if (dword_1001BEBC0 <= 30)
  {
    v4 = 0;
    if (dword_1001BEBC0 != -1)
    {
      goto LABEL_7;
    }

    v2 = _LogCategory_Initialize();
    v3 = 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10010E510(uint64_t a1)
{
  v2 = objc_alloc_init(UINotificationFeedbackGenerator);
  [v2 notificationOccurred:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010E608;
  v10[3] = &unk_100195AC0;
  v10[4] = v3;
  [v4 dismissViewControllerAnimated:1 completion:v10];
  v5 = *(a1 + 32);
  v6 = *(v5 + 184);
  *(v5 + 184) = 0;

  v7 = [*(*(a1 + 32) + 192) view];
  [v7 setHidden:0];

  v8 = *(a1 + 32);
  v9 = *(v8 + 192);
  *(v8 + 192) = 0;
}

void sub_10010E608(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 176) containerView];
  [v1 reactivate];
}

void sub_10010E964(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EAD4;
  block[3] = &unk_100195200;
  block[4] = *(a1 + 32);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10010EAD4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 232), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  v2 = [*(a1 + 56) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v5 = [*(a1 + 64) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 216);
  *(v6 + 216) = v5;

  v8 = [*(a1 + 72) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 224);
  *(v9 + 224) = v8;

  v11 = objc_retainBlock(*(a1 + 80));
  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  *(v12 + 56) = v11;

  v14 = *(a1 + 32);

  return [v14 showPasswordPickerUI];
}

void sub_10010F2F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001BEC30 <= 60)
    {
      v4 = v2;
      if (dword_1001BEC30 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
LABEL_7:
        v2 = LogPrintF();
        v3 = v4;
      }
    }
  }

  else if (dword_1001BEC30 <= 30)
  {
    v4 = 0;
    if (dword_1001BEC30 != -1)
    {
      goto LABEL_7;
    }

    v2 = _LogCategory_Initialize();
    v3 = 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  _objc_release_x1(v2, v3);
}

void *sub_10010F64C(void *result, int a2)
{
  v3 = result;
  if (dword_1001BEC30 <= 30)
  {
    if (dword_1001BEC30 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (a2)
  {
    v4 = v3[4];
    v5 = *(v4 + 160);
    v6 = *(v4 + 168);

    return [v5 presentViewController:v6 animated:1 completion:&stru_100195168];
  }

  return result;
}

void sub_10010F730(id a1)
{
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

Class sub_10010F7A0()
{
  if (qword_1001C37C8 != -1)
  {
    dispatch_once(&qword_1001C37C8, &stru_100195248);
  }

  result = objc_getClass("_SFAppAutoFillPasswordViewController");
  qword_1001C37C0 = result;
  off_1001BECA0 = sub_10010F804;
  return result;
}

void sub_10010FF04(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 192) view];
  [v1 setHidden:1];
}

void sub_1001103F4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 && dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    v7 = [v5 localizedDescription];
    LogPrintF();
  }

  if (a2)
  {
    *(*(a1 + 32) + 40) = 4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100110540;
    block[3] = &unk_1001955E8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [UIApp endBackgroundTask:*(a1 + 40)];
    *(*(a1 + 32) + 40) = 3;
  }
}

id sub_100110540(uint64_t a1)
{
  [*(a1 + 32) showPasswordPickerUI];
  v2 = UIApp;
  v3 = *(a1 + 40);

  return [v2 endBackgroundTask:v3];
}

void sub_100110588(id a1)
{
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

id sub_100110F30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

id sub_100111C10(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"1234"];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = v3[3];

    return [v4 showPasswordPickerUI];
  }

  else
  {

    return [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_100111F50(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  v3 = [*(a1 + 32) containerView];
  [v3 center];
  v5 = v4;
  v6 = [*(a1 + 32) containerView];
  [v6 setCenter:{MidX, v5}];
}

void sub_100111FEC(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_100112404(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 49) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

id sub_100112890(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showPairingUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
}

_DWORD *sub_100114D18(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = result[25];
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 4294960596;
  }

  return [result showDoneUI:v3];
}

id sub_100115428(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

void sub_100116C34(uint64_t a1)
{
  v1 = [NSURL URLWithString:*(a1 + 32)];
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v1)
  {
    v2 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = 0;
    v3 = [v2 openSensitiveURL:v1 withOptions:0 error:&v5];
    v4 = v5;

    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  if (dword_1001BED68 <= 90 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_13:
}

void sub_1001173CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  v4 = a2;
  [v4 setTransform:&v5];
  [v4 setAlpha:{*(a1 + 80), v5, v6, v7}];
}

void sub_100117424(uint64_t a1)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100117680;
  v14[3] = &unk_1001959D0;
  v2 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v2;
  [UIView addKeyframeWithRelativeStartTime:v14 relativeDuration:0.0 animations:0.25];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011769C;
  v11[3] = &unk_100195338;
  v3 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v3;
  v13 = *(a1 + 48);
  [UIView addKeyframeWithRelativeStartTime:v11 relativeDuration:0.25 animations:0.25];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100117708;
  v8[3] = &unk_100195338;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v10 = *(a1 + 48);
  [UIView addKeyframeWithRelativeStartTime:v8 relativeDuration:0.5 animations:0.25];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100117774;
  v6[3] = &unk_1001959D0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [UIView addKeyframeWithRelativeStartTime:v6 relativeDuration:0.75 animations:0.25];
}

void sub_100117638(uint64_t a1)
{
  v1 = [*(a1 + 32) infoButton];
  [v1 setAlpha:1.0];
}

uint64_t sub_10011769C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_100117708(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100117790(id a1, UIView *a2)
{
  v2 = *&CGAffineTransformIdentity.c;
  v4 = *&CGAffineTransformIdentity.a;
  v5 = v2;
  v6 = *&CGAffineTransformIdentity.tx;
  v3 = a2;
  [(UIView *)v3 setTransform:&v4];
  [(UIView *)v3 setAlpha:1.0, v4, v5, v6];
}

void sub_100117F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100117F98(uint64_t a1)
{
  v3 = [*(a1 + 32) infoButton];
  if ([v3 isActive])
  {
    v2 = @"Surprise!";
  }

  else
  {
    v2 = @"ProxCardKit Test";
  }

  [*(a1 + 32) setTitle:v2];
}

void sub_100118008(uint64_t a1)
{
  v1 = objc_alloc_init(PRXFeatureTourContentViewController);
  [v1 setTitle:@"Card Title"];
  [v1 setBodyText:{@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur varius neque sed nibh porttitor."}];
  v2 = v1;
  [v1 setDismissalType:1];
  v3 = objc_alloc_init(UIView);
  v4 = +[UIColor systemRedColor];
  v5 = [v4 colorWithAlphaComponent:0.33];
  [v3 setBackgroundColor:v5];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = v2;
  v37 = v2;
  v7 = [v2 contentView];
  [v7 addSubview:v3];

  v8 = [PRXLabel labelWithStyle:0];
  v9 = +[UIColor systemBackgroundColor];
  [v8 setTextColor:v9];

  [v8 setText:@"Main Content"];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v6 contentView];
  [v10 addSubview:v8];

  v11 = [v6 contentView];
  v12 = [v11 mainContentGuide];

  v34 = [v3 leadingAnchor];
  v33 = [v12 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v41[0] = v32;
  v31 = [v3 trailingAnchor];
  v30 = [v12 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v41[1] = v29;
  v36 = v3;
  v28 = [v3 topAnchor];
  v27 = [v12 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v41[2] = v26;
  v25 = [v3 bottomAnchor];
  v13 = [v12 bottomAnchor];
  v14 = [v25 constraintEqualToAnchor:v13];
  v41[3] = v14;
  v35 = v8;
  v15 = [v8 centerXAnchor];
  v16 = [v12 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v41[4] = v17;
  v18 = [v8 centerYAnchor];
  v19 = [v12 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v41[5] = v20;
  v21 = [NSArray arrayWithObjects:v41 count:6];
  [NSLayoutConstraint activateConstraints:v21];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v23 = [WeakRetained navigationController];
  [v23 pushViewController:v37 animated:1];

  v24 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001184A0;
  block[3] = &unk_100195430;
  objc_copyWeak(&v40, (a1 + 32));
  dispatch_after(v24, &_dispatch_main_q, block);
  objc_destroyWeak(&v40);
}

void sub_1001184A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = objc_alloc_init(ProxCardKitTestTermsAndConditionsViewController);
  [v1 pushViewController:v2 animated:1];
}

void sub_100118718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011874C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = objc_alloc_init(ProxCardKitTestPasscodeEntryViewController);
  [v1 pushViewController:v2 animated:1];
}

void sub_1001187C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1001188C0(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = objc_alloc_init(ProxCardKitTestAppIconsViewController);
  [v2 pushViewController:v1 animated:1];
}

void sub_100118D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100118D88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = objc_alloc_init(ProxCardKitTestOptionsViewController);
  [v1 pushViewController:v2 animated:1];
}

void sub_100118F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100118F74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = objc_alloc_init(ProxCardKitTestPickerViewController);
  [v1 pushViewController:v2 animated:1];
}

void sub_1001192C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001192E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = objc_alloc_init(ProxCardKitTestFeaturesViewController);
  [v1 pushViewController:v2 animated:1];
}

void sub_100119758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1001197A4(uint64_t a1, void *a2)
{
  if ([a2 isOn])
  {
    v3 = [@"ProxCardKit Test " stringByAppendingString:@" - Surprise!"];
  }

  else
  {
    v3 = @"ProxCardKit Test ";
  }

  v5 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTitle:v5];
}

void sub_10011982C(uint64_t a1)
{
  v5 = objc_alloc_init(VPScannerProxCardViewController);
  v2 = [[ProxCardKitTestScannerViewController alloc] initWithScannerEngine:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained navigationController];
  [v4 pushViewController:v2 animated:1];
}

void sub_1001198C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100119AF0(uint64_t a1)
{
  [*(a1 + 32) showConfirmationRing];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119B8C;
  block[3] = &unk_100195AC0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100119B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = objc_alloc_init(ProxCardKitTestEndViewController);
  [v2 pushViewController:v1 animated:1];
}

void sub_100119FDC(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10011A11C(id a1, PRXAction *a2)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"https://apple.com"];
  [v3 openURL:v2 withCompletionHandler:0];
}

void sub_10011A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(@"Failed to mark terms as agreed in iCloud: %@", a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011A998;
  block[3] = &unk_100195AC0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10011ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011ACF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAgreeFromObjectModel:v3];
}

void sub_10011AD50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011AE24;
  block[3] = &unk_100195430;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10011ADE0(id a1, BOOL a2, NSError *a3)
{
  v3 = @"Fail";
  if (a2)
  {
    v3 = @"Success";
  }

  NSLog(@"results = %@, with error = %@", v3, a3);
}

void sub_10011AE24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _termsDisagree];
}

void sub_10011B120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 40);
    if (v4 > 3)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_100195508[v4];
    }

    v9 = v5;
    LogPrintF();
  }

  v6 = [*(a1 + 32) _remoteViewControllerProxy];
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011B258;
  v10[3] = &unk_100195AC0;
  v11 = v6;
  v8 = v6;
  [v7 dismissViewControllerAnimated:1 completion:v10];
}

id sub_10011B40C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

uint64_t sub_10011B788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 24))
  {
    v6 = v3;
    v3 = [v3 supportsAACPService];
    v4 = v6;
    if (v3)
    {
      if (!*(*(a1 + 32) + 56))
      {
        *(*(a1 + 32) + 56) = [v6 productIdentifier];
        v3 = [*(*(a1 + 32) + 48) updateProductID:*(*(a1 + 32) + 56)];
        v4 = v6;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_10011C478(uint64_t a1)
{
  v1 = [*(a1 + 32) mainController];
  v7 = [v1 appContent];

  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v2 = [v7 adamIDs];
    v3 = [v7 installed];
    v4 = "no";
    if (v3)
    {
      v4 = "yes";
    }

    v5 = v2;
    v6 = v4;
    LogPrintF();
  }

  [v7 launchWithCompletion:{&stru_100195570, v5, v6}];
}

void sub_10011C568(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001BEEA8 <= 90)
    {
      v4 = v2;
      if (dword_1001BEEA8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = LogPrintF();
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10011C6EC(uint64_t a1)
{
  v2 = [*(a1 + 32) launchURL];

  if (v2)
  {
    v3 = [*(a1 + 32) issuerID];

    if (v3)
    {
      v4 = [*(a1 + 32) launchURL];
      v5 = [*(a1 + 32) issuerID];
      v6 = [NSString stringWithFormat:@"%@brand=%@&supportedRadioTechnologies=NFC", v4, v5];

      v7 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = [NSURL URLWithString:v6];
      v10 = 0;
      [v7 openURL:v8 withOptions:&off_10019B0B8 error:&v10];
      v9 = v10;

      if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }

    if (dword_1001BEEA8 > 90 || dword_1001BEEA8 == -1 && !_LogCategory_Initialize())
    {
      return;
    }
  }

  else if (dword_1001BEEA8 > 90 || dword_1001BEEA8 == -1 && !_LogCategory_Initialize())
  {
    return;
  }

  LogPrintF();
}

void sub_10011D514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a60);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011D578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEnterCode];
}

void sub_10011D5B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOpenApp];
}

uint64_t sub_10011D9D4(uint64_t a1)
{
  [*(a1 + 32) dismiss];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10011DFBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v17 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1001BEEA8 > 90 || dword_1001BEEA8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }
  }

  else if (dword_1001BEEA8 > 50 || dword_1001BEEA8 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_11;
  }

  LogPrintF();
LABEL_11:
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v7;
  v11 = v7;

  if (v17)
  {
    v12 = *(a1 + 32);
    v13 = v17;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    v15 = [UIImage systemImageNamed:@"lock.circle"];
    v16 = *(a1 + 32);
    v14 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  [*(a1 + 32) viewUpdateAppInfo];
}

void sub_10011EE78(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 48) panGestureRecognizer];
  [v2 setEnabled:1];
}

void sub_10011F3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10011F3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained superview];
    [v3 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [v5 superview];
    [v11 convertPoint:v5[6] toView:{v8, v10}];
    v13 = v12;
    v15 = v14;

    v16 = [v5[6] pointInside:0 withEvent:{v13, v15}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_100120034(uint64_t a1)
{
  [*(a1 + 32) dismiss];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001208E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SFMainQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100120998;
  v7[3] = &unk_100195A70;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

id sub_100120998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 || *(v3 + 80) != 1)
  {
    v7 = v2;
    v6 = *(v3 + 88);
    *(v3 + 88) = v7;
  }

  else
  {
    off_1001BF060();
    v4 = objc_opt_new();
    v5 = *(a1 + 40);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
  }

  v8 = *(a1 + 40);
  if (v8[11])
  {

    return [v8 presentAppropriateViewControllerIfReady];
  }

  else
  {

    return [v8 dismiss:0];
  }
}

Class sub_100120A5C()
{
  if (qword_1001C37E0 != -1)
  {
    dispatch_once(&qword_1001C37E0, &stru_100195690);
  }

  result = objc_getClass("PKPhysicalCard");
  qword_1001C37F0 = result;
  off_1001BF060 = sub_100120AC0;
  return result;
}

Class sub_100120AF8()
{
  if (qword_1001C37E0 != -1)
  {
    dispatch_once(&qword_1001C37E0, &stru_100195690);
  }

  result = objc_getClass("PKAccountService");
  qword_1001C37D8 = result;
  off_1001BF058 = sub_100120B5C;
  return result;
}

id sub_100121238(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  *(*(a1 + 40) + 121) = [*(*(a1 + 40) + 24) forcedActivationResult];
  v2 = *(a1 + 40);

  return [v2 handleCompletedIfReady];
}

void sub_100121298(uint64_t a1, uint64_t a2)
{
  v4 = SFMainQueue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121330;
  v5[3] = &unk_1001955E8;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

id sub_100121330(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 121) = v2;
  if (v2)
  {
    if (dword_1001BEFE8 <= 90 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
LABEL_11:
      LogPrintF();
    }
  }

  else if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 32);

  return [v3 handleCompletedIfReady];
}

id sub_1001218CC(void *a1)
{
  v1 = a1;
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = 504.0 / v4;
  v6 = 317.0 / v4;
  v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, v5, v6}];
  v8 = +[UIColor clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [[UILabel alloc] initWithFrame:{5.6 / (85.598 / v5), 32.3 / (53.98 / v6), 504.0, 317.0}];
  v10 = [UIFont systemFontOfSize:kCTFontUIFontDesignRounded weight:7.0 design:UIFontWeightMedium];
  [v9 setFont:v10];

  v11 = [UIColor colorWithWhite:0.54 alpha:1.0];
  [v9 setTextColor:v11];

  [v9 setText:v1];
  [v9 sizeToFit];
  [v7 addSubview:v9];
  v15.width = v5;
  v15.height = v6;
  UIGraphicsBeginImageContextWithOptions(v15, 0, 3.0);
  [v7 bounds];
  [v7 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

id sub_100121AD4(uint64_t a1)
{
  [*(*(a1 + 32) + 57) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 73);

  return [v2 setAlpha:1.0];
}

id sub_100121B30(uint64_t a1)
{
  [*(*(a1 + 32) + 57) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 73);

  return [v2 setAlpha:1.0];
}

void sub_100122244(id a1)
{
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"wallet://credit/locationRequest"];
  v3 = sub_100128254();
  v5 = 0;
  [v1 openURL:v2 withOptions:v3 error:&v5];
  v4 = v5;

  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1001231D0(id a1)
{
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"wallet://credit/details"];
  v3 = sub_100128254();
  v5 = 0;
  [v1 openURL:v2 withOptions:v3 error:&v5];
  v4 = v5;

  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1001237AC(id a1)
{
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"wallet://credit/details"];
  v3 = sub_100128254();
  v5 = 0;
  [v1 openURL:v2 withOptions:v3 error:&v5];
  v4 = v5;

  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_100124E20(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  v2 = *&CGAffineTransformIdentity.c;
  v3[0] = *&CGAffineTransformIdentity.a;
  v3[1] = v2;
  v3[2] = *&CGAffineTransformIdentity.tx;
  [v1 setTransform:v3];
}

void sub_10012509C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  CGAffineTransformMakeTranslation(&v6, 0.0, -v3);
  v4 = [*(a1 + 32) view];
  v5 = v6;
  [v4 setTransform:&v5];
}

id sub_100125118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) view];
    [v4 removeFromSuperview];
  }

  v5 = *(a1 + 40);

  return [v5 completeTransition:a2];
}

void *sub_10012560C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[1])
  {
    return [result xpcStarted:a2];
  }

  return result;
}

void sub_100125880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001258A4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[3] dismiss:a2];
    WeakRetained = v4;
  }
}

id sub_100125A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = SVSCommonNavController;
  return objc_msgSendSuper2(&v4, "pushViewController:transition:", v1, v2);
}

id sub_100125B04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = SVSCommonNavController;
  return objc_msgSendSuper2(&v4, "pushViewController:animated:", v1, v2);
}

id sub_100125C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = SVSCommonNavController;
  return objc_msgSendSuper2(&v5, "presentViewController:animated:completion:", v1, v2, v3);
}

id sub_1001263C4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  *(*(a1 + 48) + 24) = 0;
  result = [*(*(a1 + 48) + 32) count];
  if (result)
  {
    v3 = *(a1 + 48);

    return [v3 _update];
  }

  return result;
}

id sub_100126B8C(void *a1)
{
  v1 = a1;
  v2 = SFDeviceClassCodeGet() - 1;
  if (v2 > 6)
  {
    v3 = @"_IPHONE";
  }

  else
  {
    v3 = off_100195818[v2];
  }

  v4 = [v1 stringByAppendingString:v3];

  return v4;
}

id sub_100126C04(void *a1, const char *a2)
{
  if ((a2 - 1) > 6)
  {
    v2 = @"_IPHONE";
  }

  else
  {
    v2 = off_100195818[(a2 - 1)];
  }

  return [a1 stringByAppendingString:v2];
}

void sub_100126C30(unsigned int a1, uint64_t a2, uint64_t a3, id *a4, id *a5, id *a6, id *a7)
{
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_10012778C;
  v78 = sub_10012779C;
  v79 = 0;
  if (a1 == 8207)
  {
    v10 = 8194;
  }

  else
  {
    v10 = a1;
  }

  if ((a3 & 4) != 0)
  {
    if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
    {
      v62 = a3;
      v63 = &unk_100170F20;
      v60 = v10;
      v61 = a2;
      LogPrintF();
    }

    v18 = mach_absolute_time();
    if ((a3 & 8) != 0)
    {
      v64 = [[SFDeviceAssetQuery alloc] initWithHomePodColor:a2 version:v10];
    }

    else
    {
      v64 = [[SFDeviceAssetQuery alloc] initWithBluetoothProductIdentifier:v10 color:a2];
    }

    v19 = a7;
    v20 = dispatch_semaphore_create(0);
    v21 = objc_alloc_init(SFDeviceAssetManager);
    v22 = dispatch_queue_create("SVSMobileAssetLookup", 0);
    [v21 setDispatchQueue:v22];

    [v21 activate];
    v23 = [SFDeviceAssetRequestConfiguration alloc];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1001277A4;
    v68[3] = &unk_1001956B8;
    v72 = v10;
    v73 = a2;
    v70 = &v74;
    v71 = v18;
    v24 = v20;
    v69 = v24;
    v25 = [v23 initWithQueryResultHandler:v68];
    [v25 setTimeout:3.0];
    [v21 getAssetBundleForDeviceQuery:v64 withRequestConfiguration:v25];
    v26 = dispatch_time(0, 5000000000);
    v27 = dispatch_semaphore_wait(v24, v26);
    a7 = v19;
    if (v27)
    {
      if (dword_1001BF128 <= 60)
      {
        v28 = v27;
        if (dword_1001BF128 != -1 || _LogCategory_Initialize())
        {
          v60 = v28;
          LogPrintF();
        }
      }
    }

    v29 = v75[5];
    if (v29)
    {
      if ((a3 & 8) == 0)
      {
        v12 = [v29 pathForResource:SFDeviceAssetNameMovieConnectIntro ofType:0];
        if (v10 == 8203 || (+[SFHeadphoneProduct b507](SFHeadphoneProduct, "b507"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 productID], v30, v10 == v31) || (+[SFHeadphoneProduct b494](SFHeadphoneProduct, "b494"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "productID"), v32, v10 == v33) || (+[SFHeadphoneProduct b607](SFHeadphoneProduct, "b607"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "productID"), v36, v10 == 0x10000) || v10 == v37)
        {
          v38 = [v75[5] pathForResource:SFDeviceAssetNameMovieStatusLoopCharged ofType:{0, v60, v61, v62, v63}];
        }

        else
        {
          v38 = [v75[5] pathForResource:SFDeviceAssetNameMovieLoop ofType:0];
        }

        v67 = v38;
        v39 = SFDeviceAssetNameMovieConnectLoop;
        v11 = [v75[5] pathForResource:v39 ofType:0];

        if (!v11)
        {
          v11 = v67;
          v67 = v11;
        }

        a7 = v19;
LABEL_46:

        if ((a3 & 8) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_47;
      }

      v12 = [v29 pathForResource:@"ProxCard_connect-engage.mov" ofType:0];
      if (v12)
      {
        v67 = 0;
        v11 = 0;
        goto LABEL_46;
      }

      if (dword_1001BF128 <= 90 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v67 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_46;
  }

  v67 = 0;
  v11 = 0;
  v12 = 0;
  if ((a3 & 8) != 0)
  {
LABEL_6:
    v13 = GestaltCopyAnswer();
    v14 = a6;
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ProxCard_Setup@%dx.png", [v13 intValue]);
    v16 = [v75[5] pathForResource:v15 ofType:0];
    if (!v16)
    {
      if (dword_1001BF128 <= 90 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v16 = @"UnsupportedAccessory.png";
    }

    if (v10 == 5)
    {
      v34 = @"HOMEPOD_MINI";
    }

    else
    {
      v34 = @"HOMEPOD";
    }

    v35 = sub_10012794C(@"Localizable", v34);
    goto LABEL_64;
  }

LABEL_47:
  v14 = a6;
  if (v10 == 8194 || v10 == 8206 || v10 == 0x10000 || (v40 = [[SFHeadphoneProduct alloc] initWithProductID:v10], v41 = objc_msgSend(v40, "isAirPods"), v40, v41))
  {
    if (a3)
    {
      v15 = 0;
      v16 = @"AirPod-Case-Open-B188.png";
    }

    else
    {
      v42 = GestaltCopyAnswer();
      v43 = [v42 intValue];
      if (v10 == 0x10000)
      {
        [NSString stringWithFormat:@"ProxCard_case-closed-charged@%dx.png", v43];
      }

      else
      {
        [NSString stringWithFormat:@"ProxCard_case-closed@%dx.png", v43];
      }
      v15 = ;
      v44 = [v75[5] pathForResource:v15 ofType:0];
      if (v44)
      {
        v16 = v44;
      }

      else
      {
        v16 = @"AirPod-Case-Closed-B188.png";
      }
    }

    if (v10 == 8206)
    {
      v13 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing"];
      v45 = [NSString stringWithFormat:@"Localizable-PID_%d", 8206];
      v46 = [[NSString alloc] initWithFormat:@"PRODUCT_NAME_PID_%d", 8206];
      v35 = sub_1001279D0(v13, v45, v46);
    }

    else
    {
      v47 = +[SFHeadphoneProduct b688];
      v48 = [v47 productID];

      if (v10 != v48)
      {
        v35 = sub_10012794C(@"Localizable", @"AIRPODS");
        goto LABEL_65;
      }

      v13 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing"];
      v49 = [NSString stringWithFormat:@"Localizable-PID_%d", v10];
      v50 = [[NSString alloc] initWithFormat:@"PRODUCT_NAME_PID_%d", v10];
      v35 = sub_1001279D0(v13, v49, v50);
    }

LABEL_64:

LABEL_65:
    v51 = 0;
    goto LABEL_66;
  }

  if (v10 > 8201)
  {
    if ((v10 - 8202) < 4 || v10 == 8208)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (v10 <= 8196)
  {
    if (v10 != 8195)
    {
      goto LABEL_94;
    }

    v35 = sub_10012794C(@"Localizable", @"POWERBEATS3_WIRELESS");
    v51 = 0;
    v15 = 0;
    v53 = @"PowerBeats3Wireless-Black-Small-B188.png";
    v54 = @"PowerBeats3Wireless-Black-B188.png";
  }

  else
  {
    switch(v10)
    {
      case 0x2005:
        v35 = sub_10012794C(@"Localizable", @"BEATSX");
        v51 = 0;
        v15 = 0;
        v53 = @"BeatsX-Black-Small-B188.png";
        v54 = @"BeatsX-Black-B188.png";
        break;
      case 0x2006:
        v35 = sub_10012794C(@"Localizable", @"BEATS_SOLO3_WIRELESS");
        v51 = 0;
        v15 = 0;
        v53 = @"BeatsSolo3Wireless-Black-Small-B188.png";
        v54 = @"BeatsSolo3Wireless-Black-B188.png";
        break;
      case 0x2009:
        v51 = +[UIColor grayColor];
        v52 = sub_10012794C(@"Localizable", @"BEATS_STUDIO3_WIRELESS");
        goto LABEL_98;
      default:
LABEL_94:
        v55 = [[SFHeadphoneProduct alloc] initWithProductID:v10];
        v56 = [v55 supportsMobileAsset];

        if (v56)
        {
LABEL_95:
          v51 = +[UIColor grayColor];
          v57 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing"];
          v58 = [NSString stringWithFormat:@"Localizable-PID_%d", v10];
          v59 = [[NSString alloc] initWithFormat:@"PRODUCT_NAME_PID_%d", v10];
          v35 = sub_1001279D0(v57, v58, v59);

LABEL_96:
          v15 = 0;
          v16 = @"UnsupportedAccessory.png";
          goto LABEL_66;
        }

        v51 = +[UIColor grayColor];
        v52 = sub_10012794C(@"Localizable", @"AUDIO_ACCESSORY");
LABEL_98:
        v35 = v52;
        goto LABEL_96;
    }
  }

  if ((a3 & 2) != 0)
  {
    v16 = v53;
  }

  else
  {
    v16 = v54;
  }

LABEL_66:
  if (a4)
  {
    objc_storeStrong(a4, v16);
  }

  if (a5)
  {
    objc_storeStrong(a5, v35);
  }

  if (v14)
  {
    objc_storeStrong(v14, v12);
  }

  if (a7)
  {
    objc_storeStrong(a7, v75[5]);
  }

  _Block_object_dispose(&v74, 8);
}

uint64_t sub_10012778C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001277A4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v13 = a3;
  v9 = a5;
  mach_absolute_time();
  UpTicksToSecondsF();
  if (v9)
  {
    if (dword_1001BF128 <= 60 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
    {
LABEL_7:
      LogPrintF();
    }
  }

  else if (dword_1001BF128 <= 30 && (dword_1001BF128 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10012794C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSBundle mainBundle];
  v6 = sub_1001279D0(v5, v4, v3);

  return v6;
}

void *sub_1001279D0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (SFIsGreenTeaDevice())
  {
    v8 = [v7 stringByAppendingString:@"_GT"];
    v9 = [v5 localizedStringForKey:v8 value:@"_GT" table:v6];

    if (![v9 isEqual:@"_GT"])
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  if (![v9 length])
  {
    v10 = [v5 localizedStringForKey:v7 value:&stru_100195CA8 table:v6];

    v9 = v10;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

UIImage *sub_100127AE0(char a1, int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 3)
  {
    v2 = a1 - 2;
    if ((a1 - 2) >= 4u)
    {
      v4 = @"ProxiPhoneGeneric.png";
      return [UIImage imageNamed:v4];
    }

    v3 = off_100195868;
  }

  else
  {
    v3 = off_100195850;
  }

  v4 = v3[v2];
  return [UIImage imageNamed:v4];
}

id sub_100127B60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [NSString alloc];
  v11 = sub_10012794C(@"Localizable", v9);
  v12 = [v10 initWithFormat:v11 arguments:&a9];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13;

  return v14;
}

id sub_100127C0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = [NSString alloc];
  v13 = sub_10012794C(v11, v10);

  v14 = [v12 initWithFormat:v13 arguments:&a9];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15;

  return v16;
}

uint64_t sub_100127CC4()
{
  v0 = +[NSLocale currentLocale];
  v1 = [v0 languageCode];

  if ([v1 isEqual:@"ar"] & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"hi") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"th"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"vi"];
  }

  return v2;
}

void sub_100127D6C(void *a1, void *a2, int a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127E28;
  v6[3] = &unk_1001956E0;
  v9 = a3;
  v7 = a1;
  v8 = a2;
  v4 = v8;
  v5 = v7;
  [v5 cancelProxCardDraggingWithCompletion:v6];
}

void sub_100127E28(uint64_t a1)
{
  v14 = [*(a1 + 32) transitioningDelegate];
  v2 = *(a1 + 48);
  if ((v2 & 2) != 0)
  {
    v3 = objc_alloc_init(SVSTopAnimator);
    [*(a1 + 32) setTransitioningDelegate:v3];
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = +[CATransition animation];
    [(SVSTopAnimator *)v3 setDuration:0.5];
    [(SVSTopAnimator *)v3 setType:kCATransitionFade];
    v4 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [(SVSTopAnimator *)v3 setTimingFunction:v4];

    v5 = [*(a1 + 32) view];
    v6 = [v5 layer];
    [v6 addAnimation:v3 forKey:0];

    v7 = [*(a1 + 40) view];
    v8 = [v7 layer];
    [v8 addAnimation:v3 forKey:0];
  }

LABEL_6:
  v9 = [*(a1 + 32) viewControllers];
  v10 = [v9 containsObject:*(a1 + 40)];

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v10)
  {
    v13 = [v11 popToViewController:v12 animated:0];
  }

  else
  {
    [v11 pushViewController:v12 animated:0];
  }

  [*(a1 + 32) setTransitioningDelegate:v14];
}

uint64_t sub_100128010()
{
  v0 = +[UIScreen mainScreen];
  [v0 scale];
  v2 = v1;
  [v0 _referenceBounds];
  v4 = v3;
  v6 = v5;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v2 == 2.0 && v4 == 768.0 && v6 == 1024.0)
    {
      v12 = 7;
    }

    else
    {
      v11 = v2 == 2.0;
      if (v4 != 834.0)
      {
        v11 = 0;
      }

      if (v11 && v6 == 1112.0)
      {
        v12 = 8;
      }

      else
      {
        if (v6 != 1194.0)
        {
          LOBYTE(v11) = 0;
        }

        if (v11)
        {
          v12 = 9;
        }

        else if (v6 == 1366.0 && v4 == 1024.0 && v2 == 2.0)
        {
          v12 = 10;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v13 = v2 == 2.0 && v4 == 320.0;
    if (v13 && v6 == 568.0)
    {
      v12 = 1;
    }

    else if (v2 == 2.0 && v4 == 375.0 && v6 == 667.0)
    {
      v12 = 2;
    }

    else
    {
      v15 = v2 == 3.0;
      if (v4 != 414.0)
      {
        v15 = 0;
      }

      if (v15 && v6 == 736.0)
      {
        v12 = 3;
      }

      else if (v2 == 3.0 && v4 == 375.0 && v6 == 812.0)
      {
        v12 = 4;
      }

      else if (v2 == 2.0 && (v4 == 414.0 ? (v19 = v6 == 896.0) : (v19 = 0), v19))
      {
        v12 = 5;
      }

      else if (v15 && v6 == 896.0)
      {
        v12 = 6;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

id sub_100128254()
{
  v2[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v2[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v3[0] = &__kCFBooleanTrue;
  v3[1] = &__kCFBooleanTrue;
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];

  return v0;
}

id sub_1001282F0()
{
  v7[0] = kCTFontTraitsAttribute;
  v6[0] = kCTFontUIFontDesignDefault;
  v5[0] = kCTFontUIFontDesignTrait;
  v5[1] = kCTFontWeightTrait;
  v0 = [NSNumber numberWithDouble:kCTFontWeightRegular];
  v6[1] = v0;
  v1 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[1] = kCTFontLanguageAwareLineHeightRatioAttribute;
  v8[0] = v1;
  v8[1] = &off_10019B1D0;
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v3 = [UIFontDescriptor fontDescriptorWithFontAttributes:v2];

  return v3;
}

id sub_10012843C()
{
  v7[0] = kCTFontTraitsAttribute;
  v6[0] = kCTFontUIFontDesignDefault;
  v5[0] = kCTFontUIFontDesignTrait;
  v5[1] = kCTFontWeightTrait;
  v0 = [NSNumber numberWithDouble:kCTFontWeightSemibold];
  v6[1] = v0;
  v1 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[1] = kCTFontLanguageAwareLineHeightRatioAttribute;
  v8[0] = v1;
  v8[1] = &off_10019B1D0;
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v3 = [UIFontDescriptor fontDescriptorWithFontAttributes:v2];

  return v3;
}

id sub_100128F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3];
}

void sub_1001292E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    v3 = v4;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

id sub_100129384(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

id sub_10012A5A0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"1234"];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = v3[3];

    return [v4 showProgressUI];
  }

  else
  {

    return [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_10012A890(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  v3 = [*(a1 + 32) containerView];
  [v3 center];
  v5 = v4;
  v6 = [*(a1 + 32) containerView];
  [v6 setCenter:{MidX, v5}];
}

void sub_10012A92C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_10012AD94(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 65) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

id sub_10012B320(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) testFlags];
  v3 = *(*(a1 + 32) + 24);
  if ((v2 & 2) != 0)
  {

    return [v3 showTryAgainUI];
  }

  else
  {

    return [v3 showDoneUI:0];
  }
}

id sub_10012BECC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

void sub_10012C4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012C528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_10012C90C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001BF328 <= 90 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012CA40;
    block[3] = &unk_100195AC0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

id sub_10012CA40(uint64_t a1)
{
  v2 = sub_10012794C(@"Localizable", @"WATCH_PAIR_FAILED");
  [*(a1 + 32) setSubtitle:v2];

  [*(a1 + 32) setPairing:0];
  v3 = *(a1 + 32);

  return [v3 hideActivityIndicator];
}

Class sub_10012CAAC()
{
  if (qword_1001C3818 != -1)
  {
    dispatch_once(&qword_1001C3818, &stru_100195980);
  }

  result = objc_getClass("ASDSystemAppRequest");
  qword_1001C3810 = result;
  off_1001BF3A0 = sub_10012CB10;
  return result;
}

void sub_10012CB94(id a1)
{
  if (dword_1001BF328 <= 60 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = objc_alloc_init(SFClient);
  v2 = [NSURL URLWithString:@"bridge://?action=StartPairing"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012CCA0;
  v4[3] = &unk_100195940;
  v5 = v1;
  v3 = v1;
  [v3 openSetupURL:v2 completion:v4];
}

void sub_10012CCA0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1001BF328 <= 60 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      v3 = v4;
LABEL_7:
      LogPrintF();
    }
  }

  else if (dword_1001BF328 <= 60 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

  [*(a1 + 32) invalidate];
}

void sub_10012D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 160));
  _Unwind_Resume(a1);
}

void sub_10012D858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleContinueButton];
}

Class sub_10012D91C()
{
  if (qword_1001C3800 != -1)
  {
    dispatch_once(&qword_1001C3800, &stru_100195960);
  }

  result = objc_getClass("NRPairingCompatibilityVersionInfo");
  qword_1001C37F8 = result;
  off_1001BF398 = sub_10012D980;
  return result;
}

void sub_10012F120(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (dword_1001BF408 <= 30)
  {
    if (dword_1001BF408 != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
    {
      v7 = [v5 count];
      LogPrintF();
      v5 = v8;
    }
  }

  [*(a1 + 32) showHomePickerUI:v5 defaultIndex:{a3, v7}];
}

id sub_10012F1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);

  return [v6 showAuthUIWithFlags:a2 throttleSeconds:a3];
}

void sub_10012F284(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (dword_1001BF408 <= 30)
  {
    if (dword_1001BF408 != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
    {
      v7 = [v5 count];
      LogPrintF();
      v5 = v8;
    }
  }

  [*(a1 + 32) showRoomPickerUI:v5 firstSuggestedIndex:{a3, v7}];
}

id sub_10012FB80(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 dismiss];
}

id sub_10013081C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 24);

  return [v2 showAuthUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
}

id sub_100130F48(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"1234"];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = v3[3];

    return [v4 showProgressUI];
  }

  else
  {

    return [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

void sub_100131238(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  v3 = [*(a1 + 32) containerView];
  [v3 center];
  v5 = v4;
  v6 = [*(a1 + 32) containerView];
  [v6 setCenter:{MidX, v5}];
}

void sub_1001312D4(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_10013173C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 49) digits];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) _handlePINEntered:v6];
  }
}

id sub_100131BEC(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 24) testMode];
  v3 = *(*(a1 + 40) + 24);
  if (v2 == 1)
  {

    return [v3 showHomePickerUI:&__NSArray0__struct defaultIndex:-1];
  }

  else
  {

    return [v3 showDoneUI:4294960574];
  }
}

void sub_10013213C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = objc_alloc_init(NSMutableArray);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&off_10019B188 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(&off_10019B188);
        }

        v7 = SFLocalizedStringForKey();
        [v2 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [&off_10019B188 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 40) + 24) showRoomPickerUI:v2 firstSuggestedIndex:1];
}

id sub_1001328E8(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  if ([*(*(a1 + 40) + 24) testMode] == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4294960574;
  }

  v3 = *(*(a1 + 40) + 24);

  return [v3 showDoneUI:v2];
}

void sub_100133054(uint64_t a1)
{
  v1 = [NSURL URLWithString:*(a1 + 32)];
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v1)
  {
    v2 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = 0;
    v3 = [v2 openSensitiveURL:v1 withOptions:0 error:&v5];
    v4 = v5;

    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  if (dword_1001BF408 <= 90 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_13:
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)()
{
  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

{
  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}