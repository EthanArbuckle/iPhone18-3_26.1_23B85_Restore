void sub_100006DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

BOOL _ValidDCFObjectName(_BYTE *a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      if (_ValidDCFObjectName_fileToken != -1)
      {
        _ValidDCFObjectName_cold_1();
      }

      if (_ValidDCFObjectName_folderToken != -1)
      {
        _ValidDCFObjectName_cold_2();
      }

      v6 = &_ValidDCFObjectName_folder;
      if (!a3)
      {
        v6 = &_ValidDCFObjectName_file;
      }

      v7 = *v6;
      v8 = [NSString stringWithUTF8String:a1];
      v9 = [v8 uppercaseString];

      v3 = v9 && [v9 length] && objc_msgSend(v7, "numberOfMatchesInString:options:range:", v9, 0, 0, objc_msgSend(v9, "length")) != 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void ICGetDimensionsFromImageProperties(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a1;
  v7 = [v14 objectForKeyedSubscript:kCGImagePropertyOrientation];
  if (!v7)
  {
    v8 = [v14 objectForKeyedSubscript:kCGImagePropertyTIFFOrientation];
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = &off_100026988;
    }
  }

  v9 = v7;
  *a2 = v7;
  v10 = [v14 objectForKeyedSubscript:@"RawPixelWidth"];
  if (!v10)
  {
    v10 = [v14 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
    if (!v10)
    {
      v10 = [v14 objectForKeyedSubscript:kCGImagePropertyExifPixelXDimension];
    }
  }

  v11 = v10;
  *a3 = v10;
  v12 = [v14 objectForKeyedSubscript:@"RawPixelHeight"];
  if (!v12)
  {
    v12 = [v14 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
    if (!v12)
    {
      v12 = [v14 objectForKeyedSubscript:kCGImagePropertyExifPixelYDimension];
    }
  }

  v13 = v12;
  *a4 = v13;
}

id ICStandardDateFromString(void *a1)
{
  memset(&v3, 0, sizeof(v3));
  strptime_l([a1 UTF8String], "%Y:%m:%d %H:%M:%S", &v3, 0);
  v1 = [NSDate dateWithTimeIntervalSince1970:mktime(&v3)];

  return v1;
}

void sub_100009CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

id __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t IsSupportedMassStorageCameraVolume(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSMutableArray arrayWithCapacity:0];
  v8 = v7;
  v38 = v5;
  if (!v5)
  {
    v16 = 0;
    if (!a2)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v6)
  {
    v37 = v7;
    [v6 objectForKeyedSubscript:@"cameraClasses"];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v9 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:@"class"];
        v15 = [v14 isEqualToString:@"MSCameraDeviceManager"];

        if (v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v17 = [v13 objectForKeyedSubscript:@"volumeInfo"];

      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_11:
    }

    v17 = &off_100026970;
LABEL_16:
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = v17;
    v19 = [(__CFString *)v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v33 = v6;
      v34 = a2;
      v21 = 0;
      v36 = 0;
      v22 = *v42;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          v24 = v21;
          if (*v42 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v41 + 1) + 8 * i);
          v21 = [v38 stringByAppendingPathComponent:{v25, v33, v34}];

          v26 = [NSURL fileURLWithPath:v21];
          v39 = 0;
          v40 = 0;
          [v26 getResourceValue:&v40 forKey:NSURLIsDirectoryKey error:&v39];
          v27 = v40;
          v28 = v39;
          if (!v28 && [v27 BOOLValue])
          {
            [v37 addObject:v25];
            v36 = 1;
          }
        }

        v20 = [(__CFString *)v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v20);

      v6 = v33;
      a2 = v34;
      v16 = v36;
    }

    else
    {
      v16 = 0;
    }

    v8 = v37;
  }

  else
  {
    __ICOSLogCreate();
    v18 = @"matchPlist";
    if ([@"matchPlist" length] >= 0x15)
    {
      v29 = [@"matchPlist" substringWithRange:{0, 18}];
      v18 = [v29 stringByAppendingString:@".."];
    }

    obj = [NSString stringWithFormat:@"Missing Match Plist"];
    v30 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      IsSupportedMassStorageCameraVolume_cold_1(v18, v30, obj);
    }

    v16 = 0;
  }

  if (a2)
  {
LABEL_35:
    v31 = v8;
    *a2 = v8;
  }

LABEL_36:

  return v16 & 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  __ICOSLogCreate();
  v4 = @"mscamera[xpc]";
  if ([@"mscamera[xpc]" length] >= 0x15)
  {
    v5 = [@"mscamera[xpc]" substringWithRange:{0, 18}];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = [NSString stringWithFormat:@"%@", @"Launching mscamera [xpc]"];
  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v4;
    v9 = v7;
    *buf = 136446466;
    v15 = [(__CFString *)v4 UTF8String];
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MSRemoteCameraDeviceManager);
  [(MSRemoteCameraDeviceManager *)v10 startMSDeviceNotifications];
  v11 = +[NSXPCListener serviceListener];
  [v11 setDelegate:v10];
  [v11 resume];
  v12 = +[NSRunLoop currentRunLoop];
  [v12 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void IsSupportedMassStorageCameraVolume_cold_1(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v8 = 136446466;
  v9 = [a1 UTF8String];
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", &v8, 0x16u);
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  PresentationDimensions = _CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, usePixelAspectRatio, useCleanAperture);
  height = PresentationDimensions.height;
  width = PresentationDimensions.width;
  result.height = height;
  result.width = width;
  return result;
}