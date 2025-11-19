void sub_100002644(id a1)
{
  qword_1000694F0 = objc_alloc_init(SKClientBroker);

  _objc_release_x1();
}

void sub_1000041DC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002BFBC(a1);
  }
}

void sub_100004224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C03C(a1);
    }
  }

  else if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 8);
    objc_sync_enter(v7);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [*(*(a1 + 32) + 8) objectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 updatedTransactions:v5];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
  }
}

void sub_1000044FC(id a1)
{
  qword_100069500 = objc_alloc_init(SKServiceBroker);

  _objc_release_x1();
}

uint64_t sub_100004608(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000046F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000047D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000048C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000049A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004A90(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004B78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004D48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004E30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100004F18(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000050D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

void sub_100005140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

void sub_1000060D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000060F4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = sub_1000061D8(v5);
  v7 = v6;
  if (v6 != v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v10];
  }

  else
  {
    v8 = [v10 stringByAppendingString:@"_desc"];
    v9 = [v5 description];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
  }
}

id sub_1000061D8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = v1;
LABEL_4:
    v3 = v2;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [SKUIErrorHelper errorWithSafeUserInfo:v1];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000064B8;
    v22 = sub_1000064C8;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000064D0;
    v13[3] = &unk_1000510D8;
    v13[4] = &v18;
    v13[5] = &v14;
    [v1 enumerateObjectsUsingBlock:v13];
    if (v19[5])
    {
      v5 = [v1 count];
      v3 = [[NSMutableArray alloc] initWithCapacity:v5];
      v6 = [v1 subarrayWithRange:{0, v15[3]}];
      [v3 addObjectsFromArray:v6];

      [v3 addObject:v19[5]];
      v7 = v15[3] + 1;
      if (v7 < v5)
      {
        do
        {
          v8 = [v1 objectAtIndexedSubscript:v7];
          v9 = sub_1000061D8();
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = [v8 description];
          }

          v12 = v11;

          [v3 addObject:v12];
          ++v7;
        }

        while (v5 != v7);
      }
    }

    else
    {
      v3 = v1;
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v3 = 0;
  }

LABEL_5:

  return v3;
}

void sub_100006484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000064B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000064D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = sub_1000061D8();
  if (v7 != v9)
  {
    v8 = v7;
    if (!v7)
    {
      v8 = [v9 description];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
    if (!v7)
    {
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  if (+[_TtC17StoreKitUIService21objc_LockscreenStatus isDeviceUnlocked])
  {
    +[SKUIApplicationController prepareForLaunch];
    v5 = +[AVAudioSession sharedInstance];
    [v5 setCategory:AVAudioSessionCategoryPlayback error:0];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = UIApplicationMain(a1, a2, 0, v7);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C0D0();
    }

    v8 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_100006928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006948(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConsentProvided:v3];

  [WeakRetained _dismissViewService];
}

void sub_100006C90(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
}

void sub_1000086AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000086C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SKUIReviewInAppController alloc] initWithConfiguration:v3];
  [*(a1 + 32) setReviewInAppController:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000087D0;
  v7[3] = &unk_100051470;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = [*(a1 + 32) reviewInAppController];
  [v5 setCompletion:v7];

  v6 = [*(a1 + 32) reviewInAppController];
  [v6 start];

  objc_destroyWeak(&v8);
}

void sub_1000087D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = +[SSLogConfig sharedConfig];
    v11 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v9 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v26[0] = 0;
      LODWORD(v23) = 2;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_22:

        goto LABEL_23;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, v26, v23];
      free(v15);
      SSFileLog();
    }

    goto LABEL_22;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = [WeakRetained _clientViewControllerProxy];
        v9 = v8;
        v10 = &off_100054FA0;
LABEL_21:
        [v8 didFinishWithResult:v10 error:0];
        goto LABEL_22;
      }
    }

    else
    {
      [WeakRetained _loadDidFailWithError:v5];
    }

    goto LABEL_23;
  }

  if (a2 == 2)
  {
    v8 = [WeakRetained _clientViewControllerProxy];
    v9 = v8;
    v10 = &off_100054F88;
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [UIImage imageNamed:@"toast-review" inBundle:v16];

    v17 = [SKUIToastViewController alloc];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"TOAST_REVIEW_FINISHED_PRIMARY" value:&stru_100052318 table:0];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TOAST_REVIEW_FINISHED_SECONDARY" value:&stru_100052318 table:0];
    v22 = [v17 initWithTitle:v19 description:v21 image:v9];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100008B04;
    v24[3] = &unk_100051148;
    v25 = v7;
    [v22 presentFromViewController:v25 completion:v24];

    goto LABEL_22;
  }

LABEL_23:
}

void sub_100008B04(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientViewControllerProxy];
  [v1 didFinishWithResult:&off_100054F70 error:0];
}

void sub_100008C08(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientViewControllerProxy];
  [v1 didFinishWithResult:&off_100054FA0 error:0];
}

void sub_1000092F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  *v12 = 138412546;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2112;
  *&v12[14] = v3;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000948C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 40)];
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) localizedName];
      v10 = [v7 _inAppConfigurationWithItemID:v6 bundleID:v8 title:v9 icon:*(a1 + 56) sandboxed:*(a1 + 80) storeExternalVersionID:*(a1 + 64)];

      (*(*(a1 + 72) + 16))();
LABEL_24:

      goto LABEL_25;
    }

    v18 = +[SSLogConfig sharedConfig];
    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = *(a1 + 32);
      v23 = objc_opt_class();
      v24 = *(a1 + 40);
      *v28 = 138412546;
      *&v28[4] = v23;
      *&v28[12] = 2112;
      *&v28[14] = v24;
      v25 = v23;
      LODWORD(v27) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_23:

        (*(*(a1 + 72) + 16))();
        goto LABEL_24;
      }

      v21 = [NSString stringWithCString:v26 encoding:4, v28, v27, *v28, *&v28[8]];
      free(v26);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v11 = +[SSLogConfig sharedConfig];
  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 32);
  *v28 = 138412546;
  *&v28[4] = objc_opt_class();
  *&v28[12] = 2112;
  *&v28[14] = v5;
  v16 = *&v28[4];
  LODWORD(v27) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, v28, v27, *v28, *&v28[16]];
    free(v17);
    SSFileLog();
LABEL_12:
  }

  (*(*(a1 + 72) + 16))();
LABEL_25:
}

void sub_100009CF8(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientViewControllerProxy];
  [v2 didFinishWithResult:&off_100054FB8 error:*(a1 + 40)];
}

void sub_10000A910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A938(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _privacyViewControllerDidFinishWithResult:a2];
}

void sub_10000AB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AB88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_10000AC80(id a1)
{
  v4 = SSPrivacyIdentifierMusicStore;
  v1 = +[UIColor systemPinkColor];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_100069510;
  qword_100069510 = v2;
}

void sub_10000B078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAcknowledgementReceived:1];
  [WeakRetained splashDoneButtonPressed:0];
}

void sub_10000B14C(id a1)
{
  qword_100069520 = [NSSet setWithObjects:SSPrivacyIdentifierMusicStore, 0];

  _objc_release_x1();
}

void sub_10000B3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B3C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (xpc_dictionary_get_int64(v5, "0") != -1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B4B4;
    block[3] = &unk_1000515A0;
    objc_copyWeak(&v10, (a1 + 32));
    v8 = v5;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v10);
  }
}

void sub_10000B4B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMessage:*(a1 + 32) connection:*(a1 + 40)];
}

void sub_10000B5D4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B64C;
  block[3] = &unk_100051148;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000B738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B754(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B7E4;
  block[3] = &unk_100051060;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10000B7E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disconnect];
}

void sub_10000BF68(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setHostApplicationIdentifier:*(*(a1 + 32) + 8)];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_10000CEA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) presentedViewController];

  if (!v3)
  {
    v4 = [*(a1 + 32) proxyHandler];
    [v4 dismissViewController];
  }
}

BOOL sub_10000D270(_OWORD *a1, const __CFString *a2)
{
  v3 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, a2, &error);
  if (error)
  {
    v7 = +[SSLogConfig sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      token.val[0] = 138412290;
      *&token.val[1] = error;
      LODWORD(v16) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        CFRelease(error);
        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, &token, v16];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v6)
  {
    v13 = CFGetTypeID(v6);
    v14 = v13 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
    CFRelease(v6);
  }

  else
  {
    v14 = 0;
  }

  CFRelease(v5);
  return v14;
}

void sub_10000E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E840(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:@"bundleId"])
  {
    v6 = 32;
  }

  else
  {
    if (![v7 isEqualToString:@"productIdentifier"])
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  objc_storeStrong((*(*(a1 + v6) + 8) + 40), a3);
LABEL_6:
}

void sub_10000EEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000EEE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000EFA0;
  v5[3] = &unk_1000516B0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10000EFA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showViewControllerForAlertProxy:*(a1 + 32)];
}

void sub_10000FB3C(id a1)
{
  qword_100069530 = objc_alloc_init(ServiceBridgedPresentationController);

  _objc_release_x1();
}

void sub_10000FE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FEC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FF7C;
  v5[3] = &unk_1000516B0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10000FF7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showAlertForAlertProxy:*(a1 + 32)];
}

void sub_1000106B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000106D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) defaultButton];
  v7 = v6 == v5;

  v8 = *(*(a1 + 40) + 8);
  v9 = [v5 buttonTitle];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000107E8;
  v10[3] = &unk_100051720;
  objc_copyWeak(v11, (a1 + 48));
  v11[1] = a3;
  [v8 _addActionWithTitle:v9 style:v7 handler:v10];

  objc_destroyWeak(v11);
}

void sub_1000107E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithButtonIndex:*(a1 + 40)];
}

void sub_100011314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100011330(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained addChildViewController:a1[4]];
  v2 = [a1[4] view];
  v3 = [WeakRetained view];
  [v3 bounds];
  [v2 setFrame:?];

  v4 = [WeakRetained view];
  [v4 addSubview:v2];

  [a1[4] didMoveToParentViewController:WeakRetained];
  [a1[5] _startIfReady];
}

id sub_100011E18()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100069540;
  v7 = qword_100069540;
  if (!qword_100069540)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100013044;
    v3[3] = &unk_1000517C0;
    v3[4] = &v4;
    sub_100013044(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100011EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v4[50] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012030;
  v10[3] = &unk_100051510;
  v11 = v3;
  v12 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000120E4;
  v7[3] = &unk_100051770;
  v8 = v11;
  v9 = *(a1 + 40);
  v5 = v11;
  v6 = v4;
  [UIView animateWithDuration:v10 animations:v7 completion:0.349999994];
}

void sub_100012030(uint64_t a1)
{
  v11 = [*(a1 + 32) view];
  [v11 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [*(a1 + 40) view];
  [v8 frame];
  MaxY = CGRectGetMaxY(v13);

  v10 = [*(a1 + 32) view];
  [v10 setFrame:{v3, MaxY, v5, v7}];
}

uint64_t sub_1000120E4(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100012704(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setDelegate:0];
  [*(*(a1 + 32) + 16) _stopApplication];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

Class sub_100013044(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100069548)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100013188;
    v4[4] = &unk_1000517F8;
    v4[5] = v4;
    v5 = off_1000517E0;
    v6 = 0;
    qword_100069548 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100069548)
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
  result = objc_getClass("MSOnboardingUtil");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002C4C0();
  }

  qword_100069540 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100013188(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100069548 = result;
  return result;
}

void sub_100014144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014168(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v7 = +[SSLogConfig sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2112;
      *&v15[14] = v5;
      v11 = *&v15[4];
      LODWORD(v14) = 22;
      v13 = v15;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v15, v14, *v15, *&v15[16]];
      free(v12);
      v13 = v10;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  [WeakRetained _loadURLWithActiveConfiguration:{*(a1 + 32), v13}];
}

void sub_1000146C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingBridgedViewController];
  [v1 dismissAnimated:0];
}

void sub_100014F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014FAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithResult:a2 error:a3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100015D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100015D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015E00;
  block[3] = &unk_100051870;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100015E00(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = +[SSLogConfig sharedConfig];
    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      *v22 = 138543618;
      *&v22[4] = objc_opt_class();
      *&v22[12] = 2112;
      *&v22[14] = @"paymentsAndShippingUrl";
      v19 = *&v22[4];
      LODWORD(v21) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_16:

        [v2 _presentErrorViewControllerWithError:*(a1 + 48)];
        goto LABEL_17;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, v22, v21, *v22, *&v22[16]];
      free(v20);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v4 = [[NSURL alloc] initWithString:*(a1 + 40)];
  v5 = [[SUAccountViewController alloc] initWithExternalAccountURL:v4];
  v6 = [v2 account];
  [v5 setAccount:v6];

  if (objc_opt_respondsToSelector())
  {
    [v5 setShowAccountGlyph:{objc_msgSend(v2, "showAccountGlyph")}];
  }

  v7 = [v2 clientInterface];
  [v7 setShowDialogOnError:1];

  v8 = [v2 clientInterface];
  [v5 setClientInterface:v8];

  v9 = [v5 authenticationContext];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v11 = [SSMutableAuthenticationContext alloc];
    v12 = [SSAccount alloc];
    v13 = [v2 account];
    v14 = [v12 initWithBackingAccount:v13];
    v10 = [v11 initWithAccount:v14];
  }

  [v10 setDisplaysOnLockScreen:1];
  [v5 setAuthenticationContext:v10];
  [v5 setStyle:0];
  [v2 setPresentedAccountViewController:v5];
  [v2 _presentViewController:v5];

LABEL_17:
}

void sub_100016138(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allItems];

  v9 = [v8 firstObject];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016238;
  block[3] = &unk_100051870;
  v13 = v5;
  v14 = v9;
  v15 = WeakRetained;
  v10 = v9;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100016238(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(a1 + 48);

    [v2 dismissHostViewControllerWithResult:0 error:?];
  }

  else
  {
    v3 = [SKUIItem alloc];
    v4 = [*(a1 + 40) lookupDictionary];
    v8 = [v3 initWithLookupDictionary:v4];

    v5 = [[SKUIGift alloc] initWithItem:v8];
    v6 = [[ServiceSKUIGiftViewController alloc] initWithGift:v5];
    v7 = +[ServiceClientContext defaultContext];
    [(ServiceSKUIGiftViewController *)v6 setClientContext:v7];

    [(ServiceSKUIGiftViewController *)v6 setEmbeddedParent:*(a1 + 48)];
    [*(a1 + 48) setUnderlyingViewController:v6];
    [*(a1 + 48) setChildViewController:v6];
  }
}

void sub_1000164F0(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:*(a1 + 32) action:"_cancelButtonAction:"];
    [v6 setTag:999];
    v3 = [*(a1 + 32) showAccountGlyph];
    v4 = [*(a1 + 40) navigationItem];
    v5 = v4;
    if (v3)
    {
      [v4 setRightBarButtonItem:v6 animated:1];
    }

    else
    {
      [v4 setLeftBarButtonItem:v6 animated:1];
    }
  }
}

void sub_100016778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000167A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissHostViewControllerWithResult:0 error:*(a1 + 32)];
}

void sub_1000172DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000172F4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100069550;
  v7 = qword_100069550;
  if (!qword_100069550)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100017F34;
    v3[3] = &unk_1000517C0;
    v3[4] = &v4;
    sub_100017F34(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000173BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001761C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 integerValue];
    if (v3 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000176C8;
  v5[3] = &unk_1000518E8;
  v6 = *(a1 + 32);
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100017910(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _viewControllerForType:a2];
  v3 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v3 setModalPresentationStyle:4];
  [v3 setTransitioningDelegate:*(a1 + 32)];
  [*(a1 + 32) setUnderlyingViewController:v3];
  [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
}

Class sub_100017F34(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100069558)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100018078;
    v4[4] = &unk_1000517F8;
    v4[5] = v4;
    v5 = off_100051958;
    v6 = 0;
    qword_100069558 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100069558)
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
  result = objc_getClass("AMSUIWebViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002C4E8();
  }

  qword_100069550 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100018078(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100069558 = result;
  return result;
}

void sub_1000180EC(uint64_t a1)
{
  sub_100018144();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSBag");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100069560 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10002C510();
    sub_100018144();
  }
}

void sub_100018144()
{
  v1[0] = 0;
  if (!qword_100069568)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100018240;
    v1[4] = &unk_1000517F8;
    v1[5] = v1;
    v2 = off_100051970;
    v3 = 0;
    qword_100069568 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100069568)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100018240(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100069568 = result;
  return result;
}

Class sub_1000182B4(uint64_t a1)
{
  sub_100018144();
  result = objc_getClass("AMSURLParser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100069570 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10002C538();
    return +[(ServiceHostRegistry *)v3];
  }

  return result;
}

void sub_100018350(id a1)
{
  qword_100069578 = objc_alloc_init(ServiceHostRegistry);

  _objc_release_x1();
}

void sub_100018CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_opt_class();
  v11 = *(a1 + 32);
  v19 = v10;
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 _hostApplicationBundleIdentifier];
  v14 = *(a1 + 48);
  v20 = 138544130;
  v21 = v10;
  v22 = 2114;
  v23 = v11;
  v24 = 2112;
  v25 = v13;
  v26 = 2048;
  v27 = v14;
  LODWORD(v18) = 42;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v7 = [NSString stringWithCString:v15 encoding:4, &v20, v18];
    free(v15);
    SSFileLog();
LABEL_10:
  }

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 _hostApplicationBundleIdentifier];
  [v3 setupWithClientBundleID:v17 bagType:*(a1 + 48)];
}

void sub_10001934C(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientViewControllerProxy];
  [v1 didFinishDismissal];
}

void sub_100019570(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0 && !*(v2 + 24))
  {
    v8 = [*(a1 + 40) navigationItem];
    v4 = [UIBarButtonItem alloc];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_100052318 table:0];
    v7 = [v4 initWithTitle:v6 style:0 target:*(a1 + 32) action:"_cancelButtonAction:"];
    [v8 setLeftBarButtonItem:v7 animated:1];
  }
}

void sub_100019A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019A9C(id *a1, unint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (a2 > 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100019C1C;
    v8[3] = &unk_1000515A0;
    objc_copyWeak(&v11, a1 + 6);
    v9 = a1[4];
    v10 = a1[5];
    dispatch_async(&_dispatch_main_q, v8);

    objc_destroyWeak(&v11);
  }

  else
  {
    [WeakRetained _respondWithSuccess:a3 == 0];
    if (a3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100019BF8;
      block[3] = &unk_100051148;
      v13 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_100019C1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _showLegacyControllerForProductID:*(a1 + 32) parameters:*(a1 + 40)];
}

void sub_100019F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100019F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  [WeakRetained _hostApplicationBundleIdentifier];
  v15 = 138544130;
  v16 = v9;
  v17 = 2114;
  v18 = v11;
  v19 = 2112;
  v20 = v10;
  v22 = v21 = 2112;
  LODWORD(v13) = 42;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, &v15, v13];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [v3 loadProductWithRequest:*(a1 + 40)];
}

void sub_10001AB44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAskToBuy:{objc_msgSend(v2, "BOOLValue")}];
}

void sub_10001C194(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setShowsRightBarButton:{objc_msgSend(v2, "BOOLValue")}];
}

void sub_10001C3F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setShowsStoreButton:{objc_msgSend(v2, "BOOLValue")}];
}

void sub_10001C730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_10001C75C(id *a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C880;
  v10[3] = &unk_100051AB8;
  objc_copyWeak(&v14, a1 + 8);
  v11 = v3;
  v4 = a1[4];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v14);
}

void sub_10001C880(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C988;
  v5[3] = &unk_100051A90;
  objc_copyWeak(&v9, (a1 + 72));
  v8 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [WeakRetained _requestRemoteViewControllerForItem:v3 withParameters:v4 completion:v5];

  objc_destroyWeak(&v9);
}

void sub_10001C988(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2 == 1)
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *v16 = 138543874;
      *&v16[4] = v9;
      *&v16[12] = 2114;
      *&v16[14] = v10;
      *&v16[22] = 2114;
      v17 = v11;
      v12 = v9;
      LODWORD(v15) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_12:

        v14 = [NSError errorWithDomain:SKErrorDomain code:0 userInfo:0];
        (*(*(a1 + 48) + 16))();

        goto LABEL_13;
      }

      v8 = [NSString stringWithCString:v13 encoding:4, v16, v15, *v16, *&v16[16], v17];
      free(v13);
      SSFileLog();
    }

    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

void sub_10001CB9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 domain];
  if (![v5 isEqualToString:SKErrorDomain])
  {

LABEL_14:
    v7 = +[SSLogConfig sharedConfig];
    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v7 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v20 = *(a1 + 32);
      *v24 = 138543874;
      *&v24[4] = v19;
      *&v24[12] = 2114;
      *&v24[14] = v20;
      *&v24[22] = 2114;
      v25 = v3;
      v21 = v19;
      LODWORD(v23) = 32;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
        goto LABEL_23;
      }

      v18 = [NSString stringWithCString:v22 encoding:4, v24, v23, *v24, *&v24[8], v25];
      free(v22);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v6 = [v3 code];

  if (v6 != 5)
  {
    goto LABEL_14;
  }

  v7 = +[SSLogConfig sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *v24 = 138543874;
  *&v24[4] = v11;
  *&v24[12] = 2114;
  *&v24[14] = v12;
  *&v24[22] = 2114;
  v25 = v13;
  v14 = v11;
  LODWORD(v23) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v10 = [NSString stringWithCString:v15 encoding:4, v24, v23, *v24, *&v24[16], v25];
    free(v15);
    SSFileLog();
LABEL_11:
  }

LABEL_23:

  (*(*(a1 + 48) + 16))();
}

void sub_10001D25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D280(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [v6 allItems];

  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = v9;
    if (!v5)
    {
      if (v9)
      {
        v11 = *(a1 + 56);
LABEL_27:
        v21 = *(v11 + 16);
        goto LABEL_28;
      }

LABEL_17:
      v22 = +[SSLogConfig sharedConfig];
      v23 = [v22 shouldLog];
      if ([v22 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v22 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v24 &= 2u;
      }

      if (v24)
      {
        v26 = objc_opt_class();
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        *v32 = 138543874;
        *&v32[4] = v26;
        *&v32[12] = 2114;
        *&v32[14] = v27;
        *&v32[22] = 2114;
        v33 = v28;
        v29 = v26;
        LODWORD(v31) = 32;
        v30 = _os_log_send_and_compose_impl();

        if (!v30)
        {
LABEL_26:

          v10 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:0];
          v11 = *(a1 + 48);
          goto LABEL_27;
        }

        v25 = [NSString stringWithCString:v30 encoding:4, v32, v31, *v32, *&v32[8], v33];
        free(v30);
        SSFileLog();
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    v10 = 0;
  }

  v12 = +[SSLogConfig sharedConfig];
  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  v16 = objc_opt_class();
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  *v32 = 138544130;
  *&v32[4] = v16;
  *&v32[12] = 2114;
  *&v32[14] = v17;
  *&v32[22] = 2114;
  v33 = v18;
  LOWORD(v34) = 2114;
  *(&v34 + 2) = v5;
  v19 = v16;
  LODWORD(v31) = 42;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v15 = [NSString stringWithCString:v20 encoding:4, v32, v31, *v32, *&v32[16], v33, v34];
    free(v20);
    SSFileLog();
LABEL_15:
  }

  v21 = *(*(a1 + 48) + 16);
LABEL_28:
  v21();
}

void sub_10001D838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D86C(id *a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D990;
  v10[3] = &unk_100051BE8;
  objc_copyWeak(&v14, a1 + 8);
  v4 = a1[7];
  v11 = v3;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v14);
}

void sub_10001D990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10001DD70;
    v34 = sub_10001DD80;
    v35 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001DD88;
    v27[3] = &unk_100051B98;
    v3 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = &v30;
    [v3 enumerateObjectsUsingBlock:v27];
    [WeakRetained _makeItemKindEventForItem:*(a1 + 40) extension:v31[5]];
    v4 = v31[5];
    if (v4)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10001E0DC;
      v22[3] = &unk_100051BC0;
      objc_copyWeak(&v26, (a1 + 72));
      v25 = &v30;
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      v7 = *(a1 + 40);
      *&v8 = *(a1 + 56);
      *(&v8 + 1) = v6;
      *&v9 = v5;
      *(&v9 + 1) = v7;
      v23 = v9;
      v24 = v8;
      v10 = [ServiceResilientRemoteViewContainerViewController instantiateWithExtension:v4 completion:v22];
      v11 = WeakRetained[9];
      WeakRetained[9] = v10;

      objc_destroyWeak(&v26);
LABEL_14:

      _Block_object_dispose(&v30, 8);
      goto LABEL_15;
    }

    v12 = +[SSLogConfig sharedConfig];
    v13 = [v12 shouldLog];
    v14 = [v12 shouldLogToDisk];
    v15 = [v12 OSLogObject];
    v16 = v15;
    if (v14)
    {
      v13 |= 2u;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 48);
      v36 = 138543618;
      v37 = v17;
      v38 = 2114;
      v39 = v18;
      v19 = v17;
      LODWORD(v21) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_13:

        (*(*(a1 + 64) + 16))();
        goto LABEL_14;
      }

      v16 = [NSString stringWithCString:v20 encoding:4, &v36, v21];
      free(v20);
      SSFileLog();
    }

    goto LABEL_13;
  }

  (*(*(a1 + 64) + 16))();
LABEL_15:
}

uint64_t sub_10001DD70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001DD88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 infoDictionary];
  v9 = [v8 objectForKey:@"SKProductPageExtensionSupportedItemKinds"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v9;
    v10 = [NSArray arrayWithObjects:&v36 count:1];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:
  v12 = [*(a1 + 32) itemKind];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v14 = [*(a1 + 32) itemDictionary];
  v15 = [v14 objectForKeyedSubscript:@"offerName"];

  v16 = [*(a1 + 32) itemKind];
  if ([v16 isEqualToString:@"appSubscriptionBundle"])
  {
  }

  else
  {
    v17 = [*(a1 + 32) itemKind];
    v18 = [v17 isEqualToString:@"softwareAddOn"];

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v7 infoDictionary];
    v20 = [v19 objectForKey:@"SKProductPageExtensionSupportedOfferPrefixes"];

    objc_opt_class();
    v28 = v11;
    v29 = v7;
    v27 = v20;
    if (objc_opt_isKindOfClass())
    {
      v35 = v20;
      v21 = [NSArray arrayWithObjects:&v35 count:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if ([v15 hasPrefix:*(*(&v30 + 1) + 8 * i)])
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
            *a4 = 1;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }

    v11 = v28;
    v7 = v29;
  }

LABEL_28:
}

void sub_10001E0DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setExtension:*(*(*(a1 + 64) + 8) + 40)];
  [WeakRetained setExtensionRequest:v9];

  if (!v7 || v8)
  {
    v12 = +[SSLogConfig sharedConfig];
    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v24 = 138543874;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v8;
      v18 = v16;
      LODWORD(v20) = 32;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_14:

        [WeakRetained _cleanUpExtension];
        (*(*(a1 + 56) + 16))();
        goto LABEL_15;
      }

      v15 = [NSString stringWithCString:v19 encoding:4, &v24, v20];
      free(v19);
      SSFileLog();
    }

    goto LABEL_14;
  }

  [WeakRetained _didReceiveRemoteViewController:v7 forItem:*(a1 + 40) withParameters:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [WeakRetained setRemoteLoadDidFinishCompletion:?];
    v11 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E398;
    block[3] = &unk_1000516B0;
    objc_copyWeak(&v23, (a1 + 72));
    v22 = v7;
    dispatch_after(v11, &_dispatch_main_q, block);

    objc_destroyWeak(&v23);
  }

LABEL_15:
}

void sub_10001E398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained productPageRemoteViewControllerLoadDidFinish:*(a1 + 32)];
}

void sub_10001E9E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _isClientEntitled];
  v4 = [*(a1 + 32) _clientViewControllerProxy];
  if (v2)
  {
    v3 = [NSNumber numberWithInteger:*(a1 + 40)];
    [v4 didFinishWithResult:v3];
  }

  else
  {
    [v4 didFinish];
  }
}

void sub_10001F584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F5A8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (a2 != 1)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = +[SSLogConfig sharedConfig];
    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    v19 = v18;
    if (v14 == 2)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = v17;
      }

      else
      {
        v20 = v17 & 2;
      }

      if (v20)
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        v35 = 138544130;
        v36 = WeakRetained;
        v37 = 2114;
        v38 = v21;
        v39 = 2114;
        v40 = v22;
        v41 = 2114;
        v42 = v23;
        LODWORD(v29) = 42;
        v24 = _os_log_send_and_compose_impl();

        if (!v24)
        {
LABEL_24:

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001F9E4;
          block[3] = &unk_100051C60;
          objc_copyWeak(&v34, (a1 + 72));
          v31 = *(a1 + 48);
          v32 = *(a1 + 56);
          v33 = *(a1 + 64);
          dispatch_async(&_dispatch_main_q, block);

          objc_destroyWeak(&v34);
          goto LABEL_33;
        }

        v19 = [NSString stringWithCString:v24 encoding:4, &v35, v29];
        free(v24);
        SSFileLog();
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v17;
    }

    else
    {
      v25 = v17 & 2;
    }

    if (v25)
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v35 = 138543874;
      v36 = WeakRetained;
      v37 = 2114;
      v38 = v26;
      v39 = 2114;
      v40 = v27;
      LODWORD(v29) = 32;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_32:

        (*(*(a1 + 64) + 16))();
        goto LABEL_33;
      }

      v19 = [NSString stringWithCString:v28 encoding:4, &v35, v29];
      free(v28);
      SSFileLog();
    }

    goto LABEL_32;
  }

  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v35 = 138544130;
  v36 = WeakRetained;
  v37 = 2114;
  v38 = v10;
  v39 = 2114;
  v40 = v11;
  v41 = 2114;
  v42 = v12;
  LODWORD(v29) = 42;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v8 = [NSString stringWithCString:v13 encoding:4, &v35, v29];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  [WeakRetained showErrorPageWithCompletion:*(a1 + 64)];
LABEL_33:
}

void sub_10001F9E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _showLegacyControllerForProductID:*(a1 + 32) parameters:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_10001FADC(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupErrorViewController];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_10001FEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100069588 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10001FFD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_1000202CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[4];
  WeakRetained[4] = 0;
}

void sub_100020494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000204AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000204C4(uint64_t a1)
{
  [*(a1 + 32) _fetchBag];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 56);
  if (v5 <= 3)
  {
    if ((v5 - 1) >= 3)
    {
      if (v5)
      {
        goto LABEL_13;
      }

      v8 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      if (v5 != 6)
      {
        goto LABEL_13;
      }

      v7 = *(*(*(a1 + 48) + 8) + 40);
      goto LABEL_10;
    }

    v16 = *(*(*(a1 + 48) + 8) + 40);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_11:
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
LABEL_12:

      goto LABEL_13;
    }

    v15 = [NSURL URLWithString:*(*(*(a1 + 48) + 8) + 40)];
LABEL_22:
    v17 = v15;
    v18 = *(*(a1 + 48) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = v17;
    goto LABEL_12;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = objc_opt_respondsToSelector();
    v14 = *(*(a1 + 48) + 8);
    v10 = *(v14 + 40);
    if ((v13 & 1) == 0)
    {
      *(v14 + 40) = 0;
      goto LABEL_12;
    }

    v15 = [v10 stringValue];
    goto LABEL_22;
  }

LABEL_13:
  if (!*(*(*(a1 + 48) + 8) + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002C618((a1 + 40), (a1 + 56));
  }
}

void sub_100020884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000208AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C6F4(v7, v9, v10, v11, v12, v13, v14, v15);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      goto LABEL_13;
    }

    v32 = 0;
    v16 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v32];
    v17 = v32;
    if (v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C768(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(WeakRetained + 1, v16);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C7DC(v16, v25, v26, v27, v28, v29, v30, v31);
    }
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100020A84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100020EB4(id a1)
{
  qword_100069598 = objc_alloc_init(ServiceBridgedNavigationController);

  _objc_release_x1();
}

void sub_1000219B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100069600 != -1)
  {
    sub_10002C864();
  }

  v4 = qword_1000695B8;
  if (os_log_type_enabled(qword_1000695B8, OS_LOG_TYPE_ERROR))
  {
    sub_10002C878(a1, v4, v3);
  }
}

Class sub_100021A2C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000695B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100021B70;
    v4[4] = &unk_1000517F8;
    v4[5] = v4;
    v5 = off_100051DA8;
    v6 = 0;
    qword_1000695B0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000695B0)
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
  result = objc_getClass("SubscriptionOfferCodeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002C938();
  }

  qword_1000695A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100021B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000695B0 = result;
  return result;
}

void sub_100021BE4(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1000684E0;
  off_1000684E0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1000695B8;
  qword_1000695B8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1000695C0;
  qword_1000695C0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1000695C8;
  qword_1000695C8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1000695D0;
  qword_1000695D0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1000695D8;
  qword_1000695D8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1000695E0;
  qword_1000695E0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1000695E8;
  qword_1000695E8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1000695F0;
  qword_1000695F0 = v17;

  qword_1000695F8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100022924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2114;
  *&v12[14] = v3;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_9:
  }
}

void sub_100022D04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100022E7C;
  v14[3] = &unk_100050FC8;
  v14[4] = v8;
  v9 = [v8 _clientViewControllerProxyWithErrorHandler:v14];
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C9E0(v7);
    }

    goto LABEL_4;
  }

  if (!v5)
  {
LABEL_4:
    v10 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
  v11 = v13;
  if (v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002CA60(v7);
  }

LABEL_10:
  v12 = [v5 userInfo];
  [v9 engagementTaskDidFinishWithResult:v12 resultData:v10 error:v6 completion:&stru_100051DE0];
}

void sub_100022E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2114;
  *&v12[14] = v3;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v7 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_9:
  }
}

void sub_100023550(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002360C;
    v6[3] = &unk_100051510;
    v7 = *(a1 + 32);
    v8 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_10002360C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _dismissWithError:*(a1 + 40)];
}

void sub_100024310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10002433C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [[SKUIProductPageItem alloc] initWithIdentifier:*(a1 + 32) mediaResult:v3];

  [WeakRetained _presentActivityViewControllerWithItem:v4];
}

void sub_1000243BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 8);
  v21 = 138544130;
  v22 = v9;
  v23 = 2114;
  v24 = v11;
  v25 = 2114;
  v26 = v10;
  v27 = 2114;
  v28 = v3;
  v12 = v9;
  LODWORD(v18) = 42;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v8 = [NSString stringWithCString:v13 encoding:4, &v21, v18];
    free(v13);
    SSFileLog();
LABEL_9:
  }

  v19 = NSLocalizedDescriptionKey;
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"ITEM_NOT_SHARABLE_TITLE" value:&stru_100052318 table:0];
  v20 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:v16];

  [WeakRetained _loadDidFailWithError:v17];
}

void sub_10002471C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  *v13 = 138543618;
  *&v13[4] = v7;
  *&v13[12] = 2114;
  *&v13[14] = v8;
  v9 = v7;
  LODWORD(v12) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v5 = [NSString stringWithCString:v10 encoding:4, v13, v12, *v13, *&v13[16]];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  v11 = [*(a1 + 32) _clientViewControllerProxy];
  [v11 didFinishWithResult:&off_100054FE8 error:0];
}

void sub_1000249B4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024A64;
  v4[3] = &unk_100051CB0;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_100024A64(uint64_t a1)
{
  v2 = [[SKUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100024B60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SKUIProductPageActivityViewController alloc] initWithProductPageItem:*(a1 + 32) clientContext:v3];

  v5 = [*(*(a1 + 40) + 8) copy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024CAC;
  v12[3] = &unk_100051ED0;
  v12[4] = *(a1 + 40);
  v13 = v5;
  v6 = v5;
  [v4 setCompletionWithItemsHandler:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024FCC;
  v9[3] = &unk_100051510;
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_100024CAC(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = +[SSLogConfig sharedConfig];
  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 32);
  v17 = objc_opt_class();
  v18 = *(a1 + 40);
  *v35 = 138543874;
  *&v35[4] = v17;
  *&v35[12] = 2114;
  *&v35[14] = v18;
  *&v35[22] = 2114;
  v36 = v11;
  v19 = v17;
  LODWORD(v34) = 32;
  v33 = v35;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v15 = [NSString stringWithCString:v20 encoding:4, v35, v34, *v35, *&v35[16], v36];
    free(v20);
    v33 = v15;
    SSFileLog();
LABEL_10:
  }

LABEL_12:
  v21 = +[SSLogConfig sharedConfig];
  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v23 &= 2u;
  }

  if (v23)
  {
    v25 = *(a1 + 32);
    v26 = objc_opt_class();
    v27 = *(a1 + 40);
    *v35 = 138543618;
    *&v35[4] = v26;
    *&v35[12] = 2114;
    *&v35[14] = v27;
    v28 = v26;
    LODWORD(v34) = 22;
    v29 = _os_log_send_and_compose_impl();

    if (!v29)
    {
      goto LABEL_21;
    }

    v24 = [NSString stringWithCString:v29 encoding:4, v35, v34];
    free(v29);
    SSFileLog();
  }

LABEL_21:
  if (a3)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = [*(a1 + 32) _clientViewControllerProxy];
  v32 = [NSNumber numberWithUnsignedInteger:v30];
  [v31 didFinishWithResult:v32 error:0];
}

id sub_100024FCC(uint64_t a1)
{
  v2 = [*(a1 + 40) view];
  v3 = [*(a1 + 32) popoverPresentationController];
  [v3 setSourceView:v2];

  [*(a1 + 40) popoverSourceRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) popoverPresentationController];
  [v12 setSourceRect:{v5, v7, v9, v11}];

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);

  return [v13 presentViewController:v14 animated:1 completion:0];
}

void sub_1000253A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientViewControllerProxy];
  [v2 didFinishWithResult:&off_100055000 error:*(a1 + 40)];
}

void sub_100025A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025A3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5)
  {
    v17 = +[SSLogConfig sharedConfig];
    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (v6)
    {
      if (v19)
      {
        v21 = objc_opt_class();
        v22 = *(a1 + 32);
        *v31 = 138543874;
        *&v31[4] = v21;
        *&v31[12] = 2114;
        *&v31[14] = v22;
        *&v31[22] = 2114;
        v32 = v6;
        v23 = v21;
        LODWORD(v30) = 32;
        v24 = _os_log_send_and_compose_impl();

        if (!v24)
        {
LABEL_22:

          v16 = *(*(a1 + 48) + 16);
          goto LABEL_23;
        }

        v20 = [NSString stringWithCString:v24 encoding:4, v31, v30, *v31, *&v31[8], v32];
        free(v24);
        SSFileLog();
      }

      goto LABEL_22;
    }

    if (v19)
    {
      v25 = objc_opt_class();
      v26 = *(a1 + 32);
      *v31 = 138543618;
      *&v31[4] = v25;
      *&v31[12] = 2114;
      *&v31[14] = v26;
      v27 = v25;
      LODWORD(v30) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_29:

        v29 = [[NSError alloc] initWithDomain:SKErrorDomain code:0 userInfo:0];
        (*(*(a1 + 48) + 16))();

        goto LABEL_24;
      }

      v20 = [NSString stringWithCString:v28 encoding:4, v31, v30, *v31, *&v31[8]];
      free(v28);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v8 = +[SSLogConfig sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = *(a1 + 32);
  *v31 = 138543618;
  *&v31[4] = v12;
  *&v31[12] = 2114;
  *&v31[14] = v13;
  v14 = v12;
  LODWORD(v30) = 22;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v11 = [NSString stringWithCString:v15 encoding:4, v31, v30, *v31, *&v31[16]];
    free(v15);
    SSFileLog();
LABEL_10:
  }

  v16 = *(*(a1 + 40) + 16);
LABEL_23:
  v16();
LABEL_24:
}

uint64_t sub_100025F90(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100069608 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000260F4(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 32);
    v5 = xpc_dictionary_get_value(xdict, "1");
    v6 = v5;
    if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      [v4 setOptions:v6];
    }

    v7 = xpc_dictionary_get_value(xdict, "2");
    v8 = v7;
    if (v7 && xpc_get_type(v7) == &_xpc_type_endpoint)
    {
      v9 = xpc_connection_create_from_endpoint(v8);
      v10 = [[SSXPCConnection alloc] initWithXPCConnection:v9];
      [v4 setResponseConnection:v10];
      v11 = SSXPCCreateMessageDictionary();
      [v10 sendMessage:v11];
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002660C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000266E4;
  block[3] = &unk_100051870;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000266E4(uint64_t a1)
{
  v4 = [*(a1 + 32) object];
  v2 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[NSURL alloc] initWithString:*(a1 + 40)];
    [v4 loadPageWithURL:v3];
  }

  else
  {
    [v4 _finishLoadWithResult:0 error:*(a1 + 48)];
  }
}

void sub_1000269A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 object];
  [v6 _finishLoadWithResult:a2 error:v5];
}

void type metadata accessor for AMSAccountMediaType()
{
  if (!qword_1000691B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000691B0);
    }
  }
}

NSString sub_100026D40@<X0>(void *a1@<X8>)
{
  result = sub_10002717C();
  *a1 = result;
  return result;
}

uint64_t sub_100026D68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100026DB0@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100026DDC(uint64_t a1)
{
  v2 = sub_1000271EC(&qword_1000691D0);
  v3 = sub_1000271EC(&qword_1000691D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100026EF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100026F34();
}

uint64_t sub_100026F34()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100026FB8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10002700C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100027084(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000270FC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10002717C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1000271B4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000271EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AMSAccountMediaType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027230()
{
  v0 = type metadata accessor for SKLogger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MKBGetDeviceLockState();
  result = 1;
  if (v4 && v4 != 3)
  {
    if (qword_1000691A8 != -1)
    {
      swift_once();
    }

    v6 = sub_100027498(v0, qword_100069E20);
    sub_1000274D0(v6, v3);
    v7 = Logger.logObject.getter();
    v8 = type metadata accessor for Logger();
    (*(*(v8 - 8) + 8))(v3, v8);
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v7, v9, "Device is locked: %d", v10, 8u);
    }

    return 0;
  }

  return result;
}

id sub_1000273E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002743C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027498(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000274D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027534(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + 104))();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_10002880C(v5, v7, sub_100028794, v8);
}

id sub_100027674(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

id sub_10002771C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002826C(&qword_100069298, &qword_1000392F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  *(&v30 + 1) = type metadata accessor for AnalyticsEvent();
  *&v29 = v1;
  v15 = v1;
  Mirror.init(reflecting:)();
  sub_100028244(v14, 0, 1, v2);
  sub_100028200();
  v27 = Dictionary.init(dictionaryLiteral:)();
  v22 = (v3 + 8);
  v23 = (v3 + 32);
  v16 = v14;
  for (i = v12; ; v12 = i)
  {
    v17 = v16;
    sub_10002834C(v16, v12, &qword_100069298, &qword_1000392F8);
    if (sub_1000282B4(v12, 1, v2) == 1)
    {
      break;
    }

    (*v23)(v26, v12, v2);
    Mirror.children.getter();
    v32 = v27;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v31 + 1))
      {
        break;
      }

      v28[0] = v29;
      v28[1] = v30;
      v28[2] = v31;
      sub_100027AB0(&v32, v28);
      sub_1000283AC(v28, &qword_1000692A0, &qword_100039300);
    }

    v27 = v32;
    v18 = v24;
    v19 = v26;
    Mirror.superclassMirror.getter();
    (*v22)(v19, v2);
    v16 = v17;
    sub_1000283AC(v17, &qword_100069298, &qword_1000392F8);
    sub_1000282DC(v18, v17);
  }

  sub_1000283AC(v16, &qword_100069298, &qword_1000392F8);
  sub_1000283AC(v12, &qword_100069298, &qword_1000392F8);
  return v27;
}

void sub_100027AB0(id *a1, uint64_t a2)
{
  sub_10002834C(a2, &v17, &qword_1000692A0, &qword_100039300);
  v4 = v18;
  if (v18)
  {
    v5 = v17;
    sub_100028460(v19);
    sub_10002834C(a2, &v17, &qword_1000692A0, &qword_100039300);

    v6 = sub_100028200();
    if (swift_dynamicCast())
    {
      v7 = v16[0];
      v8 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *a1;
      sub_1000285D8(v7, v5, v4, isUniquelyReferenced_nonNull_native);

      *a1 = v17;
      return;
    }

    sub_10002834C(a2, &v17, &qword_1000692A0, &qword_100039300);

    sub_10002826C(&qword_1000692A8, &qword_100039308);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_1000283AC(v14, &qword_1000692B0, &qword_100039310);
      return;
    }

    sub_100028404(v14, v16);
    sub_10002841C(v16, v16[3]);
    sub_100027CF0(v6, &v17);
    if (v17)
    {
      v11 = v17;
      v12 = *a1;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *a1;
      sub_1000285D8(v11, v5, v4, v13);

      *a1 = v17;
    }

    else
    {
    }

    v10 = v16;
  }

  else
  {
    v10 = v19;
  }

  sub_100028460(v10);
}

uint64_t sub_100027CF0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1000287FC(AssociatedTypeWitness);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = swift_dynamicCast();
  return sub_100028244(a2, v8 ^ 1u, 1, a1);
}

uint64_t sub_100027E24()
{
  if (qword_1000691A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  sub_100027498(v0, qword_100069E20);
  _StringGuts.grow(_:)(20);
  v1 = _typeName(_:qualified:)();
  v3 = v2;

  v11[1] = v3;
  v4._object = 0x80000001000455B0;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  v5 = v1;
  v6 = static os_log_type_t.fault.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_100029FBC(0, 0xE000000000000000, v11);
    *(v8 + 12) = 2082;
    v9 = sub_100029FBC(v5, v3, v11);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

id sub_100028018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsEvent();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100028070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100028200()
{
  result = qword_100069290;
  if (!qword_100069290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100069290);
  }

  return result;
}

uint64_t sub_10002826C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000282DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002826C(&qword_100069298, &qword_1000392F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002834C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002826C(a3, a4);
  sub_1000287FC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000283AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002826C(a2, a3);
  sub_1000287FC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100028404(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10002841C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100028460(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000284AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100028524(a1, a2, v6);
}

unint64_t sub_100028524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1000285D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000284AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002826C(&qword_1000692B8, &unk_100039318);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000284AC(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_100028714(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_100028714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10002875C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028794()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000287BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v10[4] = sub_100029000;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  sub_1000290A0();
  v10[2] = v8;
  v10[3] = &unk_1000520C8;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

void sub_1000288E4(void *a1)
{
  v2 = type metadata accessor for SKLogger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 canCreatePayload])
  {
    v6 = [a1 eventName];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_100029058;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_1000290A0();
    aBlock[2] = v8;
    aBlock[3] = &unk_100052118;
    v9 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    AnalyticsSendEventLazy();
    _Block_release(v9);
  }

  else
  {
    if (qword_1000691A8 != -1)
    {
      swift_once();
    }

    v10 = sub_100027498(v2, qword_100069E20);
    sub_1000274D0(v10, v5);
    v6 = Logger.logObject.getter();
    v11 = type metadata accessor for Logger();
    (*(*(v11 - 8) + 8))(v5, v11);
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v12, "Error sending CoreAnalytics event, invalid event provided", v13, 2u);
    }
  }
}

uint64_t sub_100028B38(void *a1)
{
  v1 = [a1 createPayload];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100028200();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Class sub_100028BA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100028200();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100028C34(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SKLogger();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1(v4);
  v8 = v7;
  if (!v7 || ![v7 canCreatePayload])
  {
    if (qword_1000691A8 != -1)
    {
      swift_once();
    }

    v12 = sub_100027498(v2, qword_100069E20);
    sub_1000274D0(v12, v6);
    v13 = Logger.logObject.getter();
    v14 = type metadata accessor for Logger();
    (*(*(v14 - 8) + 8))(v6, v14);
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, v15, "Error sending CoreAnalytics event, invalid event provided", v16, 2u);
    }

    goto LABEL_10;
  }

  v9 = [v8 createPayload];
  if (!v9)
  {
LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  v10 = v9;
  sub_100028200();
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRelease();
  return v11;
}

id sub_100028F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_AnalyticsManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100028F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_AnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100028FC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100029020()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029060()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000290B4()
{
  v0 = type metadata accessor for SKLogger();
  sub_10002912C(v0, qword_100069E20);
  sub_100027498(v0, qword_100069E20);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10002912C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t type metadata accessor for SKLogger()
{
  result = qword_100069340;
  if (!qword_100069340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000291F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_1000282B4(a1, a2, v4);
}

uint64_t sub_10002924C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100028244(a1, a2, a2, v4);
}

uint64_t sub_100029298()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_100029304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreKitUIServiceClass();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100029360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreKitUIServiceClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000293BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1000691A8 != -1)
    {
      sub_10002A8D8();
    }

    v4 = type metadata accessor for SKLogger();
    v5 = sub_100027498(v4, qword_100069E20);
    v6 = static os_log_type_t.error.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v5 = swift_slowAlloc();
      *&v62[0] = swift_slowAlloc();
      *v5 = 136446466;
      *(v5 + 4) = sub_100029FBC(0, 0xE000000000000000, v62);
      *(v5 + 12) = 2082;
      *(v5 + 14) = sub_100029FBC(0xD00000000000002ALL, 0x80000001000456E0, v62);
      _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v5, 0x16u);
      swift_arrayDestroy();
      sub_10002A910();
      sub_10002A910();
    }

    sub_100029D98();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    return v5;
  }

  v9 = v2;
  v10 = type metadata accessor for JSONDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_10002A928();
  sub_10002A080(v13, v14);
  v5 = JSONDecoder.init()();
  sub_10002A0D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    v15 = sub_10002A928();
    sub_100029D2C(v15, v16);

    return v5;
  }

  v60[0] = v62[0];
  v60[1] = v62[1];
  *v61 = v63[0];
  *&v61[9] = *(v63 + 9);
  sub_10002A180(0, &qword_1000693B0, NSKeyedUnarchiver_ptr);
  sub_10002A180(0, &qword_1000693B8, AMSEngagementRequest_ptr);
  v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v21 = v17;
  if (!v17)
  {
    if (qword_1000691A8 != -1)
    {
      sub_10002A8D8();
    }

    v24 = type metadata accessor for SKLogger();
    v5 = sub_100027498(v24, qword_100069E20);
    v25 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      sub_10002A8F8(4.8752e-34);
      String.append(_:)(v60[0]);
      v28._countAndFlagsBits = 8285;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      v5 = v59;
      v29 = sub_100029FBC(v58, v59, &v64);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_100029FBC(0xD000000000000041, 0x8000000100045710, &v64);
      _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
      sub_10002A910();
      sub_10002A910();
    }

    sub_100029D98();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    sub_10002A12C(v60);
    v18 = sub_10002A928();
    sub_100029D2C(v18, v19);
    return v5;
  }

  v56 = v9;
  if (v61[24] == 1)
  {
    v22 = objc_opt_self();
    v23 = v21;
    v57 = [v22 shared];
LABEL_20:
    v33 = [objc_opt_self() currentProcess];
    v34 = String._bridgeToObjectiveC()();
    [v33 setProxyAppBundleID:v34];

    String.lowercased()();
    v35._countAndFlagsBits = 0x6C7070612E6D6F63;
    v35._object = 0xE900000000000065;
    v36 = String.hasPrefix(_:)(v35);

    if (v36)
    {
      v37 = String._bridgeToObjectiveC()();
      [v33 setBundleIdentifier:v37];
    }

    v55 = v21;
    [v33 setAccountMediaType:*&v61[16]];
    if (qword_1000691A8 != -1)
    {
      sub_10002A8D8();
    }

    v38 = type metadata accessor for SKLogger();
    sub_100027498(v38, qword_100069E20);
    _StringGuts.grow(_:)(51);
    v39._countAndFlagsBits = 0xD000000000000031;
    v39._object = 0x8000000100045760;
    String.append(_:)(v39);
    v54 = v33;
    v40 = [v33 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);

    v45 = static os_log_type_t.default.getter();

    v46 = Logger.logObject.getter();

    if (os_log_type_enabled(v46, v45))
    {
      v47 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      sub_10002A8F8(4.8752e-34);
      String.append(_:)(v60[0]);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_100029FBC(0, 0xE000000000000000, &v64);

      *(v47 + 4) = v49;
      *(v47 + 12) = 2082;
      v50 = sub_100029FBC(0, 0xE000000000000000, &v64);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s%{public}s", v47, 0x16u);
      swift_arrayDestroy();
      sub_10002A910();
      sub_10002A910();
    }

    else
    {
    }

    sub_10002A180(0, &qword_1000693C0, AMSUIEngagementTask_ptr);
    v51 = v55;
    swift_unknownObjectRetain();
    v5 = sub_100029BD8(v51, v57, v56);
    [v5 setClientInfo:v54];

    swift_unknownObjectRelease();
    sub_10002A12C(v60);
    v52 = sub_10002A928();
    sub_100029D2C(v52, v53);
    return v5;
  }

  v31 = objc_opt_self();
  v32 = v21;
  result = [v31 createBagForSubProfile];
  v57 = result;
  if (result)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_100029BD8(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100029D2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100029D40(a1, a2);
  }

  return a1;
}

uint64_t sub_100029D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100029D98()
{
  result = qword_1000693A0;
  if (!qword_1000693A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693A0);
  }

  return result;
}

Swift::Int sub_100029E24(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100029E88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100029EDC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100029F28(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100029F60(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100029FBC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100029FBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002A1C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10002A2C0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100028460(v11);
  return v7;
}

uint64_t sub_10002A080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10002A0D8()
{
  result = qword_1000693A8;
  if (!qword_1000693A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693A8);
  }

  return result;
}

uint64_t sub_10002A180(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10002A1C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002A31C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10002A2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10002A31C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002A368(a1, a2);
  sub_10002A480(&off_100052000);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002A368(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10002A564(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002A480(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10002A5D4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002A564(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10002826C(&qword_1000693C8, qword_1000393D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10002A5D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002826C(&qword_1000693C8, qword_1000393D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for EngagementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EngagementError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002A830);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002A884()
{
  result = qword_1000693D0;
  if (!qword_1000693D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693D0);
  }

  return result;
}

uint64_t sub_10002A8D8()
{

  return swift_once();
}

uint64_t sub_10002A910()
{
}

uint64_t sub_10002A934(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10002A950(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002A96C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002A9AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002AA0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001000457A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001000457C0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656E6174634F7369 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int sub_10002ABFC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10002AC50(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x7542746E65696C63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x656E6174634F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002AD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002AA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002AD80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002ABBC();
  *a1 = result;
  return result;
}

uint64_t sub_10002ADA8(uint64_t a1)
{
  v2 = sub_10002B3F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002ADE4(uint64_t a1)
{
  v2 = sub_10002B3F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10002AE20(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10002826C(&qword_1000693D8, &qword_1000395E0);
  v6 = sub_10002B85C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_10002841C(a1, a1[3]);
  sub_10002B3F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100028460(a1);
  }

  else
  {
    sub_10002B82C();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v11;
    LOBYTE(v26) = 1;
    sub_10002B82C();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v21 + 1) = v13;
    *&v21 = v12;
    LOBYTE(v23) = 2;
    sub_10002B444();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v27;
    v20 = v26;
    LOBYTE(v26) = 3;
    sub_10002B82C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = String._bridgeToObjectiveC()();

    v34 = 4;
    sub_10002B82C();
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = sub_10002B81C();
    v16(v15);
    v33 = v14 & 1;
    *&v23 = v10;
    *(&v23 + 1) = v22;
    v24 = v21;
    *v25 = v20;
    *&v25[8] = v19;
    *&v25[16] = v18;
    v25[24] = v14 & 1;
    sub_10002B498(&v23, &v26);
    sub_100028460(a1);
    v26 = v10;
    v27 = v22;
    v28 = v21;
    v29 = v20;
    v30 = v19;
    v31 = v18;
    v32 = v33;
    sub_10002A12C(&v26);
    v17 = v24;
    *a2 = v23;
    a2[1] = v17;
    a2[2] = *v25;
    *(a2 + 41) = *&v25[9];
  }
}

uint64_t sub_10002B180(void *a1)
{
  v3 = v1;
  v5 = sub_10002826C(&qword_1000693F0, &qword_1000395E8);
  v6 = sub_10002B85C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24[-v11 - 8];
  v13 = a1[4];
  sub_10002841C(a1, a1[3]);
  sub_10002B3F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = *(v3 + 8);
  LOBYTE(v25) = 0;
  sub_10002B83C(v14, v15);
  if (!v2)
  {
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    LOBYTE(v25) = 1;
    sub_10002B83C(v16, v17);
    v25 = *(v3 + 32);
    v26 = v25;
    v24[23] = 2;
    sub_10002B4D0(&v26, v24);
    sub_10002B52C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100029D40(v25, *(&v25 + 1));
    v19 = *(v3 + 48);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 3;
    sub_10002B83C(v20, v21);

    v22 = *(v3 + 56);
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

double sub_10002B38C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002AE20(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_10002B3F0()
{
  result = qword_1000693E0;
  if (!qword_1000693E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693E0);
  }

  return result;
}

unint64_t sub_10002B444()
{
  result = qword_1000693E8;
  if (!qword_1000693E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693E8);
  }

  return result;
}

unint64_t sub_10002B52C()
{
  result = qword_1000693F8;
  if (!qword_1000693F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteUIEngagementRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteUIEngagementRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002B6D4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002B718()
{
  result = qword_100069400;
  if (!qword_100069400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069400);
  }

  return result;
}

unint64_t sub_10002B770()
{
  result = qword_100069408;
  if (!qword_100069408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069408);
  }

  return result;
}

unint64_t sub_10002B7C8()
{
  result = qword_100069410;
  if (!qword_100069410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069410);
  }

  return result;
}

uint64_t sub_10002B83C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, v3 - 96, v2);
}

id sub_10002B958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10002B9F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_10002BA8C(void *a1, void *a2)
{
  v4 = sub_10002BE3C(a1, &selRef_itemKind);
  sub_10002BEAC(v4, v5, OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_itemKind);
  if (a2)
  {
    v6 = sub_10002BE3C(a2, &selRef_identifier);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_10002BEAC(v6, v7, OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_extensionName);
  result = [a1 iTunesStoreIdentifier];
  if (result)
  {
    v9 = result;
    [result integerValue];

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    return sub_10002BEAC(v10, v11, OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_productID);
  }

  return result;
}

id sub_10002BC90()
{
  v1 = &v0[OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_productID];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_extensionName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_itemKind];
  v4 = type metadata accessor for ProductLookupEvent();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10002BD20()
{
  v1 = *(v0 + OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_productID + 8);

  v2 = *(v0 + OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_extensionName + 8);

  v3 = *(v0 + OBJC_IVAR____TtC17StoreKitUIService18ProductLookupEvent_itemKind + 8);
}

id sub_10002BD7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductLookupEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002BE3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10002BEE8();
}

uint64_t sub_10002BE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3 + 8);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_10002BEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  v6 = *(v3 + a3 + 8);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10002BECC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void sub_10002BF3C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@ Not registering for unfinished transaction notifications because no bundle ID was available", &v1, 0xCu);
}

void sub_10002BFBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000443C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Error in remote proxy getting unfinished transactions: %{public}@", v2, 0x16u);
}

void sub_10002C03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000443C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Error getting unfinished transactions: %{public}@", v2, 0x16u);
}

void sub_10002C1E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000131FC();
  sub_100013214();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002C268(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000131FC();
  sub_100013214();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002C2EC(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000131FC();
  sub_100013214();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002C370(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000131FC();
  sub_100013214();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10002C3FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v8 = [a2 absoluteString];
  sub_100013214();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10002C574(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 138543874;
  v4 = a1;
  v5 = 2114;
  v6 = v2;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Invalid SKProductPageExtensionInteractionType: %lu", &v3, 0x20u);
}

void sub_10002C618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 138543618;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "No bag value for requested key: %{public}@ of type: %ld", &v4, 0x16u);
}

void sub_10002C878(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v6 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get remote view controller proxy: %{public}@", &v7, 0x16u);
}

void sub_10002C960(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: No dismissal delegate.", &v1, 0xCu);
}

void sub_10002C9E0(uint64_t *a1)
{
  v1 = *a1;
  sub_10000443C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Engagement presentation failed with error %{public}@", v2, 0x16u);
}

void sub_10002CA60(uint64_t *a1)
{
  v1 = *a1;
  sub_10000443C();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Failed to archive engagement result, error: %{public}@", v2, 0x16u);
}

void sub_10002CAE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000131FC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Invalid format for product ID.", v2, 0x16u);
}

void sub_10002CB68(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000131FC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: No ID provided for product.", v2, 0x16u);
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}