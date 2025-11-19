void sub_1000012A4(id a1)
{
  qword_10002E350 = [NSSet setWithObjects:kCKCloudDocsShareURLSlug, kCKFreeformShareURLSlug, kCKGenericShareURLSlug, kCKKeynoteShareURLSlug, kCKNotesShareURLSlug, kCKNumbersShareURLSlug, kCKPagesShareURLSlug, kCKPhotosEPPMomentShareURLSlug, kCKPhotosShareURLSlug, kCKPhotosSharedLibraryShareURLSlug, kCKPhotosSharedCollectionsShareURLSlug, kCKRemindersShareURLSlug, kCKSafariTabGroupsShareURLSlug, 0];

  _objc_release_x1();
}

void sub_10000171C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000017A4;
  v2[3] = &unk_1000286C8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 acceptShareWithCompletionHandler:v2];
}

void sub_1000017A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Warn: Failed to accept share. %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_100001C30(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = 134217984;
    v6 = [v3 backgroundTaskID];
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "The time given for the share URL handling task %lu to complete while the app is in background has expired, the app will likely be killed now", &v5, 0xCu);
  }
}

void sub_100001D20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001DFC;
  v3[3] = &unk_100028740;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 56));
  [v2 acceptShareWithCompletionHandler:v3];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v5);
}

void sub_100001DE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100001DFC(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = v5;
      v8 = [v6 CKURLThroughSlug];
      v9 = [a1[4] CKPathAfterSlug];
      v18 = 138544130;
      v19 = v8;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Accepting shareURL %{public}@%{mask.hash}@ yielded error %@", &v18, 0x2Au);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Accepted shareURL %@ successfully", &v18, 0xCu);
    }
  }

  v12 = [WeakRetained activeSharingURLs];
  [v12 CKSynchronizedRemoveObject:a1[4]];

  v13 = objc_loadWeakRetained(a1 + 6);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v13 backgroundTaskID];
    v18 = 134217984;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Finished background task %lu (share URL handling)", &v18, 0xCu);
  }

  v17 = +[UIApplication sharedApplication];
  [v17 endBackgroundTask:{objc_msgSend(v13, "backgroundTaskID")}];

  [v13 setBackgroundTaskID:UIBackgroundTaskInvalid];
}

void sub_1000025A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 96));
  _Unwind_Resume(a1);
}

void sub_1000025C8(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = 134217984;
    v6 = [v3 backgroundTaskID];
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "The time given for the vetting URL handling task %lu to complete while the app is in background has expired, the app will likely be killed now", &v5, 0xCu);
  }
}

void sub_1000026B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002794;
  v3[3] = &unk_100028790;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 56));
  [v2 completeVettingWithCompletionHandler:v3];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v5);
}

void sub_100002778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100002794(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v11 = [WeakRetained activeVettingURLToVettingAcceptor];
  [v11 CKSynchronizedRemoveObjectForKey:a1[4]];

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = [v13 CKURLThroughSlug];
      v16 = [a1[4] CKPathAfterSlug];
      v27 = 138544130;
      v28 = v15;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v7;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Vetting with URL %{public}@%{mask.hash}@ yielded error %@.", &v27, 0x2Au);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = a1[4];
      v19 = v17;
      v20 = [v18 CKURLThroughSlug];
      v21 = [a1[4] CKPathAfterSlug];
      v27 = 138543874;
      v28 = v20;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Vetting with URL %{public}@%{mask.hash}@ succeeded. Performing share accept.", &v27, 0x20u);
    }

    [WeakRetained acceptShareWithMetadata:v9 shareURL:v8];
  }

  v22 = objc_loadWeakRetained(a1 + 6);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [v22 backgroundTaskID];
    v27 = 134217984;
    v28 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Finished background task %lu (vetting URL handling).", &v27, 0xCu);
  }

  v26 = +[UIApplication sharedApplication];
  [v26 endBackgroundTask:{objc_msgSend(v22, "backgroundTaskID")}];

  [v22 setBackgroundTaskID:UIBackgroundTaskInvalid];
}

id sub_1000038F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = CKLocalizedStringFromTableInBundleVA();

  return v6;
}

void sub_100005368(id a1)
{
  qword_10002E360 = [NSSet setWithObjects:@"pages", @"numbers", @"keynote", @"iclouddrive", @"notes", @"reminders", @"photos", @"photos_links", @"photos_sharing", @"safari-tab-groups", @"freeform", @"share", 0];

  _objc_release_x1();
}

void sub_100007C34(id a1)
{
  v1 = qword_10002E370;
  qword_10002E370 = &off_10002AEF8;

  v10[0] = @"com.apple.Notes";
  v2 = [NSSet setWithObject:@"com.apple.notes.folder"];
  v11[0] = v2;
  v10[1] = @"photos";
  v9[0] = CKPhotosSharedLibraryShareType;
  v9[1] = CKPhotosEPPMomentShareType;
  v9[2] = CKPhotosSharedCollectionsShareType;
  v3 = [NSArray arrayWithObjects:v9 count:3];
  v4 = [NSSet setWithObjects:v3, 0];
  v11[1] = v4;
  v10[2] = @"freeform";
  v5 = [NSSet setWithObject:CKFreeformShareType];
  v11[2] = v5;
  v10[3] = @"safari";
  v6 = [NSSet setWithObject:CKSafariTabGroupsShareType];
  v11[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = qword_10002E378;
  qword_10002E378 = v7;
}

uint64_t sub_1000083AC(uint64_t a1, int a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    return (*(result + 16))();
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t sub_10000889C(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result <= 1)
  {
    if (result > 1)
    {
      return result;
    }

    v3 = *(a1 + 32);
    v4 = 5;
    goto LABEL_11;
  }

  if (result == 2)
  {
    v3 = *(a1 + 32);
    v4 = 3;
LABEL_11:

    return [v3 setState:v4];
  }

  if (result == 4)
  {
    v5 = *(a1 + 32);

    return [v5 _dismiss];
  }

  return result;
}

void sub_100008CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 3) != 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = a3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected response from retrieving notification: %lx", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained delegate];
    [v5 retrievingDialogCancelled];
  }
}

void sub_100009270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayIfRequired];
}

void sub_100009350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _schedule];
}

void sub_1000096F8(id a1)
{
  qword_10002E388 = [NSSet setWithObjects:kCKPhotosEPPMomentShareURLSlug, kCKPhotosShareURLSlug, kCKPhotosSharedCollectionsShareURLSlug, 0];

  _objc_release_x1();
}

void sub_100009A60(id a1)
{
  qword_10002E398 = [NSSet setWithObjects:kCKKeynoteShareURLSlug, kCKNumbersShareURLSlug, kCKPagesShareURLSlug, 0];

  _objc_release_x1();
}

void sub_100009B70(id a1)
{
  qword_10002E3A8 = [NSSet setWithObjects:kCKCloudDocsShareURLSlug, kCKKeynoteShareURLSlug, kCKNumbersShareURLSlug, kCKPagesShareURLSlug, 0];

  _objc_release_x1();
}

void sub_100009C8C(id a1)
{
  qword_10002E3B8 = [NSSet setWithObjects:kCKPhotosEPPMomentShareURLSlug, kCKPhotosShareURLSlug, kCKPhotosSharedLibraryShareURLSlug, kCKPhotosSharedCollectionsShareURLSlug, 0];

  _objc_release_x1();
}

void sub_10000A9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A9FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000AA14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000AAD0;
    v6[3] = &unk_100028920;
    v6[4] = WeakRetained;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    [v3 _actuallyRequestAccessWithCompletion:v6];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10000AAD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    +[CKVettingAlerts alertContentForRequestAccessFailure];
  }

  else
  {
    +[CKVettingAlerts alertContentForRequestAccessConfirmation];
  }
  v4 = ;
  +[CKVettingAlerts showRequestAccessResultAlert:isSourceICS:](CKVettingAlerts, "showRequestAccessResultAlert:isSourceICS:", v4, [*(a1 + 32) isSourceICS]);

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_10000AB84(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 url];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User cancelled request‐access flow for share URL %@", &v10, 0xCu);
  }

  v6 = [CKPrettyError errorWithDomain:CKErrorDomain code:20 format:@"User cancelled request access flow."];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) _cancel];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000AF10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 url];
    *buf = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Share access request for share %@ completed with error: %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B0A0;
  v10[3] = &unk_100028998;
  v8 = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10000B5B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 CKURLThroughSlug];
      v11 = [*(a1 + 32) CKPathAfterSlug];
      v12 = 138544130;
      v13 = v10;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2112;
      v17 = v11;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't open URL %{public}@%{mask.hash}@ using default web browser: %{public}@", &v12, 0x2Au);
    }
  }
}

void sub_10000C168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C184(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v6)
  {
    v40 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:v6 options:1 error:&v40];
    v11 = v40;
    v12 = v40;
    v13 = v12;
    if (v10)
    {
      v29 = v12;
      v30 = v10;
      v31 = v9;
      v32 = v7;
      v33 = v6;
      [v10 objectForKey:@"results"];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v39 = 0u;
      v14 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            v19 = [v18 valueForKey:@"trackId"];
            v20 = [v18 valueForKey:@"trackName"];
            v21 = [v18 valueForKey:@"bundleId"];
            if (v19)
            {
              v45[0] = @"URL";
              v22 = [NSString stringWithFormat:*(a1 + 40), v19];
              v23 = [NSURL URLWithString:v22];
              v45[1] = @"Name";
              v46[0] = v23;
              v46[1] = v20;
              v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
              [*(a1 + 32) setObject:v24 forKeyedSubscript:v21];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
        }

        while (v15);
      }

      v7 = v32;
      v6 = v33;
      v10 = v30;
      v9 = v31;
      v13 = v29;
    }

    else if (v12)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v42 = v7;
        v43 = 2112;
        v44 = v13;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Parse error while parsing App Store repsonse %{public}@, %@", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = v7;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Parse error while parsing App Store repsonse %{public}@", buf, 0xCu);
      }
    }
  }

  else if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v42 = v7;
      v43 = 2112;
      v44 = v9;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Got no data while looking up App Store URL, got response %{public}@, %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v7;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Got no data while looking up App Store URL, got response %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10000E280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10000E2C4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000E5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E5F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  [*(a1 + 32) setCurrentUserNameComponents:v9];
  [*(a1 + 32) setCurrentUserFormattedUsername:v7];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000F80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

id sub_10000F850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) supportedDataclassesForAccountType:v3];
  v5 = [v4 containsObject:@"com.apple.Dataclass.Mail"];

  if (v5)
  {
    v6 = [*(a1 + 32) accountsWithAccountType:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10000F8E0(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [v15 userIdentity];
  v8 = [v7 lookupInfo];
  v9 = [v8 emailAddress];
  if (v9)
  {
    v10 = v9;
    v11 = a1[4];
    v12 = [v15 userIdentity];
    v13 = [v12 lookupInfo];
    v14 = [v13 emailAddress];
    LODWORD(v11) = [v11 containsObject:v14];

    if (v11)
    {
      ++*(*(a1[5] + 8) + 24);
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      if (*(*(a1[5] + 8) + 24) >= 2)
      {
        *a4 = 1;
      }
    }
  }

  else
  {
  }
}

void sub_10000FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000FED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) shareName];
    v6 = [*(a1 + 32) singleOONMatch];
    v7 = [v6 userIdentity];
    v8 = [v7 lookupInfo];
    v9 = [v8 emailAddress];
    v10 = [CKVettingAlerts alertContentForInitiateVettingError:v4 shareTitle:v5 isEmail:v9 != 0 address:*(a1 + 40)];
    +[CKVettingAlerts showFailureAlert:isSourceICS:](CKVettingAlerts, "showFailureAlert:isSourceICS:", v10, [*(a1 + 32) isSourceICS]);
  }

  else
  {
    v5 = [*(a1 + 32) url];
    v4 = [CKPrettyError errorWithDomain:CKErrorDomain code:8000 format:@"Can not accept share at URL %@: vetting of the invited email is needed", v5];
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
  v13 = v4;

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100010BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010C18(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}

id sub_100010D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CKTuple2 alloc];
  if (*(a1 + 32) == 1)
  {
    v8 = [NSString stringWithFormat:@"%@ (%@)", v6, v5];

    v6 = v8;
  }

  v9 = [v7 initWithObject1:v6 object2:v5];

  return v9;
}

void sub_10001259C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1000125E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = kCKShareDaemonPrefix;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if ([v15 hasPrefix:v13])
        {
          v16 = [v15 substringFromIndex:{objc_msgSend(v13, "length")}];
          if ([v16 length])
          {
            [v8 addObject:v16];
          }
        }

        else
        {
          [v7 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [WeakRetained setRegisteredAppBundleIDs:v7];
  [WeakRetained setRegisteredDaemonBundleIDs:v8];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v20;
  v19 = v20;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100013014(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to %{public}@ became invalid", &v4, 0xCu);
  }
}

void sub_1000130EC(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to %{public}@ was interrupted", &v4, 0xCu);
  }
}

void sub_1000131C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to connect to share handler for %{public}@: %@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000132E0(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = v5;
      v9 = [v6 url];
      v10 = [v9 CKURLThroughSlug];
      v11 = [*(a1 + 40) url];
      v12 = [v11 CKPathAfterSlug];
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v20 = 138544386;
      v21 = v7;
      v22 = 2114;
      v23 = v10;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v14 = "Daemon %{public}@ handled share metadata for URL %{public}@%{mask.hash}@, error %@";
      v15 = v8;
      v16 = 52;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, &v20, v16);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v8 = v17;
      v9 = [v18 url];
      v10 = [v9 CKURLThroughSlug];
      v11 = [*(a1 + 40) url];
      v12 = [v11 CKPathAfterSlug];
      v20 = 138544130;
      v21 = v19;
      v22 = 2114;
      v23 = v10;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v12;
      v14 = "Daemon %{public}@ handled share metadata for URL %{public}@%{mask.hash}@";
      v15 = v8;
      v16 = 42;
      goto LABEL_10;
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10001427C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000142A8(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100015590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000155BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v36 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v20 = [WeakRetained retrievingDialog];
    [v20 abort];

    if (!v13)
    {
      v25 = v19;
      objc_sync_enter(v25);
      if ([v25 cancelled])
      {
        v26 = [v25 url];
        v13 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Vetting for %@ cancelled by the user. Email/phone number vetting cancelled.", v26];
      }

      else
      {
        v13 = 0;
      }

LABEL_27:
      objc_sync_exit(v19);

      (*(*(a1 + 32) + 16))();
      if (v13)
      {
      }

      goto LABEL_29;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      v35 = [v19 url];
      v30 = [v35 CKURLThroughSlug];
      v31 = [v19 url];
      v32 = [v31 CKPathAfterSlug];
      *buf = 138544130;
      v38 = v30;
      v39 = 2160;
      v40 = 1752392040;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v13;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Vetting with URL %{public}@%{mask.hash}@ yielded error %@", buf, 0x2Au);
    }

    v22 = [v13 userInfo];
    v23 = [v22 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v13 isCKAuthenticationUserCancelled])
    {
LABEL_26:

      objc_sync_enter(v19);
      goto LABEL_27;
    }

    v24 = [v13 domain];
    if ([v24 isEqualToString:CKErrorDomain])
    {
      if ([v13 code] == 9)
      {

LABEL_24:
        v29 = [CKVettingAlerts alertContentForICloudAccountError:v13 shareMetadata:0 shareURL:v16];
        [CKVettingAlerts showICloudAccountSettingAlert:v29 appName:0 previewRequested:0 isSourceICS:0 maid:0];
        goto LABEL_25;
      }

      v34 = [v13 code] == 115;

      if (v34)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v27 = [v23 domain];
    if ([v27 isEqualToString:CKErrorDomain])
    {
      v28 = [v23 code] == 3;

      if (v28)
      {
        v29 = [CKVettingAlerts alertContentDictionaryForDeviceOfflineErrorWithURLSlug:@"share"];
        [CKVettingAlerts showFailureAlert:v29 isSourceICS:0];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v29 = [CKVettingAlerts alertContentForCompleteVettingError:v13 shareTitle:v36 email:v14 phone:v15 reconstructedShareURL:v16];
    [CKVettingAlerts showFailureAlert:v29 isSourceICS:0];
    goto LABEL_25;
  }

  if (!v13)
  {
    v13 = [CKPrettyError errorWithDomain:CKErrorDomain code:1000 format:@"Vetting handler went nil waiting for vetting to complete"];
  }

  (*(*(a1 + 32) + 16))();

LABEL_29:
}

void sub_100015A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained retrievingDialog];
  [v1 abort];
}

void sub_100015FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015FCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015FE4(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v12 = a1[4];
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Vetting record of ID:%{public}@ fetch failed due to: %@", buf, 0x16u);
    }

    v13 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:8004 error:v10 format:@"Vetting record missing for vetting token: %@", a1[5]];
    goto LABEL_7;
  }

  if (!v8)
  {
    v13 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:8004 format:@"Vetting record missing for vetting token: %@", a1[5]];
LABEL_7:
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_14;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v16 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[5];
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v17;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Fetched vetting record: %{public}@ for vetting token: %{public}@", buf, 0x16u);
  }

  objc_storeStrong((*(a1[7] + 8) + 40), a2);
LABEL_14:
}

void sub_100016238(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 && !*(*(a1[6] + 8) + 40))
  {
    v6 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:8004 error:v5 format:@"Vetting record failed: %@", a1[4]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }
}

void sub_100016480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordContainerKey];
    v10 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordEnvironmentKey];
    v11 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordShareTitleKey];
    v12 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordEmailKey];
    v80 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordPhoneKey];
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v5 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:8003 error:0 format:@"Vetting record doesn't contain container:%@ or environment:%@", v9, v10];
      v14 = *(a1 + 48);
      if (v14)
      {
        (*(v14 + 16))(v14, v5, v11, v12, v80, 0, 0);
      }
    }

    else
    {
      v77 = v12;
      v78 = v11;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v15 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        v18 = [v16 url];
        v19 = [v18 CKURLThroughSlug];
        v20 = [*(a1 + 32) url];
        v21 = [v20 CKPathAfterSlug];
        *buf = 138544130;
        v87 = v19;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v21;
        v92 = 2114;
        v93 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, containerName: %{public}@", buf, 0x2Au);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v22 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v24 = v22;
        v25 = [v23 url];
        v26 = [v25 CKURLThroughSlug];
        v27 = [*(a1 + 32) url];
        v28 = [v27 CKPathAfterSlug];
        *buf = 138544130;
        v87 = v26;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v28;
        v92 = 2114;
        v93 = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, environmentName: %{public}@", buf, 0x2Au);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = v29;
        v32 = [v30 url];
        v33 = [v32 CKURLThroughSlug];
        v34 = [*(a1 + 32) url];
        v35 = [v34 CKPathAfterSlug];
        *buf = 138544130;
        v87 = v33;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v35;
        v92 = 2112;
        v93 = v11;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, shareTitle: %@", buf, 0x2Au);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v36 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 32);
        v38 = v36;
        v39 = [v37 url];
        v40 = [v39 CKURLThroughSlug];
        v41 = [*(a1 + 32) url];
        v42 = [v41 CKPathAfterSlug];
        *buf = 138544130;
        v87 = v40;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v42;
        v92 = 2112;
        v93 = v77;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, email: %@", buf, 0x2Au);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v43 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v44 = *(a1 + 32);
        v45 = v43;
        v46 = [v44 url];
        v47 = [v46 CKURLThroughSlug];
        v48 = [*(a1 + 32) url];
        v49 = [v48 CKPathAfterSlug];
        *buf = 138544130;
        v87 = v47;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v49;
        v92 = 2112;
        v93 = v80;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, phone: %@", buf, 0x2Au);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v50 = ck_log_facility_ck;
      v79 = v9;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v51 = *(a1 + 32);
        v52 = v50;
        v53 = [v51 url];
        v54 = [v53 CKURLThroughSlug];
        v55 = [*(a1 + 32) url];
        v56 = [v55 CKPathAfterSlug];
        v57 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordRoutingKeyKey];
        *buf = 138544130;
        v87 = v54;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v56;
        v92 = 2114;
        v93 = v57;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, routingKey: %{public}@", buf, 0x2Au);

        v9 = v79;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v58 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v59 = *(a1 + 32);
        v60 = v58;
        v61 = [v59 url];
        v62 = [v61 CKURLThroughSlug];
        v63 = [*(a1 + 32) url];
        v64 = [v63 CKPathAfterSlug];
        v65 = [v7 objectForKeyedSubscript:kCKCompleteParticipantVettingVettingRecordBaseTokenKey];
        *buf = 138544130;
        v87 = v62;
        v88 = 2160;
        v89 = 1752392040;
        v90 = 2112;
        v91 = v64;
        v92 = 2114;
        v93 = v65;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Vetting record for: %{public}@%{mask.hash}@, baseToken: %{public}@", buf, 0x2Au);

        v9 = v79;
      }

      v66 = [[CKContainerID alloc] initWithContainerIdentifier:v9 environment:CKContainerEnvironmentFromString()];
      if (__sTestOverridesAvailable == 1 && ([*(a1 + 32) testDevice], v67 = objc_claimAutoreleasedReturnValue(), v67, v67))
      {
        v68 = [*(a1 + 32) testDevice];
        v69 = [v68 containerWithContainerID:v66];
      }

      else
      {
        v69 = [[CKContainer alloc] initWithContainerID:v66];
      }

      v70 = [CKCompleteParticipantVettingOperation alloc];
      v71 = *(a1 + 40);
      v72 = [*(a1 + 32) url];
      v73 = [v72 host];
      v74 = [v70 initWithVettingToken:v71 vettingRecord:v7 displayedHostname:v73];

      v75 = [v74 resolvedConfiguration];
      [v75 setRequestOriginator:2];

      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100016F64;
      v81[3] = &unk_100028D38;
      v85 = *(a1 + 48);
      v11 = v78;
      v82 = v78;
      v12 = v77;
      v83 = v77;
      v84 = v80;
      [v74 setCompleteParticipantVettingCompletionBlock:v81];
      v76 = *(a1 + 56);
      if (v76)
      {
        (*(v76 + 16))();
      }

      [v69 addOperation:v74];

      v5 = 0;
      v9 = v79;
    }
  }
}

uint64_t sub_100016F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a2, a1[4], a1[5], a1[6], a3, a4);
  }

  return result;
}