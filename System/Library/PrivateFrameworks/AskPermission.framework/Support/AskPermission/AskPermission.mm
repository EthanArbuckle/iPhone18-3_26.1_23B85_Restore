uint64_t sub_100002104()
{
  _Block_release(*(v0 + 112));
  _Block_release(*(v0 + 120));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000021A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000021E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002218()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002260()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000022C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002300()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t start()
{
  v0 = objc_alloc_init(DaemonRunLoop);
  [(RunLoop *)v0 runUntilIdleExit];

  return 0;
}

BOOL sub_10000247C(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 request];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle approver local notification task. Request: %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) request];
  v15 = 0;
  [ProductPagePresenter presentRequest:v11 withError:&v15];
  v12 = v15;

  if (a2)
  {
    v13 = v12;
    *a2 = v12;
  }

  return v12 == 0;
}

BOOL sub_1000028DC(uint64_t a1, void *a2)
{
  v4 = &APCustomError_ptr;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 payload];
    *buf = 138543618;
    v92 = v8;
    v93 = 2114;
    v94 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle approver remote notification task. Payload: %{public}@", buf, 0x16u);
  }

  [APDefaults setIsApprover:1];
  [APDefaults setIsRequester:0];
  v12 = [*(a1 + 32) requestStatus];
  v13 = [*(a1 + 32) requestIdentifier];
  v14 = v13;
  if (v12 == -2 || !v13)
  {
    v23 = APError();
    goto LABEL_46;
  }

  if (v12 <= 1)
  {
    v15 = +[LocalNotificationHandler sharedHandler];
    v16 = [*(a1 + 32) requestIdentifier];
    [v15 dismissNotificationWithIdentifier:v16];

    if (_os_feature_enabled_impl())
    {
      v17 = *(a1 + 32);
      v89 = 0;
      v18 = [v17 _approvalRequestWithError:&v89];
      v19 = v89;
      v20 = +[ApproverStore sharedStore];
      [v20 storeApprovalRequest:v18];

      v21 = +[NSMutableArray array];
      v22 = v21;
      v73 = a2;
      if (v18)
      {
        [v21 addObject:v18];
      }

      else
      {
        v33 = +[APLogConfig sharedDaemonConfig];
        if (!v33)
        {
          v33 = +[APLogConfig sharedConfig];
        }

        v34 = [v33 OSLogObject];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 32);
          v36 = objc_opt_class();
          *buf = 138543618;
          v92 = v36;
          v93 = 2112;
          v94 = v19;
          v37 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@: Unable to create Request to translate to Biome - Error: %@", buf, 0x16u);
        }
      }

      v38 = +[ApproverStore sharedStore];
      v39 = [v18 uniqueIdentifier];
      v40 = [v38 approvalRequestsMatchingUniqueIdentifier:v39];

      v41 = +[APLogConfig sharedDaemonConfig];
      if (!v41)
      {
        v41 = +[APLogConfig sharedConfig];
      }

      v71 = v19;
      v72 = v14;
      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 32);
        v44 = objc_opt_class();
        v45 = v22;
        v46 = v44;
        v47 = [v40 count];
        *buf = 138543618;
        v92 = v44;
        v93 = 2048;
        v94 = v47;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Matching requests found: %lu", buf, 0x16u);

        v22 = v45;
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v40;
      v77 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v77)
      {
        v48 = *v86;
        v74 = v18;
        v75 = v22;
        do
        {
          for (i = 0; i != v77; i = i + 1)
          {
            if (*v86 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v85 + 1) + 8 * i);
            v51 = [v4[256] sharedDaemonConfig];
            if (!v51)
            {
              v51 = [v4[256] sharedConfig];
            }

            v52 = [v51 OSLogObject];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = *(a1 + 32);
              v54 = objc_opt_class();
              v55 = a1;
              v56 = v54;
              [v50 uniqueIdentifier];
              v57 = v48;
              v59 = v58 = v4;
              *buf = 138543618;
              v92 = v54;
              v93 = 2114;
              v94 = v59;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating request: %{public}@", buf, 0x16u);

              v4 = v58;
              v48 = v57;

              a1 = v55;
              v18 = v74;
              v22 = v75;
            }

            v60 = [v18 status];
            v61 = [v18 approverDSID];
            [v50 updateStatus:v60 withApproverDSID:v61];

            v62 = +[ApproverStore sharedStore];
            [v62 storeApprovalRequest:v50];

            [v22 addObject:v50];
          }

          v77 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
        }

        while (v77);
      }

      v63 = objc_alloc_init(NSOperationQueue);
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100003160;
      v83[3] = &unk_100054C30;
      v84 = v22;
      v64 = v22;
      [v63 addOperationWithBlock:v83];

      v14 = v72;
      a2 = v73;
      v23 = v71;
      goto LABEL_46;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_46;
  }

  if (v12 != -1)
  {
    goto LABEL_13;
  }

  v24 = _os_feature_enabled_impl();
  v25 = *(a1 + 32);
  if (v24)
  {
    v82 = 0;
    v26 = [v25 _approvalRequestWithError:&v82];
    v23 = v82;
    if (v26)
    {
      v27 = +[ApproverStore sharedStore];
      [v27 storeApprovalRequest:v26];

      [BiomeHelper donateToBiomeWithRequest:v26];
      v28 = [*(a1 + 32) bag];
      v29 = [v28 BOOLForKey:@"enable-ks-via-messages"];

      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_1000031BC;
      v79[3] = &unk_100054C58;
      v30 = v26;
      v31 = *(a1 + 32);
      v80 = v30;
      v81 = v31;
      [v29 valueWithCompletion:v79];
      v32 = v80;
    }

    else
    {
      v29 = +[APLogConfig sharedDaemonConfig];
      if (!v29)
      {
        v29 = +[APLogConfig sharedConfig];
      }

      v32 = [v29 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v66 = *(a1 + 32);
        v67 = objc_opt_class();
        *buf = 138543618;
        v92 = v67;
        v93 = 2112;
        v94 = v23;
        v68 = v67;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: Create Request for Cache failed - Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v78 = 0;
    v65 = [v25 _requestWithError:&v78];
    v23 = v78;
    if (v65)
    {
      [*(a1 + 32) _presentRequest:v65];
    }
  }

LABEL_46:
  if (a2)
  {
    v69 = v23;
    *a2 = v23;
  }

  return v23 == 0;
}

void sub_100003160(uint64_t a1)
{
  v1 = [NSArray arrayWithArray:*(a1 + 32)];
  [BiomeHelper donateToBiomeWithRequests:v1];
}

id sub_1000031BC(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  result = [*(a1 + 32) canSendViaMessages];
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v6 _presentRequest:v7];
  }

  return result;
}

void sub_1000048FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v23 = objc_opt_class();
      v11 = v23;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking existing Screen Time Exceptions...", buf, 0xCu);
    }

    v12 = [v5 ams_DSID];
    v13 = [*(a1 + 32) adamID];
    v14 = [v13 unsignedLongLongValue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100004BA0;
    v19[3] = &unk_100054CF8;
    v19[4] = *(a1 + 32);
    v20 = v5;
    v21 = *(a1 + 40);
    [STExceptionApp fetchExceptionsForRequesterDSID:v12 adamID:v14 completionHandler:v19];
  }

  else
  {
    v15 = +[APLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[APLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v6;
      v18 = v23;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching account before asking for exception - %@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }
}

void sub_100004BA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = &APCustomError_ptr;
  if (v6)
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v80 = objc_opt_class();
      v81 = 2112;
      v82 = v6;
      v11 = v80;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error checking for existing exceptions: Will continue sending exception if possible - %@", buf, 0x16u);
    }
  }

  v12 = +[APLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[APLogConfig sharedConfig];
  }

  v65 = v6;
  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [v5 count];
    *buf = 138543618;
    v80 = v15;
    v81 = 2048;
    v82 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %lu existing Screen Time Exceptions", buf, 0x16u);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v18 = v5;
  v68 = [v18 countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v68)
  {
    v67 = *v74;
    obj = v18;
    while (2)
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v74 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v73 + 1) + 8 * i);
        v21 = [v7[256] sharedDaemonConfig];
        if (!v21)
        {
          v21 = [v7[256] sharedConfig];
        }

        v22 = v7;
        v23 = [v21 OSLogObject];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v25 = a1;
          v26 = objc_opt_class();
          v27 = v26;
          v28 = [v20 ratingValue];
          v29 = [*(v25 + 32) ageRatingValue];
          v30 = [v29 unsignedLongValue];
          *buf = 138543874;
          v80 = v26;
          a1 = v25;
          v81 = 2048;
          v82 = v28;
          v83 = 2048;
          v84 = v30;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking STException.ratingValue: %llu vs requested: %lu", buf, 0x20u);
        }

        v31 = [*(a1 + 32) bundleIdentifier];
        v32 = [v20 bundleIdentifier];
        if ([v31 isEqualToString:v32])
        {
          v33 = [*(a1 + 32) ageRatingValue];
          v34 = [v33 unsignedLongValue];
          v35 = [v20 ratingValue];

          if (v34 == v35)
          {
            v45 = v22;
            v46 = [v22[256] sharedDaemonConfig];
            v47 = v46;
            if (!v46)
            {
              v47 = [v22[256] sharedConfig];
            }

            v48 = [v47 OSLogObject];
            v38 = v65;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(a1 + 32);
              v50 = objc_opt_class();
              v51 = *(a1 + 40);
              v69 = v50;
              v52 = [v51 ams_DSID];
              v53 = [*(a1 + 32) adamID];
              v54 = [v53 longLongValue];
              v55 = [*(a1 + 32) ageRatingValue];
              v56 = [v55 longValue];
              *buf = 138544130;
              v80 = v50;
              v81 = 2112;
              v82 = v52;
              v83 = 2048;
              v84 = v54;
              v85 = 2048;
              v86 = v56;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception already exists for DSID: %@, adamID: %lld, ageRatingValue: %ld", buf, 0x2Au);

              v45 = v22;
              v38 = v65;
            }

            v57 = [v45[256] sharedDaemonConfig];
            v18 = obj;
            if (!v57)
            {
              v57 = [v45[256] sharedConfig];
            }

            v58 = [v57 OSLogObject];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *(a1 + 32);
              v60 = objc_opt_class();
              *buf = 138543362;
              v80 = v60;
              v61 = v60;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request will not be sent", buf, 0xCu);
            }

            v62 = APErrorDomain;
            v77 = NSLocalizedFailureReasonErrorKey;
            v78 = @"Exception already exists in Screen Time";
            v63 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v64 = [NSError errorWithDomain:v62 code:8 userInfo:v63];

            [*(a1 + 48) finishWithError:v64];
            goto LABEL_40;
          }
        }

        else
        {
        }

        v7 = v22;
      }

      v18 = obj;
      v68 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
      if (v68)
      {
        continue;
      }

      break;
    }
  }

  v36 = [v7[256] sharedDaemonConfig];
  if (!v36)
  {
    v36 = [v7[256] sharedConfig];
  }

  v37 = [v36 OSLogObject];
  v38 = v65;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(a1 + 32);
    v40 = objc_opt_class();
    *buf = 138543362;
    v80 = v40;
    v41 = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading bag to fetch Fallback URL", buf, 0xCu);
  }

  v42 = +[AMSBag sharedBag];
  v43 = [v42 exceptionRequestFallbackURL];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000052F8;
  v70[3] = &unk_100054CD0;
  v44 = *(a1 + 40);
  v70[4] = *(a1 + 32);
  v71 = v44;
  v72 = *(a1 + 48);
  [v43 valueWithCompletion:v70];

LABEL_40:
}

void sub_1000052F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v6 = a4;
  if (v6)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v36 = objc_opt_class();
      v37 = 2112;
      v38 = v6;
      v10 = v36;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error loading Fallback URL - %@", buf, 0x16u);
    }
  }

  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    *buf = 138543362;
    v36 = v14;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling into AskTo Wrapper...", buf, 0xCu);
  }

  v28 = +[_TtC19AskPermissionDaemon12AskToWrapper shared];
  v24 = [*(a1 + 32) UUID];
  v16 = [*(a1 + 32) type];
  v17 = [*(a1 + 32) title];
  v27 = [*(a1 + 32) message];
  v26 = [*(a1 + 32) bundleIdentifier];
  v25 = [*(a1 + 32) preApprove];
  v18 = [*(a1 + 32) postApprove];
  v19 = [*(a1 + 32) preDecline];
  v20 = [*(a1 + 32) postDecline];
  v21 = [*(a1 + 32) responseBundleIdentifier];
  v22 = [*(a1 + 32) metadata];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000056C4;
  v32[3] = &unk_100054C80;
  v23 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v23;
  v34 = *(a1 + 48);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100005B48;
  v30[3] = &unk_100054CA8;
  v30[4] = *(a1 + 32);
  v31 = *(a1 + 48);
  [v28 askWithUuid:v24 type:v16 title:v17 message:v27 bundleIdentifier:v26 preApprove:v25 postApprove:v18 preDecline:v19 postDecline:v20 responseBundleIdentifier:v21 metadata:v22 fallbackURL:v29 delegateCallback:v32 completionHandler:v30];
}

void sub_1000056C4(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v36 = v5;
    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v40 = objc_opt_class();
      v9 = v40;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request sent to Approvers - Storing request locally", buf, 0xCu);
    }

    v33 = [ExceptionRequest alloc];
    v35 = [a1[4] UUID];
    v28 = [v35 UUIDString];
    v30 = [a1[4] bundleIdentifier];
    v10 = [a1[4] adamID];
    v32 = [a1[4] distributorID];
    v31 = [a1[4] ageRatingValue];
    v29 = [a1[5] ams_DSID];
    v27 = [a1[4] title];
    v26 = [a1[4] message];
    v25 = [a1[4] preApprove];
    v11 = [a1[4] postApprove];
    v12 = [a1[4] preDecline];
    v13 = [a1[4] postDecline];
    v14 = [a1[4] metadata];
    v34 = [(ExceptionRequest *)v33 initWithUniqueIdentifier:v28 bundleIdentifier:v30 adamID:v10 distributorID:v32 ageRatingValue:v31 requesterDSID:v29 approvalStatus:0 title:v27 message:v26 preApproveTitle:v25 postApproveTitle:v11 preDeclineTitle:v12 postDeclineTitle:v13 metadata:v14];

    v15 = +[ExceptionRequestStore sharedStore];
    [v15 storeRequest:v34];

    v5 = v36;
    [a1[6] finishWithSuccess:1 error:v36];
  }

  else
  {
    v16 = +[APLogConfig sharedDaemonConfig];
    v17 = v16;
    if (v5)
    {
      if (!v16)
      {
        v17 = +[APLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[4];
        *buf = 138543618;
        v40 = objc_opt_class();
        v41 = 2112;
        v42 = v5;
        v20 = v40;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error asking for exception - %@", buf, 0x16u);
      }
    }

    else
    {
      if (!v16)
      {
        v17 = +[APLogConfig sharedConfig];
      }

      v21 = [v17 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[4];
        *buf = 138543362;
        v40 = objc_opt_class();
        v23 = v40;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request Cancelled", buf, 0xCu);
      }

      v24 = APErrorDomain;
      v37 = NSLocalizedFailureReasonErrorKey;
      v38 = @"User Cancelled";
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v5 = [NSError errorWithDomain:v24 code:6 userInfo:v17];
    }

    [a1[6] finishWithSuccess:0 error:v5];
  }
}

void sub_100005B48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v5;
      v9 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Error asking for exception - %@", &v10, 0x16u);
    }

    [*(a1 + 40) finishWithSuccess:a2 error:v5];
  }
}

void sub_1000060C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000060DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006224(id a1)
{
  qword_100063C98 = [[ApproverStore alloc] initWithInMemoryStore:1];

  _objc_release_x1();
}

void sub_1000062AC(id a1)
{
  qword_100063CA8 = objc_alloc_init(ApproverStore);

  _objc_release_x1();
}

void sub_10000643C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = [*(a1 + 32) requestStore];
  [v2 clearCache];
}

id sub_1000066AC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveChanges];
}

id sub_100007410(uint64_t a1)
{
  v2 = [ApproverStoreItem alloc];
  v3 = *(a1 + 40);
  v4 = +[NSDate date];
  v5 = [(ApproverStoreItem *)v2 initWithRequest:v3 date:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = [*(a1 + 40) uniqueIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = *(a1 + 32);

  return [v8 _saveChanges];
}

void sub_10000A5C8(id a1)
{
  qword_100063CB8 = dispatch_queue_create("com.apple.AskPermission.BiometricsHandler", 0);

  _objc_release_x1();
}

id sub_10000AC88(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) setState:a2];
  if (a2 == 2)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 _storeToken:v6];
  }

  return result;
}

uint64_t sub_10000B010(uint64_t a1, uint64_t a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (a2)
  {
    if (a2 == 1)
    {
      if (!v4)
      {
        v5 = +[APLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v15 = 138543362;
        v16 = objc_opt_class();
        v8 = v16;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog approved", &v15, 0xCu);
      }

      v9 = 2;
    }

    else
    {
      if (!v4)
      {
        v5 = +[APLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v15 = 138543362;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog cancelled", &v15, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v15 = 138543362;
      v16 = objc_opt_class();
      v11 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog declined", &v15, 0xCu);
    }

    v9 = 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v9);
}

void sub_10000B624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = 0;
  v3 = [BiometricsStore retreiveTokenWithAction:v1 error:&v5];
  v4 = v5;
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10000B894(id a1)
{
  qword_100063CC8 = objc_alloc_init(ConnectionReceiver);

  _objc_release_x1();
}

void sub_10000BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BCB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: Connection invalidated", &v5, 0xCu);
  }
}

void sub_10000BDAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: Connection interrupted", &v5, 0xCu);
  }
}

void sub_10000C07C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543362;
      v19 = objc_opt_class();
      v10 = v19;
      v11 = "%{public}@: Posted request successfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v18, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v5;
      v10 = v19;
      v11 = "%{public}@: Error posting request. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  v16 = *(a1 + 40);
  v17 = [v5 ams_sanitizedForSecureCoding];
  (*(v16 + 16))(v16, v17);
}

void sub_10000C428(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543362;
      v17 = objc_opt_class();
      v10 = v17;
      v11 = "%{public}@: Reset approver account succesfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v10 = v17;
      v11 = "%{public}@: Error resetting approver account. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10000C5B4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543362;
      v17 = objc_opt_class();
      v10 = v17;
      v11 = "%{public}@: Reset requester account successfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v10 = v17;
      v11 = "%{public}@: Error resetting requester account. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10000CB90(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [v12 type];
    v7 = off_1000547B0;
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = &off_1000547C8;
      }

      else if (!+[APDefaults isApprover])
      {
        v7 = &off_1000547C8;
      }
    }
  }

  else if (+[APDefaults isApprover])
  {
    v7 = off_1000547B0;
  }

  else
  {
    v7 = &off_1000547C8;
  }

  v8 = [(__objc2_class *)*v7 sharedStore];
  v9 = [v8 getCachedApprovalRequests];

  v10 = [v9 sortedArrayUsingComparator:&stru_100054FB8];
  v11 = [v10 ams_mapWithTransformIgnoresNil:&stru_100054FF8];

  (*(*(a1 + 32) + 16))();
}

int64_t sub_10000CCD0(id a1, ApprovalRequest *a2, ApprovalRequest *a3)
{
  v4 = a3;
  v5 = [(ApprovalRequest *)a2 createdDate];
  v6 = [(ApprovalRequest *)v4 createdDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000CF00(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [v12 type];
    v7 = off_1000547B0;
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = &off_1000547C8;
      }

      else if (!+[APDefaults isApprover])
      {
        v7 = &off_1000547C8;
      }
    }
  }

  else if (+[APDefaults isApprover])
  {
    v7 = off_1000547B0;
  }

  else
  {
    v7 = &off_1000547C8;
  }

  v8 = [(__objc2_class *)*v7 sharedStore];
  v9 = [v8 requestWithItemIdentifier:*(a1 + 32)];

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v9 compile];
    (*(v10 + 16))(v10, v11, v5);
  }
}

void sub_10000D1D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543362;
      v19 = objc_opt_class();
      v10 = v19;
      v11 = "%{public}@: Local approve request success";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v18, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v5;
      v10 = v19;
      v11 = "%{public}@: Local approve request error. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  v16 = *(a1 + 40);
  v17 = [v5 ams_sanitizedForSecureCoding];
  (*(v16 + 16))(v16, v17);
}

void sub_10000D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D76C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [v7 request];

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v9 request];
      v24 = 0;
      [ProductPagePresenter presentRequest:v10 withError:&v24];
      v11 = v24;

      if (!v11)
      {
LABEL_16:

        goto LABEL_17;
      }

      v12 = +[APLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[APLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        *buf = 138543618;
        v28 = v15;
        v29 = 2114;
        v30 = v11;
        v16 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting approval sheet. Error: %{public}@", buf, 0x16u);
      }

LABEL_15:
      v22 = *(a1 + 48);
      v23 = [v11 ams_sanitizedForSecureCoding];
      (*(v22 + 16))(v22, v23);

      goto LABEL_16;
    }
  }

  if (v5)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v5;
      v20 = v28;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching missing request. Error: %{public}@", buf, 0x16u);
    }

    v21 = *(a1 + 40);
    v25 = @"requestIdentifier";
    v26 = v21;
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v11 = APCustomError();
    goto LABEL_15;
  }

LABEL_17:
}

void sub_10000DC60(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543362;
      v19 = objc_opt_class();
      v10 = v19;
      v11 = "%{public}@: Updated request successfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v18, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v5;
      v10 = v19;
      v11 = "%{public}@: Error updating request. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  v16 = *(a1 + 40);
  v17 = [v5 ams_sanitizedForSecureCoding];
  (*(v16 + 16))(v16, v17);
}

uint64_t sub_10000E0EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000E290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v11 = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v19, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v19, 0x16u);
    }

    v17 = [v5 ams_mapWithTransformIgnoresNil:&stru_1000550D8];
    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }
  }
}

void sub_10000E714(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v11 = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v19, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v19, 0x16u);
    }

    v17 = [v5 ams_mapWithTransformIgnoresNil:&stru_100055120];
    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }
  }
}

void sub_10000EAE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v11 = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v19, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v19, 0x16u);
    }

    v17 = [v5 ams_mapWithTransformIgnoresNil:&stru_100055140];
    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }
  }
}

void sub_10000F054(uint64_t a1, int a2)
{
  if (a2)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000F2DC;
    v19[3] = &unk_100055168;
    v3 = *(a1 + 32);
    v19[4] = *(a1 + 40);
    [_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager updateAskToBubblesWithUniqueIdentifier:v3 completionHandler:v19];
    v4 = [STExceptionApp alloc];
    v5 = [*(a1 + 48) requesterDSID];
    v6 = [*(a1 + 48) bundleIdentifier];
    v7 = [*(a1 + 48) adamID];
    v8 = [v7 unsignedLongLongValue];
    v9 = [*(a1 + 48) distributorID];
    v10 = [*(a1 + 48) ageRatingValue];
    v11 = [v4 initWithRequesterDSID:v5 bundleIdentifier:v6 adamID:v8 distributorID:v9 ratingValue:{objc_msgSend(v10, "unsignedLongLongValue")}];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000F45C;
    v15[3] = &unk_100055190;
    v12 = *(a1 + 48);
    v15[4] = *(a1 + 40);
    v16 = v12;
    v17 = *(a1 + 56);
    v18 = 1;
    [v11 addExceptionWithCompletionHandler:v15];
  }

  else
  {
    if (!*(a1 + 56))
    {
      return;
    }

    v13 = APErrorDomain;
    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"User cancelled Screen Time PIN";
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = [NSError errorWithDomain:v13 code:5 userInfo:v14];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000F2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v8 = v15;
      v9 = "%{public}@: Error updating message bubbles. Error: %{public}@";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = 138543362;
      v15 = objc_opt_class();
      v8 = v15;
      v9 = "%{public}@: Successfully updated message bubbles!";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }
}

void sub_10000F45C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v36 = objc_opt_class();
      v37 = 2114;
      v38 = v3;
      v8 = v36;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error creating ScreenTime Exception. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v9 = [v5 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v36 = objc_opt_class();
      v11 = v36;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", buf, 0xCu);
    }

    v12 = +[ExceptionRequestStore sharedStore];
    v13 = [*(a1 + 40) bundleIdentifier];
    v14 = [*(a1 + 40) adamID];
    v15 = [*(a1 + 40) ageRatingValue];
    v16 = [v12 getExceptionRequestsWithBundleID:v13 adamID:v14 ratingValue:v15];

    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v16 count];
      *buf = 138543618;
      v36 = v20;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating %lu matching Requests...", buf, 0x16u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v16;
    v23 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v6);
          }

          v27 = *(*(&v30 + 1) + 8 * i);
          [v27 setApprovalStatus:{1, v30}];
          v28 = +[ExceptionRequestStore sharedStore];
          [v28 storeRequest:v27];
        }

        v24 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }

    v5 = v6;
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    (*(v29 + 16))(v29, *(a1 + 56), v3);
  }
}

void sub_100010058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v37 = objc_opt_class();
      v38 = 2114;
      v39 = v3;
      v8 = v37;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error creating ScreenTime Exception. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v9 = [v5 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v37 = objc_opt_class();
      v11 = v37;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", buf, 0xCu);
    }

    [*(a1 + 40) setApprovalStatus:*(a1 + 56)];
    v12 = +[ExceptionRequestStore sharedStore];
    [v12 storeRequest:*(a1 + 40)];

    v13 = +[ExceptionRequestStore sharedStore];
    v14 = [*(a1 + 40) bundleIdentifier];
    v15 = [*(a1 + 40) adamID];
    v16 = [*(a1 + 40) ageRatingValue];
    v17 = [v13 getExceptionRequestsWithBundleID:v14 adamID:v15 ratingValue:v16];

    v18 = +[APLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [v17 count];
      *buf = 138543618;
      v37 = v21;
      v38 = 2048;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating %lu matching Requests...", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v17;
    v24 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v6);
          }

          v28 = *(*(&v31 + 1) + 8 * i);
          [v28 setApprovalStatus:{1, v31}];
          v29 = +[ExceptionRequestStore sharedStore];
          [v29 storeRequest:v28];
        }

        v25 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v25);
    }

    v5 = v6;
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, v3);
  }
}

void sub_100010684(uint64_t a1)
{
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = [v6 uniqueIdentifier];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: No matching Screen Time Requset found for uniqueID: %@", &v9, 0x16u);
  }
}

void sub_100012148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] <<< Received a Darwin notification >>>. notification = %{public}@", &v11, 0x20u);
  }

  if (([string isEqualToString:@"AppleLanguagePreferencesChangedNotification"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.language.changed"))
  {
    [*(a1 + 32) _handleDeviceLanguageChangeNotification];
  }
}

uint64_t sub_100012554(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting daemon startup task", &v12, 0xCu);
  }

  v8 = +[ConnectionReceiver sharedReceiver];
  [v8 start];

  v9 = +[LocalNotificationHandler sharedHandler];
  [v9 start];

  v10 = +[RemoteNotificationHandler sharedHandler];
  [v10 start];

  +[_TtC19AskPermissionDaemon17AskToListenerObjc registerForResponses];
  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t sub_100012880(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 selectedActionIdentifier];
    [v4 integerValue];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100012AF8(uint64_t a1, uint64_t a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (a2 == -1)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Error presenting request";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Presented request succesfully";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, 0xCu);
    }
  }
}

void sub_100012E14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v5;
    v10 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received dialog result. Result: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6);
}

void sub_100012F94(id a1)
{
  qword_100063CD8 = objc_alloc_init(ExtensionManager);

  _objc_release_x1();
}

id sub_100013284(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"APExtensionDownloadContentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInteger:*(a1 + 32)];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

id sub_1000133E4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"APExtensionSupportedProductTypes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) productType];
  v6 = [v4 containsObject:v5];

  return v6;
}

uint64_t sub_100013748(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 infoDictionary];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id sub_100013798(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100013A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_100013A74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Extension completed. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100013B94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Extension cancelled. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100013CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Extension interrupted. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100014164(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *v20 = 138543618;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2114;
    *&v20[14] = a2;
    v9 = *&v20[4];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Got a FamilyCircle: %{public}@", v20, 0x16u);
  }

  if (a2)
  {
    v10 = [*(a1 + 32) DSID];
    if (v10)
    {
      v11 = [*(a1 + 32) DSID];
      v12 = [a2 memberForDSID:v11];
    }

    else
    {
      v12 = [a2 me];
    }

    v18 = [*(a1 + 32) _familyMemberType:v12];
    v19 = objc_alloc_init(FamilyMember);
    [(FamilyMember *)v19 setType:v18];
    [*(a1 + 40) finishWithResult:v19];
  }

  else
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      *v20 = 138543618;
      *&v20[4] = v16;
      *&v20[12] = 2114;
      *&v20[14] = v5;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Error: %{public}@", v20, 0x16u);
    }

    [*(a1 + 40) finishWithError:v5];
  }
}

BOOL sub_100014884(uint64_t a1, ApprovalRequest **a2)
{
  v4 = +[AMSBag sharedBag];
  v5 = [v4 retrieveRequestURL];

  v47 = @"requestId";
  v6 = [*(a1 + 32) identifier];
  v48 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  v8 = objc_alloc_init(URLRequestEncoder);
  v9 = [(URLRequestEncoder *)v8 requestWithMethod:4 bagURL:v5 parameters:v7];
  v44 = 0;
  v10 = [v9 resultWithTimeout:&v44 error:60.0];
  v11 = v44;
  if (v10)
  {
    v41 = a2;
    v42 = v5;
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      *buf = 138543362;
      v46 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
    }

    v17 = +[URLSession sharedSession];
    v18 = [v17 dataTaskPromiseWithRequest:v10];

    v43 = v11;
    v19 = [v18 resultWithTimeout:&v43 error:60.0];
    v20 = v43;

    if (v19)
    {
      v21 = +[APLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[APLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = objc_opt_class();
        *buf = 138543362;
        v46 = v24;
        v39 = v19;
        v25 = a1;
        v26 = v9;
        v27 = v8;
        v28 = v7;
        v29 = v18;
        v30 = v20;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);

        v20 = v30;
        v18 = v29;
        v7 = v28;
        v8 = v27;
        v9 = v26;
        a1 = v25;
        v19 = v39;
      }

      v32 = [v19 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      if (v33 && (v34 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v33]) != 0)
      {
        v35 = v34;
        v40 = v20;
        [*(a1 + 32) setRequest:v34];
        if (+[APDefaults isRequester])
        {
          v36 = +[RequesterStore sharedStore];
          [v36 storeRequest:v35];
        }

        else
        {
          v36 = +[ApproverStore sharedStore];
          [v36 storeApprovalRequest:v35];
        }

        v20 = v40;
      }

      else
      {
        APError();
        v20 = v35 = v20;
      }
    }

    v5 = v42;

    v11 = v20;
    a2 = v41;
  }

  if (v11)
  {
    v37 = v11;
    *a2 = v11;
  }

  return v11 == 0;
}

BOOL sub_100014E68(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 itemIdentifier];
    *buf = 138543618;
    v41 = v7;
    v42 = 2114;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting local approve request task. Item identifier: %{public}@", buf, 0x16u);
  }

  v11 = +[RequesterStore sharedStore];
  v12 = [*(a1 + 32) itemIdentifier];
  v13 = [v11 requestIdentifierWithItemIdentifier:v12];

  if (!v13)
  {
    v16 = APError();
    if (!a2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v14 = +[UserProvider localApprovalUser];
  v39 = 0;
  v15 = [v14 resultWithError:&v39];
  v16 = v39;
  if (v15)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      *buf = 138543362;
      v41 = v20;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved local approval user", buf, 0xCu);
    }

    v22 = *(a1 + 32);
    v38 = v16;
    v23 = [v22 _serverRequestWithUser:v15 requestIdentifier:v13 error:&v38];
    v24 = v38;

    if (v23)
    {
      v25 = +[APLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[APLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        v28 = objc_opt_class();
        *buf = 138543362;
        v41 = v28;
        v29 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }

      v30 = [*(a1 + 32) _parseResult:v23];

      v24 = v30;
      if (!v30)
      {
        v31 = +[APLogConfig sharedDaemonConfig];
        if (!v31)
        {
          v31 = +[APLogConfig sharedConfig];
        }

        v32 = [v31 OSLogObject];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          v34 = objc_opt_class();
          *buf = 138543362;
          v41 = v34;
          v35 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Local approve success", buf, 0xCu);
        }

        v24 = 0;
      }
    }

    v16 = v24;
  }

  if (a2)
  {
LABEL_24:
    v36 = v16;
    *a2 = v16;
  }

LABEL_25:

  return v16 == 0;
}

void sub_100015B10(id a1)
{
  qword_100063CE8 = objc_alloc_init(LocalNotificationHandler);

  _objc_release_x1();
}

void sub_100016838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001685C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "%{public}@: Handled approver local notification succesfully.";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v17, v14);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v10 = v18;
      v11 = "%{public}@: Failed to handle approver local notification. Error: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15, v16);
}

void sub_100016B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016B3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "%{public}@: Handled requester local notification succesfully.";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v17, v14);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v10 = v18;
      v11 = "%{public}@: Failed to handle requester local notification. Error: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15, v16);
}

void sub_100016F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 requestIdentifier];
      v12 = *(a1 + 48);
      v20 = 138544130;
      v21 = v8;
      v22 = 2114;
      v23 = v11;
      v24 = 1026;
      v25 = v12;
      v26 = 2114;
      v27 = v3;
      v13 = "%{public}@: Could not present notification. Identifier: %{public}@, silently: %{public}d, error:%{public}@";
      v14 = v7;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 38;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v20, v16);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 32);
      v10 = v17;
      v11 = [v18 requestIdentifier];
      v19 = *(a1 + 48);
      v20 = 138543874;
      v21 = v17;
      v22 = 2114;
      v23 = v11;
      v24 = 1026;
      v25 = v19;
      v13 = "%{public}@: Presented notification successfully. Identifier: %{public}@, silently: %{public}d";
      v14 = v7;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 28;
      goto LABEL_10;
    }
  }
}

void sub_1000172D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000172F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 requestIdentifier];
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v3;
      v12 = "%{public}@: Could not replace notification content. Identifier: %{public}@, error:%{public}@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v10 = v16;
      v11 = [v17 requestIdentifier];
      v18 = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@: Replaced notification content successfully. Identifier: %{public}@";
      v13 = v7;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
      goto LABEL_10;
    }
  }
}

BOOL sub_100017948(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 requestURL];
    *buf = 138543618;
    v41 = v7;
    v42 = 2114;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting post request task. Request URL: %{public}@", buf, 0x16u);
  }

  [APDefaults setIsRequester:1];
  [APDefaults setIsApprover:0];
  v11 = *(a1 + 32);
  v39 = 0;
  v12 = [v11 _serverRequestWithError:&v39];
  v13 = v39;
  if (v12)
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      *buf = 138543362;
      v41 = v17;
      v18 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result.", buf, 0xCu);
    }

    v19 = *(a1 + 32);
    v38 = v13;
    v20 = [v19 _storeRequestWithResult:v12 error:&v38];
    v21 = v38;

    if (_os_feature_enabled_impl())
    {
      v22 = [v12 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = [v23 objectForKeyedSubscript:@"requestId"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = +[APLogConfig sharedDaemonConfig];
      if (!v26)
      {
        v26 = +[APLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = objc_opt_class();
        *buf = 138543618;
        v41 = v29;
        v42 = 2112;
        v43 = v25;
        v30 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting Biome Donation - Request Identifier: %@", buf, 0x16u);
      }

      [BiomeHelper donateToBiomeWithRequest:v20];
    }

    v31 = [*(a1 + 32) bag];
    v32 = [v31 BOOLForKey:@"enable-ks-via-messages"];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100017D90;
    v36[3] = &unk_100054C58;
    v36[4] = *(a1 + 32);
    v37 = v20;
    v33 = v20;
    [v32 valueWithCompletion:v36];

    v13 = v21;
  }

  if (a2)
  {
    v34 = v13;
    *a2 = v13;
  }

  return v13 == 0;
}

void sub_100017D90(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    *buf = 138543874;
    v19 = v7;
    v20 = 1024;
    v21 = [v8 canSendViaMessages];
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: canSendViaMessages: %d - kill switch: %d", buf, 0x18u);
  }

  if ((v3 & 1) == 0 && [*(a1 + 32) canSendViaMessages])
  {
    v10 = +[APLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[APLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      *buf = 138543362;
      v19 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending via iMessage", buf, 0xCu);
    }

    v15 = [*(a1 + 32) peopleClient];
    v16 = [*(a1 + 40) uniqueIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100017FE4;
    v17[3] = &unk_100054F78;
    v17[4] = *(a1 + 32);
    [v15 sendFamilyAskToBuyIMessageWithRequestID:v16 completion:v17];
  }
}

void sub_100017FE4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v5;
      v9 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending via iMessage failed - Error: %@", &v10, 0x16u);
    }
  }
}

void sub_1000188E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  _Block_object_dispose(&location, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000189AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000189C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v5;
      v10 = v24;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: PeopleClient returned an error: %@", buf, 0x16u);
    }
  }

  [WeakRetained setCanSendViaMessages:a2];
  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    *buf = 138543618;
    v24 = v14;
    v25 = 1024;
    LODWORD(v26) = a2;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: canSendFamilyAskToBuyIMessage: %d", buf, 0x12u);
  }

  v16 = [*(a1 + 32) requestURL];
  v17 = [v16 absoluteString];
  v18 = [v17 stringByAppendingFormat:@"&clientInfo=canSendViaMessages:%d", a2];

  v19 = [NSURL URLWithString:v18];
  if (v19)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v19);
  }

  else
  {
    v20 = [*(a1 + 32) requestURL];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    [WeakRetained setCanSendViaMessages:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

Class sub_100019048(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100063CF8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001918C;
    v4[4] = &unk_100055518;
    v4[5] = v4;
    v5 = off_100055500;
    v6 = 0;
    qword_100063CF8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100063CF8)
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
  result = objc_getClass("PeopleClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100019200();
  }

  qword_100063CF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001918C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100063CF8 = result;
  return result;
}

void sub_1000194E8(id a1)
{
  qword_100063D08 = objc_alloc_init(RemoteNotificationHandler);

  _objc_release_x1();
}

id sub_100019710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"production"])
  {
    goto LABEL_20;
  }

  if ([v5 isEqualToString:@"development"])
  {
    v7 = &off_100058028;
    goto LABEL_21;
  }

  if (v5)
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 32);
    *v23 = 138543618;
    *&v23[4] = objc_opt_class();
    *&v23[12] = 2114;
    *&v23[14] = v5;
    v11 = *&v23[4];
    v12 = "%{public}@: Unexpected push environment value from bag: %{public}@";
    v13 = v9;
    v14 = 22;
  }

  else
  {
    v15 = +[APLogConfig sharedDaemonConfig];
    v8 = v15;
    if (v6)
    {
      if (!v15)
      {
        v8 = +[APLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = objc_opt_class();
        v18 = v17;
        v19 = AMSLogableError();
        *v23 = 138543618;
        *&v23[4] = v17;
        *&v23[12] = 2114;
        *&v23[14] = v19;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error loading push environment value from bag: %{public}@", v23, 0x16u);
      }

      goto LABEL_19;
    }

    if (!v15)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v20 = *(a1 + 32);
    *v23 = 138543362;
    *&v23[4] = objc_opt_class();
    v11 = *&v23[4];
    v12 = "%{public}@: Neither a result nor an error returned from bag.";
    v13 = v9;
    v14 = 12;
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v12, v23, v14);

LABEL_19:
LABEL_20:
  v7 = &off_100058010;
LABEL_21:
  v21 = [AMSPromise promiseWithResult:v7, *v23, *&v23[16]];

  return v21;
}

void sub_100019C08(uint64_t a1, void *a2)
{
  if ([a2 unsignedIntegerValue] == 2)
  {
    v3 = [*(a1 + 32) apsQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100019CBC;
    v5[3] = &unk_100054D70;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

void sub_10001A0BC(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = [*(a1 + 32) apsConnection];

  if (v4)
  {
    v5 = [*(a1 + 32) apsConnection];
    [v5 shutdown];
  }

  v6 = &APSEnvironmentDevelopment;
  if (v3 != 2)
  {
    v6 = &APSEnvironmentProduction;
  }

  v7 = *v6;
  v8 = [APSConnection alloc];
  v9 = [*(a1 + 32) apsQueue];
  v10 = [v8 initWithEnvironmentName:v7 namedDelegatePort:@"com.apple.aps.askpermission" queue:v9];
  [*(a1 + 32) setApsConnection:v10];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) apsConnection];
  [v12 _setEnabledTopics:v11];

  v13 = *(a1 + 32);
  v14 = [v13 apsConnection];
  [v14 setDelegate:v13];

  v15 = [*(a1 + 32) apsConnection];

  v16 = +[APLogConfig sharedDaemonConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v7;
      v20 = v26;
      v21 = "%{public}@: Started APS connection succesfully. Environment: %{public}@";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, &v25, 0x16u);
    }
  }

  else
  {
    if (!v16)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v7;
      v20 = v26;
      v21 = "%{public}@: Failed to start APS connection. Environment: %{public}@";
      v22 = v18;
      v23 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }
  }
}

void sub_10001A82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 type];
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    v19 = *(a1 + 32);
    *v20 = 138543362;
    *&v20[4] = objc_opt_class();
    v18 = *&v20[4];
LABEL_20:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring cloud notification on requester's device", v20, 0xCu);

    goto LABEL_21;
  }

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *v20 = 138543618;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2114;
    *&v20[14] = v6;
    v11 = *&v20[4];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to determine if Guardian or Requester. Falling back to UserDefaults. Error: %{public}@", v20, 0x16u);
  }

  if (+[APDefaults isRequester](APDefaults, "isRequester") & 1) != 0 || (+[RequesterStore sharedStore](RequesterStore, "sharedStore"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsRequestWithIdentifier:*(a1 + 40)], v12, (v13))
  {
    v14 = [APLogConfig sharedDaemonConfig:*v20];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    *v20 = 138543362;
    *&v20[4] = v17;
    v18 = v17;
    goto LABEL_20;
  }

LABEL_15:
  [*(a1 + 32) _handleApproverNotification:{*(a1 + 48), *v20, *&v20[8]}];
LABEL_22:
}

void sub_10001AB80(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543362;
      v17 = objc_opt_class();
      v10 = v17;
      v11 = "%{public}@: Handled approver remote notification succesfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v10 = v17;
      v11 = "%{public}@: Failed to handle approver remote notification. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10001B154(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 type] == 2)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *v18 = 138543618;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2114;
      *&v18[14] = v6;
      v10 = *&v18[4];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to determine if Guardian or Requester. Falling back to UserDefaults. Error: %{public}@", v18, 0x16u);
    }

    if (!+[APDefaults isRequester])
    {
      v11 = +[APLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[APLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      *v18 = 138543362;
      *&v18[4] = v14;
      v15 = v14;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring store notification on approver's device", v18, 0xCu);

LABEL_19:
      goto LABEL_21;
    }

LABEL_20:
    [*(a1 + 32) _handleRequesterNotification:*(a1 + 40) andSuppressDialog:{*(a1 + 48), *v18, *&v18[8]}];
    goto LABEL_21;
  }

  v16 = [v5 type];
  if (v16 == 1)
  {
    goto LABEL_20;
  }

  if (!v16)
  {
    v11 = +[APLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v17 = *(a1 + 32);
    *v18 = 138543362;
    *&v18[4] = objc_opt_class();
    v15 = *&v18[4];
    goto LABEL_18;
  }

LABEL_21:
}

void sub_10001B494(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543362;
      v17 = objc_opt_class();
      v10 = v17;
      v11 = "%{public}@: Handled requester remote notification succesfully";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v10 = v17;
      v11 = "%{public}@: Failed to handle requester remote notification. Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10001B890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v8 = v15;
      v9 = "%{public}@: Failed to register cloud push token. Error: %{public}@";
      v10 = v6;
      v11 = OS_LOG_TYPE_FAULT;
      v12 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = 138543362;
      v15 = objc_opt_class();
      v8 = v15;
      v9 = "%{public}@: Registered cloud push token succesfully";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  [APDefaults setRetryNotificationRegistration:v3 != 0];
}

uint64_t sub_10001C308(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 request];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle requester local notification task. Request: %{public}@", &v15, 0x16u);
  }

  v11 = +[LocalNotificationHandler sharedHandler];
  v12 = [*(a1 + 32) request];
  v13 = [v12 requestIdentifier];
  [v11 dismissNotificationWithIdentifier:v13];

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

void sub_10001D7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D7D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D91C(id a1)
{
  qword_100063D18 = [[ExceptionRequestStore alloc] initWithInMemoryStore:1];

  _objc_release_x1();
}

void sub_10001D9A4(id a1)
{
  qword_100063D28 = objc_alloc_init(ExceptionRequestStore);

  _objc_release_x1();
}

void sub_10001DB34(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = [*(a1 + 32) requestStore];
  [v2 clearCache];
}

id sub_10001DBFC(id a1, ExceptionRequest *a2)
{
  v2 = [(ExceptionRequest *)a2 copy];

  return v2;
}

id sub_10001DD08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10001DEB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (([v4 isEqualToString:a1[4]] & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [v3 adamID];
  if (([v5 isEqualToNumber:a1[5]] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = [v3 ageRatingValue];
  v7 = [v6 isEqualToNumber:a1[6]];

  if (v7)
  {
    v8 = [v3 copy];
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:

  return v8;
}

id sub_10001E05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 distributorID];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10001E2DC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveChanges];
}

id sub_10001E3D4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 40) uniqueIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _saveChanges];
}

BOOL sub_10001E9C4(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 payload];
    *buf = 138543618;
    v118 = v7;
    v119 = 2114;
    v120 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting requester remote notification task. Payload: %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) requestStatus];
  v12 = [*(a1 + 32) requestIdentifier];
  v13 = v12;
  if (v11 == -2 || !v12)
  {
    v17 = APError();
  }

  else if (v11 > 1)
  {
    v17 = 0;
  }

  else
  {
    v14 = +[RequesterStore sharedStore];
    [v14 clearExpiredRequests];

    v15 = *(a1 + 32);
    v115 = 0;
    v16 = [v15 _serverRequestWithError:&v115];
    v17 = v115;
    if (v16)
    {
      v18 = +[APLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[APLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = objc_opt_class();
        *buf = 138543618;
        v118 = v21;
        v119 = 2114;
        v120 = v16;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result: %{public}@", buf, 0x16u);
      }

      v23 = *(a1 + 32);
      v114 = v17;
      v24 = [v23 _requestFromResult:v16 withError:&v114];
      v25 = v114;

      v26 = &APCustomError_ptr;
      v106 = v24;
      if (v24)
      {
        v27 = &APCustomError_ptr;
        v28 = +[APLogConfig sharedDaemonConfig];
        if (!v28)
        {
          v28 = +[APLogConfig sharedConfig];
        }

        v29 = [v28 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          v31 = objc_opt_class();
          *buf = 138543618;
          v118 = v31;
          v119 = 2114;
          v120 = v106;
          v32 = v11;
          v33 = v25;
          v34 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server response. Request: %{public}@", buf, 0x16u);

          v25 = v33;
          v11 = v32;
          v26 = &APCustomError_ptr;
        }

        if ([*(a1 + 32) suppressDialog])
        {
          v35 = +[APLogConfig sharedDaemonConfig];
          if (!v35)
          {
            v35 = +[APLogConfig sharedConfig];
          }

          v36 = [v35 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(a1 + 32);
            v38 = objc_opt_class();
            *buf = 138543362;
            v118 = v38;
            v39 = v11;
            v40 = v25;
            v41 = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: Suppressing Dialog for Inactive Account", buf, 0xCu);

            v25 = v40;
            v11 = v39;
            v26 = &APCustomError_ptr;
          }
        }

        else
        {
          [*(a1 + 32) _presentRequest:v106];
        }

        v105 = +[NSMutableArray array];
        v45 = [v16 object];
        v46 = v26[341];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        v102 = v47;
        if (v47)
        {
          v97 = v11;
          v98 = v25;
          v48 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v47];
          v49 = +[RequesterStore sharedStore];
          [v49 storeRequest:v48];

          [v105 addObject:v48];
          v96 = [(ApprovalRequest *)v48 suppressClientResume];
          v50 = +[RequesterStore sharedStore];
          v51 = [(ApprovalRequest *)v48 uniqueIdentifier];
          v52 = [v50 requestsMatchingUniqueIdentifier:v51];

          v53 = +[APLogConfig sharedDaemonConfig];
          if (!v53)
          {
            v53 = +[APLogConfig sharedConfig];
          }

          v99 = v16;
          v100 = v13;
          v101 = a2;
          v54 = [v53 OSLogObject];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(a1 + 32);
            v56 = objc_opt_class();
            v57 = v56;
            v58 = [v52 count];
            *buf = 138543618;
            v118 = v56;
            v119 = 2048;
            v120 = v58;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: Matching requests found: %lu", buf, 0x16u);
          }

          v103 = a1;

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v59 = v52;
          v60 = [v59 countByEnumeratingWithState:&v110 objects:v116 count:16];
          v27 = &APCustomError_ptr;
          v104 = v59;
          if (v60)
          {
            v61 = v60;
            v62 = *v111;
            do
            {
              for (i = 0; i != v61; i = i + 1)
              {
                if (*v111 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v110 + 1) + 8 * i);
                v65 = [v27[256] sharedDaemonConfig];
                if (!v65)
                {
                  v65 = [v27[256] sharedConfig];
                }

                v66 = [v65 OSLogObject];
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(v103 + 32);
                  v68 = objc_opt_class();
                  v69 = v68;
                  v70 = [v64 uniqueIdentifier];
                  *buf = 138543618;
                  v118 = v68;
                  v59 = v104;
                  v119 = 2114;
                  v120 = v70;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating request: %{public}@", buf, 0x16u);

                  v27 = &APCustomError_ptr;
                }

                v71 = [v106 status];
                v72 = [(ApprovalRequest *)v48 approverDSID];
                [v64 updateStatus:v71 withApproverDSID:v72];

                v73 = +[RequesterStore sharedStore];
                [v73 storeRequest:v64];

                [v105 addObject:v64];
              }

              v61 = [v59 countByEnumeratingWithState:&v110 objects:v116 count:16];
            }

            while (v61);
          }

          if (_os_feature_enabled_impl())
          {
            v74 = objc_alloc_init(NSOperationQueue);
            v108[0] = _NSConcreteStackBlock;
            v108[1] = 3221225472;
            v108[2] = sub_10001F4F8;
            v108[3] = &unk_100054C30;
            v109 = v105;
            [v74 addOperationWithBlock:v108];
          }

          v13 = v100;
          a2 = v101;
          a1 = v103;
          v25 = v98;
          v16 = v99;
          v11 = v97;
          v44 = v96;
        }

        else
        {
          v48 = +[APLogConfig sharedDaemonConfig];
          if (!v48)
          {
            v48 = +[APLogConfig sharedConfig];
          }

          v75 = [(ApprovalRequest *)v48 OSLogObject];
          v104 = v75;
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = *(a1 + 32);
            v77 = objc_opt_class();
            *buf = 138543362;
            v118 = v77;
            v78 = v77;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}@: Error gathering information for Biome donation. Result Object NIL.", buf, 0xCu);
          }

          v44 = 0;
        }

        v26 = &APCustomError_ptr;
      }

      else
      {
        v44 = 0;
        v27 = &APCustomError_ptr;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.askpermissiond.requestStatusChanged", 0, 0, 1u);
      if (v11 == 1)
      {
        if (v44)
        {
          v80 = [v27[256] sharedDaemonConfig];
          if (!v80)
          {
            v80 = [v27[256] sharedConfig];
          }

          v81 = [v80 OSLogObject];
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v82 = *(a1 + 32);
            v83 = objc_opt_class();
            *buf = 138543362;
            v118 = v83;
            v84 = v83;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}@: Resuming Purchase suppressed - Extension will *NOT* be notified.", buf, 0xCu);
          }
        }

        else
        {
          v85 = *(a1 + 32);
          v107 = v25;
          v80 = [v85 _requestResultFromResult:v16 withError:&v107];
          v86 = v107;

          if (v80)
          {
            v87 = [v27[256] sharedDaemonConfig];
            if (!v87)
            {
              v87 = [v27[256] sharedConfig];
            }

            v88 = [v87 OSLogObject];
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              v89 = *(a1 + 32);
              v90 = objc_opt_class();
              *buf = 138543618;
              v118 = v90;
              v119 = 2114;
              v120 = v80;
              v91 = v90;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server response. Result: %{public}@", buf, 0x16u);
            }

            v92 = [*(a1 + 32) _notifyExtensionWithResult:v80];
          }

          v25 = v86;
        }

        v93 = [v16 object];
        v94 = v26[341];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = v93;
        }

        else
        {
          v95 = 0;
        }

        [*(a1 + 32) _notifyScreenTimeIfNeededForApprovalForRequestWithID:v13 response:v95];
      }

      v17 = v25;
    }
  }

  if (a2)
  {
    v42 = v17;
    *a2 = v17;
  }

  return v17 == 0;
}

void sub_10001F4F8(uint64_t a1)
{
  v1 = [NSArray arrayWithArray:*(a1 + 32)];
  [BiomeHelper donateToBiomeWithRequests:v1];
}

void sub_1000207E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogableError();
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying Screen Time of the exception: %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = objc_opt_class();
      v12 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", &v13, 0xCu);
    }
  }
}

void sub_1000210F0(id a1)
{
  qword_100063D38 = objc_alloc_init(RequesterStore);

  _objc_release_x1();
}

void sub_100021280(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [*(a1 + 32) requestItems];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 createdDate];
        v11 = [NSDate isDateExpired:v10];

        if (v11)
        {
          v12 = [v9 uniqueIdentifier];
          [v2 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        v19 = [*(a1 + 32) requestItems];
        [v19 setObject:0 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) _saveChanges];
}

void sub_1000215F8(uint64_t a1)
{
  v2 = [*(a1 + 32) requestItems];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) requestStore];
  [v3 clearCache];
}

void sub_100022280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000222A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000222B8(uint64_t a1)
{
  v6 = [*(a1 + 32) requestItems];
  v2 = [*(a1 + 40) uniqueIdentifier];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10002233C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) requestItems];
  v4 = [*(a1 + 40) uniqueIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _saveChanges];
}

void sub_100022FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100022FF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _retrieveFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100025DEC(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v26 = objc_opt_class();
    v7 = v26;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting reset approver account task", buf, 0xCu);
  }

  +[BiometricsHandler reset];
  [APDefaults setIsApprover:0];
  v8 = +[ApproverStore sharedStore];
  [v8 clearRequests];

  v9 = +[LocalNotificationHandler sharedHandler];
  v10 = [v9 presentedRequests];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 status] == -1)
        {
          v17 = +[LocalNotificationHandler sharedHandler];
          v18 = [v16 requestIdentifier];
          [v17 dismissNotificationWithIdentifier:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t sub_1000260AC(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v26 = objc_opt_class();
    v7 = v26;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting reset requester account task", buf, 0xCu);
  }

  v8 = +[RequesterStore sharedStore];
  [v8 clearRequests];

  [APDefaults setIsRequester:0];
  v9 = +[LocalNotificationHandler sharedHandler];
  v10 = [v9 presentedRequests];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 status] == 1 || !objc_msgSend(v16, "status"))
        {
          v17 = +[LocalNotificationHandler sharedHandler];
          v18 = [v16 requestIdentifier];
          [v17 dismissNotificationWithIdentifier:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

void sub_100026A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v21 = objc_opt_class();
      v11 = v21;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning existing Screen Time Exceptions...", buf, 0xCu);
    }

    v12 = [v5 ams_DSID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100026CBC;
    v18[3] = &unk_100055738;
    v13 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v13;
    [STExceptionApp fetchExceptionsForRequesterDSID:v12 completionHandler:v18];
  }

  else
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v6;
      v17 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching account before fetching exception - %@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }
}

void sub_100026CBC(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = +[ExceptionRequestStore sharedStore];
  v4 = [v3 getExceptionRequests];

  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    *buf = 138543874;
    v73 = v8;
    v74 = 2048;
    v75 = [v4 count];
    v76 = 2048;
    v77 = [v55 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Iterating %lu Cached Exception Requests VS %lu Screen Time App Exceptions", buf, 0x20u);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v69;
    *&v11 = 138544386;
    v52 = v11;
    v53 = *v69;
    v54 = a1;
    do
    {
      v14 = 0;
      v56 = v12;
      do
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * v14);
        if ([v15 approvalStatus] == 1)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v16 = v55;
          v17 = [v16 countByEnumeratingWithState:&v64 objects:v82 count:16];
          if (!v17)
          {

LABEL_30:
            v32 = +[APLogConfig sharedDaemonConfig];
            if (!v32)
            {
              v32 = +[APLogConfig sharedConfig];
            }

            v33 = [v32 OSLogObject];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 32);
              v35 = objc_opt_class();
              v63 = v35;
              v36 = [v15 bundleIdentifier];
              v37 = [v15 adamID];
              v38 = [v37 unsignedLongLongValue];
              [v15 distributorID];
              v40 = v39 = v15;
              v41 = [v39 ageRatingValue];
              v42 = [v41 unsignedLongValue];
              *buf = v52;
              v73 = v35;
              v74 = 2112;
              v75 = v36;
              v76 = 2048;
              v77 = v38;
              v78 = 2112;
              v79 = v40;
              v80 = 2048;
              v81 = v42;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: !! Pruning Cached Exception - BundleID: %@, adamID: %lld, distributorID: %@, rating: %ld !!", buf, 0x34u);

              v12 = v56;
              v13 = v53;

              v15 = v39;
              a1 = v54;
            }

            v43 = +[ExceptionRequestStore sharedStore];
            v44 = [v15 uniqueIdentifier];
            [v43 removeExceptionRequestWithUniqueIdentifier:v44];

            goto LABEL_35;
          }

          v18 = v17;
          v58 = v14;
          v59 = v16;
          v62 = 0;
          v19 = *v65;
          v60 = v15;
          v61 = *v65;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v65 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v64 + 1) + 8 * i);
              v22 = [v15 requesterDSID];
              v23 = [v21 requesterDSID];
              if ([v22 isEqualToNumber:v23])
              {
                v24 = [v15 adamID];
                v25 = [v24 longLongValue];
                if (v25 == [v21 adamID])
                {
                  v26 = [v15 bundleIdentifier];
                  v27 = [v21 bundleIdentifier];
                  if ([v26 isEqualToString:v27])
                  {
                    v28 = [v15 ageRatingValue];
                    v29 = [v28 unsignedLongValue];
                    v30 = v29 == [v21 ratingValue];
                    v16 = v59;
                    v31 = v30;

                    v15 = v60;
                    v62 |= v31;
                  }

                  v19 = v61;
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v64 objects:v82 count:16];
          }

          while (v18);

          v13 = v53;
          a1 = v54;
          v12 = v56;
          v14 = v58;
          if ((v62 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_35:
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v12);
  }

  v45 = [*(a1 + 32) distributorID];

  if (v45)
  {
    v46 = +[ExceptionRequestStore sharedStore];
    v47 = [*(a1 + 32) distributorID];
    v48 = [v46 getExceptionRequestsWithDistributorID:v47];
  }

  else
  {
    v49 = [*(a1 + 32) bundleIdentifier];

    v50 = +[ExceptionRequestStore sharedStore];
    v46 = v50;
    if (!v49)
    {
      v51 = [v50 getExceptionRequests];
      goto LABEL_42;
    }

    v47 = [*(a1 + 32) bundleIdentifier];
    v48 = [v46 getExceptionRequestsWithBundleID:v47];
  }

  v51 = v48;

LABEL_42:
  [*(a1 + 40) finishWithResult:v51];
}

BOOL sub_100027434(uint64_t a1, void *a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 requestIdentifier];
    v10 = [*(a1 + 32) action];
    *buf = 138543874;
    v58 = v6;
    v59 = 2114;
    v60 = v9;
    v61 = 2050;
    v62 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update request task. Identifier: %{public}@, action: %{public}ld", buf, 0x20u);
  }

  v11 = +[LocalNotificationHandler sharedHandler];
  v12 = [*(a1 + 32) requestIdentifier];
  v13 = [v11 retrieveRequestWithIdentifier:v12];

  if (v13)
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      *buf = 138543362;
      v58 = v17;
      v18 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved request, dismissing notification", buf, 0xCu);
    }

    v19 = +[LocalNotificationHandler sharedHandler];
    v20 = [*(a1 + 32) requestIdentifier];
    [v19 dismissNotificationWithIdentifier:v20];
  }

  v52 = v13;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = v21;
    v25 = [*(a1 + 32) action];
    v56 = v21;
    v26 = [UserProvider primaryiCloudUserWithAction:v25 keychainError:&v56];
    v21 = v56;

    v55 = v23;
    v27 = [v26 resultWithError:&v55];
    v28 = v55;

    if (!v27)
    {
      break;
    }

    v29 = +[APLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[APLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = objc_opt_class();
      *buf = 138543362;
      v58 = v32;
      v33 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved primary iCloud user.", buf, 0xCu);
    }

    v34 = *(a1 + 32);
    v54 = v28;
    v35 = [v34 _serverRequestWithUser:v27 error:&v54];
    v36 = v54;

    if (!v35)
    {
      v23 = v36;
LABEL_26:

      v28 = v23;
      break;
    }

    v37 = +[APLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[APLogConfig sharedConfig];
    }

    v38 = [v37 OSLogObject];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 32);
      v40 = objc_opt_class();
      *buf = 138543362;
      v58 = v40;
      v41 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result.", buf, 0xCu);
    }

    v23 = [*(a1 + 32) _parseResult:v35];

    v42 = [v27 biometricsToken];
    v22 = v42 != 0;

    if (!v23 || !v42)
    {
      goto LABEL_26;
    }

    +[BiometricsHandler removeToken];

    v22 = 1;
  }

  if (v52 && v28)
  {
    v43 = +[APLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[APLogConfig sharedConfig];
    }

    v44 = [v43 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 32);
      v46 = objc_opt_class();
      v47 = v46;
      v48 = AMSLogableError();
      *buf = 138543618;
      v58 = v46;
      v59 = 2114;
      v60 = v48;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error, presenting notification. error = %{public}@", buf, 0x16u);
    }

    v49 = +[LocalNotificationHandler sharedHandler];
    [v49 presentNotificationWithRequest:v52 silently:1];
  }

  [*(a1 + 32) _enqueueMetricsWithKeychainError:v21 usedBiometrics:v22 request:v52 error:v28];
  if (a2)
  {
    v50 = v28;
    *a2 = v28;
  }

  return v28 == 0;
}

void sub_1000280CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 enqueueEvent:v6];
  }

  else
  {
    v4 = [APMetricsEvent nonIdentifiableMetricsFieldsForAccount:a2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000281B4;
    v7[3] = &unk_100055760;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v4 addFinishBlock:v7];
  }
}

id sub_1000281B4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    v5 = [v4 objectForKeyedSubscript:@"userId"];
    v6 = [v4 objectForKeyedSubscript:@"xpAccountsMatch"];
    v7 = [v4 objectForKeyedSubscript:@"xpUserIdSyncState"];
    v8 = [v4 objectForKeyedSubscript:@"clientId"];

    [*(a1 + 32) setProperty:0 forBodyKey:@"dsId"];
    [*(a1 + 32) setProperty:v5 forBodyKey:@"userId"];
    [*(a1 + 32) setProperty:v8 forBodyKey:@"clientId"];
    [*(a1 + 32) setProperty:kUserIDNamespace forBodyKey:@"userNs"];
    [*(a1 + 32) setProperty:v6 forBodyKey:@"xpAccountsMatch"];
    [*(a1 + 32) setProperty:v7 forBodyKey:@"xpUserIdSyncState"];
    [*(a1 + 32) setTopic:@"xp_ase_payments/appstore_payments_ue"];
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v9 enqueueEvent:v10];
}

void sub_100028F40(id a1)
{
  v1 = [URLSession alloc];
  v4 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v2 = [(URLSession *)v1 initWithConfiguration:v4];
  v3 = qword_100063D48;
  qword_100063D48 = v2;
}

void sub_10002901C(id a1)
{
  qword_100063D58 = objc_alloc_init(URLSessionHandler);

  _objc_release_x1();
}

id sub_1000293FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  [*(a1 + 32) setPreviousLocalApprovalUsername:v4];

  v5 = [AMSPromise promiseWithResult:v3];

  return v5;
}

uint64_t sub_100029A30()
{
  v0 = type metadata accessor for Log();
  sub_10002DC04(v0, qword_100063E38);
  sub_100029B18(v0, qword_100063E38);
  return Log.init(subsystem:category:)();
}

uint64_t sub_100029AB4()
{
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Log();

  return sub_100029B18(v0, qword_100063E38);
}

uint64_t sub_100029B18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100029B5C()
{
  v0 = objc_allocWithZone(type metadata accessor for ATQuestion.Topic());
  result = ATQuestion.Topic.init(rawValue:)();
  qword_100063E50 = result;
  return result;
}

uint64_t *sub_100029BAC()
{
  if (qword_100063D68 != -1)
  {
    swift_once();
  }

  return &qword_100063E50;
}

id sub_100029BFC()
{
  result = [objc_allocWithZone(type metadata accessor for AskToWrapper()) init];
  qword_100063E58 = result;
  return result;
}

uint64_t sub_100029C88()
{
  v1 = (v0 + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_100029CE4(v3);
  return v3;
}

uint64_t sub_100029CE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029CF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100029D54(v6);
}

uint64_t sub_100029D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029E68;

  return sub_10002CF70();
}

uint64_t sub_100029E68(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10002A0D0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002A178;

  return sub_10002CF70();
}

uint64_t sub_10002A178(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10002A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 472) = v25;
  *(v9 + 480) = v8;
  *(v9 + 464) = v24;
  *(v9 + 432) = v22;
  *(v9 + 448) = v23;
  *(v9 + 400) = v20;
  *(v9 + 416) = v21;
  *(v9 + 368) = v18;
  *(v9 + 384) = v19;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 336) = a5;
  *(v9 + 344) = a6;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  v10 = *(*(sub_10002D464(&qword_100063A80, &qword_1000428C8) - 8) + 64) + 15;
  *(v9 + 488) = swift_task_alloc();
  v11 = *(*(sub_10002D464(&qword_100063A88, &unk_1000428D0) - 8) + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v9 + 504) = v12;
  v13 = *(v12 - 8);
  *(v9 + 512) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v15 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  *(v9 + 528) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002A430, 0, 0);
}

uint64_t sub_10002A430()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *((swift_isaMask & **(v0 + 480)) + 0x60);

  v3(v2, v1);
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Log();
  *(v0 + 536) = sub_100029B18(v4, qword_100063E38);
  *(v0 + 544) = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  *(v0 + 552) = *(v5 + 72);
  *(v0 + 608) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  if (qword_100063D68 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 528);
  v69 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v68 = *(v0 + 448);
  v66 = *(v0 + 440);
  v67 = *(v0 + 432);
  v64 = *(v0 + 360);
  v65 = *(v0 + 352);
  v63 = *(v0 + 344);
  v61 = *(v0 + 336);
  v59 = *(v0 + 320);
  v60 = *(v0 + 328);
  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = qword_100063E50;
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x800000010004DA50;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 40) = v8;
  v13 = sub_10002D4AC((v0 + 16));
  v62 = *(v7 + 16);
  v62(v13, v9, v8);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 16, &qword_100063A98, &qword_1000428E0);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  type metadata accessor for APExceptionRequestType();
  *(v0 + 72) = v15;
  *(v0 + 48) = v10;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 48, &qword_100063A98, &qword_1000428E0);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  *(v0 + 104) = type metadata accessor for ATQuestion.Topic();
  *(v0 + 80) = v11;
  v58 = v11;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 80, &qword_100063A98, &qword_1000428E0);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 136) = &type metadata for String;
  *(v0 + 112) = v59;
  *(v0 + 120) = v60;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 112, &qword_100063A98, &qword_1000428E0);
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v61;
  *(v0 + 152) = v63;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 144, &qword_100063A98, &qword_1000428E0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  type metadata accessor for ATQuestion();
  v62(v69, v9, v8);
  v20 = v58;

  v21 = ATQuestion.__allocating_init(id:topic:title:summary:)();
  *(v0 + 560) = v21;

  ATQuestion.associatedContentBundleIdentifier.setter();

  ATQuestion.responseUIExtensionBundleIdentifier.setter();
  if (v68)
  {
    v22 = *(v0 + 496);
    v23 = *(v0 + 448);
    *(swift_allocObject() + 16) = xmmword_100042890;
    v24 = v23;
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    *v22 = sub_10002B174();
    v25 = enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:);
    v26 = type metadata accessor for ATQuestion.TopicMetadata();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v22, v25, v26);
    (*(v27 + 56))(v22, 0, 1, v26);
    ATQuestion.askToTopicMetadata.setter();
  }

  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 368);
  v30 = *(v0 + 376);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v32 = type metadata accessor for ATAnswerChoice();
  v33 = objc_allocWithZone(v32);

  v34 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  *(v0 + 568) = v34;
  ATAnswerChoice.kind.setter();
  v35 = v34;
  v70 = v21;
  v36 = ATQuestion.answerChoices.modify();
  v38 = v37;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v55 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v40 = *(v0 + 416);
  v39 = *(v0 + 424);
  v42 = *(v0 + 400);
  v41 = *(v0 + 408);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v36(v0 + 176, 0);
  v43 = objc_allocWithZone(v32);

  v44 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  *(v0 + 576) = v44;
  ATAnswerChoice.kind.setter();
  v45 = v44;
  v46 = ATQuestion.answerChoices.modify();
  v48 = v47;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v49 = *(v0 + 480);
  v50 = *(v0 + 488);
  v51 = *(v0 + 456);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v46(v0 + 208, 0);
  sub_10002D884(v51, v50, &qword_100063A80, &qword_1000428C8);
  ATQuestion.fallbackURL.setter();
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  type metadata accessor for ATDispatchCenter();
  v52 = static ATDispatchCenter.shared.getter();
  sub_10002D560();
  swift_unknownObjectRetain();
  ATDispatchCenter.delegate.setter();

  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  *(v0 + 584) = static ATDispatchCenter.shared.getter();
  v53 = async function pointer to ATDispatchCenter.send(_:to:)[1];
  v54 = swift_task_alloc();
  *(v0 + 592) = v54;
  *v54 = v0;
  v54[1] = sub_10002ADBC;

  return ATDispatchCenter.send(_:to:)(v70, 0);
}

uint64_t sub_10002ADBC()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v6 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_10002AF8C;
  }

  else
  {

    v4 = sub_10002AED8;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_10002AED8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);

  v7 = *(v0 + 8);

  return v7(1);
}

uint64_t sub_10002AF8C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 608);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 560);
  v19 = *(v0 + 496);
  v20 = *(v0 + 488);

  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x800000010004DAF0;
  v9._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  *(v0 + 264) = v11;
  v12 = sub_10002D4AC((v0 + 240));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 240, &qword_100063A98, &qword_1000428E0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  swift_willThrow();

  v14 = *(v0 + 8);
  v15 = *(v0 + 600);

  return v14(0);
}

id sub_10002B174()
{
  v1 = v0;
  v2 = *(*(sub_10002D464(&qword_100063A80, &qword_1000428C8) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v60 = &v60 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - v11;
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = [objc_allocWithZone(type metadata accessor for ATContentAgeRestrictionExceptionMetadata()) init];
  v16 = [v1 appBundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.appBundleID.setter();
  v17 = [v1 appName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.appName.setter();
  v18 = [v1 requestedAppIconURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  ATContentAgeRestrictionExceptionMetadata.requestedAppIconURL.setter();
  [v1 appVersionID];
  ATContentAgeRestrictionExceptionMetadata.appVersionID.setter();
  [v1 appItemID];
  ATContentAgeRestrictionExceptionMetadata.appItemID.setter();
  v22 = [v1 distributorID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorID.setter();
  v23 = [v1 distributorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorName.setter();
  v24 = [v1 developerID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.developerID.setter();
  v25 = [v1 developerName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.developerName.setter();
  [v1 isWebApp];
  ATContentAgeRestrictionExceptionMetadata.isWebApp.setter();
  [v1 isDistributor];
  ATContentAgeRestrictionExceptionMetadata.isDistributor.setter();
  v26 = [v1 askerName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.askerName.setter();
  v27 = [v1 ageRatingString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.ageRatingString.setter();
  v28 = [v1 distributorType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorType.setter();
  v29 = [v1 distributorBundleID];
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.distributorBundleID.setter();
  v31 = [v1 distributorDomain];
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.distributorDomain.setter();
  v33 = [v1 distributorIconURL];
  if (v33)
  {
    v34 = v33;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for URL();
  v37 = *(*(v36 - 8) + 56);
  v38 = 1;
  v37(v12, v35, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.distributorIconURL.setter();
  v39 = [v1 installTypeRawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.installTypeRawValue.setter();
  v40 = [v1 accountID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.accountID.setter();
  v41 = [v1 url];
  if (v41)
  {
    v42 = v41;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  v37(v9, v38, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.url.setter();
  v43 = [v1 oAuthToken];
  if (v43)
  {
    v44 = v43;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.oAuthToken.setter();
  v45 = [v1 installVerificationToken];
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.installVerificationToken.setter();
  v47 = [v1 clientID];
  if (v47)
  {
    v48 = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.clientID.setter();
  v49 = [v1 authenticationContextData];
  if (v49)
  {
    v50 = v49;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v51 = v60;
  ATContentAgeRestrictionExceptionMetadata.authenticationContextData.setter();
  [v1 userInitiatedOverride];
  ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.setter();
  [v1 allowAccountPrompt];
  ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.setter();
  [v1 originallyRequestedVersionID];
  ATContentAgeRestrictionExceptionMetadata.originallyRequestedVersionID.setter();
  [v1 itemIDFromButtonConfiguration];
  ATContentAgeRestrictionExceptionMetadata.itemIDFromButtonConfiguration.setter();
  v52 = [v1 referrer];
  if (v52)
  {
    v53 = v52;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v61;
  v56 = 1;
  v37(v51, v54, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.referrer.setter();
  v57 = [v1 appShareURL];
  if (v57)
  {
    v58 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = 0;
  }

  v37(v55, v56, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.appShareURL.setter();
  return v15;
}

uint64_t sub_10002BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, const void *a13, const void *a14, void *a15)
{
  v15[2] = a11;
  v15[3] = a15;
  v48 = type metadata accessor for URL();
  v16 = *(v48 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v15[4] = v18;
  v19 = *(*(sub_10002D464(&qword_100063A80, &qword_1000428C8) - 8) + 64) + 15;
  v20 = swift_task_alloc();
  v15[5] = v20;
  v21 = type metadata accessor for UUID();
  v15[6] = v21;
  v22 = *(v21 - 8);
  v15[7] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v15[8] = v24;
  v41 = _Block_copy(a13);
  v15[9] = _Block_copy(a14);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v26;
  v47 = v25;
  v15[10] = v26;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v28;
  v45 = v27;
  v15[11] = v28;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v30;
  v43 = v29;
  v15[12] = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[13] = v31;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[14] = v32;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[15] = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[16] = v34;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[17] = v35;
  if (a12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v16 + 32))(v20, v18, v48);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v16 + 56))(v20, v36, 1, v48);
  v37 = swift_allocObject();
  v15[18] = v37;
  *(v37 + 16) = v41;
  a15;
  v38 = a11;
  v39 = swift_task_alloc();
  v15[19] = v39;
  *v39 = v15;
  v39[1] = sub_10002BF9C;

  return sub_10002A2A0(v24, a2, v47, v46, v45, v44, v43, v42);
}

uint64_t sub_10002BF9C(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1)[19];
  v5 = (*v1)[18];
  v6 = (*v1)[17];
  v7 = (*v1)[16];
  v8 = (*v1)[15];
  v9 = (*v1)[14];
  v10 = (*v1)[13];
  v11 = (*v1)[12];
  v25 = (*v1)[11];
  v26 = (*v1)[10];
  v27 = (*v1)[3];
  v28 = (*v1)[2];
  v30 = *v1;

  v12 = v2[9];
  v13 = v2[8];
  v14 = v2[7];
  v15 = v2[6];
  sub_10002DA64(v2[5], &qword_100063A80, &qword_1000428C8);
  (*(v14 + 8))(v13, v15);
  if (v29)
  {
    v16 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v16);
  }

  else
  {
    (*(v12 + 16))(v12, a1 & 1, 0);
  }

  v18 = v3[8];
  v17 = v3[9];
  v21 = v3 + 4;
  v20 = v3[4];
  v19 = v21[1];
  _Block_release(v17);

  v22 = v30[1];

  return v22();
}

void sub_10002C30C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_10002C3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10002C414(char a1))(uint64_t, void)
{
  v3 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64);
  __chkstk_darwin();
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Log();
  sub_100029B18(v4, qword_100063E38);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010004DB40;
  v8._countAndFlagsBits = 0xD000000000000047;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v15 = &type metadata for Bool;
  v9 = a1 & 1;
  v14[0] = v9;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v14, &qword_100063A98, &qword_1000428E0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  result = (*((swift_isaMask & *v1) + 0x58))(v11);
  if (result)
  {
    v13 = result;
    result(v9, 0);
    return sub_100029D54(v13);
  }

  return result;
}

uint64_t sub_10002C658(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002DC68;

  return v7();
}

uint64_t sub_10002C740(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002C828;

  return v8();
}

uint64_t sub_10002C828()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10002D464(&qword_100063AD8, &qword_100042A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10002D884(a3, v24 - v10, &qword_100063AD8, &qword_100042A90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002DA64(v11, &qword_100063AD8, &qword_100042A90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10002DA64(a3, &qword_100063AD8, &qword_100042A90);

    return v22;
  }

LABEL_8:
  sub_10002DA64(a3, &qword_100063AD8, &qword_100042A90);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10002CC18(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002CD10;

  return v7(a1);
}

uint64_t sub_10002CD10()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Int sub_10002CE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002D464(&qword_100063AE0, qword_1000429C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10002CF70()
{
  v1 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  *(v0 + 80) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002CFFC, 0, 0);
}

uint64_t sub_10002CFFC()
{
  v1 = sub_10002CE08(&off_1000557E0);
  v0[11] = v1;
  sub_10002DBB0(&unk_100055800);
  type metadata accessor for ATDispatchCenter();
  v0[12] = static ATDispatchCenter.shared.getter();
  v2 = async function pointer to ATDispatchCenter.canAsk(to:requiredCapabilities:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10002D0CC;

  return ATDispatchCenter.canAsk(to:requiredCapabilities:)(0, v1);
}

uint64_t sub_10002D0CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  if (!v0)
  {
    v5 = v2[11];
    v6 = v2[12];

    v7 = v2[10];

    v8 = *(v4 + 8);

    __asm { BRAA            X2, X16 }
  }

  return (_swift_task_switch)(sub_10002D230, 0, 0);
}

uint64_t sub_10002D230()
{
  v1 = v0[11];
  v2 = v0[12];

  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v4 = v0[10];
  v5 = type metadata accessor for Log();
  sub_100029B18(v5, qword_100063E38);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x800000010004DD10;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = v0[6];
  v11 = v0[7];
  v0[5] = v11;
  v12 = sub_10002D4AC(v0 + 2);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64((v0 + 2), &qword_100063A98, &qword_1000428E0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  v14 = v0[10];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_10002D464(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_10002D4AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void type metadata accessor for APExceptionRequestType()
{
  if (!qword_100063AD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100063AD0);
    }
  }
}

unint64_t sub_10002D560()
{
  result = qword_100063AA0;
  if (!qword_100063AA0)
  {
    type metadata accessor for AskToWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063AA0);
  }

  return result;
}

void sub_10002D5D8()
{
  v2 = *(v0 + 24);
  v15 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v11 = *(v0 + 112);
  v9 = *(v0 + 128);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10002DC68;

  JUMPOUT(0x10002BBF0);
}

uint64_t sub_10002D6F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002DC68;

  return sub_10002C658(v2, v3, v5);
}

uint64_t sub_10002D7B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002DC68;

  return sub_10002C740(a1, v4, v5, v7);
}

uint64_t sub_10002D884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002D464(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D8EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002DC68;

  return sub_10002CC18(a1, v5);
}

uint64_t sub_10002D9A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002C828;

  return sub_10002CC18(a1, v5);
}

uint64_t sub_10002DA64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002D464(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002DAC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002C828;

  return sub_10002A0D0(v2);
}

uint64_t sub_10002DB70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10002DC04(uint64_t a1, uint64_t *a2)
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

NSString sub_10002DC6C()
{
  result = String._bridgeToObjectiveC()();
  qword_100063E60 = result;
  return result;
}

id sub_10002DD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToListenerObjc();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002DDF4(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v98 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v96 = &v91 - v10;
  v11 = __chkstk_darwin(v9);
  v97 = &v91 - v12;
  __chkstk_darwin(v11);
  v14 = &v91 - v13;
  v15 = sub_100029AB4();
  v16 = v5[2];
  v101 = v15;
  v103 = v16;
  (v16)(v14);
  v17 = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v106 = *(v18 + 72);
  v102 = v17;
  v20 = swift_allocObject();
  v95 = xmmword_100042890;
  *(v20 + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD000000000000025;
  v21._object = 0x800000010004DD80;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  v109 = type metadata accessor for ATResponse();
  *&aBlock = a1;
  v22 = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&aBlock);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v24 = v5[1];
  v100 = v4;
  v104 = v24;
  v105 = v5 + 1;
  v24(v14, v4);
  v25 = objc_opt_self();
  v26 = [v25 sharedStore];
  v27 = ATResponse.originalQuestion.getter();
  ATQuestion.id.getter();

  v28 = String._bridgeToObjectiveC()();

  v29 = [v26 getExceptionRequestWithUniqueIdentifier:v28];

  if (!v29)
  {
    return;
  }

  v30 = v22;
  if (ATResponse.isApproval.getter())
  {
    v31 = v100;
    v103(v14, v101, v100);
    *(swift_allocObject() + 16) = v95;
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    v104(v14, v31);
    v32 = [v29 bundleIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      v37 = [v29 adamID];
      if (v37)
      {
        v38 = v37;
        v39 = [v29 distributorID];
        if (v39)
        {
          v40 = v39;
          v98 = v36;
          v96 = v34;
          *&v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
          v43 = [v29 ageRatingValue];
          if (v43)
          {
            v44 = v43;
            v94 = v42;
            v45 = [v29 requesterDSID];
            if (v45)
            {
              v97 = v30;
              v46 = v45;
              v47 = v44;
              v48 = [objc_allocWithZone(STExceptionApp) initWithRequesterDSID:v46 bundleIdentifier:v33 adamID:objc_msgSend(v38 distributorID:"unsignedLongLongValue") ratingValue:{v40, objc_msgSend(v44, "unsignedLongLongValue")}];

              v49 = [v29 uniqueIdentifier];
              v50 = v98;
              if (v49)
              {
                v51 = v29;
                v52 = v49;
                v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v55 = v54;

                v29 = v51;
              }

              else
              {
                v53 = 0;
                v55 = 0;
              }

              v81 = v94;
              v82 = swift_allocObject();
              v83 = v96;
              v82[2] = v99;
              v82[3] = v83;
              v82[4] = v50;
              v82[5] = v38;
              v84 = v47;
              v85 = v95;
              v82[6] = v47;
              v82[7] = v85;
              v82[8] = v81;
              v82[9] = v53;
              v86 = v97;
              v82[10] = v55;
              v82[11] = v86;
              v110 = sub_100030AE0;
              v111 = v82;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              v108 = sub_10002FEA4;
              v109 = &unk_100055A78;
              v87 = _Block_copy(&aBlock);
              v88 = v86;

              v89 = v38;
              v90 = v84;

              [v48 addExceptionWithCompletionHandler:v87];

              _Block_release(v87);
              return;
            }
          }

          else
          {
          }

          v33 = v40;
        }

        else
        {
        }

        v31 = v100;
      }

      else
      {
      }
    }

    v103(v97, v101, v31);
    *(swift_allocObject() + 16) = xmmword_1000429E0;
    v109 = type metadata accessor for AskToListener();
    *&aBlock = v99;

    v78 = AMSLogKey();
    if (v78)
    {
      v79 = v78;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    v80 = v97;
    Log.error(_:)();

    v104(v80, v31);
  }

  else
  {
    v97 = v22;
    *&v95 = v29;
    v56 = v96;
    v103(v96, v101, v100);
    v94 = v19 + 2 * v106;
    v57 = swift_allocObject();
    v93 = xmmword_1000429E0;
    *(v57 + 16) = xmmword_1000429E0;
    v92 = type metadata accessor for AskToListener();
    v109 = v92;
    *&aBlock = v99;

    v58 = AMSLogKey();
    if (v58)
    {
      v59 = v58;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    v60 = v56;
    v61 = v100;
    v104(v60, v100);
    v62 = v95;
    [v95 setApprovalStatus:2];
    v63 = [v25 sharedStore];
    [v63 storeRequest:v62];

    v103(v98, v101, v61);
    *(swift_allocObject() + 16) = v93;
    v109 = v92;
    *&aBlock = v99;

    v64 = AMSLogKey();
    if (v64)
    {
      v65 = v64;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    v66 = v98;
    Log.default(_:)();

    v104(v66, v61);
    v67 = sub_1000309C0(&_swiftEmptyArrayStorage);
    v114 = v67;
    v68 = [v62 metadata];
    if (v68)
    {
      v69 = v68;
      v109 = sub_100030B38(0, &qword_100063AF0, APAskToAgeRestrictionMetadata_ptr);
      *&aBlock = v69;
      sub_100030AD0(&aBlock, v113);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v67;
      sub_100030660(v113, 0x617461646174656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v71 = v112;
    }

    else
    {
      sub_10003009C(0x617461646174656DLL, 0xE800000000000000, &aBlock);
      sub_10002FF70(&aBlock);
      v71 = v114;
    }

    v72 = ATResponse.isApproval.getter();
    v109 = &type metadata for Bool;
    LOBYTE(aBlock) = v72 & 1;
    sub_100030AD0(&aBlock, v113);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v71;
    sub_100030660(v113, 0x766F727070417369, 0xEA00000000006465, v73);
    v74 = v112;
    sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
    v75 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100063E00 != -1)
    {
      swift_once();
    }

    v76 = qword_100063E60;
    sub_10002FBDC(v74);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v75 postNotificationName:v76 object:0 userInfo:isa];
  }
}

void sub_10002EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v137 = a8;
  v136 = a7;
  v139 = a5;
  v140 = a6;
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v119 - v20;
  __chkstk_darwin(v19);
  v142 = &v119 - v22;
  v23 = type metadata accessor for Log();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v27 = __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v29 = __chkstk_darwin(&v119 - v28);
  v30 = __chkstk_darwin(v29);
  v32 = &v119 - v31;
  v33 = __chkstk_darwin(v30);
  v38 = &v119 - v37;
  v143 = v24;
  if (a1)
  {
    swift_errorRetain();
    v39 = sub_100029AB4();
    (*(v24 + 16))(v32, v39, v23);
    sub_10002D464(&qword_100063A90, &unk_100042A00);
    v40 = *(type metadata accessor for LogInterpolation() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    *(swift_allocObject() + 16) = xmmword_1000429E0;
    v151 = type metadata accessor for AskToListener();
    *&v149 = a2;

    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v149);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v56._countAndFlagsBits = 0xD000000000000023;
    v56._object = 0x800000010004E010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
    swift_getErrorValue();
    v57 = v144;
    v58 = v145;
    v151 = v145;
    v59 = sub_10002D4AC(&v149);
    (*(*(v58 - 1) + 16))(v59, v57, v58);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v149);
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v60);
    LogInterpolation.init(stringInterpolation:)();
    Log.error(_:)();

    (*(v143 + 8))(v32, v23);
    return;
  }

  *&v126 = a3;
  v125 = v33;
  *(&v126 + 1) = a4;
  v119 = v21;
  v120 = v36;
  v45 = v139;
  v46 = v140;
  v121 = v35;
  v123 = v34;
  v124 = v18;
  v47 = sub_100029AB4();
  v48 = *(v24 + 16);
  v133 = v47;
  v138 = v23;
  v135 = v24 + 16;
  v134 = v48;
  (v48)(v38);
  v49 = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v50 = *(type metadata accessor for LogInterpolation() - 8);
  v51 = *(v50 + 80);
  v52 = (v51 + 32) & ~v51;
  v141 = *(v50 + 72);
  v129 = v51;
  v132 = v49;
  v130 = v52 + 2 * v141;
  v53 = swift_allocObject();
  v128 = xmmword_1000429E0;
  *(v53 + 16) = xmmword_1000429E0;
  v131 = v52;
  v127 = type metadata accessor for AskToListener();
  v151 = v127;
  *&v149 = a2;

  v54 = AMSLogKey();
  if (v54)
  {
    v55 = v54;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v149);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v61 = *(v143 + 8);
  v62 = v138;
  v143 += 8;
  v140 = v61;
  v61(v38, v138);
  v63 = objc_opt_self();
  v64 = [v63 sharedStore];
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 getExceptionRequestsWithBundleID:v65 adamID:v45 ratingValue:v46];

  v122 = a2;
  if (!v66)
  {
    v134(v120, v133, v62);
    *(swift_allocObject() + 16) = v128;
    v151 = v127;
    *&v149 = a2;

    v70 = AMSLogKey();
    if (v70)
    {
      v71 = v70;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v85 = v137;
    v86 = v136;
    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v149);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v87._countAndFlagsBits = 0xD000000000000043;
    v87._object = 0x800000010004DF30;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
    v151 = &type metadata for String;
    v149 = v126;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v149);
    v88._object = 0x800000010004DF80;
    v88._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v88);
    v151 = &type metadata for String;
    *&v149 = v86;
    *(&v149 + 1) = v85;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v149);
    v89._countAndFlagsBits = 0x44496D616461202CLL;
    v89._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
    v90 = sub_100030B38(0, &qword_100063BC0, NSNumber_ptr);
    v151 = v90;
    *&v149 = v45;
    v91 = v45;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v149);
    v92._countAndFlagsBits = 0x676E69746172202CLL;
    v92._object = 0xEF203A65756C6156;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v92);
    v151 = v90;
    *&v149 = v46;
    v93 = v46;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v149);
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v94);
    LogInterpolation.init(stringInterpolation:)();
    v95 = v120;
    Log.error(_:)();

    v77 = v138;
    v140(v95, v138);
    v84 = a9;
    v83 = a10;
    if (!a10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  sub_100030B38(0, &qword_100063BD0, off_1000547B8);
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v134(v125, v133, v62);
  *(swift_allocObject() + 16) = v128;
  v151 = v127;
  *&v149 = a2;

  v68 = AMSLogKey();
  if (v68)
  {
    v69 = v68;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v149);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v72._countAndFlagsBits = 0x676E697461647055;
  v72._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v72);
  v73 = (v67 >> 62);
  if (v67 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v151 = &type metadata for Int;
  *&v149 = v74;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&v149);
  v75._countAndFlagsBits = 0xD000000000000019;
  v75._object = 0x800000010004DFF0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v75);
  LogInterpolation.init(stringInterpolation:)();
  v76 = v125;
  Log.default(_:)();

  v77 = v138;
  v140(v76, v138);
  if (!v73)
  {
    v78 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      goto LABEL_16;
    }

LABEL_25:

    v84 = a9;
    v83 = a10;
    if (!a10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v78 = _CocoaArrayWrapper.endIndex.getter();
  if (!v78)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v78 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v79 = 0;
  do
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v80 = *(v67 + 8 * v79 + 32);
    }

    v81 = v80;
    ++v79;
    [v80 setApprovalStatus:1];
    v82 = [v63 sharedStore];
    [v82 storeRequest:v81];
  }

  while (v78 != v79);

  v77 = v138;
  v84 = a9;
  v83 = a10;
  if (a10)
  {
LABEL_28:
    v96 = [v63 sharedStore];
    v97 = String._bridgeToObjectiveC()();
    v67 = [v96 getExceptionRequestWithUniqueIdentifier:v97];

    if (!v67)
    {
      goto LABEL_31;
    }

    v134(v121, v133, v77);
    *(swift_allocObject() + 16) = v128;
    v151 = v127;
    *&v149 = v122;

    v98 = AMSLogKey();
    if (v98)
    {
      v99 = v98;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v149);
    LogInterpolation.init(stringLiteral:)();
    v107 = v121;
    Log.default(_:)();

    v140(v107, v77);
    v108 = sub_1000309C0(&_swiftEmptyArrayStorage);
    v148 = v108;
    v109 = [v67 metadata];
    if (v109)
    {
      v110 = v109;
      v111 = [v109 compile];

      v112 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = sub_10002D464(&qword_100063BC8, &qword_100042A30);
      *&v149 = v112;
      sub_100030AD0(&v149, &v147);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v108;
      sub_100030660(&v147, 0x617461646174656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v114 = v146;
    }

    else
    {
      sub_10003009C(0x617461646174656DLL, 0xE800000000000000, &v149);
      sub_10002FF70(&v149);
      v114 = v148;
    }

    v115 = ATResponse.isApproval.getter();
    v151 = &type metadata for Bool;
    LOBYTE(v149) = v115 & 1;
    sub_100030AD0(&v149, &v147);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v114;
    sub_100030660(&v147, 0x766F727070417369, 0xEA00000000006465, v116);
    v78 = v146;
    sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
    v73 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100063E00 == -1)
    {
LABEL_41:
      v117 = qword_100063E60;
      sub_10002FBDC(v78);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v73 postNotificationName:v117 object:0 userInfo:isa];

      return;
    }

LABEL_44:
    swift_once();
    goto LABEL_41;
  }

LABEL_31:
  v134(v123, v133, v77);
  *(swift_allocObject() + 16) = v128;
  v151 = v127;
  *&v149 = v122;

  v100 = AMSLogKey();
  if (v100)
  {
    v101 = v100;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v149);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v102._countAndFlagsBits = 0xD000000000000047;
  v102._object = 0x800000010004DFA0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
  if (v83)
  {
    v103 = &type metadata for String;
    v104 = v83;
  }

  else
  {
    v84 = 0;
    v104 = 0;
    v103 = 0;
    v150 = 0;
  }

  *&v149 = v84;
  *(&v149 + 1) = v104;
  v151 = v103;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&v149);
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v105);
  LogInterpolation.init(stringInterpolation:)();
  v106 = v123;
  Log.error(_:)();

  v140(v106, v77);
}

uint64_t sub_10002FBDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002D464(&qword_100063BD8, &qword_100042A38);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100030B80(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100030AD0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100030AD0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100030AD0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100030AD0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10002FEA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10002FF70(uint64_t a1)
{
  v2 = sub_10002D464(&qword_100063A98, &qword_1000428E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FFD8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100030024(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100030140(a1, a2, v6);
}

double sub_10003009C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100030024(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003081C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100030AD0((*(v12 + 56) + 32 * v9), a3);
    sub_1000304B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_100030140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000301F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10002D464(&qword_100063BE0, &qword_100042A40);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100030AD0(v25, v37);
      }

      else
      {
        sub_100030B80(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100030AD0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000304B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100030660(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100030024(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003081C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000301F8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100030024(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10002FFD8(v23);

    return sub_100030AD0(a1, v23);
  }

  else
  {
    sub_1000307B0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1000307B0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100030AD0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10003081C()
{
  v1 = v0;
  sub_10002D464(&qword_100063BE0, &qword_100042A40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100030B80(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100030AD0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1000309C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002D464(&qword_100063BE0, &qword_100042A40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100030BDC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100030024(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100030AD0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100030AD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100030B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030B38(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100030B80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100030BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002D464(&qword_100063BE8, &qword_100042A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030C4C()
{
  v1 = (v0 + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_100029CE4(v3);
  return v3;
}

uint64_t sub_100030CA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100029D54(v6);
}

void *sub_100030D68()
{
  v1 = OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100030DB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100030E6C()
{
  result = [objc_allocWithZone(type metadata accessor for ExceptionRequestLocalApprovalManager()) init];
  qword_100063E68 = result;
  return result;
}

id sub_100030EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*((swift_isaMask & *v4) + 0x98))();
  v7 = [objc_opt_self() timerWithTimeInterval:v4 target:"handleTimeout" selector:0 userInfo:0 repeats:90.0];
  (*((swift_isaMask & *v4) + 0x80))(v7);
  v8 = *((swift_isaMask & *v4) + 0x68);

  v8(a3, a4);
  v9 = objc_opt_self();

  return [v9 activateRemotePINUI];
}

void sub_1000311B0()
{
  sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 addObserver:v0 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void sub_10003123C()
{
  sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void (*sub_1000312C0())(void)
{
  v1 = v0;
  v2 = type metadata accessor for Log();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100029AB4();
  (*(v3 + 16))(v6, v7, v2);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v11 = (*(v3 + 8))(v6, v2);
  v12 = (*((swift_isaMask & *v1) + 0xA0))(v11);
  result = (*((swift_isaMask & *v1) + 0x60))(v12);
  if (result)
  {
    v14 = result;
    result(0);
    return sub_100029D54(v14);
  }

  return result;
}

void sub_100031534(void *a1)
{
  v2 = v1;
  (*((swift_isaMask & *v1) + 0xA0))();
  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_100031D00(v12), (v8 & 1) == 0))
  {

    sub_1000328A8(v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_100030B80(*(v6 + 56) + 32 * v7, &v13);
  sub_1000328A8(v12);

  if (!*(&v14 + 1))
  {
LABEL_11:
    sub_10002DA64(&v13, &qword_100063A98, &qword_1000428E0);
    return;
  }

  sub_100030B38(0, &qword_100063BC0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v9 = v12[0];
    v10 = (*((swift_isaMask & *v2) + 0x60))();
    if (v10)
    {
      v11 = v10;
      v10([v9 BOOLValue]);
      sub_100029D54(v11);
    }
  }
}

uint64_t sub_100031790(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C828;

  return (sub_100031E0C)(a1, a2);
}

uint64_t sub_1000319C8(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_100031A98;

  return sub_100031E0C(v3, v5);
}

uint64_t sub_100031A98()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;

  v8 = *(v3 + 16);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 16));
  v10 = *(v7 + 8);

  return v10();
}

id sub_100031C7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExceptionRequestLocalApprovalManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100031D00(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100031D44(a1, v4);
}

unint64_t sub_100031D44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000328FC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000328A8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100031E0C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Log();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(sub_10002D464(&qword_100063C28, &qword_100042AD0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return (_swift_task_switch)(sub_100031F98, 0, 0);
}

uint64_t sub_100031F98()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = v0[7];
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002DA64(v0[12], &qword_100063C28, &qword_100042AD0);
LABEL_17:
    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[8];
    v35 = v0[9];
    v37 = v0[6];
    v36 = v0[7];
    v38 = sub_100029AB4();
    (*(v33 + 16))(v32, v38, v35);
    sub_10002D464(&qword_100063A90, &unk_100042A00);
    v39 = *(type metadata accessor for LogInterpolation() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_100042890;
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 0xD00000000000004FLL;
    v42._object = 0x800000010004E200;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
    v0[5] = &type metadata for String;
    v0[2] = v37;
    v0[3] = v36;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002DA64((v0 + 2), &qword_100063A98, &qword_1000428E0);
    v43._object = 0x800000010004E250;
    v43._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v33 + 8))(v32, v35);
    [objc_allocWithZone(NSError) initWithDomain:APErrorDomain code:4 userInfo:0];
    swift_willThrow();
    v45 = v0[15];
    v44 = v0[16];
    v47 = v0[11];
    v46 = v0[12];
    v48 = v0[8];

    v49 = v0[1];

    return v49();
  }

  v6 = v0[6];
  v7 = v0[7];
  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  v8 = [objc_opt_self() sharedStore];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 getExceptionRequestWithUniqueIdentifier:v9];
  v0[17] = v10;

  if (!v10)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
    goto LABEL_17;
  }

  v11 = [v10 title];
  if (!v11)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_17;
  }

  v12 = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v10 message];
  if (!v13)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

LABEL_16:

    goto LABEL_17;
  }

  v14 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [v10 preApproveTitle];
  if (!v15)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_16;
  }

  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [v10 postApproveTitle];
  if (!v17)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_16;
  }

  v18 = v17;
  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[13];
  v22 = v0[14];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ATQuestion();
  (*(v22 + 16))(v20, v19, v21);
  v23 = *sub_100029BAC();
  v24 = ATQuestion.__allocating_init(id:topic:title:summary:)();
  v0[18] = v24;
  v25 = sub_100029B50();
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());

  v29 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  v0[19] = v29;
  ATAnswerChoice.kind.setter();
  type metadata accessor for ATDispatchCenter();
  v0[20] = static ATDispatchCenter.shared.getter();
  v30 = async function pointer to ATDispatchCenter.updateMessageBubble(_:responderHandle:answerChoice:)[1];
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_1000325A4;

  return ATDispatchCenter.updateMessageBubble(_:responderHandle:answerChoice:)(v24, 0, 0xE000000000000000, v29);
}

uint64_t sub_1000325A4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v5 = sub_1000327B8;
  }

  else
  {
    v5 = sub_1000326D8;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_1000326D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);

  (*(v5 + 8))(v3, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000327B8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 176);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 64);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100032970()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002C828;

  return sub_1000319C8(v2, v3);
}

void sub_1000388A4(id a1)
{
  v1 = qword_100063E30;
  qword_100063E30 = &off_1000580F0;
}

void sub_10003A584(id a1)
{
  v1 = +[APLogConfig sharedDaemonConfig];
  if (!v1)
  {
    v1 = +[APLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received SIGTERM, stopping daemon", v3, 2u);
  }

  exit(0);
}

void sub_10003AD5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v8 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v30 = 138543618;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v6;
      v15 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to authenticate user. Error: %{public}@", &v30, 0x16u);
    }

LABEL_26:

    v23 = APError();
    v22 = 0;
    goto LABEL_27;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 stringValue], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v25 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no DSID", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v9)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v27 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no password", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  v17 = +[APLogConfig sharedDaemonConfig];
  v12 = v17;
  if (!v11)
  {
    if (!v17)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v29 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no username", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v17)
  {
    v12 = +[APLogConfig sharedConfig];
  }

  v18 = [v12 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v30 = 138543362;
    v31 = objc_opt_class();
    v20 = v31;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticated user succesfully", &v30, 0xCu);
  }

  v21 = [v7 stringValue];
  v22 = [[User alloc] initWithDSID:v21 username:v11 password:v9 biometricsToken:0];

  v23 = 0;
LABEL_27:
  (*(*(a1 + 32) + 16))(*(a1 + 32), v22, v23);
}