id sub_1001FCFBC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"device_vendor_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FCFF4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"evid");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001FD02C(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 > 8)
  {
    return 0;
  }

  else
  {
    return qword_10044B8D0[a2];
  }
}

uint64_t sub_1001FD06C(uint64_t a1, int a2)
{
  objc_opt_self();
  if ((a2 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_10044B918[(a2 - 1)];
  }
}

id sub_1001FD0B4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"bundle_id");
    v3 = sub_10023E0F8(v1, @"event_type");
    v4 = [v3 integerValue];

    v5 = sub_10023E0F8(v1, @"event_subtype");
    v6 = [v5 integerValue];

    v7 = sub_10023E0F8(v1, @"evid");
    v8 = [v7 longLongValue];

    v9 = sub_10023E0F8(v1, @"device_vendor_id");
    v10 = sub_10023E0F8(v1, @"cohort");
    v11 = sub_10023E0F8(v1, @"bundle_version");
    v1 = [NSString stringWithFormat:@"%@:%ld:%ld:%lld:%@:%@:%@", v2, v4, v6, v8, v9, v10, v11];
  }

  return v1;
}

uint64_t sub_1001FD214(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"event_type");
    v2 = [v1 unsignedCharValue];

    return v2;
  }

  return result;
}

uint64_t sub_1001FD25C(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"device_vendor_id_repaired");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1001FD2A4(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_beta");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1001FD2EC(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_clip");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1001FD334(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_system_app");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id sub_1001FD37C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FD3B4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"item_name");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FD3EC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"short_version");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FD424(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"storefront");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FD45C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"timestamp");
    if (objc_opt_respondsToSelector())
    {
      [v1 doubleValue];
      v2 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001FD4E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v20 = v3;
    if (v3)
    {
      v4 = v3[3];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (v5)
    {
      if (v20)
      {
        v6 = v20[3];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      sub_10023E000(a1, v7, @"clip_campaign_token");
    }

    if (v20)
    {
      v8 = v20[4];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      if (v20)
      {
        v10 = v20[4];
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      sub_10023E000(a1, v11, @"clip_provider_token");
    }

    if (v20)
    {
      v12 = v20[1];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      if (v20)
      {
        v14 = v20[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      sub_10023E000(a1, v15, @"clip_affiliate_token");
    }

    if (v20)
    {
      v16 = v20[2];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v3 = v20;
    if (v17)
    {
      if (v20)
      {
        v18 = v20[2];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      sub_10023E000(a1, v19, @"clip_campaign");

      v3 = v20;
    }
  }
}

id sub_1001FD93C(void *a1)
{
  if (a1)
  {
    v1 = sub_100269488(a1);
    v2 = sub_1002402E4(ODRContentHash, v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001FD9A0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    v4 = sub_1003DC0F4();
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 32);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v2 path];
    v9 = [v8 hasPrefix:v7];

    if (v9)
    {
      v45 = v3;
      v10 = +[NSFileManager defaultManager];
      v11 = [v2 path];
      v12 = [v10 fileExistsAtPath:v11];

      if (v12)
      {
        v49 = 0;
        v13 = [v10 removeItemAtURL:v2 error:&v49];
        v14 = v49;
        v15 = ASDLogHandleForCategory();
        v16 = v15;
        if (v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v51 = v2;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed : %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v51 = v2;
          v52 = 2114;
          v53 = v14;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error removing [%{public}@]: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping deletion because the asset pack isn't on disk", buf, 2u);
        }

        v14 = 0;
      }

      v18 = [v2 URLByDeletingPathExtension];
      v19 = [v18 URLByAppendingPathExtension:@"plist"];

      v20 = [v19 path];
      v21 = [v10 fileExistsAtPath:v20];

      v44 = v19;
      if (v21)
      {
        v48 = v14;
        v22 = [v10 removeItemAtURL:v19 error:&v48];
        v23 = v48;

        v24 = ASDLogHandleForCategory();
        v25 = v24;
        if (v22)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v51 = v2;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Removed : %{public}@", buf, 0xCu);
          }

          v17 = 1;
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v51 = v2;
            v52 = 2114;
            v53 = v23;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error removing [%{public}@]: %{public}@", buf, 0x16u);
          }

          v17 = 0;
        }
      }

      else
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Skipping deletion because the manifest isn't on disk", buf, 2u);
        }

        v17 = 1;
        v23 = v14;
      }

      v26 = [v2 URLByDeletingLastPathComponent];
      v27 = [v26 path];
      v28 = [v7 isEqualToString:v27];

      if (v28)
      {
        v30 = v26;
      }

      else
      {
        *&v29 = 138543618;
        v43 = v29;
        do
        {
          v32 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v51 = v26;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Going to attempt to remove asset packs parent directory [%{public}@]", buf, 0xCu);
          }

          if (v26)
          {
            v33 = [v26 path];
            v34 = [v10 fileExistsAtPath:v33];

            if (v34)
            {
              v47 = v23;
              v35 = [v10 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v47];
              v36 = v47;

              if (v35)
              {
                if ([v35 count])
                {
                  v37 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v51 = v26;
                    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Path has children, >>NOT<< removing: %{public}@", buf, 0xCu);
                  }
                }

                else
                {
                  v46 = v36;
                  v38 = [v10 removeItemAtURL:v26 error:&v46];
                  v39 = v46;

                  v40 = ASDLogHandleForCategory();
                  v37 = v40;
                  if (v38)
                  {
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v51 = v26;
                      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Removed: %{public}@", buf, 0xCu);
                    }

                    v17 = 1;
                  }

                  else
                  {
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v43;
                      v51 = v26;
                      v52 = 2114;
                      v53 = v39;
                      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "AssetPack's parent directory could not be removed. [%{public}@].  Error: %{public}@", buf, 0x16u);
                    }

                    v17 = 0;
                  }

                  v36 = v39;
                }
              }

              else
              {
                v37 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = v43;
                  v51 = v26;
                  v52 = 2114;
                  v53 = v36;
                  _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error removing [%{public}@].  Error: %{public}@", buf, 0x16u);
                }

                v17 = 0;
              }

              v23 = v36;
            }
          }

          v30 = [v26 URLByDeletingLastPathComponent];

          v41 = [v30 path];
          v42 = [v7 isEqualToString:v41];

          v26 = v30;
        }

        while (!v42);
      }

      v3 = v45;
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v51 = v2;
        v52 = 2114;
        v53 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "The URL we are trying to delete is not in the usual asset pack storage location. [URL: %{public}@ AssetPacksPath: %{public}@]", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No local URL provided.  Nothing will be removed.", buf, 2u);
    }

    v17 = 1;
  }

  objc_autoreleasePoolPop(v3);
  return v17 & 1;
}

uint64_t sub_1001FE144(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ([v4 isFileURL] && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "fileExistsAtPath:", v8), v8, v7, v9))
  {
    v10 = sub_1001FE318(v6, v4);
    v11 = +[NSFileManager defaultManager];
    v19 = 0;
    v12 = [v11 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v19];
    v13 = v19;

    if ([v12 count])
    {
      v14 = v10;
      objc_opt_self();
      v15 = [NSData dataWithContentsOfURL:v14];

      if (v15)
      {
        v16 = [NSPropertyListSerialization propertyListWithData:v15 options:0 format:0 error:0];
      }

      else
      {
        v16 = 0;
      }

      v17 = 1;
      if (v5 && v16 && ([v16 isEqualToDictionary:v5] & 1) == 0)
      {
        sub_1001FD9A0(v6, v4);
        v17 = 0;
      }
    }

    else
    {
      sub_1001FD9A0(v6, v4);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1001FE318(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 URLByDeletingPathExtension];

  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

id sub_1001FE38C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1003DC0F4();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = sub_10039A6A0(v2);

  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [NSURL fileURLWithPath:v8];
  v10 = [v9 absoluteString];

  return v10;
}

uint64_t sub_1001FE464(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_100269390(a1);
  if (v4 && !sub_1001FD9A0(ODRAssetPack, v4))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100269134(a1);
      v11 = 138543618;
      v12 = v10;
      v13 = 2048;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to purge %{public}@ for reason %ld", &v11, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    sub_1002696D0(a1, 0);
    sub_100269738(a1, 0);
    v5 = [&off_1005470E0 copy];
    sub_10023E000(a1, v5, @"download_identifier");

    sub_1002699A8(a1, a2);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100269134(a1);
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Succesfully purged %{public}@ for reason %ld", &v11, 0x16u);
    }

    v8 = 1;
  }

  return v8;
}

id sub_1001FE63C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = sub_100269134(a1);
    v5 = sub_1002690FC(a1);
    v6 = [NSString stringWithFormat:@"%@-%@", v5, v4];
    v7 = [v6 hash];

    v8 = sub_1003DC0F4();
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 stringByAppendingPathComponent:v3];

    v13 = sub_100269134(a1);
    v14 = [v13 stringByAppendingPathExtension:@"assetpack"];

    v15 = [NSNumber numberWithUnsignedInteger:v7];
    v16 = [v15 stringValue];

    v17 = [v12 stringByAppendingPathComponent:v16];
    v34[0] = NSFileOwnerAccountName;
    v34[1] = NSFileGroupOwnerAccountName;
    v35[0] = @"mobile";
    v35[1] = @"mobile";
    v18 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v19 = +[NSFileManager defaultManager];
    v29 = 0;
    v20 = [v19 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:v18 error:&v29];
    v21 = v29;

    if (v20)
    {
      v22 = [v17 stringByAppendingPathComponent:v14];
LABEL_13:

      goto LABEL_14;
    }

    v23 = ASDLogHandleForCategory();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v24)
      {
        *buf = 138543618;
        v31 = v17;
        v32 = 2114;
        v33 = v21;
        v25 = "Failed to create destination path at %{public}@: %{public}@";
        v26 = v23;
        v27 = 22;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else if (v24)
    {
      *buf = 138543362;
      v31 = v17;
      v25 = "Failed to create destination path at %{public}@";
      v26 = v23;
      v27 = 12;
      goto LABEL_11;
    }

    v22 = 0;
    goto LABEL_13;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

id sub_1001FE93C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_100269390(a1);
  if (v2)
  {
    v3 = sub_1001FD93C(a1);
    v4 = sub_1002403E8(v3);
    v5 = v2;
    objc_opt_self();
    v6 = sub_1001FE318(ODRAssetPack, v5);

    if (v4 && ([NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [v7 writeToURL:v6 atomically:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_1001FEA48(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = MediaAppPlatformAttributes;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v4 = [v3 objectForKeyedSubscript:@"externalVersionId"];
      if (objc_opt_respondsToSelector() & 1) != 0 && (a1[3] = [v4 longLongValue], objc_msgSend(v3, "objectForKeyedSubscript:", @"bundleId"), v5 = objc_claimAutoreleasedReturnValue(), v6 = a1[4], a1[4] = v5, v6, objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v7 = [v3 objectForKeyedSubscript:@"artwork"];
        objc_opt_class();
        v8 = v7;
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          v10 = [v8 copy];
          v11 = a1[6];
          a1[6] = v10;
        }

        v12 = [v3 copy];
        v13 = a1[1];
        a1[1] = v12;
      }

      else
      {
        v8 = v4;
        v4 = a1;
        a1 = 0;
      }
    }
  }

  return a1;
}

id sub_1001FEBC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 8) objectForKeyedSubscript:@"is32bitOnly"];
  if (!v1)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = @"is32bitOnly";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Missing expected value: %{public}@", &v6, 0xCu);
    }

    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543618;
      v7 = objc_opt_class();
      v8 = 2114;
      v9 = @"is32BitOnly";
      v5 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected type %{public}@ for %{public}@", &v6, 0x16u);
    }

LABEL_9:

    v2 = 0;
    goto LABEL_10;
  }

  v2 = [v1 BOOLValue];
LABEL_10:

  return v2;
}

id *sub_1001FED4C(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1[1] objectForKeyedSubscript:@"offers"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        a1 = 0;
        goto LABEL_6;
      }

      v5 = [v4 ams_mapWithTransformIgnoresNil:&stru_10051CC38];
      v6 = v2[2];
      v2[2] = v5;

      v3 = v2[2];
    }

    a1 = v3;
LABEL_6:
    v1 = vars8;
  }

  return a1;
}

id sub_1001FEDF4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_1002008CC([MediaAppOffer alloc], v2);

  return v3;
}

id sub_1001FEE4C(id *a1)
{
  if (a1)
  {
    v1 = sub_1001FED4C(a1);
    v2 = sub_10036FBC8(v1, &stru_10051CC78);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001FEEC8(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_1001FEED4(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void sub_1001FF620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FF638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001FF650(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1003DAE8C();
  v6 = sub_1002D3F5C(AppInstallEntity, v4, v5);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FF748;
  v9[3] = &unk_10051CCA0;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v9];
}

void sub_1001FF748(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  if (sub_1002944D0(v6) < -10)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1002944D0(v6);
      v15 = sub_10029430C(v6);
      v16 = 134218242;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring install of phase %ld in MDM status: %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    v7 = objc_alloc_init(ASDManagedRequestStatus);
    v8 = sub_1003403A0(v6, @"external_id");
    [v7 setRequestIdentifier:v8];

    v9 = sub_100340328(v6, @"bundle_id");
    [v7 setBundleIdentifier:v9];

    v10 = sub_100340328(v6, @"bundle_version");
    [v7 setBundleVersion:v10];

    v11 = sub_100340328(v6, @"bundle_name");
    [v7 setTitle:v11];

    if (sub_1002944D0(v6) == -10)
    {
      v12 = 2;
    }

    else
    {
      v12 = sub_1002944D0(v6) != 10;
    }

    [v7 setState:v12];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void sub_1001FF9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;

      v4 = *(a1 + 16);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

void sub_10020023C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002002C8;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA7C8 != -1)
  {
    dispatch_once(&qword_1005AA7C8, block);
  }
}

void sub_1002002C8()
{
  v0 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Registering event handlers", v4, 2u);
  }

  objc_opt_self();
  v1 = dispatch_get_global_queue(21, 0);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v1, &stru_10051CD08);

  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registered handler for distributed events", buf, 2u);
  }

  objc_opt_self();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, &stru_10051CD28);

  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registered handler for notification events", v6, 2u);
  }
}

void sub_10020042C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2 || xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    v4 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    LOWORD(v16) = 0;
    v12 = "Received distributed event with invalid type";
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v12, &v16, 2u);
    goto LABEL_4;
  }

  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (!string)
  {
    v4 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    LOWORD(v16) = 0;
    v12 = "Received distributed event with invalid name";
    goto LABEL_14;
  }

  v6 = string;
  v7 = xpc_dictionary_get_dictionary(v3, "UserInfo");
  v4 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [NSString stringWithUTF8String:v6];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Posting notification: %@ userInfo: %@", &v16, 0x16u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    v15 = [NSString stringWithUTF8String:v6];
    [v11 postNotificationName:v15 object:0 userInfo:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [NSString stringWithUTF8String:v6];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Posting notification: %@", &v16, 0xCu);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [NSString stringWithUTF8String:v6];
    [v10 postNotificationName:v11 object:0];
  }

LABEL_4:
}

void sub_100200708(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2 || xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    v4 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    LOWORD(v10) = 0;
    v9 = "Received notification event with invalid type";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v9, &v10, 2u);
    goto LABEL_4;
  }

  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  v6 = ASDLogHandleForCategory();
  v4 = v6;
  if (!string)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    LOWORD(v10) = 0;
    v9 = "Received notification event with invalid name";
    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [NSString stringWithUTF8String:string];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Posting notification: %@", &v10, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v8 = [NSString stringWithUTF8String:string];
  [v4 postNotificationName:v8 object:0];

LABEL_4:
}

void *sub_1002008CC(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  v14.receiver = a1;
  v14.super_class = MediaAppOffer;
  a1 = objc_msgSendSuper2(&v14, "init");
  if (a1)
  {
    v4 = [v3 objectForKeyedSubscript:@"buyParams"];
    v5 = [v4 copy];
    v6 = a1[1];
    a1[1] = v5;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 objectForKeyedSubscript:@"price"];
      if (objc_opt_respondsToSelector())
      {
        [v7 doubleValue];
        a1[2] = v8;
        v9 = [v3 objectForKeyedSubscript:@"assets"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 objectForKeyedSubscript:@"size"];
            if (objc_opt_respondsToSelector())
            {
              a1[3] = [v11 longLongValue];

              goto LABEL_9;
            }
          }
        }
      }
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_9:
  a1 = a1;
  v12 = a1;
LABEL_15:

  return v12;
}

id sub_100200A94()
{
  objc_opt_self();
  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = qword_1005AA7D0;
  objc_sync_exit(v0);

  return v1;
}

void sub_100200AFC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_self();
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = sub_100200BA0(DiagnosticPublisher, v5);
  v4 = qword_1005AA7D0;
  qword_1005AA7D0 = v3;

  objc_sync_exit(v2);
}

id sub_100200BA0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (os_variant_has_internal_content() && sub_100003A28(v2))
  {
    v4 = objc_alloc_init(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100200C1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_opt_self();
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  v7 = sub_100200BA0(v4, v6);

  return v7;
}

void sub_100200CAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v6 = sub_10032B98C([DiagnosticMessage alloc], a2);
    v4[2](v4, v6);

    v5 = sub_10030CD68();
    sub_10030CEA4(v5, v6);
  }
}

id sub_100200E90(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = sub_10022C0D0([SQLiteConnection alloc], v3);

  v5 = v4;
  v15.receiver = a1;
  v15.super_class = SQLiteDatabase;
  v6 = objc_msgSendSuper2(&v15, "init");
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.SQLiteDatabase", v7);
    v9 = *(v6 + 2);
    *(v6 + 2) = v8;

    dispatch_queue_set_specific(*(v6 + 2), "_SQLiteDispatchQueueTag", v6, 0);
    v10 = [NSHashTable hashTableWithOptions:258];
    v11 = *(v6 + 3);
    *(v6 + 3) = v10;

    objc_storeStrong(v6 + 1, v4);
    v12 = *(v6 + 1);
    if (v12)
    {
      objc_storeWeak((v12 + 24), v6);
    }
  }

  v13 = v6;
  return v13;
}

void sub_100200FC4(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100201088;
    v7[3] = &unk_10051C078;
    v7[4] = a1;
    v8 = v5;
    v9 = v6;
    sub_1002011DC(a1, v7);
  }
}

void sub_100201088(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100201E78(v2, *(a1 + 40), 0);
  }

  v3 = [objc_opt_class() storeDescriptor];
  v4 = v3;
  if (v3)
  {
    v3 = v3[4];
  }

  sub_100201104(*(a1 + 32), v3, *(a1 + 48));
}

void sub_100201104(uint64_t a1, objc_class *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v6 = [[a2 alloc] initWithConnection:*(a1 + 8)];
    v7 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100201E64;
    v9[3] = &unk_10051CDC8;
    v10 = v6;
    v11 = v5;
    v8 = v6;
    sub_10022CC88(v7, v9);
  }
}

void sub_1002011DC(dispatch_queue_t *a1, void *a2)
{
  block = a2;
  if (a1)
  {
    if (dispatch_get_specific("_SQLiteDispatchQueueTag") == a1)
    {
      block[2]();
    }

    else
    {
      dispatch_sync(a1[2], block);
    }
  }
}

void sub_100201258(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100201348;
    v11[3] = &unk_10051CD50;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100201348(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100201E78(v2, *(a1 + 40), 0);
  }

  v3 = [objc_opt_class() storeDescriptor];
  v5 = v3;
  if (v3)
  {
    v3 = v3[4];
  }

  sub_100201104(*(a1 + 32), v3, *(a1 + 48));
  v4 = dispatch_get_global_queue(21, 0);
  dispatch_async(v4, *(a1 + 56));
}

void sub_1002013E4(dispatch_queue_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002014B0;
    v9[3] = &unk_10051CD78;
    v9[4] = a1;
    v10 = v7;
    v12 = a3;
    v11 = v8;
    sub_1002011DC(a1, v9);
  }
}

void sub_1002014B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100201E78(v2, *(a1 + 40), 0);
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  sub_100201104(v2, v3, v4);
}

void sub_1002014FC(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002015C0;
    v7[3] = &unk_10051C078;
    v7[4] = a1;
    v8 = v5;
    v9 = v6;
    sub_1002011DC(a1, v7);
  }
}

void sub_1002015C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100201E78(v2, *(a1 + 40), 0);
  }

  v3 = [objc_opt_class() storeDescriptor];
  v4 = v3;
  if (v3)
  {
    v3 = v3[3];
  }

  v5 = [[v3 alloc] initWithConnection:*(*(a1 + 32) + 8)];
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002016B0;
  v8[3] = &unk_10051CDA0;
  v9 = *(a1 + 48);
  v7 = sub_1002016D8(v6, v5, v8);
}

id sub_1002016D8(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 2));
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1002022E4;
    v17 = sub_1002022F4;
    v18 = 0;
    v7 = *(a1 + 1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002022FC;
    v9[3] = &unk_10051CE18;
    v12 = &v13;
    v11 = v6;
    v10 = v5;
    sub_10022CC88(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_10020181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100201834(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100201924;
    v11[3] = &unk_10051CD50;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_100201924(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    sub_100201E78(v2, a1[5], 0);
  }

  v3 = [objc_opt_class() storeDescriptor];
  v4 = v3;
  if (v3)
  {
    v3 = v3[3];
  }

  v5 = [[v3 alloc] initWithConnection:*(a1[4] + 1)];
  v6 = sub_1002016D8(a1[4], v5, a1[6]);
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100201A50;
  v10[3] = &unk_10051B790;
  v8 = a1[7];
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t sub_100201D44(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100201E2C;
    v6[3] = &unk_10051AE98;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    sub_1002011DC(a1, v6);
    LOBYTE(a1) = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

uint64_t sub_100201E2C(uint64_t a1)
{
  result = sub_10022CED0(*(*(a1 + 32) + 8), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_100201E78(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = 1;
    if (!NSHashGet(*(a1 + 24), v5))
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      v7 = [objc_opt_class() storeDescriptor];
      v9 = [SQLiteDatabaseStoreSchema alloc];
      v10 = *(a1 + 8);
      if (v7)
      {
        v11 = objc_getProperty(v7, v8, 8, 1);
        Property = objc_getProperty(v7, v12, 16, 1);
      }

      else
      {
        v11 = 0;
        Property = 0;
      }

      v14 = Property;
      v15 = sub_1002527A0(v9, v10, v11, v14);

      v16 = *(a1 + 8);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10020205C;
      v20[3] = &unk_10051CDF0;
      v25 = &v27;
      v21 = v5;
      v17 = v15;
      v26 = a3;
      v22 = v17;
      v23 = a1;
      v18 = v7;
      v24 = v18;
      sub_10022CC88(v16, v20);
      v6 = *(v28 + 24);

      _Block_object_dispose(&v27, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_100202040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020205C(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = [objc_opt_class() createOrMigrateStoreUsingSchema:*(a1 + 40)];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      v2 = *(a1 + 48);
      v3 = *(v2 + 8);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1002021FC;
      v10[3] = &unk_10051B570;
      v10[4] = v2;
      v11 = *(a1 + 32);
      sub_10022C30C(v3, v10);
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      Property = *(a1 + 56);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 8, 1);
      }

      v8 = Property;
      v9 = sub_100252934(*(a1 + 40));
      *buf = 138543618;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
    }
  }

  return *(*(*(a1 + 64) + 8) + 24);
}

void sub_1002021FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10020228C;
  v2[3] = &unk_10051B570;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_1002011DC(v1, v2);
}

void sub_10020228C(uint64_t a1)
{
  if (sub_100201E78(*(a1 + 32), *(a1 + 40), 1))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);

    NSHashInsert(v3, v2);
  }
}

uint64_t sub_1002022E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002022FC(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

id sub_100202490(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"account_dsid");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1002024C8(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"attempt_count");
    v2 = [v1 intValue];

    return v2;
  }

  return result;
}

id sub_100202510(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"beta_build_group_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100202548(_TtC9appstored6LogKey *a1)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"app_version");
    if (v2)
    {
      v8 = 0;
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
      v4 = v8;
      if (v4)
      {
        v5 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = sub_1002026B0(a1);
          *buf = 138412546;
          v10 = v7;
          v11 = 2114;
          v12 = v4;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Failed to unarchive app version: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

_TtC9appstored6LogKey *sub_1002026B0(_TtC9appstored6LogKey *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [_TtC9appstored6LogKey alloc];
    v3 = sub_10023E0F8(v1, @"log_key");
    v1 = [(LogKey *)v2 initWithBase:v3];
  }

  return v1;
}

id sub_10020272C(_TtC9appstored6LogKey *a1)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"feedback");
    if (v2)
    {
      v8 = 0;
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
      v4 = v8;
      if (v4)
      {
        v5 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = sub_1002026B0(a1);
          *buf = 138412546;
          v10 = v7;
          v11 = 2114;
          v12 = v4;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Failed to unarchive feedback: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100202894(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"next_retry_date");
    v1 = vars8;
  }

  return a1;
}

_TtC9appstored6LogKey *sub_1002028CC(_TtC9appstored6LogKey *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_opt_class();
    a1 = sub_100202928(v2, @"pending_image_uploads", v3);
    v1 = vars8;
  }

  return a1;
}

id sub_100202928(_TtC9appstored6LogKey *a1, void *a2, objc_class *a3)
{
  v5 = a2;
  v6 = sub_10023E0F8(a1, v5);
  if (v6)
  {
    v7 = [NSSet setWithObjects:objc_opt_class(), a3, 0];
    v14 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v6 error:&v14];
    v9 = v14;

    if (v9)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_1002026B0(a1);
        v13 = NSStringFromClass(a3);
        *buf = 138413058;
        v16 = v12;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v13;
        v21 = 2114;
        v22 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Failed to convert data from property '%{public}@' to array of %{public}@: %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100202AE4(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"state");
    v2 = [v1 unsignedIntegerValue];

    return v2;
  }

  return result;
}

_TtC9appstored6LogKey *sub_100202B2C(_TtC9appstored6LogKey *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_opt_class();
    a1 = sub_100202928(v2, @"successful_image_uploads", v3);
    v1 = vars8;
  }

  return a1;
}

id sub_100202B88(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

void sub_100202BC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInt:a2];
    sub_10023E000(a1, v3, @"attempt_count");
  }
}

void sub_100202C30(_TtC9appstored6LogKey *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v7];
    v4 = v7;
    if (v3)
    {
      sub_10023E000(a1, v3, @"pending_image_uploads");
    }

    else
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_1002026B0(a1);
        *buf = 138412546;
        v9 = v6;
        v10 = 2114;
        v11 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Failed to convert pending image upload to data %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_100202D5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithUnsignedInteger:a2];
    sub_10023E000(a1, v3, @"state");
  }
}

void sub_100202DCC(_TtC9appstored6LogKey *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v29 = sub_100202B2C(a1);
    if ([v29 count])
    {
      v4 = [v29 mutableCopy];
    }

    else
    {
      v4 = objc_opt_new();
    }

    v5 = v4;
    [v4 addObject:v3];
    *&v30 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v30];
    v7 = v30;
    if (v6)
    {
      sub_10023E000(a1, v6, @"successful_image_uploads");
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v27 = sub_1002026B0(a1);
        *buf = 138412546;
        v35 = v27;
        v36 = 2114;
        v37 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Failed to convert image uploads to data %{public}@", buf, 0x16u);
      }
    }

    if (v3)
    {
      v9 = v3[1];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = v10;
    v12 = [NSURL URLWithString:v11];
    if (v12)
    {
      v13 = sub_1002028CC(a1);
      v14 = [v13 mutableCopy];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:buf count:16];
      v17 = v15;
      if (v16)
      {
        v18 = v16;
        v28 = v5;
        v19 = *v31;
LABEL_15:
        v20 = 0;
        while (1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v30 + 1) + 8 * v20);
          v22 = v21 ? v21[3] : 0;
          v23 = v22;
          v24 = [v23 isEqual:v12];

          if (v24)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v25 = [v15 countByEnumeratingWithState:&v30 objects:buf count:16];
            v18 = v25;
            if (!v25)
            {
              v17 = v15;
LABEL_28:
              v5 = v28;
              goto LABEL_29;
            }

            goto LABEL_15;
          }
        }

        v17 = v21;

        if (v21)
        {
          [v15 removeObject:v17];
          sub_100202C30(a1, v15);
          goto LABEL_28;
        }

        v5 = v28;
      }

      else
      {
LABEL_29:
      }
    }

    else
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = sub_1002026B0(a1);
        *buf = 138412546;
        v35 = v26;
        v36 = 2114;
        v37 = v11;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@]: Failed to create a valid URL from %{public}@", buf, 0x16u);
      }
    }
  }
}

void *sub_100203184(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = DecryptDataConsumer;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.appstored.DecryptDataConsumer", v6);
      v8 = a1[4];
      a1[4] = v7;

      a1[2] = malloc_type_malloc(0x8000uLL, 0xF60F42F0uLL);
      a1[3] = 0;
      a1[5] = 0;
      a1[6] = 0;
      v9 = v5;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = sub_1002033D0;
      v24 = sub_1002033E0;
      v25 = 0;
      v10 = a1[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002033E8;
      block[3] = &unk_10051CE40;
      v18 = &v20;
      v11 = v9;
      v16 = v11;
      v17 = a1;
      v19 = &v26;
      dispatch_sync(v10, block);
      v12 = *(v27 + 24);
      if (a3 && (v27[3] & 1) == 0)
      {
        *a3 = v21[5];
        v12 = *(v27 + 24);
      }

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v26, 8);

      if ((v12 & 1) == 0)
      {

        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1002033D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002033E8(uint64_t a1)
{
  v2 = +[AMSKeybag sharedInstance];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fairplayContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);

  if (v4)
  {
    [*(a1 + 32) bytes];
    [*(a1 + 32) length];
    sub_10001C860();
    if (v5 && (v6 = v5, (v7 = *(*(a1 + 40) + 8)) != 0))
    {
      sub_10000BA98(v7);
      *(*(a1 + 40) + 8) = 0;
      v8 = ASDErrorDomain;
      v15 = NSDebugDescriptionErrorKey;
      v9 = [NSString stringWithFormat:@"Session creation failed (error: %d)", v6];
      v16 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [NSError errorWithDomain:v8 code:1133 userInfo:v10];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void sub_10020365C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  v3 = os_signpost_id_generate(v2);

  v4 = ASDLogHandleForCategory();
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Download::Decrypt/Prepare", "", &buf, 2u);
  }

  if (*(*(a1 + 32) + 56))
  {
    v7 = *(a1 + 40);
    if (!v7 || ![v7 length])
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 24);
    v9 = [*(a1 + 40) length];
    v10 = *(a1 + 32);
    if (!((v9 + v8) >> 15))
    {
      memcpy((*(v10 + 16) + *(v10 + 24)), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"));
      *(*(a1 + 32) + 24) += [*(a1 + 40) length];
LABEL_9:
      (*(*(a1 + 48) + 16))();
      return;
    }

    v13 = *(v10 + 24);
    v14 = [*(a1 + 40) length] + v13;
    v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
    v16 = v15;
    v17 = *(a1 + 32);
    v18 = *(v17 + 24);
    if (v18)
    {
      memcpy(v15, *(v17 + 16), v18);
      v19 = *(a1 + 40);
      v20 = *(*(a1 + 32) + 24);
      v21 = [v19 length];
      v22 = &v16[v20];
      v23 = v19;
    }

    else
    {
      v24 = *(a1 + 40);
      v21 = [v24 length];
      v23 = v24;
      v22 = v16;
    }

    [v23 getBytes:v22 length:v21];
    v25 = ASDLogHandleForCategory();
    v26 = v25;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      buf = 134349056;
      *buf_4 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v3, "Download::Decrypt/Prepare", " bytes=%{public, signpost.description:attribute}lu ", &buf, 0xCu);
    }

    v27 = ASDLogHandleForCategory();
    v28 = v27;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Download::Decrypt/Process", "", &buf, 2u);
    }

    v29 = *(a1 + 32);
    v30 = (v14 >> 15);
    if (*(v29 + 48) < v30)
    {
      v31 = malloc_type_realloc(*(v29 + 40), 4 * v30, 0x100004052888210uLL);
      *(v29 + 40) = v31;
      v32 = *(v29 + 48);
      if (v32 < v30)
      {
        memset_pattern16(&v31[4 * v32], &unk_10044B9C0, 4 * v30 - 4 * v32);
      }

      *(v29 + 48) = v30;
      v29 = *(a1 + 32);
    }

    v33 = *(v29 + 40);
    *buf_4 = 0;
    *&buf_4[4] = v33;
    buf = v14 >> 15;
    v34 = v30 << 15;
    v49 = v16;
    v50 = v30 << 15;
    sub_100016C70();
    if (!v35)
    {
      v37 = ASDLogHandleForCategory();
      v38 = v37;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *v45 = 134349056;
        v46 = (v14 >> 15);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v3, "Download::Decrypt/Process", " blocks=%{public, signpost.description:attribute}lu ", v45, 0xCu);
      }

      v39 = ASDLogHandleForCategory();
      v40 = v39;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *v45 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Download::Decrypt/Final", "", v45, 2u);
      }

      if (v14 == v34)
      {
        *(*(a1 + 32) + 24) = 0;
      }

      else
      {
        *(*(a1 + 32) + 24) = v14 - v34;
        v41 = *(a1 + 32);
        v42 = *(v41 + 24);
        if (v42 > 0x8000)
        {
          *(v41 + 24) = 0;
          v12 = ASDErrorWithDescription();
          free(v16);
          (*(*(a1 + 48) + 16))(*(a1 + 48), v12, 0);
          goto LABEL_11;
        }

        memcpy(*(v41 + 16), &v16[v34], v42);
        v14 = v30 << 15;
      }

      v43 = ASDLogHandleForCategory();
      v44 = v43;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *v45 = 134349056;
        v46 = v14;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, v3, "Download::Decrypt/Final", " bytes=%{public, signpost.description:attribute}lu ", v45, 0xCu);
      }

      v12 = [[NSData alloc] initWithBytesNoCopy:v16 length:v14 freeWhenDone:1];
      [*(*(a1 + 32) + 56) consumeData:v12 withCompletionHandler:*(a1 + 48)];
      goto LABEL_11;
    }

    v36 = [NSString stringWithFormat:@"Decryption failed (error: %d)", v35];
    v12 = ASDErrorWithDescription();
    free(v16);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = ASDErrorWithDescription();
    (*(v11 + 16))(v11, v12, 0);
  }

LABEL_11:
}

void sub_100203CDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (!v3)
  {
    v6 = *(a1 + 40);
    v12 = ASDErrorWithDescription();
    (*(v6 + 16))(v6, v12);
LABEL_6:

    return;
  }

  if (*(v2 + 24))
  {
    sub_1000167F4();
    if (!v4)
    {
      v8 = [[NSData alloc] initWithBytes:*(*(a1 + 32) + 16) length:*(*(a1 + 32) + 24)];
      *(*(a1 + 32) + 24) = 0;
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(v10 + 56);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100203EB8;
      v13[3] = &unk_10051CE90;
      v13[4] = v10;
      v14 = v9;
      [v11 consumeData:v8 andWaitWithCompletionHandler:v13];

      return;
    }

    v12 = [NSString stringWithFormat:@"Decryption failed (error: %d)", v4];
    v5 = ASDErrorWithDescription();
    (*(*(a1 + 40) + 16))();

    goto LABEL_6;
  }

  v7 = *(a1 + 40);

  [v3 finishWithCompletionHandler:v7];
}

void sub_100203EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100203F80;
    v5[3] = &unk_10051CE68;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 finishWithCompletionHandler:v5];
  }

  else
  {
    [*(a1 + 32) finishWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_10020402C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {

    [v2 prepareWithCompletionHandler:v1];
  }

  else
  {
    v3 = ASDErrorWithDescription();
    (*(v1 + 16))(v1, 0, v3);
  }
}

void sub_100204168(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    *(v2 + 24) = 0;
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);

    [v4 resetWithCompletionHandler:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6);
  }
}

void sub_10020429C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    *(v2 + 24) = 0;
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);

    [v4 suspendWithCompletionHandler:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6);
  }
}

void sub_1002043D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    *(v2 + 24) = 0;
    if (objc_opt_respondsToSelector())
    {
      v3 = *(*(a1 + 32) + 56);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10020451C;
      v7[3] = &unk_10051B548;
      v8 = *(a1 + 40);
      [v3 truncateWithCompletionHandler:v7];
    }

    else
    {
      v5 = *(*(a1 + 40) + 16);

      v5();
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v4 + 16))(v4, v6);
  }
}

void *sub_100204570(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BlockTask;
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

void sub_1002046B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained finishInstallID:a2 transaction:a1];
  }
}

void sub_100204718(id *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v7 = +[BagService appstoredService];
    v6 = [v7 lastBag];
    sub_1002047B4(a1, a2, v5, v6, 0);
  }
}

void sub_1002047B4(id *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 domain];
  v12 = IXUserPresentableErrorDomain;
  if ([v11 isEqualToString:IXUserPresentableErrorDomain])
  {
    v96 = [v9 code] == 17;
  }

  else
  {
    v96 = 0;
  }

  v13 = [AppInstallEntity alloc];
  v14 = [a1 connection];
  v15 = [(SQLiteEntity *)v13 initWithPersistentID:a2 onConnection:v14];

  if ([(SQLiteEntity *)v15 existsInDatabase])
  {
    v16 = +[NSDate date];
    [(SQLiteEntity *)v15 setValue:v16 forProperty:@"install_finished_timestamp"];

    v17 = sub_1003403A0(v15, @"external_id");
    v18 = ASDLogHandleForCategory();
    if (v17)
    {
      *buf = 0;
      *&buf[8] = 0;
      [v17 getUUIDBytes:buf];
      v19 = *buf;
      if ((*buf - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "Install", " error=%{public, signpost.description:attribute}@ ", buf, 0xCu);
      }
    }

    sub_100205858(a1, v15, v9);
    v95 = sub_1002947DC(v15);
    v94 = v10;
    if (sub_1003402E8(v95, @"package_type") != 1)
    {
LABEL_46:
      if (((ASDErrorSearch() & 1) != 0 || ASDErrorSearch()) && (a5 & 1) == 0 && sub_100340114(v95, @"locate_asset_cache"))
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v89 = sub_10029430C(v15);
          *buf = 138412290;
          *&buf[4] = v89;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Detected corrupt data on asset cache server; retrying with CDN.", buf, 0xCu);
        }

        [v95 setValue:&__kCFBooleanFalse forProperty:@"locate_asset_cache"];
        sub_100205ACC(a1, a2);
        goto LABEL_79;
      }

      if (!ASDErrorSearch() || (sub_1002942DC(v15) & 1) != 0 || sub_1002946C0(v15))
      {
        if (!v96)
        {
          v34 = 0;
LABEL_85:
          if (sub_1002944D0(v15) == 45)
          {
            v55 = sub_100294758(v15) == 2;
            v56 = sub_1002943F0(v15);
            v57 = sub_100294428(v15);
            v58 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v56 appBundleURL:v57 event:22 client:v55];

            [v58 setUserInitiated:sub_100294244(v15) ^ 1];
            [v58 setAutomaticInstall:sub_100294298(v15) != 0];
            v59 = sub_10025E74C();
            sub_10025F51C(v59, v58);
          }

          v60 = sub_100294BA8(v15, v9);
          v61 = v60;
          if (v60)
          {
            *(v60 + 136) |= 0x10uLL;
          }

          if (!sub_1003402E8(v15, @"source_type"))
          {
            v63 = [(SQLiteEntity *)v15 valueForProperty:@"update_type"];
            v64 = [v63 integerValue];

            if (v64 || sub_100340114(v15, @"tv_provider"))
            {
              v65 = [(SQLiteEntity *)v15 valueForProperty:@"bundle_id"];
              sub_1002559EC(v61, v65, v34);
            }
          }

          Property = objc_getProperty(a1, v62, 24, 1);
          sub_1002561F0(Property, v61);
          v67 = [(SQLiteEntity *)v15 valueForProperty:@"source_type"];
          v68 = [v67 integerValue];

          v10 = v94;
          if (v68 == 2)
          {
            v69 = [ASDBundle alloc];
            v70 = sub_1002943F0(v15);
            v71 = [v69 initWithIdentifier:v70];

            if (v71)
            {
              v72 = objc_opt_new();
              v73 = v72;
              if (v72)
              {
                [*(v72 + 8) setName:@"com.apple.AppInstallsDatabaseTransaction.NotifyTestFlightClientTaskQueue"];
              }

              v74 = sub_100383D60(NotifyTestFlightClientTask, -20, v71, v9);
              if (v73)
              {
                [v73[1] addOperation:v74];
              }
            }
          }

          if (v96)
          {
            v102[0] = @"bundle_id";
            v102[1] = @"priority";
            v75 = [NSArray arrayWithObjects:v102 count:2];
            v76 = [(SQLiteEntity *)v15 getValuesForProperties:v75];

            v77 = [v76 objectForKeyedSubscript:@"priority"];
            objc_opt_class();
            v78 = sub_1001C09E4(v77);

            if (v78 && ([v78 longValue] & 0x8000000000000000) == 0)
            {
              v79 = [v76 objectForKeyedSubscript:@"bundle_id"];
              objc_opt_class();
              v80 = sub_1001C09E4(v79);

              if ([v80 length])
              {
                IXDisplayUserPresentableErrorForApp();
              }
            }

            v10 = v94;
          }

          v81 = sub_100205BFC(v15, v9);
          if (v81)
          {
            v82 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v83 = sub_10029430C(v15);
              *buf = 138412546;
              *&buf[4] = v83;
              *&buf[12] = 2114;
              *&buf[14] = v9;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%@] Notifying clients of the failed install with error: %{public}@", buf, 0x16u);
            }

            v101 = v81;
            v84 = [NSArray arrayWithObjects:&v101 count:1];
            v85 = sub_1002A2298(ASDNotification, v84);

            v86 = sub_100003984();
            sub_1003B8178(v86, v85);
          }

          v87 = sub_1002944D0(v15);
          sub_100205CE8(a1, v15, v87, v10);
          [(AppInstallEntity *)v15 deleteFromDatabase];

          goto LABEL_113;
        }

        v105[0] = @"bundle_id";
        v105[1] = @"evid";
        v105[2] = @"restore_type";
        v26 = [NSArray arrayWithObjects:v105 count:3];
        v27 = [(SQLiteEntity *)v15 getValuesForProperties:v26];

        v28 = [v27 objectForKeyedSubscript:@"restore_type"];
        v29 = [v28 integerValue];

        if (!v29)
        {
          v34 = 0;
LABEL_84:

          goto LABEL_85;
        }

        v30 = [v27 objectForKeyedSubscript:@"bundle_id"];
        v31 = sub_1003D56FC();
        v32 = [v31 objectForKeyedSubscript:v30];

        if (!v32)
        {
          v35 = [v27 objectForKeyedSubscript:@"evid"];
          v36 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = sub_10029430C(v15);
            *buf = 138412546;
            *&buf[4] = v37;
            *&buf[12] = 2114;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%@] Restore failed due to code signing, retrying with evid=0: %{public}@", buf, 0x16u);
          }

          sub_1003D590C(AppDefaultsManager, v30, v35);
          v104[0] = &off_1005470F8;
          v103[0] = @"bootstrapped";
          v103[1] = @"coordinator_id";
          v38 = +[NSNull null];
          v104[1] = v38;
          v104[2] = &off_100547110;
          v103[2] = @"coordinator_intent";
          v103[3] = @"phase";
          v104[3] = &off_100547128;
          v39 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
          [(SQLiteEntity *)v15 setValuesWithDictionary:v39];

          v41 = objc_getProperty(a1, v40, 24, 1);
          v42 = [NSNumber numberWithLongLong:a2];
          sub_100256064(v41, v42);

          v44 = objc_getProperty(a1, v43, 24, 1);
          if (v44)
          {
            v44[17] |= 0x20uLL;
          }

          goto LABEL_78;
        }

        v33 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v90 = sub_10029430C(v15);
          *buf = 138412546;
          *&buf[4] = v90;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[%@] Restore failed due to code signing after retrying with evid=0: %{public}@", buf, 0x16u);
        }

        sub_1003D590C(AppDefaultsManager, v30, 0);
        v34 = 5;
      }

      else
      {
        v53 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v92 = sub_10029430C(v15);
          *buf = 138412546;
          *&buf[4] = v92;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "[%@] Retrying purchase due to missing SINF key: %{public}@", buf, 0x16u);
        }

        v30 = objc_getProperty(a1, v54, 24, 1);
        v27 = sub_100236744([RedownloadRecoveryTask alloc], v15, a1, v10);
        sub_100255C04(v30, v27);
        v34 = 0;
      }

      goto LABEL_84;
    }

    v20 = v15;
    v21 = v9;
    v22 = v21;
    if (!v21)
    {
LABEL_45:

      goto LABEL_46;
    }

    v93 = v20;
    v23 = [v21 domain];
    v24 = [v22 code];
    if ([v23 isEqualToString:ASDErrorDomain])
    {
      if (v24 != 506 && v24 != 515 && v24 != 1061)
      {
        goto LABEL_69;
      }

      goto LABEL_44;
    }

    if ([v23 isEqualToString:@"AssetErrorDomain"])
    {
      if (v24 < 1001)
      {
        if (v24 >= 8 && (v24 - 9) >= 2)
        {
          if (v24 != 8)
          {
            goto LABEL_69;
          }

          goto LABEL_72;
        }
      }

      else
      {
        if (v24 <= 1402)
        {
          if (v24 != 1206 && v24 != 1400)
          {
            goto LABEL_69;
          }

          goto LABEL_72;
        }

        if (v24 == 1403)
        {
          goto LABEL_72;
        }

        if (v24 != 1408)
        {
          if (v24 != 1416)
          {
LABEL_69:
            v45 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = sub_10029430C(v93);
              *buf = 138412802;
              *&buf[4] = v46;
              *&buf[12] = 2114;
              *&buf[14] = v23;
              v107 = 2048;
              v108 = v24;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%@] Defaulting to retrying with full update for error %{public}@:%ld", buf, 0x20u);
            }
          }

LABEL_72:

          v47 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v91 = sub_10029430C(v93);
            *buf = 138412546;
            *&buf[4] = v91;
            *&buf[12] = 2114;
            *&buf[14] = v22;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%@] Blocking delta and will retry as full update after encountering error: %{public}@", buf, 0x16u);
          }

          [v95 setValue:&__kCFBooleanTrue forProperty:@"blocked"];
          sub_100205ACC(a1, a2);
          v48 = sub_1002947DC(v93);
          v49 = [v48 valueForProperty:@"package_url"];
          if (os_variant_has_internal_content())
          {
            v50 = sub_100200A94();

            if (v50)
            {
              v51 = sub_100200A94();
              v97[0] = _NSConcreteStackBlock;
              v97[1] = 3221225472;
              v97[2] = sub_100205B24;
              v97[3] = &unk_10051CEB8;
              v98 = v48;
              v99 = v22;
              v100 = v49;
              sub_100200CAC(v51, 1102, v97);
            }
          }

LABEL_78:
          v10 = v94;
LABEL_79:
          v52 = sub_1002944D0(v15);
          sub_100205CE8(a1, v15, v52, v10);
LABEL_113:

          goto LABEL_114;
        }
      }
    }

    else if ([v23 isEqualToString:AMSErrorDomain])
    {
      if (v24 != 6)
      {
        goto LABEL_69;
      }
    }

    else if ([v23 isEqualToString:v12])
    {
      if (v24 != 11)
      {
        goto LABEL_69;
      }
    }

    else if ([v23 isEqualToString:IXErrorDomain])
    {
      if (v24 > 0x18 || ((1 << v24) & 0x1040020) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (![v23 isEqualToString:NSURLErrorDomain] || v24 != -1001)
    {
      goto LABEL_69;
    }

LABEL_44:

    v20 = v93;
    v10 = v94;
    goto LABEL_45;
  }

  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
  }

LABEL_114:

  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained stopInstallID:a2 withReason:0 transaction:a1];
}

void sub_1002057B0(id *a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    v7 = a3;
    v9 = +[BagService appstoredService];
    v8 = [v9 lastBag];
    sub_1002047B4(a1, a2, v7, v8, a4);
  }
}

void sub_100205858(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSDate date];
  v8 = [v5 valueForProperty:@"timestamp"];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (os_variant_has_internal_content())
  {
    v11 = sub_100200A94();

    if (v11)
    {
      v12 = objc_opt_new();
      v13 = sub_1002943F0(v5);
      [v12 setObject:v13 forKeyedSubscript:@"linearInstallBundleID"];

      v14 = [NSString stringWithFormat:@"%.2f", *&v10];
      [v12 setObject:v14 forKeyedSubscript:@"linearInstallDuration"];

      v15 = sub_100200A94();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100208C18;
      v25[3] = &unk_10051B398;
      v26 = v12;
      v16 = v12;
      sub_100200CAC(v15, 1201, v25);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100208C24;
  v20[3] = &unk_10051CF08;
  v17 = v5;
  v21 = v17;
  v22 = a1;
  v18 = v6;
  v23 = v18;
  v24 = v10;
  sub_1003F2684(Analytics, v20, 32);
  v19 = sub_10029430C(v17);
  [_TtC9appstored8QALogger installWithDuration:v19 logKey:v10];
}

void *sub_100205ACC(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    sub_100208224(result, 10, a2);
    result = objc_getProperty(v2, v3, 24, 1);
    if (result)
    {
      result[17] |= 0x8000uLL;
    }
  }

  return result;
}

void sub_100205B24(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v8 = a2;
  v5 = [v3 debugDescription];
  if (v8)
  {
    [v8[1] setObject:v5 forKeyedSubscript:@"deltaUpdateFailedError"];

    if (v4)
    {
      v6 = a1[6];
      v7 = v8[1];
    }

    else
    {
      v7 = v8[1];
      v6 = @"full package was not found";
    }

    [v7 setObject:v6 forKeyedSubscript:@"fullAssetURL"];
  }

  else
  {
  }
}

id sub_100205BE4(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

id sub_100205BFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100340328(v3, @"bundle_id");
  if (v5)
  {
    v6 = [[ASDApp alloc] initWithBundleID:v5];
    [v6 setInstallError:v4];
    v7 = sub_100340154(v3, @"item_id");
    [v6 setStoreItemID:{objc_msgSend(v7, "longLongValue")}];

    if ([v6 storeItemID] >= 1)
    {
      [v6 setStatus:256];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100205CE8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 persistentID]);
  v54 = sub_100402BD0(AppInstallInfo, v7);

  if (v54)
  {
    v8 = v54[12];
  }

  else
  {
    v8 = 0;
  }

  v66[0] = @"archive_type";
  v66[1] = @"bytes_total";
  v66[2] = @"delta_algorithm";
  v66[3] = @"disk_usage";
  v66[4] = @"package_type";
  v66[5] = @"package_url";
  v9 = [NSArray arrayWithObjects:v66 count:6];
  v10 = [a1 connection];
  v11 = [(SQLiteEntity *)AppPackageEntity memoryEntityForPersistentID:v8 withProperties:v9 usingConnection:v10];

  v12 = sub_1002943F0(v5);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100208F3C;
  v64 = sub_100208F4C;
  v65 = 0;
  v13 = sub_1002BB3F0();
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100208F54;
  v57[3] = &unk_10051CF30;
  v59 = &v60;
  v14 = v12;
  v58 = v14;
  [v13 readUsingSession:v57];

  v15 = [v61[5] currentVersionReleaseDate];
  v16 = [v61[5] discoveredDate];
  v17 = objc_alloc_init(NSMutableDictionary);
  if (v15)
  {
    v18 = [AMSMetrics serverTimeFromDate:v15];
  }

  else
  {
    v18 = 0;
  }

  [v17 setObject:v18 forKeyedSubscript:@"releaseDate"];
  if (v15)
  {
  }

  if (v16)
  {
    v19 = [AMSMetrics serverTimeFromDate:v16];
  }

  else
  {
    v19 = 0;
  }

  [v17 setObject:v19 forKeyedSubscript:@"discoveredDate"];
  if (v16)
  {
  }

  _Block_object_dispose(&v60, 8);
  v20 = [[_TtC9appstored20AppInstallationEvent alloc] initWithEntity:v5 package:v11 finalPhase:a3 additionalMetrics:v17 bag:v6];

  if (v20)
  {
    Property = objc_getProperty(a1, v21, 24, 1);
    sub_100255E64(Property, v20);
  }

  if (a3 == -40)
  {
    v24 = sub_1003BB174([AppLedgerEvent alloc], v5, v11);
    if (v24)
    {
      v25 = objc_getProperty(a1, v23, 24, 1);
      sub_100255EE4(v25, v24);
    }

    v26 = v5;
    v27 = v11;
  }

  else
  {
    v28 = v5;
    v53 = v11;
    if (sub_1003F2748(Analytics, 16))
    {
      v29 = objc_opt_new();
      v30 = sub_10023E72C(v53, @"package_url");
      v31 = sub_100259550(v30);
      v32 = [v31 absoluteString];
      [v29 setObject:v32 forKeyedSubscript:@"assetURL"];

      v33 = sub_100340154(v28, @"check_store_queue_reason");
      [v29 setObject:v33 forKeyedSubscript:@"checkStoreQueueReason"];

      v34 = [NSNumber numberWithBool:sub_100340114(v28, @"preorder")];
      [v29 setObject:v34 forKeyedSubscript:@"preorder"];

      v35 = sub_100340154(v28, @"evid");
      [v29 setObject:v35 forKeyedSubscript:@"externalVersionID"];

      v36 = [NSNumber numberWithInteger:a3];
      [v29 setObject:v36 forKeyedSubscript:@"finalPhase"];

      v37 = sub_100340328(v28, @"log_code");
      [v29 setObject:v37 forKeyedSubscript:@"installCode"];

      v38 = [NSNumber numberWithInt:sub_10023E604(v53, @"package_type") == 1];
      [v29 setObject:v38 forKeyedSubscript:@"isDelta"];

      v39 = [NSNumber numberWithInt:sub_100294244(v28) ^ 1];
      [v29 setObject:v39 forKeyedSubscript:@"isUserInitiated"];

      v40 = sub_100340154(v28, @"item_id");
      [v29 setObject:v40 forKeyedSubscript:@"itemID"];

      v41 = sub_10023E0F8(v53, @"bytes_total");
      [v29 setObject:v41 forKeyedSubscript:@"packageSize"];

      v42 = sub_100340328(v28, @"client_id");
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = &stru_100529300;
      }

      [v29 setObject:v44 forKeyedSubscript:@"responsibleClientID"];

      sub_100294744(v28);
      v45 = [NSNumber numberWithInteger:1];
      [v29 setObject:v45 forKeyedSubscript:@"softwarePlatform"];

      v46 = sub_100340328(v28, @"storefront");
      [v29 setObject:v46 forKeyedSubscript:@"storefront"];

      v47 = sub_100340328(v28, @"install_volume");
      v48 = [NSNumber numberWithInt:v47 != 0];
      [v29 setObject:v48 forKeyedSubscript:@"isExternalVolume"];

      if (sub_10023E604(v53, @"archive_type") < 2)
      {
        v49 = 1;
      }

      else
      {
        v49 = 2;
      }

      v50 = [NSNumber numberWithInteger:v49];
      [v29 setObject:v50 forKeyedSubscript:@"packageFormat"];

      goto LABEL_28;
    }
  }

  v29 = 0;
LABEL_28:

  if (v29)
  {
    v52 = objc_getProperty(a1, v51, 24, 1);
    sub_100255FE4(v52, v29);
  }
}

void sub_100206498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002064C4(id *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a2;
    v21 = +[BagService appstoredService];
    v4 = [v21 lastBag];
    v5 = v3;
    v6 = v4;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
    v24 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v24)
    {
      v7 = *v26;
      v22 = *v26;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = sub_10023E604(v9, @"phase");
          sub_1002067C8(v2, [v9 databaseID], v10, v6);
          v11 = sub_10023E0F8(v9, @"coordinator_id");
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            sub_100408EB0(v9);
            v13 = v6;
            v15 = v14 = v2;
            v16 = [v9 databaseID];
            v17 = sub_100382EEC(v10);
            *buf = 138413058;
            v30 = v15;
            v31 = 2048;
            v32 = v16;
            v33 = 2114;
            v34 = v17;
            v35 = 2114;
            v36 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Finished hard fail install (pid = '%lld', phase = '%{public}@' cid = %{public}@)", buf, 0x2Au);

            v2 = v14;
            v6 = v13;
            v7 = v22;
          }

          v18 = sub_100408EB0(v9);
          v19 = [v9 databaseID];
          v20 = sub_100382EEC(v10);
          ASDDebugLog();
        }

        v24 = [obj countByEnumeratingWithState:&v25 objects:v37 count:{16, v18, v19, v20, v11}];
      }

      while (v24);
    }
  }
}

void sub_1002067C8(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76 = a4;
  if (a1)
  {
    v7 = [AppInstallEntity alloc];
    v8 = [a1 connection];
    v9 = [(SQLiteEntity *)v7 initWithPersistentID:a2 onConnection:v8];

    if ([(SQLiteEntity *)v9 existsInDatabase])
    {
      v10 = +[NSDate date];
      [(SQLiteEntity *)v9 setValue:v10 forProperty:@"install_finished_timestamp"];

      v11 = sub_1003403A0(v9, @"external_id");
      v12 = ASDLogHandleForCategory();
      if (v11)
      {
        *buf = 0;
        *&buf[8] = 0;
        [v11 getUUIDBytes:buf];
        v13 = *buf;
        if ((*buf - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "Install", "", buf, 2u);
        }
      }

      sub_100205858(a1, v9, 0);
      sub_100205CE8(a1, v9, a3, v76);
      v14 = sub_1003402E8(v9, @"phase");
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sub_10029430C(v9);
        v17 = sub_100382EEC(a3);
        v18 = sub_100382EEC(v14);
        *buf = 138412802;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v85 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Finishing with final phase: %{public}@, current phase %{public}@", buf, 0x20u);
      }

      v19 = sub_1003402E8(v9, @"post_processing_state");
      if (a3 == -30 && (v19 & 2) != 0)
      {
        v20 = sub_100294758(v9) == 2;
        v21 = sub_1002943F0(v9);
        v22 = sub_100294428(v9);
        v23 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v21 appBundleURL:v22 event:22 client:v20];

        [v23 setUserInitiated:sub_100294244(v9) ^ 1];
        [v23 setAutomaticInstall:sub_100294298(v9) != 0];
        v24 = sub_10025E74C();
        sub_10025F51C(v24, v23);
      }

      WeakRetained = objc_loadWeakRetained(a1 + 2);
      [WeakRetained stopInstallID:a2 withReason:0 transaction:a1];

      v75 = sub_1002953E0(v9, a3);
      if (!sub_1003402E8(v9, @"source_type"))
      {
        v27 = [(SQLiteEntity *)v9 valueForProperty:@"update_type"];
        v28 = [v27 integerValue] == 0;

        if (v28)
        {
          v37 = [(SQLiteEntity *)v9 valueForProperty:@"restore_type"];
          v38 = [v37 integerValue] == 1;

          if (v38)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v85) = 0;
            v39 = [(SQLiteEntity *)v9 valueForProperty:@"ROWID"];
            v40 = [v39 longLongValue];

            v80 = @"bundle_id";
            v41 = [NSArray arrayWithObjects:&v80 count:1];
            v42 = [a1 connection];
            v43 = sub_1003DAD0C();
            v44 = sub_1002D3F5C(AppInstallEntity, v42, v43);

            v77[0] = _NSConcreteStackBlock;
            v77[1] = 3221225472;
            v77[2] = sub_100207350;
            v77[3] = &unk_10051CEE0;
            v77[4] = buf;
            v77[5] = v40;
            [v44 enumeratePersistentIDsAndProperties:v41 usingBlock:v77];
            if ((*(*&buf[8] + 24) & 1) == 0 && v75)
            {
              v75[144] = 1;
            }

            _Block_object_dispose(buf, 8);
          }

          else if (sub_100340114(v9, @"tv_provider"))
          {
            v73 = [(SQLiteEntity *)v9 valueForProperty:@"bundle_id"];
            sub_1002559EC(v75, v73, a3 == -40);
          }
        }

        else
        {
          if (sub_1003402E8(v9, @"update_type") == 1)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v85) = 0;
            v29 = [SQLiteComparisonPredicate predicateWithProperty:@"update_type" equalToValue:&off_100547140];
            v83[0] = v29;
            v30 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_100547158, 5];
            v83[1] = v30;
            v31 = [NSArray arrayWithObjects:v83 count:2];
            v74 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v31];

            v32 = [(SQLiteEntity *)v9 valueForProperty:@"ROWID"];
            v33 = [v32 longLongValue];

            v82 = @"bundle_id";
            v34 = [NSArray arrayWithObjects:&v82 count:1];
            v35 = [a1 connection];
            v36 = sub_1002D3F5C(AppInstallEntity, v35, v74);

            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v78[2] = sub_10020732C;
            v78[3] = &unk_10051CEE0;
            v78[4] = buf;
            v78[5] = v33;
            [v36 enumeratePersistentIDsAndProperties:v34 usingBlock:v78];
            if ((*(*&buf[8] + 24) & 1) == 0 && v75)
            {
              v75[148] = 1;
            }

            _Block_object_dispose(buf, 8);
          }

          v45 = sub_1002947DC(v9);
          v46 = [v45 persistentID];
          v81[0] = @"archive_type";
          v81[1] = @"package_type";
          v47 = [NSArray arrayWithObjects:v81 count:2];
          v48 = [a1 connection];
          v49 = [(SQLiteEntity *)AppPackageEntity memoryEntityForPersistentID:v46 withProperties:v47 usingConnection:v48];

          v50 = sub_1002943F0(v9);
          sub_100255AD0(v75, v50, v49);

          v51 = [(SQLiteEntity *)v9 valueForProperty:@"bundle_id"];
          sub_1002559EC(v75, v51, a3 == -40);
        }
      }

      if (v75)
      {
        Property = objc_getProperty(a1, v26, 24, 1);
        sub_1002561F0(Property, v75);
      }

      v53 = [(SQLiteEntity *)v9 valueForProperty:@"source_type"];
      v54 = [v53 integerValue] == 2;

      if (v54)
      {
        v55 = sub_100340244(v9, @"failure_error");
        v56 = [ASDBundle alloc];
        v57 = sub_1002943F0(v9);
        v58 = [v56 initWithIdentifier:v57];

        if (v58)
        {
          v59 = objc_opt_new();
          v60 = v59;
          if (v59)
          {
            [*(v59 + 8) setName:@"com.apple.AppInstallsDatabaseTransaction.NotifyTestFlightClientTaskQueue"];
          }

          v61 = sub_100383D60(NotifyTestFlightClientTask, a3, v58, v55);
          if (v60)
          {
            [v60[1] addOperation:v61];
          }
        }
      }

      v62 = a3 == -30;
      v63 = sub_100340244(v9, @"failure_error");
      v64 = !v62;
      if (v63)
      {
        v64 = 1;
      }

      if ((v64 & 1) == 0)
      {
        v63 = ASDErrorWithTitleAndMessage();
      }

      if (v63)
      {
        v65 = sub_100205BFC(v9, v63);
        if (v65)
        {
          v66 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = sub_10029430C(v9);
            *buf = 138412546;
            *&buf[4] = v67;
            *&buf[12] = 2114;
            *&buf[14] = v63;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[%@] Notifying clients of the completed with error: %{public}@", buf, 0x16u);
          }

          v79 = v65;
          v68 = [NSArray arrayWithObjects:&v79 count:1];
          v69 = sub_1002A2298(ASDNotification, v68);

          v70 = sub_100003984();
          sub_1003B8178(v70, v69);
        }
      }

      [(AppInstallEntity *)v9 deleteFromDatabase];
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
      }
    }

    v72 = objc_getProperty(a1, v71, 24, 1);
    if (v72)
    {
      v72[17] |= 0x10uLL;
    }
  }
}

uint64_t sub_10020732C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 40) != a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_100207350(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 40) != a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_100207374(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a2;
  v11 = v10;
  if (!a1)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    goto LABEL_46;
  }

  v12 = sub_100408EB0(v10);
  v13 = sub_10023E604(v11, @"source_type");
  v14 = sub_10023E644(v11, @"bundle_id");
  v15 = sub_10023E51C(v11, @"item_id");
  v16 = sub_1003DBCD4(AppInstallPredicates, v13, v14, v15, a5);
  if (v16)
  {
    v68 = v15;
    v69 = v14;
    v17 = [a1 connection];
    v67 = v16;
    v18 = sub_1002D3DF0(AppInstallEntity, v17, v16);

    if (v18)
    {
      v19 = sub_100340154(v18, @"order_index");
      v20 = [v19 stringValue];
      v21 = v20;
      v22 = @"none";
      if (v20)
      {
        v22 = v20;
      }

      v23 = v22;

      v24 = [v11 databaseID];
      v25 = [(SQLiteEntity *)v18 persistentID];
      v26 = sub_1003403A0(v18, @"coordinator_id");
      v27 = ASDLogHandleForCategory();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v24 != v25)
      {
        if (v28)
        {
          v41 = [(SQLiteEntity *)v18 persistentID];
          v42 = sub_1002944D0(v18);
          v43 = sub_100382EEC(v42);
          *buf = 138413314;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v41;
          v71 = 2114;
          v72 = v23;
          v73 = 2114;
          v74 = v43;
          v75 = 2114;
          v76 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Skipping duplicate install (pid = '%lld', order = '%{public}@', phase = '%{public}@' coordinatorID = '%{public}@')", buf, 0x34u);
        }

        *a6 = 0u;
        *(a6 + 16) = 0u;
        v44 = sub_1003403A0(v18, @"external_id");
        [v44 getUUIDBytes:a6 + 8];
        *(a6 + 24) = 2;
        *a6 = [(SQLiteEntity *)v18 persistentID];

        v15 = v68;
        v14 = v69;
        goto LABEL_44;
      }

      if (v28)
      {
        v29 = [(SQLiteEntity *)v18 persistentID];
        v30 = sub_1002944D0(v18);
        v31 = sub_100382EEC(v30);
        *buf = 138413314;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = v29;
        v71 = 2114;
        v72 = v23;
        v73 = 2114;
        v74 = v31;
        v75 = 2114;
        v76 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Refreshing existing installation (pid = '%lld', order = '%{public}@', phase = '%{public}@', coordinatorID = '%{public}@')", buf, 0x34u);
      }

      if ((a4 & 1) == 0)
      {
        v32 = sub_100294554(v18);
        sub_100408FB4(v11, v32);
      }

      if (v11)
      {
        v33 = v11[2];
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;
      [(SQLiteEntity *)v18 setValuesWithDictionary:v34];
    }

    else
    {
      v35 = sub_10023E51C(v11, @"order_index");
      v36 = [v35 stringValue];
      v37 = v36;
      v38 = @"none";
      if (v36)
      {
        v38 = v36;
      }

      v39 = v38;

      v40 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] Importing new installation (order = '%{public}@')", buf, 0x16u);
      }

      if (a3)
      {
        v16 = v67;
        if (a5)
        {
          *a5 = ASDErrorWithUserInfoAndFormat();
        }

        *a6 = 0u;
        *(a6 + 16) = 0u;
        v14 = v69;
        goto LABEL_45;
      }

      v45 = [AppInstallEntity alloc];
      if (v11)
      {
        v46 = v11[2];
      }

      else
      {
        v46 = 0;
      }

      v34 = v46;
      v47 = [a1 connection];
      v18 = [(SQLiteEntity *)v45 initWithPropertyValues:v34 onConnection:v47];
    }

    if (v11)
    {
      Property = objc_getProperty(v11, v48, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v50 = Property;
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = &__NSArray0__struct;
    }

    sub_1002959F0(v18, v52);

    v53 = sub_100294554(v18);
    v54 = v53;
    if (v53 && sub_1003B6718(v53) == 2)
    {
      v55 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = sub_10029430C(v18);
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Explicitly denied for low data network - canceling installation", buf, 0xCu);
      }

      v58 = objc_getProperty(a1, v57, 24, 1);
      v59 = sub_1002953E0(v18, -30);
      sub_1002561F0(v58, v59);
    }

    v61 = sub_1003403A0(v18, @"external_id");
    if (v61)
    {
      v62 = objc_getProperty(a1, v60, 24, 1);
      v77[0] = @"kind";
      v77[1] = @"identifier";
      *buf = @"import";
      *&buf[8] = v61;
      v63 = v61;
      v64 = v62;
      v65 = [NSDictionary dictionaryWithObjects:buf forKeys:v77 count:2];

      sub_100255F64(v64, v65);
    }

    else
    {
      v65 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Skipping legacy import notification because we don't have an identifier.", buf, 2u);
      }
    }

    v15 = v68;
    v14 = v69;

    *a6 = 0u;
    *(a6 + 16) = 0u;
    [v61 getUUIDBytes:a6 + 8];
    *(a6 + 24) = 1;
    *a6 = [(SQLiteEntity *)v18 persistentID];

LABEL_44:
    v16 = v67;
    goto LABEL_45;
  }

  *a6 = 0u;
  *(a6 + 16) = 0u;
LABEL_45:

LABEL_46:
}

id sub_100207ABC(void *a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v28 = 0u;
          v29 = 0u;
          v22 = 0;
          sub_100207374(a1, v11, 0, 1, &v22, &v28);
          v12 = v22;
          if (*(&v29 + 1))
          {
            v13 = [NSNumber numberWithLongLong:v28];
          }

          else
          {
            v14 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v17 = sub_100408EB0(v11);
              *buf = 138412546;
              v25 = v17;
              v26 = 2114;
              v27 = v12;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Import failed silently with error: %{public}@", buf, 0x16u);
            }

            v13 = 0;
          }

          if (v13)
          {
            [v5 addObject:v13];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100207D08(id *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v8 = [AppInstallEntity alloc];
    v9 = [a1 connection];
    v10 = [(SQLiteEntity *)v8 initWithPersistentID:a2 onConnection:v9];

    if ([(SQLiteEntity *)v10 existsInDatabase])
    {
      v11 = sub_1003402E8(v10, @"IFNULL(app_install.phase, 10)");
      v12 = v11;
      if (v11 == -10 || v11 + 15 == 0)
      {
        WeakRetained = ASDLogHandleForCategory();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_10029430C(v10);
          v16 = sub_100382EEC(v12);
          v17 = sub_1003830D0(a4);
          v41 = 138412802;
          v42 = v15;
          v43 = 2114;
          v44 = v16;
          v45 = 2114;
          v46 = v17;
          _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%@] Already paused with phase: %{public}@, ignoring request for reason: %{public}@", &v41, 0x20u);
        }
      }

      else
      {
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = sub_10029430C(v10);
          v21 = sub_100382EEC(a3);
          v22 = sub_1003830D0(a4);
          v41 = 138412802;
          v42 = v20;
          v43 = 2114;
          v44 = v21;
          v45 = 2114;
          v46 = v22;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Pausing with phase: %{public}@ for reason: %{public}@", &v41, 0x20u);
        }

        if (v12 == 45)
        {
          v23 = sub_100294758(v10) == 2;
          v24 = sub_1002943F0(v10);
          v25 = sub_100294428(v10);
          v26 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v24 appBundleURL:v25 event:20 client:v23];

          [v26 setUserInitiated:sub_100294244(v10) ^ 1];
          [v26 setAutomaticInstall:sub_100294298(v10) != 0];
          v27 = sub_10025E74C();
          sub_10025F51C(v27, v26);
        }

        v28 = sub_1003649C8();
        v29 = sub_1002943F0(v10);
        sub_100365640(v28, v29);

        v30 = _os_feature_enabled_impl();
        if (a4 == 2 && v30)
        {
          v31 = [(SQLiteEntity *)v10 valueForProperty:@"coordinator_id"];
          v32 = sub_1002943F0(v10);
          v33 = v32;
          if (v31 && v32)
          {
            v34 = sub_1002943F0(v10);
            v35 = sub_100249094(lib_IXAppInstallCoordinatorTag, v31, v34);

            Property = objc_getProperty(a1, v36, 24, 1);
            sub_100256A14(Property, v35);
          }
        }

        v38 = [NSNumber numberWithInteger:a3];
        [(SQLiteEntity *)v10 setValue:v38 forProperty:@"phase"];

        if (a4 == 2)
        {
          [(SQLiteEntity *)v10 setValue:0 forProperty:@"last_start_date"];
        }

        WeakRetained = objc_loadWeakRetained(a1 + 2);
        [WeakRetained stopInstallID:a2 withReason:1 transaction:a1];
      }
    }

    else
    {
      WeakRetained = ASDLogHandleForCategory();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v41 = 134217984;
        v42 = a2;
      }
    }

    if (a4 != 1)
    {
      v40 = objc_getProperty(a1, v39, 24, 1);
      if (v40)
      {
        v40[17] |= 0x400uLL;
      }
    }
  }
}

void sub_1002081C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained startPostProcessingForID:a2 transaction:a1];
  }
}

void sub_100208224(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [AppInstallEntity alloc];
    v7 = [a1 connection];
    v8 = [(SQLiteEntity *)v6 initWithPersistentID:a3 onConnection:v7];

    v9 = [NSNumber numberWithInteger:a2];
    [(SQLiteEntity *)v8 setValue:v9 forProperty:@"phase"];

    v10 = sub_1003403A0(v8, @"external_id");
    v11 = v10;
    if (v10)
    {
      v12 = a1[3];
      v15[0] = @"kind";
      v15[1] = @"identifier";
      *buf = @"state";
      v17 = v10;
      v15[2] = @"phase";
      v13 = [NSNumber numberWithInteger:a2];
      v18 = v13;
      v14 = [NSDictionary dictionaryWithObjects:buf forKeys:v15 count:3];

      sub_100255F64(v12, v14);
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Skipping legacy state notification because we don't have an identifier.", buf, 2u);
      }
    }
  }
}

void sub_1002083F0(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [AppInstallEntity alloc];
    v5 = [a1 connection];
    v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

    v7 = [(SQLiteEntity *)v6 existsInDatabase];
    v8 = ASDLogHandleForCategory();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10029430C(v6);
        v27 = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Resuming installation", &v27, 0xCu);
      }

      v11 = sub_1003649C8();
      v12 = sub_1002943F0(v6);
      sub_1003659FC(v11, v12);

      v9 = sub_100294554(v6);
      v13 = sub_100227468();
      v14 = sub_1003B6D5C(v13, v9);

      if (v14)
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_10029430C(v6);
          v27 = 138412290;
          v28 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Resumption is stopped by network policy, setting phase to Policy...", &v27, 0xCu);
        }

        v17 = &off_100547170;
      }

      else
      {
        v17 = &off_100547128;
      }

      [(SQLiteEntity *)v6 setValue:v17 forProperty:@"phase"];
      if (_os_feature_enabled_impl())
      {
        v19 = [(SQLiteEntity *)v6 valueForProperty:@"coordinator_id"];
        v20 = sub_1002943F0(v6);
        v21 = v20;
        if (v19 && v20)
        {
          v22 = sub_1002943F0(v6);
          v23 = sub_100249094(lib_IXAppInstallCoordinatorTag, v19, v22);

          Property = objc_getProperty(a1, v24, 24, 1);
          sub_100256A94(Property, v23);
        }
      }

      v26 = objc_getProperty(a1, v18, 24, 1);
      if (v26)
      {
        v26[17] |= 0x10000uLL;
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = 134217984;
      v28 = a2;
    }
  }
}

id sub_100208720(void *a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v26 = 0u;
          v27 = 0u;
          v17 = 0;
          sub_100207374(a1, v11, 0, 1, &v17, &v26);
          v12 = v17;
          if (*(&v27 + 1))
          {
            v13 = [NSNumber numberWithLongLong:v26];
            [v5 addObject:v13];
          }

          else
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = sub_100408EB0(v11);
              *buf = 138412546;
              v23 = v14;
              v24 = 2114;
              v25 = v12;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Update failed silently with error: %{public}@", buf, 0x16u);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10020894C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [AppInstallEntity alloc];
  v5 = [a1 connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  sub_1002946D4(v6, 0);
  if (sub_1002942AC(v6))
  {
    sub_10029476C(v6, 2);
  }

  if (sub_100294244(v6))
  {
    sub_100294380(v6, 0);
  }

  v7 = sub_1003B6560();
  sub_1002945E4(v6, v7);

  v8 = +[NSNull null];
  [(SQLiteEntity *)v6 setValue:v8 forProperty:@"optimal_download_start"];

  [(SQLiteEntity *)v6 setValue:&off_100547188 forProperty:@"recovery_count"];
  sub_100255690(AppProgressCoordinator, v6, a1, @"Converting to interactive");
  v9 = sub_1002944D0(v6);
  if ((v9 + 40) <= 0x14 && ((1 << (v9 + 40)) & 0x100401) != 0 || v9 > 39)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v10 = 1;
    [WeakRetained stopInstallID:a2 withReason:1 transaction:a1];

    sub_1002944E4(v6, 10);
    v13 = *(a1 + 24);
    if (v13)
    {
      *(v13 + 136) |= 0x80000uLL;
      v10 = 1;
    }
  }

  return v10;
}

void sub_100208B18(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
    v6 = [AppInstallEntity alloc];
    v7 = [a1 connection];
    v11 = [(SQLiteEntity *)v6 initWithPersistentID:a3 onConnection:v7];

    v8 = [v5 uniqueIdentifier];
    [(SQLiteEntity *)v11 setValue:v8 forProperty:@"coordinator_id"];

    v9 = sub_100248E14(v5);
    v10 = [NSNumber numberWithUnsignedInteger:v9];
    [(SQLiteEntity *)v11 setValue:v10 forProperty:@"coordinator_intent"];
  }
}

id sub_100208C24(uint64_t a1)
{
  v2 = sub_1002947DC(*(a1 + 32));
  v3 = [v2 persistentID];
  v20[0] = @"archive_type";
  v20[1] = @"bytes_total";
  v20[2] = @"package_type";
  v4 = [NSArray arrayWithObjects:v20 count:3];
  v5 = [*(a1 + 40) connection];
  v6 = [(SQLiteEntity *)AppPackageEntity memoryEntityForPersistentID:v3 withProperties:v4 usingConnection:v5];

  v7 = objc_opt_new();
  v8 = v7;
  if (*(a1 + 48))
  {
    v9 = &__kCFBooleanFalse;
  }

  else
  {
    v9 = &__kCFBooleanTrue;
  }

  [v7 setObject:v9 forKeyedSubscript:@"success"];
  v10 = sub_1003429BC(*(a1 + 48));
  [v8 setObject:v10 forKeyedSubscript:@"error"];

  v11 = [NSNumber numberWithInteger:*(a1 + 56)];
  [v8 setObject:v11 forKeyedSubscript:@"duration"];

  v12 = [NSNumber numberWithInteger:vcvtpd_s64_f64(sub_10023E604(v6, @"bytes_total") / 1000.0)];
  [v8 setObject:v12 forKeyedSubscript:@"packageSize"];

  v13 = [NSNumber numberWithInteger:sub_10023E604(v6, @"package_type")];
  [v8 setObject:v13 forKeyedSubscript:@"packageType"];

  if (sub_10023E604(v6, @"archive_type") < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [NSNumber numberWithInteger:v14];
  [v8 setObject:v15 forKeyedSubscript:@"packageFormat"];

  v16 = sub_100340154(*(a1 + 32), @"check_store_queue_reason");
  [v8 setObject:v16 forKeyedSubscript:@"checkStoreQueueReason"];

  v17 = sub_100340154(*(a1 + 32), @"preorder");
  [v8 setObject:v17 forKeyedSubscript:@"preorder"];

  sub_1003402E8(*(a1 + 32), @"software_platform");
  v18 = [NSNumber numberWithInteger:1];
  [v8 setObject:v18 forKeyedSubscript:@"softwarePlatform"];

  return v8;
}

uint64_t sub_100208F3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100208F54(uint64_t a1, void *a2)
{
  v3 = sub_10040522C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100208FBC()
{
  objc_opt_self();
  if (qword_1005AA7D8 != -1)
  {
    dispatch_once(&qword_1005AA7D8, &stru_10051CF50);
  }

  v0 = qword_1005AA7E0;

  return v0;
}

void sub_100209014(id a1)
{
  v1 = [ODRDatabaseStore alloc];
  v5 = sub_1001C0DF0();
  v2 = sub_1001C0EC4(v5);
  v3 = [(SQLiteDatabaseStore *)v1 initWithDatabase:v2];
  v4 = qword_1005AA7E0;
  qword_1005AA7E0 = v3;
}

void sub_10020913C(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2 > 13001)
  {
    if (a2 == 13002)
    {
      v4 = &stru_10051D038;
      v5 = 13003;
      goto LABEL_16;
    }

    if (a2 == 13003)
    {
      v4 = &stru_10051D058;
      v5 = 13004;
      goto LABEL_16;
    }

    if (a2 != 13004)
    {
      return;
    }

    v4 = &stru_10051D078;
LABEL_11:
    v5 = 14000;
    goto LABEL_16;
  }

  switch(a2)
  {
    case 0:
      v4 = &stru_10051CFD8;
      goto LABEL_11;
    case 13000:
      v4 = &stru_10051CFF8;
      v5 = 13001;
      goto LABEL_16;
    case 13001:
      v4 = &stru_10051D018;
      v5 = 13002;
LABEL_16:
      *a3 = v5;
      v6 = *a4;
      *a4 = v4;

      break;
  }
}

uint64_t sub_1002092A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    sub_100407890(v3);
  }

  return v4;
}

uint64_t sub_1002093B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    sub_100407890(v3);
  }

  return v4;
}

void sub_100209404(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS odr_asset_download (pid INTEGER, bundle_id TEXT, bundle_key TEXT, coordinator_id UUID, download_size INTEGER, is_paused INTEGER, source_url TEXT, type INTEGER, unique_key TEXT, PRIMARY KEY(pid), UNIQUE (unique_key) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS odr_asset_pack (pid INTEGER, bundle_key TEXT, bundle_id TEXT, chunk_size INTEGER, download_identifier INTEGER DEFAULT 0, download_priority REAL, download_request_uuids JSON, effective_always_preserve INTEGER DEFAULT 0, effective_preservation_priority INTEGER DEFAULT 0, hash_array JSON, known_content_hashes JSON, file_size INTEGER, last_used_date DATETIME, local_url TEXT, manifest_id INTEGER, md5 TEXT, pin_count INTEGER DEFAULT 0, primary_content_hash JSON, purgeable INTEGER DEFAULT 1, purge_reason INTEGER, sha TEXT, streamable INTEGER DEFAULT 0, source_url TEXT, timestamp DATETIME DEFAULT (timestamp()), uncompressed_size INTEGER, PRIMARY KEY(pid), UNIQUE (bundle_key) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE INDEX IF NOT EXISTS odr_asset_pack_bundle_key ON odr_asset_pack(bundle_key);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS odr_manifest (pid INTEGER, bundle_id TEXT, evid INTEGER, is_store_based INTEGER, item_id TEXT, last_modification_date DATETIME DEFAULT (timestamp()), local_cache_allowed INTEGER, thinning_variant TEXT, storage_id TEXT, version TEXT, PRIMARY KEY(pid), UNIQUE(item_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS odr_tag (pid INTEGER, always_preserved INTEGER DEFAULT 0, bundle_id TEXT, bundle_key TEXT, name TEXT, preservation_priority REAL DEFAULT 0, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY(pid)); ", 1, 0);
    v2 = v3;
  }
}

void sub_1002094B4(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS odr_asset_download (pid INTEGER, bundle_id TEXT, bundle_key TEXT, coordinator_id UUID, download_size INTEGER, is_paused INTEGER, source_url TEXT, type INTEGER, unique_key TEXT, PRIMARY KEY(pid), UNIQUE (unique_key) ON CONFLICT REPLACE);", 1, 0);
  }
}

void sub_1002094D8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE odr_asset_download ADD COLUMN coordinator_id UUID;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE odr_asset_download ADD COLUMN is_paused INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE odr_asset_download ADD COLUMN type INTEGER;", 1, 0);
    v2 = v3;
  }
}

void sub_100209558(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE odr_work;", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE odr_fake_work;", 0, 0);
    v2 = v3;
  }
}

void sub_1002095C0(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE odr_asset_download ADD COLUMN download_size INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"DROP TABLE odr_download;", 0, 0);
    v2 = v3;
  }
}

id sub_100209634(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = LZMADecoder;
    a1 = objc_msgSendSuper2(&v13, "init");
    if (a1)
    {
      v4 = os_transaction_create();
      v5 = *(a1 + 19);
      *(a1 + 19) = v4;

      *(a1 + 1) = 0u;
      *(a1 + 18) = 0;
      *(a1 + 7) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 2) = 0u;
      lzma_stream_decoder();
      v6 = objc_alloc_init(NSMutableData);
      v7 = *(a1 + 1);
      *(a1 + 1) = v6;

      if (v3)
      {
        v8 = sub_1002BE07C([DigestVerifier alloc], v3, 0);
        v9 = *(a1 + 20);
        *(a1 + 20) = v8;
      }

      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Decoder intialized", v12, 2u);
      }
    }
  }

  return a1;
}

uint64_t sub_10020984C(uint64_t result, char *a2, unint64_t a3, uint64_t a4, id *a5, NSObject **a6)
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 184);
    if (v8 == 4)
    {
      if (a6)
      {
        v9 = *(result + 176);
        v10 = v9;
LABEL_5:
        result = 0;
        *a6 = v9;
        return result;
      }

      return 0;
    }

    if (a3 && (v15 = *(result + 160)) != 0)
    {
      v48 = 0;
      v16 = sub_1002BE498(v15, a2, a3, &v48);
      v17 = v48;
      v18 = v48;
      v19 = v18;
      if (!v16)
      {
        objc_storeStrong((v7 + 176), v17);
        *(v7 + 184) = 4;
        if (a6)
        {
          v23 = v19;
          *a6 = v19;
        }

        return 0;
      }
    }

    else if (!a3)
    {
      goto LABEL_12;
    }

    [*(v7 + 8) appendBytes:a2 length:a3];
    v8 = *(v7 + 184);
LABEL_12:
    if (!v8)
    {
      v20 = *(v7 + 168);
      v21 = ASDLogHandleForCategory();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v20 == 1)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Autodetection disabled, entering running state", buf, 2u);
        }

        *(v7 + 184) = 1;
        goto LABEL_38;
      }

      if (v22)
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Inspecting input bytes", buf, 2u);
      }

      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      [*(v7 + 8) bytes];
      v24 = lzma_stream_header_decode();
      v25 = ASDLogHandleForCategory();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        if (v26)
        {
          *v49 = 67109120;
          v50 = v24;
          v8 = 2;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Entering passthrough state (%d)", v49, 8u);
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        if (v26)
        {
          *v49 = 67109120;
          v50 = 0;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Entering running state (%d)", v49, 8u);
        }

        v8 = 1;
      }

      *(v7 + 184) = v8;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        return 1;
      }

      if ([*(v7 + 8) length])
      {
        v27 = *a5;
        v28 = [*(v7 + 8) length];
        if (v27 >= v28)
        {
          v27 = v28;
        }

        [*(v7 + 8) getBytes:a4 length:v27];
        *a5 = v27;
        v29 = [*(v7 + 8) length];
        v30 = v29 - v27;
        if (v29 != v27)
        {
          memmove([*(v7 + 8) mutableBytes], &v27[objc_msgSend(*(v7 + 8), "bytes")], v30);
        }

        [*(v7 + 8) setLength:v30];
      }

      else
      {
        *a5 = 0;
      }

      v41 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
LABEL_64:

        return 1;
      }

      v42 = *a5;
      *buf = 134217984;
      *&buf[4] = v42;
      v43 = "(LZMADecoder) Passthrough for %{iec-bytes}lu bytes";
LABEL_68:
      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, v43, buf, 0xCu);
      goto LABEL_64;
    }

LABEL_38:
    v31 = *a5;
    *(v7 + 40) = a4;
    *(v7 + 48) = v31;
    *(v7 + 24) = [*(v7 + 8) length];
    *(v7 + 16) = [*(v7 + 8) bytes];
    v32 = lzma_code();
    if (!v32)
    {
LABEL_60:
      if (*(v7 + 24))
      {
        memmove([*(v7 + 8) mutableBytes], *(v7 + 16), *(v7 + 24));
        v45 = *(v7 + 24);
      }

      else
      {
        v45 = 0;
      }

      [*(v7 + 8) setLength:v45];
      *a5 = *a5 - *(v7 + 48);
      v41 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_64;
      }

      v46 = *a5;
      *buf = 134217984;
      *&buf[4] = v46;
      v43 = "(LZMADecoder) Decoded %{iec-bytes}lu";
      goto LABEL_68;
    }

    v33 = v32;
    if (v32 != 1)
    {
      if (v32 != 10)
      {
        if (a6)
        {
          v39 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v33;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Entering error state (%d)", buf, 8u);
          }

          v9 = [NSError errorWithDomain:ASDErrorDomain code:v33 + 410 userInfo:0];
          v40 = v9;
          goto LABEL_5;
        }

        return 0;
      }

      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Output buffer completely full", buf, 2u);
      }

      goto LABEL_59;
    }

    v35 = *(v7 + 160);
    if (v35)
    {
      v47 = 0;
      v36 = sub_1002BE160(v35, &v47);
      v37 = v47;
      v34 = v47;
      if ((v36 & 1) == 0)
      {
        *(v7 + 184) = 4;
        objc_storeStrong((v7 + 176), v37);
        if (a6)
        {
          v38 = v34;
          *a6 = v34;
        }

        return 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v44 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Entering finished state (%d)", buf, 8u);
    }

    *(v7 + 184) = 3;
LABEL_59:

    goto LABEL_60;
  }

  return result;
}

uint64_t sub_100209ED4(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 > 8)
  {
    return 0;
  }

  else
  {
    return qword_10044B9D8[a2];
  }
}

void sub_100209F4C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    sub_10023E000(a1, v3, @"bundle_id");
  }
}

void sub_100209FB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithUnsignedChar:a2];
    sub_10023E000(a1, v3, @"event_subtype");
  }
}

void sub_10020A020(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithUnsignedChar:a2];
    sub_10023E000(a1, v3, @"event_type");
  }
}

void sub_10020A090(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    sub_10023E000(a1, v3, @"metrics_type");
  }
}

void sub_10020A100(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    sub_10023E000(a1, v3, @"payload");
  }
}

void sub_10020A164(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    sub_10023E000(a1, v3, @"has_been_posted");
  }
}

id *sub_10020A368(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id **sub_10020A3C4(id **a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_1003D2234(a1[1]);
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = sub_1003D2360(v1[1]);
    }

    v5 = v4;

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      Property = objc_getProperty(v1, v7, 32, 1);
      v9 = *(v1 + 24);
      v10 = sub_1003D0F60(v1[1]);
      *buf = 138413058;
      v58 = Property;
      v59 = 2114;
      v60 = v5;
      v61 = 1024;
      v62 = v9;
      v63 = 2114;
      v64 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Performing authorization for accountID: %{public}@ userInitiated: %{BOOL}d bundleID: %{public}@", buf, 0x26u);
    }

    if (v5)
    {
      v11 = +[ACAccountStore ams_sharedAccountStore];
      v12 = [v11 ams_iTunesAccountWithDSID:v5];

      if (v12)
      {
        goto LABEL_21;
      }
    }

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_getProperty(v1, v14, 32, 1);
      *buf = 138412290;
      v58 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Could not find account, trying to make one from store metadata", buf, 0xCu);
    }

    v17 = sub_1003D2888(v1[1], v16);
    if (v17)
    {
      v18 = sub_100305A84(ACAccount, v17);
      if (v18)
      {
        v12 = v18;
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_getProperty(v1, v20, 32, 1);
          *buf = 138412546;
          v58 = v21;
          v59 = 2114;
          v60 = v12;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to use account from store metadata: %{public}@", buf, 0x16u);
        }

LABEL_34:
        if (v1[3])
        {
          v44 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_getProperty(v1, v45, 32, 1);
            *buf = 138412290;
            v58 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] Authentication is required to perform authorization", buf, 0xCu);
          }

          v47 = sub_10020AE1C(v1, v12);
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10020B1E8;
          v53[3] = &unk_10051D110;
          v53[4] = v1;
          v48 = [v47 thenWithBlock:v53];
          v1 = [v48 binaryPromiseAdapter];
        }

        else
        {
          v49 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_getProperty(v1, v50, 32, 1);
            *buf = 138412546;
            v58 = v52;
            v59 = 2114;
            v60 = v5;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "[%@] Unable to perform loud authenticate for accountID: %{public}@", buf, 0x16u);
          }

          v47 = ASDErrorWithDescription();
          v1 = [AMSBinaryPromise promiseWithError:v47];
        }

LABEL_42:
        goto LABEL_43;
      }
    }

    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_getProperty(v1, v23, 32, 1);
      *buf = 138412290;
      v58 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Could not find account, using the active account instead", buf, 0xCu);
    }

    v25 = +[ACAccountStore ams_sharedAccountStore];
    v12 = [v25 ams_activeiTunesAccount];

    if (v5 && ([v12 ams_DSID], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToNumber:", v5), v26, (v27 & 1) == 0))
    {
      v38 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_getProperty(v1, v39, 32, 1);
        *buf = 138412290;
        v58 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@] Active account exists, but application does not belong to it", buf, 0xCu);
      }
    }

    else if (v12)
    {
LABEL_21:
      v28 = *(v1 + 24);
      v29 = ASDLogHandleForCategory();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          v32 = objc_getProperty(v1, v31, 32, 1);
          *buf = 138412290;
          v58 = v32;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] [User Initiated] Authentication not required to perform authorization", buf, 0xCu);
        }

        v33 = objc_alloc_init(AMSMutableBinaryPromise);
        v34 = sub_10020AB04(v1, v12);
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10020AC14;
        v54[3] = &unk_10051D0E8;
        v54[4] = v1;
        v12 = v12;
        v55 = v12;
        v35 = v33;
        v56 = v35;
        [v34 resultWithCompletion:v54];

        v36 = v56;
        v1 = v35;
      }

      else
      {
        if (v30)
        {
          v37 = objc_getProperty(v1, v31, 32, 1);
          *buf = 138412290;
          v58 = v37;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] [Non-user Initiated] Authentication not required to perform authorization", buf, 0xCu);
        }

        v1 = sub_10020AB04(v1, v12);
      }

      goto LABEL_42;
    }

    v41 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_getProperty(v1, v42, 32, 1);
      *buf = 138412290;
      v58 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Could not find account, using the active account instead", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_34;
  }

LABEL_43:

  return v1;
}

id sub_10020AB04(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(AMSPromise);
    v5 = +[BagService appstoredService];
    v6 = [v4 completionHandlerAdapter];
    [v5 recentBagWithCompletionHandler:v6];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10020B584;
    v8[3] = &unk_10051D188;
    v9 = v3;
    v10 = a1;
    a1 = [v4 thenWithBinaryPromiseBlock:v8];
  }

  return a1;
}

void sub_10020AC14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [*(a1 + 48) finishWithSuccess];
    goto LABEL_14;
  }

  v6 = *(a1 + 32);
  v7 = v4;
  v8 = v7;
  if (!v6)
  {
LABEL_13:

    [*(a1 + 48) finishWithError:v8];
    goto LABEL_14;
  }

  v9 = [v7 domain];
  if (([v9 isEqualToString:AMSErrorDomain] & 1) == 0)
  {

    goto LABEL_13;
  }

  v10 = [v8 code];

  if (v10 != 305)
  {
    goto LABEL_13;
  }

  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"AMSServerErrorCode"];
  v13 = [v12 integerValue];

  if (v13 != 2001)
  {
    goto LABEL_13;
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v15, 32, 1);
    }

    *buf = 138412290;
    v24 = Property;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Performing authentication due to server error while authorizing", buf, 0xCu);
  }

  v17 = sub_10020AE1C(*(a1 + 32), *(a1 + 40));
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10020B0C4;
  v20[3] = &unk_10051D0C0;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v21 = v18;
  v22 = v19;
  [v17 resultWithCompletion:v20];

LABEL_14:
}

id **sub_10020AE1C(id **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(AMSMutablePromise);
    v5 = objc_alloc_init(InteractiveRequestPresenter);
    v6 = ASDLocalizedString();
    v7 = sub_1003D266C(a1[1]);
    v8 = [NSString stringWithFormat:v6, v7];

    v9 = [AMSDialogRequest alloc];
    v10 = ASDLocalizedString();
    v11 = [v9 initWithTitle:v10 message:v8];

    v13 = [objc_getProperty(a1 v12];
    [v11 setLogKey:v13];

    v14 = ASDLocalizedString();
    v15 = [AMSDialogAction actionWithTitle:v14 style:2];

    v16 = ASDLocalizedString();
    v17 = [AMSDialogAction actionWithTitle:v16];

    v28[0] = v15;
    v28[1] = v17;
    v18 = [NSArray arrayWithObjects:v28 count:2];
    [v11 setButtonActions:v18];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10020B238;
    v23[3] = &unk_10051D160;
    v19 = v4;
    v24 = v19;
    v25 = a1;
    v26 = v3;
    v27 = v5;
    v20 = v5;
    [(InteractiveRequestPresenter *)v20 presentDialogRequest:v11 resultHandler:v23];
    v21 = v27;
    a1 = v19;
  }

  return a1;
}

void sub_10020B0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else if (v5)
  {
    v7 = sub_10020AB04(*(a1 + 40), v5);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10020B1D8;
    v10[3] = &unk_10051B348;
    v11 = *(a1 + 32);
    [v7 resultWithCompletion:v10];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = ASDErrorWithUserInfoAndFormat();
    [v8 finishWithError:v9];
  }
}

id sub_10020B1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithSuccess];
  }
}

id sub_10020B1E8(uint64_t a1, void *a2)
{
  v2 = sub_10020AB04(*(a1 + 32), a2);
  v3 = [v2 promiseAdapter];

  return v3;
}

void sub_10020B238(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (sub_100303630(v5))
    {
      v8 = *(a1 + 32);
      v9 = ASDErrorWithUserInfoAndFormat();
      [v8 finishWithError:v9];
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = *(a1 + 48);
        v12 = objc_opt_new();
        [v12 setAuthenticationType:0];
        Property = objc_getProperty(v10, v13, 32, 1);
        if (v11)
        {
          v15 = @"%@ - RefetchKeybag: New account from store metadata";
        }

        else
        {
          v15 = @"%@ - RefetchKeybag: No iTunes account available";
        }

        v16 = [NSString stringWithFormat:v15, Property];
        [v12 setDebugReason:v16];

        [v12 setCanMakeAccountActive:0];
        [v12 setClientInfo:v10[2]];
        [v12 setDebugReason:@"Keybag"];
        v17 = [v10[2] localizedName];
        [v12 setProxyAppName:v17];

        v18 = [[AMSAuthenticateRequest alloc] initWithAccount:v11 options:v12];
        v20 = [objc_getProperty(v10 v19];
        [v18 setLogKey:v20];
      }

      else
      {
        v18 = 0;
      }

      v21 = *(a1 + 56);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10020B49C;
      v22[3] = &unk_10051D138;
      v23 = *(a1 + 32);
      [v21 presentAuthenticateRequest:v18 resultHandler:v22];
    }
  }

  else
  {
    if (!v6)
    {
      v7 = ASDErrorWithUserInfoAndFormat();
    }

    [*(a1 + 32) finishWithError:v7];
  }
}

void sub_10020B49C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 account];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 finishWithResult:v6];
    }

    else
    {
      v8 = ASDErrorWithUserInfoAndFormat();
      [v7 finishWithError:v8];
    }
  }

  else
  {
    if (!v5)
    {
      v5 = ASDErrorWithUserInfoAndFormat();
    }

    [*(a1 + 32) finishWithError:v5];
  }
}

id sub_10020B584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003DCF8C([AuthorizeMachine alloc], *(a1 + 32), 2, *(*(a1 + 40) + 24), v3);

  v5 = sub_1003D2234(*(*(a1 + 40) + 8));
  if (v5)
  {
    v7 = v5;
    v8 = sub_1003D2360(*(*(a1 + 40) + 8));

    if (v8)
    {
      if (v4)
      {
        v4[7] = 1;
      }

      v10 = sub_1003D2360(*(*(a1 + 40) + 8));
      if (v4)
      {
        objc_setProperty_atomic_copy(v4, v9, v10, 64);
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    Property = objc_getProperty(v11, v6, 32, 1);
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Property = 0;
  if (v4)
  {
LABEL_10:
    objc_setProperty_atomic_copy(v4, v6, Property, 72);
  }

LABEL_11:
  v13 = sub_1003DD080(v4);

  return v13;
}

id sub_10020B714()
{
  objc_opt_self();
  if (qword_1005AA7E8 != -1)
  {
    dispatch_once(&qword_1005AA7E8, &stru_10051D2C0);
  }

  v0 = qword_1005AA7F0;

  return v0;
}

void sub_10020B76C(id a1)
{
  v1 = objc_alloc_init(SyncTaskScheduler);
  v2 = qword_1005AA7F0;
  qword_1005AA7F0 = v1;
}

void *sub_10020B7B8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v45.receiver = a1;
    v45.super_class = ClipAdditionalData;
    a1 = objc_msgSendSuper2(&v45, "init");
    if (a1)
    {
      v49[0] = @"asset-info";
      v49[1] = @"file-size";
      v4 = [NSArray arrayWithObjects:v49 count:2];
      v5 = sub_100396BB8(v4);
      v6 = sub_100237A3C(v3, v5);
      v7 = a1[1];
      a1[1] = v6;

      v8 = sub_1002380D8(v3, @"install-verification-token");
      v9 = a1[5];
      a1[5] = v8;

      v10 = sub_10023790C(v3, @"uncompressedSize");
      v11 = a1[8];
      a1[8] = v10;

      v12 = sub_100237D58(v3, @"chunks");
      v13 = v12;
      if (v12)
      {
        v14 = sub_10023790C(v12, @"chunkSize");
        v15 = a1[2];
        a1[2] = v14;

        v16 = sub_100237778(v13, @"clearHashes");
        v17 = a1[3];
        a1[3] = v16;
      }

      v18 = sub_100237778(v3, @"sinfs");
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        do
        {
          v22 = 0;
          do
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v41 + 1) + 8 * v22);
            v24 = a1[7];
            if (!v24 || ![v24 length])
            {
              v25 = sub_100237B38(v23, @"sinf");
              v26 = a1[7];
              a1[7] = v25;
            }

            v27 = a1[4];
            if (!v27 || ![v27 length])
            {
              v28 = sub_100237B38(v23, @"dpInfo");
              v29 = a1[4];
              a1[4] = v28;
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v20);
      }

      v30 = sub_100237D58(v3, @"compressionInfo");
      v31 = ASDLogHandleForCategory();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (v30)
      {
        if (v32)
        {
          *buf = 138412290;
          v47 = v30;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "(ClipAdditionalData) Identified compression info from response: %@", buf, 0xCu);
        }

        v33 = sub_1002380D8(v30, @"compressionMethod");
        v34 = [v33 lowercaseString];

        v35 = sub_1002378BC(v30, @"isExternallyCompressed", 0);
        v36 = [v34 isEqualToString:@"lzma"];
        v37 = ASDLogHandleForCategory();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
        if (v36 && v35)
        {
          if (v38)
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "(ClipAdditionalData) Compression method is external LZMA", buf, 2u);
          }

          v39 = 1;
        }

        else
        {
          if (v38)
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "(ClipAdditionalData) Compression method is unknown, passing through to StreamingZip", buf, 2u);
          }

          v39 = 0;
        }

        a1[6] = v39;
      }

      else
      {
        if (v32)
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "(ClipAdditionalData) Could not identify compression info from response", buf, 2u);
        }

        a1[6] = 0;
      }
    }
  }

  return a1;
}

id sub_10020BE10()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020BEB4;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA800 != -1)
  {
    dispatch_once(&qword_1005AA800, block);
  }

  v0 = qword_1005AA7F8;

  return v0;
}

void sub_10020BEB4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA7F8;
  qword_1005AA7F8 = v1;
}

void sub_10020C168(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    v5 = *(a1 + 8);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10020C234;
    v7[3] = &unk_10051AEE8;
    v8 = v3;
    v9 = a1;
    v10 = v4;
    v6 = v4;
    sub_100005D90(v5, v7);
  }
}

void sub_10020C234(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 32) badgeIdentifier];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = v5;
    *buf = 138544386;
    v35 = v5;
    v36 = 2114;
    v37 = v6;
    v38 = 2114;
    v39 = v2;
    v40 = 2114;
    v41 = v3;
    v42 = 1024;
    v43 = [v7 enabled];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Push for bundleID: %{public}@ badgeID: %{public}@ enabled: %{BOOL}d", buf, 0x30u);
  }

  if (v2 && [v2 isEqualToString:@"com.apple.AppStore"] && v3)
  {
    v9 = [*(a1 + 32) enabled];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = [*(a1 + 32) metrics];
      v12 = [*(a1 + 32) actionMetricsEvent];
      v13 = *(a1 + 48);
      v14 = v11;
      v32 = v12;
      v15 = v3;
      v16 = v13;
      v17 = v15;
      v18 = v16;
      if (v10)
      {
        dispatch_assert_queue_V2(*(v10 + 8));
        v19 = sub_10020CD68(v10, v18);
        v20 = [v19 mutableCopy];

        v21 = [v20 objectForKeyedSubscript:v17];
        v22 = [v21 mutableCopy];

        if (!v22)
        {
          v22 = [NSMutableDictionary dictionaryWithDictionary:&off_100549728];
        }

        if (v14)
        {
          [v22 setObject:v14 forKeyedSubscript:@"metrics"];
        }

        if (v32)
        {
          [v22 setObject:v32 forKeyedSubscript:@"actionMetrics"];
        }

        sub_10020CE38(v10, v22, v17, v20);
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = objc_opt_class();
          *buf = 138543874;
          v35 = v24;
          v36 = 2112;
          v37 = v18;
          v38 = 2114;
          v39 = v17;
          v31 = v18;
          v25 = v17;
          v26 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Added badgeID: %{public}@", buf, 0x20u);

          v17 = v25;
          v18 = v31;
        }

        sub_10020CED8(v10, v20, v18);
        v27 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = objc_opt_class();
          *buf = 138543874;
          v35 = v28;
          v36 = 2112;
          v37 = v18;
          v38 = 2114;
          v39 = v20;
          v29 = v17;
          v30 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Badge metrics dictionary updated to: %{public}@", buf, 0x20u);

          v17 = v29;
        }
      }
    }

    else
    {
      v33 = v3;
      v14 = [NSArray arrayWithObjects:&v33 count:1];
      sub_10020C628(v10, v14, 0, *(a1 + 48));
    }

    sub_10020C908(*(a1 + 40), *(a1 + 48));
  }
}

BOOL sub_10020C628(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v7 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v34 = v10;
      v35 = 2112;
      v36 = v8;
      v37 = 2114;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Removing badge metrics for badgeIDs: [%{public}@]", buf, 0x20u);
    }

    v26 = v8;
    v13 = sub_10020CD68(a1, v8);
    v14 = [v13 mutableCopy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v7;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v14 objectForKeyedSubscript:{v20, v26}];

          if (v21)
          {
            if (a3)
            {
              [v14 setObject:&__NSDictionary0__struct forKeyedSubscript:v20];
            }

            else
            {
              [v14 removeObjectForKey:v20];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v8 = v26;
    sub_10020CED8(a1, v14, v26);
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      *buf = 138543874;
      v34 = v23;
      v35 = 2112;
      v36 = v26;
      v37 = 2114;
      v38 = v14;
      v24 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Badge metrics dictionary updated to: [%{public}@]", buf, 0x20u);
    }

    v7 = v27;
  }

  return a1 != 0;
}

void sub_10020C908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    notify_post("com.apple.appstored.ASDAppStoreServiceBadgesChanged");
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = objc_opt_class();
      v8 = 2112;
      v9 = v3;
      v5 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Notifying badge changed", &v6, 0x16u);
    }
  }
}

uint64_t sub_10020C9FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v8 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10020CB00;
    v10[3] = &unk_10051D2E8;
    v10[4] = a1;
    v11 = v6;
    v12 = v5;
    v13 = &v14;
    dispatch_sync(v8, v10);
    LOBYTE(a1) = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  return a1 & 1;
}

void sub_10020CB00(uint64_t a1)
{
  v2 = sub_10020CD68(*(a1 + 32), *(a1 + 40));
  v3 = [v2 mutableCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = *(a1 + 40);
          *buf = 138543874;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          v26 = 2114;
          v27 = v9;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Added badgeID: %{public}@", buf, 0x20u);
        }

        sub_10020CE38(*(a1 + 32), 0, v9, v3);
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }

  *(*(*(a1 + 56) + 8) + 24) = sub_10020CED8(*(a1 + 32), v3, *(a1 + 40));
  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543874;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2114;
    v27 = v3;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Badges dictionary updated to: %{public}@", buf, 0x20u);
  }

  sub_10020C908(*(a1 + 32), *(a1 + 40));
}

id sub_10020CD68(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10020E294(a1, a2);
    objc_opt_class();
    v3 = sub_1001C09E4(v2);

    v4 = &__NSDictionary0__struct;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"badges"];
      objc_opt_class();
      v6 = sub_1001C09E4(v5);

      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = &__NSDictionary0__struct;
      }

      v4 = v7;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10020CE38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  if (a1)
  {
    v7 = *(a1 + 8);
    v8 = a4;
    v9 = a3;
    dispatch_assert_queue_V2(v7);
    v10 = v11;
    if (!v11)
    {
      v10 = &__NSDictionary0__struct;
    }

    v11 = v10;
    [v8 setObject:? forKeyedSubscript:?];
  }
}

uint64_t sub_10020CED8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_10020E540();
    if (v7)
    {
      v35[0] = @"badging-version";
      v35[1] = @"badges";
      v36[0] = &off_1005471A0;
      v36[1] = v5;
      v8 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
      v28 = 0;
      v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v28];
      v10 = v28;
      v11 = v10;
      if (v9)
      {
        v27 = v10;
        v12 = [v9 writeToFile:v7 options:1 error:&v27];
        v13 = v27;

        v14 = ASDLogHandleForCategory();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            *buf = 138543874;
            v30 = v16;
            v31 = 2114;
            v32 = v6;
            v33 = 2114;
            v34 = v7;
            v17 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Wrote the serialized badging metadata to: %{public}@", buf, 0x20u);
          }

          v18 = 1;
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = v24;
            v26 = AMSLogableError();
            *buf = 138543874;
            v30 = v24;
            v31 = 2114;
            v32 = v6;
            v33 = 2114;
            v34 = v26;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to write the serialized badging metadata. Error: %{public}@", buf, 0x20u);
          }

          v18 = 0;
        }

        v11 = v13;
      }

      else
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = v21;
          v23 = AMSLogableError();
          *buf = 138543874;
          v30 = v21;
          v31 = 2114;
          v32 = v6;
          v33 = 2114;
          v34 = v23;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to serialize badging metadata. Error: %{public}@", buf, 0x20u);
        }

        v18 = 0;
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = objc_opt_class();
        v31 = 2114;
        v32 = v6;
        v19 = v30;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Unable to generate the path in order to cache badging metadata", buf, 0x16u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void *sub_10020D264(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10020D384;
    v14 = sub_10020D394;
    v15 = 0;
    v5 = a1[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020D39C;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

uint64_t sub_10020D384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020D39C(uint64_t a1)
{
  v2 = sub_10020D3F0(*(a1 + 32), *(a1 + 40), 1);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10020D3F0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v6 = sub_10020CD68(a1, v5);
    v7 = [v6 allKeys];
    if (a3)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [v7 componentsJoinedByString:{@", "}];
        v13 = 138543874;
        v14 = v9;
        v15 = 2112;
        v16 = v5;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Returning badgeIDs: [%{public}@]", &v13, 0x20u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_10020D55C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10020D384;
    v14 = sub_10020D394;
    v15 = 0;
    v5 = a1[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020D67C;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_10020D67C(uint64_t a1)
{
  v2 = sub_10020CD68(*(a1 + 32), *(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10020D6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020D7A8;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[3];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_10020D7A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
    v4 = sub_10020D3F0(v2, v3, 0);
    v5 = [v4 count];

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v3;
      v12 = 2048;
      v13 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Returning badge count: %ld", &v8, 0x20u);
    }
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

uint64_t sub_10020D8E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v7 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10020D9E0;
    v9[3] = &unk_10051BEB8;
    v12 = &v13;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    dispatch_sync(v7, v9);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_10020D9E0(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = sub_10020C628(*(a1 + 32), *(a1 + 40), 1, *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  sub_10020C908(v2, v3);
}

uint64_t sub_10020DA34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v5 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020DB14;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    LOBYTE(a1) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  return a1 & 1;
}

void sub_10020DB14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
    sub_10020CED8(v2, &__NSDictionary0__struct, v3);
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v3;
      v5 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Removed all badges", &v8, 0x16u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  sub_10020C908(v6, v7);
}

uint64_t sub_10020DC44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v10 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020DD6C;
    block[3] = &unk_10051D310;
    v16 = &v17;
    block[4] = a1;
    v13 = v7;
    v14 = v9;
    v15 = v8;
    dispatch_sync(v10, block);
    LOBYTE(a1) = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  return a1 & 1;
}

void sub_10020DD6C(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = sub_10020C628(*(a1 + 32), *(a1 + 40), 0, *(a1 + 48));
  v2 = [*(a1 + 56) isEqualToString:@"com.apple.AppStore"];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = v4;
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 8));
      notify_post("com.apple.appstored.ASDAppStoreServiceBadgeChangedWithActionResponse");
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = objc_opt_class();
        v11 = 2112;
        v12 = v5;
        v7 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Notifying badge removed", &v9, 0x16u);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);

    sub_10020C908(v8, v4);
  }
}

uint64_t sub_10020DED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v5 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020DFB8;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    LOBYTE(a1) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  return a1 & 1;
}

void sub_10020DFB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v3;
      v5 = *&buf[4];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Migrating badges", buf, 0x16u);
    }

    v6 = +[NSMutableDictionary dictionary];
    v7 = sub_10020E294(v2, v3);
    v8 = [v7 objectForKeyedSubscript:@"badging-version"];
    v9 = v8;
    if (v8 && [v8 intValue] >= 1)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        v12 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Migration not needed", buf, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10020E59C;
      v24 = &unk_10051D338;
      v14 = v6;
      v25 = v14;
      [v7 enumerateKeysAndObjectsUsingBlock:buf];
      sub_10020CED8(v2, v14, v3);
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138543874;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v3;
        v21 = 2114;
        v22 = v14;
        v16 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Badge metrics dictionary migrated to: [%{public}@]", &v17, 0x20u);
      }

      v13 = 1;
      v10 = v25;
    }
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v13;
}

_UNKNOWN **sub_10020E294(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_10020E540();
  if (v3)
  {
    v4 = [[NSData alloc] initWithContentsOfFile:v3];
    if (v4)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = v2;
        v6 = v17;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Load cached badge metadata", buf, 0x16u);
      }

      v15 = 0;
      v7 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v15];
      v8 = v15;
      objc_opt_class();
      v9 = sub_1001C09E4(v7);

      if (v8)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          *buf = 138543874;
          v17 = v13;
          v18 = 2114;
          v19 = v2;
          v20 = 2114;
          v21 = v8;
          v14 = v13;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to deserialize the cached badging data. Error: %{public}@", buf, 0x20u);
        }
      }

      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &off_100549750;
      }
    }

    else
    {
      v11 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to generate the path for badge metadata", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

id sub_10020E540()
{
  v0 = sub_10029BDD4();
  v1 = [v0 stringByAppendingPathComponent:@"badging.plist"];

  return v1;
}

void sub_10020E59C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = sub_1001C09E4(v8);

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"metrics"];

    if (v10)
    {
      *a4 = 1;
    }

    else
    {
      v13[0] = @"metrics";
      v13[1] = @"actionMetrics";
      v14[0] = v9;
      v14[1] = &__NSDictionary0__struct;
      v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
      v12 = [NSMutableDictionary dictionaryWithDictionary:v11];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v7];
    }
  }
}

void *sub_10020E6F8(void *result)
{
  if (result)
  {
    v1 = result;
    result = sub_10020E734(result);
    if (result)
    {
      return (sub_10020E810(v1) ^ 1);
    }
  }

  return result;
}

void *sub_10020E734(void *result)
{
  if (result)
  {
    v1 = [result host];
    v2 = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [v1 UTF8String]);

    if (v2)
    {
      flags = 0;
      if (!SCNetworkReachabilityGetFlags(v2, &flags))
      {
        v3 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *v4 = 0;
          _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Failed to get host reachability flags.", v4, 2u);
        }
      }

      CFRelease(v2);
      return ((flags >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10020E810(void *a1)
{
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v2 = [a1 host];
    v3 = [v2 isEqualToString:@"localhost"];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = [NSMutableURLRequest requestWithURL:a1];
      [v5 setHTTPMethod:@"HEAD"];
      v6 = dispatch_semaphore_create(0);
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x3032000000;
      v18[3] = sub_10020EA80;
      v18[4] = sub_10020EA90;
      v19 = 0;
      v7 = +[NSURLSessionConfiguration defaultSessionConfiguration];
      v8 = [NSSet setWithObject:@"Accept-Language"];
      [v7 set_suppressedAutoAddedHTTPHeaders:v8];
      v9 = [NSURLSession sessionWithConfiguration:v7];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10020EA98;
      v14[3] = &unk_10051D360;
      v16 = &v20;
      v17 = v18;
      v10 = v6;
      v15 = v10;
      v11 = [v9 dataTaskWithRequest:v5 completionHandler:v14];
      [v11 resume];
      v12 = dispatch_time(0, 120000000000);
      dispatch_semaphore_wait(v10, v12);
      v4 = *(v21 + 24);

      _Block_object_dispose(v18, 8);
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_10020EA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020EA80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020EA98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v7;
    if (!v6)
    {
      if ([v7 expectedContentLength] && objc_msgSend(v8, "statusCode") == 200)
      {
        v6 = 0;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSURLErrorDomain, [v8 statusCode], 0);
      }
    }
  }

  else if (!v6)
  {
    v6 = 0;
    if ([v12 expectedContentLength])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10020EC84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10020ED34;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void *sub_10020ED34(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result[5] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return [*(v1 + 16) setObject:0 forKeyedSubscript:?];
  }

  return result;
}

void sub_10020ED5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020EE28;
    block[3] = &unk_10051AEE8;
    v10 = v6;
    v11 = a1;
    v12 = v5;
    dispatch_async(v8, block);
  }
}

void sub_10020EE28(void *a1)
{
  if (a1[4])
  {
    v3 = a1[6];
    v4 = *(a1[5] + 16);

    [v4 setObject:v3 forKeyedSubscript:?];
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "(URLResponseDecoder) Dropping request properties registered for nil task", v6, 2u);
    }
  }
}

void sub_10020EF98(uint64_t a1)
{
  v17 = [*(a1 + 32) object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) task];
  v5 = v4;
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = v6;
    v5 = 0;
    if (v3 && v6)
    {
      v5 = [*(v3 + 16) objectForKeyedSubscript:v6];
      [*(v3 + 16) setObject:0 forKeyedSubscript:v7];
    }

    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = v17;
      v10 = v5;
      v5 = v10;
      if (!v8 || !sub_10033CD18(v10))
      {
        goto LABEL_12;
      }

      v11 = v9;
      v12 = sub_100237C00(v11, @"keybag");
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v15 = sub_10023814C(v11, @"keybag");
        if (!v15)
        {
          goto LABEL_11;
        }

        v16 = v15;
        v13 = [[NSData alloc] initWithBase64EncodedString:v15 options:0];

        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v14 = +[AMSKeybag sharedInstance];
      [v14 importKeybagWithData:v13 error:0];

LABEL_11:
LABEL_12:
    }
  }

  else if (v3 && v4)
  {
    [*(v3 + 16) setObject:0 forKeyedSubscript:v4];
  }
}

void sub_10020F258(void *a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = [v6 copy];
    v5 = v3[5];
    v3[5] = v4;

    objc_sync_exit(v3);
  }
}

void sub_10020F2E8(uint64_t a1, void *a2, void *a3)
{
  self = a2;
  v4 = a3;
  objc_opt_self();
  os_unfair_lock_lock(&unk_1005ABBD0);
  if (!qword_1005ABBC8)
  {
    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    v6 = qword_1005ABBC8;
    qword_1005ABBC8 = v5;
  }

  v7 = self;
  if (self)
  {
    Property = objc_getProperty(self, self, 136, 1);
    v7 = self;
    if (Property)
    {
      [qword_1005ABBC8 removeObjectForKey:{objc_getProperty(self, self, 136, 1)}];
      v7 = self;
    }
  }

  v9 = v7[17];
  v7[17] = v4;
  v10 = v4;

  [qword_1005ABBC8 setObject:self forKey:{objc_getProperty(self, v11, 136, 1)}];
  os_unfair_lock_unlock(&unk_1005ABBD0);
}

id sub_10020F408(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 136, 1);
  }

  return result;
}

void sub_10020F41C(uint64_t a1, void *a2)
{
  self = a2;
  objc_opt_self();
  os_unfair_lock_lock(&unk_1005ABBD0);
  v3 = qword_1005ABBC8;
  if (qword_1005ABBC8)
  {
    if (self)
    {
      Property = objc_getProperty(self, v2, 136, 1);
    }

    else
    {
      Property = 0;
    }

    [v3 removeObjectForKey:Property];
  }

  os_unfair_lock_unlock(&unk_1005ABBD0);
}

id sub_10020F4B4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&unk_1005ABBD0);
  if (qword_1005ABBC8)
  {
    v3 = [qword_1005ABBC8 objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&unk_1005ABBD0);

  return v3;
}

uint64_t sub_10020F538(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id sub_10020F550(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 64, 1);
  }

  return result;
}

id *sub_10020F618(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UPPManifestItem;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_10020F690(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237778(*(a1 + 8), @"assets");
    v2 = sub_100396BF0(v1);
    v3 = sub_1004024C4(v2, &stru_10051D380);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10020F714(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_1001C6BA8([UPPManifestAsset alloc], v2);

  return v3;
}

id sub_10020F76C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10020F690(a1);
    v2 = sub_10036F9FC(v1, &stru_10051D3C0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_10020F7D4(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.bundle-identifier");
    v1 = vars8;
  }

  return a1;
}

id *sub_10020F810(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.bundle-version");
    v1 = vars8;
  }

  return a1;
}

id sub_10020F84C(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return sub_1002379EC(v1, @"metadata.has-messages-extension", 0);
  }

  else
  {
    return 0;
  }
}

id *sub_10020F870(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.kind");
    v1 = vars8;
  }

  return a1;
}

id sub_10020F8AC(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return sub_1002379EC(v1, @"metadata.launch-prohibited", 0);
  }

  else
  {
    return 0;
  }
}

id *sub_10020F8D0(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.platform-identifier");
    v1 = vars8;
  }

  return a1;
}

id *sub_10020F90C(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.subtitle");
    v1 = vars8;
  }

  return a1;
}

id sub_10020F948(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237778(*(a1 + 8), @"thinned-assets");
    v2 = sub_100396BF0(v1);
    v3 = sub_1004024C4(v2, &stru_10051D3E0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10020F9CC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_1001C6BA8([UPPManifestAsset alloc], v2);

  return v3;
}

id sub_10020FA24(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10020F948(a1);
    v2 = sub_10036F9FC(v1, &stru_10051D400);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10020FA8C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10020F690(a1);
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10020FBA8;
    v9 = sub_10020FBB8;
    v10 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10020FBC0;
    v4[3] = &unk_10051D428;
    v4[4] = &v5;
    [v1 enumerateObjectsUsingBlock:v4];
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10020FB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020FBA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020FBC0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = sub_1001C6C9C(v11);
  v7 = [v6 isEqualToString:@"software-receipt"];

  if (v7)
  {
    v8 = sub_1001C6C20(v11);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

id *sub_10020FC5C(id *a1)
{
  if (a1)
  {
    a1 = sub_10023814C(a1[1], @"metadata.title");
    v1 = vars8;
  }

  return a1;
}

void *sub_10020FCA4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = sub_10020FCFC(v3, v2);

  return v4;
}

void *sub_10020FCFC(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ExpensiveNetworkEvaluator;
    v5 = objc_msgSendSuper2(&v9, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = [ASDCellularSettings settingsForIdentity:v4];
      v7 = a1[3];
      a1[3] = v6;
    }
  }

  return a1;
}

uint64_t sub_10020FD94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 logKey];
    v26 = 138412802;
    v27 = v8;
    v28 = 2048;
    v29 = [v5 bytes];
    v30 = 1024;
    v31 = [v5 isAutomatic];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Evaluating download, size = %{bytes}llu automatic = %d", &v26, 0x1Cu);
  }

  v9 = [*(a1 + 24) allowAutomaticDownloads];
  if ([v5 isAutomatic] && (v9 & 1) == 0)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 logKey];
      v26 = 138412290;
      v27 = v11;
      v12 = "[%@]: Implicitly denied - automatic downloads are disabled";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v26, 0xCu);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v13 = [*(a1 + 24) cellularDataPrompt];
  if (![*(a1 + 16) isRoaming])
  {
    if (v13 == 1)
    {
      goto LABEL_16;
    }

    if (v13 == 2)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v5 logKey];
        v26 = 138412290;
        v27 = v16;
        v17 = "[%@]: Implicitly allowed - cellular prompt disabled";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v17, &v26, 0xCu);
      }
    }

    else
    {
      if (![v5 bytes])
      {
        v10 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v11 = [v5 logKey];
        v26 = 138412290;
        v27 = v11;
        v12 = "[%@]: Implicitly denied - download size is unavailable";
        goto LABEL_18;
      }

      v20 = *(a1 + 8);
      if (!v20)
      {
        v21 = sub_1001FB3A4(AMSNetworkConstraints, v6);
        v22 = *(a1 + 8);
        *(a1 + 8) = v21;

        v20 = *(a1 + 8);
        if (!v20)
        {
          v10 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v11 = [v5 logKey];
          v26 = 138412546;
          v27 = v11;
          v28 = 2114;
          v29 = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Implicitly denied - failed to load constraints: %{public}@", &v26, 0x16u);
          goto LABEL_19;
        }
      }

      v23 = [v20 sizeLimitForNetworkType:AMSNetworkTypeCellular];
      v24 = [v5 bytes];
      v10 = ASDLogHandleForCategory();
      v25 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v24 > v23)
      {
        if (!v25)
        {
          goto LABEL_20;
        }

        v11 = [v5 logKey];
        v26 = 138412290;
        v27 = v11;
        v12 = "[%@]: Implicitly denied - exceeded cellular limit";
        goto LABEL_18;
      }

      if (v25)
      {
        v16 = [v5 logKey];
        v26 = 138412290;
        v27 = v16;
        v17 = "[%@]: Implicitly allowed - cellular limit applies";
        goto LABEL_33;
      }
    }

    v18 = 3;
    goto LABEL_21;
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 logKey];
    v26 = 138412290;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Overriding cellular prompt - network is roaming", &v26, 0xCu);
  }

LABEL_16:
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 logKey];
    v26 = 138412290;
    v27 = v11;
    v12 = "[%@]: Implicitly denied - cellular prompt required";
    goto LABEL_18;
  }

LABEL_20:
  v18 = 4;
LABEL_21:

LABEL_22:
  return v18;
}

OSVersion *sub_100210304()
{
  objc_opt_self();
  v0 = [OSVersion alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = OSVersion;
    v0 = objc_msgSendSuper2(&v2, "init");
    if (v0)
    {
      v0->_version.major = 0;
      v0->_version.minor = 0;
      v0->_version.patch = 0;
    }
  }

  return v0;
}

char *sub_10021036C(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  v9 = 0uLL;
  v10 = 0;
  v3 = [NSScanner scannerWithString:a2];
  if ([v3 scanInteger:&v9] && ((objc_msgSend(v3, "scanString:intoString:", @".", 0) & 1) == 0 || objc_msgSend(v3, "scanInteger:", &v9 + 8) && ((objc_msgSend(v3, "scanString:intoString:", @".", 0) & 1) == 0 || objc_msgSend(v3, "scanInteger:", &v10))))
  {
    v11.receiver = v2;
    v11.super_class = OSVersion;
    v4 = objc_msgSendSuper2(&v11, "init", v9, v10);
    if (v4)
    {
      *(v4 + 8) = v7;
      *(v4 + 3) = v8;
    }

    v2 = v4;
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10021054C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = v3[1];
    if (v4 < v5)
    {
LABEL_3:
      a1 = -1;
      goto LABEL_6;
    }

    if (v4 > v5)
    {
      goto LABEL_5;
    }

    v7 = *(a1 + 16);
    v8 = v3[2];
    if (v7 < v8)
    {
      goto LABEL_3;
    }

    if (v7 > v8)
    {
LABEL_5:
      a1 = 1;
      goto LABEL_6;
    }

    v9 = *(a1 + 24);
    v10 = v3[3];
    v11 = v9 < v10;
    v12 = v9 > v10;
    if (v11)
    {
      a1 = -1;
    }

    else
    {
      a1 = v12;
    }
  }

LABEL_6:

  return a1;
}

id *sub_10021068C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 4, a3);
      v9 = objc_alloc_init(TaskQueue);
      v10 = a1[6];
      a1[6] = v9;
    }
  }

  return a1;
}

id sub_100210B44(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = sub_1003D2550(v5);

  v7 = [v6 fileSystemRepresentation];
  if (os_variant_has_internal_content() && [v4 fairplayStatus])
  {
    v8 = [v4 fairplayStatus];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  if (v7)
  {
    sub_100032D64();
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

void sub_1002110D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v25 = [*(a1 + 32) logKey];
      v26 = 138412546;
      v27 = v25;
      v28 = 2114;
      v29[0] = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Arcade fairplay repair bag load failed with error: %{public}@", &v26, 0x16u);
    }
  }

  else
  {
    [v5 doubleForKey:@"arcade-launch-timeout-interval-seconds" defaultValue:3.0];
    v9 = v8;
    if (os_variant_has_internal_content())
    {
      v10 = sub_1003D4C50();

      v11 = v9;
      if (v10)
      {
        v12 = sub_1003D4C50();
        [v12 floatValue];
        v11 = v13;

        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(a1 + 32) logKey];
          v26 = 138412546;
          v27 = v15;
          v28 = 2048;
          *v29 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Using override timeout: %f", &v26, 0x16u);
        }
      }
    }

    else
    {
      v11 = v9;
    }

    v16 = v9 + v9;
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) logKey];
      v26 = 138412546;
      v27 = v18;
      v28 = 2048;
      *v29 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Started arcade fairplay recovery with timeout: %f", &v26, 0x16u);
    }

    v19 = sub_100211418(*(a1 + 32), v5, v11, v16);
    v20 = +[NSDate date];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = *(*(a1 + 32) + 40);

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 32) logKey];
      v26 = 138412802;
      v27 = v24;
      v28 = 1024;
      LODWORD(v29[0]) = v19;
      WORD2(v29[0]) = 2048;
      *(v29 + 6) = v22 - v23;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Arcade fairplay recovery complete with result: %d elapsedTime: %f", &v26, 0x1Cu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100211418(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  if (!a1)
  {
    goto LABEL_101;
  }

  if (os_variant_has_internal_content())
  {
    v8 = [*(a1 + 32) valueForKey:@"forceUpsell"];
    v9 = [v8 BOOLValue];

    v10 = *(a1 + 32);
    if (v9)
    {
      if (([v10 isBackground] & 1) == 0)
      {
        sub_100212460(a1);
        goto LABEL_101;
      }

      v11 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v12 = [a1 logKey];
      *buf = 138412290;
      v115 = v12;
      v13 = "[%@] Not displaying forced upsell dialog for background repair";
      goto LABEL_22;
    }

    v14 = [v10 valueForKey:@"forceRevoke"];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      if ([*(a1 + 32) isBackground])
      {
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [a1 logKey];
          *buf = 138412290;
          v115 = v12;
          v13 = "[%@] Not displaying forced revoked dialog for background repair";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);

          goto LABEL_23;
        }

        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  v16 = +[ACAccountStore ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];
  if (v17)
  {
  }

  else
  {
    v18 = sub_1003D2BDC(*(a1 + 8));

    if (v18)
    {
      if (([*(a1 + 32) isBackground] & 1) == 0)
      {
        v41 = dispatch_get_global_queue(21, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100212A30;
        block[3] = &unk_10051B570;
        block[4] = a1;
        v110 = v7;
        dispatch_async(v41, block);

        goto LABEL_101;
      }

      v11 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v12 = [a1 logKey];
      *buf = 138412290;
      v115 = v12;
      v13 = "[%@] Not showing login dialog for background repair";
      goto LABEL_22;
    }
  }

  v19 = sub_100210B44(ArcadeRepair, *(a1 + 8), *(a1 + 32));
  os_unfair_lock_lock_with_options();
  *(a1 + 16) = v19;
  os_unfair_lock_unlock((a1 + 20));
  if (v19 == -42110)
  {
LABEL_101:
    v87 = 0;
    goto LABEL_102;
  }

  if (v19 == -42584)
  {
    if ([*(a1 + 32) isBackground])
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1 logKey];
        *buf = 138412290;
        v115 = v12;
        v13 = "[%@] Not displaying revoked dialog for background repair";
        goto LABEL_22;
      }

LABEL_23:

      goto LABEL_101;
    }

LABEL_33:
    sub_100212688(a1);
    goto LABEL_101;
  }

  v20 = sub_100227468();
  v21 = [v20 isConnected];

  if ((v21 & 1) == 0)
  {
    v40 = [*(a1 + 32) isBackground];
    if (v19 == -42587)
    {
      if (v40)
      {
        v11 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v12 = [a1 logKey];
        *buf = 138412290;
        v115 = v12;
        v13 = "[%@] Not displaying subscription expired dialog for background repair";
        goto LABEL_22;
      }
    }

    else if (v40)
    {
      v11 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v12 = [a1 logKey];
      *buf = 138412290;
      v115 = v12;
      v13 = "[%@] Not displaying offline dialog for background repair";
      goto LABEL_22;
    }

    v11 = ASDLocalizedString();
    v57 = ASDLocalizedString();
    sub_100213594(a1, v11, v57);

    goto LABEL_23;
  }

  v22 = v7;
  v23 = +[ACAccountStore ams_sharedAccountStore];
  v24 = [v23 ams_activeiTunesAccount];

  v25 = +[ACAccountStore ams_sharedAccountStore];
  v26 = [v25 ams_activeiTunesAccount];
  v27 = [v26 ams_DSID];

  v108 = v24;
  if (v24)
  {
    v28 = sub_100355E58();
    v112 = 0;
    v29 = sub_100357FE0(v28, 1, &v112, a3);
    v30 = COERCE_DOUBLE(v112);

    if (v30 != 0.0 && ASDErrorIsEqual())
    {
      v31 = +[NSDate date];
      [v31 timeIntervalSinceReferenceDate];
      v33 = v32;
      v34 = *(a1 + 40);

      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [a1 logKey];
        *buf = 138412546;
        v115 = v36;
        v116 = 2048;
        v117 = v33 - v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Timeout during fsEntitlements lookup elapsedTime: %f", buf, 0x16u);
      }

      v24 = v108;
      if ([*(a1 + 32) isBackground])
      {
        v37 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [a1 logKey];
          *buf = 138412290;
          v115 = v38;
          v39 = "[%@] Not displaying timeout dialog for background repair";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);

          v24 = v108;
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    v24 = v108;
  }

  else
  {
    v29 = 0;
    v30 = 0.0;
  }

  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    has_internal_content = sub_1003D530C();
    if (has_internal_content)
    {
      has_internal_content = sub_1003D530C();
    }
  }

  v43 = 0.0;
  if (!v24 || ((v29 | has_internal_content) & 1) == 0)
  {
    goto LABEL_89;
  }

  v107 = v22;
  v111 = v30;
  v44 = sub_1002A1944(SbsyncTask, v27, &v111);
  v45 = *&v111;

  v46 = +[NSDate date];
  [v46 timeIntervalSinceReferenceDate];
  v48 = v47 - *(a1 + 40);

  v49 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [a1 logKey];
    *buf = 138412802;
    v115 = v50;
    v116 = 2048;
    v117 = *&v44;
    v118 = 2048;
    v119 = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%@] Repairing subscription with status: %ld elapsedTime: %f", buf, 0x20u);
  }

  if (v48 > a3)
  {
    ASDErrorWithTitleAndMessage();
    v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v43 = 0.0;
    if (v30 == 0.0)
    {
      v22 = v107;
      v24 = v108;
      goto LABEL_89;
    }

    goto LABEL_54;
  }

  v22 = v107;
  v58 = sub_1002A05F8([SbsyncTask alloc], 0, v107);
  v59 = [a1 logKey];
  sub_1002A1DDC(v58, v59);

  if (v58)
  {
    *(v58 + 64) = 1;
    *(v58 + 11) = a3 - v48;
  }

  v60 = *(a1 + 48);
  v122 = v58;
  v61 = [NSArray arrayWithObjects:&v122 count:1];
  if (v60)
  {
    [*(v60 + 8) addOperations:v61 waitUntilFinished:1];
  }

  if (!v58)
  {

    v43 = 0.0;
    goto LABEL_80;
  }

  v30 = COERCE_DOUBLE(objc_getProperty(v58, v62, 32, 1));

  v43 = *(v58 + 12);
  if (v30 == 0.0)
  {
LABEL_80:

    v30 = 0.0;
    v24 = v108;
    goto LABEL_81;
  }

  if ((ASDErrorIsEqual() & 1) == 0 && (ASDErrorIsEqual() & 1) == 0)
  {

LABEL_54:
    v24 = v108;
    if (ASDErrorIsEqual())
    {
      v51 = +[NSDate date];
      [v51 timeIntervalSinceReferenceDate];
      v53 = v52;
      v54 = *(a1 + 40);

      v55 = ASDLogHandleForCategory();
      v22 = v107;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [a1 logKey];
        *buf = 138412546;
        v115 = v56;
        v116 = 2048;
        v117 = v53 - v54;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Timeout during sbsync elapsedTime: %f", buf, 0x16u);

        v24 = v108;
      }

      if ([*(a1 + 32) isBackground])
      {
        v37 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [a1 logKey];
          *buf = 138412290;
          v115 = v38;
          v39 = "[%@] Not showing sbsync timeout dialog for background repair";
          goto LABEL_60;
        }

LABEL_61:

LABEL_75:
        buf[0] = 0;
        goto LABEL_98;
      }

LABEL_74:
      sub_100212D54(a1, v22, a4);
      goto LABEL_75;
    }

    v22 = v107;
LABEL_81:
    if (*&v43 == 1)
    {
      v65 = +[NSDate date];
      [v65 timeIntervalSinceReferenceDate];
      v67 = v66;
      v68 = *(a1 + 40);

      v69 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = [a1 logKey];
        *buf = 138412546;
        v115 = v70;
        v116 = 2048;
        v117 = v67 - v68;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%@] Subscription bag was repaired with elapsedTime: %f", buf, 0x16u);
      }

      v71 = sub_100210B44(ArcadeRepair, *(a1 + 8), 0);
      if (v71)
      {
        v72 = v71;
        v73 = sub_1003D2360(*(a1 + 8));
        v74 = [v73 isEqualToNumber:v27];

        v75 = ASDLogHandleForCategory();
        v76 = v75;
        if (v74)
        {
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            v104 = [a1 logKey];
            sub_1003D2360(*(a1 + 8));
            v105 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v108 ams_DSID];
            v106 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138413058;
            v115 = v104;
            v116 = 2114;
            v117 = v105;
            v118 = 2114;
            v119 = v106;
            v120 = 2048;
            v121 = v72;
            _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "[%@] App was not repaired following subscription repair with app accountID: %{public}@ currentAccountID: %{public}@ status: %ld", buf, 0x2Au);
          }

          v22 = v107;
        }

        else
        {
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v93 = [a1 logKey];
            sub_1003D2360(*(a1 + 8));
            v94 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v108 ams_DSID];
            v95 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v115 = v93;
            v116 = 2114;
            v117 = v94;
            v118 = 2114;
            v119 = v95;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to update SINF from account: %{public}@ to account: %{public}@", buf, 0x20u);
          }

          v96 = [v108 username];
          v97 = sub_1002130C0(a1, v96, v108);

          v22 = v107;
          if (!v97)
          {
            v83 = 0;
LABEL_114:
            v24 = v108;
LABEL_97:
            buf[0] = v83;
            goto LABEL_98;
          }
        }
      }

      v98 = [*(a1 + 32) isBackground];
      v99 = ASDLogHandleForCategory();
      v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
      if (v98)
      {
        if (v100)
        {
          v101 = [a1 logKey];
          *buf = 138412290;
          v115 = v101;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%@] Not attempting to relauch app following sucessful background repair", buf, 0xCu);
        }
      }

      else
      {
        if (v100)
        {
          v102 = [a1 logKey];
          *buf = 138412290;
          v115 = v102;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to relauch app following sucessful repair", buf, 0xCu);
        }

        v99 = [a1 delegate];
        [v99 repair:a1 wantsToRelaunchApplication:*(a1 + 8)];
      }

      v83 = 1;
      goto LABEL_114;
    }

LABEL_89:
    v77 = +[NSDate date];
    [v77 timeIntervalSinceReferenceDate];
    v79 = v78;
    v80 = *(a1 + 40);

    v81 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v92 = [a1 logKey];
      *buf = 138412802;
      v115 = v92;
      v116 = 2048;
      v117 = v43;
      v118 = 2048;
      v119 = v79 - v80;
      _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "[%@] Failed to repair subscription. Launching app store. Status: %ld elapsedTime: %f", buf, 0x20u);

      v24 = v108;
    }

    if ([*(a1 + 32) isBackground])
    {
      v82 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v103 = [a1 logKey];
        *buf = 138412290;
        v115 = v103;
        _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "[%@] Not showing upsell following failed background repair", buf, 0xCu);

        v24 = v108;
      }
    }

    else
    {
      sub_100212460(a1);
    }

    v83 = 0;
    goto LABEL_97;
  }

  v63 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [a1 logKey];
    *buf = 138412546;
    v115 = v64;
    v116 = 2114;
    v117 = v30;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%@] Exiting due to non-recoverable sbsync error: %{public}@", buf, 0x16u);
  }

  buf[0] = 0;
  v22 = v107;
  v24 = v108;
LABEL_98:

  v84 = buf[0];
  if (v84 != 1)
  {
    goto LABEL_101;
  }

  v85 = sub_1003D0F60(*(a1 + 8));

  if (v85)
  {
    v86 = sub_1003D0F60(*(a1 + 8));
    v113 = v86;
    v87 = 1;
    v88 = [NSArray arrayWithObjects:&v113 count:1];
    os_unfair_lock_lock_with_options();
    v89 = [v88 copy];

    v90 = *(a1 + 64);
    *(a1 + 64) = v89;

    os_unfair_lock_unlock((a1 + 20));
  }

  else
  {
    v87 = 1;
  }

LABEL_102:

  return v87;
}