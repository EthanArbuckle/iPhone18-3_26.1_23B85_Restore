uint64_t sub_100001764(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100001BC0(void *a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005B50();
    }

    if (([v3 aa_isAAErrorWithCode:-1] & 1) == 0)
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100005BC4();
      }

      v7 = +[LSApplicationWorkspace defaultWorkspace];
      [v7 openURL:a1[4] withOptions:0];

      v8 = *(a1[5] + 8);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully presented Custodian Invitation UI for UUID - %@", &v10, 0xCu);
    }
  }
}

void sub_100001E38(void *a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005C04();
    }

    if (([v3 aa_isAAErrorWithCode:-1] & 1) == 0)
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100005BC4();
      }

      v7 = +[LSApplicationWorkspace defaultWorkspace];
      [v7 openURL:a1[4] withOptions:0];

      v8 = *(a1[5] + 8);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully presented Inheritance Invitation UI for beneficiaryID - %@", &v10, 0xCu);
    }
  }
}

void sub_1000024C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000024E0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully verified manatee. Displaying invitation.", v10, 2u);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 presentViewController:WeakRetained[6] animated:1 completion:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005CB4();
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 _callCompletionWithError:v5];
  }
}

void sub_100002C88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005EAC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AAUIRemoteViewController _persistUserHaveSeenAlertWithAction:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: saved was successful", &v6, 0xCu);
  }

  [*(a1 + 32) _callCompletionWithError:0];
}

void sub_1000036B4(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteContextInfo];

  v3 = _AALogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote context found. Proceeding to launch the authorization flow.", buf, 2u);
    }

    v5 = *(a1 + 32);
    v6 = [v5 xpcEndpoint];
    [v5 setUpLookupConnection:v6];

    v7 = *(a1 + 32);
    v8 = [v7 remoteContextInfo];
    [v7 _buildViewModelWithContextInfo:v8];
  }

  else
  {
    if (v4)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No remote context found. Failed to launch the flow.", v9, 2u);
    }

    [*(a1 + 32) notifyFlowCompletionToExitScene];
  }
}

void sub_1000039A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000039C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100006290();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndExit];
}

void sub_100003EAC(id a1)
{
  v1 = _AAUILogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Exiting hidden app process.", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 openSessions];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[UIApplication sharedApplication];
        [v9 requestSceneSessionDestruction:v8 options:0 errorHandler:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  exit(0);
}

id sub_10000415C(uint64_t a1)
{
  [*(a1 + 32) setWelcomeController:0];
  v2 = *(a1 + 32);

  return [v2 endUIService];
}

void sub_10000437C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee state has been verified.", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100006370();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100004524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100004540(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _respondToInheritanceInvitationWithResponse:1];
  }

  else
  {
    [WeakRetained _callCompletionWithError:v7];
  }
}

void sub_100004798(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000063E0();
    }

    v5 = *(a1 + 32);
    v6 = v3;
    goto LABEL_8;
  }

  [*(a1 + 32) _dismissBeneficiaryInvitationReminderFollowUp];
  v5 = *(a1 + 32);
  if (*(a1 + 40) != 1)
  {
    v6 = 0;
LABEL_8:
    [v5 _callCompletionWithError:v6];
    goto LABEL_9;
  }

  [v5 _showInheritanceInvitationAcceptedView];
LABEL_9:
}

void sub_100004930(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000494C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee state has been verified.", v9, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _respondToCustodianInvitationWithResponse:1];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100006370();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _callCompletionWithError:v5];
  }
}

void sub_100004BBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100006450();
    }

    v5 = *(a1 + 32);
    v6 = v3;
    goto LABEL_8;
  }

  [*(a1 + 32) _dismissCustodianInvitationReminderFollowUp];
  v5 = *(a1 + 32);
  if (*(a1 + 40) != 1)
  {
    v6 = 0;
LABEL_8:
    [v5 _callCompletionWithError:v6];
    goto LABEL_9;
  }

  [v5 _showCustodianInvitationAcceptedView];
LABEL_9:
}

void sub_100004D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [AACustodianshipInfo alloc];
    v3 = [WeakRetained[5] custodianshipInfo];
    v4 = [v3 custodianID];
    v5 = [WeakRetained[5] custodianshipInfo];
    v6 = [v5 ownerHandle];
    v7 = [v2 initWithID:v4 status:2 ownerHandle:v6];

    v8 = [[AAOBCustodianInvitationModel alloc] initWithCustodianshipInfo:v7];
    v9 = [[AAUIOBCustodianInvitationModel alloc] initWithModel:v8];
    v10 = [[AAUIOBWelcomeController alloc] initWithViewModel:v9];
    v11 = [v10 secondaryButton];
    [v11 addTarget:WeakRetained action:"_goToAccountRecoverySettings" forEvents:64];

    [v10 setDelegate:WeakRetained];
    [WeakRetained[6] presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000064C0();
    }
  }
}

void sub_100004FA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [AACustodianshipInfo alloc];
    v3 = [WeakRetained[5] custodianshipInfo];
    v4 = [v3 custodianID];
    v5 = [WeakRetained[5] custodianshipInfo];
    v6 = [v5 ownerHandle];
    v7 = [v2 initWithID:v4 status:2 ownerHandle:v6];

    v8 = [[AAOBInheritanceInvitationModel alloc] initWithAcceptedViewForBenefactorInfo:v7];
    v9 = [[AAUIOBInheritanceInvitationViewModel alloc] initWithModel:v8];
    v10 = [[AAUIOBWelcomeController alloc] initWithViewModel:v9];
    v11 = [v10 secondaryButton];
    [v11 addTarget:WeakRetained action:"_goToAccountBeneficiarySettings" forEvents:64];

    [v10 setDelegate:WeakRetained];
    [WeakRetained[6] presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000064FC();
    }
  }
}

void sub_100005218(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000065A8();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dismissed followup? %d", v7, 8u);
  }
}

void sub_100005420(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000065A8();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dismissed followup? %d", v7, 8u);
  }
}

void sub_100005998(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
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

void sub_100005AD8()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005B14()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005C78()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005CB4()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005F34(void *a1, NSObject *a2)
{
  v3 = [a1 objectForKeyedSubscript:@"modelType"];
  sub_100005970();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unsupported ViewModel... please file a radar to Apple Account | Experience. Model typed: %@", v4, 0xCu);
}

void sub_100005FD0()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100006040()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000607C()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000060B8()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000060F4()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100006130()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000616C()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000061A8()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000061E4()
{
  sub_100005970();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100006254()
{
  sub_100002194();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100006290()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100006300()
{
  sub_100005970();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100006370()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000063E0()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100006450()
{
  sub_100005970();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000064C0()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000064FC()
{
  sub_100002194();
  sub_1000021A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100006538()
{
  sub_100005970();
  sub_100005964();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}