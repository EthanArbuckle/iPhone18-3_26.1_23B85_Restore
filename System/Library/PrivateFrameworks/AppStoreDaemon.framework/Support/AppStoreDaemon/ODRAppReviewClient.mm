@interface ODRAppReviewClient
- (void)registerManifest:(id)manifest forBundleID:(id)d replyBlock:(id)block;
@end

@implementation ODRAppReviewClient

- (void)registerManifest:(id)manifest forBundleID:(id)d replyBlock:(id)block
{
  manifestCopy = manifest;
  blockCopy = block;
  dCopy = d;
  v10 = sub_100280A90([ODRManifest alloc], manifestCopy, dCopy, 0);
  v11 = sub_10039A094(ODRApplication, dCopy);

  if (!sub_10039B3C8(v11) || (sub_10039AAE4(v11), (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, sub_10039B05C(v11), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    v15 = [v11 mutableCopy];
    v16 = sub_100280C3C(v10);
    sub_10039C490(v15, v16);

    v17 = sub_100280B6C(v10);
    stringValue = [v17 stringValue];
    sub_10039C634(v15, stringValue);

    v19 = [v15 copy];
    v11 = v19;
  }

  v20 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v33 = [manifestCopy length];
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[App Review] Importing %{iec-bytes}lu manifest for %{public}@", buf, 0x16u);
  }

  v21 = sub_10039A79C(v11, 0);
  if (!v21)
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v27 = sub_10039A6A0(v11);
      *buf = 138543362;
      v33 = v27;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[App Review] We failed to copy the tag manifest for %{public}@, importing just the manifest data", buf, 0xCu);
    }
  }

  v23 = sub_100208FBC();
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100281CFC;
  v28[3] = &unk_10051FA58;
  v29 = v21;
  v30 = v10;
  v31 = v11;
  v24 = v11;
  v25 = v10;
  v26 = v21;
  [v23 modifyUsingTransaction:v28];

  blockCopy[2](blockCopy, 0);
}

@end