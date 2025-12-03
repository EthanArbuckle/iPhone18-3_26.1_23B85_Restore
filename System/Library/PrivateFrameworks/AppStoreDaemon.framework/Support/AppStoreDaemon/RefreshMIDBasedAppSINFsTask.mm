@interface RefreshMIDBasedAppSINFsTask
- (RefreshMIDBasedAppSINFsTask)init;
- (void)main;
@end

@implementation RefreshMIDBasedAppSINFsTask

- (RefreshMIDBasedAppSINFsTask)init
{
  v6.receiver = self;
  v6.super_class = RefreshMIDBasedAppSINFsTask;
  v2 = [(Task *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    logKey = v2->_logKey;
    v2->_logKey = v3;
  }

  return v2;
}

- (void)main
{
  +[NSMutableArray array];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10037E634;
  v3 = v41[3] = &unk_100524918;
  v42 = v3;
  sub_1003D31A8(ApplicationProxy, 0, v41);
  v4 = ASDLogHandleForCategory();
  selfCopy = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = [v3 count];
    *buf = 138412546;
    v44 = logKey;
    self = selfCopy;
    v45 = 2048;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to update %ld MID app(s)", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = sub_1003D0F60(v11);
        v14 = sub_1003D2404(v11);
        v15 = ASDLogHandleForCategory();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = self->_logKey;
            *buf = 138412546;
            v44 = v17;
            v45 = 2114;
            v46 = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Skipping MID based clip", buf, 0x16u);
          }
        }

        else
        {
          if (v16)
          {
            v18 = self->_logKey;
            *buf = 138412546;
            v44 = v18;
            v45 = 2114;
            v46 = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] MID refresh update requesting SINF update", buf, 0x16u);
          }

          v19 = [ASDManagedApplicationRequestOptions alloc];
          v20 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v11)];
          v21 = [NSNumber numberWithLongLong:sub_1003D2F7C(v11)];
          v22 = sub_1003D251C(v11);
          v23 = [v19 initWithItemIdentifer:v20 externalVersionIdentifier:v21 bundleIdentifier:v13 bundleVersion:v22 skipDownloads:0];

          self = selfCopy;
          v24 = sub_1002C7044([ManagedApplicationTask alloc], v23, 0);
          v36 = 0;
          [(Task *)selfCopy runSubTask:v24 returningError:&v36];
          v15 = v36;
          v25 = ASDLogHandleForCategory();
          v26 = v25;
          if (v15)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v27 = selfCopy->_logKey;
              *buf = 138412802;
              v44 = v27;
              v45 = 2114;
              v46 = v13;
              v47 = 2114;
              v48[0] = v15;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] MID refresh update resulted in error: %{public}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v28 = *(v24 + 24) & 1;
              v29 = *(v24 + 170);
            }

            else
            {
              v28 = 0;
              v29 = 0;
            }

            v30 = selfCopy->_logKey;
            *buf = 138413058;
            v44 = v30;
            v45 = 2114;
            v46 = v13;
            v47 = 1024;
            LODWORD(v48[0]) = v28;
            WORD2(v48[0]) = 2048;
            *(v48 + 6) = v29;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] MID refresh update complete with status: %d changeType: %ld", buf, 0x26u);
          }
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      v8 = v31;
    }

    while (v31);
  }

  v32 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_logKey;
    *buf = 138412290;
    v44 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] MID update triggered migration completed", buf, 0xCu);

LABEL_28:
    self->super._success = 1;
    goto LABEL_29;
  }

  if (self)
  {
    goto LABEL_28;
  }

LABEL_29:
}

@end