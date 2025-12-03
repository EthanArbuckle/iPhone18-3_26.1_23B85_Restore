@interface AKAuthorizationStoreProvider
- (AKDataSeparatedContainerContext)sandboxContainerForPersona:(id)persona;
- (id)storeForAltDSID:(id)d;
@end

@implementation AKAuthorizationStoreProvider

- (id)storeForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = NSHomeDirectory();
  v23 = [(NSString *)v12 stringByAppendingString:@"/Library/Application Support/com.apple.akd/authorization.db"];
  _objc_release(v12);
  v10 = +[AKAccountManager sharedInstance];
  v11 = [(AKAccountManager *)v10 isDataSeparatedAccountForAltDSID:location[0]];
  _objc_release(v10);
  v22 = v11;
  v9 = +[AKAccountManager sharedInstance];
  v21 = [(AKAccountManager *)v9 personaUniqueStringForAltDSID:location[0]];
  _objc_release(v9);
  if ((v11 & 1) != 0 && v21)
  {
    v19 = [(AKAuthorizationStoreProvider *)selfCopy sandboxContainerForPersona:v21];
    v20 = v3;
    if (v19 && v20)
    {
      v14 = [v19 stringByAppendingString:@"/com.apple.akd/authorization.db"];
      v26 = [[AKDataSeparatedAuthorizationStore alloc] initWithContainerPath:v14 withSandboxToken:v20];
      v15 = 1;
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v18 = _AKLogSiwa();
      v17 = 16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        log = v18;
        type = v17;
        sub_10001CEEC(v16);
        _os_log_error_impl(&_mh_execute_header, log, type, "DS:Problem setting up the data container context in preparation of the data separated store", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      v26 = 0;
      v15 = 1;
    }

    sub_100038718(&v19);
  }

  else
  {
    v13 = _AKLogSiwa();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v27, v23);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DS:Creating store located at %@", v27, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v6 = [AKAuthorizationStore alloc];
    v26 = [(AKAuthorizationStore *)v6 initWithPath:v23];
    v15 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  v4 = v26;

  return v4;
}

- (AKDataSeparatedContainerContext)sandboxContainerForPersona:(id)persona
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, persona);
  v31 = 0;
  sub_100038C64(&v33);
  v30 = container_query_create();
  container_query_set_class();
  container_query_operation_set_flags();
  v12 = location[0];
  v3 = location[0];
  uTF8String = [v12 UTF8String];
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v22 = container_copy_sandbox_token();
    if (v22)
    {
      path = container_get_path();
      v17 = 0;
      if (path)
      {
        v16 = [NSURL fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
        path = [v16 path];
        v5 = v17;
        v17 = path;
        _objc_release(v5);
        objc_storeStrong(&v16, 0);
        if (v17)
        {
          objc_storeStrong(&v33, v17);
          v34 = v22;
        }

        v31 = 1;
        v23 = 1;
      }

      else
      {
        oslog = _AKLogSiwa();
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v8 = oslog;
          v9 = v14;
          sub_10001CEEC(v13);
          _os_log_error_impl(&_mh_execute_header, v8, v9, "DS:Problem getting the path from the container", v13, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v31 = 1;
        v23 = 1;
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      v21 = _AKLogSiwa();
      v20 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v10 = v21;
        v11 = v20;
        sub_10001CEEC(v19);
        _os_log_error_impl(&_mh_execute_header, v10, v11, "DS:Problem getting the sandbox token from container manager", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
      free(v22);
      v31 = 1;
      v23 = 1;
    }
  }

  else
  {
    last_error = container_query_get_last_error();
    v26 = container_error_copy_unlocalized_description();
    v25 = _AKLogSiwa();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100038C7C(v35, v26);
      _os_log_error_impl(&_mh_execute_header, v25, v24, "DS:Problem getting the container from container manager, %s", v35, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    free(v26);
    v31 = 1;
    v23 = 1;
  }

  if ((v31 & 1) == 0)
  {
    sub_100038718(&v33);
  }

  objc_storeStrong(location, 0);
  v6 = v34;
  v7 = v33;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

@end