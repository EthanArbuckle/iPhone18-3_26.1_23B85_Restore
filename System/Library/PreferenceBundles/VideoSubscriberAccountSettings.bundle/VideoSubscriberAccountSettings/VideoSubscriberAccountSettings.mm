void sub_2458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  [v3 setCachedLockupRequests:a2];
  [v3 enqueueEvent:@"AppsDidChange"];
}

void sub_27A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 id];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 32);
  v13 = [v4 copy];
  (*(v12 + 16))(v12, v13);
}

void sub_2980(uint64_t a1)
{
  v6 = objc_alloc_init(NSMutableArray);
  v2 = [*(a1 + 32) createAccountFooterSpecifier];
  [v6 addObject:v2];

  v3 = [*(a1 + 32) createSignOutButtonSpecifier];
  [v6 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [v4 loadingSpecifier];
  [v4 insertContiguousSpecifiers:v6 afterSpecifier:v5 animated:1];
}

void sub_2AAC(uint64_t a1)
{
  v7 = objc_alloc_init(NSMutableArray);
  v2 = [*(a1 + 32) loadingTitleSpecifier];
  [v7 addObject:v2];

  v3 = [*(a1 + 32) loadingSpecifier];
  [v7 addObject:v3];

  v4 = [*(a1 + 32) createAppSpecifiers];
  v5 = [v4 count];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 replaceContiguousSpecifiers:v7 withSpecifiers:v4 animated:1];
  }

  else
  {
    [v6 removeContiguousSpecifiers:v7 animated:1];
  }

  [*(a1 + 32) showMVPDIfNeeded];
  [*(a1 + 32) setReadyToHandleDeepLinks:1];
}

uint64_t sub_4140(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 specifierForID:@"AccountUsername"];
    v5 = [v3 selectSpecifier:v4];
  }

  else
  {
    v7 = *(a1 + 40);
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

uint64_t sub_42D0(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(a1 + 32) highlightSpecifierWithID:@"AccountUsername"];
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_4D70(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4E44;
  v5[3] = &unk_18800;
  v5[4] = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5034;
  v3[3] = &unk_18738;
  v4 = *(a1 + 40);
  [a2 conditionallyUnwrapObject:v5 otherwise:v3];
}

id sub_4E44(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4EFC;
  v4[3] = &unk_187B0;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4F70;
  v3[3] = &unk_187D8;
  v3[4] = v5;
  return [a2 unwrapObject:v4 error:v3];
}

id sub_4EFC(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully saved account", v4, 2u);
  }

  return [*(a1 + 32) _setupAppropriateChildViewController];
}

void sub_4F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Failed to save account: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _presentError:v3];
}

id sub_5324(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Did sign out gracefully.", v4, 2u);
  }

  return [*(a1 + 32) _setupAppropriateChildViewController];
}

void sub_5398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_B534();
  }

  [*(a1 + 32) _forciblySignOutOfAccount:*(a1 + 40)];
}

id sub_56C4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5744;
  v3[3] = &unk_187D8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 unwrapObject:&stru_188B8 error:v3];
}

void sub_5744(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((VSErrorIsPublicError() & 1) == 0)
  {
    [*(a1 + 32) _presentAlertForError:v3 offeringToDeleteAccount:0];
  }
}

void sub_5BA0(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5CBC;
  v8[3] = &unk_18930;
  v4 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5E14;
  v6[3] = &unk_18878;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [v3 unwrapObject:v8 error:v6];
}

void sub_5CBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFullySupportedForRequestsExpectingAuthenticationSchemes:0])
  {
    v4 = [[VSIdentityProviderRequestManager alloc] initWithIdentityProvider:v3];
    [v4 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setRequestManager:v4];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) storage];
    v7 = [VSIdentityProviderRequest deleteAccountRequestWithAccount:v5 storage:v6];

    [v4 enqueueRequest:v7];
  }

  else
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Provider is not fully supported; forcibly signing out.", v11, 2u);
    }

    if (([v3 isDeveloper] & 1) == 0)
    {
      v9 = [v3 providerID];
      v10 = [v9 forceUnwrapObject];
      [VSMetricsManagerObjC recordSignOutEventWithProviderIdentifier:v10];
    }

    [*(a1 + 32) _forciblySignOutOfAccount:*(a1 + 40)];
  }
}

void sub_5E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_B59C();
  }

  [*(a1 + 32) _forciblySignOutOfAccount:*(a1 + 40)];
}

void sub_5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5FC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v1 _startSigningOutOfAccount:v2 withAccountInfoViewController:WeakRetained];
}

void sub_658C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) forceUnwrapObject];
    v3 = [*(a1 + 40) storage];
    v4 = [v3 channelsCenter];
    [v4 _removeSavedAccountChannelsWithCompletionHandler:0];

    v5 = [v3 privacyFacade];
    [v5 reset];

    v6 = [v3 accountStore];
    v10 = v2;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_672C;
    v9[3] = &unk_18908;
    v9[4] = *(a1 + 40);
    [v6 removeAccounts:v7 withCompletionHandler:v9];
  }

  else
  {
    v8 = *(a1 + 40);

    [v8 _setupAppropriateChildViewController];
  }
}

void sub_6964(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6A64;
  v7[3] = &unk_189F8;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6A7C;
  v5[3] = &unk_18878;
  v5[4] = v8;
  v6 = v4;
  [v3 unwrapObject:v7 error:v5];
}

void sub_6A7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [VSOptional optionalWithObject:v3];
  [v2 _presentError:v4 withAccount:v5];
}

void sub_6D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak(v12 + 9);
  objc_destroyWeak(v12 + 8);
  objc_destroyWeak(v12 + 7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 88));
  objc_destroyWeak((v13 - 80));
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_6D88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained isFinished])
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    v4 = objc_loadWeakRetained((a1 + 72));
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_6D88;
    v24[4] = sub_6D98;
    v25 = 0;
    v5 = [v3 result];
    v6 = [v5 forceUnwrapObject];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_7160;
    v23[3] = &unk_18A20;
    v23[4] = v24;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_7170;
    v22[3] = &unk_18A48;
    v22[4] = *(a1 + 48);
    [v6 unwrapObject:v23 error:v22];

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_6D88;
    v20[4] = sub_6D98;
    v21 = 0;
    v7 = [v4 result];
    v8 = [v7 forceUnwrapObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_71E0;
    v19[3] = &unk_18A70;
    v19[4] = v20;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_71F0;
    v18[3] = &unk_18A48;
    v18[4] = *(a1 + 48);
    [v8 unwrapObject:v19 error:v18];

    v9 = [*(a1 + 32) result];
    v10 = [v9 forceUnwrapObject];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7260;
    v13[3] = &unk_18A98;
    v11 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = v24;
    v16 = v20;
    v17 = v11;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_7400;
    v12[3] = &unk_187D8;
    v12[4] = v14;
    [v10 unwrapObject:v13 error:v12];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v24, 8);
  }

  else
  {
    [WeakRetained cancel];
    v3 = VSPrivateError();
    v4 = VSPublicError();
    [*(a1 + 40) _presentError:v4];
  }
}

void sub_7130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_7170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_B66C();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_71F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_B6D4();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_7260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VSIdentityProviderFilter);
  [v4 setAllIdentityProviders:v3];

  v5 = [v4 filteredIdentityProviders];
  if ([v5 count] && *(*(*(a1 + 40) + 8) + 40) && *(*(*(a1 + 48) + 8) + 40))
  {
    v6 = +[VSViewControllerFactory sharedFactory];
    v7 = [v6 identityProviderPickerViewControllerWithIdentityProviders:v5];
    v8 = [v7 forceUnwrapObject];

    [v8 setCancellationAllowed:1];
    [v8 setDelegate:*(a1 + 32)];
    [v8 setAllStorefronts:*(*(*(a1 + 48) + 8) + 40)];
    [v8 setRequestedStorefrontCountryCode:*(*(*(a1 + 40) + 8) + 40) defaultToDeveloperProviders:1];
    v9 = *(a1 + 32);
    v10 = [v8 searchController];
    [v9 _updateChildViewController:v8 searchController:v10 rightBarButtonItem:0];
  }

  else
  {
    v11 = VSErrorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_B73C(v5, a1, v11);
    }

    v12 = *(*(*(a1 + 56) + 8) + 40);
    v8 = VSPublicUnsupportedProviderError();
    [*(a1 + 32) _presentError:v8];
  }
}

void sub_7400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_B6D4();
  }

  v5 = *(a1 + 32);
  v6 = VSPublicUnsupportedProviderError();
  [v5 _presentError:v6];
}

id sub_7560(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7618;
  v4[3] = &unk_18AE8;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7734;
  v3[3] = &unk_187D8;
  v3[4] = v5;
  return [a2 unwrapObject:v4 error:v3];
}

void sub_7618(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v7 = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    VSPerformBlockOnMainThread();
  }

  else
  {
    v6 = *(a1 + 32);
    VSPerformBlockOnMainThread();
  }
}

void sub_7734(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  VSPerformBlockOnMainThread();
}

void sub_7F04(id a1, BOOL a2, NSError *a3)
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SignOut Destination handled.", v4, 2u);
  }
}

void sub_8800(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChildViewController];
  [v2 handleDestination:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_8AB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_8C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8CB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained presenterViewController];
  v4 = [[AMSUIAuthenticateTask alloc] initWithRequest:*(a1 + 32) presentingViewController:v3];
  v5 = [v4 performAuthentication];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8D9C;
  v6[3] = &unk_18B80;
  v7 = *(a1 + 40);
  [v5 addFinishBlock:v6];
}

void sub_8D9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_B808(v5, v6);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

void sub_8F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained presenterViewController];
  v4 = [[AMSUIAlertDialogTask alloc] initWithRequest:*(a1 + 32) presentingViewController:v3];
  v5 = [v4 present];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_904C;
  v6[3] = &unk_18BD0;
  v7 = *(a1 + 40);
  [v5 addFinishBlock:v6];
}

void sub_904C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_B880(v5, v6);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

void sub_A568(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) view];
  [v6 setUserInteractionEnabled:1];

  if (a2)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) destination];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Handled destination: %@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_B970(a1, v5, v7);
    }
  }

  [*(a1 + 40) finishExecutionIfPossible];
}

id sub_A864()
{
  v0 = objc_allocWithZone(VSSettingsViewModel);

  return [v0 init];
}

uint64_t sub_A8A0(void *a1)
{
  v2 = sub_AA2C(&qword_1EC48, &qword_F5F0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v10 - v5;
  *(swift_allocObject() + 16) = a1;
  sub_BA78();
  sub_AC6C();
  v7 = a1;
  sub_BAF8();
  *(swift_allocObject() + 16) = v7;
  sub_AFF8();
  v8 = v7;
  sub_BAB8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_AA2C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_AA74(uint64_t a1)
{
  v2 = *(*(sub_BB58() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_BA98() - 8) + 64);
  __chkstk_darwin();
  sub_BB38();
  sub_BB28();
  sub_BB18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [objc_msgSend(objc_allocWithZone(PSSpecifier) "init")];
  sub_BB48();
  sub_BA88();
  sub_BA68();
}

uint64_t sub_AC2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_AC6C()
{
  result = qword_1EC50;
  if (!qword_1EC50)
  {
    sub_BA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC50);
  }

  return result;
}

uint64_t sub_ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_BA58();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_BAA8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_BB38();
  v3[11] = sub_BB28();
  v11 = sub_BB18();

  return _swift_task_switch(sub_AE18, v11, v10);
}

uint64_t sub_AE18()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v13 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  sub_BAC8();
  sub_BAD8();
  sub_BA48();
  (*(v5 + 8))(v4, v6);
  v10 = sub_BB08();

  [v7 setSpecifierID:v10];

  sub_BAE8();
  (*(v3 + 8))(v2, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_AF48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_B528;

  return sub_ACC4(a1, a2, v6);
}

unint64_t sub_AFF8()
{
  result = qword_1EC58;
  if (!qword_1EC58)
  {
    sub_B05C(&qword_1EC48, &qword_F5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC58);
  }

  return result;
}

uint64_t sub_B05C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_B0A8()
{
  result = qword_1EC60;
  if (!qword_1EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60);
  }

  return result;
}

uint64_t sub_B118()
{
  v1 = sub_AA2C(&qword_1EC48, &qword_F5F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_BA78();
  sub_AC6C();
  v7 = v6;
  sub_BAF8();
  *(swift_allocObject() + 16) = v7;
  sub_AFF8();
  v8 = v7;
  sub_BAB8();
  return (*(v2 + 8))(v5, v1);
}

id sub_B2A4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VSSettingsViewModel) init];
  *a1 = result;
  return result;
}

uint64_t sub_B314()
{
  sub_B05C(&qword_1EC48, &qword_F5F0);
  sub_AFF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B378(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_B428;

  return sub_ACC4(a1, a2, v6);
}

uint64_t sub_B428()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_B73C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 count];
  v6 = *(a2 + 48);
  v7 = *(*(*(a2 + 40) + 8) + 40);
  v8 = [*(*(v6 + 8) + 40) count];
  v9 = 134218498;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to meet criteria to show picker UI: %tu, %@, %tu", &v9, 0x20u);
}

void sub_B808(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "VSASDDialogObserver - Error presenting AMS Auth dialog -- error: %@", &v2, 0xCu);
}

void sub_B880(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "VSASDDialogObserver - Error presenting AMS Dialog - error: %@", &v2, 0xCu);
}

void sub_B8F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Button pressed during state %@", &v2, 0xCu);
}

void sub_B970(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 40) destination];
  v6 = [v5 description];
  v7 = [a2 debugDescription];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to handle destination: %@, error: %@", &v8, 0x16u);
}