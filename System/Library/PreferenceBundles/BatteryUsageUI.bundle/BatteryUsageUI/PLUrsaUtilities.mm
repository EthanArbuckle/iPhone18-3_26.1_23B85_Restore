@interface PLUrsaUtilities
+ (id)createMetadataFile:(id)file buildVersion:(id)version;
+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path;
@end

@implementation PLUrsaUtilities

+ (id)createMetadataFile:(id)file buildVersion:(id)version
{
  fileCopy = file;
  versionCopy = version;
  if (![fileCopy length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_113090();
    }

    goto LABEL_20;
  }

  if (![versionCopy length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_11305C();
    }

LABEL_20:
    path3 = 0;
    goto LABEL_37;
  }

  v7 = [NSURL fileURLWithPath:@"/var/mobile/Library/Ursa" isDirectory:1];
  v38 = NSFilePosixPermissions;
  v8 = [NSNumber numberWithUnsignedShort:511];
  v39 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 fileExistsAtPath:@"/var/mobile/Library/Ursa"];

  if ((v11 & 1) == 0)
  {
    v12 = +[NSFileManager defaultManager];
    v33 = 0;
    v13 = [v12 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v9 error:&v33];
    v14 = v33;

    v15 = PLLogUrsaUtilities();
    v16 = v15;
    if (!v13 || v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_112E80(v14, v16);
      }

      path3 = 0;
      goto LABEL_36;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_112EF8(v16);
    }
  }

  v16 = [v7 URLByAppendingPathComponent:@"power_exceptions.json" isDirectory:0];
  if (v16)
  {
    v17 = +[NSFileManager defaultManager];
    [v17 removeItemAtURL:v16 error:0];

    v36[0] = @"process";
    v36[1] = @"build";
    v37[0] = fileCopy;
    v37[1] = versionCopy;
    v18 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v32 = 0;
    v19 = [NSJSONSerialization dataWithJSONObject:v18 options:0 error:&v32];
    v14 = v32;
    if (v14 || !v19)
    {
      v29 = PLLogUrsaUtilities();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_112FB0(v14, v29);
      }

      path3 = 0;
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      path = [v16 path];
      v22 = v9;
      v23 = path;
      v31 = v22;
      v24 = [v20 createFileAtPath:path contents:v19 attributes:?];

      v25 = PLLogUrsaUtilities();
      v26 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v16 path];
          *buf = 138543362;
          v35 = path2;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "PLUrsaUtilities: wrote metadata to: %{public}@", buf, 0xCu);
        }

        path3 = [v16 path];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_112F7C();
        }

        path3 = 0;
      }

      v9 = v31;
    }
  }

  else
  {
    v18 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_113028();
    }

    v14 = 0;
    path3 = 0;
  }

LABEL_36:
LABEL_37:

  return path3;
}

+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path
{
  paramsCopy = params;
  nameCopy = name;
  timeCopy = time;
  pathCopy = path;
  if (!paramsCopy || ![paramsCopy count])
  {
    v14 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_11322C();
    }

    goto LABEL_31;
  }

  if (!nameCopy || ![nameCopy length])
  {
    v14 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1131F8();
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  if (!timeCopy)
  {
    v12 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1130C4();
    }

    timeCopy = +[NSDate date];
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new?"];
  v14 = v13;
  if (v13)
  {
    v37 = v13;
    v42 = nameCopy;
    v39 = paramsCopy;
    v15 = [paramsCopy mutableCopy];
    v16 = v15;
    if (pathCopy)
    {
      [v15 setObject:pathCopy forKeyedSubscript:@"Attachments"];
      [v16 setObject:@"1" forKeyedSubscript:@"DeleteOnAttach"];
    }

    v38 = pathCopy;
    v17 = objc_alloc_init(NSDateFormatter);
    [v17 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v36 = v17;
    v35 = [v17 stringFromDate:timeCopy];
    [v16 setObject:? forKeyedSubscript:?];
    v18 = +[NSMutableArray array];
    v40 = objc_alloc_init(NSDateFormatter);
    [v40 setDateFormat:@"MM/dd HH:mm"];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v41 = v18;
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v25 = [v19 objectForKeyedSubscript:v24];
          if ([v25 containsString:@"$proc"])
          {
            v26 = [v25 stringByReplacingOccurrencesOfString:@"$proc" withString:v42];

            v25 = v26;
          }

          if ([v25 containsString:@"$time"])
          {
            v27 = [v40 stringFromDate:timeCopy];
            v28 = [v25 stringByReplacingOccurrencesOfString:@"$time" withString:v27];

            v25 = v28;
            v18 = v41;
          }

          v29 = [NSURLQueryItem queryItemWithName:v24 value:v25];
          [v18 addObject:v29];
        }

        v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v21);
    }

    v14 = v37;
    [v37 setQueryItems:v18];
    v30 = [v37 URL];
    v31 = PLLogUrsaUtilities();
    v32 = v31;
    if (v30)
    {
      pathCopy = v38;
      paramsCopy = v39;
      nameCopy = v42;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1130F8(v30, v32);
      }

      v33 = v30;
    }

    else
    {
      pathCopy = v38;
      paramsCopy = v39;
      nameCopy = v42;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_113190();
      }
    }
  }

  else
  {
    v19 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1131C4();
    }

    v30 = 0;
  }

LABEL_32:

  return v30;
}

@end