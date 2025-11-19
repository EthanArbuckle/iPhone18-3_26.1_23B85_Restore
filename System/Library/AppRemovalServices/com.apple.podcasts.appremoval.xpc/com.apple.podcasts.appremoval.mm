uint64_t sub_100001564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000157C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_10000164C(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
}

void sub_100001838(uint64_t a1)
{
  if (([*(a1 + 32) hasFetchedInitialAccount] & 1) == 0)
  {
    [*(a1 + 32) _updateActiveAccount];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000018EC;
    block[3] = &unk_10000C468;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_100001C50(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v7, 2u);
  }

  v3 = [*(a1 + 32) _activeAccountBlocking];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = *(a1 + 40);
  if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    dispatch_async(&_dispatch_main_q, &stru_10000C4D0);
  }

  [*(a1 + 32) setActiveAccount:v3];
  [*(a1 + 32) setHasFetchedInitialAccount:1];
}

void sub_100001D3C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountDSIDChangedNotification" object:0];
}

void sub_10000213C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  v4 = [*(a1 + 32) counterForGeneratingLibraryChangeNotifications];
  if (v4 >= 1)
  {
    [WeakRetained _endGeneratingLibraryChangeNotifications];
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100002258;
  v11 = &unk_10000C4F8;
  v13 = *(a1 + 40);
  v5 = v3;
  v12 = v5;
  v6 = [v5 performTransactionWithBlock:&v8];
  if (v4 >= 1)
  {
    [WeakRetained _beginGeneratingLibraryChangeNotifications];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_100002318(uint64_t a1)
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  (*(*(a1 + 32) + 16))();
}

id sub_1000026EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _beginGeneratingLibraryChangeNotifications];
}

uint64_t sub_1000027E8(uint64_t a1)
{
  if ([*(a1 + 32) counterForGeneratingLibraryChangeNotifications] >= 1)
  {
    [*(a1 + 32) _endGeneratingLibraryChangeNotifications];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100002E34(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 buf)
{
  if (a2)
  {
    _Block_object_dispose(&buf, 8);
    if (a2 == 2)
    {
      v24 = objc_begin_catch(a1);
      v25 = _MTLogCategoryAppRemoval();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "App Removal failed with exception: %{public}@", &buf, 0xCu);
      }

      v26 = [v24 userInfo];
      v27 = [NSMutableDictionary dictionaryWithDictionary:v26];

      v28 = [v24 reason];
      [v27 setObject:v28 forKeyedSubscript:@"exception-reason"];

      [NSError errorWithDomain:@"com.apple.podcasts.appremoval" code:1 userInfo:v27];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x100002D94);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100002FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002FF0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

id sub_100003050()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100012500;
  v7 = qword_100012500;
  if (!qword_100012500)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003A34;
    v3[3] = &unk_10000C600;
    v3[4] = &v4;
    sub_100003A34(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100003118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100003228(id a1, MPMediaLibrary *a2)
{
  v2 = a2;
  v3 = +[MPMediaQuery mt_allItemsForPodcastsApp];
  [(MPMediaLibrary *)v2 deleteItems:v3];

  return 1;
}

void sub_10000327C(uint64_t a1, int a2)
{
  v4 = _MTLogCategoryAppRemoval();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All podcast media removed.", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to remove all podcast media.", v8, 2u);
    }

    v6 = [NSError errorWithDomain:@"com.apple.podcasts.appremoval" code:3 userInfo:0];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

Class sub_100003A34(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100012508)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100003B78;
    v4[4] = &unk_10000C638;
    v4[5] = v4;
    v5 = off_10000C620;
    v6 = 0;
    qword_100012508 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100012508)
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
  result = objc_getClass("NMSyncDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000652C();
  }

  qword_100012500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100012508 = result;
  return result;
}

id sub_100004144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

id sub_100004398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

void sub_1000044AC(id a1)
{
  v3[0] = @"playPodcast";
  v3[1] = @"playPodcasts";
  v3[2] = @"playStation";
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_100012510;
  qword_100012510 = v1;
}

void sub_100005000(id a1)
{
  v3[0] = @"playPodcasts";
  v3[1] = @"playPodcast";
  v4[0] = &off_10000CBD0;
  v4[1] = &off_10000CBE8;
  v3[2] = @"playStation";
  v4[2] = &off_10000CC00;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100012528;
  qword_100012528 = v1;
}

void sub_10000635C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000637C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006394(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setIgnoreSystemFilterPredicates:1];
    v3 = v8;
  }

  v4 = [v3 items];
  if ([v4 count])
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObjectsFromArray:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}