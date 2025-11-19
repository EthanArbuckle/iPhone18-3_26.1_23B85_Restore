@interface HeimCredDecoder
+ (id)allowedClasses;
+ (id)copyCF2NS:(void *)a3;
+ (id)copyUnarchiveObjectWithFileSecureEncoding:(id)a3;
+ (void)archiveRootObject:(id)a3 toFile:(id)a4;
+ (void)copyNS2CF:(id)a3;
@end

@implementation HeimCredDecoder

+ (void)copyNS2CF:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [location[0] copy];
      v16 = 0;
      objc_storeStrong(&v16, v7);
      v6 = v16;
      objc_storeStrong(&v16, 0);
      v15 = v6;

      v13 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *&v12.byte0 = 0;
        *&v12.byte8 = 0;
        [location[0] getUUIDBytes:?];
        if (uuid_compare(&v12.byte0, byte_100028CE8))
        {
          if (uuid_compare(&v12.byte0, byte_100028CF8))
          {
            v15 = CFUUIDCreateFromUUIDBytes(0, v12);
          }

          else
          {
            v15 = kCFBooleanTrue;
          }

          v13 = 1;
        }

        else
        {
          v15 = kCFBooleanFalse;
          v13 = 1;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [location[0] count];
          Mutable = CFArrayCreateMutable(0, v10, &kCFTypeArrayCallBacks);
          if (Mutable)
          {
            for (i = 0; i < v10; ++i)
            {
              v4 = [location[0] objectAtIndex:i];
              v5 = [HeimCredDecoder copyNS2CF:?];

              if (v5)
              {
                CFArrayAppendValue(Mutable, v5);
                CFRelease(v5);
              }
            }

            v15 = Mutable;
            v13 = 1;
          }

          else
          {
            v15 = 0;
            v13 = 1;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = CFDictionaryCreateMutable(0, [location[0] count], &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v8)
            {
              [location[0] enumerateKeysAndObjectsUsingBlock:?];
              v15 = v8;
            }

            else
            {
              v15 = 0;
            }

            v13 = 1;
          }

          else
          {
            v15 = 0;
            v13 = 1;
          }
        }
      }
    }
  }

  else
  {
    v15 = 0;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  return v15;
}

+ (id)copyCF2NS:(void *)a3
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  if (!a3)
  {
    return 0;
  }

  v16 = CFGetTypeID(v17);
  if (v16 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(v17))
    {
      return [[NSUUID alloc] initWithUUIDBytes:byte_100028CF8];
    }

    else
    {
      return [[NSUUID alloc] initWithUUIDBytes:byte_100028CE8];
    }
  }

  else if (v16 == CFStringGetTypeID())
  {
    Copy = CFStringCreateCopy(0, v17);
    v3 = Copy;
    return Copy;
  }

  else if (v16 == CFDataGetTypeID())
  {
    v6 = CFDataCreateCopy(0, v17);
    v4 = v6;
    return v6;
  }

  else if (v16 == CFNumberGetTypeID() || v16 == CFDateGetTypeID())
  {
    return v17;
  }

  else if (v16 == CFUUIDGetTypeID())
  {
    v15 = 0;
    v15 = CFUUIDGetUUIDBytes(v17);
    return [[NSUUID alloc] initWithUUIDBytes:&v15];
  }

  else if (v16 == CFArrayGetTypeID())
  {
    i = 0;
    Count = CFArrayGetCount(v17);
    v12 = [[NSMutableArray alloc] initWithCapacity:Count];
    if (v12)
    {
      for (i = 0; i < Count; ++i)
      {
        location = [HeimCredDecoder copyCF2NS:CFArrayGetValueAtIndex(v17, i)];
        if (location)
        {
          [v12 addObject:location];
        }

        objc_storeStrong(&location, 0);
      }

      v20 = v12;
      v11 = 1;
    }

    else
    {
      v20 = 0;
      v11 = 1;
    }

    objc_storeStrong(&v12, 0);
  }

  else if (v16 == CFDictionaryGetTypeID())
  {
    v9 = CFDictionaryGetCount(v17);
    context = [[NSMutableDictionary alloc] initWithCapacity:v9];
    if (context)
    {
      CFDictionaryApplyFunction(v17, sub_100018118, context);
      v20 = context;
    }

    else
    {
      v20 = 0;
    }

    v11 = 1;
    objc_storeStrong(&context, 0);
  }

  else
  {
    return 0;
  }

  return v20;
}

+ (id)copyUnarchiveObjectWithFileSecureEncoding:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  context = objc_autoreleasePoolPush();
  v12 = 0;
  v11 = [NSData dataWithContentsOfFile:location[0] options:1 error:0];
  if (v11)
  {
    v3 = off_100028D48(v11);
    v4 = v12;
    v12 = v3;

    if (v12)
    {
      v9 = [[HeimCredDecoder alloc] initForReadingFromData:v12 error:0];
      if (v9)
      {
        v6 = +[HeimCredDecoder allowedClasses];
        v8 = [v9 decodeObjectOfClasses:? forKey:?];

        [v9 finishDecoding];
        v14 = v8;
        v10 = 1;
        objc_storeStrong(&v8, 0);
      }

      else
      {
        v14 = 0;
        v10 = 1;
      }

      objc_storeStrong(&v9, 0);
    }

    else
    {
      v14 = 0;
      v10 = 1;
    }
  }

  else
  {
    v14 = 0;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(context);
  objc_storeStrong(location, 0);
  return v14;
}

+ (void)archiveRootObject:(id)a3 toFile:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  context = objc_autoreleasePoolPush();
  v33 = sub_10000E120();
  v32 = 1;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    log = v33;
    type = v32;
    sub_100001A10(v31);
    _os_log_impl(&_mh_execute_header, log, type, "Save credentials to disk", v31, 2u);
  }

  objc_storeStrong(&v33, 0);
  v30 = 0;
  v28 = 0;
  v11 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v28];
  objc_storeStrong(&v30, v28);
  v29 = v11;
  if (v11)
  {
    v24 = off_100028D40(v29);
    if (v24)
    {
      v36 = NSFilePosixPermissions;
      v37 = &off_100026390;
      v20 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v6 = +[NSFileManager defaultManager];
      v7 = [(NSFileManager *)v6 createFileAtPath:v34 contents:v24 attributes:v20];

      v19 = v7;
      if ((v7 & 1) == 0)
      {
        oslog = sub_10000E120();
        v17 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v4 = oslog;
          v5 = v17;
          sub_100001A10(v16);
          _os_log_error_impl(&_mh_execute_header, v4, v5, "Error writing credentials to disk", v16, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v20, 0);
      v25 = 0;
    }

    else
    {
      v23 = sub_10000E120();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v9 = v23;
        v10 = v22;
        sub_100001A10(v21);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "Failed to wrap credentials", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v8 = +[NSFileManager defaultManager];
      [(NSFileManager *)v8 removeItemAtPath:v34 error:0];

      v25 = 1;
    }

    objc_storeStrong(&v24, 0);
  }

  else
  {
    v27 = sub_10000E120();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100018868(v38, v30);
      _os_log_error_impl(&_mh_execute_header, v27, v26, "Failed to archive credentials: %{public}@", v38, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_autoreleasePoolPop(context);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

+ (id)allowedClasses
{
  v5 = &unk_100028ED0;
  location = 0;
  objc_storeStrong(&location, &stru_1000251F0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100028ED8;

  return v2;
}

@end