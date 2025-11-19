void sub_10011620C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);

    [v2 didBeginProcessingRequest];
  }

  else
  {
    v3 = [NSError errorWithDomain:EMErrorDomain code:2050 userInfo:0];
    [v1 requestAbortedWithError:?];
  }
}

NSArray *__cdecl sub_1001164FC(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 representingMailboxes];

  return v2;
}

id sub_10011652C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxFromLegacyMailbox:a2];

  return v2;
}

void sub_100116560(id a1)
{
  v2 = +[UIApplication sharedApplication];
  v1 = [v2 appStoreReviewManager];
  [v1 didForeground];
}

void sub_100116DC4(uint64_t a1)
{
  [*(a1 + 32) _dismissAnyModalViewControllerOrPopoverAnimated:0];
  v2 = [NSString stringWithFormat:@"%@:", EMMailToURLScheme];
  v3 = [NSURL URLWithString:v2];

  v4 = [MFURLRoutingRequest requestWithURL:v3];
  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = [v4 future];
    v7 = +[EFScheduler mainThreadScheduler];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100117038;
    v13[3] = &unk_100650988;
    v14 = *(a1 + 40);
    [v6 onScheduler:v7 addSuccessBlock:v13];

    v8 = [v5 future];
    v9 = +[EFScheduler mainThreadScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10011704C;
    v11[3] = &unk_10064C478;
    v12 = *(a1 + 40);
    [v8 onScheduler:v9 addFailureBlock:v11];
  }

  v10 = [*(a1 + 32) urlRouter];
  [v10 routeRequest:v5];
}

void sub_100117060(uint64_t a1)
{
  [*(a1 + 32) _dismissAnyModalViewControllerOrPopoverAnimated:0];
  [*(a1 + 32) selectDefaultMailbox];
  v2 = [*(a1 + 32) splitViewController];
  [v2 showMessageListViewController:1 animated:0 completion:0];
  [*(a1 + 40) setEditing:0 animated:0];
  [*(a1 + 40) focusSearchBarAnimated:0];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100117114(uint64_t a1)
{
  [*(a1 + 32) _dismissAnyModalViewControllerOrPopoverAnimated:0];
  [*(a1 + 40) setEditing:0 animated:0];
  [*(a1 + 40) dismissSearchResultsAnimated:0];
  v2 = [*(a1 + 40) navigationController];
  v3 = [v2 popToRootViewControllerAnimated:0];

  v4 = [*(a1 + 48) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"MFMailFavoriteItemAppShortcutFavoriteItem"];
  v6 = [v5 integerValue];

  v7 = [*(a1 + 32) mailboxPickerController];
  v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
  v9 = [v7 selectFavoriteItemAtIndexPath:v8 animated:0];

  if ((v9 & 1) == 0)
  {
    v10 = +[MailMainScene log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100488BD0(v6, v10);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1001178B4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setFavoritesManagerState:a1[4]];
  [v3 setPrimaryNavState:a1[7]];
  [v3 setSupplementaryNavState:a1[8]];
  [v3 setDetailNavState:a1[9]];
  [v3 setConversationViewState:a1[5]];
  [v3 setMessageListState:a1[6]];
}

void sub_100117C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v20 - 56));

  _Unwind_Resume(a1);
}

void sub_100117CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained urlRouter];
  [v2 routeRequest:*(a1 + 32)];
}

void sub_100117E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v11;

  _Unwind_Resume(a1);
}

void sub_100118348(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001187C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24)
{
  _Block_object_dispose((v29 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1001188F0(uint64_t a1)
{
  v2 = [MFActiveDraft alloc];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(a1 + 56);
  }

  v5 = [(MFActiveDraft *)v2 initWithIdentifier:*(a1 + 40) andOriginalMessageIdentifier:v3];
  v4 = [*(a1 + 32) session];
  [v4 mf_setActiveDraft:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:MFMailComposeViewDidAnimate object:*(a1 + 32)];
}

void sub_100118B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100118C54(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) composeUndoHandler];
    v2 = [*(a1 + 32) undoManager];
    [v3 enableUndoSend:0 for:v2];
  }
}

void sub_100118EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_100118EF4(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 composeButtonPressed:v4];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = +[MailMainScene log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unable to dock draft to start a new compose.", v7, 2u);
    }
  }
}

void sub_100119BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained composeButtonPressed:*(a1 + 32)];
}

void sub_100119E50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) dockContainer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100119F38;
  v9[3] = &unk_10064CF10;
  v12 = a2;
  v7 = v5;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

void sub_100119F38(uint64_t a1)
{
  if (*(a1 + 48) != 2)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = +[UIApplication sharedApplication];
      v4 = [v3 mailboxProvider];
      v5 = [*(a1 + 32) mailboxObjectIDs];
      v6 = [v5 firstObject];
      v7 = [v4 legacyMailboxForObjectID:v6];
      v9 = [MFComposeMailMessage legacyMessageWithMessage:v2 mailboxUid:v7];

      [*(a1 + 40) resumeCompositionOfDraft:*(a1 + 32) legacyDraft:v9];
    }

    else
    {
      v8 = *(a1 + 40);

      [v8 composeButtonPressed:0];
    }
  }
}

void sub_10011A170(uint64_t a1)
{
  v2 = [*(a1 + 32) composeUndoHandler];
  v3 = [*(a1 + 32) undoManager];
  [v2 enableUndoSend:1 for:v3];

  v4 = +[MFActivityMonitor currentMonitor];
  v5 = +[MailAccount outboxMailboxUid];
  [v4 setMailbox:v5];

  v6 = +[NSBundle mainBundle];
  v8 = [v6 localizedStringForKey:@"SENDING" value:&stru_100662A88 table:@"Main"];

  v7 = +[MFActivityMonitor currentMonitor];
  [v7 setDisplayName:v8];
}

BOOL sub_10011A8E4(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = [(EMMailbox *)v2 type]== 6 || [(EMMailbox *)v2 type]== 5;

  return v3;
}

void sub_10011A944(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) userActivityRouter];
  v3 = [v6 handoffComposeController];

  if (v2 == v3)
  {
    v7 = [*(a1 + 40) userActivityRouter];
    [v7 setHandoffComposeController:0];
  }

  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    [*(a1 + 32) resolution];
  }

  v8 = [*(a1 + 40) dockContainer];
  v4 = [v8 view];
  v5 = [v4 window];
  [v5 becomeFirstResponder];
}

void sub_10011AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

id sub_10011BAA8(unsigned __int8 *a1)
{
  v7[0] = @"didShowOnboarding";
  v2 = [NSNumber numberWithBool:a1[32]];
  v8[0] = v2;
  v7[1] = @"wasPreviouslyBlockingRemoteContent";
  v3 = [NSNumber numberWithBool:a1[33]];
  v8[1] = v3;
  v7[2] = @"optedIn";
  v4 = [NSNumber numberWithBool:a1[34]];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_10011BBE4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = +[MailMainScene log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Contact Store access request finished. Contacts access is granted %{BOOL}d.", v8, 8u);
  }

  if (v4)
  {
    v6 = +[MailMainScene log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSError *)v4 ef_publicDescription];
      sub_100488CE4(v7, v8, v6);
    }
  }
}

void sub_10011BD2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011BE64;
  block[3] = &unk_10064C838;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  if (a2)
  {
    v6 = MSUserNotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Authorization complete", v7, 2u);
    }
  }

  else
  {
    v6 = MSUserNotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100488D70(v5, v6);
    }
  }

  objc_destroyWeak(&v9);
}

void sub_10011BE48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_10011BE64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldDeferUserNotificationAuthorizationRequests:1];
}

void sub_10011C158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10011C1C0(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [MailAccount accountWithUniqueId:v3];

  if (v4 && [v4 isActive])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v5;
}

void sub_10011C634(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_10011CAB8(uint64_t a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 addObserver:*(a1 + 32)];
}

void sub_10011CE68(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "closeSceneWithAnimation failed with error %@ - forcing exit", &v4, 0xCu);
  }

  exit(0);
}

id sub_10011D114(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    v3 = +[MailMainScene log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100488E68();
    }

    return [*(a1 + 32) _requestUserNotificationAuthorization];
  }

  result = [*(a1 + 32) presentOnboardingIfNecessary];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) _requestUserNotificationAuthorization];
  }

  return result;
}

void sub_10011D86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_10011D8A0(uint64_t a1)
{
  v2 = [*(a1 + 32) errorHandler];
  [v2 displayError:*(a1 + 40) forAccount:*(a1 + 48) mode:*(a1 + 56)];
}

MailAccount *__cdecl sub_10011DE34(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 accountsProvider];
  v5 = [(EMMailbox *)v2 accountIdentifier];
  v6 = [v4 legacyMailAccountForObjectID:v5];

  return v6;
}

void sub_10011DFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10011E108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

Class sub_10011EC70(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1006DD0E8)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10011EE98;
    v7[4] = &unk_10064C4F8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    qword_1006DD0E8 = _sl_dlopen();
  }

  if (!qword_1006DD0E8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MailMainScene.m" lineNumber:86 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MailMainScene.m" lineNumber:87 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1006DD0E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10011EE98()
{
  result = _sl_dlopen();
  qword_1006DD0E8 = result;
  return result;
}

void sub_10011EFA4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD0F0;
  qword_1006DD0F0 = v1;
}

uint64_t sub_10011F8D0(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MailboxList"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"MessageList"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"DetailNavigation"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t sub_10011F9F4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MessageList"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"MessageListCollapsedToPrimary"] ^ 1;
  }

  return v2;
}

uint64_t sub_10011FAE0(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"NoSelection"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"ConversationViewPrimary"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ConversationViewSecondary"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100120198(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [NSNumber numberWithInteger:a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100120218(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_map:&stru_100650C80];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

id sub_1001202AC(id a1, MFMailMenuCommand *a2)
{
  v2 = [(MFMailMenuCommand *)a2 command];

  return v2;
}

void sub_100121478(id a1)
{
  v1 = qword_1006DD100;
  qword_1006DD100 = &off_100675040;
}

void sub_100121DDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
    if (v4)
    {
      v3 = [[MFUIDebuggingOverlayViewController alloc] initWithSpecImage:v4];
      [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
    }
  }
}

void sub_1001220A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailPersistentStorageSaveOperation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001222C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v21 = v19;
  objc_destroyWeak((v20 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100122330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isFinished])
  {
    v1 = [WeakRetained taskAssertion];
    [v1 invalidate];

    [WeakRetained setTaskAssertion:0];
  }
}

void sub_100122558(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100123310(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD118;
  qword_1006DD118 = v1;
}

void sub_100123E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v13 - 96));

  _Unwind_Resume(a1);
}

void sub_100123F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _switchToComposeSceneAsReply:1 composeType:4];
}

void sub_100123FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _switchToComposeSceneAsReply:1 composeType:5];
}

void sub_100124008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _switchToComposeSceneAsReply:0 composeType:0];
}

void sub_10012407C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MailQuickLookScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_100489170(v4, v5, v3);
  }
}

id sub_1001248EC(uint64_t a1, uint64_t a2)
{
  v4 = a2 == 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 avatarGenerator];
  LOBYTE(v15) = 0;
  LOBYTE(v14) = [*(a1 + 56) isAuthenticated];
  v10 = [MFCategorizationTriageInteraction interactionWithMessageListItemSelection:v5 sender:v6 groupedSenderDisplayName:v7 origin:3 actor:2 bucket:a2 avatarGenerator:v9 isAuthenticated:v14 changeOptions:2 * v4 showMenuWithOptions:v15];

  v11 = [*(a1 + 64) delegate];
  [v10 setDelegate:v11];

  [v10 setShouldAskForConfirmation:1];
  v12 = [v10 cardActionWithCompletion:*(a1 + 72)];

  return v12;
}

void sub_100124A4C(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:?];
}

void sub_100124AC0(id *a1)
{
  v2 = [a1[4] collectionViewDataSource];
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [v3 appendSectionsWithIdentifiers:a1[5]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [a1[6] objectForKeyedSubscript:{v8, v10}];
        [v3 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v2 applySnapshot:v3 animatingDifferences:0 completion:0];
}

void sub_100124D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100124EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100124F08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained collectionView];
  v10 = [WeakRetained _configuredReusableSupplementaryViewForCollectionView:v9 elementKind:v6 indexPath:v7];

  return v10;
}

void sub_100124FC8(id a1, _TtC10MobileMail34MailRecategorizationCellHeaderView *a2, NSString *a3, NSIndexPath *a4)
{
  v5 = a2;
  v4 = +[MUILocalizedBlackPearlStrings automaticallyCategorizeAllMessages];
  [(MailRecategorizationCellHeaderView *)v5 setTitle:v4];
}

void sub_10012504C(id a1, _TtC10MobileMail34MailRecategorizationCellHeaderView *a2, NSString *a3, NSIndexPath *a4)
{
  v5 = a2;
  v4 = +[MUILocalizedBlackPearlStrings manuallyCategorizeHeaderTitle];
  [(MailRecategorizationCellHeaderView *)v5 setTitle:v4];
}

void sub_1001250D0(id a1, _TtC10MobileMail34MailRecategorizationCellHeaderView *a2, NSString *a3, NSIndexPath *a4)
{
  v5 = a2;
  v4 = +[MUILocalizedBlackPearlStrings manuallyCategorizeFooterTitle];
  [(MailRecategorizationCellHeaderView *)v5 setTitle:v4];
}

void sub_1001257A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001257E0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    v7 = [v6 window];
    v8 = [v7 traitCollection];
    v9 = [v8 mf_supportsPopoverPresentation];
    v10 = [v11 mf_supportsPopoverPresentation];

    if (v9 == v10)
    {
      [v5 updateSizeForLayoutChange];
    }

    else
    {
      [v5 _dismissSelf];
    }
  }
}

void sub_100125A18(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSource];
  [v1 reloadDataSource];
}

void sub_100125B44(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100125CA8;
  v8[3] = &unk_100650E60;
  v8[4] = *v2;
  v5 = [UISheetPresentationControllerDetent customDetentWithIdentifier:v4 resolver:v8];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [*(a1 + 32) sheetPresentationController];
  [v7 setDetents:v6];
}

void sub_100125C68(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

double sub_100125CA8(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 contentSize];
  v4 = v3;
  v5 = [*(a1 + 32) messageHeaderView];
  [v5 frame];
  v7 = v4 + v6;

  return v7;
}

UIListSeparatorConfiguration *__cdecl sub_100126A20(id a1, NSIndexPath *a2, UIListSeparatorConfiguration *a3)
{
  v3 = a3;
  [(UIListSeparatorConfiguration *)v3 setBottomSeparatorInsets:0.0, 20.0, 0.0, 20.0];

  return v3;
}

id sub_100126A7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setHeaderMode:1];
    v6 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:v5];
  }

  else
  {
    v6 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:v5];
    [v6 contentInsets];
    v8 = v7;
    [v6 contentInsets];
    v10 = v9;
    [v6 contentInsets];
    [v6 setContentInsets:{0.0, v8, v10}];
  }

  return v6;
}

void sub_100126D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100127254(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) session];
  v4 = [v5 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) requestSceneSessionDestruction:v5 options:*(a1 + 48) errorHandler:0];
  }
}

void sub_100127480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001274E0(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3)
  {
    [WeakRetained endBackgroundMonitoring];
  }
}

void sub_100127D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100128244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001283C4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MailScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048936C();
  }
}

void sub_1001286A0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MailScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_1004893B0();
  }
}

void sub_100128D5C(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) session];
  [v3 requestSceneSessionRefresh:v2];
}

void sub_100129104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MFDiskFreeSpaceMonitor defaultMonitor];
  sub_10012917C(v1, [v2 freeSpaceStatus], 0);
}

void sub_10012917C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    if (pthread_main_np() != 1)
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:"_handleFreeSpaceMonitorStatus:error:" object:a1 file:@"MailScene.m" lineNumber:479 description:@"Current thread must be main"];
    }

    switch(a2)
    {
      case 2:
        v8 = +[MailScene log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Free space is critical!", v10, 2u);
        }

        sub_100129438(a1);
        break;
      case 1:
        v7 = +[MailScene log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_1004894B8();
        }

        sub_10001C47C(a1);
        break;
      case 0:
        v6 = +[MailScene log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [v5 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1004894F8();
        }

        break;
    }
  }
}

void sub_100129354(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027490;
  v8[3] = &unk_10064CF10;
  v8[4] = *(a1 + 32);
  v10 = a2;
  v6 = v5;
  v9 = v6;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

void sub_100129438(void *a1)
{
  if (a1)
  {
    v2 = [a1 lowDiskAlertController];

    if (!v2)
    {
      v3 = sub_100129668(@"STORAGE_ALMOST_FULL");
      v4 = sub_100129668(@"LOW_DISK_SPACE_MESSAGE");
      v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

      objc_initWeak(&location, a1);
      v6 = sub_100129668(@"SETTINGS");
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100129714;
      v16 = &unk_100650FD0;
      objc_copyWeak(&v17, &location);
      v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v13];

      [v5 addAction:{v7, v13, v14, v15, v16}];
      [a1 setLowDiskAlertController:v5];
      v8 = [a1 mf_rootViewController];
      v9 = [v8 presentedViewController];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;

      [v12 presentViewController:v5 animated:0 completion:0];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1001295F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v15;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_100129668(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100662A88 table:@"Main"];

  return v3;
}

void sub_100129714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = +[MFPreferencesURL storageManagementURL];
  [v1 openSensitiveURL:v2 withOptions:0];

  [WeakRetained setLowDiskAlertController:0];
}

void sub_1001297A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100129B3C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD138;
  qword_1006DD138 = v1;
}

id sub_10012A3F0(char a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"add"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"move"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:@"change"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:@"delete"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 addObject:@"replace"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [NSString stringWithFormat:@"(%@)", v4];

  return v5;
}

void sub_10012D498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10012D4D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained mailSceneDebugGesturePerformed];
}

uint64_t sub_10012DEF0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = objc_opt_new();
    v3 = [*(a1 + 32) navigationItem];
    [v3 setScrollEdgeAppearance:v2];
  }

  else
  {
    v2 = [*(a1 + 32) navigationItem];
    [v2 setScrollEdgeAppearance:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_10012E460(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 mailboxPickerNavController];
  v3 = [v2 presentedViewController];

  v4 = +[UIPrintInteractionController sharedPrintController];
  v5 = [v4 delegate];
  v6 = [v5 delegate];

  v7 = [a1 messageDetailNavController];
  v8 = [v7 conversationViewController];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  v9 = (v3 != 0) & v5;
  return v9;
}

void sub_10012E69C(uint64_t a1)
{
  if ([UIApp launchedToTest])
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"MailSplitViewControllerWillTransitionToSizeNotification" object:*(a1 + 32)];
  }

  v2 = [*(a1 + 32) messageDetailNavController];
  v14 = [v2 conversationViewController];

  v3 = [*(a1 + 32) mailboxPickerController];
  if ([v3 mf_isPresentingPreviousDraftPopoverViewController])
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) messageListViewController];
    v4 = [v5 mf_isPresentingPreviousDraftPopoverViewController];
  }

  if (+[UIDevice mf_isPadIdiom]&& (sub_10012E460(*(a1 + 32)) & 1) != 0)
  {
    v6 = 2;
LABEL_20:
    [*(a1 + 32) showColumn:v6];
    goto LABEL_21;
  }

  v7 = [*(a1 + 32) mailboxPickerController];
  if ([v7 isEditing])
  {
    v6 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v8 = [*(a1 + 32) mailboxPickerController];
  v9 = [v8 showingPopoverViewController];

  if (v9)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) messageListViewController];
  if ([v7 isEditing])
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  v10 = [*(a1 + 32) messageListViewController];
  if ([v10 isSearchViewControllerEditing])
  {
LABEL_17:

    goto LABEL_18;
  }

  v11 = [*(a1 + 32) messageListViewController];
  if ([v11 showingPopoverViewController])
  {

    goto LABEL_17;
  }

  if ((MUISolariumFeatureEnabled() & 1) != 0 || !+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") || ([*(a1 + 32) isCollapsed] & 1) != 0 || objc_msgSend(*(a1 + 32), "displayMode") != 1)
  {

    goto LABEL_21;
  }

  v12 = [*(a1 + 32) messageListHasFocus];

  if (v12)
  {
    v6 = 1;
    goto LABEL_20;
  }

LABEL_21:
  if (v4 && +[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && ([*(a1 + 32) isCollapsed] & 1) == 0)
  {
    [*(a1 + 32) _dismissVisiblePopoverInSplitViewController];
    [v14 presentPreviousDraftPicker];
  }
}

void sub_10012E94C(uint64_t a1)
{
  [*(a1 + 32) setTransitioningSize:0];
  if ([UIApp launchedToTest])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"MailSplitViewControllerDidTransitionToSizeNotification" object:*(a1 + 32)];
  }
}

void sub_10012ECF8(uint64_t a1)
{
  v1 = [*(a1 + 32) mailboxPickerNavController];
  [v1 setToolbarHidden:0];
}

void sub_10012EDE8(uint64_t a1)
{
  v2 = [*(a1 + 32) mailboxPickerNavController];
  [v2 setToolbarHidden:1];

  v3 = [*(a1 + 32) mailboxPickerController];
  [v3 updateForSplitViewCollapseStateChanged:0];
}

id sub_10012F3BC(uint64_t a1, void *a2)
{
  v3 = [a2 command];
  [v3 setWantsPriorityOverSystemBehavior:*(a1 + 32)];

  return v3;
}

id sub_10012F418(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v12 && *(a1 + 32) == 1)
  {
    v14 = [UIImage systemImageNamed:v12];
  }

  else
  {
    v14 = 0;
  }

  v15 = [UICommand commandWithTitle:v11 image:v14 action:a2 propertyList:v13];
  v16 = [MFMailMenuCommand shortcutWithCommand:v15 menu:a6];

  return v16;
}

uint64_t sub_10012F538(uint64_t a1, char *a2)
{
  objc_opt_self();
  v3 = sub_100025E9C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012FFA0;
  v7[3] = &unk_100651170;
  v7[4] = a2;
  v4 = [v3 ef_any:v7];
  if ("selectAll:" == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

BOOL sub_10012F5F0(uint64_t a1, char *a2)
{
  objc_opt_self();
  v3 = sub_100024318();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012FFA0;
  v6[3] = &unk_100651170;
  v6[4] = a2;
  v4 = [v3 ef_any:v6];

  if (v4)
  {
    return 1;
  }

  result = 1;
  if ("find:" != a2 && "findNext:" != a2)
  {
    return "findPrevious:" == a2;
  }

  return result;
}

id sub_10012F6E0(void *a1)
{
  if (a1)
  {
    if (([a1 isCollapsed] & 1) == 0)
    {
      v5 = +[NSAssertionHandler currentHandler];
      [v5 handleFailureInMethod:"_collapsedViewController" object:a1 file:@"MailSplitViewController.m" lineNumber:653 description:{@"Called %s when split view controller is not collapsed", "-[MailSplitViewController _collapsedViewController]"}];
    }

    v2 = [a1 viewControllers];
    for (i = [v2 firstObject];
    {
      v4 = v2;
      v2 = i;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v2 topViewController];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10012F7EC(void *a1, char *a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v6 = sub_10012F238(MailSplitViewController, a2);
  v7 = sub_10012F538(MailSplitViewController, a2);
  v8 = sub_10012F5F0(MailSplitViewController, a2);
  v10 = "_previousMailboxShortcutInvoked:" == a2 || "_nextMailboxShortcutInvoked:" == a2;
  if ([a1 isCollapsed])
  {
    v11 = sub_10012F6E0(a1);
    v12 = [a1 messageListViewController];

    if (v11 == v12)
    {
      if ((v6 | v7))
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_30;
    }

    v13 = [a1 messageDetailNavController];
    v14 = [v13 conversationViewController];

    if (v11 == v14)
    {
      if (v6 || v8)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_30;
    }

    v15 = [a1 mailboxPickerController];
    if (v11 == v15)
    {

      if ("_favoriteMailboxShortcutInvoked:" == a2 || v10)
      {
        v18 = 0;
LABEL_30:

        goto LABEL_37;
      }
    }

    else
    {
    }

    v18 = 2;
    goto LABEL_30;
  }

  v16 = [a1 displayMode];
  if (v16 <= 6)
  {
    if (((1 << v16) & 0x68) != 0)
    {
      v19 = ((v6 | v7) & 1) == 0;
      v20 = 2;
LABEL_34:
      if (v19)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_37;
    }

    if (((1 << v16) & 0x14) != 0)
    {
      if (v6)
      {
        v17 = [a1 messageListViewController];
        LODWORD(v18) = [v17 shouldRouteActionToConversation:a2 withCommand:v5];

        v18 = v18;
        goto LABEL_37;
      }

      v20 = 1;
      if (!v8)
      {
        v20 = 2;
      }

      v19 = v7 == 0;
      goto LABEL_34;
    }

    if (v16 == 1)
    {
      v18 = "_favoriteMailboxShortcutInvoked:" != a2 && !v10;
      goto LABEL_37;
    }
  }

  v22 = +[MailSplitViewController log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004897D4(v23, [a1 displayMode], v22);
  }

  v18 = 2;
LABEL_37:

  return v18;
}

BOOL sub_10012FFA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 command];
  v4 = v2 == [v3 action];

  return v4;
}

void sub_100130094(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD188;
  qword_1006DD188 = v1;
}

void sub_1001306DC(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v14 + 1) + 8 * v5) setAlpha:0.0];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) setAlpha:{1.0, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v7);
  }
}

void sub_10013088C(uint64_t a1, int a2)
{
  if (a2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v8 + 1) + 8 * i);
          [v6 alpha];
          if (v7 == 0.0)
          {
            [v6 removeFromSuperview];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v3);
    }
  }
}

void sub_100130FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10013105C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained[1] mailStatusBarViewFilterCriteriaButtonTapped:?];
  }
}

void sub_1001310D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001311AC;
  v6[3] = &unk_10064C660;
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:v6];
}

id sub_10013128C(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      [*(a1 + 40) showUpdateStatusWithStatusInfo:*(a1 + 32)];
    }

    else if (v2 == 2)
    {
      [*(a1 + 40) showIndeterminateStatusWithStatusInfo:*(a1 + 32)];
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        [*(a1 + 40) showProgressBarWithStatusInfo:*(a1 + 32)];
        break;
      case 4:
        [*(a1 + 40) showUndoButtonWithStatusInfo:*(a1 + 32)];
        break;
      case 5:
        [*(a1 + 40) showFilterCriteriaButtonWithStatusInfo:*(a1 + 32)];
        break;
    }
  }

  v4.receiver = *(a1 + 40);
  v4.super_class = MailStatusBarView;
  return objc_msgSendSuper2(&v4, "setNeedsDisplay");
}

void sub_100131448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MailStatusBarView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100132654(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100132BC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) primaryLabel];
  [v2 setAttributedText:v1];
}

void sub_100132DB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) secondaryLabel];
  [v4 setAttributedText:v2];

  v3 = [*(a1 + 40) length] == 0;
  v5 = [*(a1 + 32) secondaryLabel];
  [v5 setHidden:v3];
}

void sub_100132E74(void *a1)
{
  if (a1)
  {
    v4 = [a1 _titleFont];
    v2 = [a1 primaryLabel];
    [v2 setFont:v4];

    v5 = [a1 _titleFont];
    v3 = [a1 secondaryLabel];
    [v3 setFont:v5];
  }
}

void sub_1001330C8(_Unwind_Exception *a1)
{
  if (!v1)
  {
  }

  _Unwind_Resume(a1);
}

double sub_100133274(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ([*(a1 + 32) textAlignment])
  {
    CGRectGetWidth(*(a1 + 40));
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetWidth(v17);
    UIRoundToViewScale();
    return v10 + *(a1 + 72);
  }

  else if ([*(a1 + 32) effectiveUserInterfaceLayoutDirection])
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);

    return CGRectGetWidth(*&v12);
  }

  else
  {
    return 0.0;
  }
}

void sub_100133824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001338EC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _inAppMessageChanged:v5];
  }
}

void sub_100133A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v9;

  a9.super_class = MailStatusObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100133C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100133C94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    atomic_fetch_add(WeakRetained + 3, 1uLL);
    v4 = WeakRetained;
    [(atomic_ullong *)WeakRetained setBadgeCountStatusMailboxes:*(a1 + 32)];
    [(atomic_ullong *)v4 setFilterPredicate:*(a1 + 40)];
    [(atomic_ullong *)v4 _startBadgeCountObserversWithLabel:*(a1 + 48)];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v4 selector:"icqOfferDidChange:" name:ICQCurrentOfferChangedNotification object:0];

    WeakRetained = v4;
  }
}

void sub_10013418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v31 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001342CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001342E4(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 isSmartMailbox];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 smartMailboxType];
    if (v7 == 2)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
    }

    else if (v7 == 8)
    {
      v8 = a1[4];
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 type]);
      [v8 addObject:v9];
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  return v5 ^ 1;
}

uint64_t sub_1001343E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 type]);
  LODWORD(v4) = [v4 containsObject:v5];

  return v4 ^ 1;
}

void sub_10013458C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100489888(v6, v7);
    }
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v9 = [v5 level];
    }

    else
    {
      v9 = -1;
    }

    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "iCloud quota offer level changed to %ld", &v12, 0xCu);
  }

  v10 = [*(a1 + 32) delegate];
  v11 = v10;
  if (v10)
  {
    [v10 iCloudQuotaOfferUpdated:*(a1 + 32) offer:v5];
  }
}

void sub_100134798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001347B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained delegate];
      [v9 mailStatusObserver:v8 didChangeInAppMessage:v5];
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v6 ef_publicDescription];
        sub_100489900(v11, v12, v10);
      }
    }
  }
}

void sub_1001349B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 mf_hasValidReason])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100134B58;
    v10[3] = &unk_10064D270;
    v12 = *(a1 + 32);
    v11 = v3;
    v4 = +[EFScheduler mainThreadScheduler];
    [v4 performBlock:v10];
    v5 = &v12;

    v6 = v11;
  }

  else
  {
    v6 = +[ICQInAppMessaging shared];
    v7 = ICQUIInAppMessageReasoniCloudFull;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100134B70;
    v8[3] = &unk_1006512B0;
    v9 = *(a1 + 32);
    [v6 fetchMessageForReason:v7 withCompletion:v8];
    v5 = &v9;
  }
}

void sub_100134B70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100134C98;
  v10[3] = &unk_100651288;
  v13 = *(a1 + 32);
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

void sub_100134C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_100135630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailStatusUpdateView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100135950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v16;

  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001359A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[MailStatusUpdateView log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 fireDate];
    *buf = 134218498;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = [v3 isValid];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> Received timer callback for fire date: %@, valid: %{BOOL}d", buf, 0x1Cu);
  }

  v7 = [WeakRetained delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100135B58;
  v8[3] = &unk_100651198;
  v8[4] = WeakRetained;
  [v7 currentStatusInfoWithCompletion:v8];
}

void sub_100135B10(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100135B58(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100135C34;
  v6[3] = &unk_10064C660;
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:v6];
}

void sub_100135C34(uint64_t a1)
{
  [*(a1 + 32) updateWithStatusInfo:*(a1 + 40)];
  v1 = +[UIApplication sharedApplication];
  [v1 updateDefaultImageWithReason:@"updated text changed"];
}

void sub_100135F74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) formattedStatuses];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [WeakRetained delegate];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100136140;
      v10[3] = &unk_100651328;
      v10[4] = WeakRetained;
      v11 = v3;
      [v7 currentStatusInfoWithCompletion:v10];
    }

    else
    {
      v8 = +[MailStatusUpdateView log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> Formatted status is invalid, invalidate timer", buf, 0xCu);
      }

      [v3 invalidate];
      v9 = WeakRetained[10];
      WeakRetained[10] = 0;
    }
  }
}

void sub_100136140(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013622C;
  v7[3] = &unk_10064C6B0;
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = +[EFScheduler mainThreadScheduler];
  [v6 performBlock:v7];
}

void sub_1001361FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_10013622C(id *a1)
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001365B0;
  v21[3] = &unk_100651300;
  v2 = a1 + 4;
  v22 = a1[4];
  v3 = objc_retainBlock(v21);
  v4 = [a1[5] _rebuildFormattedStatusWithStatusInfo:*v2];
  v5 = *(a1[5] + 11);
  if ((v3[2])(v3, v5))
  {
    v6 = +[MailStatusUpdateView log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = v7[11];
      v9 = [a1[4] formattedStatuses];
      v10 = [v9 count];
      *buf = 134218496;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> Transition to status at index:%lu, statuses:%lu", buf, 0x20u);
    }

    if ((v3[2])(v3, v5))
    {
      v11 = [a1[4] formattedStatuses];
      v12 = [v11 objectAtIndexedSubscript:v5];

      v13 = a1[5];
      v14 = [v13 preferredPrefixWithStatusInfo:a1[4]];
      [v13 setPrimaryLabelText:v12 prefix:v14 animated:1];

      ++v5;
    }

    if ([a1[4] shouldShowSubtitle])
    {
      if ((v3[2])(v3, v5))
      {
        v15 = [a1[4] formattedStatuses];
        v16 = [v15 objectAtIndexedSubscript:v5];

        [a1[5] setSecondaryLabelText:v16 animated:MUISolariumFeatureEnabled()];
      }

      ++v5;
    }
  }

  else
  {
    v17 = +[MailStatusUpdateView log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[5];
      *buf = 134217984;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<MailStatusUpdateView: %p> Stop timer - Last status is displayed", buf, 0xCu);
    }

    [a1[6] invalidate];
    v19 = a1[5];
    v20 = v19[10];
    v19[10] = 0;

    v5 = 0;
  }

  *(a1[5] + 11) = v5;
}

BOOL sub_1001365B0(uint64_t a1, unint64_t a2)
{
  v3 = [*(a1 + 32) formattedStatuses];
  v4 = [v3 count] > a2;

  return v4;
}

void sub_100137630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100137694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[NSUserDefaults em_userDefaults];
  [WeakRetained setForcedStatus:{objc_msgSend(v1, "integerForKey:", EMUserDefaultForceStatus)}];

  [WeakRetained _performStatusUpdate];
}

void sub_100137854(uint64_t a1)
{
  v2 = [*(a1 + 32) outgoingMessageRepository];
  [v2 addOutgoingMessageRepositoryObserver:*(a1 + 32)];
}

void sub_100137AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) activityStatusMailboxes];
  if ([v2 isEqualToArray:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) badgeCountStatusMailboxes];
    v4 = [v3 isEqualToArray:*(a1 + 48)];

    if (v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 40) copy];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) setActivityStatusMailboxes:v6];
  if (v5)
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [*(a1 + 32) activityStatusMailboxes];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 repository];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = [*(a1 + 32) mailboxRepository];
          [v11 setRepository:v14];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *(a1 + 48);
  if (v15 == *(a1 + 40))
  {
    v16 = [*(a1 + 32) activityStatusMailboxes];
    [*(a1 + 32) setBadgeCountStatusMailboxes:v16];
  }

  else
  {
    if (v15)
    {
      v16 = [*(a1 + 48) copy];
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) setBadgeCountStatusMailboxes:v16];
    if (!v15)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  [*(a1 + 32) _reset];
LABEL_27:
  v17 = [*(a1 + 32) statusObserver];
  v18 = [*(a1 + 32) activityStatusMailboxes];
  v19 = [*(a1 + 32) badgeCountStatusMailboxes];
  [v17 startObservingForActivityStatusMailboxes:v18 badgeCountStatusMailboxes:v19 filterPredicate:*(a1 + 56) label:*(a1 + 64)];
}

void sub_100137FD8(uint64_t a1)
{
  v4 = [*(a1 + 32) statusInfo];
  if ([*(a1 + 32) _rebuildStatus])
  {
    v2 = [*(a1 + 32) statusInfo];
    [*(a1 + 32) signpostPreviousStatus:v4 andCurrentStatus:v2 usingMailboxObjectID:*(a1 + 40)];
    [*(a1 + 32) _updateStatusViewsWithStatusInfo:v2];
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 mailStatus:*(a1 + 32) didChangeState:{objc_msgSend(*(a1 + 32), "currentState")}];
    }
  }
}

void sub_10013820C(uint64_t a1)
{
  v2 = +[ICQOfferManager sharedOfferManager];
  v3 = [v2 currentOffer];

  if (v3)
  {
    v4 = +[ICQUpgradeButton upgradeButton];
    v5 = [v4 link];
    v6 = [v5 performAction];

    if (v6)
    {
      v7 = +[MailStatusViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "switching to manage storage screen", buf, 2u);
      }
    }

    else
    {
      v8 = +[MailStatusViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting iCloud upgrade flow", v9, 2u);
      }

      v7 = [[ICQUpgradeFlowManager alloc] initWithOffer:v3];
      [v7 beginFlowWithPresentingViewController:*(a1 + 32)];
    }
  }
}

id sub_100138ED8(uint64_t a1)
{
  [*(a1 + 32) setPrimaryStatusPrefix:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setSecondaryStatusPrefix:v2];
}

void sub_1001394A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) statusInfo];
  v2 = [v3 copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100139674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_10013998C(uint64_t a1)
{
  v2 = [*(a1 + 32) mailboxStatusInfos];
  v10 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v10)
  {
    v3 = [v10 iCloudQuotaOfferText];
    [*(a1 + 48) setICloudQuotaOfferText:v3];

    v4 = [v10 iCloudQuotaOfferLink];
    [*(a1 + 48) setICloudQuotaOfferLink:v4];

    v5 = [v10 iCloudQuotaOfferInlineText];
    [*(a1 + 48) setICloudQuotaOfferInlineText:v5];

    v6 = [v10 iCloudQuotaOfferLargeText];
    [*(a1 + 48) setICloudQuotaOfferLargeText:v6];

    v7 = [v10 iCloudQuotaOfferCallToAction];
    [*(a1 + 48) setICloudQuotaOfferCallToAction:v7];

    [*(a1 + 48) setICloudQuotaOfferShouldPersist:{objc_msgSend(v10, "iCloudQuotaOfferShouldPersist")}];
  }

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) mailboxStatusInfos];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];
}

void sub_10013A170(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([ICQUpgradeButton shouldShowForOffer:?])
    {
      v2 = +[ICQUpgradeButton upgradeButton];
      v3 = [v2 attributedDetailedText];
      v4 = [v2 attributedDetailedLink];
      v5 = [*(a1 + 40) mailboxStatusScheduler];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10013A2D0;
      v8[3] = &unk_10064C6B0;
      v8[4] = *(a1 + 40);
      v6 = v3;
      v9 = v6;
      v7 = v4;
      v10 = v7;
      [v5 performBlock:v8];
    }
  }
}

void sub_10013A2D0(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) activityStatusMailboxes];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v18;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 account];
        if (v8)
        {
          v9 = [v7 account];
          v10 = [v9 isPrimaryiCloudAccount];

          if (v10)
          {
            v11 = [*(a1 + 32) mailboxStatusInfos];
            v12 = [v7 objectID];
            v13 = [v11 objectForKeyedSubscript:v12];

            if (!v13)
            {
              v14 = objc_alloc_init(MailStatusInfo);
              v15 = [*(a1 + 32) mailboxStatusInfos];
              v16 = [v7 objectID];
              [v15 setObject:v14 forKeyedSubscript:v16];

              v13 = v14;
            }

            [v13 setICloudQuotaOfferText:*(a1 + 40)];
            [v13 setICloudQuotaOfferLink:*(a1 + 48)];

            v4 = 1;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);

    if (v4)
    {
      [*(a1 + 32) _performStatusUpdate];
    }
  }

  else
  {
  }
}

void sub_10013A620(uint64_t a1)
{
  if ([*(a1 + 32) mf_hasValidReason])
  {
    v2 = [*(a1 + 40) mailboxStatusScheduler];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10013A6F4;
    v5[3] = &unk_10064C660;
    v4 = *(a1 + 32);
    v3 = v4.i64[0];
    v6 = vextq_s8(v4, v4, 8uLL);
    [v2 performBlock:v5];
  }
}

void sub_10013A6F4(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) activityStatusMailboxes];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v23;
    v21 = ICQUIInAppMessageReasoniCloudFull;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 account];
        if (v8)
        {
          v9 = [v7 account];
          v10 = [v9 isPrimaryiCloudAccount];

          if (v10)
          {
            v11 = [*(a1 + 32) mailboxStatusInfos];
            v12 = [v7 objectID];
            v13 = [v11 objectForKeyedSubscript:v12];

            if (!v13)
            {
              v14 = objc_alloc_init(MailStatusInfo);
              v15 = [*(a1 + 32) mailboxStatusInfos];
              v16 = [v7 objectID];
              [v15 setObject:v14 forKeyedSubscript:v16];

              v13 = v14;
            }

            v17 = [*(a1 + 40) mf_attributedInlineText];
            [v13 setICloudQuotaOfferInlineText:v17];

            v18 = [*(a1 + 40) mf_attributedLargeText];
            [v13 setICloudQuotaOfferLargeText:v18];

            v19 = [*(a1 + 40) mf_callToAction];
            [v13 setICloudQuotaOfferCallToAction:v19];

            v20 = [*(a1 + 40) reason];
            [v13 setICloudQuotaOfferShouldPersist:{objc_msgSend(v20, "isEqualToString:", v21)}];

            v4 = 1;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);

    if (v4)
    {
      [*(a1 + 32) _performStatusUpdate];
    }
  }

  else
  {
  }
}

id sub_10013AE34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];

  if (!v4)
  {
    v5 = +[MailStatusViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 ef_publicDescription];
      v7 = [*(a1 + 32) ef_publicDescription];
      sub_100489958(v6, v7, v10, v5);
    }
  }

  v8 = [v3 name];

  return v8;
}

void sub_10013AF5C(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 displayError:*(a1 + 32) forAccount:*(a1 + 40) mode:2];
}

id sub_10013B8C4(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100662A88 table:@"Main"];

  return v3;
}

void sub_10013B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailTrackingProtectionOnboardingViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10013C0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 40));

  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&a34);

  objc_destroyWeak((v36 - 168));
  objc_destroyWeak((v36 - 160));

  _Unwind_Resume(a1);
}

void sub_10013C384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [OBTextWelcomeController alloc];
  v3 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_TITLE");
  v4 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_PRIVACY_TEXT");
  v5 = [v2 initWithTitle:v3 detailText:v4 symbolName:0];

  v6 = [UIBarButtonItem alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013C580;
  v12[3] = &unk_1006513D8;
  v7 = v5;
  v13 = v7;
  v8 = [UIAction actionWithHandler:v12];
  v9 = [v6 initWithBarButtonSystemItem:0 primaryAction:v8];
  v10 = [v7 navigationItem];
  [v10 setRightBarButtonItem:v9];

  v11 = [[UINavigationController alloc] initWithRootViewController:v7];
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

void sub_10013C590(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained selectedIndexPath];

  if (!v3)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:WeakRetained file:@"MailTrackingProtectionOnboardingViewController.m" lineNumber:146 description:@"Cannot continue without selection"];
  }

  v4 = [WeakRetained selectedIndexPath];
  v5 = sub_10013C774(WeakRetained, v4);

  [v5 handleSelection];
  v6 = +[NSNotificationCenter defaultCenter];
  v10 = @"MailTrackingProtectionOnboardingViewControllerUserInfoKeyOptedIn";
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 preventTracking]);
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:WeakRetained userInfo:v8];
}

id sub_10013C774(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 viewModels];
    v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v3, "section")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10013C814(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10013C8B8;
  v2[3] = &unk_10064CC78;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_10013C8B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) contentSize];
  v3 = v2;
  v4 = [WeakRetained collectionViewHeightConstraint];
  [v4 setConstant:v3];
}

void sub_10013C950(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10013C9F4;
  v2[3] = &unk_10064CC78;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_10013C9F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v6);
  v3 = [WeakRetained collectionViewWidthConstraint];
  [v3 setConstant:Width];
}

void sub_10013D0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

NSCollectionLayoutSection *__cdecl sub_10013D13C(id a1, int64_t a2, NSCollectionLayoutEnvironment *a3)
{
  v3 = a3;
  v4 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  v5 = +[UIColor systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [NSCollectionLayoutSection sectionWithListConfiguration:v4 layoutEnvironment:v3];
  [v6 setContentInsets:{0.0, 0.0, 10.0, 0.0}];

  return v6;
}

void sub_10013D1F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10013D224(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v7 viewModel:v6];
}

id sub_10013D2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) viewModels];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v10 = [v5 dequeueConfiguredReusableCellWithRegistration:v7 forIndexPath:v6 item:v9];

  return v10;
}

void sub_10013E4E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10013EDEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10013EF44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10013F2B0(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_100140318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:@"Flags to set: %@ Flags to clear: %@" arguments:&a9];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Warning MCSAssert: %@", buf, 0xCu);
  }
}

void sub_100141688(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001418F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10014367C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v17 = a3;
  v16 = [v17 mutableCopy];
  [v16 minusSet:*(a1 + 32)];
  if ([v16 count])
  {
    v5 = [v16 allObjects];
    [v14 messagesWereDeleted:v5];
  }

  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v17 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v17 allObjects];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100143914;
        v18[3] = &unk_100651520;
        v18[4] = v11;
        v13 = [v12 objectsPassingTest:v18];
        [v6 unionSet:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [v17 removeAllObjects];
  [v17 unionSet:v6];
}

BOOL sub_100143914(uint64_t a1, void *a2)
{
  v3 = [a2 messageIDHeader];
  v4 = [*(a1 + 32) messageIDHeader];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

void sub_100144058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1001440CC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1006DD210;
  v9 = qword_1006DD210;
  if (!qword_1006DD210)
  {
    v1 = sub_100146B5C();
    v7[3] = dlsym(v1, "CRRecentsDomainMaps");
    qword_1006DD210 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getCRRecentsDomainMaps(void)"];
    [v4 handleFailureInFunction:v5 file:@"MessageAddressScanner.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100144220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100144250(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = +[NSMutableArray array];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = [v21 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "performRecentsSearch results: %ld", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v21;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 metadata];
        v10 = sub_1001445F8();
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          v12 = [NSURL URLWithString:v11];
          v13 = [v12 em_messageIDHeader];
          v14 = MFStringHashForMessageIDHeader();
          if (v14 && [*(a1 + 32) containsIndex:v14])
          {
            [v22 addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v22 count];
    *buf = 134217984;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%ld recents to remove", buf, 0xCu);
  }

  if ([v22 count])
  {
    v17 = *(a1 + 40);
    v23 = 0;
    v18 = [v17 removeRecentContacts:v22 error:&v23];
    v19 = v23;
    if ((v18 & 1) == 0)
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#Warning failed to remove MessageAddressScanner recents: %@", buf, 0xCu);
      }
    }
  }
}

void sub_1001445F8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1006DD218;
  v9 = qword_1006DD218;
  if (!qword_1006DD218)
  {
    v1 = sub_100146B5C();
    v7[3] = dlsym(v1, "CRRecentContactMetadataReferenceURL");
    qword_1006DD218 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataReferenceURL(void)"];
    [v4 handleFailureInFunction:v5 file:@"MessageAddressScanner.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10014474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100145540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10014565C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006DD1F0;
  qword_1006DD1F0 = v1;
}

void sub_100145804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MessageAddressScanner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100145854(uint64_t a1)
{
  ABAddressBookUnregisterExternalChangeCallback(*(a1 + 40), sub_1001458AC, *(*(*(a1 + 32) + 8) + 24));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

id sub_100145ACC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) flush];
  *(*(a1 + 32) + 40) &= ~1u;
  return result;
}

id sub_100145B30()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD260;
  v7 = qword_1006DD260;
  if (!qword_1006DD260)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100147060;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_100147060(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100145BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100146000(uint64_t a1)
{
  v6 = [*(a1 + 32) userInfo];
  v2 = [v6 objectForKeyedSubscript:MailMessageStoreChangedFlagsKey];
  v3 = [v6 objectForKeyedSubscript:MailMessageStoreMessageKey];
  v4 = [v2 objectForKeyedSubscript:MessageIsDeleted];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [*(a1 + 40) _scheduleRemovalOfDetectedAddressesInMessages:v3];
  }
}

void sub_1001461A0(uint64_t a1)
{
  v3 = [*(a1 + 32) userInfo];
  v2 = [v3 objectForKeyedSubscript:MailMessageStoreMessageKey];
  [*(a1 + 40) _scheduleRemovalOfDetectedAddressesInMessages:v2];
}

void sub_1001462AC(uint64_t a1)
{
  v1 = [*(a1 + 32) addressBook];

  ABAddressBookRevert(v1);
}

void sub_1001463E0(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) messageIDHash];
    v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    *buf = 134218240;
    v20 = v3;
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#BodyLoading scanning summary for message %lld - enqueued %f secs ago", buf, 0x16u);
  }

  if (DDScannerScanString())
  {
    v5 = DDScannerCopyResultsWithOptions();
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 count];
      v8 = [*(a1 + 32) messageIDHash];
      *buf = 134218240;
      v20 = v7;
      v21 = 2048;
      v22 = *&v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#BodyLoading found %ld DD results for message %lld", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (DDResultGetCategory() == 3)
          {
            [*(a1 + 48) _addAddressDetectorResult:v13 forMessage:{*(a1 + 32), v14}];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void sub_100146944(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

void sub_100146A78(uint64_t a1)
{
  sub_100146B5C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRSearchQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD200 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCRSearchQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:32 description:{@"Unable to find class %s", "CRSearchQuery"}];

    __break(1u);
  }
}

void *sub_100146B5C()
{
  v4[0] = 0;
  if (!qword_1006DD208)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100146CD4;
    v4[4] = &unk_10064C4F8;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents";
    qword_1006DD208 = _sl_dlopen();
  }

  v0 = qword_1006DD208;
  if (!qword_1006DD208)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *CoreRecentsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:30 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100146CD4()
{
  result = _sl_dlopen();
  qword_1006DD208 = result;
  return result;
}

void *sub_100146D40(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentsDomainMaps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD210 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146D90(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataReferenceURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD218 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146DE0(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataFromAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD220 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146E30(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRAddressKindEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD228 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146E80(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataFromAddressKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146ED0(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataFromDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146F20(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataFrom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146F70(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentContactMetadataSubject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD248 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100146FC0(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentWeightMailReceivedTrustedAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100147010(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRRecentWeightMailReceivedAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD258 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100147060(uint64_t a1)
{
  sub_100146B5C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRRecentContactsLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD260 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCRRecentContactsLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:31 description:{@"Unable to find class %s", "CRRecentContactsLibrary"}];

    __break(1u);
  }
}

void *sub_100147144(uint64_t a1)
{
  v2 = sub_100146B5C();
  result = dlsym(v2, "CRAddressKindMapLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1006DD268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100147234(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006DD270;
  qword_1006DD270 = v1;
}

void sub_1001473AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

id sub_1001473F4(void *a1)
{
  v1 = [a1 message];
  v2 = [v1 objectID];

  return v2;
}

void sub_100147640(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD280;
  qword_1006DD280 = v1;
}

void sub_100147710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MessageContentRequestRetryMiddleware;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001477B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100147CB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained contentRequestDidReceiveContentRepresentation:v6 error:v5];
}

id sub_100147D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 isNetworkUp])
  {
    v5 = [WeakRetained shouldRetryOnNetworkChange];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100147DC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[MessageContentRequestRetryMiddleware log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained contentRequest];
    v4 = [v3 message];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network became availabe, scheduling retry of content request for message: %{public}@", &v5, 0xCu);
  }

  [WeakRetained _retry];
}

UIFont *__cdecl sub_1001498B8(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:32770 options:0];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

UIFont *__cdecl sub_100149940(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:0];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

void *sub_100149B0C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!v11)
  {
    v14 = +[UIApplication sharedApplication];
    v11 = [v14 preferredContentSizeCategory];
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (!qword_1006DD290)
  {
    qword_1006DD290 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  if (a6 == 0.0)
  {
    key = ((997 * a5) ^ (31 * a1) ^ [v15 hash]);
    v18 = CFDictionaryGetValue(qword_1006DD290, key);
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    key = 0;
  }

  v19 = v15;
  v57 = v16;
  v54 = v19;
  v56 = v17;
  v20 = sub_10014A2EC(v19);
  v60[0] = NSFontAttributeName;
  v60[1] = NSForegroundColorAttributeName;
  v61[0] = v20;
  v61[1] = v56;
  v21 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v59 = 0;
  v22 = sub_10014A3B4(a1, v21, &v59, v57, a6);
  v58 = v23;
  v24 = v22;
  v25 = v59;
  [v20 pointSize];
  v27 = v26 * 0.17;
  v63.origin.x = sub_10014A52C(v20);
  x = v63.origin.x;
  y = v63.origin.y;
  height = v63.size.height;
  v32 = fmax(a6, v31);
  v63.size.width = v32;
  CGRectGetWidth(v63);
  UIRoundToViewScale();
  v53 = v33;
  [v20 capHeight];
  v52 = v34;
  [v20 ascender];
  v51 = v35;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v32;
  v64.size.height = height;
  v50 = CGRectGetHeight(v64);
  [v20 capHeight];
  v49 = v36;
  v62.width = v32;
  v62.height = height;
  UIGraphicsBeginImageContextWithOptions(v62, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v56 setStroke];
  v38 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v19];
  v39 = +[UIFontMetrics defaultMetrics];
  [v39 scaledValueForValue:v38 compatibleWithTraitCollection:2.0];
  v41 = v40;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v32;
  v65.size.height = height;
  v66 = CGRectInset(v65, 1.5, 1.5);
  v42 = [UIBezierPath bezierPathWithRoundedRect:v66.origin.x cornerRadius:v66.origin.y, v66.size.width, v66.size.height, fmax(fmin(v41, 4.0), 2.0)];
  v43 = v42;
  v44 = [v42 CGPath];

  CGContextAddPath(CurrentContext, v44);
  CGContextSetLineWidth(CurrentContext, v27);
  CGContextStrokePath(CurrentContext);
  [v25 drawWithRect:33 options:v21 attributes:0 context:{v53, v52 - v51 + (v50 - v49) * 0.5, v24, v58}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (a6 == 0.0)
  {
    if (v18)
    {
      CFDictionarySetValue(qword_1006DD290, key, v18);
    }

    else
    {
      v18 = 0;
      CFDictionarySetValue(qword_1006DD290, key, +[NSNull null]);
    }
  }

LABEL_13:
  v45 = +[NSNull null];
  if (v45 == v18)
  {
    v46 = 0;
  }

  else
  {
    v46 = v18;
  }

  v47 = v46;

  return v46;
}

double sub_10014A0BC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = +[NSBundle mainBundle];
  v7 = sub_10014A14C(a1, v5, v6, a3);

  return v7;
}

double sub_10014A14C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    v9 = +[UIApplication sharedApplication];
    v7 = [v9 preferredContentSizeCategory];
  }

  v10 = sub_10014A2EC(v7);
  v14 = NSFontAttributeName;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_10014A3B4(a1, v11, 0, v8, a4);

  [v10 pointSize];
  v16.origin.x = sub_10014A52C(v10);
  Width = CGRectGetWidth(v16);

  return Width;
}

id sub_10014A2EC(uint64_t a1)
{
  v1 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:a1];
  v2 = [UIFont boldSystemFontOfSize:7.5];
  v3 = +[UIFontMetrics defaultMetrics];
  v4 = [v3 scaledFontForFont:v2 compatibleWithTraitCollection:v1];

  return v4;
}

void sub_10014A388(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_10014A3B4(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = 0.0;
  if (a5 > 0.0)
  {
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = 1.0 / (v13 + v13);

    if (v14 + a5 + -6.0 >= 0.0)
    {
      v11 = v14 + a5 + -6.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  v15 = sub_10014A600(a1, 0, v10);
  v16 = sub_10014A734(v15, v9, 0.0);
  v17 = v16;
  if (v11 <= 0.0 || v16 <= v11)
  {
    v21 = v15;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    v19 = v21;
    *a3 = v21;
    goto LABEL_12;
  }

  v21 = sub_10014A600(a1, 1, v10);

  v17 = sub_10014A734(v21, v9, v11);
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v17;
}

CGFloat sub_10014A52C(void *a1)
{
  v1 = a1;
  [v1 capHeight];
  [v1 capHeight];
  UIRoundToViewScale();
  UIRoundToViewScale();
  [v1 capHeight];
  UIRoundToViewScale();

  return CGPointZero.x;
}

id sub_10014A600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1 == 3 || a1 == 2)
  {
    v6 = MFLookupLocalizedString();
  }

  else
  {
    if (a1 != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = [v4 localizedStringForKey:@"FROM_LABEL" value:&stru_100662A88 table:@"Main"];
  }

  v7 = v6;
LABEL_10:

  return v7;
}

double sub_10014A734(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (a3 <= 0.0)
  {
    [v5 sizeWithAttributes:v6];
    v8 = v9;
  }

  else
  {
    [v5 boundingRectWithSize:33 options:v6 attributes:0 context:{a3, 0.0}];
    v8 = v7;
  }

  return v8;
}

id sub_10014A83C()
{
  objc_opt_self();
  if (qword_1006DD2E0 != -1)
  {
    sub_100489AB0();
  }

  v0 = qword_1006DD2D8;

  return v0;
}

void sub_10014A884(id a1)
{
  v3 = +[UIColor clearColor];
  v1 = [MUITextEncapsulation messageListDateTextEncapsulationWithColor:?];
  v2 = qword_1006DD2D8;
  qword_1006DD2D8 = v1;
}

void sub_10014AB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10014ABC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setHideMessageListAvatar:{objc_msgSend(*(a1 + 32), "BOOLForKey:", EMUserDefaultHideMessageListAvatar)}];
    [WeakRetained setNeedsLayout];
  }
}

void sub_10014ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MessageListCellView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10014ADF4(uint64_t a1)
{
  [*(a1 + 32) _invalidateCachedValues];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_10014B6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10014B7B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = +[MessageListCellView log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 ef_publicDescription];
        sub_100489AC4(WeakRetained, v9, v39);
      }
    }

    v10 = [WeakRetained viewModel];
    v11 = [v10 addressList];
    v12 = [v11 firstObject];
    v13 = [v12 isEqual:*(a1 + 32)];

    if (v13)
    {
      v14 = [WeakRetained avatarController];
      [v14 updateWithResult:v5];

      v15 = [WeakRetained avatarController];
      v16 = [v15 view];
      [WeakRetained _updateAvatarViewWithView:v16];

      v17 = +[MessageListCellView log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromSelector(*(a1 + 56));
        v19 = [WeakRetained avatarController];
        v20 = [WeakRetained avatarView];
        v21 = [*(a1 + 40) ef_publicDescription];
        v27 = 134219266;
        v28 = WeakRetained;
        v29 = 2114;
        v30 = v18;
        v31 = 2048;
        v32 = v19;
        v33 = 2048;
        v34 = v20;
        v35 = 2114;
        v36 = v21;
        v37 = 2114;
        v38 = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - updated cell avatar avatarController %p avatarView %p for context %{public}@ result %{public}@", &v27, 0x3Eu);
      }
    }

    else
    {
      v17 = +[MessageListCellView log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = [v22 emailAddressValue];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 ef_publicDescription];
        }

        else
        {
          v26 = [v22 stringValue];
          v25 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v26];
        }

        v27 = 134218242;
        v28 = WeakRetained;
        v29 = 2114;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%p: Skipping update to cell with stale address %{public}@", &v27, 0x16u);
      }
    }
  }
}

void sub_10014BBB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = +[MessageListCellView log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 ef_publicDescription];
      sub_100489AC4(WeakRetained, v9, v36);
    }
  }

  v10 = [WeakRetained viewModel];
  v11 = [v10 addressList];
  v12 = [v11 firstObject];
  v13 = [v12 isEqual:*(a1 + 32)];

  if (v13)
  {
    v14 = +[MessageListCellView log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [v15 emailAddressValue];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 ef_publicDescription];
      }

      else
      {
        v24 = [v15 stringValue];
        v18 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v24];
      }

      v25 = v18;
      v26 = [v5 image];
      v30 = 134218498;
      v31 = WeakRetained;
      v32 = 2114;
      v33 = v25;
      v34 = 2048;
      v35 = v26;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Updating cell image with address %{public}@ image %p", &v30, 0x20u);
    }

    [WeakRetained setAvatarResult:v5];
    v27 = [v5 image];
    v28 = [WeakRetained avatarImageView];
    [v28 setImage:v27];

    [WeakRetained _updateAvatarView];
  }

  else
  {
    v19 = +[MessageListCellView log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = [v20 emailAddressValue];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 ef_publicDescription];
      }

      else
      {
        v29 = [v20 stringValue];
        v23 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v29];
      }

      v30 = 134218242;
      v31 = WeakRetained;
      v32 = 2114;
      v33 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%p: Skipping update to cell with stale address %{public}@", &v30, 0x16u);
    }
  }
}

void sub_10014C07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_10014CAA4(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

id sub_10014CAF8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.0, 0.0);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void sub_10014CEB0(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    if (a3)
    {
      [v14 setAttributedText:v9];
      if (v10)
      {
        [v14 setAccessibilityLabel:v10];
      }

      v11 = [v14 text];
      v12 = [v11 _isNaturallyRTL];

      if (v12)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [v14 setTextAlignment:v13];
    }

    else
    {
      [v14 setAttributedText:0];
      [v14 setAccessibilityLabel:0];
    }
  }
}

void sub_10014CF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_10014CFBC(uint64_t a1, uint64_t a2)
{
  v4 = +[UIColor mailTransparentLightGrayColor];
  v5 = +[NSBundle mainBundle];
  v6 = sub_100149B0C(a1, 0, v5, v4, a2, 0.0);

  return v6;
}

void sub_10014E030(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10014E19C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10015005C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001504D0(uint64_t a1)
{
  v1 = [*(a1 + 32) disclosureButton];
  [v1 setTransform:&v2];
}

void sub_100150534(uint64_t a1, int a2)
{
  if (a2)
  {
    v16 = [*(a1 + 32) disclosureButton];
    v3 = *(a1 + 32);
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v16 frame];
    [v3 _rectForDisclosureButtonWithFrame:v5 boxFrame:{v7, v9, v11, v12, v13, v14, v15}];
    [v16 setFrame:?];
  }
}

double sub_100150DF0(uint64_t a1, double *a2, double a3)
{
  a2[2] = a2[2] - a3;
  if (!*(a1 + 32))
  {
    a3 = -a3;
  }

  result = *a2 + a3;
  *a2 = result;
  return result;
}

void sub_100151E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10015346C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1001536B8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD2F8;
  qword_1006DD2F8 = v1;
}

void sub_100153D58(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

MailAccount *__cdecl sub_100154108(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 accountsProvider];
  v5 = [(EMMailbox *)v2 accountIdentifier];
  v6 = [v4 legacyMailAccountForObjectID:v5];

  return v6;
}

uint64_t sub_1001546CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = *(a1 + 32);
  LODWORD(a1) = [EMMailbox typeIsValidTransferDestination:v4];
  v6 = a1 & ([v3 isSmartMailbox] ^ 1);
  if (v4 == v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_100154AA0(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 account];
  v3 = [v2 sourceIsManaged];

  return v3;
}

BOOL sub_100154D88(id a1, UIDragItem *a2)
{
  v2 = [(UIDragItem *)a2 itemProvider];
  v3 = [v2 registeredTypeIdentifiers];
  v4 = [v3 firstObject];
  v5 = [v4 isEqualToString:@"com.apple.mobilemail.internalEMMessageListItemTransfer"];

  return v5;
}

void sub_100154DF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1001551AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100155278;
  v7[3] = &unk_100651878;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = [v8 _loadDisplayMessageDataWithCompletion:v7];

  return v5;
}

void sub_100155278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [NSUserActivity alloc];
    v8 = [v7 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
    v9 = [*(a1 + 32) visibleSubjectString];
    [v8 setTitle:v9];

    v11[0] = MSMailActivityHandoffTypeKey;
    v11[1] = MSMailActivityHandoffComposeKeyMessageData;
    v12[0] = MSMailActivityHandoffTypeComposeSansStreams;
    v12[1] = v5;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [v8 setUserInfo:v10];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100155414(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) messageListItem];
  [v6 setReferenceMessageListItem:v3];

  v4 = [*(a1 + 32) messageList];
  [v6 setReferenceMessageList:v4];

  v5 = [*(a1 + 32) messageListItem];
  [v6 setShowAsConversation:{objc_msgSend(v5, "count") > 1}];
}

uint64_t sub_1001554F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSUserActivity alloc];
  v5 = MSMailActivityHandoffTypeDisplayMessage;
  v6 = [v4 initWithActivityType:MSMailActivityHandoffTypeDisplayMessage];
  v7 = [*(a1 + 32) visibleSubjectString];
  [v6 setTitle:v7];

  v12[0] = v5;
  v11[0] = MSMailActivityHandoffTypeKey;
  v11[1] = MSMailActivityHandoffDisplayMessageKeyRestorationState;
  v8 = [*(a1 + 40) dictionaryRepresentation];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v6 setUserInfo:v9];

  v3[2](v3, v6, 0);
  return 0;
}

id sub_100155B64(uint64_t a1, void *a2)
{
  v3 = [a2 writableTypeIdentifiersForItemProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100155C24;
  v6[3] = &unk_10064E820;
  v7 = *(a1 + 32);
  v4 = [v3 ef_any:v6];

  return v4;
}

id sub_100155C24(uint64_t a1, uint64_t a2)
{
  v3 = [UTType typeWithIdentifier:a2];
  v4 = [v3 conformsToType:*(a1 + 32)];

  return v4;
}

void sub_100155C80(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [v9 publicMessageURL];
    if ([*(a1 + 32) length])
    {
      v7 = [*(a1 + 32) subjectString];
      [v6 _setTitle:v7];
    }

    v8 = [v6 loadDataWithTypeIdentifier:*(a1 + 40) forItemProviderCompletionHandler:*(a1 + 48)];
  }
}

void sub_100155D84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 publicMessageURL];
    v8 = [NSAttributedString alloc];
    v9 = [*(a1 + 32) visibleSubjectString];
    if (v7)
    {
      v13 = NSLinkAttributeName;
      v14 = v7;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v11 = [v8 initWithString:v9 attributes:v10];
    }

    else
    {
      v11 = [v8 initWithString:v9];
    }

    v12 = [v11 loadDataWithTypeIdentifier:*(a1 + 40) forItemProviderCompletionHandler:*(a1 + 48)];
  }
}

void sub_100156124(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = [v5 contentURL];
  v10 = 0;
  v8 = [NSData dataWithContentsOfURL:v7 options:3 error:&v10];
  v9 = v10;

  (*(*(a1 + 32) + 16))();
}

void sub_100156C9C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD308;
  qword_1006DD308 = v1;
}

EFFuture *__cdecl sub_10015775C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100489C70();
  }

  v4 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:v2];
  v5 = [EFFuture futureWithError:v4];

  return v5;
}

id sub_100157A38(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) decodeMailboxData:a2];

  return v2;
}

id sub_10015816C(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 objectID];

  return v2;
}

id sub_10015819C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) encodeMailbox:a2];

  return v2;
}

id sub_100158498(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setMailboxes:v3];
  v4 = objc_alloc_init(MessageListViewControllerState);
  [v4 updateWithMailboxes:v3 senderSpecificMessageListItem:0];
  v5 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 ef_publicDescription];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing restoration state with view controller state: %{public}@", buf, 0xCu);
  }

  if ([v4 containsSent])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 containsInbox];
  }

  v8 = [v4 containsInbox];
  v9 = [*(a1 + 40) mailboxRepository];
  v10 = [EMMessageListItemPredicates transformPredicateWithMailboxes:v3 mailboxTypeResolver:v9 shouldIncludeFollowUps:v7 shouldIncludeReadLater:v8 limitToSender:0];

  v11 = *(a1 + 48);
  v12 = [v4 sortDescriptors];
  if (EMBlackPearlIsFeatureEnabled() && [v4 containsInbox])
  {
    v13 = +[NSError mf_blackPearlStateRestorationNotSupportedError];
    v14 = [EFFuture futureWithError:v13];
  }

  else
  {
    if (*(a1 + 49) == 1 && *(a1 + 50) == 1)
    {
      v15 = [*(a1 + 40) messageRepository];
      v16 = [EMMessageList threadedMessageListForMailboxes:v3 withRepository:v15 additionalQueryOptions:v11 countOfItemsToPrecache:0 shouldUpdateDisplayDate:*(a1 + 51) sortDescriptors:v12 sectionPredicates:0 transformPredicate:v10];
    }

    else
    {
      v15 = [*(a1 + 40) messageRepository];
      v16 = [EMMessageList simpleMessageListForMailboxes:v3 withRepository:v15 additionalQueryOptions:v11 countOfItemsToPrecache:0 shouldUpdateDisplayDate:*(a1 + 51) sortDescriptors:v12 sectionPredicates:0 transformPredicate:v10];
    }

    v17 = v16;

    [*(a1 + 32) setMessageList:v17];
    if (*(a1 + 52) == 1)
    {
      v18 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Mailbox request complete. Creating message list waiting for initial load...", buf, 2u);
      }

      [v17 beginObserving:*(a1 + 32)];
    }

    else
    {
      v19 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Message list is not expecting any particular item. Continuing...", buf, 2u);
      }
    }

    v14 = [EFFuture futureWithResult:v17];
    v13 = v17;
  }

  return v14;
}

EFFuture *__cdecl sub_1001588A8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100489D80();
  }

  v4 = [NSError mf_restorationMessageNotAvailableErrorWithUnderlyingError:v2];
  v5 = [EFFuture futureWithError:v4];

  return v5;
}

id sub_1001589CC(uint64_t a1)
{
  v2 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "State is ready to be restored.", v5, 2u);
  }

  v3 = [EFFuture futureWithResult:*(a1 + 32)];

  return v3;
}

void sub_100159038(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD318;
  qword_1006DD318 = v1;
}

void sub_1001593B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v28 = v25;
  objc_destroyWeak((v27 + 32));

  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10015942C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateIndexStatistics];
  }
}

void sub_100159490(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateSearchResultsForSearchController:v5];
  }
}

void sub_10015950C(id a1)
{
  v1 = +[NSUserDefaults em_userDefaults];
  v3 = EMUserDefaultIncludeSearchResultsFromTrashKey;
  v4 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 registerDefaults:v2];
}

void sub_1001595C0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001596E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MessageListSearchViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1001598FC(id val)
{
  v1 = val;
  if (val)
  {
    objc_initWeak(&location, val);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100159C20;
    v18[3] = &unk_100651AF0;
    objc_copyWeak(&v19, &location);
    v2 = objc_retainBlock(v18);
    v3 = [SearchTopHitsSuggester alloc];
    v4 = [v1 messageRepository];
    v5 = kMFMobileMailBundleIdentifier;
    v6 = [(SearchTopHitsSuggester *)v3 initWithMessageRepository:v4 bundleID:kMFMobileMailBundleIdentifier queryCompletionHandler:v2];

    v7 = MFMailDirectoryURL();
    v8 = [MUISearchRecentSuggester suggesterWithPersistentDirectory:v7];
    [v1 setRecentSuggester:v8];

    v9 = [MUISearchSenderQueryManager alloc];
    v10 = [v1 senderRepository];
    v11 = [v9 initWithSenderRepository:v10];

    v12 = [v1 messageRepository];
    v13 = [MUISearchResultsSuggester documentsSuggesterWithBundleID:v5 messageRepository:v12 senderQueryManager:v11];

    v14 = [v1 messageRepository];
    v15 = [MUISearchResultsSuggester linksSuggesterWithBundleID:v5 messageRepository:v14 senderQueryManager:v11];

    v16 = [v1 recentSuggester];
    v21[0] = v16;
    v21[1] = v6;
    v21[2] = v13;
    v21[3] = v15;
    v1 = [NSArray arrayWithObjects:v21 count:4];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v1;
}

void sub_100159B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100159C20(uint64_t a1, int a2, char a3, char a4, char a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100159CE8;
    v11[3] = &unk_100651AC8;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = a5;
    [WeakRetained parsecEventQueuePerformBlock:v11];
  }
}

void sub_100159CE8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MSParsecSearchEmbeddingState embeddingStateWithQueryStatus:*(a1 + 32) hasQueryEmbedding:*(a1 + 36) hasKeywordResults:*(a1 + 37) hasEmbeddingResults:*(a1 + 38)];
  [v4 setEmbeddingState:v3];
}

void sub_100159F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10015A188(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10015A278(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10015B050(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_10015B0D8(uint64_t a1, void *a2)
{
  v12 = [a2 viewForKey:UITransitionContextToViewKey];
  [v12 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) view];
  [v11 setFrame:{v4, v6, v8, v10}];
}

void sub_10015B954(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_10015B9DC(uint64_t a1)
{
  [*(a1 + 32) setSnapshotViewForDismissal:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];
}

void sub_10015CA88(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_10015CAB4(id a1, MUISearchSuggestionCategoryScope *a2)
{
  v2 = [(MUISearchSuggestionCategoryScope *)a2 title];

  return v2;
}

void sub_10015CB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10015D90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10015D9D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  v4 = [WeakRetained remoteSearchInitialLoadPromise];
  v5 = [v4 future];
  v6 = v5;
  if (v5 != *(a1 + 32))
  {

LABEL_5:
    v10 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping the call to remote search completion block because the success block was called for a stale set of futures.", v12, 2u);
    }

    goto LABEL_8;
  }

  v7 = [v3 remoteSearchServerPromise];
  v8 = [v7 future];
  v9 = *(a1 + 40);

  if (v8 != v9)
  {
    goto LABEL_5;
  }

  v11 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remote search completed", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_8:
}

void sub_10015DB7C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_100489DEC(v4, v5, v3);
  }
}

void sub_10015DF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, id location)
{
  objc_destroyWeak((v26 + 72));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10015E01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained localSearchInitialLoadPromise];
    v5 = [v4 future];
    if (v5 == *(a1 + 32))
    {
      v6 = [v3 localSearchRemotePromise];
      v7 = [v6 future];
      if (v7 == *(a1 + 40))
      {
        v8 = [v3 remoteSearchInitialLoadPromise];
        v9 = [v8 future];
        v10 = v9;
        if (v9 == *(a1 + 48))
        {
          v12 = [v3 remoteSearchServerPromise];
          v13 = [v12 future];
          v19 = *(a1 + 56);

          if (v13 == v19)
          {
            v14 = +[MessageListSearchViewController log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Local and remote search completed", buf, 2u);
            }

            [v3 _searchingFooterDisplayTimeLeft];
            v16 = v15;
            v17 = +[EFScheduler mainThreadScheduler];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10015E30C;
            v20[3] = &unk_10064C598;
            v21 = *(a1 + 64);
            v18 = [v17 afterDelay:v20 performBlock:v16];

            v11 = v21;
            goto LABEL_10;
          }

LABEL_8:
          v11 = +[MessageListSearchViewController log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping the call to completion block because the success block was called for a stale set of futures.", buf, 2u);
          }

LABEL_10:

          goto LABEL_11;
        }
      }
    }

    goto LABEL_8;
  }

LABEL_11:
}

void sub_10015E31C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100489E44(v2, v3);
  }
}

void sub_10015ED18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10015F184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10015F274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained hasReceivedFirstRemoteSearchResult];
    v2 = v7;
    if ((v3 & 1) == 0)
    {
      v4 = [v7 _shouldKeepDisplayingSearchingFooter];
      v2 = v7;
      if ((v4 & 1) == 0)
      {
        v5 = [v7 collectionView];
        v6 = [v5 collectionViewLayout];
        [v6 invalidateLayout];

        v2 = v7;
      }
    }
  }
}

void sub_10015F308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10015F9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  v18 = v15;

  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015FA1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isSearching] & 1) == 0)
  {
    v2 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "Skipping starting animation of 'searching...' label since search is already completed";
      v4 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([WeakRetained isOptimizingSearchFooterVisible])
  {
    v2 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v3 = "Skipping starting animation of 'searching...' label since optimizing search footer is already visible";
      v4 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v5 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating footer to add the searching label", v6, 2u);
  }

  [WeakRetained _displaySearchingFooter];
LABEL_12:
}

void sub_10015FCF8(uint64_t a1)
{
  [*(a1 + 32) _updateFooter];
  v2 = [*(a1 + 32) dataSource];
  [v2 resumeUpdates];
}

void sub_10016022C(uint64_t a1)
{
  [*(a1 + 32) setSearching:0];
  if (_os_feature_enabled_impl())
  {
    v4 = +[EFDevice currentDevice];
    if ([v4 isInternal])
    {
      v2 = +[MSRadarURLBuilder canOpenRadar];

      if (v2)
      {
        v3 = *(a1 + 32);

        [v3 presentToastViewController];
      }
    }

    else
    {
    }
  }
}

void sub_100160938(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) _parsecEmbeddingStateWithSearchInfo:?];
    [v5 setEmbeddingState:v4];

    v3 = v5;
  }

  [v3 reportLocalSearchEnded];
}

id sub_100161228(id a1, _CSSuggestionToken *a2)
{
  v2 = a2;
  v3 = [[MUISuggestionToken alloc] initWithCSToken:v2];

  return v3;
}

void sub_10016202C(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) searchBar];
  v4 = [v3 representedObjects];
  v5 = [v4 count];

  if (!v5 || ([*(a1 + 32) shouldShowMenuSuggestions] & 1) == 0)
  {
    [v14 reportLocalSearchEnded];
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v9)];
        v11 = [v10 firstObject];
        v12 = [*(a1 + 32) SectionCategoryForSuggestion:v11];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1001622EC;
        v16[3] = &unk_100651C98;
        v16[4] = *(a1 + 32);
        v13 = [v10 ef_map:v16];
        [v6 setObject:v13 forKeyedSubscript:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v14 reportRankingFeedbackForSuggestions:v6];
}

id sub_1001622EC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _parsecSuggestionForSuggestion:a2];

  return v2;
}

void sub_1001625D8(void *a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001626A8;
  v6[3] = &unk_100651CC0;
  v4 = a1[4];
  v6[4] = a1[5];
  v5 = [v4 ef_compactMap:v6];
  if ([v5 count])
  {
    [v3 reportSuggestionsVisible:v5 latencyMs:a1[6]];
  }
}

id sub_1001626A8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _parsecSuggestionForSuggestion:a2];

  return v2;
}

NSString *__cdecl sub_100162C74(id a1, _UISearchSuggestionItemGroup *a2)
{
  v2 = a2;
  v3 = [(_UISearchSuggestionItemGroup *)v2 suggestionItems];
  v4 = [NSString stringWithFormat:@"%@ items: %@", v2, v3];

  return v4;
}

void sub_100162D10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) searchController];
  [v3 _setSearchSuggestionGroups:v2];

  v4 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v13 = 138543874;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Updated search suggestion groups %@", &v13, 0x20u);
  }

  v9 = [*(a1 + 40) ef_flatMap:&stru_100651D68];
  v10 = [v9 ef_compactMap:&stru_100651DA8];
  if ([v10 count])
  {
    v11 = [*(a1 + 56) suggestions];
    v12 = [v11 count] == 0;

    if (!v12)
    {
      [*(a1 + 32) reportSuggestionsVisible:v10];
    }
  }
}

NSArray *__cdecl sub_100162ECC(id a1, _UISearchSuggestionItemGroup *a2)
{
  v2 = [(_UISearchSuggestionItemGroup *)a2 suggestionItems];

  return v2;
}

id sub_100162EFC(id a1, UISearchSuggestionItem *a2)
{
  v2 = a2;
  v3 = [(UISearchSuggestionItem *)v2 representedObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UISearchSuggestionItem *)v2 representedObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001630AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:CSSuggestionHighlightAttributeName];
  if (v7)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;

  v9 = *(a1 + 32);
  v11 = NSForegroundColorAttributeName;
  v12 = v8;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v9 addAttributes:v10 range:{a3, a4}];
}

void sub_10016348C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) groupedSuggestionsByCategory];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void sub_10016352C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100163680;
  v9[3] = &unk_100651E48;
  v9[4] = *(a1 + 32);
  v6 = [a3 ef_compactMap:v9];
  if ([v6 count])
  {
    v7 = +[MUISearchSuggestionCategory recentSearchCategory];

    if (v7 == v5)
    {
      v8 = [*(a1 + 32) _groupForRecentSearchSuggestionItems:v6];
      [*(a1 + 40) insertObject:v8 atIndex:0];
    }

    else
    {
      v8 = [[_UISearchSuggestionItemGroup alloc] initWithHeaderTitle:0 suggestionItems:v6];
      [*(a1 + 40) addObject:v8];
    }
  }
}

id sub_100163680(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 attributedTitle];
    if (([v3 isRecent] & 1) == 0)
    {
      v5 = [*(a1 + 32) attributedSpotlightTitle:v4];

      v4 = v5;
    }

    v6 = [UISearchSuggestionItem alloc];
    v7 = [v3 title];
    v8 = [v3 image];
    v9 = [v6 initWithLocalizedAttributedSuggestion:v4 localizedDescription:v7 iconImage:v8];

    [v9 setRepresentedObject:v3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10016378C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001639A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100163A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained recentSuggester];
    [v2 deleteAllSuggestions];

    v3 = [v4 searchController];
    [v3 _setSearchSuggestionGroups:&__NSArray0__struct];

    WeakRetained = v4;
  }
}

void sub_100163A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_100163F40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) searchTokenTransformer];
  v5 = [v4 transformedValue:*(a1 + 40)];

  v3[2](v3, v5, 0);
  return 0;
}

uint64_t sub_100163FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) representedObject];
  v5 = [v4 title];
  v6 = [v5 dataUsingEncoding:4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:517 userInfo:0];
  }

  v3[2](v3, v6, v7);
  if (!v6)
  {
  }

  return 0;
}

void sub_1001643FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001644F0;
  v6[3] = &unk_10064C6B0;
  v6[4] = *(a1 + 32);
  v4 = v3;
  v7 = v4;
  v8 = *(a1 + 40);
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];
}

void sub_1001644C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1001644F0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 800) reverseTransformedValue:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 representedObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = *(a1 + 32);
      v7 = [v3 representedObject];
      [v6 _updateSearchBarUsingSuggestionToken:v7];

      v8 = +[MessageListSearchViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) currentSuggestion];
        v10 = [EMCSLoggingAdditions publicDescriptionForSuggestion:v9];
        v11 = [*(a1 + 32) currentSuggestion];
        v12 = [v11 userQueryString];
        v13 = [EFPrivacy partiallyRedactedStringForString:v12];
        v14 = [*(a1 + 32) currentSuggestion];
        v15 = [v14 suggestionTokens];
        v16 = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Suggestion was updated. Reason: Pasted a suggestion. Suggestion: %@ UserQueryString: %@ SuggestionTokens: %@", &v16, 0x20u);
      }
    }
  }

  else
  {
    [*(a1 + 48) setNoResult];
  }
}

void sub_100164704(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_100164788(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164878;
  v7[3] = &unk_10064C6B0;
  v3 = a2;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = +[EFScheduler mainThreadScheduler];
  [v6 performBlock:v7];
}

void sub_100164848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_100164878(uint64_t a1)
{
  v20 = [[NSString alloc] initWithData:*(a1 + 32) encoding:4];
  v2 = +[NSCharacterSet controlCharacterSet];
  v3 = [v20 stringByTrimmingCharactersInSet:v2];

  if ([v3 length])
  {
    v4 = [*(a1 + 48) currentSuggestion];
    v5 = [v4 userQueryString];
    if (v5)
    {
      v6 = [*(a1 + 48) currentSuggestion];
      v7 = [v6 userQueryString];
      v8 = +[NSCharacterSet controlCharacterSet];
      v9 = [v7 stringByTrimmingCharactersInSet:v8];
      v10 = [v9 stringByAppendingString:v3];
    }

    else
    {
      v10 = v3;
    }

    v11 = [*(a1 + 48) currentSuggestion];
    v12 = [*(a1 + 48) currentSuggestion];
    v13 = [v12 currentTokens];
    v14 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:v11 userString:v10 tokens:v13];

    [*(a1 + 48) setCurrentSuggestion:v14];
    v15 = *(a1 + 48);
    v16 = [v15 currentSuggestion];
    [v15 redrawSearchBarWithSuggestion:v16];

    [*(a1 + 48) setSearchSuggestionsVisible:1];
    v17 = *(a1 + 48);
    v18 = [v17 currentSuggestion];
    v19 = [v18 userQueryString];
    [v17 _generateSuggestionsForPhrase:v19];
  }

  else
  {
    [*(a1 + 40) setNoResult];
  }
}

id sub_100164D84(uint64_t a1)
{
  [*(a1 + 32) setBeginSearchTimer:0];
  v2 = *(a1 + 32);

  return [v2 _notePredicateUpdated:1];
}

void sub_100165708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_100165734(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) lastPhrase];
  v4 = [NSString stringWithFormat:@"[Search TTR]  %@ did not find expected results", v3];
  [v5 setTitle:v4];

  [v5 setRadarDescription:*(a1 + 40)];
  [v5 setClassification:6];
  [v5 setReproducibility:5];
  [v5 setComponent:27];
}

void sub_100165D7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100165E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100165E94(id a1, MSRadarURLBuilder *a2)
{
  v2 = a2;
  [(MSRadarURLBuilder *)v2 setTitle:@"Mail Search TTR - <description>"];
  [(MSRadarURLBuilder *)v2 setRadarDescription:@"I was just using search in Mail and ran into a problem with:\n"];
  [(MSRadarURLBuilder *)v2 setClassification:6];
  [(MSRadarURLBuilder *)v2 setReproducibility:5];
  [(MSRadarURLBuilder *)v2 setComponent:20];
}

void sub_100166094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIndexStatisticsIfNeeded];
}

void sub_100166584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001665C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = EMLogSearchableIndexStatus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Indexing Status: %{public}@", buf, 0xCu);
  }

  [WeakRetained setIndexStatistics:v3];
  v6 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyMessagesIndexed];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyMessageBodiesIndexed];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyRemoteMessagesIndexed];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableMessages];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableRemoteMessages];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyMessagesInLargestRemoteAccount];
  v17 = [v16 unsignedIntegerValue];

  v18 = [[MUISearchIndexStatus alloc] initWithLocalMessageBodiesIndexed:v9 totalLocalMessages:v13 remoteMessageBodiesIndexed:v11 totalRemoteMessages:v15 messagesInLargestRemoteAccount:v17];
  [WeakRetained setIndexStatus:v18];

  if (v7 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v7;
  }

  v31 = [NSNumber numberWithUnsignedInteger:v19];
  v30 = [WeakRetained indexStatus];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 messageBodiesIndexed]);
  v21 = [WeakRetained indexStatus];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 totalMessages]);
  v23 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyPercentUnindexedBodiesInFrecentMailboxes];
  v24 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyAttachmentsIndexed];
  v25 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableAttachments];
  v26 = [MSParsecSearchIndexState indexStateForMessagesIndexed:v31 messageBodiesIndexed:v20 indexableMessages:v22 percentUnindexedBodiesInFrecent:v23 attachmentsIndexed:v24 indexableAttachments:v25];
  v27 = [WeakRetained session];
  [v27 setIndexState:v26];

  v28 = [WeakRetained session];
  v29 = [v28 indexState];
  [WeakRetained _sendAnalyticsForIndexState:v29];
}

void sub_100167534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

id sub_100167F74(uint64_t a1, void *a2)
{
  v3 = [a2 result];
  v4 = [v3 displayMessageObjectID];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v6 = *(a1 + 40);
  v7 = [v3 itemID];
  v8 = [v3 date];
  v9 = [v6 parsecTopHitForItemID:v7 date:v8 mailRankingSignals:v5];

  return v9;
}

id sub_10016807C(uint64_t a1, void *a2)
{
  v3 = [a2 result];
  v4 = [v3 itemID];
  v5 = [NSString stringWithFormat:@"%@", v4];

  v6 = [v3 displayMessageObjectID];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [v3 date];
  v9 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:v5 date:v8 mailRankingSignals:v7];

  return v9;
}

id sub_1001681C4(id a1, EFFuture *a2)
{
  v2 = [(EFFuture *)a2 result];
  v3 = [v2 itemID];
  v4 = [NSString stringWithFormat:@"%@", v3];

  v5 = [v2 date];
  v6 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:v4 date:v5 mailRankingSignals:0];

  return v6;
}

void sub_100168288(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001682C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) _parsecEmbeddingStateWithSearchInfo:?];
    [v5 setEmbeddingState:v4];

    v3 = v5;
  }

  [v3 reportMessageListResultsFetched:*(a1 + 48) topHitResults:*(a1 + 56) instantAnswerResult:*(a1 + 64) isFinished:*(a1 + 72)];
}

id sub_100168798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  [*(a1 + 32) currentKeyboardOverlap];
  v5 = [v4 mf_isIndexPathVisible:v3 overlap:?];

  return v5;
}

id sub_100168818(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _parsecMessageResultForVisibleIndexPath:a2];

  return v2;
}

void sub_100168CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) suggestionTokens];
  v6 = [*(a1 + 32) userQueryString];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100168F70;
  v19 = sub_100168F80;
  v20 = objc_alloc_init(NSMutableArray);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100168F70;
  v13 = sub_100168F80;
  v14 = objc_alloc_init(NSMutableArray);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100168F88;
  v8[3] = &unk_100652240;
  v8[5] = &v15;
  v8[6] = &v9;
  v8[4] = WeakRetained;
  [v5 enumerateObjectsUsingBlock:v8];
  if (v6)
  {
    v7 = [MSParsecSearchSessionQueryComponent userTypedQueryComponentWithString:v6 removingFreeTextTokens:v16[5]];
    if (v7)
    {
      [v10[5] addObject:v7];
    }
  }

  [v3 reportQueryWithRestrictedComponents:v10[5] triggerEvent:*(a1 + 56) searchType:*(a1 + 64) hasCurrentMailboxScope:(WeakRetained[672] >> 1) & 1 languages:*(a1 + 40)];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

void sub_100168EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100168F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100168F88(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 tokenKind])
  {
    v3 = [[MUISuggestionToken alloc] initWithCSToken:v11];
    v4 = [*(a1 + 32) categoryForTokenKind:{objc_msgSend(v11, "tokenKind")}];
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v6 = [v3 scopeName];
    v7 = [v3 title];
    v8 = [MSParsecSearchSessionQueryComponent suggestionAtomQueryComponentWithCategory:v4 scope:v6 queryString:v7 cannedSuggestion:0];
    [v5 addObject:v8];
  }

  else
  {
    v9 = [v11 displayText];
    v3 = [v9 string];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v4 = [MSParsecSearchSessionQueryComponent freeTextQueryComponentWithString:v3];
    [v10 addObject:v4];
  }
}

void sub_10016A7FC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD338;
  qword_1006DD338 = v1;
}

double sub_10016AD88(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = a7 + CGRectGetWidth(*&a3) * -0.5;
  if (a2)
  {
    v13 = v13 + *(a1 + 40);
  }

  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetHeight(v15);
  UIRoundToViewScale();
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetWidth(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetHeight(v17);
  return v13;
}

void sub_10016B844(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10016C04C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DD358;
  qword_1006DD358 = v1;
}

void sub_10016CE14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained dataSource];
    [v2 reloadVisibleCellsInvalidatingCache:0];

    WeakRetained = v3;
  }
}

void sub_10016CE94(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [v8 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      if ((*(EFIsNull + 16))(EFIsNull, v4))
      {

        v4 = 0;
      }

      [WeakRetained setShouldHideMessageListAvatar:{objc_msgSend(v4, "BOOLValue")}];
      v5 = [WeakRetained collectionView];
      v6 = [v5 collectionViewLayout];
      [v6 invalidateLayout];

      v7 = [WeakRetained dataSource];
      [v7 reloadVisibleCellsInvalidatingCache:0];
    }

    else
    {
      [WeakRetained setShouldHideMessageListAvatar:1];
    }
  }
}

void sub_10016D004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained reloadDataSource];
  }
}

void sub_10016D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MessageListViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10016D69C()
{
  v0 = _EFLocalizedString();

  return v0;
}

id sub_10016D6D8()
{
  v0 = _EFLocalizedStringFromTable();

  return v0;
}

void sub_10016DB50(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _configureLayoutListConfiguration:v5 atSection:*(a1 + 40)];
  }
}

void sub_10016E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v42 - 168));

  _Unwind_Resume(a1);
}

id sub_10016E1EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained leadingSwipeActionsConfigurationAtIndexPath:v3];

  return v5;
}

id sub_10016E268(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained trailingSwipeActionsConfigurationAtIndexPath:v3];

  return v5;
}

void sub_10016E2E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSwipeActionVisible:1];
}

void sub_10016E344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSwipeActionVisible:0];
}

id sub_10016E3A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) layoutValuesHelper];
  v8 = [v7 defaultLayoutValues];

  [v8 topLeadingSeparatorInset];
  v10 = v9;
  if (EMBlackPearlIsFeatureEnabled() && ([*(a1 + 32) shouldHideMessageListAvatar] & 1) == 0)
  {
    v12 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

    v11 = !IsAccessibilityCategory;
  }

  else
  {
    v11 = 0;
  }

  [v8 bottomLeadingSeparatorInsetShowingAvatar:v11];
  v15 = v14;
  if ([*(a1 + 32) isEditing])
  {
    [*(a1 + 32) editingSeparatorInset];
    v15 = v15 + v16;
    if ([v5 item])
    {
      v10 = v15;
    }

    else if (([*(a1 + 32) focusAllowed] & 1) == 0 && objc_msgSend(*(a1 + 32), "isBucketBarHidden"))
    {
      v10 = v15;
    }
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v17 = [*(a1 + 32) dataSource];
    v18 = [v17 isSection:MessageListSectionPriority atIndex:*(a1 + 40)];
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(a1 + 32) state];
  v20 = ([v19 useSplitViewStyling] ^ 1) & v18;

  if (v20 == 1)
  {
    +[MUIPriorityMessageListBackgroundDecorationView decorationViewInset];
  }

  else
  {
    v22 = 0.0;
    if (!MUISolariumFeatureEnabled())
    {
      goto LABEL_20;
    }

    [v8 trailingPadding];
  }

  v22 = v21;
LABEL_20:
  if (v18)
  {
    v23 = v15;
  }

  else
  {
    v23 = v10;
  }

  [v6 setTopSeparatorInsets:{0.0, v23, 0.0, v22}];
  [v6 setBottomSeparatorInsets:{0.0, v15, 0.0, v22}];
  v24 = [*(a1 + 32) separatorController];
  v25 = [v24 updatedSeparatorConfiguration:v6 atIndexPath:v5];

  return v25;
}

void sub_10016ED28(void *a1)
{
  if (a1)
  {
    v2 = sub_10019527C(a1);
    v3 = [v2 presentedViewController];
    v4 = sub_10019514C(a1, v3);
    v5 = +[MessageListViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector("_dismissPresentedViewController");
      v9 = 138413570;
      v10 = v7;
      v11 = 2048;
      v12 = a1;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = v4;
      v17 = 2112;
      v18 = v2;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ shouldDismiss:%d presenting:%@ presented:%@", &v9, 0x3Au);
    }

    if (v4)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_10016F1E0(uint64_t a1)
{
  [*(a1 + 32) setupTipsObserver];
  if (([*(a1 + 32) isSearchViewController] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_isInSearch") & 1) == 0)
  {
    [*(a1 + 32) updateFilterByUnreadRules];
  }

  v2 = [*(a1 + 32) dataSource];
  [v2 resumeUpdates];
}

void sub_10016F4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10016F634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_10016FE78(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 copy];
    v6 = [a1 senderSpecificMessageListItem];
    v7 = [v6 businessID];

    if (![a1 isBlackPearlEnabled])
    {
      goto LABEL_10;
    }

    v8 = [a1 state];
    if ([v8 containsInbox])
    {
      v9 = [a1 isBucketBarHidden];

      if ((v9 & 1) == 0)
      {
        [a1 selectedBucket];
        v10 = NSPredicateFromBucket();
        v11 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v5 second:v10];
LABEL_9:
        v12 = v11;

        v5 = v12;
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (!v7)
    {
      goto LABEL_10;
    }

    v10 = [EMMessageListItemPredicates predicateForMessagesForBusinessID:v7];
    v11 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v5 second:v10];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void sub_10016FFF0(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 mailStatusObserver];
    [v6 stopObserving];
    v7 = [a1 isSearchViewController];
    if (v5)
    {
      v8 = @"Message list status (filtered)";
      v9 = @"Search status (filtered)";
    }

    else
    {
      v8 = @"Message list back button";
      v9 = @"Search back button";
    }

    if (v7)
    {
      v8 = v9;
    }

    v10 = v8;
    [v6 startObservingForVisibleMailboxes:v11 filterPredicate:v5 label:v10];
  }
}

void sub_100170B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  objc_destroyWeak((v37 + 32));

  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v39 - 112));

  _Unwind_Resume(a1);
}

id sub_100170C28(uint64_t a1)
{
  v2 = +[MessageListViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: View setup completed, continue with state restoration.", &v8, 0x16u);
  }

  v6 = *(a1 + 40);

  return v6;
}

id sub_100170D30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v40 = v7;
    v41 = 2048;
    v42 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: State has finished loading. Beginning restoration...", buf, 0x16u);
  }

  v35 = [v3 messageList];
  v8 = [v3 mailboxes];
  v9 = [WeakRetained mailboxes];
  v10 = [v8 isEqualToArray:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v3 mailboxes];
    [WeakRetained _setMailboxes:v11];

    v12 = +[MessageListViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v35 ef_publicDescription];
      if ([v35 isThreaded])
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = [v3 mailboxes];
      v18 = [v17 firstObject];
      v19 = [v18 ef_publicDescription];
      *buf = 138413314;
      v40 = v14;
      v41 = 2048;
      v42 = WeakRetained;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      v47 = 2114;
      v48 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Reloading datasource using message list from restoration state: %@ threaded: %@ mailbox: %{public}@", buf, 0x34u);
    }

    [WeakRetained reloadDataSourceWithMessageList:v35];
    v20 = [WeakRetained currentFocus];

    if (v20)
    {
      [WeakRetained reloadFromMailboxes];
    }
  }

  v21 = +[MessageListViewController log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [WeakRetained mailboxes];
    v25 = [v24 firstObject];
    v26 = [v25 ef_publicDescription];
    *buf = 138412802;
    v40 = v23;
    v41 = 2048;
    v42 = WeakRetained;
    v43 = 2114;
    v44 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Setting mailboxes: %{public}@", buf, 0x20u);
  }

  v27 = [WeakRetained mailboxes];
  [WeakRetained setMailboxes:v27 forceReload:0];

  v28 = [v3 firstVisibleItemIDPromise];
  v29 = [v28 future];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10017130C;
  v36[3] = &unk_100652428;
  objc_copyWeak(&v38, (a1 + 32));
  v30 = v3;
  v37 = v30;
  v31 = [v29 then:v36];

  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v33 = +[NSNull null];
    v32 = [EFFuture futureWithResult:v33];
  }

  objc_destroyWeak(&v38);

  return v32;
}

id sub_10017130C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v3 || ([*(a1 + 32) scrolledToTop] & 1) != 0)
  {
    v5 = +[MessageListViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v25 = v7;
      v26 = 2048;
      v27 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Will not restore scroll position.", buf, 0x16u);
    }

LABEL_6:
    v8 = [NSNull null:v18];
    v9 = [EFFuture futureWithResult:v8];

    goto LABEL_7;
  }

  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412802;
    v25 = v13;
    v26 = 2048;
    v27 = WeakRetained;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Will restore scroll position once index path has been identified for itemID: %@", buf, 0x20u);
  }

  [WeakRetained setInitialScrollItemID:v3];
  v14 = +[EFPromise promise];
  [WeakRetained setScrollItemIndexPathPromise:v14];

  v15 = [WeakRetained scrollItemIndexPathPromise];
  v16 = [v15 future];

  v17 = +[EFScheduler mainThreadScheduler];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100171648;
  v21 = &unk_100652400;
  v22 = WeakRetained;
  v23 = v3;
  v9 = [v16 onScheduler:v17 then:&v18];

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

id sub_100171648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = 138413058;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Found index path for %@: %@. Scrolling that item to top...", &v13, 0x2Au);
  }

  v9 = [*(a1 + 32) collectionView];
  [v9 scrollToItemAtIndexPath:v3 atScrollPosition:1 animated:0];

  v10 = +[NSNull null];
  v11 = [EFFuture futureWithResult:v10];

  return v11;
}

void sub_1001717F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelOrCleanupStateRestoration];
}

void sub_10017184C(uint64_t a1)
{
  v2 = +[MessageListViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: State restoration complete.", &v6, 0x16u);
  }
}

void sub_100171940(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ef_isCancelledError])
  {
    v4 = +[MessageListViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: State restoration was cancelled.", &v12, 0x16u);
    }
  }

  else
  {
    v4 = +[MessageListViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v11 = [v3 ef_publicDescription];
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "<%@: %p> State Restoration: State restoration failed with error: %@", &v12, 0x20u);
    }
  }
}

void sub_100171C90(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    if (!v11)
    {
      v10 = +[NSAssertionHandler currentHandler];
      [v10 handleFailureInMethod:"_updateCellGroupingForCellForItemWithItemID:atIndexPath:" object:a1 file:@"MessageListViewController.m" lineNumber:1447 description:{@"Invalid parameter not satisfying: %@", @"itemID"}];
    }

    v6 = [a1 state];
    v7 = [v6 useSplitViewStyling];

    if (v7)
    {
      v8 = [a1 dataSource];
      v9 = [v8 relatedItemIDsForSelectedItemID:v11 atIndexPath:v5];
      [v8 reloadItemsWithItemIDs:v9];
    }
  }
}

id sub_100171FD4(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = [EMMailbox predicateForMailboxType:[(EMMailbox *)v2 type]];

  return v3;
}

void sub_100172264(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 BOOLValue])
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1001726B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 dataSource];
    v5 = [v3 section];
    if ([v4 isSection:MessageListSectionHelpMailLearn atIndex:v5])
    {
LABEL_5:

LABEL_6:
      a1 = 0;
      goto LABEL_7;
    }

    v6 = [a1 dataSource];
    v7 = [v3 section];
    if ([v6 isSection:MessageListSectionOnboardingTip atIndex:v7])
    {

      goto LABEL_5;
    }

    v9 = [a1 dataSource];
    v10 = [v3 section];
    v11 = [v9 isSection:MessageListSectionBucketBar atIndex:v10];

    if (v11)
    {
      goto LABEL_6;
    }

    v12 = [a1 dataSource];
    v13 = [v3 section];
    if ([v12 isSection:MessageListSectionInstantAnswers atIndex:v13])
    {
      v14 = [a1 isEditing];

      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v15 = [a1 dataSource];
    v16 = [v3 section];
    v17 = [v15 isSection:MessageListSectionMailCleanupTip atIndex:v16];

    if (v17)
    {
      goto LABEL_6;
    }

    if ((EFProtectedDataAvailable() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v21 = +[MessageListViewController log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v3 section];
        v26 = [v3 item];
        EFContentProtectionGetObservedState();
        v27 = EFContentProtectionStateDescription();
        v31 = 138413314;
        v32 = v24;
        v33 = 2048;
        v34 = a1;
        v35 = 2048;
        v36 = v25;
        v37 = 2048;
        v38 = v26;
        v39 = 2114;
        v40 = v27;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%@: %p> Cannot select item at index path (%ld-%ld) due to unexpected content protection state: %{public}@", &v31, 0x34u);
      }

      goto LABEL_6;
    }

    v18 = [a1 collectionView];
    v19 = [v18 cellForItemAtIndexPath:v3];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v19 messageListItem], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
    {
      v22 = +[MessageListViewController log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v3 ef_publicDescription];
        v31 = 138412802;
        v32 = v29;
        v33 = 2048;
        v34 = a1;
        v35 = 2112;
        v36 = v30;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "<%@: %p> Ignore message list selection due to blank cell (indexPath=%@)", &v31, 0x20u);
      }

      a1 = 0;
    }

    else
    {
      a1 = 1;
    }
  }

LABEL_7:

  return a1;
}

void sub_100172EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_100173894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_100173908(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained lastSeenDatesForBucket:*(a1 + 56)];
    v7 = [v6 first];
    v8 = [v6 second];
    if (!(v7 | v8))
    {
LABEL_15:

      goto LABEL_16;
    }

    v20 = [v3 date];
    v19 = [v3 displayDate];
    if (v20 && v19)
    {
      v9 = [v3 date];
      if ([v7 ef_isEarlierThanDate:v9])
      {

        goto LABEL_12;
      }

      v14 = [v3 displayDate];
      v15 = [v8 ef_isEarlierThanDate:v14];

      if (v15)
      {
LABEL_12:
        v16 = [EFPair alloc];
        v17 = [v3 date];
        v18 = [v3 displayDate];
        v13 = [v16 initWithFirst:v17 second:v18];

        if (v13)
        {
          [v5 setlastSeenDatesForSelectedBucket:v13];
          [v5 _updateLastSeenDates:v13 forMailboxes:*(a1 + 40) bucket:*(a1 + 56)];
        }

        goto LABEL_14;
      }
    }

    else
    {
      v10 = +[MessageListViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 32) ef_publicDescription];
        v12 = [v3 ef_publicDescription];
        sub_10048A2A0(v11, v12, v21, v10);
      }
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
}

void sub_100174760(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100174DB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100176AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_100177F24(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained selectionPromise];
    v6 = *(a1 + 32);

    if (v5 == v6)
    {
      [v4 setSelectionPromise:0];
      BYTE2(v7) = *(a1 + 84);
      LOWORD(v7) = *(a1 + 82);
      [v4 _handleSelectedItem:v8 itemID:*(a1 + 40) messageList:*(a1 + 48) referenceItem:*(a1 + 56) scrollToVisible:*(a1 + 80) userInitiated:*(a1 + 81) canRestoreDraft:v7 animated:*(a1 + 64) showConversationView:? indexPath:?];
    }
  }
}

void sub_100178218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, id a26)
{
  objc_destroyWeak((v26 + 40));

  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));

  _Unwind_Resume(a1);
}

void sub_1001782AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained loadingMessageItemID];

    if (v6 == v7)
    {
      v16 = +[MessageListViewController log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = *(a1 + 32);
        v20 = *(a1 + 64);
        v21 = *(a1 + 65);
        v22 = *(a1 + 66);
        v23 = *(a1 + 67);
        v26 = 138413826;
        v27 = v18;
        v28 = 2048;
        v29 = v5;
        v30 = 2114;
        v31 = v19;
        v32 = 1024;
        v33 = v20;
        v34 = 1024;
        v35 = v21;
        v36 = 1024;
        v37 = v22;
        v38 = 1024;
        v39 = v23;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@: %p> loadMessageWithItemID: Asynchronously loaded message with item ID %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", &v26, 0x38u);
      }

      v24 = [v5 conversationViewController];
      [v24 setReferenceMessageListItem:v3 referenceMessageList:*(a1 + 40) showAsConversation:*(a1 + 68) animated:*(a1 + 66)];

      v13 = [v5 scene];
      if (!([v13 isInExpandedEnvironment]& 1 | ((*(a1 + 67) & 1) == 0)))
      {
        v25 = [v13 splitViewController];
        [v25 showConversationViewControllerAnimated:*(a1 + 66) completion:0];
      }
    }

    else
    {
      v8 = +[MessageListViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 32);
        v26 = 138412802;
        v27 = v10;
        v28 = 2048;
        v29 = v5;
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> loadMessageWithItemID: Asynchronously loaded message with item ID %{public}@, skipping update to the conversation view.", &v26, 0x20u);
      }

      v12 = MFMessageSelectionLifecycleSignpostLog();
      v13 = v12;
      v14 = *(a1 + 56);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v15 = *(a1 + 32);
        v26 = 138543362;
        v27 = v15;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "Message selection lifecycle", "Fetched message with itemID %{public}@, skipping update to the conversation view", &v26, 0xCu);
      }
    }
  }
}

void sub_1001785D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[MessageListViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v3 ef_publicDescription];
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v15 = *(a1 + 57);
      v16 = *(a1 + 58);
      v17 = *(a1 + 59);
      v18 = 138414082;
      v19 = v11;
      v20 = 2048;
      v21 = WeakRetained;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = v15;
      v30 = 1024;
      v31 = v16;
      v32 = 1024;
      v33 = v17;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "<%@: %p> loadMessageWithItemID: Failed to load message asynchronously: %{public}@, itemID: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", &v18, 0x42u);
    }

    v6 = MFMessageSelectionLifecycleSignpostLog();
    v7 = v6;
    v8 = *(a1 + 48);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(a1 + 32);
      v18 = 138543362;
      v19 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "Message selection lifecycle", "Failed to load message with itemID %{public}@, skipping update to the conversation view", &v18, 0xCu);
    }
  }
}

void *sub_1001788E4(void *result)
{
  v1 = result;
  v2 = result[6];
  if (v2 == 3)
  {
LABEL_4:
    v3 = +[MessageListViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = v1[4];
      v7 = _UISplitViewControllerDisplayModeDescription();
      v13 = 138412802;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Hiding Message List for displayMode: %@", &v13, 0x20u);
    }

    return [v1[5] showMessageListViewController:0 animated:1 completion:0];
  }

  if (v2 != 6)
  {
    if (v2 != 5)
    {
      return result;
    }

    goto LABEL_4;
  }

  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = v1[4];
    v12 = _UISplitViewControllerDisplayModeDescription();
    v13 = 138412802;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Hiding Mailbox List for displayMode: %@", &v13, 0x20u);
  }

  return [v1[5] showMailboxPickerController:0 animated:1 completion:0];
}

BOOL sub_1001793E0(id a1, EMMailbox *a2)
{
  v2 = a2;
  v3 = [(EMMailbox *)v2 type]== 5 || [(EMMailbox *)v2 type]== 6;

  return v3;
}

void sub_100179604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017968C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained collectionView];
    [v3 deselectAllItemsInCollectionView:v2 animated:1];

    WeakRetained = v3;
  }
}

void sub_1001798B8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

BOOL sub_100179A98(uint64_t a1, void *a2)
{
  v3 = [a2 category];
  [v3 type];
  v4 = MUIBucketFromEMCategoryType() != *(a1 + 32);

  return v4;
}

void sub_10017A2B8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

NSString *__cdecl sub_10017A32C(id a1, UITextInputMode *a2)
{
  v2 = [(UITextInputMode *)a2 primaryLanguage];

  return v2;
}

uint64_t sub_10017A640(uint64_t a1)
{
  [*(a1 + 32) changeTipShouldDisplayTo:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 didPresentSearchController:v4];
  }

  return result;
}

void sub_10017A800(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 _exitMultiSelectionForce:1];
    v4 = [a1 collectionView];
    v5 = [a1 lastSelectedItemID];
    if (v5)
    {
      v6 = [a1 dataSource];
      v7 = [v6 indexPathForItemIdentifier:v5];
    }

    else
    {
      v7 = 0;
    }

    [v4 indexPathsForSelectedItems];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v8 = v15 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([v12 isEqual:{v7, v14}] & 1) == 0)
          {
            [v4 deselectItemAtIndexPath:v12 animated:a2];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    if (v7)
    {
      if (([v8 containsObject:v7] & 1) == 0)
      {
        v13 = [a1 collectionView];
        [v13 selectItemAtIndexPath:v7 animated:a2 scrollPosition:0];
      }
    }

    sub_100171C90(a1, v5, v7);
    [a1 _updateTitle];
  }
}

void sub_10017AA50(void *a1)
{
  if (a1)
  {
    v1 = [a1 navigationItem];
    [v1 setLargeTitleDisplayMode:2];
    [v1 setTitle:0];
    [v1 setTitleView:0];
    [v1 setSubtitleView:0];
    [v1 setAttributedTitle:0];
    [v1 setLargeTitle:0];
    [v1 setLargeSubtitleView:0];
  }
}

void sub_10017AD64(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 navigationItem];
  if (MUISolariumFeatureEnabled())
  {
    [v2 setLargeTitleDisplayMode:0];
    [v2 setStyle:1];
  }

  v3 = +[NSBundle mainBundle];
  v40 = [v3 localizedStringForKey:@"SEARCH_ALL_MAILBOXES" value:&stru_100662A88 table:@"Main"];

  v4 = [a1 searchBar];
  [v4 setPlaceholder:v40];

  v41 = [a1 messageListSelectionModel];
  if ([a1 isSearchViewController])
  {
    v39 = 1;
  }

  else
  {
    v39 = [a1 isPresentingSearchViewController];
  }

  if (([v41 isSelectAll] & 1) != 0 || (v5 = objc_msgSend(v41, "count"), (v6 = v5) == 0) || v5 == 1 && (objc_msgSend(a1, "isEditing") & 1) == 0)
  {
    if (!v39 || ([a1 searchController], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "searchBar"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "representedObjects"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v10, !v13))
    {
      v16 = [a1 mailboxes];
      v17 = [v16 firstObject];
      v18 = [v17 name];

      v19 = [a1 mailboxes];
      v20 = [v19 firstObject];
      v21 = [v20 account];
      v22 = [v21 name];

      if ([v22 length])
      {
        v23 = [NSString stringWithFormat:@"%@ %@", v18, v22];
      }

      else
      {
        v23 = v18;
      }

      v9 = v23;
      v14 = v18;
      if (!v9)
      {
        v24 = +[MessageListViewController log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10048A3D0();
        }
      }

      v25 = [a1 navigationController];
      v26 = [v25 navigationBar];
      v27 = [v26 _defaultTitleFont];

      if (v27)
      {
        v28 = v9 != 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = [NSMutableAttributedString alloc];
        v42[0] = NSFontAttributeName;
        v42[1] = NSForegroundColorAttributeName;
        v43[0] = v27;
        v30 = +[UIColor labelColor];
        v43[1] = v30;
        v31 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
        v15 = [v29 initWithString:v9 attributes:v31];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_30;
    }

    v9 = [a1 navigationTitleForSearch];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MESSAGES_SELECTED_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
    v9 = [NSString localizedStringWithFormat:v8, v6];
  }

  v14 = 0;
  v15 = 0;
LABEL_30:
  if ([a1 shouldUseCustomNavigationBarTitleView])
  {
    v32 = [a1 navigationBarTitleView];
    [v32 configureWithTitle:v9 bucket:{objc_msgSend(a1, "selectedBucket")}];
  }

  else
  {
    v33 = [v2 standardAppearance];
    [v33 setTitlePositionAdjustment:{UIOffsetZero.horizontal, UIOffsetZero.vertical}];

    v32 = 0;
  }

  [v2 setTitle:v9];
  [v2 setTitleView:v32];
  if (MUISolariumFeatureEnabled())
  {
    if ([v15 length])
    {
      [v2 setAttributedTitle:v15];
    }

    if (v14)
    {
      v34 = v14;
    }

    else
    {
      v34 = v9;
    }

    [v2 setLargeTitle:v34];
    if (v39)
    {
      [v2 setSubtitleView:0];
      [v2 setLargeSubtitleView:0];
    }

    else
    {
      v35 = [a1 mailStatusViewController];
      v36 = [v35 primaryStatusView];
      [v2 setSubtitleView:v36];

      v37 = [a1 mailStatusViewController];
      v38 = [v37 secondaryStatusView];
      [v2 setLargeSubtitleView:v38];
    }

    [a1 _updateStatusPrefix];
  }
}

void sub_10017B83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017B890(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained searchBar];
  [v1 becomeFirstResponder];
}

void sub_10017B9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017B9E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained refreshControl];
    v4 = [v3 isRefreshing];

    if (v4)
    {
      v5 = [v2 refreshControl];
      [v5 endRefreshing];

      v6 = +[MessageListViewController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 2048;
        v12 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Stopping the refresh control animation", &v9, 0x16u);
      }
    }
  }
}

void sub_10017BFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017C01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained categoryGroupingPreferenceController];
    [v3 disableGrouping:(*(a1 + 48) & 1) == 0 forBucket:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_10017CD64(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 setToolbarHidden:0];
}

id sub_10017CE14(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v2 setWidth:3.0];
    if (MUISolariumFeatureEnabled())
    {
      v3 = +[EFDevice currentDevice];
      if ([v3 isPad])
      {
        v4 = [*(a1 + 32) splitViewController];
        v5 = [v4 traitCollection];
        v6 = [v5 horizontalSizeClass];

        if (v6 == 1)
        {
          v7 = *(a1 + 40);
          v32[0] = v7;
          v34 = *(&v7 + 1);
          *&v7 = *(a1 + 56);
          v32[1] = v7;
          v8 = *(a1 + 72);
          v33 = *(a1 + 64);
          v35 = v8;
          v9 = [NSArray arrayWithObjects:v32 count:7];
          [*(a1 + 32) setSearchMultiEditToolbarButtonItems:v9];
LABEL_14:

          [*(a1 + 32) updateToolbarButtonTitles];
          v21 = [*(a1 + 32) searchMultiEditToolbarButtonItems];

          goto LABEL_19;
        }
      }

      else
      {
      }

      *(&v20 + 1) = *(a1 + 48);
      *&v20 = *(a1 + 56);
      v30[0] = *(a1 + 40);
      v30[1] = v20;
      v31 = *(a1 + 64);
      v9 = [NSArray arrayWithObjects:v30 count:5];
      [*(a1 + 32) setSearchMultiEditToolbarButtonItems:v9];
      goto LABEL_14;
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v29[2] = v2;
    v29[3] = v16;
    v18 = *(a1 + 48);
    v29[0] = *(a1 + 40);
    v29[1] = v18;
    v29[4] = v18;
    v29[5] = v2;
    v29[6] = v17;
    v29[7] = v18;
    v19 = *(a1 + 72);
    v29[8] = v2;
    v29[9] = v19;
    v9 = [NSArray arrayWithObjects:v29 count:10];
    [*(a1 + 32) setSearchMultiEditToolbarButtonItems:v9];
    goto LABEL_14;
  }

  v10 = [*(a1 + 32) searchToolbarItems];

  if (!v10)
  {
    if (!MUISolariumFeatureEnabled())
    {
      v22 = *(a1 + 48);
      v26[0] = *(a1 + 88);
      v26[1] = v22;
      v26[2] = *(a1 + 72);
      v15 = [NSArray arrayWithObjects:v26 count:3];
      [*(a1 + 32) setSearchToolbarItems:v15];
      goto LABEL_17;
    }

    if ((*(a1 + 97) & 1) == 0)
    {
      v28[0] = *(a1 + 48);
      v15 = [*(a1 + 80) searchBarPlacementBarButtonItem];
      v28[1] = v15;
      v23 = *(a1 + 72);
      v28[2] = *(a1 + 48);
      v28[3] = v23;
      v24 = [NSArray arrayWithObjects:v28 count:4];
      [*(a1 + 32) setSearchToolbarItems:v24];

      goto LABEL_17;
    }

    v11 = [*(a1 + 32) splitViewController];
    v12 = [v11 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 1)
    {
      v14 = *(a1 + 72);
      v27[0] = *(a1 + 48);
      v27[1] = v14;
      v15 = [NSArray arrayWithObjects:v27 count:2];
      [*(a1 + 32) setSearchToolbarItems:v15];
LABEL_17:
    }
  }

  [*(a1 + 32) updateToolbarButtonTitles];
  v21 = [*(a1 + 32) searchToolbarItems];
LABEL_19:

  return v21;
}

id sub_10017D22C(uint64_t a1)
{
  v2 = [*(a1 + 32) multiEditToolbarButtonItems];

  if (!v2)
  {
    *&v3 = *(a1 + 56);
    v7[0] = *(a1 + 40);
    *(&v3 + 1) = *(&v7[0] + 1);
    v7[1] = v3;
    v8 = *(a1 + 64);
    v4 = [NSArray arrayWithObjects:v7 count:5];
    [*(a1 + 32) setMultiEditToolbarButtonItems:v4];
  }

  [*(a1 + 32) updateToolbarButtonTitles];
  v5 = [*(a1 + 32) multiEditToolbarButtonItems];

  return v5;
}

id sub_10017D31C(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = v2;
  if (*(a1 + 72) == 1)
  {
    if (v2)
    {
      v19[0] = *(a1 + 32);
      v19[1] = v2;
      v4 = [NSArray arrayWithObjects:v19 count:2];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }
  }

  else
  {
    if (MUISolariumFeatureEnabled())
    {
      if (v3)
      {
        v18[0] = *(a1 + 40);
        v5 = [*(a1 + 48) filterCriteriaButtonItem];
        v6 = *(a1 + 32);
        v18[1] = v5;
        v18[2] = v6;
        v7 = (*(*(a1 + 64) + 16))();
        v18[3] = v7;
        v8 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
        v18[4] = v8;
        v18[5] = v3;
        v4 = [NSArray arrayWithObjects:v18 count:6];
      }

      else
      {
        v17[0] = *(a1 + 40);
        v5 = [*(a1 + 48) filterCriteriaButtonItem];
        v12 = *(a1 + 32);
        v17[1] = v5;
        v17[2] = v12;
        v7 = (*(*(a1 + 64) + 16))();
        v17[3] = v7;
        v4 = [NSArray arrayWithObjects:v17 count:4];
      }
    }

    else
    {
      v9 = *(a1 + 32);
      if (v3)
      {
        v16[0] = *(a1 + 40);
        v16[1] = v9;
        v5 = (*(*(a1 + 64) + 16))();
        v10 = *(a1 + 32);
        v16[2] = v5;
        v16[3] = v10;
        v16[4] = v3;
        v11 = [NSArray arrayWithObjects:v16 count:5];
      }

      else
      {
        v15[0] = *(a1 + 40);
        v15[1] = v9;
        v5 = (*(*(a1 + 64) + 16))(*(a1 + 64), 1);
        v13 = *(a1 + 32);
        v15[2] = v5;
        v15[3] = v13;
        v11 = [NSArray arrayWithObjects:v15 count:4];
      }

      v4 = v11;
    }
  }

  return v4;
}

void sub_10017D6A4(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10017D888;
  v21 = sub_10017D898;
  v22 = 0;
  v2 = [*(a1 + 32) isSearchSuggestionsVisible];
  v3 = [*(a1 + 32) isSearchViewController];
  if (v2)
  {
    v4 = v3 & v2;
  }

  else
  {
    v4 = sub_10001C994(*(a1 + 32)) > 0;
  }

  if ([*(a1 + 32) isSearchViewController])
  {
    if (!(v2 & 1 | (([*(a1 + 32) isSearching] & 1) == 0)))
    {
      objc_initWeak(&location, *(a1 + 32));
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_10017D8A0;
      v11 = &unk_100652720;
      v5 = *(a1 + 32);
      v14[1] = *(a1 + 40);
      v12 = v5;
      objc_copyWeak(v14, &location);
      v13 = &v17;
      v15 = *(a1 + 48);
      [v5 performOnLocalAndRemoteSearchCompletion:&v8];
      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }
  }

  else if ((v4 & 1) == 0 && (*(a1 + 49) & 1) == 0 && [*(a1 + 32) hasUpdatedAllVisibleSections])
  {
    v6 = [*(a1 + 32) _noContentTitleForMailboxTypeString];
    v7 = v18[5];
    v18[5] = v6;
  }

  [*(a1 + 32) _setContentUnavailableTitle:v18[5] animated:{*(a1 + 48), v8, v9, v10, v11, v12}];
  _Block_object_dispose(&v17, 8);
}

void sub_10017D850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10017D888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10017D8A0(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MessageListViewController.m" lineNumber:3474 description:@"Current thread must be main"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (sub_10001C994(WeakRetained) <= 0)
    {
      v2 = [WeakRetained indexStatus];
      v3 = [v2 isNotFullyIndexed];

      if ((v3 & 1) == 0)
      {
        v4 = [WeakRetained _noContentTitleForMailboxTypeString];
        v5 = *(*(a1 + 40) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;
      }
    }

    [WeakRetained _setContentUnavailableTitle:*(*(*(a1 + 40) + 8) + 40) animated:*(a1 + 64)];
  }
}

void sub_10017DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  objc_destroyWeak((v26 + 40));

  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_10017DF78(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained conversationViewController];
    [v3 setNeedsUpdateContentUnavailableConfiguration];

    WeakRetained = v4;
  }
}

void sub_10017E010(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained conversationViewController];
    [v3 setNeedsUpdateContentUnavailableConfiguration];

    WeakRetained = v4;
  }
}

BOOL sub_10017E098(void *a1)
{
  if (!a1 || ([a1 isSearchViewController] & 1) == 0 && !objc_msgSend(a1, "isPresentingSearchViewController") || !MUISolariumFeatureEnabled())
  {
    return 0;
  }

  v2 = [a1 splitViewController];
  v3 = [v2 traitCollection];
  v4 = [v3 horizontalSizeClass] == 1;

  return v4;
}

void sub_10017E250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10017EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

NSArray *__cdecl sub_10017EE1C(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 ef_compactMap:&stru_100652818];
  v3 = [MFMessageCriterion defaultsArrayFromCriteria:v2];

  return v3;
}

id sub_10017EE94(id a1, MFMailboxFilter *a2)
{
  v2 = [(MFMailboxFilter *)a2 criterion];

  return v2;
}

id sub_10017EEC4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) filterMatchingCriterion:a2];

  return v2;
}

void sub_10017F7C4(uint64_t a1)
{
  v2 = (a1 + 32);
  v31 = [*(a1 + 32) collectionView];
  v3 = [*v2 dataSource];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = [v31 visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setEditing:*(a1 + 48) animated:*(a1 + 49)];
          v9 = [*(a1 + 32) state];
          if ([v9 useSplitViewStyling])
          {
            v10 = *(a1 + 48);

            if (v10)
            {
              continue;
            }

            v9 = [v31 indexPathForCell:v8];
            v11 = [v3 itemIdentifierForIndexPath:v9];
            sub_100171C90(*(a1 + 32), v11, v9);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  [v31 setEditing:*(a1 + 48)];
  if (*(a1 + 48) == 1)
  {
    if ((*(a1 + 50) & 1) == 0)
    {
      v12 = [v31 indexPathsForSelectedItems];
      if ([v12 count] == 1)
      {
      }

      else
      {
        if (*(a1 + 48) == 1)
        {

          goto LABEL_19;
        }

        v30 = *(a1 + 50);

        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_18;
    }
  }

  else if (*(a1 + 50))
  {
LABEL_18:
    [*(a1 + 32) deselectSelectedItemsInCollectionView];
  }

LABEL_19:
  if (*(a1 + 48) == 1 && *(a1 + 51) == 1)
  {
    v13 = [*(a1 + 40) itemIDs];
    if ([*(a1 + 40) isSelectAll])
    {
      v14 = [NSMutableSet alloc];
      v15 = [v31 indexPathsForVisibleItems];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10017FD64;
      v36[3] = &unk_1006528A8;
      v37 = v3;
      v16 = [v15 ef_map:v36];
      v17 = [v14 initWithArray:v16];

      v18 = [[NSSet alloc] initWithArray:v13];
      [v17 minusSet:v18];

      v19 = [v17 allObjects];

      v13 = v19;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v3 indexPathForItemIdentifier:*(*(&v32 + 1) + 8 * j)];
          if (v24)
          {
            [v31 selectItemAtIndexPath:v24 animated:1 scrollPosition:0];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v21);
    }
  }

  v25 = [*(a1 + 32) lastSelectedItemID];
  v26 = v25;
  if (*(a1 + 50) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (v25)
    {
      v27 = [*(a1 + 32) state];
      v28 = [v27 useSplitViewStyling];

      if (v28)
      {
        v29 = [v3 indexPathForItemIdentifier:v26];
        [*(a1 + 32) deselectSelectedItemsInCollectionView];
        [v31 selectItemAtIndexPath:v29 animated:*(a1 + 49) scrollPosition:0];
      }
    }
  }

  [v31 setNeedsFocusUpdate];
}

id sub_10017FD64(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIdentifierForIndexPath:a2];

  return v2;
}

void sub_1001803A0(_Unwind_Exception *a1)
{
  v4 = v1;
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1001803EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _editButtonTapped:0];
  }
}

void sub_100180454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _editButtonTapped:0];
  }
}

void sub_100180734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100180794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _editButtonTapped:0];
  }
}

void sub_100180998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_1001809FC(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  v3 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote design:UIFontDescriptorSystemDesignDefault variant:0 weight:UIContentSizeCategoryExtraExtraLarge maximumContentSizeCategory:0 compatibleWithTraitCollection:UIFontWeightSemibold];
  [v2 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  return v2;
}

void sub_100180AC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _editButtonTapped:0];
  }
}

CategorizationOptionView *sub_100180BBC(uint64_t a1)
{
  v1 = [[CategorizationOptionView alloc] initWithDelegate:*(a1 + 32)];

  return v1;
}

void sub_100180C00(uint64_t a1, void *a2)
{
  v40 = a2;
  v3 = +[NSMutableArray array];
  IsFeatureEnabled = EMBlackPearlIsFeatureEnabled();
  v5 = +[MUIiCloudMailCleanupService isFeatureAvailable];
  objc_initWeak(&location, *(a1 + 32));
  if (IsFeatureEnabled)
  {
    v6 = [*(a1 + 32) _mailCategorizationOptionView];
    v7 = [UIImage _systemImageNamed:MFImageGlyphInfo];
    v8 = _EFLocalizedString();
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10018162C;
    v51[3] = &unk_10064F278;
    objc_copyWeak(&v52, &location);
    v9 = [UIAction actionWithTitle:v8 image:v7 identifier:0 handler:v51];

    [v3 addObject:v6];
    [v3 addObject:v9];

    objc_destroyWeak(&v52);
  }

  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterAvailable())
    {
      [*(a1 + 32) selectedBucket];
      if (MUIBucketAllowsPriorityMessageDisplay())
      {
        v10 = +[NSUserDefaults em_userDefaults];
        v11 = [v10 BOOLForKey:EMUserDefaultShouldHideHighlights];

        v12 = [UIImage _systemImageNamed:MFImageGlyphCatchUpHighlights];
        v13 = _EFLocalizedString();
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100181718;
        v48[3] = &unk_100652938;
        objc_copyWeak(&v49, &location);
        v14 = v11 ^ 1;
        v50 = v11 ^ 1;
        v15 = [UIAction actionWithTitle:v13 image:v12 identifier:0 handler:v48];

        [v15 setState:v14];
        [v3 addObject:v15];

        objc_destroyWeak(&v49);
      }
    }
  }

  if (([*(a1 + 32) isBucketBarHidden] & 1) == 0)
  {
    [*(a1 + 32) selectedBucket];
    if (MUIBucketIsBusinessBucket())
    {
      v16 = [*(a1 + 32) _categoryGroupingPreferenceMenuForBucket:{objc_msgSend(*(a1 + 32), "selectedBucket")}];
      [v3 addObject:v16];
    }
  }

  if (v5 && [*(a1 + 32) _isIniCloudContext])
  {
    v17 = [*(a1 + 32) iCloudMailCleanupService];
    v39 = [UIImage _systemImageNamed:MFImageGlyphiCloudMailCleanup];
    if ([v17 isConsentAccepted])
    {
      +[MUILocalizedBocceBallStrings iCloudMailCleanupTitle];
    }

    else
    {
      +[MUILocalizedBocceBallStrings iCloudMailCleanupDashboardInitialEntryPoint];
    }

    if ([v17 isConsentAccepted])
    {
      v18 = [v17 statusText];
    }

    else
    {
      v18 = 0;
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001817B8;
    v45[3] = &unk_100652960;
    objc_copyWeak(&v47, &location);
    v19 = v17;
    v46 = v19;
    v20 = [UIAction actionWithTitle:v38 image:v39 identifier:0 handler:v45];
    [v20 setSubtitle:v18];
    v56 = v20;
    v21 = [NSArray arrayWithObjects:&v56 count:1];
    v22 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v21];

    [v3 addObject:v22];
    objc_destroyWeak(&v47);
  }

  if (IsFeatureEnabled)
  {
    v23 = +[NSUserDefaults em_userDefaults];
    v24 = [v23 BOOLForKey:EMUserDefaultHideMessageListAvatar];

    v25 = _EFLocalizedString();
    v26 = [UIImage systemImageNamed:MFImageGlyphShowContactAvatar];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100181924;
    v43[3] = &unk_100652980;
    v44 = v24;
    v27 = [UIAction actionWithTitle:v25 image:v26 identifier:0 handler:v43];

    [v27 setState:v24 ^ 1];
    v55 = v27;
    v28 = [NSArray arrayWithObjects:&v55 count:1];
    v29 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v28];

    [v3 addObject:v29];
  }

  if (*(a1 + 32) && MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    v30 = _EFLocalizedString();
    v31 = _EFLocalizedString();
    if ([*(a1 + 32) isEditing])
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32;
    v34 = [UIImage systemImageNamed:MFImageGlyphSelect];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001819A4;
    v41[3] = &unk_10064F278;
    objc_copyWeak(&v42, &location);
    v35 = [UIAction actionWithTitle:v33 image:v34 identifier:0 handler:v41];

    v54 = v35;
    v36 = [NSArray arrayWithObjects:&v54 count:1];
    v37 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v36];

    [v3 addObject:v37];
    objc_destroyWeak(&v42);
  }

  v40[2](v40, v3);
  objc_destroyWeak(&location);
}

void sub_100181424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  objc_destroyWeak((v13 - 128));

  _Unwind_Resume(a1);
}

void sub_10018162C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [MUIAboutCategoriesViewController alloc];
    v3 = [v6 scene];
    v4 = [v3 daemonInterface];
    v5 = [v2 initWithDaemonInterface:v4 delegate:v6];

    [v6 presentViewController:v5 animated:1 completion:0];
    WeakRetained = v6;
  }
}

void sub_1001816DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100181718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NSUserDefaults em_userDefaults];
    [v2 setBool:*(a1 + 40) forKey:EMUserDefaultShouldHideHighlights];

    [WeakRetained updateBarButtons];
  }
}

void sub_1001817B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained iCloudMailCleanupService];
    v4 = [v3 isConsentAccepted];

    if (v4)
    {
      v5 = [*(a1 + 32) getDashboardViewController];
      [v10 setICloudMailCleanupDashboardViewController:v5];

      v6 = [v10 iCloudMailCleanupDashboardViewController];
      [v10 presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      v7 = [v10 iCloudMailCleanupOnboardingViewController];

      WeakRetained = v10;
      if (!v7)
      {
        goto LABEL_7;
      }

      v6 = [v10 scene];
      v8 = [v6 dockContainer];
      v9 = [v10 iCloudMailCleanupOnboardingViewController];
      [v8 presentViewController:v9 animated:1 completion:0];
    }

    WeakRetained = v10;
  }

LABEL_7:
}

void sub_1001818D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_100181924(uint64_t a1)
{
  v2 = +[NSUserDefaults em_userDefaults];
  [v2 setBool:(*(a1 + 32) & 1) == 0 forKey:EMUserDefaultHideMessageListAvatar];
}

void sub_1001819A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _editButtonTapped:v3];
}

id sub_100181B0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _bulkMarkMenuForCurrentSelection];

  return v2;
}

BOOL sub_100181DA8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 messageListSelectionModel];
  if ([v2 isSelectAll])
  {
    v3 = [a1 messageListSelectionModel];
    if ([v3 isSelectAll])
    {
      v4 = [a1 messageListSelectionModel];
      v5 = [v4 itemIDs];
      v6 = [v5 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}