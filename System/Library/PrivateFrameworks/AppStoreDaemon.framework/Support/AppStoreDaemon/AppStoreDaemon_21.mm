void sub_100243234(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002432FC;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1002432FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v45 = 0;
  v4 = sub_100240960(v2, v3, &v45);
  v5 = v45;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      v8 = "Error getting proxy for beta app with bundleID %{public}@: %{public}@";
      v9 = v6;
      v10 = 22;
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }
  }

  else if (v4 && (v11 = *(a1 + 32), sub_1003FA4F0(XPCRequestToken, 1), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = sub_1002429C4(v11, v4, v12), v12, v11))
  {
    v13 = *(a1 + 32);
    v14 = sub_1003FA4F0(XPCRequestToken, 1);
    v6 = sub_100240A2C(v13, v4, v14);

    v46 = 0;
    v47 = &v46;
    v48 = 0x2050000000;
    v15 = qword_1005AA8C0;
    v49 = qword_1005AA8C0;
    if (!qword_1005AA8C0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1002479B8;
      v52 = &unk_10051E318;
      v53 = &v46;
      sub_1002479B8(buf);
      v15 = v47[3];
    }

    v16 = v15;
    _Block_object_dispose(&v46, 8);
    v17 = [v6 localizedNames];
    v18 = [v17 allKeys];
    v19 = [v6 primaryLocale];
    v39 = [v15 preferredLocaleKeyFromAvailableKeys:v18 primaryLocaleKey:v19];

    v20 = [v6 localizedNames];
    v21 = [v20 objectForKeyedSubscript:v39];
    v22 = v21;
    if (v21)
    {
      v38 = v21;
    }

    else
    {
      v24 = [v4 iTunesMetadata];
      v38 = [v24 itemName];
    }

    v25 = [AMSDialogRequest alloc];
    v26 = ASDLocalizedString();
    v27 = [NSString stringWithFormat:v26, v38];
    v28 = ASDLocalizedString();
    v29 = [v25 initWithTitle:v27 message:v28];

    v30 = ASDLocalizedString();
    v31 = [AMSDialogAction actionWithTitle:v30 style:2];

    v32 = ASDLocalizedString();
    v33 = [AMSDialogAction actionWithTitle:v32 style:0];

    v50[0] = v31;
    v50[1] = v33;
    v34 = [NSArray arrayWithObjects:v50 count:2];
    [v29 setButtonActions:v34];

    [v29 setDefaultAction:v33];
    v35 = [KeepAlive keepAliveWithName:@"com.apple.appstored.BetaAppCrashed"];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100243830;
    v40[3] = &unk_10051D160;
    v41 = v33;
    v42 = *(a1 + 40);
    v43 = *(a1 + 48);
    v44 = v35;
    v36 = v35;
    v37 = v33;
    sub_1003124D4(InteractiveRequestPresenter, v29, v40);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      *buf = 138543362;
      *&buf[4] = v23;
      v8 = "Failed to find a beta app with bundleID: %{public}@";
      v9 = v6;
      v10 = 12;
      goto LABEL_12;
    }
  }
}

void sub_100243810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100243830(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 selectedActionIdentifier];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 isEqualToString:v8];

  v10 = ASDLogHandleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 40);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User pressed share on dialog for crash of beta app with bundleID: %{public}@", &buf, 0xCu);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v13 = qword_1005AA8E0;
    v24 = qword_1005AA8E0;
    if (!qword_1005AA8E0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v26 = sub_100247BA8;
      v27 = &unk_10051E318;
      v28 = &v21;
      sub_100247BA8(&buf);
      v13 = v22[3];
    }

    v14 = v13;
    _Block_object_dispose(&v21, 8);
    v15 = [v13 alloc];
    v10 = [v15 initWithBundleIdentifier:{*(a1 + 40), v21}];
    [v10 setIncidentId:*(a1 + 48)];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v16 = qword_1005AA8E8;
    v24 = qword_1005AA8E8;
    if (!qword_1005AA8E8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v26 = sub_100247C18;
      v27 = &unk_10051E318;
      v28 = &v21;
      sub_100247C18(&buf);
      v16 = v22[3];
    }

    v17 = v16;
    _Block_object_dispose(&v21, 8);
    v18 = [v16 alloc];
    v19 = [v18 initWithConfiguration:{v10, v21}];
    [v19 presentFeedbackViewController];
  }

  else if (v11)
  {
    v20 = *(a1 + 40);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User pressed cancel on dialog for crash of beta app with bundleID: %{public}@", &buf, 0xCu);
  }
}

void sub_100243B04(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100243B80;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100243B8C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100245E9C(a1, a2);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          sub_1002466E8(a1, *(*(&v8 + 1) + 8 * v7));
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_100243C84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100243D20;
    v6[3] = &unk_10051E650;
    v7 = v3;
    [v5 modifyUsingTransaction:v6];
  }
}

void sub_100243D30(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100243E28;
    block[3] = &unk_10051E500;
    block[4] = a1;
    v17 = a2;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    dispatch_async(v12, block);
  }
}

void sub_100243E28(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10024081C;
  v19 = sub_10024082C;
  v20 = 0;
  v2 = *(*(a1 + 32) + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100244064;
  v11[3] = &unk_10051E4D8;
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = &v15;
  [v2 modifyUsingTransaction:v11];
  if (v16[5])
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = v16[5];
      *buf = 138543874;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ error updating feedback enabled state for version %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100244110;
  block[3] = &unk_10051E4B0;
  v9 = *(a1 + 56);
  v10 = &v15;
  dispatch_async(v4, block);

  _Block_object_dispose(&v15, 8);
}

void sub_100244040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100244064(uint64_t a1, _BOOL8 a2)
{
  v3 = sub_1003CC054(a2, *(a1 + 48), *(a1 + 32));
  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"Failed to find a beta app with version %@", *(a1 + 32)];
    v5 = ASDErrorWithDescription();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return v3;
}

void sub_10024412C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10024421C;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_10024421C(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10024081C;
  v18 = sub_10024082C;
  v19 = 0;
  v2 = *(*(a1 + 32) + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10024446C;
  v11[3] = &unk_10051E570;
  v12 = *(a1 + 40);
  v13 = &v14;
  [v2 modifyUsingTransaction:v11];
  if (v15[5])
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) version];
      v7 = v15[5];
      *buf = 138543874;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ error updating launch info for version %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v4 = *(*(a1 + 32) + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100244514;
  v8[3] = &unk_10051E4B0;
  v9 = *(a1 + 56);
  v10 = &v14;
  dispatch_async(v4, v8);

  _Block_object_dispose(&v14, 8);
}

void sub_100244444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024446C(uint64_t a1, void *a2)
{
  v3 = sub_1003CC198(a2, *(a1 + 32));
  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"Failed to save launch info %@", *(a1 + 32)];
    v5 = ASDErrorWithDescription();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return v3;
}

void sub_100244530(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100244628;
    block[3] = &unk_10051E500;
    block[4] = a1;
    v17 = a2;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    dispatch_async(v12, block);
  }
}

void sub_100244628(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10024081C;
  v19 = sub_10024082C;
  v20 = 0;
  v2 = *(*(a1 + 32) + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100244864;
  v11[3] = &unk_10051E4D8;
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = &v15;
  [v2 modifyUsingTransaction:v11];
  if (v16[5])
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = v16[5];
      *buf = 138543874;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ error updating launch screen enabled state for version %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100244910;
  block[3] = &unk_10051E4B0;
  v9 = *(a1 + 56);
  v10 = &v15;
  dispatch_async(v4, block);

  _Block_object_dispose(&v15, 8);
}

void sub_100244840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100244864(uint64_t a1, _BOOL8 a2)
{
  v3 = sub_1003CC684(a2, *(a1 + 48), *(a1 + 32));
  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"Failed to find a beta app with version %@", *(a1 + 32)];
    v5 = ASDErrorWithDescription();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return v3;
}

void sub_10024492C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100244A1C;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100244A1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleID];
  v17 = 0;
  v4 = sub_100240960(v2, v3, &v17);
  v5 = v17;

  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [v4 URL];
    sub_100244C10(v6, v7, v8, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = [*(a1 + 40) bundleID];
      v13 = [v5 localizedDescription];
      *buf = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ error submitting feedback for %{public}@: %{public}@", buf, 0x20u);
    }

    v10 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100245204;
    block[3] = &unk_10051B790;
    v16 = *(a1 + 56);
    v15 = v5;
    dispatch_async(v10, block);
  }
}

void sub_100244C10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = +[ACAccountStore ams_sharedAccountStore];
    v14 = [v13 ams_activeiTunesAccount];

    if (v14)
    {
      v15 = [v14 ams_DSID];

      if (v15)
      {
        v16 = v14;
LABEL_12:
        v21 = [v16 ams_DSID];
        v22 = v21 == 0;

        if (!v22)
        {
          v50 = 0;
          v51 = &v50;
          v52 = 0x2020000000;
          v53 = 0;
          v23 = *(a1 + 32);
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1002474C8;
          v45[3] = &unk_10051E5C0;
          v49 = &v50;
          v24 = v9;
          v46 = v24;
          v47 = v10;
          v16 = v16;
          v48 = v16;
          [v23 modifyUsingTransaction:v45];
          if (v51[3])
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v56 = sub_10024081C;
            v57 = sub_10024082C;
            v58 = 0;
            v25 = *(a1 + 32);
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_100247558;
            v44[3] = &unk_10051E5E8;
            v44[4] = buf;
            v44[5] = &v50;
            [v25 readUsingSession:v44];
            v26 = *(*&buf[8] + 40);
            if (v26)
            {
              sub_1002469F8(a1, v26);
            }

            v27 = *(a1 + 24);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1002475B4;
            block[3] = &unk_10051BD28;
            v43 = v12;
            dispatch_async(v27, block);

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v30 = [v24 appVersion];
            v31 = [NSString stringWithFormat:@"Failed to save feedback for app version %@", v30];

            v32 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v36 = [v24 appVersion];
              *buf = 138543874;
              *&buf[4] = v11;
              *&buf[12] = 2114;
              *&buf[14] = v36;
              *&buf[22] = 2114;
              v56 = v31;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@ error submitting feedback for version %{public}@: %{public}@", buf, 0x20u);
            }

            v33 = *(a1 + 24);
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_1002475C8;
            v39[3] = &unk_10051B790;
            v40 = v31;
            v41 = v12;
            v34 = v31;
            dispatch_async(v33, v39);
          }

          _Block_object_dispose(&v50, 8);
LABEL_24:

          goto LABEL_25;
        }

LABEL_17:
        v28 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v35 = [v9 appVersion];
          *buf = 138543362;
          *&buf[4] = v35;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to submit feedback for version %{public}@ because there is no active account", buf, 0xCu);
        }

        v29 = *(a1 + 24);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100247638;
        v37[3] = &unk_10051BD28;
        v38 = v12;
        dispatch_async(v29, v37);

        goto LABEL_24;
      }
    }

    v54 = 0;
    v16 = sub_100245C18(a1, v14, &v54);
    v17 = v54;

    v18 = ASDLogHandleForCategory();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_11;
      }

      *buf = 138543362;
      *&buf[4] = v17;
      v20 = "Attempt to establish primary account resulted in error: %{public}@";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_11;
      }

      *buf = 138543362;
      *&buf[4] = v16;
      v20 = "Logged into account: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
LABEL_11:

    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_25:
}

void sub_100245204(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) localizedDescription];
  v2 = ASDErrorWithDescription();
  (*(v1 + 16))(v1, v2);
}

void sub_100245288(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100245398;
    block[3] = &unk_10051C9E8;
    block[4] = a1;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v13, block);
  }
}

void sub_1002453AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002454BC;
    block[3] = &unk_10051C9E8;
    block[4] = a1;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v13, block);
  }
}

void sub_1002454BC(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10024081C;
  v19 = sub_10024082C;
  v20 = 0;
  v2 = *(*(a1 + 32) + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100245704;
  v11[3] = &unk_10051E528;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = &v15;
  [v2 modifyUsingTransaction:v11];
  if (v16[5])
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      v7 = v16[5];
      *buf = 138543874;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ error updating test notes for version %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002457BC;
  block[3] = &unk_10051E4B0;
  v9 = *(a1 + 64);
  v10 = &v15;
  dispatch_async(v4, block);

  _Block_object_dispose(&v15, 8);
}

void sub_1002456E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100245704(uint64_t a1, _BOOL8 a2)
{
  if (a2 && sub_1003CC0D4(a2, *(a1 + 32), @"what_to_test", *(a1 + 40)))
  {
    return 1;
  }

  v4 = [NSString stringWithFormat:@"Failed to find a beta app with version %@", *(a1 + 40)];
  v5 = ASDErrorWithDescription();
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

void sub_1002457D8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100245854;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_10024585C(uint64_t a1)
{
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_10024081C;
    v24 = sub_10024082C;
    v25 = 0;
    v2 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1002476A8;
    v19[3] = &unk_10051E610;
    v19[4] = &v20;
    [v2 readUsingSession:v19];
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v21[5] count];
      *buf = 134217984;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found %lu pending TestFlight feedback submissions", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v21[5];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = sub_100202894(v10);
          v12 = v11;
          if (v11 && ([v11 timeIntervalSinceNow], v13 >= 0.0))
          {
            if (!v7 || [v12 compare:v7] == -1)
            {
              v14 = v12;

              v7 = v14;
            }
          }

          else
          {
            sub_1002469F8(a1, v10);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v6);

      if (v7)
      {
        sub_10024635C(v7);
      }
    }

    else
    {

      v7 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }
}

void sub_100245AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100245B20(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          sub_100243B8C(a1, *(*(&v9 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

id sub_100245C18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setAuthenticationType:1];
  [v6 setDebugReason:@"TestFlight Feedback"];
  v7 = [v5 username];

  ASDLocalizedString();
  if (v7)
    v8 = {;
    v9 = [v5 username];
    v10 = [NSString localizedStringWithFormat:v8, v9];
    [v6 setReason:v10];
  }

  else
    v8 = {;
    [v6 setReason:v8];
  }

  v11 = [AMSAuthenticateTask alloc];
  v12 = +[BagService appstoredService];
  v13 = [v12 amsBag];
  v14 = [v11 initWithAccount:v5 options:v6 bag:v13];

  [v14 setDelegate:a1];
  v15 = [v14 performAuthentication];
  v20 = 0;
  v16 = [v15 resultWithError:&v20];
  v17 = v20;

  if (v16)
  {
    v18 = [v16 account];
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = 0;
  if (a3)
  {
LABEL_6:
    *a3 = ASDErrorWithSafeUserInfo();
  }

LABEL_7:

  return v18;
}

BOOL sub_100245E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BetaAppFeedbackEntity alloc];
  v5 = *(a1 + 32);
  v6 = [v3 connection];

  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];
  v8 = [(SQLiteEntity *)v7 deleteFromDatabase];

  return v8;
}

void *sub_100245E9C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10024081C;
    v14 = sub_10024082C;
    v15 = 0;
    v5 = a1[4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100245FC8;
    v7[3] = &unk_10051E488;
    v9 = &v10;
    v8 = v3;
    [v5 readUsingSession:v7];
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_100245FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100245FC8(uint64_t a1, void *a2)
{
  v3 = sub_100395974(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10024601C(uint64_t a1, id a2)
{
  v3 = sub_1003962F8(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100246070(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 50);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = sub_1002024C8(v4);
  v6 = (v5 + 1);
  v7 = +[BagService appstoredService];
  v8 = [v7 lastBag];
  v9 = [v8 arrayOfIntegersForKey:@"testflight-visual-feedback/backoff-delays"];
  v10 = v9;
  v11 = &off_100549350;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if (v6 > 1)
  {
    v13 = v5 + 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = (v13 - 1);
  if ([v12 count] <= v14)
  {
  }

  else
  {
    v15 = [v12 objectAtIndexedSubscript:v14];

    if (v15)
    {
      v16 = [v15 integerValue];
      v17 = +[BagService appstoredService];
      v18 = [v17 lastBag];
      v19 = [v18 integerForKey:@"testflight-visual-feedback/backoff-random-range" defaultValue:10];

      v20 = [NSDate dateWithTimeIntervalSinceNow:(60 * (v16 + arc4random_uniform(v19 + 1)))];
      sub_100202BC0(v4, v6);
      if (v4)
      {
        sub_10023E000(v4, v20, @"next_retry_date");
      }

      v21 = [v20 dateByAddingTimeInterval:10.0];
      sub_10024635C(v21);

      sub_100246440(a1, v4);
      goto LABEL_17;
    }
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_10020272C(v4);
    v24 = [v23 appVersion];
    LODWORD(v27) = 67109378;
    HIDWORD(v27) = v6;
    LOWORD(v28) = 2114;
    *(&v28 + 2) = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No delay specified for attempt %d for %{public}@, deleting it", &v27, 0x12u);
  }

  v25 = [(LogKey *)v4 databaseID];
  v26 = *(a1 + 32);
  v27 = _NSConcreteStackBlock;
  *&v28 = 3221225472;
  *(&v28 + 1) = sub_100245E14;
  v29 = &unk_10051E548;
  v30 = v25;
  [v26 modifyUsingTransaction:&v27];
  v15 = 0;
LABEL_17:
}

void sub_10024635C(void *a1)
{
  v1 = a1;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling next submission attempt for %{public}@", &v4, 0xCu);
  }

  v3 = sub_1001DA8BC();
  sub_1001DBB6C(v3, 8, @"com.apple.appstored.submitTestFlightFeedback", v1, @"Next TestFlightFeedback Retry Date");
}

void sub_100246440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002474B8;
  v6[3] = &unk_10051E650;
  v5 = v3;
  v7 = v5;
  [v4 modifyUsingTransaction:v6];
}

id sub_100246588(uint64_t a1, void *a2)
{
  result = sub_10039650C(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1002465C4(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if ([v3 isBeta])
    {
      v5 = v4;
      goto LABEL_7;
    }

    v6 = [v4 URL];
    v7 = [NSString stringWithFormat:@"Failed to find a beta app: %@", v6];
  }

  else
  {
    v6 = [0 bundleIdentifier];
    v7 = [NSString stringWithFormat:@"Failed to find a valid app: %@", v6];
  }

  *a2 = ASDErrorWithDescription();

  v5 = 0;
LABEL_7:

  return v5;
}

void sub_1002466E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v18 = v3;
    v4 = [v3 bundleID];
    v19 = 0;
    v5 = sub_100240960(a1, v4, &v19);
    v6 = v19;

    if (v5)
    {
      v7 = [v18 bundleID];
      v8 = [v5 bundleIdentifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [v18 bundleVersion];
        v10 = [v5 exactBundleVersion];
        if ([v9 isEqualToString:v10])
        {
          v11 = [v18 shortVersion];
          v12 = [v5 shortVersionString];
          v13 = [v11 isEqualToString:v12];

          v14 = v13 ^ 1;
        }

        else
        {
          v14 = 1;
        }

        if (!v6 && !v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v15 = v18;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v16 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100246904;
    v20[3] = &unk_10051E570;
    v22 = v23;
    v17 = v15;
    v21 = v17;
    [v16 modifyUsingTransaction:v20];

    _Block_object_dispose(v23, 8);
LABEL_8:

    v3 = v18;
  }
}

void sub_1002468EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100246904(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = sub_1003CC704(a2, *(a1 + 32));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = 1;
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to find a beta app with version %{public}@", &v7, 0xCu);
    }

    v3 = *(*(*(a1 + 40) + 8) + 24);
  }

  return v3 & 1;
}

void sub_1002469F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 databaseID]);
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 16) lock];
    v6 = *(a1 + 8);
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 databaseID]);
    [v6 addObject:v7];

    [*(a1 + 16) unlock];
    v8 = sub_100297400(TestFlightFeedbackUploadTask, *(a1 + 32), v3);
    objc_initWeak(&location, v8);
    objc_initWeak(&from, a1);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100246BD4;
    v14 = &unk_10051E598;
    objc_copyWeak(&v15, &from);
    objc_copyWeak(&v16, &location);
    [v8 setCompletionBlock:&v11];
    v9 = sub_100284B90();
    v10 = v9;
    if (v9)
    {
      [*(v9 + 8) addOperation:{v8, v11, v12, v13, v14}];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void sub_100246BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_100246BD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  [WeakRetained[2] lock];
  v3 = WeakRetained[1];
  if (v2)
  {
    v4 = *(v2 + 50);
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 databaseID]);
    [v3 removeObject:v5];

    [WeakRetained[2] unlock];
    Property = objc_getProperty(v2, v6, 32, 1);
  }

  else
  {
    v69 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [0 databaseID]);
    [v3 removeObject:v69];

    [WeakRetained[2] unlock];
    Property = 0;
  }

  v8 = Property;

  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    if (v2)
    {
      v52 = *(v2 + 50);
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    v54 = sub_1002026B0(v53);
    if (v2)
    {
      v55 = *(v2 + 50);
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;
    v58 = sub_1002024C8(v56);
    if (v2)
    {
      v59 = objc_getProperty(v2, v57, 32, 1);
    }

    else
    {
      v59 = 0;
    }

    v60 = v59;
    *buf = 138412802;
    *&buf[4] = v54;
    *&buf[12] = 1024;
    *&buf[14] = v58;
    *&buf[18] = 2114;
    *&buf[20] = v60;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: Error uploading TestFlightFeedback (attempt %d): %{public}@", buf, 0x1Cu);
  }

  if (v2)
  {
    v11 = objc_getProperty(v2, v10, 32, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 code];

  if (v13 <= 400)
  {
    v14 = WeakRetained;
    if (v13 == -1009)
    {
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        if (v2)
        {
          v63 = *(v2 + 50);
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;
        v65 = sub_1002026B0(v64);
        if (v2)
        {
          v66 = *(v2 + 50);
        }

        else
        {
          v66 = 0;
        }

        v67 = v66;
        v68 = sub_100202AE4(v67);
        *buf = 138412546;
        *&buf[4] = v65;
        *&buf[12] = 2048;
        *&buf[14] = v68;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%@]: Failed to connect to the internet to upload feedback, waiting for connectivity at state: %lu", buf, 0x16u);
      }

      v19 = +[NSNotificationCenter defaultCenter];
      v35 = sub_100227468();
      [v19 addObserver:WeakRetained selector:"_handleNetworkStateDidChangeNotification:" name:@"NetworkStateDidChangeNotification" object:v35];

      goto LABEL_38;
    }

    if (v13 != 400)
    {
LABEL_42:
      sub_100246070(v14, v2);
      goto LABEL_39;
    }

    v22 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    if (v2)
    {
      v23 = *(v2 + 50);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = sub_1002026B0(v24);
    *buf = 138412290;
    *&buf[4] = v25;
    v26 = "[%@]: We were told by the server the the payload is malformed.  We're dropping this feedback";
    goto LABEL_70;
  }

  v14 = WeakRetained;
  if (v13 != 401)
  {
    if (v13 != 413)
    {
      if (v13 == 429)
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v2)
          {
            v16 = *(v2 + 50);
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;
          v18 = sub_1002026B0(v17);
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@]: The server asked us to throttle our requests, rescheduling to try again later", buf, 0xCu);
        }

        v19 = [NSDate dateWithTimeIntervalSinceNow:600.0];
        if (v2)
        {
          v20 = *(v2 + 50);
          v21 = v20;
          if (v20)
          {
            sub_10023E000(v20, v19, @"next_retry_date");
          }
        }

        else
        {
          v21 = 0;
        }

        sub_100246440(WeakRetained, v21);
        sub_10024635C(v19);

        goto LABEL_38;
      }

      goto LABEL_42;
    }

    v22 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    if (v2)
    {
      v62 = *(v2 + 50);
    }

    else
    {
      v62 = 0;
    }

    v24 = v62;
    v25 = sub_1002026B0(v24);
    *buf = 138412290;
    *&buf[4] = v25;
    v26 = "[%@]: We were told by the server the the payload is too large.  We're dropping this feedback";
LABEL_70:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);

LABEL_33:
    if (v2)
    {
      v31 = *(v2 + 50);
    }

    else
    {
      v31 = 0;
    }

    v19 = v31;
    v32 = [v19 databaseID];
    v33 = WeakRetained[4];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100245E14;
    *&buf[24] = &unk_10051E548;
    v73 = v32;
    [v33 modifyUsingTransaction:buf];
LABEL_38:

    goto LABEL_39;
  }

  if (v2)
  {
    v27 = *(v2 + 50);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v29 = sub_100202AE4(v28);

  if (v29 == 1)
  {
    if (v2)
    {
      v30 = *(v2 + 50);
    }

    else
    {
      v30 = 0;
    }

    v19 = v30;
    sub_100202D5C(v19, 0);
    sub_100246440(WeakRetained, v19);
    sub_100246070(WeakRetained, v2);
    goto LABEL_38;
  }

  v36 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v37 = *(v2 + 50);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = sub_1002026B0(v38);
    *buf = 138412290;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%@]: We need to authenticate before we can submit feedback", buf, 0xCu);
  }

  if (v2)
  {
    v40 = *(v2 + 50);
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  v42 = sub_100202490(v41);

  v43 = +[ACAccountStore ams_sharedAccountStore];
  v44 = [v43 ams_iTunesAccountWithDSID:v42];

  v71 = 0;
  v45 = sub_100245C18(WeakRetained, v44, &v71);
  v46 = v71;
  v47 = ASDLogHandleForCategory();
  v48 = v47;
  if (v46)
  {
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        v49 = *(v2 + 50);
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;
      v51 = sub_1002026B0(v50);
      *buf = 138412546;
      *&buf[4] = v51;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%@]: Error authenticating account: %{public}@", buf, 0x16u);
LABEL_65:
    }
  }

  else if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v61 = *(v2 + 50);
    }

    else
    {
      v61 = 0;
    }

    v50 = v61;
    v51 = sub_1002026B0(v50);
    *buf = 138412290;
    *&buf[4] = v51;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully authenticated", buf, 0xCu);
    goto LABEL_65;
  }

  sub_100246070(WeakRetained, v2);
LABEL_39:
}

BOOL sub_1002474C8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 ams_DSID];
  v8 = sub_1003CB95C(v6, v3, v4, v7);

  *(*(a1[7] + 8) + 24) = v8;
  return *(*(a1[7] + 8) + 24) != 0;
}

void sub_100247558(uint64_t a1, id a2)
{
  v3 = sub_100396450(a2, *(*(*(a1 + 40) + 8) + 24));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002475C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = ASDErrorWithDescription();
  (*(v1 + 16))(v1, v2);
}

void sub_100247638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithDescription();
  (*(v1 + 16))(v1, v2);
}

void sub_1002476A8(uint64_t a1, void *a2)
{
  v3 = sub_1003961E0(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100247854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002479B8(uint64_t a1)
{
  sub_100247A28();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TFLocale");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AA8C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100247A28();
  }
}

void sub_100247A28()
{
  v1[0] = 0;
  if (!qword_1005AA8C8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100247B34;
    v1[4] = &unk_10051BD00;
    v1[5] = v1;
    v2 = off_10051E630;
    v3 = 0;
    qword_1005AA8C8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_1005AA8C8)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_100247B34()
{
  result = _sl_dlopen();
  qword_1005AA8C8 = result;
  return result;
}

Class sub_100247BA8(uint64_t a1)
{
  sub_100247A28();
  result = objc_getClass("TFFeedbackHandleConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AA8E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100247C18(v3);
  }

  return result;
}

Class sub_100247C18(uint64_t a1)
{
  sub_100247A28();
  result = objc_getClass("TFFeedbackHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AA8E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(RequestEnvironment *)v3 copyWithZone:v4, v5];
  }

  return result;
}

id sub_100247D70(void *a1)
{
  if (a1)
  {
    a1 = [NSURLProtocol propertyForKey:@"com.apple.appstored.RequestTag" inRequest:a1];
    v1 = vars8;
  }

  return a1;
}

void sub_100247DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = a1;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Attached tag: %@ to request: %@", &v5, 0x16u);
    }

    [NSURLProtocol setProperty:v3 forKey:@"com.apple.appstored.RequestTag" inRequest:a1];
  }
}

void sub_100247EA0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100247F04(a1, a2);
    if (v3)
    {
      v4 = v3;
      [a1 _adoptEffectiveConfiguration:v3];
      v3 = v4;
    }
  }
}

id sub_100247F04(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _effectiveConfiguration];
    v5 = [v4 _sessionConfiguration];

    v7 = [[NSURLSessionConfiguration alloc] _initWithConfiguration:v5];
    if (v3)
    {
      v8 = objc_getProperty(v3, v6, 8, 1);
      if (v8)
      {
        v9 = v8;
        v10 = [v8 bundleIdentifier];
        [v7 set_sourceApplicationBundleIdentifier:v10];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100247FE0(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = objc_opt_self();
  v12 = sub_10024806C(v11, v10, a3, a4, 1, a5, a6);

  return v12;
}

id sub_10024806C(uint64_t a1, void *a2, uint64_t a3, char *a4, id a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = objc_opt_self();
  v27 = 0;
  v26 = 0;
  v15 = sub_100248214(v13, v12, a3, v14, a6, &v27, &v26);
  v16 = v26;
  v17 = v16;
  if (a6 && !v15)
  {
    v25 = v16;
    v18 = sub_10024840C(v13, v12, &v25);
    v19 = v25;

    if (!v18)
    {
      goto LABEL_9;
    }

    v24 = v19;
    v15 = sub_100248548(v13, v12, a3, 1, &v27, &v24);
    v17 = v24;
  }

  if (!v15)
  {
    v19 = v17;
LABEL_9:
    if (!a7)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ([v15 creatorIdentifier] == a5)
  {
    sub_1002485D0(v15, a4, 0);
    goto LABEL_15;
  }

  v23 = v17;
  v21 = sub_1002487CC(v15, &v23);
  v19 = v23;

  if (!v21)
  {

    if (!a7)
    {
      goto LABEL_13;
    }

LABEL_10:
    v20 = v19;
    v15 = 0;
    *a7 = v19;
  }

LABEL_14:
  v17 = v19;
LABEL_15:

  return v15;
}

id sub_100248214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  objc_opt_self();
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
        v13 = IXRestoringAppInstallCoordinator;
      }

      else
      {
        v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
        v13 = IXRestoringDemotedAppInstallCoordinator;
      }

      goto LABEL_18;
    }

    if (a3 == 5)
    {
      v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
      v13 = IXPromotingAppInstallCoordinator;
      goto LABEL_18;
    }

    if (a3 == 6)
    {
      v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
      v13 = IXGizmoInstallingAppInstallCoordinator;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v14 = NSInvalidArgumentException;
    v15 = @"Passing an intent of 'lib_IXCoordinatorIntentAny' is not supported.";
LABEL_14:
    [NSException raise:v14 format:v15, v18, v19];
    v16 = 0;
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
    v13 = IXInitiatingAppInstallCoordinator;
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_13:
    v14 = NSInvalidArgumentException;
    v18 = v11;
    v19 = a3;
    v15 = @"Don't know how to find coordinator for bundle ID: %@ with intent: %lu";
    goto LABEL_14;
  }

  v12 = [[IXApplicationIdentity alloc] initWithBundleID:v11];
  v13 = IXUpdatingAppInstallCoordinator;
LABEL_18:
  v16 = [v13 coordinatorForAppWithIdentity:v12 withClientID:1 createIfNotExisting:a5 created:a6 error:a7];

LABEL_19:

  return v16;
}

uint64_t sub_10024840C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v14 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002493A4;
  v11[3] = &unk_10051E678;
  v5 = v4;
  v12 = v5;
  v13 = &v15;
  [IXAppInstallCoordinator enumerateCoordinatorsWithError:&v14 usingBlock:v11];
  v6 = v14;
  v7 = v6;
  v8 = *(v16 + 24);
  if (a3 && (v16[3] & 1) == 0)
  {
    v9 = v6;
    *a3 = v7;
    v8 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v8 & 1;
}

void sub_100248530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100248548(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = objc_opt_self();
  v13 = sub_100248214(v11, v10, a3, v12, a4, a5, a6);

  return v13;
}

uint64_t sub_1002485D0(void *a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithImportance])
  {
    if (!a3)
    {
      return a3;
    }
    v9 = ;
    *a3 = ASDErrorWithDescription();

    return 0;
  }

  v6 = a1;
  v7 = [v6 importanceWithError:a3];
  if ((a2 - 1) > 3)
  {
    v8 = -1;
  }

  else
  {
    v8 = qword_10044BB58[(a2 - 1)];
  }

  if ((v7 - 1) > 3)
  {
    v10 = -1;
  }

  else
  {
    v10 = qword_10044BB58[(v7 - 1)];
  }

  if (v8 <= v10)
  {
    if (v7 != a2)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = IXStringForCoordinatorImportance();
        v14 = IXStringForCoordinatorImportance();
        v15 = [v6 uniqueIdentifier];
        *buf = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v15;
      }
    }

    a3 = 1;
  }

  else
  {
    a3 = [v6 setImportance:a2 error:a3];
  }

  return a3;
}

BOOL sub_1002487CC(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if ([a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
  {
    v11 = 0;
    v4 = [a1 appAssetPromiseResponsibleClientWithError:&v11];
    v5 = v11;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v4 == 1;
  if (a2 && v4 != 1)
  {
    v7 = [NSMutableDictionary dictionaryWithCapacity:2];
    v8 = objc_claimAutoreleasedReturnValue();
    [v7 setObject:v8 forKeyedSubscript:NSDebugDescriptionErrorKey];

    [v7 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [NSNumber numberWithUnsignedInteger:v4];
    [v7 setObject:v9 forKeyedSubscript:@"coordinatorOwnerID"];

    *a2 = [NSError errorWithDomain:ASDErrorDomain code:803 userInfo:v7];
  }

  return v6;
}

id sub_100248934(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100248A80;
  v15 = sub_100248A90;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100248A98;
  v8[3] = &unk_10051E678;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [IXAppInstallCoordinator enumerateCoordinatorsWithError:a3 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_100248A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100248A80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100248A98(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *(*(*(a1 + 40) + 8) + 40) == 0;

  return v7;
}

id sub_100248B24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  if (v6)
  {
    if (v7)
    {
      v9 = [[IXApplicationIdentity alloc] initWithBundleID:v7];
      v10 = [IXAppInstallCoordinator existingCoordinatorForAppWithIdentity:v9 error:a4];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 uniqueIdentifier];
        v13 = [v12 isEqual:v6];

        if ((v13 & 1) == 0)
        {
          if (a4)
          {
            v17 = [v11 uniqueIdentifier];
            *a4 = ASDErrorWithUserInfoAndFormat();
          }

          v11 = 0;
        }
      }
    }

    else
    {
      v14 = v8;
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Using the slow path to locate coordinator: %{public}@", buf, 0xCu);
      }

      v11 = sub_100248934(v14, v6, a4);
    }
  }

  else if (a4)
  {
    ASDErrorWithUserInfoAndFormat();
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_100248D24(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = objc_opt_self();
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 16, 1);
    Property = objc_getProperty(v4, v8, 8, 1);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v10 = sub_100248B24(v6, v7, Property, a3);

  return v10;
}

id sub_100248DD8(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 8, 1);
  }

  return result;
}

void *sub_100248DEC(void *result)
{
  if (result)
  {
    return ([result creatorIdentifier] == 1);
  }

  return result;
}

uint64_t sub_100248E14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 2;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 5;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return 4;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v2 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
            {
              v3 = 138543362;
              v4 = v1;
              _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to determine intent for coordinator: %{public}@", &v3, 0xCu);
            }

            return 1;
          }

          return 6;
        }
      }
    }
  }

  return result;
}

id sub_100248F9C(void *a1)
{
  if (!a1 || ![a1 hasPlaceholderPromise])
  {
    return 0;
  }

  v2 = [a1 placeholderPromiseWithError:0];
  v3 = [v2 isComplete];

  return v3;
}

id sub_100248FF4(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 uniqueIdentifier];
    v3 = [v1 identity];
    v4 = [v3 bundleID];
    v1 = sub_100249094(lib_IXAppInstallCoordinatorTag, v2, v4);
  }

  return v1;
}

lib_IXAppInstallCoordinatorTag *sub_100249094(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(lib_IXAppInstallCoordinatorTag);
  v7 = [v4 copy];

  bundleID = v6->_bundleID;
  v6->_bundleID = v7;

  v9 = [v5 copy];
  coordinatorID = v6->_coordinatorID;
  v6->_coordinatorID = v9;

  return v6;
}

id sub_100249134(uint64_t a1, void *a2)
{
  objc_opt_self();
  v11 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100249224;
  v9[3] = &unk_10051E6A0;
  v3 = objc_alloc_init(NSMutableDictionary);
  v10 = v3;
  v4 = [IXAppInstallCoordinator enumerateCoordinatorsWithError:&v11 usingBlock:v9];
  v5 = v11;
  v6 = v5;
  if (a2 && (v4 & 1) == 0)
  {
    v7 = v5;
    *a2 = v6;
  }

  return v3;
}

uint64_t sub_100249224(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1002487CC(v3, 0))
  {
    if (v3 && (![v3 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise] || sub_100248F9C(v3)) && (!objc_msgSend(v3, "conformsToProtocol:", &OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises) || objc_msgSend(v3, "conformsToProtocol:", &OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises) && objc_msgSend(v3, "hasInitialODRAssetPromises")))
    {
      if (![v3 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise] || objc_msgSend(v3, "conformsToProtocol:", &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise) && objc_msgSend(v3, "hasAppAssetPromise") && (objc_msgSend(v3, "appAssetPromiseWithError:", 0), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, v6 = objc_msgSend(v4, "isComplete"), v5, v6))
      {
        if ([v3 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInstallOptions])
        {
          if ([v3 hasInstallOptions])
          {
            v7 = 4;
          }

          else
          {
            v7 = 2;
          }
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSNumber numberWithUnsignedInteger:v7];
    v9 = *(a1 + 32);
    v10 = [v3 uniqueIdentifier];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  return 1;
}

uint64_t sub_1002493A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 bundleID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    if (v3 && [v3 creatorIdentifier] == 1)
    {
      v7 = [NSError errorWithDomain:ASDErrorDomain code:506 userInfo:0];
      *(*(*(a1 + 40) + 8) + 24) = [v3 cancelForReason:v7 client:1 error:0];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  return v8;
}

id sub_100249490(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v9 = [IXAppInstallCoordinator updateSINFForAppWithIdentity:v8 sinfData:v7 options:0 error:a5];

  return v9;
}

id sub_100249504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = sub_100249578(v7, v6, a3, a4, v6);

  return v8;
}

id sub_100249578(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [v9 domain];
  v12 = [v11 isEqualToString:ASDErrorDomain];

  if (!v12)
  {
    v14 = [v9 domain];
    v15 = [v14 isEqualToString:ASDServerErrorDomain];

    if (v15)
    {
      v16 = [v9 code];
      if (v16 > 3603)
      {
        if (v16 != 3604 && v16 != 3903)
        {
          goto LABEL_19;
        }
      }

      else if (v16 != 3601 && v16 != 3603)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = [v9 domain];
      v18 = [v17 isEqualToString:AKAppleIDAuthenticationErrorDomain];

      if (!v18 || [v9 code] != -7003)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_22;
  }

  v13 = [v9 code];
  if (v13 > 744)
  {
    if (v13 != 745 && v13 != 751)
    {
      goto LABEL_19;
    }

LABEL_22:
    v21 = IXCreateUserPresentableError();
    goto LABEL_23;
  }

  if (v13 == 530 || v13 == 744)
  {
    goto LABEL_22;
  }

LABEL_19:
  v19 = [v9 userInfo];
  v20 = [v19 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v20)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v21 = sub_100249578(v10, v8, a3, a4, v20);
  v9 = v20;
LABEL_23:

LABEL_24:

  return v21;
}

id sub_1002497A4(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"Feedback" client:1 diskSpaceNeeded:0];
      [v4 setPercentComplete:1.0];
      [v4 setComplete:1];
      v2 = [v2 setPreparationPromise:v4 withError:a2];
    }

    else
    {
      if (!a2)
      {
        return 0;
      }
      v4 = ;
      ASDErrorWithDescription();
      *a2 = v2 = 0;
    }
  }

  return v2;
}

BOOL sub_10024989C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    return (objc_opt_isKindOfClass() & 1) == 0 || ![v1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise] || objc_msgSend(v1, "appAssetPromiseResponsibleClientWithError:", 0) != 1;
  }

  return result;
}

id sub_100249914(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises])
  {
    if (a2)
      v5 = {;
      *a2 = ASDErrorWithDescription();
    }

    return 0;
  }

  return [a1 setInitialODRAssetPromises:&__NSArray0__struct error:a2];
}

id sub_1002499D4(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    if ([a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise])
    {
      v4 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"fake-promise" client:1 diskSpaceNeeded:0];
      [v4 setPercentComplete:1.0];
      [v4 setComplete:1];
      v2 = [v2 setUserDataPromise:v4 error:a2];
    }

    else
    {
      if (!a2)
      {
        return 0;
      }
      v4 = ;
      ASDErrorWithDescription();
      *a2 = v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_100249ACC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if (!v5)
  {
    v6 = ASDErrorWithDescription();
  }

  if ([a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise] && (!+[AMSDevice deviceIsAppleTV](AMSDevice, "deviceIsAppleTV") || sub_100248E14(a1) != 3) && objc_msgSend(a1, "conformsToProtocol:", &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise))
  {
    v17 = 0;
    v7 = [a1 appAssetPromiseWithError:&v17];
    v8 = v17;
    v9 = v8;
    if (!v7)
    {

      v7 = [[IXPromisedStreamingZipTransfer alloc] initWithName:@"fake-promise" client:1 streamingZipOptions:&__NSDictionary0__struct archiveSize:0 diskSpaceNeeded:0];
      v16 = 0;
      v10 = [a1 setAppAssetPromise:v7 error:&v16];
      v9 = v16;
      if ((v10 & 1) == 0)
      {
        [v7 cancelForReason:v9 client:1 error:0];
      }
    }

    if ([v7 isComplete])
    {
      v11 = 0;
    }

    else
    {
      v15 = v9;
      v11 = [v7 cancelForReason:v6 client:1 error:&v15];
      v14 = v15;

      v9 = v14;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = [a1 cancelForReason:v6 client:1 error:a3];
  v9 = 0;
  if (a3)
  {
LABEL_14:
    if ((v11 & 1) == 0)
    {
      v12 = v9;
      *a3 = v9;
    }
  }

LABEL_16:
  v18 = v11;

LABEL_17:
  return v18;
}

void *sub_100249CB4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
    v6 = ;
    *a3 = ASDErrorWithDescription();

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setTargetGizmoPairingID:v5 error:a3];
LABEL_7:

  return a3;
}

id sub_100249D80(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithImportance])
  {
    if (a2)
      v5 = {;
      *a2 = ASDErrorWithDescription();
    }

    return 0;
  }

  return [a1 importanceWithError:a2];
}

void *sub_100249E38(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
  {
    if (!a3)
    {
      goto LABEL_7;
    }
    v6 = ;
    *a3 = ASDErrorWithDescription();

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setAppAssetPromise:v5 error:a3];
LABEL_7:

  return a3;
}

void *sub_100249EFC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises])
  {
    if (!a3)
    {
      goto LABEL_7;
    }
    v6 = ;
    v9 = NSDebugDescriptionErrorKey;
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *a3 = [NSError errorWithDomain:ASDErrorDomain code:807 userInfo:v7];

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setInitialODRAssetPromises:v5 error:a3];
LABEL_7:

  return a3;
}

void *sub_10024A028(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInstallOptions])
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v8 = NSDebugDescriptionErrorKey;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    *a3 = [NSError errorWithDomain:ASDErrorDomain code:807 userInfo:v6];

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setInstallOptions:v5 error:a3];
LABEL_7:

  return a3;
}

void *sub_10024A138(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise])
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v8 = NSDebugDescriptionErrorKey;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    *a3 = [NSError errorWithDomain:ASDErrorDomain code:807 userInfo:v6];

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setPlaceholderPromise:v5 error:a3];
LABEL_7:

  return a3;
}

id sub_10024A248(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if ([a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithEssentialAssetPromises])
    {
      a1 = [v4 essentialAssetPromisesWithError:a2];
    }

    else
    {
      if (a2)
        v5 = {;
        *a2 = ASDErrorWithDescription();
      }

      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

void *sub_10024A2FC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithEssentialAssetPromises])
  {
    if (!a3)
    {
      goto LABEL_7;
    }
    v6 = ;
    *a3 = ASDErrorWithDescription();

LABEL_6:
    a3 = 0;
    goto LABEL_7;
  }

  a3 = [a1 setEssentialAssetPromises:v5 error:a3];
LABEL_7:

  return a3;
}

id sub_10024A3C0(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPostProcessingPromises])
  {
    if (a3)
      v6 = {;
      *a3 = ASDErrorWithDescription();
    }

    return 0;
  }

  return [a1 setNeedsPostProcessing:a2 error:a3];
}

id sub_10024A660(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"Unknown (%lu)", a1];
  }

  else
  {
    v2 = *(&off_10051E6C0 + a1);
  }

  return v2;
}

id sub_10024A6D0()
{
  objc_opt_self();
  if (qword_1005AA8F8 != -1)
  {
    dispatch_once(&qword_1005AA8F8, &stru_10051E6F8);
  }

  v0 = qword_1005AA900;

  return v0;
}

void sub_10024A728(id a1)
{
  v1 = +[AMSProcessInfo currentProcess];
  v2 = +[BagService appstoredService];
  v3 = [v2 lastBagNoAsyncBlocking];
  v4 = [v3 amsBag];
  v9 = [NSURLSessionConfiguration ams_configurationWithProcessInfo:v1 bag:v4];

  v5 = [[AMSURLSession alloc] initWithConfiguration:v9];
  v6 = qword_1005AA900;
  qword_1005AA900 = v5;

  v7 = sub_10024A84C(qword_1005AA900);
  [qword_1005AA900 setDelegate:v7];
  v8 = sub_1001C5584([_ProtocolHandler alloc], v7);
  [qword_1005AA900 setProtocolHandler:v8];
}

_ProtocolDelegate *sub_10024A84C(void *a1)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = objc_getAssociatedObject(a1, &unk_10044BB78);
    if (!v2)
    {
      v2 = objc_alloc_init(_ProtocolDelegate);
      objc_setAssociatedObject(a1, &unk_10044BB78, v2, 0x301);
    }

    os_unfair_lock_unlock(&unk_1005AA8F0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10024A8EC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = +[AMSProcessInfo currentProcess];
  v8 = sub_10024A984(v6, v5, v7, v4);

  return v8;
}

id sub_10024A984(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [v6 amsBag];

  v10 = [NSURLSessionConfiguration ams_configurationWithProcessInfo:v7 bag:v9];

  v11 = [[AMSURLSession alloc] initWithConfiguration:v10 delegate:v8 delegateQueue:0];

  return v11;
}

id sub_10024AA54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v10 = [v7 amsBag];

  [v9 ams_configureWithProcessInfo:v8 bag:v10];
  v11 = [v8 bundleIdentifier];

  [v9 set_sourceApplicationBundleIdentifier:v11];
  v12 = [[AMSURLSession alloc] initWithConfiguration:v9 delegate:v6 delegateQueue:0];

  return v12;
}

id sub_10024AB48(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 copy];
    objc_initWeak(&location, a1);
    v9 = [AMSMutableLazyPromise alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10024AC9C;
    v12[3] = &unk_10051E770;
    objc_copyWeak(&v15, &location);
    v12[4] = a1;
    v13 = v5;
    v10 = v8;
    v14 = v10;
    a1 = [v9 initWithBlock:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return a1;
}

void sub_10024AC78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10024AC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = sub_10024A84C(*(a1 + 32));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 40);
  if (isKindOfClass)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v7 mutableCopy];
  }

  v9 = v8;
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];

  sub_100247DB4(v9, v11);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10024AF20;
  v30 = sub_10024AF30;
  v12 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10024AF38;
  v22[3] = &unk_10051E720;
  v13 = v5;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = v3;
  v25 = v15;
  v31 = [WeakRetained dataTaskWithRequest:v12 completionHandler:v22];
  if (v13 && v14)
  {
    sub_1001C0C5C(v13[1], *(a1 + 48), v14);
  }

  [v27[5] resume];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024AFC4;
  v18[3] = &unk_10051E748;
  v16 = v13;
  v19 = v16;
  v17 = v14;
  v20 = v17;
  v21 = &v26;
  [v15 addErrorBlock:v18];

  _Block_object_dispose(&v26, 8);
}

void sub_10024AF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024AF20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10024AF38(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v7 = a1[4];
  v6 = a1[5];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    sub_1001C0C5C(*(v7 + 8), 0, v6);
  }

  v9 = a1[6];
  if (v5)
  {
    [v9 finishWithError:v5];
  }

  else
  {
    [v9 finishWithResult:v10];
  }
}

void sub_10024AFC4(void *a1, void *a2)
{
  v6 = a2;
  v4 = a1[4];
  v3 = a1[5];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1001C0C5C(*(v4 + 8), 0, v3);
  }

  if ([v6 code] == 1 || objc_msgSend(v6, "code") == 3072)
  {
    [*(*(a1[6] + 8) + 40) cancel];
  }
}

id sub_10024B054(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10024B2B0;
  v21 = sub_10024B2C0;
  v22 = 0;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"parent_id" equalToLongLong:a2];
  v24[0] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"blocked" equalToValue:&__kCFBooleanFalse];
  v24[1] = v6;
  v7 = [NSArray arrayWithObjects:v24 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = sub_1002D3F5C(AppPackageEntity, v4, v8);
  v23 = @"package_type";
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10024B2C8;
  v14[3] = &unk_10051E7B0;
  v16 = &v17;
  v11 = v4;
  v15 = v11;
  [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v14];

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

void sub_10024B28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024B2B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10024B2C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = a3;
  v9 = [(SQLiteEntity *)[AppPackageEntity alloc] initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = sub_1002381D0(v8, @"package_type");
  if (v12 == 1)
  {
    *a5 = 1;
  }
}

id sub_10024B378(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = sub_10024BAD0(InstallAttributionPingback, @"redownload", v2);
  if (v3)
  {
    *(v3 + 11) = v4;
  }

  v5 = sub_1002380D8(v2, @"signature");
  sub_100232BA0(v3, v5);

  v6 = sub_1002380D8(v2, @"version");
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"1.0";
  }

  sub_10024BB8C(v3, v8);
  v9 = sub_1002380D8(v2, @"url");
  sub_100240104(v3, v9);

  v10 = sub_1002380D8(v2, @"transaction-id");
  sub_100232B90(v3, v10);

  v11 = sub_10023790C(v2, @"adam-id");
  sub_100232B70(v3, v11);

  if (v3)
  {
    if (!*(v3 + 136))
    {
      v15 = 1;
      v14 = 1;
LABEL_18:
      *(v3 + 160) = v14;
      *(v3 + 13) = v15;
      v18 = sub_1002380D8(v2, @"ad-network-id");
      objc_storeStrong((v3 + 32), v18);

      *(v3 + 120) = 0;
      goto LABEL_19;
    }

    if (ASDInstallAttributionVersionCreateFromString() < 202)
    {
      v14 = 1;
    }

    else
    {
      v12 = sub_100237E9C(v2, @"fidelity-type");
      if (!v12)
      {
        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v51 = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "SKAdNetwork: No fidelity type found in postback", v51, 2u);
        }

        v30 = 2;
        goto LABEL_36;
      }

      v13 = v12;
      v14 = [v12 integerValue];
    }

    if (!*(v3 + 136) || ASDInstallAttributionVersionCreateFromString() < 300)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v16 = [v2 allKeys];
    v17 = [v16 containsObject:@"did-win"];

    if (v17)
    {
      v15 = sub_10024BAD0(InstallAttributionPingback, @"did-win", v2);
      goto LABEL_18;
    }

    v30 = 3;
LABEL_36:
    sub_10024BBA8(InstallAttributionPingback, v30, v2);
    v32 = 0;
    goto LABEL_65;
  }

  sub_1002380D8(v2, @"ad-network-id");

LABEL_19:
  v19 = +[NSDate date];
  [v19 timeIntervalSince1970];
  v21 = [NSNumber numberWithDouble:v20 * 1000.0];

  sub_10024020C(v3, v21);
  if (!v3)
  {
    sub_10024BAD0(InstallAttributionPingback, @"send-conversion-value", v2);
LABEL_54:
    v41 = sub_100237E9C(v2, @"campaign-id");
    if (!v41)
    {
      v44 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "SKAdNetwork: No campaign id found in postback", v46, 2u);
      }

      v25 = 1;
      goto LABEL_62;
    }

    v27 = v41;
    v42 = [v41 integerValue];
    if (v3)
    {
      *(v3 + 40) = v42;
    }

    v43 = sub_10023790C(v2, @"origin-adam-id");
    sub_100232BB0(v3, v43);

    sub_100232BF0(v3, v21);
    goto LABEL_58;
  }

  *(v3 + 12) = 0;
  objc_storeStrong((v3 + 144), v21);
  *(v3 + 88) = 0;
  objc_storeStrong((v3 + 152), 0);
  if (!*(v3 + 136) || ASDInstallAttributionVersionCreateFromString() < 400)
  {
    *(v3 + 8) = sub_10024BAD0(InstallAttributionPingback, @"send-conversion-value", v2);
    goto LABEL_54;
  }

  v22 = sub_10024BAD0(InstallAttributionPingback, @"send-fine-conversion-value", v2);
  v23 = sub_10024BAD0(InstallAttributionPingback, @"send-coarse-conversion-value", v2);
  *(v3 + 9) = v22;
  *(v3 + 10) = v23;
  if (v22 && v23)
  {
    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "SKAdNetwork: Hierarchical conversion value inconsistency. Aborting.", buf, 2u);
    }

    v25 = 8;
LABEL_62:
    sub_10024BBA8(InstallAttributionPingback, v25, v2);
    goto LABEL_63;
  }

  v26 = sub_100237E9C(v2, @"postback-sequence-index");
  v27 = v26;
  if (!v26)
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v49 = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SKAdNetwork: No sequence index found in postback", v49, 2u);
    }

    v29 = 7;
    goto LABEL_40;
  }

  if ([v26 integerValue] >= 3)
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v48 = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SKAdNetwork: Postback sequence index is invalid", v48, 2u);
    }

    v29 = 9;
LABEL_40:

    v33 = v29;
LABEL_41:
    sub_10024BBA8(InstallAttributionPingback, v33, v2);

LABEL_63:
    v32 = 0;
    goto LABEL_64;
  }

  *(v3 + 168) = [v27 integerValue];
  v34 = sub_1002380D8(v2, @"source-identifier");
  v35 = sub_10023790C(v2, @"source-identifier");
  if (!(v34 | v35))
  {
    v40 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "SKAdNetwork: No source identifier found in postback", v47, 2u);
    }

    v33 = 6;
    goto LABEL_41;
  }

  v36 = v35;
  if (!v34)
  {
    v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v35 intValue]);
  }

  sub_100232BC0(v3, v34);
  v37 = sub_10023790C(v2, @"origin-adam-id");
  sub_100232BB0(v3, v37);

  if (!*(v3 + 64))
  {
    v38 = sub_1002380D8(v2, @"source-domain");
    sub_100232BD0(v3, v38);
  }

  sub_1002401FC(v3, @"none");
  sub_100232BF0(v3, 0);
  *(v3 + 15) = 0;
  v39 = sub_1002380D8(v2, @"country-code");
  objc_storeStrong((v3 + 184), v39);

LABEL_58:
  v32 = v3;
LABEL_64:

LABEL_65:

  return v32;
}

id sub_10024BAD0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_1002380D8(v5, v4);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 lowercaseString];
    v9 = [v8 isEqualToString:@"true"];
  }

  else if (v5)
  {
    v9 = sub_1002378BC(v5, v4, 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10024BB8C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

uint64_t sub_10024BB9C(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

void sub_10024BBA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v7 = objc_opt_new();
  v5 = sub_1002380D8(v4, @"ad-network-id");

  [v7 setObject:v5 forKeyedSubscript:@"adNetworkID"];
  v6 = [NSNumber numberWithInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:@"boundedIssueType"];

  [v7 setObject:&off_1005474A0 forKeyedSubscript:@"boundedPostbackType"];
  sub_1003F25C4(Analytics, v7, 5);
}

void sub_10024BCA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_10024BCB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_10024BCC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

uint64_t sub_10024BCD0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 10);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id sub_10024BCE8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = sub_1002380D8(v2, @"version");
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"1.0";
  }

  sub_10024BB8C(v3, v6);
  v7 = sub_10024BAD0(InstallAttributionPingback, @"redownload", v2);
  if (v3)
  {
    *(v3 + 11) = v7;
  }

  v8 = sub_1002380D8(v2, @"signature");
  sub_100232BA0(v3, v8);

  v9 = sub_1002380D8(v2, @"url");
  sub_100240104(v3, v9);

  v10 = sub_1002380D8(v2, @"transactionId");
  sub_100232B90(v3, v10);

  v11 = sub_10023790C(v2, @"appId");
  sub_100232B70(v3, v11);

  if (v3)
  {
    if (*(v3 + 136))
    {
      if (ASDInstallAttributionVersionCreateFromString() < 202)
      {
        v12 = &off_1005474B8;
      }

      else
      {
        v12 = sub_10023790C(v2, @"fidelityType");
      }

      if (*(v3 + 136) && ASDInstallAttributionVersionCreateFromString() >= 300)
      {
        v13 = sub_10024BAD0(InstallAttributionPingback, @"didWin", v2);
LABEL_16:
        *(v3 + 160) = [v12 integerValue];
        *(v3 + 13) = v13;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = &off_1005474B8;
    }

    v13 = 1;
    goto LABEL_16;
  }

  v12 = &off_1005474B8;
  [&off_1005474B8 integerValue];
LABEL_17:
  v14 = sub_1002380D8(v2, @"adNetwork");
  sub_10024BCA0(v3, v14);

  v15 = +[NSDate date];
  [v15 timeIntervalSince1970];
  v17 = [NSNumber numberWithDouble:v16 * 1000.0];

  if (v3)
  {
    *(v3 + 88) = 0;
    *(v3 + 120) = 0;
    objc_storeStrong((v3 + 128), v17);
    *(v3 + 12) = 0;
    objc_storeStrong((v3 + 144), v17);
    if (*(v3 + 136) && ASDInstallAttributionVersionCreateFromString() >= 400)
    {
      v18 = sub_10023790C(v2, @"sourceAppId");
      sub_100232BB0(v3, v18);

      v19 = sub_1002380D8(v2, @"sourceDomain");
      sub_100232BD0(v3, v19);

      v20 = sub_1002380D8(v2, @"sourceIdentifier");
      sub_100232BC0(v3, v20);

      v21 = sub_10023790C(v2, @"postbackSequenceIndex");
      *(v3 + 168) = [v21 integerValue];

      v22 = sub_10024C0D4();
      objc_storeStrong((v3 + 96), v22);

      v23 = 0;
      v24 = *(v3 + 168) == 0;
      *(v3 + 9) = v24;
      v25 = !v24;
      *(v3 + 10) = v25;
      goto LABEL_28;
    }

    *(v3 + 8) = 1;
  }

  v26 = sub_10023790C(v2, @"campaignId");
  v27 = [v26 integerValue];
  if (v3)
  {
    *(v3 + 40) = v27;
  }

  v28 = sub_10023790C(v2, @"sourceAppId");
  sub_100232BB0(v3, v28);

  v23 = v17;
LABEL_28:
  sub_100232BF0(v3, v23);

  return v3;
}

const __CFString *sub_10024C0D4()
{
  v0 = @"none";
  objc_opt_self();
  v1 = @"low";
  if (([@"none" isEqualToString:@"low"] & 1) == 0)
  {
    v1 = @"medium";
    if (([@"none" isEqualToString:@"medium"] & 1) == 0)
    {
      v1 = @"high";
      if (![@"none" isEqualToString:@"high"])
      {
        v1 = @"none";
      }
    }
  }

  return v1;
}

uint64_t sub_10024C164(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

id sub_10024C170(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = v3;
  if (v2)
  {
    if (*(v2 + 11))
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    [v3 setObject:v5 forKeyedSubscript:@"redownload"];
    [v4 setObject:*(v2 + 6) forKeyedSubscript:@"transactionId"];
    [v4 setObject:*(v2 + 17) forKeyedSubscript:@"version"];
    [v4 setObject:*(v2 + 14) forKeyedSubscript:@"url"];
    v6 = *(v2 + 2);
  }

  else
  {
    [v3 setObject:@"false" forKeyedSubscript:@"redownload"];
    [v4 setObject:0 forKeyedSubscript:@"transactionId"];
    [v4 setObject:0 forKeyedSubscript:@"version"];
    [v4 setObject:0 forKeyedSubscript:@"url"];
    v6 = 0;
  }

  [v4 setObject:v6 forKeyedSubscript:@"appId"];
  if (!v2)
  {
    v18 = [NSNumber numberWithInteger:0];
    [v4 setObject:v18 forKeyedSubscript:@"fidelityType"];

    [v4 setObject:@"false" forKeyedSubscript:@"didWin"];
    [v4 setObject:&off_1005474D0 forKeyedSubscript:@"isRegistered"];
    [v4 setObject:0 forKeyedSubscript:@"adNetwork"];
    v11 = 0;
    goto LABEL_19;
  }

  v7 = [NSNumber numberWithInteger:*(v2 + 20)];
  [v4 setObject:v7 forKeyedSubscript:@"fidelityType"];

  if (*(v2 + 13))
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  [v4 setObject:v8 forKeyedSubscript:@"didWin"];
  if (*(v2 + 12))
  {
    v9 = &off_1005474B8;
  }

  else
  {
    v9 = &off_1005474D0;
  }

  [v4 setObject:v9 forKeyedSubscript:@"isRegistered"];
  [v4 setObject:*(v2 + 4) forKeyedSubscript:@"adNetwork"];
  if (!*(v2 + 17) || ASDInstallAttributionVersionCreateFromString() < 400)
  {
    v11 = *(v2 + 8);
LABEL_19:
    [v4 setObject:v11 forKeyedSubscript:@"sourceAppId"];
    if (v2)
    {
      v12 = *(v2 + 11);
    }

    else
    {
      v12 = 0;
    }

    v13 = [NSNumber numberWithInteger:v12];
    [v4 setObject:v13 forKeyedSubscript:@"conversionValue"];

    if (v2)
    {
      v14 = *(v2 + 5);
    }

    else
    {
      v14 = 0;
    }

    v15 = [NSNumber numberWithInteger:v14];
    v16 = @"campaignId";
    goto LABEL_28;
  }

  [v4 setObject:*(v2 + 9) forKeyedSubscript:@"sourceIdentifier"];
  [v4 setObject:*(v2 + 8) forKeyedSubscript:@"sourceAppId"];
  [v4 setObject:*(v2 + 10) forKeyedSubscript:@"sourceDomain"];
  if (*(v2 + 21) || *(v2 + 9) != 1)
  {
    if (*(v2 + 10) == 1 && ([*(v2 + 12) isEqualToString:@"none"] & 1) == 0)
    {
      [v4 setObject:*(v2 + 12) forKeyedSubscript:@"coarseConversionValue"];
    }
  }

  else
  {
    v10 = [NSNumber numberWithInteger:*(v2 + 11)];
    [v4 setObject:v10 forKeyedSubscript:@"fineConversionValue"];
  }

  v15 = [NSNumber numberWithInteger:*(v2 + 21)];
  v16 = @"postbackSequenceIndex";
LABEL_28:
  [v4 setObject:v15 forKeyedSubscript:v16];

  return v4;
}

uint64_t sub_10024C524(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_10024C530(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

id sub_10024C53C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NSMutableString string];
  [v3 appendString:@"https://"];
  [v3 appendString:v2];

  [v3 appendString:@"/.well-known/skadnetwork/report-attribution/"];

  return v3;
}

uint64_t sub_10024C5C0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
    [v2 timeIntervalSince1970];
    v4 = [NSNumber numberWithDouble:v3 * 1000.0];
    v1 = [*(v1 + 128) compare:v4] == -1;
  }

  return v1;
}

uint64_t sub_10024C650(uint64_t result)
{
  if (result)
  {
    return [&off_100549368 containsObject:*(result + 32)] ^ 1;
  }

  return result;
}

id sub_10024C680(uint64_t a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_34;
  }

  v2 = objc_opt_new();
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"ad-network-id"];
  [v2 setObject:*(a1 + 16) forKeyedSubscript:@"app-id"];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"transaction-id"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"attribution-signature"];
  [v2 setObject:*(a1 + 136) forKeyedSubscript:@"version"];
  if (*(a1 + 136))
  {
    if (ASDInstallAttributionVersionCreateFromString() >= 202)
    {
      v3 = [NSNumber numberWithInteger:*(a1 + 160)];
      [v2 setObject:v3 forKeyedSubscript:@"fidelity-type"];
    }

    if (*(a1 + 136) && ASDInstallAttributionVersionCreateFromString() >= 300)
    {
      v4 = [NSNumber numberWithBool:*(a1 + 13)];
      [v2 setObject:v4 forKeyedSubscript:@"did-win"];
    }
  }

  v5 = [NSNumber numberWithBool:*(a1 + 11)];
  [v2 setObject:v5 forKeyedSubscript:@"redownload"];

  if (*(a1 + 136))
  {
    v6 = ASDInstallAttributionVersionCreateFromString();
    v7 = (a1 + 64);
    v8 = *(a1 + 64);
    v9 = v8;
    if (v6 >= 400)
    {
      if (v8 && (v10 = *v7, objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, v9, (v11 & 1) == 0))
      {
        v16 = @"source-app-id";
      }

      else
      {
        v7 = (a1 + 80);
        v12 = *(a1 + 80);
        if (!v12)
        {
          goto LABEL_23;
        }

        v13 = v12;
        v14 = *v7;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_23;
        }

        v16 = @"source-domain";
      }

      [v2 setObject:*v7 forKeyedSubscript:v16];
LABEL_23:
      v21 = *(a1 + 72);
      if (v21)
      {
        [v2 setObject:v21 forKeyedSubscript:@"source-identifier"];
      }

      v22 = [NSNumber numberWithInteger:*(a1 + 168)];
      [v2 setObject:v22 forKeyedSubscript:@"postback-sequence-index"];

      if (*(a1 + 168) || *(a1 + 9) != 1)
      {
        if (*(a1 + 10) == 1 && ([*(a1 + 96) isEqualToString:@"none"] & 1) == 0)
        {
          [v2 setObject:*(a1 + 96) forKeyedSubscript:@"coarse-conversion-value"];
        }
      }

      else
      {
        v23 = [NSNumber numberWithInteger:*(a1 + 88)];
        [v2 setObject:v23 forKeyedSubscript:@"conversion-value"];
      }

      v24 = *(a1 + 184);
      if (v24)
      {
        v25 = v24;
        v26 = *(a1 + 184);
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();

        if ((v27 & 1) == 0)
        {
          [v2 setObject:*(a1 + 184) forKeyedSubscript:@"country-code"];
        }
      }

      goto LABEL_34;
    }

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = (a1 + 64);
    v29 = *(a1 + 64);
    if (v29)
    {
      v9 = v29;
LABEL_16:
      v17 = *v7;
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        [v2 setObject:*v7 forKeyedSubscript:@"source-app-id"];
      }
    }
  }

  if (*(a1 + 8) == 1)
  {
    v19 = [NSNumber numberWithInteger:*(a1 + 88)];
    [v2 setObject:v19 forKeyedSubscript:@"conversion-value"];
  }

  v20 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v2 setObject:v20 forKeyedSubscript:@"campaign-id"];

LABEL_34:

  return v2;
}

void sub_10024CAA8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"adNetworkID"];
  [v3 setObject:*(a1 + 16) forKeyedSubscript:@"advertisedAppAdamID"];
  v4 = [NSNumber numberWithInteger:*(a1 + 160) != 0];
  [v3 setObject:v4 forKeyedSubscript:@"boundedImpressionType"];

  v5 = [NSNumber numberWithInteger:*(a1 + 14)];
  [v3 setObject:v5 forKeyedSubscript:@"boundedPostbackType"];

  [v3 setObject:*(a1 + 136) forKeyedSubscript:@"skanVersion"];
  if (*(a1 + 136))
  {
    if (ASDInstallAttributionVersionCreateFromString() >= 202)
    {
      v6 = sub_10024C680(a1);
      v7 = [v6 allKeys];
      v8 = [v7 containsObject:@"fidelity-type"];

      if ((v8 & 1) == 0)
      {
        v9 = [NSMutableDictionary dictionaryWithDictionary:v3];
        [v9 setObject:&off_1005474E8 forKeyedSubscript:@"boundedMismatchType"];
        [v2 addObject:v9];
      }
    }
  }

  v10 = sub_10024C680(a1);
  v11 = [v10 allKeys];
  v12 = [v11 containsObject:@"campaign-id"];

  if ((v12 & 1) == 0)
  {
    v13 = [NSMutableDictionary dictionaryWithDictionary:v3];
    [v13 setObject:&off_100547500 forKeyedSubscript:@"boundedMismatchType"];
    [v2 addObject:v13];
  }

  if (*(a1 + 136))
  {
    if (ASDInstallAttributionVersionCreateFromString() >= 200 && *(a1 + 8) == 1)
    {
      v14 = sub_10024C680(a1);
      v15 = [v14 allKeys];
      v16 = [v15 containsObject:@"conversion-value"];

      if ((v16 & 1) == 0)
      {
        v17 = [NSMutableDictionary dictionaryWithDictionary:v3];
        [v17 setObject:&off_100547518 forKeyedSubscript:@"boundedMismatchType"];
        [v2 addObject:v17];
      }
    }

    if (*(a1 + 136))
    {
      if (ASDInstallAttributionVersionCreateFromString() >= 300)
      {
        v18 = sub_10024C680(a1);
        v19 = [v18 allKeys];
        v20 = [v19 containsObject:@"did-win"];

        if ((v20 & 1) == 0)
        {
          v21 = [NSMutableDictionary dictionaryWithDictionary:v3];
          [v21 setObject:&off_100547530 forKeyedSubscript:@"boundedMismatchType"];
          [v2 addObject:v21];
        }
      }

      if (*(a1 + 136) && ASDInstallAttributionVersionCreateFromString() >= 400)
      {
        if (*(a1 + 72))
        {
          if (*(a1 + 9) != 1 || *(a1 + 10) != 1)
          {
            goto LABEL_25;
          }

          v22 = 8;
        }

        else
        {
          v22 = 6;
        }

        v23 = [NSMutableDictionary dictionaryWithDictionary:v3];
        v24 = [NSNumber numberWithInteger:v22];
        [v23 setObject:v24 forKeyedSubscript:@"boundedMismatchType"];

        [v2 addObject:v23];
      }
    }
  }

LABEL_25:

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = [v2 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      v28 = 0;
      do
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v2);
        }

        sub_1003F25C4(Analytics, *(*(&v29 + 1) + 8 * v28), 13);
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v26);
  }
}

void sub_10024CF08(uint64_t a1, int a2, void *a3)
{
  v13 = a3;
  if (a1)
  {
    if (a2)
    {
      v5 = 9;
    }

    else
    {
      v5 = 10;
    }

    v6 = [NSNumber numberWithInteger:*(a1 + 120)];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(a1 + 136);

      if (v13)
      {
        if (v8)
        {
          v9 = objc_opt_new();
          [v9 setObject:*(a1 + 32) forKeyedSubscript:@"adNetworkName"];
          [v9 setObject:*(a1 + 136) forKeyedSubscript:@"skadVersion"];
          v10 = [NSNumber numberWithInteger:*(a1 + 160) != 0];
          [v9 setObject:v10 forKeyedSubscript:@"boundedImpressionType"];

          v11 = [NSNumber numberWithInteger:*(a1 + 14)];
          [v9 setObject:v11 forKeyedSubscript:@"boundedPostbackType"];

          [v9 setObject:v6 forKeyedSubscript:@"retryCount"];
          [v9 setObject:v13 forKeyedSubscript:@"delayTime"];
          v12 = [NSNumber numberWithBool:*(a1 + 13)];
          [v9 setObject:v12 forKeyedSubscript:@"isWinner"];

          sub_1003F25C4(Analytics, v9, v5);
        }
      }
    }
  }
}

void sub_10024D0AC(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 64) != 0;
    if (a2)
    {
      v5 = 7;
    }

    else
    {
      v5 = 8;
    }

    v9 = objc_opt_new();
    [v9 setObject:*(a1 + 32) forKeyedSubscript:@"adNetworkName"];
    [v9 setObject:*(a1 + 136) forKeyedSubscript:@"skadVersion"];
    v6 = [NSNumber numberWithInteger:*(a1 + 160) != 0];
    [v9 setObject:v6 forKeyedSubscript:@"boundedImpressionType"];

    v7 = [NSNumber numberWithBool:v3];
    [v9 setObject:v7 forKeyedSubscript:@"hasConversionValue"];

    v8 = [NSNumber numberWithBool:v4];
    [v9 setObject:v8 forKeyedSubscript:@"hasSourceAppId"];

    sub_1003F25C4(Analytics, v9, v5);
  }
}

id sub_10024D1F4(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  v37 = a3;
  v10 = a4;
  v11 = a6;
  objc_opt_self();
  v12 = +[BagService appstoredService];
  v13 = [v12 lastBag];
  v14 = [v13 stringForKey:@"install-attribution-conversion-window-lengths"];
  v15 = v14;
  v16 = @"0:2-3:7-8:35";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [_TtC9appstored21SKANEnvironmentHelper windowDurationOverrideForEnvironment:v11];

  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  if (a5)
  {
    v20 = 60.0;
    if (!v18)
    {
      v20 = 86400.0;
    }

    v21 = [v10 dateByAddingTimeInterval:v20];
    if (a2 <= 0)
    {
      v22 = 86400;
    }

    else
    {
      v22 = 432000;
    }

    v23 = arc4random_uniform(v22);
    if (v18)
    {
      v24 = v21;
      v21 = v24;
    }

    else
    {
      v24 = [v21 dateByAddingTimeInterval:v23];
    }

    v35 = v24;
    v30 = v37;
  }

  else
  {
    v21 = sub_1002C5904(v17);
    v25 = [v21 objectAtIndexedSubscript:1];
    v26 = [v25 objectAtIndexedSubscript:a2];
    v27 = [v26 integerValue];

    v28 = 86400 * v27;
    if (v18)
    {
      v28 = v27;
    }

    v29 = v28;
    if (!v18)
    {
      v29 = v29 + 86400.0;
    }

    v30 = v37;
    v31 = [v37 dateByAddingTimeInterval:v29];
    if (a2 <= 0)
    {
      v32 = 86400;
    }

    else
    {
      v32 = 432000;
    }

    v33 = arc4random_uniform(v32);
    if (v18)
    {
      v34 = v31;
    }

    else
    {
      v34 = [v31 dateByAddingTimeInterval:v33];
    }

    v35 = v34;
  }

  return v35;
}

void sub_10024D43C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_10024D44C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

void *sub_10024D554(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ODRManifestRequestTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

id *sub_10024DD14(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ODRZipStreamDataConsumer;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

uint64_t sub_10024DEB8(uint64_t a1, uint64_t a2, char a3)
{
  *(*(a1 + 32) + 24) = 1;
  *(*(a1 + 32) + 8) = a3;
  return (*(*(a1 + 40) + 16))();
}

void sub_10024DFB8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (ASDErrorIsEqual())
  {

    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  (*(*(a1 + 32) + 16))();
}

void sub_10024E17C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    *(*(a1 + 32) + 32) = a2;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  [v5 setExtractorDelegate:WeakRetained];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10024E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(a1 + 32) + 32) = a2;
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_10024E8E0(id result, void *a2)
{
  if (result)
  {
    v2 = a2;
    v3 = +[NSXPCConnection currentConnection];
    v4 = [v3 valueForEntitlement:v2];

    v5 = [v4 BOOLValue];
    return v5;
  }

  return result;
}

void sub_10024F474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024F4B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10024F8BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed authentication request with error %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10024FC40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10024FDD8(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2 > 14999)
  {
    if (a2 <= 16999)
    {
      if (a2 <= 16000)
      {
        if (a2 == 15000)
        {
          v4 = &stru_10051E998;
          v5 = 15001;
        }

        else
        {
          if (a2 != 15001)
          {
            return;
          }

          v4 = &stru_10051E9B8;
          v5 = 16001;
        }
      }

      else
      {
        switch(a2)
        {
          case 16001:
            v4 = &stru_10051E9D8;
            v5 = 16002;
            break;
          case 16002:
            v4 = &stru_10051E9F8;
            v5 = 16003;
            break;
          case 16003:
            v4 = &stru_10051EA18;
            v5 = 17000;
            break;
          default:
            return;
        }
      }

      goto LABEL_37;
    }

    if (a2 <= 17399)
    {
      if (a2 == 17000)
      {
        v4 = &stru_10051EA38;
        v5 = 17001;
      }

      else
      {
        if (a2 != 17001)
        {
          return;
        }

        v4 = &stru_10051EA58;
        v5 = 17400;
      }

      goto LABEL_37;
    }

    if (a2 == 17400)
    {
      v4 = &stru_10051EA78;
      v5 = 18000;
      goto LABEL_37;
    }

    if (a2 == 18000)
    {
      v4 = &stru_10051EA98;
      v5 = 18400;
      goto LABEL_37;
    }

    if (a2 != 18400)
    {
      return;
    }

    v4 = &stru_10051EAB8;
    goto LABEL_30;
  }

  if (a2 > 14004)
  {
    if ((a2 - 14006) < 2)
    {
      v4 = &stru_10051E998;
      v5 = 14008;
    }

    else if ((a2 - 14008) >= 2)
    {
      if (a2 != 14005)
      {
        return;
      }

      v4 = &stru_10051E950;
      v5 = 14006;
    }

    else
    {
      v4 = &stru_10051E950;
      v5 = 15000;
    }

    goto LABEL_37;
  }

  if ((a2 - 14000) >= 5)
  {
    if (a2)
    {
      return;
    }

    v4 = &stru_10051E910;
LABEL_30:
    v5 = 19000;
    goto LABEL_37;
  }

  v4 = &stru_10051E930;
  v5 = 14005;
LABEL_37:
  *a3 = v5;
  v6 = *a4;
  *a4 = v4;
}

void sub_10024FFC8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS install_attribution_params (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, web_impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, interaction_type TEXT, environment TEXT, private_browsing_session_id TEXT, UNIQUE(app_adam_id, ad_network_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_pingbacks (app_adam_id INTEGER, app_bundle_id TEXT, ad_network_id TEXT, campaign_id INTEGER, source_identifier TEXT, transaction_id TEXT, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, conversion_value INTEGER, coarse_conversion_value TEXT, conversion_value_timestamp INTEGER, should_send_conversion_value INTEGER DEFAULT 0, should_send_coarse_conversion_value INTEGER DEFAULT 0, pingback_url TEXT, redownload INTEGER, registered INTEGER, retry_count INTEGER, retry_timestamp INTEGER, version TEXT, local_timestamp INTEGER, maturity_timestamp INTEGER, fidelity_type INTEGER, postback_sequence_index INTEGER DEFAULT 0, is_winning_pingback INTEGER DEFAULT 1, is_developer_pingback INTEGER DEFAULT 0, is_locked INTEGER DEFAULT 0, environment TEXT, country_code TEXT, UNIQUE(transaction_id, is_developer_pingback) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_impression (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, source_app_adam_id INTEGER, timestamp INTEGER, attribution_signature TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, source_app_bundle_id INTEGER, process_name TEXT, UNIQUE(app_adam_id, source_app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_pingback_fetch_info (app_adam_id INTEGER, fetch_pingback_url TEXT, retry_count INTEGER, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_web_params (app_adam_id INTEGER, ad_network_registrable_domain TEXT, source_web_registrable_domain TEXT, impression_id TEXT, version TEXT, timestamp INTEGER, attribution_context INTEGER DEFAULT 0, private_browsing_session_id TEXT, UNIQUE(app_adam_id, source_web_registrable_domain) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS skan_ghostbacks (app_adam_id INTEGER, app_bundle_id TEXT, restricted_conversion_value INTEGER DEFAULT 0, free_conversion_value INTEGER DEFAULT 0, coarse_conversion_value TEXT, is_registered INTEGER, origin_timestamp INTEGER, update_timestamp INTEGER, restricted_update_timestamp INTEGER, fetch_timestamp INTEGER, is_locked INTEGER DEFAULT 0, environment TEXT, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS skan_tokens (app_adam_id INTEGER, blinded_element TEXT, private_input TEXT, finalized_token TEXT, is_redownload INTEGER DEFAULT 0, timestamp INTEGER, certificate TEXT, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    v2 = v3;
  }
}

void sub_1002500A8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE install_attribution_params;", 1, 0);
    sub_1003BA14C(v3, @"DROP TABLE install_attribution_pingbacks;", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_params (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, web_impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, interaction_type TEXT, environment TEXT, private_browsing_session_id TEXT, UNIQUE(app_adam_id, ad_network_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_pingbacks (app_adam_id INTEGER, app_bundle_id TEXT, ad_network_id TEXT, campaign_id INTEGER, source_identifier TEXT, transaction_id TEXT, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, conversion_value INTEGER, coarse_conversion_value TEXT, conversion_value_timestamp INTEGER, should_send_conversion_value INTEGER DEFAULT 0, should_send_coarse_conversion_value INTEGER DEFAULT 0, pingback_url TEXT, redownload INTEGER, registered INTEGER, retry_count INTEGER, retry_timestamp INTEGER, version TEXT, local_timestamp INTEGER, maturity_timestamp INTEGER, fidelity_type INTEGER, postback_sequence_index INTEGER DEFAULT 0, is_winning_pingback INTEGER DEFAULT 1, is_developer_pingback INTEGER DEFAULT 0, is_locked INTEGER DEFAULT 0, environment TEXT, country_code TEXT, UNIQUE(transaction_id, is_developer_pingback) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"DROP TABLE install_attribution_impression;", 0, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS install_attribution_impression (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, source_app_adam_id INTEGER, timestamp INTEGER, attribution_signature TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, source_app_bundle_id INTEGER, process_name TEXT, UNIQUE(app_adam_id, source_app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    v2 = v3;
  }
}

void sub_100250170(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1002505BC;
  v32 = sub_1002505CC;
  v33 = objc_opt_new();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1002505D4;
  v27[3] = &unk_10051D518;
  v27[4] = &v28;
  if (v2)
  {
    sub_1003BA204(v2, @"SELECT * from install_attribution_params;", 1, v27);
    sub_1003BA14C(v2, @"DROP TABLE install_attribution_params;", 1, 0);
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS install_attribution_params (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, web_impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, interaction_type TEXT, environment TEXT, private_browsing_session_id TEXT, UNIQUE(app_adam_id, ad_network_id) ON CONFLICT REPLACE);", 1, 0);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v3 = v29[5];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100250878;
  v20[3] = &unk_10051E978;
  v4 = v2;
  v21 = v4;
  v22 = &v23;
  [v3 enumerateObjectsUsingBlock:v20];
  if ([v29[5] count] && (v24[3] & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Params migration failure.", buf, 2u);
    }
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1002505BC;
  v18 = sub_1002505CC;
  v19 = objc_opt_new();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100250934;
  v13[3] = &unk_10051D518;
  v13[4] = buf;
  if (v2)
  {
    sub_1003BA204(v4, @"SELECT * from install_attribution_pingbacks;", 1, v13);
    sub_1003BA14C(v4, @"DROP TABLE install_attribution_pingbacks;", 1, 0);
    sub_1003BA14C(v4, @"CREATE TABLE IF NOT EXISTS install_attribution_pingbacks (app_adam_id INTEGER, app_bundle_id TEXT, ad_network_id TEXT, campaign_id INTEGER, source_identifier TEXT, transaction_id TEXT, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, conversion_value INTEGER, coarse_conversion_value TEXT, conversion_value_timestamp INTEGER, should_send_conversion_value INTEGER DEFAULT 0, should_send_coarse_conversion_value INTEGER DEFAULT 0, pingback_url TEXT, redownload INTEGER, registered INTEGER, retry_count INTEGER, retry_timestamp INTEGER, version TEXT, local_timestamp INTEGER, maturity_timestamp INTEGER, fidelity_type INTEGER, postback_sequence_index INTEGER DEFAULT 0, is_winning_pingback INTEGER DEFAULT 1, is_developer_pingback INTEGER DEFAULT 0, is_locked INTEGER DEFAULT 0, environment TEXT, country_code TEXT, UNIQUE(transaction_id, is_developer_pingback) ON CONFLICT REPLACE);", 1, 0);
  }

  *(v24 + 24) = 1;
  v6 = *(v15 + 5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100250BD8;
  v10[3] = &unk_10051E978;
  v7 = v4;
  v11 = v7;
  v12 = &v23;
  [v6 enumerateObjectsUsingBlock:v10];
  if ([*(v15 + 5) count] && (v24[3] & 1) == 0)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Pingbacks migration failure.", &v9, 2u);
    }
  }

  if (v2)
  {
    sub_1003BA14C(v7, @"CREATE TABLE IF NOT EXISTS install_attribution_pingback_fetch_info (app_adam_id INTEGER, fetch_pingback_url TEXT, retry_count INTEGER, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v28, 8);
}

void sub_100250570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002505BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002505D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from parameters table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in parameters table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100250750;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_100250750(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer parameters over. Error:%@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_100250878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionParamsDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_100250934(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from pingbacks table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in pingbacks table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100250AB0;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_100250AB0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer pingbacks over. Error:%@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_100250BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionPingbackDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_100250C94(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1002505BC;
  v15 = sub_1002505CC;
  v16 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100250EE8;
  v10[3] = &unk_10051D518;
  v10[4] = &v11;
  if (v2)
  {
    sub_1003BA204(v2, @"SELECT * from install_attribution_pingbacks;", 1, v10);
    sub_1003BA14C(v2, @"DROP TABLE install_attribution_pingbacks;", 1, 0);
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS install_attribution_pingbacks (app_adam_id INTEGER, app_bundle_id TEXT, ad_network_id TEXT, campaign_id INTEGER, source_identifier TEXT, transaction_id TEXT, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, conversion_value INTEGER, coarse_conversion_value TEXT, conversion_value_timestamp INTEGER, should_send_conversion_value INTEGER DEFAULT 0, should_send_coarse_conversion_value INTEGER DEFAULT 0, pingback_url TEXT, redownload INTEGER, registered INTEGER, retry_count INTEGER, retry_timestamp INTEGER, version TEXT, local_timestamp INTEGER, maturity_timestamp INTEGER, fidelity_type INTEGER, postback_sequence_index INTEGER DEFAULT 0, is_winning_pingback INTEGER DEFAULT 1, is_developer_pingback INTEGER DEFAULT 0, is_locked INTEGER DEFAULT 0, environment TEXT, country_code TEXT, UNIQUE(transaction_id, is_developer_pingback) ON CONFLICT REPLACE);", 1, 0);
  }

  v3 = v12[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025118C;
  v7[3] = &unk_10051E978;
  v4 = v2;
  v8 = v4;
  v9 = &v17;
  [v3 enumerateObjectsUsingBlock:v7];
  if ([v12[5] count] && (v18[3] & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Pingbacks migration failure", &v6, 2u);
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_100250EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100250EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from pingbacks table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in pingbacks table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100251064;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_100251064(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer pingbacks over. Error: %@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_10025118C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionPingbackDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_100251248(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1002505BC;
  v45 = sub_1002505CC;
  v46 = objc_opt_new();
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10025185C;
  v40[3] = &unk_10051D518;
  v40[4] = &v41;
  if (v2)
  {
    sub_1003BA204(v2, @"SELECT * from install_attribution_impression;", 1, v40);
    sub_1003BA14C(v2, @"DROP TABLE install_attribution_impression;", 1, 0);
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS install_attribution_impression (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, source_app_adam_id INTEGER, timestamp INTEGER, attribution_signature TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, source_app_bundle_id INTEGER, process_name TEXT, UNIQUE(app_adam_id, source_app_adam_id) ON CONFLICT REPLACE);", 1, 0);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v3 = v42[5];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100251B00;
  v33[3] = &unk_10051E978;
  v4 = v2;
  v34 = v4;
  v35 = &v36;
  [v3 enumerateObjectsUsingBlock:v33];
  if ([v42[5] count] && (v37[3] & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Impression migration failure.", buf, 2u);
    }
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = sub_1002505BC;
  v31 = sub_1002505CC;
  v32 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100251BBC;
  v26[3] = &unk_10051D518;
  v26[4] = buf;
  if (v2)
  {
    sub_1003BA204(v4, @"SELECT * from install_attribution_params;", 1, v26);
    sub_1003BA14C(v4, @"DROP TABLE install_attribution_params;", 1, 0);
    sub_1003BA14C(v4, @"CREATE TABLE IF NOT EXISTS install_attribution_params (app_adam_id INTEGER, ad_network_id TEXT, campaign_id INTEGER, source_identifier INTEGER, impression_id TEXT, web_impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, version TEXT, local_timestamp INTEGER, fidelity_type INTEGER, interaction_type TEXT, environment TEXT, private_browsing_session_id TEXT, UNIQUE(app_adam_id, ad_network_id) ON CONFLICT REPLACE);", 1, 0);
  }

  *(v37 + 24) = 1;
  v6 = *(v28 + 5);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100251E60;
  v23[3] = &unk_10051E978;
  v7 = v4;
  v24 = v7;
  v25 = &v36;
  [v6 enumerateObjectsUsingBlock:v23];
  if ([*(v28 + 5) count] && (v37[3] & 1) == 0)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Params migration failure.", v17, 2u);
    }
  }

  *v17 = 0;
  v18 = v17;
  v19 = 0x3032000000;
  v20 = sub_1002505BC;
  v21 = sub_1002505CC;
  v22 = objc_opt_new();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100251F1C;
  v16[3] = &unk_10051D518;
  v16[4] = v17;
  if (v2)
  {
    sub_1003BA204(v7, @"SELECT * from install_attribution_pingbacks;", 1, v16);
    sub_1003BA14C(v7, @"DROP TABLE install_attribution_pingbacks;", 1, 0);
    sub_1003BA14C(v7, @"CREATE TABLE IF NOT EXISTS install_attribution_pingbacks (app_adam_id INTEGER, app_bundle_id TEXT, ad_network_id TEXT, campaign_id INTEGER, source_identifier TEXT, transaction_id TEXT, attribution_signature TEXT, source_app_adam_id INTEGER, source_domain TEXT, conversion_value INTEGER, coarse_conversion_value TEXT, conversion_value_timestamp INTEGER, should_send_conversion_value INTEGER DEFAULT 0, should_send_coarse_conversion_value INTEGER DEFAULT 0, pingback_url TEXT, redownload INTEGER, registered INTEGER, retry_count INTEGER, retry_timestamp INTEGER, version TEXT, local_timestamp INTEGER, maturity_timestamp INTEGER, fidelity_type INTEGER, postback_sequence_index INTEGER DEFAULT 0, is_winning_pingback INTEGER DEFAULT 1, is_developer_pingback INTEGER DEFAULT 0, is_locked INTEGER DEFAULT 0, environment TEXT, country_code TEXT, UNIQUE(transaction_id, is_developer_pingback) ON CONFLICT REPLACE);", 1, 0);
  }

  *(v37 + 24) = 1;
  v9 = *(v18 + 5);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002521C0;
  v13[3] = &unk_10051E978;
  v10 = v7;
  v14 = v10;
  v15 = &v36;
  [v9 enumerateObjectsUsingBlock:v13];
  if ([*(v18 + 5) count] && (v37[3] & 1) == 0)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Pingbacks migration failure.", &v12, 2u);
    }
  }

  if (v2)
  {
    sub_1003BA14C(v10, @"CREATE TABLE IF NOT EXISTS install_attribution_web_params (app_adam_id INTEGER, ad_network_registrable_domain TEXT, source_web_registrable_domain TEXT, impression_id TEXT, version TEXT, timestamp INTEGER, attribution_context INTEGER DEFAULT 0, private_browsing_session_id TEXT, UNIQUE(app_adam_id, source_web_registrable_domain) ON CONFLICT REPLACE);", 1, 0);
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v41, 8);
}

void sub_1002517F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10025185C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from impressions table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in impressions table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002519D8;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_1002519D8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer impressions over. Error:%@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_100251B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionImpressionDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_100251BBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from parameters table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in parameters table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100251D38;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_100251D38(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer parameters over. Error:%@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_100251E60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionParamsDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_100251F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      v8 = "Error fetching rows from pingbacks table %@";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((sub_100214AEC(v5) & 1) == 0)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No rows found in pingbacks table.";
      v9 = v7;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100252098;
  v11[3] = &unk_10051D4F0;
  v11[4] = *(a1 + 32);
  sub_100214814(v5, v11);
LABEL_10:
}

void sub_100252098(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = sub_1003B7B64(v7, 0);
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting cursor to transfer pingbacks over. Error:%@", &v12, 0xCu);
    }

    v10 = 0;
    *a4 = 1;
    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v9 addObject:v10];
}

void sub_1002521C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [InstallAttributionPingbackDatabaseEntity alloc];
  v5 = sub_1002DC370(*(a1 + 32));
  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v3 onConnection:v5];

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [(SQLiteEntity *)v8 existsInDatabase];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
}

void sub_10025227C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE install_attribution_pingbacks ADD COLUMN is_locked INTEGER DEFAULT 0;", 0, 0);
  }
}

void sub_1002522A0(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE install_attribution_params ADD COLUMN web_impression_id TEXT;", 0, 0);
  }
}

void sub_1002522C4(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS skan_ghostbacks (app_adam_id INTEGER, app_bundle_id TEXT, restricted_conversion_value INTEGER DEFAULT 0, free_conversion_value INTEGER DEFAULT 0, coarse_conversion_value TEXT, is_registered INTEGER, origin_timestamp INTEGER, update_timestamp INTEGER, restricted_update_timestamp INTEGER, fetch_timestamp INTEGER, is_locked INTEGER DEFAULT 0, environment TEXT, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS skan_tokens (app_adam_id INTEGER, blinded_element TEXT, private_input TEXT, finalized_token TEXT, is_redownload INTEGER DEFAULT 0, timestamp INTEGER, certificate TEXT, UNIQUE(app_adam_id) ON CONFLICT REPLACE);", 1, 0);
    v2 = v3;
  }
}

void sub_10025232C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE skan_tokens ADD COLUMN certificate TEXT;", 0, 0);
  }
}

void sub_100252350(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE install_attribution_params ADD COLUMN interaction_type TEXT;", 1, 0);
    sub_1003BA14C(v3, @"UPDATE install_attribution_params SET interaction_type = 'view';", 0, 0);
    v2 = v3;
  }
}

void sub_1002523B8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE install_attribution_params ADD COLUMN environment TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE skan_ghostbacks ADD COLUMN environment TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE install_attribution_pingbacks ADD COLUMN environment TEXT;", 1, 0);
    v2 = v3;
  }
}

void sub_100252438(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE install_attribution_web_params ADD COLUMN private_browsing_session_id TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE install_attribution_params ADD COLUMN private_browsing_session_id TEXT;", 1, 0);
    v2 = v3;
  }
}

void sub_1002524A0(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE install_attribution_pingbacks ADD COLUMN country_code TEXT;", 1, 0);
  }
}

id sub_1002524C4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1005AA910 != -1)
    {
      dispatch_once(&qword_1005AA910, &stru_10051EAD8);
    }

    a1 = [qword_1005AA908 stringFromDate:v2];
    v1 = vars8;
  }

  return a1;
}

void sub_100252534(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_1005AA908;
  qword_1005AA908 = v1;
}

void *sub_100252570(void *result, double a2)
{
  if (result)
  {
    [result timeIntervalSinceNow];
    return (-v3 >= a2);
  }

  return result;
}

id sub_1002525A8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1005AA920 != -1)
    {
      dispatch_once(&qword_1005AA920, &stru_10051EAF8);
    }

    a1 = [qword_1005AA918 stringFromDate:v2];
    v1 = vars8;
  }

  return a1;
}

void sub_100252618(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1005AA918;
  qword_1005AA918 = v1;

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1005AA918 setLocale:v3];
  [qword_1005AA918 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

id sub_1002526A4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1005AA930 != -1)
    {
      dispatch_once(&qword_1005AA930, &stru_10051EB18);
    }

    a1 = [qword_1005AA928 stringFromDate:v2];
    v1 = vars8;
  }

  return a1;
}

void sub_100252714(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1005AA928;
  qword_1005AA928 = v1;

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1005AA928 setLocale:v3];
  [qword_1005AA928 setDateFormat:@"yyyy-MM-dd"];
}

id *sub_1002527A0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1 && (v20.receiver = a1, v20.super_class = SQLiteDatabaseStoreSchema, (v11 = objc_msgSendSuper2(&v20, "init")) != 0))
  {
    v12 = v11;
    objc_storeStrong(v11 + 1, a2);
    objc_storeStrong(v12 + 2, a3);
    v13 = [v10 copy];
    v14 = v12[3];
    v12[3] = v13;

    v15 = v12[1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002528D0;
    v18[3] = &unk_10051EB40;
    v16 = v12;
    v19 = v16;
    sub_10022CC88(v15, v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1002528D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    sub_10022C810(v2, @"PRAGMA user_version = 1;", 0, 0);
    v3 = *(*(a1 + 32) + 8);
    if (v3)
    {
      sub_10022C810(v3, @"CREATE TABLE IF NOT EXISTS schema_version (schema_name TEXT, schema_version INTEGER DEFAULT 0, PRIMARY KEY(schema_name));", 0, 0);
    }
  }

  return 1;
}

uint64_t sub_100252934(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100252A0C;
  v4[3] = &unk_10051DEB8;
  v4[4] = a1;
  v4[5] = &v5;
  sub_10022C3C4(v1, @"SELECT schema_version FROM schema_version WHERE schema_name = ?", v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1002529F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100252A0C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5 = sub_1002149DC(v4);

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

uint64_t sub_100252A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100252B28;
    v10[3] = &unk_10051EB90;
    v10[4] = a1;
    v11 = v5;
    v12 = a2;
    v8 = sub_10022CAC4(v7, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100252B28(void *a1)
{
  v2 = sub_1003BA0A8([SQLiteDatabaseStoreMigrator alloc], *(a1[4] + 8), *(a1[4] + 24));
  (*(a1[5] + 16))();
  if (v2 && (v2[3] & 1) != 0)
  {
    v3 = a1[4];
    v4 = *(v3 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100252C0C;
    v8[3] = &unk_10051EB68;
    v5 = a1[6];
    v8[4] = v3;
    v8[5] = v5;
    v6 = sub_10022C810(v4, @"INSERT OR REPLACE INTO schema_version (schema_name, schema_version) VALUES (?, ?)", 0, v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100252C0C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  [v4 bindInt64:*(a1 + 40) atPosition:2];
}

uint64_t sub_100252C74(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    return sub_100252C84(result, a2, a3, 0);
  }

  return result;
}

uint64_t sub_100252C84(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    v19 = a4;
    v8 = sub_100252934(a1);
    if (v8 < a2)
    {
      while (1)
      {
        v23 = 0;
        *v24 = -1;
        v7[2](v7, v8, v24, &v23);
        if (*v24 <= v8 || *v24 > a2)
        {
          break;
        }

        if (!v23)
        {
          v12 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = *v24;
          v15 = "No migration block provided to migrate schema version %lli -> %lli";
          goto LABEL_32;
        }

        v10 = sub_100252A6C(a1, *v24, v23);
        v11 = ASDLogHandleForCategory();
        v12 = v11;
        if ((v10 & 1) == 0)
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = *v24;
          v15 = "Database migration function failed for %lli => %lli";
          goto LABEL_32;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = *v24;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Database migration function succeeded for %lli => %lli", buf, 0x16u);
        }

        v8 = *v24;
        if (v8 >= a2)
        {
          goto LABEL_21;
        }
      }

      v13 = *v24 == -1;
      v14 = ASDLogHandleForCategory();
      v12 = v14;
      if (!v13)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 134218240;
        *&buf[4] = *v24;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        v15 = "Invalid version %lli provided; currentVersion: %lli";
LABEL_32:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
        goto LABEL_20;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = *v24;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Version mapping not provided for %lli", buf, 0xCu);
      }

LABEL_20:
    }

LABEL_21:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v26 = v8 == a2;
    if (v8 != a2)
    {
      if (v19)
      {
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not reattempting to reset schema", v24, 2u);
        }
      }

      else
      {
        v17 = *(a1 + 8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100253068;
        v20[3] = &unk_10051EBD8;
        v20[4] = a1;
        v22 = buf;
        v21 = v7;
        sub_10022CC88(v17, v20);
      }
    }

    LOBYTE(a1) = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return a1 & 1;
}

void sub_100253044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100253068(uint64_t *a1)
{
  if (sub_100252A6C(a1[4], 0, &stru_10051EBB0))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(a1[4] + 24);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * v6);
          v15 = 0;
          v8 = [@"DROP TABLE IF EXISTS " stringByAppendingString:v7];
          v9 = *(a1[4] + 8);
          if (!v9 || (sub_10022C810(v9, v8, &v15, 0) & 1) == 0)
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v21 = v15;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to drop table: %{public}@", buf, 0xCu);
            }

            *(*(a1[6] + 8) + 24) = 0;
            v11 = 0;
            return v11 & 1;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully reset schema; requesting migration from version 0", buf, 2u);
    }

    *(*(a1[6] + 8) + 24) = sub_100252C84(a1[4], 0, a1[5], 1);
    v11 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set schema version back to 0; rolling back transaction", buf, 2u);
    }

    v11 = 0;
    *(*(a1[6] + 8) + 24) = 0;
  }

  return v11 & 1;
}

id sub_1002533D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.appstored.encryption", v4];

  v6 = v5;
  v7 = objc_opt_self();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, v6);

  CFDictionaryAddValue(Mutable, kSecAttrNoLegacy, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v9 = SecItemCopyMatching(Mutable, &result);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = result == 0;
  }

  if (v10)
  {
    if (v9 == -25300 || v9 == 0)
    {
      v15 = ASDErrorWithUserInfoAndFormat();
    }

    else
    {
      v15 = sub_100253794(v7, v9);
    }

    v14 = v15;
    v13 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = [NSData alloc];
    v13 = [v12 initWithBase64EncodedData:result options:0];
    CFRelease(result);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if (!v13)
  {
    v16 = v14;
    *a3 = v14;
  }

LABEL_17:
  CFRelease(Mutable);

  return v13;
}

BOOL sub_1002535BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [NSString stringWithFormat:@"%@.%@", @"com.apple.appstored.encryption", v6];

  v9 = v8;
  v10 = v7;
  v11 = objc_opt_self();
  v12 = [v10 base64EncodedDataWithOptions:0];

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 7, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, v9);

  CFDictionaryAddValue(Mutable, kSecAttrLabel, @"App Store User Data Encryption");
  CFDictionaryAddValue(Mutable, kSecAttrNoLegacy, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecValueData, v12);
  SecItemDelete(Mutable);
  v14 = SecItemAdd(Mutable, 0);
  CFRelease(Mutable);
  if (v14)
  {
    v15 = sub_100253794(v11, v14);
    v16 = v15;
    if (a4)
    {
      v17 = v15;
      *a4 = v16;
    }
  }

  else
  {
    v16 = 0;
  }

  return v14 == 0;
}

uint64_t sub_100253794(uint64_t a1, OSStatus a2)
{
  objc_opt_self();
  v3 = SecCopyErrorMessageString(a2, 0);
  v4 = ASDErrorWithUserInfoAndFormat();

  return v4;
}

void *sub_100253964(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ODRApplicationRepairTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

void sub_100253A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = sub_100253B94;
    v8 = sub_100253BA4;
    v9 = 0;
    v2 = sub_100208FBC();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100253BAC;
    v3[3] = &unk_10051DA60;
    v3[4] = v1;
    v3[5] = &v4;
    [v2 modifyUsingTransaction:v3];

    if (v5[5])
    {
      [v1 completeWithError:?];
    }

    else
    {
      [v1 completeWithSuccess];
    }

    _Block_object_dispose(&v4, 8);
  }
}

void sub_100253B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100253B94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100253BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = sub_1001C3330(v3, v4);
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v43 = v6;
    v7 = +[NSFileManager defaultManager];
    v8 = sub_1001FE38C(ODRAssetPack, *(*(a1 + 32) + 40));
    v44 = a1;
    v46 = v3;
    v48 = sub_1001C40CC(v3, *(*(a1 + 32) + 40));
    sub_100280E78(v48);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v49 = v54 = 0u;
    v9 = [v49 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      v45 = v7;
      v47 = v8;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v49);
          }

          v13 = *(*(&v51 + 1) + 8 * i);
          v14 = sub_100269390(v13);
          v15 = [v14 absoluteString];

          if (v15 && [v15 hasPrefix:v8])
          {
            v16 = sub_100280C74(v48);
            v17 = sub_1001FE63C(v13, v16);
            v18 = [NSURL fileURLWithPath:v17 isDirectory:1];

            v19 = sub_100269390(v13);
            if (!-[NSObject isFileURL](v19, "isFileURL") || [v18 isEqual:v19])
            {
              v36 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v39 = sub_100269134(v13);
                v40 = *(*(v44 + 32) + 40);
                *buf = 138543874;
                v57 = v39;
                v58 = 2114;
                v59 = v40;
                v60 = 2114;
                v61 = v19;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Asset %{public}@ for application %{public}@ does not need repair: %{public}@", buf, 0x20u);
              }

              goto LABEL_35;
            }

            v20 = [v19 path];
            v21 = [v7 fileExistsAtPath:v20];

            if ((v21 & 1) == 0)
            {
              v37 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v41 = sub_100269134(v13);
                v42 = *(*(v44 + 32) + 40);
                *buf = 138543874;
                v57 = v41;
                v58 = 2114;
                v59 = v42;
                v60 = 2114;
                v61 = v19;
                _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Asset %{public}@ for application %{public}@ has gone: %{public}@", buf, 0x20u);
              }

              sub_1002696D0(v13, 0);
              sub_10021BB90(v46, v13);
LABEL_35:
              v8 = v47;

              goto LABEL_36;
            }

            v22 = [v18 path];
            v23 = [v7 fileExistsAtPath:v22];

            if (v23)
            {
              v24 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = sub_100269134(v13);
                v26 = *(*(v44 + 32) + 40);
                *buf = 138543618;
                v57 = v25;
                v58 = 2114;
                v59 = v26;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Asset %{public}@ for application %{public}@ already repaired", buf, 0x16u);
              }
            }

            else
            {
              v50 = 0;
              v27 = [v7 moveItemAtURL:v19 toURL:v18 error:&v50];
              v24 = v50;
              v28 = ASDLogHandleForCategory();
              v29 = v28;
              if (v27)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = sub_100269134(v13);
                  v31 = *(*(v44 + 32) + 40);
                  *buf = 138543618;
                  v57 = v30;
                  v58 = 2114;
                  v59 = v31;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ for application %{public}@ moved successfully", buf, 0x16u);
                }

                sub_1002696D0(v13, v18);
                sub_10021BB90(v46, v13);
              }

              else
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v32 = sub_100269134(v13);
                  v33 = *(*(v44 + 32) + 40);
                  *buf = 138543874;
                  v57 = v32;
                  v58 = 2114;
                  v59 = v33;
                  v60 = 2114;
                  v61 = v24;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Asset %{public}@ for application %{public}@ could not be moved error: %{public}@", buf, 0x20u);
                }
              }

              v7 = v45;
            }

            v8 = v47;
          }
        }

        v10 = [v49 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:

    v3 = v46;
    v6 = v43;
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v34 = *(*(a1 + 32) + 40);
      v35 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v57 = v34;
      v58 = 2114;
      v59 = v35;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Application %{public}@ did not need repair error: %{public}@", buf, 0x16u);
    }
  }

  return v6;
}

uint64_t sub_10025441C(uint64_t result)
{
  if (result)
  {
    return sub_1003D6718();
  }

  return result;
}

void sub_100254430(id *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [a1[1] count];
        v5 = sub_1002546FC(a1);
        v6 = [v5 componentsJoinedByString:{@", "}];
        *v10 = 134218242;
        *&v10[4] = v4;
        *&v10[12] = 2114;
        *&v10[14] = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Persisting %ld configuration(s): [%{public}@]", v10, 0x16u);
      }
    }

    if ([a1[1] count])
    {
      v7 = a1[1];
      v8 = objc_opt_new();
      *v10 = _NSConcreteStackBlock;
      *&v10[8] = 3221225472;
      *&v10[16] = sub_100254954;
      v11 = &unk_10051EC50;
      v9 = v8;
      v12 = v9;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];

      sub_1003D6B3C(AppDefaultsManager, v9);
    }

    else
    {
      sub_1003D6718();
    }
  }
}

void sub_1002545E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 8) allValues];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100254694;
    v5[3] = &unk_10051EC00;
    v6 = v3;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

void sub_100254694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || *(v3 + 3) <= 2uLL)
  {
    v5 = v3;
    (*(*(a1 + 32) + 16))();
    v4 = v5;
  }
}

id *sub_1002546FC(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = [v1[1] allValues];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002547D4;
    v6[3] = &unk_10051EC28;
    v7 = v2;
    v4 = v2;
    [v3 enumerateObjectsUsingBlock:v6];

    v1 = [v4 copy];
  }

  return v1;
}

void sub_1002547D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = *(a1 + 32);
    if (v9)
    {
      v7 = v9[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v6 addObject:v8];
  }
}

void sub_100254868(id *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1[1] objectForKey:a2];
    if (v3)
    {
      ++*(v3 + 24);
    }

    v4 = v3;
    sub_100254430(a1, 0);
  }
}

void sub_1002548DC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = a2;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 1);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v2 setObject:v4 forKey:v6];
  }
}

void sub_100254954(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4 || v4[3] <= 2uLL)
  {
    v6 = v4;
    v5 = sub_1002C0B9C(v4);
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v6;
  }
}

void sub_1002549DC(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_80;
  }

  v88 = sub_100269320(v5);
  v7 = sub_100269488(v6);
  v8 = [v7 valueForKey:@"label"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 valueForKey:@"strategy"];
  }

  v11 = v10;

  v12 = [v7 valueForKey:@"hash"];
  v85 = v12;
  v86 = v11;
  v87 = v7;
  if (!a3)
  {
    goto LABEL_52;
  }

  v13 = v12;
  if (!sub_100382950(a1))
  {
    goto LABEL_52;
  }

  v14 = sub_1003828E4(a1);
  v16 = v14;
  if (!v14)
  {
    v23 = 0;
    goto LABEL_42;
  }

  v17 = objc_getProperty(v14, v15, 16, 1);
  v19 = objc_getProperty(v16, v18, 8, 1);
  v20 = v19;
  if (!v17)
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v21 = [v17 isEqualToString:v11];
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = [v20 isEqualToString:v13];
LABEL_14:
  v24 = v21 & v22;
  v25 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v94) = v24;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Primary content hash matched new primary content hash: %{BOOL}d", buf, 8u);
  }

  if (v24)
  {
    v23 = 1;
    goto LABEL_41;
  }

  v81 = v16;
  v26 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Primary hash wasn't a match.  Checking the known hashes.", buf, 2u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v88;
  v27 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (!v27)
  {
    v23 = 0;
    goto LABEL_40;
  }

  v28 = v27;
  v29 = *v90;
  while (2)
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v90 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v89 + 1) + 8 * i);
      v32 = [v31 objectForKey:@"label"];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v31 objectForKey:@"strategy"];
      }

      v35 = v34;

      v36 = [v31 objectForKey:@"hash"];
      if (v17)
      {
        v37 = [v17 isEqualToString:v35];
        if (!v20)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v37 = 0;
        if (!v20)
        {
          goto LABEL_33;
        }
      }

      if ((v37 & [v20 isEqualToString:v36]) == 1)
      {
        v38 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v94 = v35;
          v95 = 2114;
          v96 = v36;
          v97 = 1024;
          v98 = 1;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Primary content hash matched known hash [%{public}@, %{public}@]: %{BOOL}d", buf, 0x1Cu);
        }

        v23 = 1;
        goto LABEL_40;
      }

LABEL_33:
    }

    v28 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

  v23 = 0;
LABEL_40:
  v16 = v81;

LABEL_41:
LABEL_42:
  v39 = [a1 valueForProperty:@"bundle_id"];
  if (v39)
  {
    v40 = sub_10026A694(ODRClient, v39);
    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  if (((v23 | v41) & 1) == 0)
  {
    v42 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "No hash matched, and this client is not currently connected, removing assets from device and resetting the localURL.", buf, 2u);
    }

    v43 = [a1 valueForProperty:@"local_url"];
    if (v43)
    {
      v44 = [NSURL URLWithString:v43];
      sub_1001FD9A0(ODRAssetPack, v44);
    }

    [a1 setObject:0 forKeyedSubscript:@"local_url"];
  }

LABEL_52:
  v45 = sub_100269550(v6);
  v46 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v45;
    _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Setting the fileSize : %{public}@", buf, 0xCu);
  }

  v47 = sub_1002692B0(v6);
  v48 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v47;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Setting the downloadSize : %{public}@", buf, 0xCu);
  }

  v49 = sub_10026916C(v6);
  v50 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v49;
    _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Setting the chunk size : %{public}@", buf, 0xCu);
  }

  obja = v45;

  v51 = sub_1002692E8(v6);
  v52 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v51;
    _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Setting the hashes : %{public}@", buf, 0xCu);
  }

  v53 = sub_100269408(v6);
  v54 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v53;
    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Setting the MD5 : %{public}@", buf, 0xCu);
  }

  v55 = sub_1002691DC(v6);
  v56 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v55;
    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Setting Download Priority: %{public}@", buf, 0xCu);
  }

  v79 = v55;

  v57 = sub_100269358(v6);
  v58 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v77 = [v57 BOOLValue];
    *buf = 67109120;
    LODWORD(v94) = v77;
    _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Setting isStreamable: %{BOOL}d", buf, 8u);
  }

  v59 = sub_100269134(v6);
  v60 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v59;
    _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "Setting bundleID: %{public}@", buf, 0xCu);
  }

  v82 = v51;
  if (v6)
  {
    v61 = v6[2];
  }

  else
  {
    v61 = 0;
  }

  v78 = v53;
  v80 = v49;
  v62 = v61;
  [a1 setValuesWithDictionary:v62];

  v63 = sub_100269390(v6);
  v64 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v63;
    _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Setting local URL: %{public}@", buf, 0xCu);
  }

  v65 = v59;
  v66 = v47;

  v67 = [v63 absoluteString];
  [a1 setObject:v67 forKeyedSubscript:@"local_url"];

  v68 = sub_100269588(v6);
  v69 = [v68 absoluteString];

  if ([v57 BOOLValue])
  {
    v70 = a1;
    v71 = [NSURL URLWithString:v69];
  }

  else
  {
    v70 = a1;
    v72 = [a1 valueForProperty:@"bundle_id"];
    v73 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v94 = v72;
      _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "BundleID: %{public}@", buf, 0xCu);
    }

    v74 = sub_100399B78(ODRApplication, v72);
    v71 = sub_10039A250(v74, v69, 0);
  }

  v75 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v94 = v71;
    _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "Setting SourceURL: %{public}@", buf, 0xCu);
  }

  v76 = [v71 absoluteString];
  [v70 setObject:v76 forKeyedSubscript:@"source_url"];

LABEL_80:
}

void sub_1002554E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v5 = a4;
  objc_opt_self();
  if ((sub_100408E18(v20) & 1) == 0)
  {
    v6 = [ProgressInfo alloc];
    v7 = sub_10040908C(v20);
    v8 = sub_100408EB0(v20);
    v9 = sub_100403C3C(&v6->super.isa, v7, 0, v8);

    v10 = sub_10040916C(v20);
    v12 = v10;
    if (v9)
    {
      objc_setProperty_atomic(v9, v11, v10, 152);

      Property = objc_getProperty(v9, v13, 152, 1);
    }

    else
    {

      Property = 0;
    }

    v15 = Property;

    if (v15)
    {
      v16 = 384;
    }

    else
    {
      v16 = 128;
    }

    if (!v20)
    {
      goto LABEL_16;
    }

    v17 = sub_10023E604(v20, @"source_type");
    v18 = v16 | 1;
    if (v17 != 2)
    {
      v18 = v16;
    }

    v16 = v17 == 1 ? v16 | 0x200 : v18;
    if (sub_10023E604(v20, @"coordinator_intent") == 6)
    {
      if (v9)
      {
        v16 = 0;
        *(v9 + 64) = 1;
LABEL_17:
        v9[18] = v16;
      }
    }

    else
    {
LABEL_16:
      if (v9)
      {
        goto LABEL_17;
      }
    }

    v19 = sub_1003649C8();
    sub_100364E78(v19, v9, v5);
  }
}

void sub_100255690(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [AppInstall alloc];
  v11 = +[AppInstall defaultProperties];
  v12 = [(SQLiteMemoryEntity *)v10 initWithDatabaseEntity:v8 properties:v11];

  v13 = [v7 connection];

  v17 = @"archive_type";
  v14 = [NSArray arrayWithObjects:&v17 count:1];
  v15 = sub_1004093BC(v12, v13, v14);

  sub_1002554E8(v9, v12, v16, v6);
}

void sub_1002559EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = *(a1 + 8);
      if (!v7)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = *(a1 + 8);
        *(a1 + 8) = v8;

        v7 = *(a1 + 8);
      }

      v10 = [NSNumber numberWithInteger:a3];
      [v7 setValue:v10 forKey:v6];
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Dropping update to finshing due to no bundleID", v11, 2u);
      }
    }
  }
}

void sub_100255AD0(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (a1 && v14)
  {
    if (!*(a1 + 24))
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;
    }

    if (!*(a1 + 16))
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;
    }

    v10 = *(a1 + 24);
    v11 = [NSNumber numberWithInteger:sub_10023E604(v5, @"package_type")];
    [v10 setValue:v11 forKey:v14];

    v12 = *(a1 + 16);
    v13 = [NSNumber numberWithInteger:sub_10023E604(v5, @"archive_type")];
    [v12 setValue:v13 forKey:v14];
  }
}

void sub_100255C04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 32);
      *(a1 + 32) = v5;

      v4 = *(a1 + 32);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

void sub_100255C7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v7)
    {
      if (v9)
      {
        if (v8)
        {
          v11 = *(a1 + 72);
          if (!v11)
          {
            v12 = objc_opt_new();
            v13 = *(a1 + 72);
            *(a1 + 72) = v12;

            v11 = *(a1 + 72);
          }

          v18[0] = @"bundle_id";
          v18[1] = @"gizmo_pairing_id";
          v19[0] = v7;
          v19[1] = v8;
          v18[2] = @"failure_error";
          v19[2] = v10;
          v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
          [v11 addObject:v14];
          goto LABEL_16;
        }

        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v15 = "Dropping failed TestFlight install due to no devicePairingID";
          goto LABEL_14;
        }
      }

      else
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v21 = v7;
          v15 = "Dropping failed TestFlight install for %{public}@ due to no error provided";
          v16 = v14;
          v17 = 12;
LABEL_15:
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
        }
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = "Dropping failed TestFlight install due to no bundleID";
LABEL_14:
        v16 = v14;
        v17 = 2;
        goto LABEL_15;
      }
    }

LABEL_16:
  }
}

void sub_100255E64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 88);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 88);
      *(a1 + 88) = v5;
    }

    v3 = v7;
  }
}

void sub_100255EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 96);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 96);
      *(a1 + 96) = v5;
    }

    v3 = v7;
  }
}

void sub_100255F64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 104);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 104);
      *(a1 + 104) = v5;
    }

    v3 = v7;
  }
}

void sub_100255FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 112);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 112);
      *(a1 + 112) = v5;
    }

    v3 = v7;
  }
}

void sub_100256064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 120);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableSet);
      v6 = *(a1 + 120);
      *(a1 + 120) = v5;

      v4 = *(a1 + 120);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

uint64_t sub_1002560DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 136) |= a2;
  }

  return result;
}

void sub_1002560F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 40);
      *(a1 + 40) = v5;
    }

    v3 = v7;
  }
}

void sub_100256170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 80);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 80);
      *(a1 + 80) = v5;
    }

    v3 = v7;
  }
}

void sub_1002561F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v74 = v3;
    if (v3)
    {
      v4 = [v3[1] copy];
      if (v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          [v5 addEntriesFromDictionary:v4];
        }

        else
        {
          v6 = [v4 mutableCopy];
          v7 = *(a1 + 8);
          *(a1 + 8) = v6;
        }
      }

      v8 = [v74[2] copy];
      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          [v9 addEntriesFromDictionary:v8];
        }

        else
        {
          v10 = [v8 mutableCopy];
          v11 = *(a1 + 16);
          *(a1 + 16) = v10;
        }
      }

      v73 = [v74[3] copy];
      if (v73)
      {
        v12 = *(a1 + 24);
        if (v12)
        {
          [v12 addEntriesFromDictionary:v73];
        }

        else
        {
          v13 = [v73 mutableCopy];
          v14 = *(a1 + 24);
          *(a1 + 24) = v13;
        }
      }

      v72 = [v74[4] copy];
      if (v72)
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          [v15 addObjectsFromArray:v72];
        }

        else
        {
          v16 = [v72 mutableCopy];
          v17 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      v71 = [v74[5] copy];
      if (v71)
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = [v71 allObjects];
          [v18 addObjectsFromArray:v19];
        }

        else
        {
          v20 = [v71 mutableCopy];
          v19 = *(a1 + 40);
          *(a1 + 40) = v20;
        }
      }

      v70 = [v74[6] copy];
      if (v70)
      {
        v21 = *(a1 + 48);
        if (v21)
        {
          v22 = [v70 allObjects];
          [v21 addObjectsFromArray:v22];
        }

        else
        {
          v23 = [v70 mutableCopy];
          v22 = *(a1 + 48);
          *(a1 + 48) = v23;
        }
      }

      v69 = [v74[7] copy];
      if (v69)
      {
        v24 = *(a1 + 56);
        if (v24)
        {
          [v24 addEntriesFromDictionary:v69];
        }

        else
        {
          v25 = [v69 mutableCopy];
          v26 = *(a1 + 56);
          *(a1 + 56) = v25;
        }
      }

      v68 = [v74[8] copy];
      if (v68)
      {
        v27 = *(a1 + 64);
        if (v27)
        {
          v28 = [v68 allObjects];
          [v27 addObjectsFromArray:v28];
        }

        else
        {
          v29 = [v68 mutableCopy];
          v28 = *(a1 + 64);
          *(a1 + 64) = v29;
        }
      }

      v30 = [v74[9] copy];
      v31 = v30;
      v66 = v30;
      if (v30)
      {
        v32 = *(a1 + 72);
        if (v32)
        {
          v33 = [v30 allObjects];
          [v32 addObjectsFromArray:v33];
        }

        else
        {
          v34 = [v30 mutableCopy];
          v33 = *(a1 + 72);
          *(a1 + 72) = v34;
        }

        v31 = v66;
      }

      v67 = [v74[10] copy];
      if (v67)
      {
        v35 = *(a1 + 80);
        if (v35)
        {
          v36 = [v67 allObjects];
          [v35 addObjectsFromArray:v36];
        }

        else
        {
          v37 = [v67 mutableCopy];
          v36 = *(a1 + 80);
          *(a1 + 80) = v37;
        }
      }

      v38 = [v74[11] copy];
      v39 = v38;
      if (v38)
      {
        v40 = *(a1 + 88);
        if (v40)
        {
          v41 = [v38 allObjects];
          [v40 addObjectsFromArray:v41];
        }

        else
        {
          v42 = [v38 mutableCopy];
          v41 = *(a1 + 88);
          *(a1 + 88) = v42;
        }
      }

      v43 = [v74[12] copy];
      v44 = v43;
      if (v43)
      {
        v45 = *(a1 + 96);
        if (v45)
        {
          v46 = [v43 allObjects];
          [v45 addObjectsFromArray:v46];
        }

        else
        {
          v47 = [v43 mutableCopy];
          v46 = *(a1 + 96);
          *(a1 + 96) = v47;
        }
      }

      v48 = [v74[13] copy];
      v49 = v48;
      if (v48)
      {
        v50 = *(a1 + 104);
        if (v50)
        {
          v51 = [v48 allObjects];
          [v50 addObjectsFromArray:v51];
        }

        else
        {
          v52 = [v48 mutableCopy];
          v51 = *(a1 + 104);
          *(a1 + 104) = v52;
        }
      }

      v53 = [v74[14] copy];
      v54 = v53;
      if (v53)
      {
        v55 = *(a1 + 112);
        if (v55)
        {
          v56 = [v53 allObjects];
          [v55 addObjectsFromArray:v56];
        }

        else
        {
          v57 = [v53 mutableCopy];
          v56 = *(a1 + 112);
          *(a1 + 112) = v57;
        }
      }

      v58 = [v74[15] copy];
      v59 = v58;
      if (v58)
      {
        v60 = v8;
        v61 = v4;
        v62 = *(a1 + 120);
        if (v62)
        {
          v63 = [v58 allObjects];
          [v62 addObjectsFromArray:v63];
        }

        else
        {
          v64 = [v58 mutableCopy];
          v63 = *(a1 + 120);
          *(a1 + 120) = v64;
        }

        v4 = v61;
        v8 = v60;
        v31 = v66;
      }

      *(a1 + 144) |= *(v74 + 144);
      *(a1 + 136) |= v74[17];
      *(a1 + 145) |= *(v74 + 145);
      *(a1 + 146) |= *(v74 + 146);
      *(a1 + 147) |= *(v74 + 147);
      v65 = *(v74 + 148);
    }

    else
    {
      v65 = 0;
    }

    *(a1 + 148) |= v65 & 1;
    v3 = v74;
  }
}

void sub_100256788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100256824;
    v6[3] = &unk_10051ED28;
    v7 = v3;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void sub_100256834(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 48);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002568D0;
    v6[3] = &unk_10051ED50;
    v7 = v3;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void sub_1002568E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10025697C;
    v6[3] = &unk_10051ED50;
    v7 = v3;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void sub_10025698C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 56);
    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *(a1 + 56);
      *(a1 + 56) = v7;

      v6 = *(a1 + 56);
    }

    [v6 setObject:v5 forKeyedSubscript:v9];
  }
}

void sub_100256A14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 48);
      *(a1 + 48) = v5;
    }

    v3 = v7;
  }
}

void sub_100256A94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [NSMutableSet setWithObject:v3];
      v6 = *(a1 + 64);
      *(a1 + 64) = v5;
    }

    v3 = v7;
  }
}

__CFString *sub_100256C00(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_10051ED70[a1];
  }
}

void sub_100256E68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v34 = a2;
  v33 = v2;
  if (v3)
  {
    v36 = objc_opt_new();
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_100257508;
    v60 = sub_100257518;
    v61 = 0;
    v4 = *(v3 + 98);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100257520;
    v55[3] = &unk_10051EDB8;
    v55[4] = v3;
    v55[5] = &v56;
    v35 = v3;
    [v4 readUsingSession:v55];
    v5 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v6 = v57[5];
    v7 = [v6 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v52;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          v12 = [NSNumber numberWithInteger:v8];
          v13 = sub_10023FAF4(v11, v12);
          [v36 addObject:v13];

          [v5 setObject:v11 forKeyedSubscript:v12];
          ++v8;
        }

        v7 = [v6 countByEnumeratingWithState:&v51 objects:v62 count:16];
      }

      while (v7);
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_100257508;
    v49 = sub_100257518;
    v50 = 0;
    v14 = *(v35 + 98);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100257580;
    v44[3] = &unk_10051EDB8;
    v44[4] = v35;
    v44[5] = &v45;
    [v14 readUsingSession:v44];
    v15 = [v46[5] dictionaryRepresentationForRequest];
    v16 = *(v35 + 50);
    v17 = v34;
    v18 = v15;
    [v16 setObject:v36 forKeyedSubscript:@"ad-networks"];
    [*(v35 + 50) setObject:v18 forKeyedSubscript:@"token-info"];

    v19 = [v17 URLForKey:@"skadnetwork-process-ads-url"];

    if (!v19)
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using fallback secondary call URL", buf, 2u);
      }

      v19 = [NSURL URLWithString:@"https://amp-account.apps.apple.com/account/install-validation/ads/process"];
    }

    v21 = [[NSMutableURLRequest alloc] initWithURL:v19];
    [v21 setHTTPMethod:@"POST"];
    if (*(v35 + 58) == 1)
    {
      [v21 _setPrivacyProxyFailClosed:1];
    }

    v22 = *(v35 + 50);
    *buf = 0;
    v23 = [NSJSONSerialization dataWithJSONObject:v22 options:0 error:buf];
    v24 = *buf;
    [v21 setHTTPBody:v23];
    [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v25 = ASDErrorWithSafeUserInfo();
    v26 = v25;

    if (v21)
    {
      v27 = [NSSet setWithObjects:@"Accept-Language", 0];
      if (*(v35 + 58) == 1)
      {
        v28 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        [v28 set_sourceApplicationSecondaryIdentifier:@"com.apple.appstored.skadnetwork.crowdanonymity"];
        v29 = [NSSet setWithObjects:@"Accept-Language", 0];
        [v28 set_suppressedAutoAddedHTTPHeaders:v29];
      }

      else
      {
        v28 = +[NSURLSessionConfiguration defaultSessionConfiguration];
      }

      [v28 set_suppressedAutoAddedHTTPHeaders:v27];
      v31 = [NSURLSession sessionWithConfiguration:v28];
      *buf = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = sub_1002575E0;
      v40 = &unk_10051EDE0;
      v43 = v33;
      v41 = v35;
      v42 = v5;
      v32 = [v31 dataTaskWithRequest:v21 completionHandler:buf];
      [v32 resume];
    }

    else
    {
      if (!v25)
      {
        v25 = ASDErrorWithDescription();
        v30 = v25;
      }

      (*(v33 + 2))(v33, v25);
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v56, 8);
  }
}

void sub_1002574B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100257508(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100257520(uint64_t a1, void *a2)
{
  v3 = sub_1003C6568(a2, *(*(a1 + 32) + 82));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100257580(uint64_t a1, void *a2)
{
  v3 = sub_1003C90B8(a2, *(*(a1 + 32) + 82));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1002575E0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v58 = a2;
  v7 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_71;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = *(a1 + 48);
    v29 = sub_1002580D8(*(a1 + 32));
    (*(v28 + 16))(v28, v29);

    goto LABEL_71;
  }

  v8 = [v7 statusCode];
  v9 = [NSNumber numberWithInteger:v8];
  [*(a1 + 32) setResponseStatusCode:v9];

  if (v8 != 200)
  {
    v30 = *(a1 + 48);
    v31 = sub_1002580D8(*(a1 + 32));
    v32 = *(v30 + 16);
    v33 = v30;
    v34 = v31;
    v32(v33, v31);
    goto LABEL_70;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v58;
  v57 = v10;
  v54 = v11;
  v52 = v12;
  if (!v11)
  {
    v56 = 0;
    goto LABEL_68;
  }

  if (!v12)
  {
    v35 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v63) = 0;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Fetch postback response data is nil", &v63, 2u);
    }

    v56 = sub_1002580D8(v11);
    goto LABEL_68;
  }

  *v69 = 0;
  v53 = [NSJSONSerialization JSONObjectWithData:v12 options:4 error:v69];
  v55 = *v69;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v55)
    {
      v55 = sub_1002580D8(v11);
    }

    v36 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v63) = 138543362;
      *(&v63 + 4) = v55;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not deserialize data into dictionary %{public}@", &v63, 0xCu);
    }

    v55 = v55;
    v56 = v55;
    goto LABEL_67;
  }

  v45 = v53;
  v49 = [v45 objectForKeyedSubscript:@"ad-networks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v63) = 0;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Fetch postback response contains invalid ad networks array", &v63, 2u);
    }

    v56 = sub_1002580D8(v11);
    goto LABEL_66;
  }

  v13 = v49;
  v46 = objc_opt_new();
  v48 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v13;
  v51 = [obj countByEnumeratingWithState:&v59 objects:&v63 count:16];
  if (!v51)
  {

LABEL_64:
    objc_storeStrong((v54 + 66), v46);
    v40 = v48;
    v56 = 0;
    v39 = *(v54 + 74);
    *(v54 + 74) = v40;
    goto LABEL_65;
  }

  v56 = 0;
  v50 = *v60;
  do
  {
    v14 = 0;
    do
    {
      if (*v60 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v59 + 1) + 8 * v14);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = sub_1002580D8(v54);
        v16 = v56;
LABEL_60:

        v56 = v38;
        goto LABEL_61;
      }

      v16 = v15;
      if (![v16 count])
      {
        v38 = sub_1002580D8(v54);

        goto LABEL_60;
      }

      v17 = sub_1002380D8(v16, @"status");
      v18 = sub_1002380D8(v16, @"error");
      v19 = [v17 lowercaseString];
      v20 = [v18 lowercaseString];

      if (([v19 isEqualToString:@"ok"] & 1) != 0 || !objc_msgSend(v19, "isEqualToString:", @"error"))
      {
        v21 = 0;
      }

      else
      {
        if ([v20 isEqualToString:@"register error"] || objc_msgSend(v20, "isEqualToString:", @"validation error") || objc_msgSend(v20, "isEqualToString:", @"token error") || objc_msgSend(v20, "isEqualToString:", @"unsupported_redownload_version") || objc_msgSend(v20, "isEqualToString:", @"unsupported_multi_pingback_version") || objc_msgSend(v20, "isEqualToString:", @"unsupported_reengagement_version"))
        {
          v22 = sub_1002580D8(v54);
        }

        else
        {
          if ([v20 isEqualToString:@"max_multi_pingback_limit_exceeded"])
          {
            sub_1002580D8(v54);
          }

          else
          {
            ASDErrorWithDescription();
          }
          v22 = ;
        }

        v21 = v22;
      }

      if (v21)
      {
        v23 = sub_10023790C(v16, @"id");
        v24 = [v57 objectForKeyedSubscript:v23];
        v25 = [[_TtC9appstored31SKANFetchPostbackRejectedParams alloc] initWithError:v21 params:v24];
        [v48 addObject:v25];

LABEL_37:
        v26 = 1;
        goto LABEL_38;
      }

      v23 = sub_10024B378(InstallAttributionPingback, v16);
      if (v23)
      {
        [v46 addObject:v23];
        goto LABEL_37;
      }

      sub_1002580D8(v54);
      v26 = 0;
      v56 = v23 = v56;
LABEL_38:

      if (!v26)
      {
        goto LABEL_61;
      }

      v14 = v14 + 1;
    }

    while (v51 != v14);
    v27 = [obj countByEnumeratingWithState:&v59 objects:&v63 count:16];
    v51 = v27;
  }

  while (v27);
LABEL_61:

  if (!v56)
  {
    goto LABEL_64;
  }

  v39 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v56;
    _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Fetch postback encountered error while processing response: %{public}@", &buf, 0xCu);
  }

LABEL_65:

LABEL_66:
LABEL_67:

LABEL_68:
  v34 = v56;
  if (v56)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), v56);
  }

  else
  {
    v41 = *(a1 + 32);
    if (v41)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v71 = 0x2020000000;
      v72 = 0;
      *&v59 = 0;
      *(&v59 + 1) = &v59;
      *&v60 = 0x3032000000;
      *(&v60 + 1) = sub_100257508;
      *&v61 = sub_100257518;
      *(&v61 + 1) = 0;
      v42 = *(v41 + 98);
      *&v63 = _NSConcreteStackBlock;
      *(&v63 + 1) = 3221225472;
      v64 = sub_100258114;
      v65 = &unk_10051EE08;
      v66 = v41;
      p_buf = &buf;
      v68 = &v59;
      [v42 modifyUsingTransaction:&v63];
      if (*(*(&buf + 1) + 24) == 1)
      {
        v43 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Removed parameters after fetching postbacks", v69, 2u);
        }
      }

      else
      {
        v43 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(*(&v59 + 1) + 40);
          *v69 = 138543362;
          *&v69[4] = v44;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not remove parameters %{public}@", v69, 0xCu);
        }
      }

      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&buf, 8);
    }

    (*(*(a1 + 48) + 16))();
    v34 = 0;
  }

LABEL_70:

LABEL_71:
}

void sub_1002580A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

id sub_1002580D8(void *a1)
{
  if (a1)
  {
    a1 = ASDErrorWithDescription();
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100258114(void *a1, void *a2)
{
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_10031A62C(a2, *(a1[4] + 82));
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  return *(*(a1[5] + 8) + 24);
}

void sub_100258B14(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

id sub_100258DEC(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = [[NSURLComponents alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 queryItems];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v9 value];
          if (v10)
          {
            [v2 setObject:v11 forKeyedSubscript:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [v2 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100258F88(void *a1)
{
  if (a1)
  {
    v2 = [NSURLComponents componentsWithURL:a1 resolvingAgainstBaseURL:1];
    v3 = [v2 queryItems];
    v4 = sub_10036FBC8(v3, &stru_10051EE80);

    if (v4)
    {
      v23 = v4;
      v5 = [v4 value];
      v6 = [v5 componentsSeparatedByString:@"/"];
      v7 = [v6 mutableCopy];

      if ([v7 count])
      {
        [v7 setObject:@"12345_54321" atIndexedSubscript:0];
      }

      v22 = v7;
      v8 = [v7 componentsJoinedByString:@"/"];
      v9 = [NSURLQueryItem queryItemWithName:@"accessKey" value:v8];

      v10 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v24 = v2;
      v11 = [v2 queryItems];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [v16 name];
            v18 = [v17 isEqualToString:@"accessKey"];

            if (v18)
            {
              v19 = v9;
            }

            else
            {
              v19 = v16;
            }

            [v10 addObject:v19];
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      v2 = v24;
      [v24 setQueryItems:v10];
      v20 = [v24 URL];

      v4 = v23;
    }

    else
    {
      v20 = a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL sub_10025921C(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = [v2 isEqualToString:@"accessKey"];

  return v3;
}

id sub_100259260(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    if ([v3 count])
    {
      v5 = +[NSMutableString string];
      v26 = v4;
      v6 = [v4 absoluteString];
      v7 = [v6 componentsSeparatedByString:@"?"];

      v24 = [v7 objectAtIndexedSubscript:0];
      if ([v7 count] >= 2)
      {
        v8 = [v7 objectAtIndexedSubscript:1];
        [v5 appendString:v8];
      }

      v25 = v7;
      v9 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v10 = [v9 mutableCopy];

      [v10 removeCharactersInString:@"?&%+=;"];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = v3;
      obj = [v3 allKeys];
      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v10];
            v18 = [v11 objectForKeyedSubscript:v16];
            v19 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v10];

            if ([v5 length])
            {
              v20 = @"&%@=%@";
            }

            else
            {
              v20 = @"%@=%@";
            }

            [v5 appendFormat:v20, v17, v19];
          }

          v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v13);
      }

      if (v5)
      {
        v21 = v24;
        if ([v5 length])
        {
          v22 = [v24 stringByAppendingFormat:@"?%@", v5];

          v21 = v22;
        }

        v3 = v11;
      }

      else
      {
        v3 = v11;
        v21 = v24;
      }

      v4 = [NSURL URLWithString:v21];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}