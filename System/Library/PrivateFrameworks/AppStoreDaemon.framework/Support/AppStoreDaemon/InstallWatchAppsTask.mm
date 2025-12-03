@interface InstallWatchAppsTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation InstallWatchAppsTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_group_create();
  v6 = +[NSMutableArray array];
  v7 = &unk_10044B000;
  v51 = v6;
  selfCopy = self;
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
      firstObject = 0;
      v13 = 0;
      v10 = obj;
      goto LABEL_41;
    }

    v50 = handlerCopy;
    firstObject = 0;
    v14 = *v66;
    selfCopy2 = self;
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
          buyParams = [v17 buyParams];
          v22 = sub_1003B33BC(buyParams);

          if ([v17 isUserInitiated])
          {
            v23 = firstObject;
            goto LABEL_19;
          }

          v24 = v5;
          v25 = *(&selfCopy2->_purchaseInfo + 2);
          itemID = [v17 itemID];
          stringValue = [itemID stringValue];
          v64 = firstObject;
          v28 = sub_1003A4B10(v25, stringValue, v22, &v64);
          v23 = v64;

          if (v28)
          {
            v5 = v24;
            v6 = v51;
            selfCopy2 = selfCopy;
LABEL_19:
            dispatch_group_enter(v5);
            v29 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              logKey = [v17 logKey];
              *buf = 138412290;
              v78 = logKey;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] Starting purchases for redownload", buf, 0xCu);
            }

            v31 = sub_1001DFF60();
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_1003465F0;
            v60[3] = &unk_100524320;
            v60[4] = v17;
            v60[5] = selfCopy2;
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
              logKey2 = [v17 logKey];
              *buf = 138412546;
              v78 = logKey2;
              v79 = 2114;
              v80 = v23;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Redownload request throttled with error: %{public}@", buf, 0x16u);
            }

            v6 = v51;
            selfCopy2 = selfCopy;
          }

          firstObject = v23;
          v14 = v53;
          v10 = obj;
          goto LABEL_26;
        }

        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          logKey3 = [v17 logKey];
          *buf = 138412546;
          v78 = logKey3;
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
        handlerCopy = v50;
        v7 = &unk_10044B000;
        goto LABEL_41;
      }
    }
  }

  firstObject = [*(&self->super._finished + 1) firstObject];
  v9 = sub_100346144(InstallWatchAppsTask, firstObject);
  if (!v9)
  {
    buyParams2 = [firstObject buyParams];
    v35 = sub_1003B33BC(buyParams2);

    if ([firstObject isUserInitiated])
    {
      v13 = 0;
    }

    else
    {
      v36 = v5;
      v37 = *(&selfCopy->_purchaseInfo + 2);
      itemID2 = [firstObject itemID];
      stringValue2 = [itemID2 stringValue];
      v75 = 0;
      v40 = sub_1003A4B10(v37, stringValue2, v35, &v75);
      v13 = v75;

      if ((v40 & 1) == 0)
      {
        v44 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          logKey4 = [firstObject logKey];
          *buf = 138412546;
          v78 = logKey4;
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
      logKey5 = [firstObject logKey];
      *buf = 138412290;
      v78 = logKey5;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Starting purchase for redownload", buf, 0xCu);
    }

    v43 = sub_1001DFF60();
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1003462E8;
    v69[3] = &unk_100524320;
    v70 = firstObject;
    v71 = selfCopy;
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
    logKey6 = [firstObject logKey];
    *buf = 138412546;
    v78 = logKey6;
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
  block[4] = selfCopy;
  v57 = v6;
  v58 = v13;
  v59 = handlerCopy;
  v47 = v13;
  v48 = handlerCopy;
  v49 = v6;
  dispatch_group_notify(v5, v46, block);
}

@end