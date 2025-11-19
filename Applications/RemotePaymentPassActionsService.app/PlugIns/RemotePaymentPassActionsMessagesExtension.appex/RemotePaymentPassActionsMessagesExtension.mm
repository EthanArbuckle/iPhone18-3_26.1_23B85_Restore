void sub_1000013CC(id a1)
{
  qword_10001A040 = objc_alloc_init(NPKRemotePassActionCompanionConversationManager);

  _objc_release_x1();
}

void sub_100001884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000018A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000018C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _urlForMessageIdentifier:*(a1 + 40)];
  v3 = [NSData dataWithContentsOfURL:v2];
  objc_opt_class();
  v4 = NPKSecureUnarchiveObject();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = pk_RemotePassAction_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: Failed to read archive with url: %@", &v10, 0xCu);
      }
    }
  }
}

void sub_100001AC8(uint64_t a1)
{
  v2 = [*(a1 + 32) _urlForMessageIdentifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = NPKSecureArchiveObject();
  v5 = [v4 writeToURL:v2 atomically:1];
  v6 = pk_RemotePassAction_log();
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v10 = *(a1 + 48);
        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        v12 = "Debug: Set object %@ for identifier %@";
        v13 = v9;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 22;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, &v17, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v9 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v2;
        v12 = "Error: Failed to write archive to url: %@";
        v13 = v9;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 12;
        goto LABEL_8;
      }

LABEL_9:
    }
  }
}

void sub_100001CF4(uint64_t a1)
{
  v2 = [*(a1 + 32) _urlForMessageIdentifier:*(a1 + 40)];
  v3 = +[NSFileManager defaultManager];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1000018A8;
  v44 = sub_1000018B8;
  v45 = 0;
  v50 = @"NPKRemotePassActionCompanionConversationManager";
  v4 = [NSArray arrayWithObjects:&v50 count:1];
  v39[1] = _NSConcreteStackBlock;
  v39[2] = 3221225472;
  v39[3] = sub_100002284;
  v39[4] = &unk_100014508;
  v39[5] = &v40;
  PKSharedCacheCreateDirectoryURL();

  v5 = [v2 path];
  v6 = [v3 fileExistsAtPath:v5];

  if (v6)
  {
    v39[0] = 0;
    v7 = [v3 removeItemAtURL:v2 error:v39];
    v8 = v39[0];
    if (v7)
    {
      v9 = pk_RemotePassAction_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

      if (v10)
      {
        v11 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 40);
          *buf = 138412290;
          v47 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Debug: Removed archive for identifier: %@", buf, 0xCu);
        }
      }

      v13 = [v41[5] path];
      v38 = v8;
      v14 = [v3 contentsOfDirectoryAtPath:v13 error:&v38];
      v15 = v38;

      if (v14)
      {
        if (![v14 count])
        {
          v16 = v41[5];
          v37 = v15;
          v17 = [v3 removeItemAtURL:v16 error:&v37];
          v8 = v37;

          if (v17)
          {
            v18 = pk_RemotePassAction_log();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

            if (v19)
            {
              v20 = pk_RemotePassAction_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v21 = v41[5];
                *buf = 138412290;
                v47 = v21;
                v22 = "Debug: Removed empty directory at url: %@";
                v23 = v20;
                v24 = OS_LOG_TYPE_DEBUG;
                v25 = 12;
LABEL_29:
                _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v25);
                goto LABEL_30;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v34 = pk_RemotePassAction_log();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

            if (v35)
            {
              v20 = pk_RemotePassAction_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v36 = v41[5];
                *buf = 138412546;
                v47 = v36;
                v48 = 2112;
                v49 = v8;
                v22 = "Error: Failed to remove empty directory at url: %@ with error: %@";
                v23 = v20;
                v24 = OS_LOG_TYPE_ERROR;
                v25 = 22;
                goto LABEL_29;
              }

LABEL_30:
              v15 = v8;
LABEL_31:

              goto LABEL_32;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
        v31 = pk_RemotePassAction_log();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

        if (v32)
        {
          v20 = pk_RemotePassAction_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v33 = [v41[5] path];
            *buf = 138412546;
            v47 = v33;
            v48 = 2112;
            v49 = v15;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error: Failed to get directory contents at path: %@ with error: %@", buf, 0x16u);
          }

          goto LABEL_31;
        }
      }

LABEL_32:

      goto LABEL_33;
    }

    v29 = pk_RemotePassAction_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      v14 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = v2;
        v48 = 2112;
        v49 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: Failed to remove archive at url: %@ with error: %@", buf, 0x16u);
      }

LABEL_20:
      v15 = v8;
      goto LABEL_32;
    }

    v15 = v8;
  }

  else
  {
    v26 = pk_RemotePassAction_log();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      v14 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        *buf = 138412290;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: No archive found to remove for identifier: %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_32;
    }

    v15 = 0;
  }

LABEL_33:
  _Block_object_dispose(&v40, 8);
}

void sub_10000223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002460(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = pk_RemotePassAction_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error: Failed to create NPKRemotePassActionCompanionConversationManager directory with error: %@", &v15, 0xCu);
      }
    }
  }

  v12 = [v8 path];
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_1000061CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (v7)
  {
    [*(a1 + 32) _presentAlertWithDisplayableError:v7];
  }

  v8 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v9 = [*(a1 + 40) response];
  v10 = [v9 identifier];
  v11 = [v8 requestForIdentifier:v10];

  if (a2)
  {
    v12 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
    v13 = [v11 identifier];
    [v12 removeRequestForIdentifier:v13];
  }

  else
  {
    [*(a1 + 32) _restoreRequestDataURLForResponseMessage:*(a1 + 40) toMatchRequest:v11];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, v15);
  }
}

void sub_100006304(uint64_t a1, void *a2)
{
  v3 = [a2 givenName];
  if ([*(a1 + 32) supportsTopUp])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) currencyAmount];
    v6 = [*(a1 + 48) passOrganizationName];
    v7 = [*(a1 + 32) action];
    v8 = [*(a1 + 48) passLocalizedDescription];
    v9 = [v4 _serviceProviderPaymentRequestForEnteredValueAmount:v5 recipientName:v3 organization:v6 action:v7 forLocalizedPassName:v8];
  }

  else
  {
    if (![*(a1 + 32) supportsCommutePlanRenewal])
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 48);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 48);
    if (!v11)
    {
      goto LABEL_11;
    }

    v5 = v11;
    v12 = *(a1 + 40);
    v6 = [v11 serviceProviderData];
    v7 = [*(a1 + 48) currencyAmount];
    v8 = [*(a1 + 48) passOrganizationName];
    v13 = [*(a1 + 32) action];
    v14 = [*(a1 + 48) passLocalizedDescription];
    v9 = [v12 _serviceProviderPaymentRequestForSelectedItemWithServiceProviderData:v6 amount:v7 recipientName:v3 organization:v8 action:v13 forLocalizedPassName:v14];
  }

  if (v9)
  {
    [*(a1 + 40) _presentPaymentSheetForPaymentRequest:v9 withCompletion:*(a1 + 56)];
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  v15 = pk_RemotePassAction_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    v9 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = 0;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: Failed to construct a payment request (%@) for response: %@ to request: %@!", &v19, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void sub_100006A94(id a1, UIViewController *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  [(UIViewController *)v5 willMoveToParentViewController:0];
  v4 = [(UIViewController *)v5 view];
  [v4 removeFromSuperview];

  [(UIViewController *)v5 removeFromParentViewController];
}

void sub_1000074E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remotePassUIService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = nullsub_1;
  v7[3] = &unk_100014658;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  [v5 presentRemotePassValueEntryViewControllerForRequest:v6 contact:v4 completion:v7];
}

void sub_100007594(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remotePassUIService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = nullsub_2;
  v7[3] = &unk_100014658;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  [v5 presentRemotePassItemSelectionViewControllerForRequest:v6 contact:v4 completion:v7];
}

void sub_100007644(id a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [v2 openSensitiveURL:v1 withOptions:0];
}

id *sub_1000078B4(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _presentAlertWithDisplayableError:a2];
  }

  return result;
}

id *sub_100007AC4(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _presentAlertWithDisplayableError:a2];
  }

  return result;
}

void sub_100007D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = objc_retainBlock(WeakRetained[4]);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Authorization request for payment authorization coordinator: %@ did finish; _authorizationCoordinatorHandler: %@", &v10, 0x16u);
    }
  }

  v8 = WeakRetained[4];
  if (v8)
  {
    (*(v8 + 2))(v8, *(WeakRetained + 24), 0, 0);
    v9 = WeakRetained[4];
    WeakRetained[4] = 0;
  }

  [*(a1 + 32) dismissWithCompletion:0];
}

void sub_100007F38(uint64_t a1)
{
  v2 = pk_RemotePassAction_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = objc_retainBlock(*(a1 + 56));
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notice: Payment authorization coordinator: %@ did authorize payment %@ with handler: %@", &v12, 0x20u);
    }
  }

  v8 = *(*(a1 + 48) + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, 0, 0);
    v9 = *(a1 + 48);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = objc_alloc_init(PKPaymentAuthorizationResult);
  [v11 setStatus:1];
  (*(*(a1 + 56) + 16))();
}

void sub_10000822C(uint64_t a1)
{
  v2 = pk_RemotePassAction_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = objc_retainBlock(*(a1 + 48));
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notice: Payment authorization coordinator: %@ did authorize purchase %@ with completion: %@", &v11, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = *(a1 + 40);
  WeakRetained[24] = v9 != 0;
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v9 == 0);
  }
}

void sub_100008E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008E28(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    WeakRetained[24] = 0;
    v3 = objc_retainBlock(*(a1 + 48));
    v4 = *(WeakRetained + 4);
    *(WeakRetained + 4) = v3;
  }

  else
  {
    v5 = pk_RemotePassAction_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error: Device failed to present payment coordinator!", buf, 2u);
      }
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) _genericErrorForAction:*(a1 + 40)];
    (*(v8 + 16))(v8, 0, 0, v9);
  }
}

void sub_100009698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_RemotePassAction_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = [v3 localizedDescription];
        v16 = 138412802;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error: Unable to insert message: %@ for response: %@ with error: %@", &v16, 0x20u);
      }
    }

    [*(a1 + 48) _restoreRequestDataURLForResponseMessage:*(a1 + 32) toMatchRequest:*(a1 + 56)];
  }

  else
  {
    v11 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Successfully inserted message %@ with response %@!", &v16, 0x16u);
      }
    }
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

void sub_100009BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = pk_RemotePassAction_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (a3 || (v5 & 1) == 0)
  {
    if (v7)
    {
      v12 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Error alert with title: %@ message: %@ dismissed", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v8 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v15 = 138412802;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Error alert with title: %@ message: %@ selected action (%@)", &v15, 0x20u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}