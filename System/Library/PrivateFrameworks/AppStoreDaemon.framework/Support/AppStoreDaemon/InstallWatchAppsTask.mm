@interface InstallWatchAppsTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation InstallWatchAppsTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = +[NSMutableArray array];
  v7 = &unk_10044B000;
  v51 = v6;
  v52 = self;
  if ([*(&self->super._finished + 1) count] != 1)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = *(&self->super._finished + 1);
    v55 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (!v55)
    {
      v8 = 0;
      v13 = 0;
      v10 = obj;
      goto LABEL_41;
    }

    v50 = v4;
    v8 = 0;
    v14 = *v66;
    v15 = self;
    v10 = obj;
    v53 = *v66;
    while (1)
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v65 + 1) + 8 * i);
        v18 = sub_100346144(InstallWatchAppsTask, v17);
        if (!v18)
        {
          v21 = [v17 buyParams];
          v22 = sub_1003B33BC(v21);

          if ([v17 isUserInitiated])
          {
            v23 = v8;
            goto LABEL_19;
          }

          v24 = v5;
          v25 = *(&v15->_purchaseInfo + 2);
          v26 = [v17 itemID];
          v27 = [v26 stringValue];
          v64 = v8;
          v28 = sub_1003A4B10(v25, v27, v22, &v64);
          v23 = v64;

          if (v28)
          {
            v5 = v24;
            v6 = v51;
            v15 = v52;
LABEL_19:
            dispatch_group_enter(v5);
            v29 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v17 logKey];
              *buf = 138412290;
              v78 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] Starting purchases for redownload", buf, 0xCu);
            }

            v31 = sub_1001DFF60();
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_1003465F0;
            v60[3] = &unk_100524320;
            v60[4] = v17;
            v60[5] = v15;
            v61 = v22;
            v62 = v6;
            v63 = v5;
            sub_1001E065C(v31, v17, v60);
          }

          else
          {
            v32 = ASDLogHandleForCategory();
            v5 = v24;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v17 logKey];
              *buf = 138412546;
              v78 = v33;
              v79 = 2114;
              v80 = v23;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Redownload request throttled with error: %{public}@", buf, 0x16u);
            }

            v6 = v51;
            v15 = v52;
          }

          v8 = v23;
          v14 = v53;
          v10 = obj;
          goto LABEL_26;
        }

        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v17 logKey];
          *buf = 138412546;
          v78 = v20;
          v79 = 2114;
          v80 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Active installation already exists: %{public}@", buf, 0x16u);
        }

        [v6 addObject:v18];
LABEL_26:
      }

      v55 = [v10 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (!v55)
      {
        v13 = 0;
        v4 = v50;
        v7 = &unk_10044B000;
        goto LABEL_41;
      }
    }
  }

  v8 = [*(&self->super._finished + 1) firstObject];
  v9 = sub_100346144(InstallWatchAppsTask, v8);
  if (!v9)
  {
    v34 = [v8 buyParams];
    v35 = sub_1003B33BC(v34);

    if ([v8 isUserInitiated])
    {
      v13 = 0;
    }

    else
    {
      v36 = v5;
      v37 = *(&v52->_purchaseInfo + 2);
      v38 = [v8 itemID];
      v39 = [v38 stringValue];
      v75 = 0;
      v40 = sub_1003A4B10(v37, v39, v35, &v75);
      v13 = v75;

      if ((v40 & 1) == 0)
      {
        v44 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v8 logKey];
          *buf = 138412546;
          v78 = v45;
          v79 = 2114;
          v80 = v13;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] Redownload request throttled with error: %{public}@", buf, 0x16u);
        }

        v5 = v36;
        v6 = v51;
        goto LABEL_40;
      }

      v5 = v36;
    }

    dispatch_group_enter(v5);
    v41 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v8 logKey];
      *buf = 138412290;
      v78 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Starting purchase for redownload", buf, 0xCu);
    }

    v43 = sub_1001DFF60();
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1003462E8;
    v69[3] = &unk_100524320;
    v70 = v8;
    v71 = v52;
    v72 = v35;
    v73 = v51;
    v74 = v5;
    v6 = v51;
    sub_1001E065C(v43, v70, v69);

    v44 = v70;
LABEL_40:

    v10 = 0;
    goto LABEL_41;
  }

  v10 = v9;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 logKey];
    *buf = 138412546;
    v78 = v12;
    v79 = 2114;
    v80 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Active installation already exists: %{public}@", buf, 0x16u);
  }

  [v6 addObject:v10];
  v13 = 0;
LABEL_41:

  v46 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = v7[259];
  block[2] = sub_100346794;
  block[3] = &unk_10051CBD0;
  block[4] = v52;
  v57 = v6;
  v58 = v13;
  v59 = v4;
  v47 = v13;
  v48 = v4;
  v49 = v6;
  dispatch_group_notify(v5, v46, block);
}

@end