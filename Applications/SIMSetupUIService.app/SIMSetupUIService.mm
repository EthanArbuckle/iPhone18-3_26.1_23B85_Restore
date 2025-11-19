id sub_1000013A0()
{
  v0 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v1 = [v0 fontDescriptorWithSymbolicTraits:2];

  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

uint64_t sub_10000144C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kCTSIMSupportSIMStatusPINLocked] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", kCTSIMSupportSIMStatusPUKLocked))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:kCTSIMSupportSIMStatusPermanentlyLocked];
  }

  return v2;
}

void sub_100001D1C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v5 = [v2 entryView];
  v4 = [v3 unsignedIntegerValue];

  [v5 setAttemptsRemaining:v4];
}

void sub_100001D98(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v5 = [v2 entryView];
  v4 = [v3 unsignedIntegerValue];

  [v5 setAttemptsRemaining:v4];
}

void sub_1000028B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v4 = v2[4];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002950;
    v5[3] = &unk_10001C670;
    v5[4] = v2;
    [v3 getRemainingPINAttemptCount:v4 completion:v5];
  }
}

void sub_100002950(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 unsignedIntegerValue])
  {
    [*(*(a1 + 32) + 24) setUnlocking:0];
    [*(a1 + 32) changeHeaderText];
    v4 = [*(*(a1 + 32) + 24) entryView];
    [v4 setAttemptsRemaining:{objc_msgSend(v3, "unsignedIntegerValue")}];

    v5 = [*(*(a1 + 32) + 24) entryView];
    [v5 resetEnteredTextWithShakeAnimation:1];
  }

  else
  {
    v5 = sub_10000C1BC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[TSSIMUnlockDetailViewController simPinEntryErrorDidOccur:status:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wait for sim status change @%s", &v6, 0xCu);
    }
  }
}

uint64_t sub_100002C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if ([*(a1 + 32) isEqualToString:kCTSIMSupportSIMStatusPermanentlyLocked])
    {
      v3 = [v9[3] entryView];
      [v3 resignFirstResponder];

      v4 = v9;
      v5 = 6;
    }

    else
    {
      v6 = [*(a1 + 32) isEqualToString:kCTSIMSupportSIMStatusPUKLocked];
      v4 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }

      v5 = 5;
    }

    v7 = [v4 delegate];
    [v7 unlockDetailViewController:v9 didCompleteWithResult:v5];
  }

LABEL_7:

  return _objc_release_x1();
}

void sub_1000036FC(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 8), &state64);
  if (sub_10000C244())
  {
    v2 = sub_10000C1BC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000ED5C(&state64, v2);
    }
  }

  v3 = [*(a1 + 32) delegate];
  [v3 screenLockDidUpdate:state64 == 1];
}

int64_t sub_100003808(id a1, CTXPCServiceSubscriptionContext *a2, CTXPCServiceSubscriptionContext *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CTXPCServiceSubscriptionContext *)v4 slotID];
  if (v6 <= [(CTXPCServiceSubscriptionContext *)v5 slotID])
  {
    v8 = [(CTXPCServiceSubscriptionContext *)v4 slotID];
    if (v8 >= [(CTXPCServiceSubscriptionContext *)v5 slotID])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_100003F90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100003FB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentUnlockViewController];
    WeakRetained = v2;
  }
}

void sub_100003FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_10000C1BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EE04(v3, v5);
  }

  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v3 subscriptions];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 isSimHidden] & 1) == 0)
          {
            v12 = [*(WeakRetained + 4) getSIMStatus:v11 error:0];
            [WeakRetained _queue_processSubscriptionContext:v11 withSubscriptionSIMStatus:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    dispatch_group_leave(*(WeakRetained + 3));
  }
}

_BYTE *sub_10000420C(uint64_t a1, void *a2)
{
  result = [a2 events];
  if ((result & 0x10) != 0)
  {
    result = *(a1 + 32);
    if ((result[8] & 1) == 0)
    {

      return [result _dismissUnlockViewControllerAndDeactivate];
    }
  }

  return result;
}

void sub_100004744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[6] objectForKeyedSubscript:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [v4 carrierName];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    if ((v5 & 1) == 0)
    {
      [v4 setCarrierName:*(a1 + 40)];
      v7 = sub_10000C1BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 carrierName];
        v9 = 138412546;
        v10 = v8;
        v11 = 2080;
        v12 = "[TSSIMUnlockViewController carrierBundleChange:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "update carrier name (%@) @%s", &v9, 0x16u);
      }

      [v3 _applySubscriptionContext:*(a1 + 48) withSubscriptionAction:v4];
    }
  }
}

void sub_100004A38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[6] objectForKeyedSubscript:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [v4 phoneNumber];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    if ((v5 & 1) == 0)
    {
      [v4 setPhoneNumber:*(a1 + 40)];
      v7 = sub_10000C1BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 phoneNumber];
        v9 = 138412546;
        v10 = v8;
        v11 = 2080;
        v12 = "[TSSIMUnlockViewController phoneNumberChanged:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "update phone number (%@) @%s", &v9, 0x16u);
      }

      [v3 _applySubscriptionContext:*(a1 + 48) withSubscriptionAction:v4];
    }
  }
}

void sub_100004E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2] && (v3 = [*(a1 + 40) slotID], v2 = *(a1 + 32), v3 != v2[2]))
  {
    v6 = sub_10000C1BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 16);
      v8 = CTSubscriptionSlotAsString();
      [*(a1 + 40) slotID];
      v9 = 136315650;
      v10 = v8;
      v11 = 2080;
      v12 = CTSubscriptionSlotAsString();
      v13 = 2080;
      v14 = "[TSSIMUnlockViewController _queue_processSubscriptionContext:withSubscriptionSIMStatus:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "user selected slot %s, ignoring slot %s @%s", &v9, 0x20u);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v2 _applySubscriptionContext:v4 withSubscriptionAction:v5];
  }
}

id sub_1000057CC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) SIMUnlockProcedureDidComplete];
  v2 = *(a1 + 32);

  return [v2 _deactivate];
}

id sub_1000058BC(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

void sub_1000059E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005A00(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = [a2 uuid];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL;
}

void sub_100005B9C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const __CFString *sub_1000071C0(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"???";
  }

  else
  {
    return *(&off_10001C838 + a1);
  }
}

const __CFString *sub_1000071E4(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"???";
  }

  else
  {
    return *(&off_10001C860 + a1);
  }
}

void sub_100009800(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v15 = objc_alloc_init(UILabel);
  [v15 setText:v4];

  v5 = +[UIColor systemGrayColor];
  [v15 setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v15 setFont:v6];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 sizeToFit];
  [v3 addSubview:v15];
  v7 = [v15 trailingAnchor];
  v8 = [v3 layoutMarginsGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v15 centerYAnchor];
  v12 = [v3 layoutMarginsGuide];

  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_10000A11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A140(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained presentProxCardFlowWithDelegate:WeakRetained initialViewController:v3];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setPkNavigationController:v5];
  }

  else
  {
    v7 = sub_10000C1BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000F434(v3, v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained simSetupFlowCompleted:1];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

id sub_10000A2A4(uint64_t a1, void *a2)
{
  result = [a2 events];
  if ((result & 0x11) != 0)
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A338;
    v5[3] = &unk_10001C7A0;
    v5[4] = v4;
    return [v4 dismissViewControllerWithTransition:3 completion:v5];
  }

  return result;
}

id sub_10000A408(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

id sub_10000A7E8(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

void sub_10000BBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BC14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleLayoutUpdate:v4];
  }
}

id sub_10000C1BC()
{
  if (qword_100025E18 != -1)
  {
    sub_10000F668();
  }

  v1 = qword_100025E10;

  return v1;
}

void sub_10000C200(id a1)
{
  qword_100025E10 = os_log_create("com.apple.SIMSetupUIService", "log");

  _objc_release_x1();
}

void sub_10000CD20(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:TSNotificationUserCanceled object:TSNotificationUserCanceledReason_SwapOutEvent];
}

void sub_10000D510(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [WeakRetained presentProxCardFlowWithDelegate:WeakRetained initialViewController:v3];
      v6 = WeakRetained[3];
      WeakRetained[3] = v5;
    }

    else
    {
      v7 = sub_10000C1BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000F7FC();
      }

      [WeakRetained simSetupFlowCompleted:1];
    }

    [WeakRetained[5] registerForLockNotifications];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000D5F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [WeakRetained presentProxCardFlowWithDelegate:WeakRetained initialViewController:v3];
      v6 = WeakRetained[3];
      WeakRetained[3] = v5;
    }

    else
    {
      v7 = sub_10000C1BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000F7FC();
      }

      [WeakRetained simSetupFlowCompleted:1];
    }

    [WeakRetained[5] registerForLockNotifications];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000D6EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _presentFirstController:a2 isRemoteSignup:0];
  }

  else
  {
    v3 = sub_10000C1BC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000F878();
    }

    [*(a1 + 32) _deactivate];
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_10000D7E0(uint64_t a1, void *a2)
{
  result = [a2 events];
  if ((result & 0x10) != 0)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:TSNotificationUserCanceled object:TSNotificationUserCanceledReason_HomeButtonEvent];

    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000D8A0;
    v6[3] = &unk_10001C7A0;
    v6[4] = v5;
    return [v5 dismissViewControllerWithTransition:3 completion:v6];
  }

  return result;
}

id sub_10000D960(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

id sub_10000DB0C(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

void sub_10000DEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[UINavigationController alloc] initWithRootViewController:v3];

  [v4 setNavigationBarColor];
  [v4 setModalPresentationStyle:2];
  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void sub_10000E044(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[UINavigationController alloc] initWithRootViewController:v3];

  [v5 setNavigationBarColor];
  [v5 setModalTransitionStyle:0];
  if (+[TSUtilities inBuddy])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [v5 setModalPresentationStyle:v4];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

id sub_10000E16C(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

Class sub_10000E310(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100025E28)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000E454;
    v4[4] = &unk_10001CA50;
    v4[5] = v4;
    v5 = off_10001CA38;
    v6 = 0;
    qword_100025E28 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100025E28)
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000F990();
  }

  qword_100025E20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000E454(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025E28 = result;
  return result;
}

void sub_10000E858()
{
  sub_100002F10();
  [v1 slotID];
  CTSubscriptionSlotAsString();
  v2 = sub_1000071C0([v0 actionType]);
  sub_100002ED0();
  sub_100002E98();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000E90C()
{
  sub_100002F10();
  [v1 slotID];
  CTSubscriptionSlotAsString();
  v2 = sub_1000071C0([v0 actionType]);
  sub_100002ED0();
  sub_100002E98();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000E9C0(uint64_t a1)
{
  v1 = sub_1000071C0([*(a1 + 40) actionType]);
  sub_100002EF0();
  sub_100002E98();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10000EA68(uint64_t a1)
{
  v1 = sub_1000071C0([*(a1 + 40) actionType]);
  sub_100002EF0();
  sub_100002E98();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10000EB10(void *a1)
{
  v6 = sub_1000071E4([a1 actionSubtype]);
  sub_100002E98();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000EBB8()
{
  sub_100002F10();
  [v0 slotID];
  CTSubscriptionSlotAsString();
  sub_100002EA8();
  sub_100002E98();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_10000EC48()
{
  sub_100002F10();
  [v0 slotID];
  CTSubscriptionSlotAsString();
  sub_100002EA8();
  sub_100002E98();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_10000ECD8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TSScreenLockObserver registerForLockNotifications]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[E]unable to register @%s", &v1, 0xCu);
}

void sub_10000ED5C(void *a1, NSObject *a2)
{
  v2 = "";
  if (!*a1)
  {
    v2 = "un";
  }

  v3 = 136315394;
  v4 = v2;
  v5 = 2080;
  v6 = "[TSScreenLockObserver registerForLockNotifications]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Db] lockHandler: Screne %slocked @%s", &v3, 0x16u);
}

void sub_10000EE04(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSSIMUnlockViewController prepareForActivationWithContext:completion:]_block_invoke_2";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Db] subscription info: %@ @%s", &v2, 0x16u);
}

void sub_10000F070(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 slotID];
  v5 = 136315650;
  v6 = CTSubscriptionSlotAsString();
  v7 = 2112;
  v8 = a2;
  v9 = 2080;
  v10 = "[TSSIMUnlockViewController _queue_processSubscriptionContext:withSubscriptionSIMStatus:]";
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[Db] context %s, status %@ @%s", &v5, 0x20u);
}

void sub_10000F124(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TSSIMUnlockViewController _deactivate]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Db]  @%s", &v1, 0xCu);
}

void sub_10000F1A8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TSSIMUnlockListViewController initWithSubscriptionContexts:subscriptionActions:suppressCancellation:delegate:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Db] initWithSubscriptionContexts @%s", &v1, 0xCu);
}

void sub_10000F22C()
{
  v1[0] = 136315650;
  sub_1000099A8();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[Db] %s: result %ld @%s", v1, 0x20u);
}

void sub_10000F2AC()
{
  v1[0] = 136315650;
  sub_1000099A8();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[Db] %s: index %ld @%s", v1, 0x20u);
}

void sub_10000F32C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TSProximitySIMTransferViewController configureWithContext:completion:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[E]missing device @%s", &v1, 0xCu);
}

void sub_10000F3B0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TSProximitySIMTransferViewController configureWithContext:completion:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[E]decode CBDevice failed @%s", &v1, 0xCu);
}

void sub_10000F434(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSProximitySIMTransferViewController prepareForActivationWithContext:completion:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[E]unexpected view controller:%@ @%s", &v2, 0x16u);
}

void sub_10000F4C0(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[TSProximitySIMTransferViewController simSetupFlowCompleted:]";
  v4 = 2048;
  v5 = a1;
  v6 = 2080;
  v7 = "[TSProximitySIMTransferViewController simSetupFlowCompleted:]";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Db] %s with completionType:%ld @%s", &v2, 0x20u);
}

void sub_10000F558(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[SSRemoteAlertMonitor initWithBundleID:dismissHandler:]";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[E]invalid bundle id. try main bundle %@ @%s", &v2, 0x16u);
}

void sub_10000F5E4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SSRemoteAlertMonitor initWithBundleID:dismissHandler:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[E]invalid dismiss handler @%s", &v1, 0xCu);
}

void sub_10000F7FC()
{
  sub_10000E4D4();
  sub_10000E4C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000F8F8(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[TSSIMSetupSupportViewController simSetupFlowCompleted:]";
  v4 = 2048;
  v5 = a1;
  v6 = 2080;
  v7 = "[TSSIMSetupSupportViewController simSetupFlowCompleted:]";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Db] %s with completionType:%ld @%s", &v2, 0x20u);
}