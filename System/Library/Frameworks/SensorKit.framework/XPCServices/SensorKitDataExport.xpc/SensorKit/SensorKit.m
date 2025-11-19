NSURL *sub_100001750()
{
  objc_opt_self();
  objc_opt_self();
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([(NSArray *)v0 count])
  {
    v1 = [NSURL fileURLWithPath:[(NSArray *)v0 firstObject] isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return [NSURL fileURLWithPath:@"com.apple.SensorKitDataExport" isDirectory:1 relativeToURL:v1];
}

void sub_100001944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001E54(uint64_t a1)
{
  v2 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Client connection requesting export has invalidated. Cancelling Export", v4, 2u);
  }

  return [*(a1 + 32) cancelWithReply:&stru_100010320];
}

SRSensorReader *__cdecl sub_1000021B8(id a1, NSString *a2)
{
  v3 = [SRSensorReader alloc];

  return [v3 initWithSensor:a2];
}

void sub_100002A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_100002A44(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 40));
  v7 = Weak;
  if (a3)
  {

    return [Weak replyWithError:a3];
  }

  else
  {
    [Weak setDevices:{objc_msgSend(a2, "mutableCopy")}];
    [v7 setFirstSample:1];
    v7[24] = 1;
    v9 = [objc_msgSend(v7 "devices")];
    if (!v9)
    {
      v9 = +[SRDevice currentDevice];
    }

    [*(*(a1 + 32) + 48) setDevice:v9];
    v10 = [v7 currentReader];
    v11 = *(*(a1 + 32) + 48);

    return [v10 fetch:v11];
  }
}

uint64_t sub_1000037BC()
{
  if (!qword_100016918)
  {
    qword_100016918 = _sl_dlopen();
  }

  return qword_100016918;
}

uint64_t sub_10000388C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100016918 = result;
  return result;
}

Class sub_10000391C(uint64_t a1)
{
  if (sub_1000037BC())
  {
    result = objc_getClass("SRStreamBlockSample");
    *(*(*(a1 + 32) + 8) + 40) = result;
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      qword_100016928 = *(*(*(a1 + 32) + 8) + 40);
      return result;
    }

    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"SRDataExportService.m", 35, @"Unable to find class %s", "SRStreamBlockSample"];
  }

  else
  {
    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"SRDataExportService.m", 34, @"%s", 0];
  }

  __break(1u);
  return result;
}

void *sub_100004C80(void *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = SRCompressedOutputStream;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = a3;
    v5[7] = 0;
    v7 = compression_encode_scratch_buffer_size(*(v5 + 2));
    v6[8] = NSRoundUpToMultipleOfPageSize(10 * v7);
    [+[NSData data](NSData writeToURL:"writeToURL:atomically:" atomically:a2, 1];
    v12 = 0;
    v8 = [NSFileHandle fileHandleForWritingToURL:a2 error:&v12];
    objc_setProperty_nonatomic(v6, v9, v8, 72);
    if (!v6[9])
    {
      v10 = qword_100016930;
      if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = a2;
        v16 = 2114;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error creating writing file handle at %{public}@ because %{public}@", buf, 0x16u);
      }

      return 0;
    }
  }

  return v6;
}

void *sub_100004E68(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[10];
    if (!result)
    {
      result = [[NSMutableData alloc] initWithCapacity:v1[8]];
      v1[10] = result;
    }
  }

  return result;
}

BOOL sub_100005104(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v6 = 0;
    [*(a1 + 72) writeData:+[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData error:{"dataWithBytesNoCopy:length:freeWhenDone:", objc_msgSend(sub_100004E68(a1), "bytes"), a2, 0), &v6}];
    v3 = v6;
    v2 = v6 == 0;
    if (v6)
    {
      v4 = qword_100016930;
      if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error writing to output file. %{public}@", buf, 0xCu);
      }
    }
  }

  return v2;
}

id sub_100006144(void *a1)
{
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v12 + 1) + 8 * v6) doubleValue];
        v8 = v7;
        v9 = [NSNumber numberWithDouble:?];
        if (fabs(v8) == INFINITY)
        {
          v10 = @"inf";
        }

        else
        {
          v10 = v9;
        }

        [v2 addObject:v10];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

void start()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  [[[SRDataExportService alloc] initWithQueue:dispatch_queue_create("com.apple.SensorKitDataExport.main" resume];
  dispatch_main();
}