@interface PLUrsaUtilities
+ (id)createMetadataFile:(id)a3 buildVersion:(id)a4;
+ (id)generateTTRURLWithRadarParams:(id)a3 procName:(id)a4 violationTime:(id)a5 metadataPath:(id)a6;
@end

@implementation PLUrsaUtilities

+ (id)createMetadataFile:(id)a3 buildVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_113090();
    }

    goto LABEL_20;
  }

  if (![v6 length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_11305C();
    }

LABEL_20:
    v28 = 0;
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

      v28 = 0;
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
    v37[0] = v5;
    v37[1] = v6;
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

      v28 = 0;
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      v21 = [v16 path];
      v22 = v9;
      v23 = v21;
      v31 = v22;
      v24 = [v20 createFileAtPath:v21 contents:v19 attributes:?];

      v25 = PLLogUrsaUtilities();
      v26 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v16 path];
          *buf = 138543362;
          v35 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "PLUrsaUtilities: wrote metadata to: %{public}@", buf, 0xCu);
        }

        v28 = [v16 path];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_112F7C();
        }

        v28 = 0;
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
    v28 = 0;
  }

LABEL_36:
LABEL_37:

  return v28;
}

+ (id)generateTTRURLWithRadarParams:(id)a3 procName:(id)a4 violationTime:(id)a5 metadataPath:(id)a6
{
  v9 = a3;
  v10 = a4;
  v43 = a5;
  v11 = a6;
  if (!v9 || ![v9 count])
  {
    v14 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_11322C();
    }

    goto LABEL_31;
  }

  if (!v10 || ![v10 length])
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

  if (!v43)
  {
    v12 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1130C4();
    }

    v43 = +[NSDate date];
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new?"];
  v14 = v13;
  if (v13)
  {
    v37 = v13;
    v42 = v10;
    v39 = v9;
    v15 = [v9 mutableCopy];
    v16 = v15;
    if (v11)
    {
      [v15 setObject:v11 forKeyedSubscript:@"Attachments"];
      [v16 setObject:@"1" forKeyedSubscript:@"DeleteOnAttach"];
    }

    v38 = v11;
    v17 = objc_alloc_init(NSDateFormatter);
    [v17 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v36 = v17;
    v35 = [v17 stringFromDate:v43];
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
            v27 = [v40 stringFromDate:v43];
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
      v11 = v38;
      v9 = v39;
      v10 = v42;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1130F8(v30, v32);
      }

      v33 = v30;
    }

    else
    {
      v11 = v38;
      v9 = v39;
      v10 = v42;
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