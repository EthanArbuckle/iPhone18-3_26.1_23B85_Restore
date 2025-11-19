@interface ODRDeveloperToolsClient
- (void)getSimulatedBandwidthWithReply:(id)a3;
- (void)purgeAllTagsInBundleWithID:(id)a3 replyBlock:(id)a4;
- (void)purgeTagWithName:(id)a3 inBundleWithID:(id)a4 replyBlock:(id)a5;
- (void)registerManifest:(id)a3 forBundleID:(id)a4 replyBlock:(id)a5;
- (void)setSimulatedBandwidth:(unint64_t)a3 withReply:(id)a4;
- (void)tagStatusForBundle:(id)a3 replyBlock:(id)a4;
@end

@implementation ODRDeveloperToolsClient

- (void)tagStatusForBundle:(id)a3 replyBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1002ECD84;
  v20 = sub_1002ECD94;
  v21 = objc_opt_new();
  v7 = sub_100399B78(ODRApplication, v5);
  v8 = sub_10039A79C(v7, 0);
  v9 = sub_100208FBC();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002ECD9C;
  v12[3] = &unk_1005220F8;
  v10 = v8;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  v15 = &v16;
  [v9 readUsingSession:v12];

  v6[2](v6, v17[5], 0);
  _Block_object_dispose(&v16, 8);
}

- (void)purgeAllTagsInBundleWithID:(id)a3 replyBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[ODRDeveloperToolsClient purgeAllTagsInBundleWithID:replyBlock:]";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s BundleID [%{public}@]", buf, 0x16u);
  }

  v8 = sub_100399B78(ODRApplication, v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = sub_1002ECD84;
  v28 = sub_1002ECD94;
  v29 = 0;
  v9 = sub_100208FBC();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002ED3C4;
  v22[3] = &unk_100522160;
  v10 = v8;
  v23 = v10;
  v24 = buf;
  [v9 readUsingSession:v22];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(*&buf[8] + 40);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = sub_100220330();
        v17 = sub_100269134(v15);
        sub_100222DB8(v16, v17, 1);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v12);
  }

  v6[2](v6, 0);
  _Block_object_dispose(buf, 8);
}

- (void)purgeTagWithName:(id)a3 inBundleWithID:(id)a4 replyBlock:(id)a5
{
  v7 = a3;
  v25 = a4;
  v24 = a5;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[ODRDeveloperToolsClient purgeTagWithName:inBundleWithID:replyBlock:]";
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v42 = v25;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s TagName [%{public}@] BundleID [%{public}@]", buf, 0x20u);
  }

  v9 = sub_100399B78(ODRApplication, v25);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_1002ECD84;
  v43 = sub_1002ECD94;
  v44 = 0;
  v10 = sub_100208FBC();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1002ED8D0;
  v30[3] = &unk_10051F410;
  v33 = buf;
  v23 = v7;
  v31 = v23;
  v22 = v9;
  v32 = v22;
  [v10 readUsingSession:v30];

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(*&buf[8] + 40) count];
    *v35 = 134218498;
    v36 = v12;
    v37 = 2114;
    v38 = v23;
    v39 = 2114;
    v40 = v25;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "There are [%ld] tags with name [%{public}@] for bundleID [%{public}@]", v35, 0x20u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = *(*&buf[8] + 40);
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100269134(v17);
          *v35 = 138543362;
          v36 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Requesting purge of asset pack [%{public}@]", v35, 0xCu);
        }

        v20 = sub_100220330();
        v21 = sub_100269134(v17);
        sub_100222DB8(v20, v21, 1);
      }

      v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  v24[2](v24, 0);
  _Block_object_dispose(buf, 8);
}

- (void)registerManifest:(id)a3 forBundleID:(id)a4 replyBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100399B78(ODRApplication, v8);
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v22 = [v7 length];
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DT] Importing %{iec-bytes}lu manifest for %{public}@", buf, 0x16u);
  }

  v12 = sub_100338694([ODRApplicationImportTask alloc], v10);
  v13 = [ODRManifest alloc];
  v14 = sub_10039A6A0(v10);
  v15 = sub_100280A90(v13, v7, v14, 0);

  if (v12)
  {
    objc_setProperty_atomic(v12, v16, v15, 48);
  }

  objc_initWeak(buf, v12);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002EDBC0;
  v18[3] = &unk_100522188;
  objc_copyWeak(&v20, buf);
  v17 = v9;
  v19 = v17;
  [v12 setCompletionBlock:v18];
  sub_10023EDE4(ODRTaskQueue, v12, -1);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)getSimulatedBandwidthWithReply:(id)a3
{
  v5 = a3;
  v4 = sub_1002B3D88();
  (*(a3 + 2))(v5, v4, 0);
}

- (void)setSimulatedBandwidth:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  sub_1002B3D04(ODRSimulatedDownloadsManager, a3);
  v5 = sub_1002B3D88();
  v6[2](v6, v5, 0);
}

@end