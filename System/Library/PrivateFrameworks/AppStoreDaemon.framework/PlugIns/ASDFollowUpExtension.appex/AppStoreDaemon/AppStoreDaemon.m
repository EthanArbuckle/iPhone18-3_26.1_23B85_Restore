void sub_100001234(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing followup for identifier: %{public}@", buf, 0xCu);
    }

    if (qword_100008188 != -1)
    {
      dispatch_once(&qword_100008188, &stru_100004190);
    }

    v5 = qword_100008180;
    v14 = v3;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    v9 = 0;
    [v5 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v11 = v3;
        v12 = 2114;
        v13 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error clearing follow up for id: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }
  }
}

intptr_t sub_1000013E0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed request to appstored to auth for accountID: %{public}@ appleID: %{public}@", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000014B0(id a1)
{
  qword_100008180 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.AppleMediaServices"];

  _objc_release_x1();
}