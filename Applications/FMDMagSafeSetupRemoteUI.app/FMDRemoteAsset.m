@interface FMDRemoteAsset
- (FMDRemoteAsset)initWithAccessoryType:(id)a3 style:(id)a4 type:(unint64_t)a5;
- (id)assetStorageLocation;
- (id)assetURL;
- (id)getStoredAssetLocation;
- (id)name;
- (void)fetchAssetWithCompletion:(id)a3;
@end

@implementation FMDRemoteAsset

- (FMDRemoteAsset)initWithAccessoryType:(id)a3 style:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = FMDRemoteAsset;
  v11 = [(FMDRemoteAsset *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rawAccessoryType, a3);
    v13 = [NSString stringWithFormat:@"MFI4.0v1_%@", v12->_rawAccessoryType];
    v14 = [FMDExtHelper _computehash:v13];
    accessoryType = v12->_accessoryType;
    v12->_accessoryType = v14;

    objc_storeStrong(&v12->_style, a4);
    v12->_assetType = a5;
  }

  return v12;
}

- (id)name
{
  v3 = [(FMDRemoteAsset *)self assetType];
  if (v3 > 3)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(&off_1000386F8 + v3);
    v5 = [(FMDRemoteAsset *)self rawAccessoryType];
    v6 = [(FMDRemoteAsset *)self style];
    v7 = [NSString stringWithFormat:v4, v5, v6];
  }

  return v7;
}

- (id)assetURL
{
  v2 = [(FMDRemoteAsset *)self name];
  v3 = [NSString stringWithFormat:@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/Accessory/%@", v2];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)assetStorageLocation
{
  v2 = [(FMDRemoteAsset *)self name];
  v3 = [NSString stringWithFormat:@"/var/mobile/Library/Caches/com.apple.icloud.findmydeviced/Assets/%@", v2];

  return v3;
}

- (void)fetchAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDRemoteAsset *)self assetStorageLocation];
  v6 = +[NSFileManager defaultManager];
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: file location = %@", buf, 0xCu);
  }

  if ([v6 fileExistsAtPath:v5])
  {
    if (-[FMDRemoteAsset assetType](self, "assetType") || (v8 = objc_opt_new(), v9 = [v8 isValidVideoAtFilePath:v5], v8, v9))
    {
      v4[2](v4, v5, 0);
      goto LABEL_17;
    }

    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: Removing invalid cached asset.", buf, 2u);
    }

    v37 = 0;
    [v6 removeItemAtPath:v5 error:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = sub_100002400();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001DA94(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  v19 = [(FMDRemoteAsset *)self assetURL];
  v20 = [FMDRemoteAssetValidator alloc];
  v21 = objc_opt_new();
  v22 = [(FMDRemoteAssetValidator *)v20 initWithRequestURL:v19 mimeTypeProvider:v21];

  v23 = +[NSURLSession sharedSession];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_1000035BC;
  v31 = &unk_1000386D8;
  v32 = v22;
  v36 = v4;
  v33 = v19;
  v34 = v5;
  v35 = v6;
  v24 = v19;
  v25 = v22;
  v26 = [v23 downloadTaskWithURL:v24 completionHandler:&v28];

  v27 = sub_100002400();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: task resumed", buf, 2u);
  }

  [v26 resume];
LABEL_17:
}

- (id)getStoredAssetLocation
{
  v2 = [(FMDRemoteAsset *)self assetStorageLocation];
  v3 = +[NSFileManager defaultManager];
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: file location = %@", &v7, 0xCu);
  }

  if ([v3 fileExistsAtPath:v2])
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end