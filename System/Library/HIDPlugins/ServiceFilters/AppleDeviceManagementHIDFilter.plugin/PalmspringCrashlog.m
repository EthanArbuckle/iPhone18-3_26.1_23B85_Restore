@interface PalmspringCrashlog
+ (BOOL)writeToDirectory:(id)a3 crashlogData:(id)a4 options:(unint64_t)a5 error:(id *)a6;
+ (OS_os_log)log;
- (BOOL)writeToDirectory:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (PalmspringCrashlog)initWithInfoEntry:(id)a3 data:(id)a4;
- (id)description;
@end

@implementation PalmspringCrashlog

+ (OS_os_log)log
{
  if (qword_11088 != -1)
  {
    sub_58B4();
  }

  v3 = qword_11080;

  return v3;
}

- (PalmspringCrashlog)initWithInfoEntry:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = PalmspringCrashlog;
  v9 = [(PalmspringCrashlog *)&v30 init];
  if (v9)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_58C8(a2, v10);
    }

    if ([v8 length] > 7)
    {
      v13 = [v8 bytes];
      v14 = [objc_opt_class() log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_595C(v7, v13, v14);
      }

      v15 = [v8 length] - 8;
      v16 = [v8 length];
      if (v16 == [v7 headerAndRawBlobSize] && v15 == *(v13 + 1))
      {
        v11 = [v8 subdataWithRange:{8, v15}];
        v17 = crc16_compute([v11 bytes], [v11 length]);
        if (v17 == v13[3])
        {
          v18 = [v11 copy];
          data = v9->_data;
          v9->_data = v18;

          v20 = [v7 copy];
          info = v9->_info;
          v9->_info = v20;

          v9->_blobVersion = *v13;
          v12 = v9;
LABEL_17:

          goto LABEL_18;
        }

        v23 = v17;
        v24 = [objc_opt_class() log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v28 = [v7 name];
          v29 = v13[3];
          *buf = 67109634;
          *v32 = v23;
          *&v32[4] = 2112;
          *&v32[6] = v28;
          v33 = 1024;
          LODWORD(v34) = v29;
          _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "CRC (0x%04x) of crashlog %@ did not match CRC in header (0x%04x)", buf, 0x18u);
        }
      }

      else
      {
        v11 = [objc_opt_class() log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v25 = [v8 length];
          v26 = [v7 headerAndRawBlobSize];
          v27 = *(v13 + 1);
          *buf = 134218752;
          *v32 = v25;
          *&v32[8] = 1024;
          *&v32[10] = v26;
          v33 = 2048;
          v34 = v15;
          v35 = 1024;
          v36 = v27;
          _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Size of crashlog did not match expected size: header+blob (expected: %ld / actual: %d), blob (expected: %ld, actual %d)", buf, 0x22u);
        }
      }
    }

    else
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_5A20(v7, v11);
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (BOOL)writeToDirectory:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(PalmspringCrashlog *)self data];
  LOBYTE(a5) = [PalmspringCrashlog writeToDirectory:v8 crashlogData:v9 options:a4 error:a5];

  return a5;
}

+ (BOOL)writeToDirectory:(id)a3 crashlogData:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = v26;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = a5;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%@, directory %@, options %lu", buf, 0x20u);
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:a6];

  if (v15)
  {
    v16 = objc_alloc_init(NSDateFormatter);
    [v16 setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
    v17 = +[NSDate date];
    v18 = [v16 stringFromDate:v17];
    v19 = +[PalmspringCrashlog crashlogPathExtension];
    v20 = [NSString stringWithFormat:@"%@/PalmspringCrashlog_%@.%@", v11, v18, v19];

    v21 = [v12 writeToFile:v20 options:a5 error:a6];
    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"failed";
      if (v21)
      {
        v23 = @"succeeded";
      }

      if (a6)
      {
        v24 = *a6;
      }

      else
      {
        v24 = 0;
      }

      *buf = 138413058;
      v28 = a1;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Writing crashlog %@ to %@ %@, error %@", buf, 0x2Au);
    }
  }

  else
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_5AE0(v11, a6);
    }

    LOBYTE(v21) = 0;
  }

  return v21;
}

- (id)description
{
  v3 = [(PalmspringCrashlog *)self info];
  v4 = [NSString stringWithFormat:@"(%@, Palmspring Crashlog Header: [blob version: %d])", v3, [(PalmspringCrashlog *)self blobVersion]];

  return v4;
}

@end