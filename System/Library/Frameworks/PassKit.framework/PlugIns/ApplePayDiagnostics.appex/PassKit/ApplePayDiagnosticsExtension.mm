@interface ApplePayDiagnosticsExtension
- (ApplePayDiagnosticsExtension)init;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation ApplePayDiagnosticsExtension

- (ApplePayDiagnosticsExtension)init
{
  v3.receiver = self;
  v3.super_class = ApplePayDiagnosticsExtension;
  return [(ApplePayDiagnosticsExtension *)&v3 init];
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v23 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v4 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  bOOLValue = [v4 BOOLValue];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ApplePayDiagnosticsExtension: Host Application: %{public}@", &buf, 0xCu);
  }

  if (bOOLValue)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ApplePayDiagnosticsExtension: Sensitive Collection Allowed", &buf, 2u);
    }

    v7 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = sub_100001118;
    v40 = sub_100001128;
    v41 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001130;
    v29[3] = &unk_100004130;
    p_buf = &buf;
    v8 = v7;
    v30 = v8;
    [PKDiagnostics generateDiagnosticsPackageWithPassLibrary:0 completion:v29];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (*(*(&buf + 1) + 40))
    {
      v9 = objc_alloc_init(NSMutableArray);
      startAccessingSecurityScopedResource = [*(*(&buf + 1) + 40) startAccessingSecurityScopedResource];
      v10 = +[NSFileManager defaultManager];
      v11 = *(*(&buf + 1) + 40);
      v28 = 0;
      v21 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:&v28];
      v22 = v28;

      if (v22)
      {
        v12 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          path = [*(*(&buf + 1) + 40) path];
          *v32 = 138543618;
          v33 = path;
          v34 = 2114;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ApplePayDiagnosticsExtension: Error getting contents of %{public}@, error: %{public}@", v32, 0x16u);

          v12 = v6;
        }
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v21;
        v15 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = [DEAttachmentItem attachmentWithPathURL:*(*(&v24 + 1) + 8 * i)];
              [v18 setDeleteOnAttach:&__kCFBooleanTrue];
              if (v18)
              {
                [v9 addObject:v18];
              }
            }

            v15 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v15);
        }
      }

      if (startAccessingSecurityScopedResource)
      {
        [*(*(&buf + 1) + 40) stopAccessingSecurityScopedResource];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 138412546;
        v33 = parametersCopy;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ApplePayDiagnosticsExtension: attachmentsForParameters: %@ %@", v32, 0x16u);
      }

      v14 = [v9 copy];
      v6 = v9;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ApplePayDiagnosticsExtension: Error requesting diagnostics", v32, 2u);
      }

      v14 = &__NSArray0__struct;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

@end