uint64_t sub_177A58(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return (*(a1[4] + 16))(a1[4], v4, a1[5], a1[6]);
}

void sub_177A94(id a1, const void *a2, unint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 33 * *a2;
    v5 = &qword_2A46B8;
    do
    {
      v6 = *v5++;
      *a3++ = v6 + v4;
      --a4;
    }

    while (a4);
  }
}

void sub_177AC0(id a1, const void *a2, unint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *(a2 + 1);
    v6 = *a2 + 2 * v5;
    do
    {
      v7 = qword_2A46B8[v4];
      a3[v4] = v7;
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v9 = i + v4;
          do
          {
            v10 = v9 < v5;
            v9 -= v5;
          }

          while (!v10);
          v7 = 33 * v7 + *(v6 + 2 * v9);
        }

        a3[v4] = v7;
      }

      ++v4;
    }

    while (v4 != a4);
  }
}

void sub_178084(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:*(*(a1 + 32) + 24)];
  [v2 setPredicate:*(*(a1 + 32) + 32)];
  if (*(*(a1 + 32) + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setResultType:v3];
  if (*(*(a1 + 32) + 40))
  {
    v13 = *(*(a1 + 32) + 40);
    v4 = [NSArray arrayWithObjects:&v13 count:1];
    [v2 setPropertiesToFetch:v4];
  }

  else
  {
    [v2 setPropertiesToFetch:0];
  }

  v5 = *(a1 + 40);
  v12 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v12];
  v7 = v12;
  if (*(*(a1 + 32) + 40))
  {
    v8 = [v6 valueForKey:?];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  if (objc_opt_respondsToSelector())
  {
    v11 = [[BCManagedObjectIDChanges alloc] initWithAdded:v9 updated:0 deleted:0 context:*(a1 + 40)];
    [WeakRetained managedObjectBackgroundMonitor:*(a1 + 32) fetchNotify:v11];
  }

  [*(*(a1 + 32) + 80) addObjectsFromArray:v9];
  dispatch_resume(*(*(a1 + 32) + 56));
}

uint64_t sub_178A24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_178A3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_178C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_178C98(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 72) removeObjectForKey:a1[5]];
  v5 = [*(*(a1[6] + 8) + 40) deletedObjects];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *(a1[4] + 80);
    v8 = [*(*(a1[6] + 8) + 40) deletedObjects];
    v9 = [NSSet setWithArray:v8];
    [v7 minusSet:v9];
  }

  v10 = [*(*(a1[6] + 8) + 40) addedObjects];
  v11 = [v10 count];

  if (v11)
  {
    v12 = *(a1[4] + 80);
    v13 = [*(*(a1[6] + 8) + 40) addedObjects];
    [v12 addObjectsFromArray:v13];
  }
}

uint64_t sub_178EDC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

id BCGetUnsafeAppDelegateReference()
{
  if (!+[NSThread isMainThread])
  {
    v0 = BCIMLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1ED310(v0);
    }
  }

  v1 = qword_346188;

  return v1;
}

id sub_17C344(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 reset];

  v3 = *(a1 + 32);

  return [v3 performFetch:0];
}

void sub_17C8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17C920(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) storedData];
  if (v3)
  {
    v4 = [WeakRetained cachePath];
    v5 = [v4 stringByAppendingPathComponent:v3];

    if (v5)
    {
      v6 = +[NSFileManager defaultManager];
      v7 = [v6 fileExistsAtPath:v5];

      if (v7)
      {
        [WeakRetained _removeFileAtPath:v5];
        v8 = [v5 stringByAppendingPathComponent:@"path"];
        [WeakRetained _removeFileAtPath:v8];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  (*(v9 + 16))(v9, v10);

  kdebug_trace();
}

void sub_17CB8C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_17CEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17CEF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = BICCacheStatsOperationDiskReadQueueEnd[0];
  v5 = *(a1 + 32);
  v6 = a3;
  [BICCacheStats logOperation:v4 forRequest:v5];
  v7 = [v6 priority];

  if (v7 == &dword_0 + 1)
  {
    v8 = 0;
  }

  else
  {
    [BICCacheStats logOperation:BICCacheStatsOperationDiskReadStart[0] forRequest:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v10 = [WeakRetained _readCachedImageFromPath:*(a1 + 40)];
    if (v10)
    {
      v11 = [BICImage imageWithCGImage:v10];
      [*(a1 + 48) setImage:v11];

      v20 = *(a1 + 48);
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      v12 = [*(a1 + 40) stringByAppendingPathExtension:@"path"];
      v13 = [NSData dataWithContentsOfFile:v12];
      if (v13)
      {
        v19 = 0;
        v14 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v19];
        v15 = v19;
        [*(a1 + 48) setStackOutline:{objc_msgSend(v14, "CGPath")}];
        if (v15)
        {
          v16 = BCImageCacheLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1ED3BC();
          }
        }
      }
    }

    else
    {
      v12 = BCImageCacheLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1ED424();
      }

      v8 = 0;
    }

    [BICCacheStats logOperation:BICCacheStatsOperationDiskReadEnd[0] forRequest:*(a1 + 32)];
    [BICCacheStats logDescribedImage:*(a1 + 48) withComment:@"DiskDataStoreLoadImage"];
  }

  v17 = objc_retainBlock(*(a1 + 56));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v8);
  }
}

void sub_17D7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17D80C(uint64_t a1)
{
  v2 = (a1 + 32);
  [BICCacheStats logOperation:BICCacheStatsOperationDiskWriteQueueEnd[0] forRequest:*(a1 + 32)];
  if ([*v2 priority] == &dword_0 + 1)
  {
    v3 = [*(a1 + 40) writeWorkQueue];
    if ([v3 hasLargeBacklog])
    {
      if (![*(a1 + 48) processingOptions])
      {

LABEL_35:
        v47 = BCImageCacheLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          sub_1ED69C();
        }

        [*(a1 + 64) addObject:*(a1 + 56)];
        dispatch_group_leave(*(a1 + 72));
        return;
      }

      v4 = [*(a1 + 48) isGeneric];

      if (v4)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  [BICCacheStats logOperation:BICCacheStatsOperationDiskWriteStart[0] forRequest:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v6 = [WeakRetained cachePath];
  v7 = [*(a1 + 48) identifier];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = +[NSFileManager defaultManager];
  LOBYTE(v7) = [v9 fileExistsAtPath:v8];

  if ((v7 & 1) == 0)
  {
    v10 = +[NSFileManager defaultManager];
    v63 = 0;
    v11 = [v10 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v63];
    v12 = v63;

    if ((v11 & 1) == 0)
    {
      v13 = BCImageCacheLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1ED4FC();
      }
    }
  }

  if (([*v2 requestOptions] & 0x100) != 0)
  {
    v15 = 1;
  }

  else
  {
    v14 = [WeakRetained writeWorkQueue];
    v15 = [v14 hasLargeBacklog];
  }

  v16 = [*(a1 + 56) entryLocation];
  v17 = [*(a1 + 48) image];
  CGImageGetWidth([v17 CGImage]);

  v18 = [*(a1 + 48) image];
  CGImageGetHeight([v18 CGImage]);

  v19 = [*(a1 + 48) processingOptions];
  v20 = @"jpg";
  if ((v15 & 1) == 0 && [*(a1 + 40) deviceSupportsHEIC])
  {
    v20 = @"heic";
  }

  if (v19)
  {
    if ([WeakRetained deviceSupportsASTC])
    {
      v20 = @"astc";
    }

    else
    {
      v20 = @"png";
    }
  }

  v21 = [v16 stringByAppendingPathExtension:v20];
  v22 = [*(a1 + 48) identifier];
  v23 = [v22 stringByAppendingPathComponent:v21];

  v24 = [*(a1 + 48) image];

  v25 = *(a1 + 48);
  v59 = v23;
  if (v24)
  {
    v26 = [v25 image];
    v27 = [WeakRetained _writeCachedImage:objc_msgSend(v26 unprocessed:"CGImage") toRelativePath:{v19 == 0, v23}];
    [*(a1 + 56) setStoredData:v27];

    [*(a1 + 48) imageSize];
    v29 = v28;
    v31 = v30;
    [*(a1 + 32) imageSize];
    v33 = 0;
    if (v29 == v34 && v31 == v32)
    {
      v35 = [*(a1 + 48) processingOptions];
      v33 = v35 == [*(a1 + 32) processingOptions];
    }

    [*(a1 + 56) setPermanent:{objc_msgSend(*(a1 + 32), "persistanceOptions") & v33 & 1}];
    goto LABEL_45;
  }

  v36 = [v25 filePath];

  if (v36)
  {
    v37 = [v8 stringByAppendingPathComponent:v21];
    v38 = [*(a1 + 48) filePath];
    v39 = [v38 isEqualToString:v37];

    if (v39)
    {
LABEL_44:
      [*(a1 + 56) setStoredData:v59];

      goto LABEL_45;
    }

    v40 = v21;
    v41 = v8;
    [WeakRetained _removeFileAtPath:v37];
    v42 = [*(a1 + 48) persistanceOptions];
    v43 = +[NSFileManager defaultManager];
    v44 = [*(a1 + 48) filePath];
    if (v42)
    {
      v61 = 0;
      [v43 createSymbolicLinkAtPath:v37 withDestinationPath:v44 error:&v61];
      v45 = v61;

      if (v45)
      {
        v46 = BCImageCacheLog();
        v8 = v41;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1ED564();
        }

        goto LABEL_41;
      }
    }

    else
    {
      v62 = 0;
      [v43 copyItemAtPath:v44 toPath:v37 error:&v62];
      v45 = v62;

      if (v45)
      {
        v46 = BCImageCacheLog();
        v8 = v41;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1ED5CC();
        }

LABEL_41:
        v21 = v40;

LABEL_43:
        goto LABEL_44;
      }
    }

    v8 = v41;
    v21 = v40;
    goto LABEL_43;
  }

LABEL_45:
  v48 = [*(a1 + 48) stackOutline];
  if (v48)
  {
    v58 = v21;
    v49 = v8;
    v50 = [UIBezierPath bezierPathWithCGPath:v48];
    v51 = [*(a1 + 56) storedData];
    v52 = [v51 stringByAppendingPathExtension:@"path"];

    v53 = [WeakRetained cachePath];
    v54 = [v53 stringByAppendingPathComponent:v52];

    v60 = 0;
    v55 = [NSKeyedArchiver archivedDataWithRootObject:v50 requiringSecureCoding:0 error:&v60];
    v56 = v60;
    [v55 writeToFile:v54 atomically:1];
    if (v56)
    {
      v57 = BCImageCacheLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1ED634();
      }
    }

    v8 = v49;
    v21 = v58;
  }

  [BICCacheStats logOperation:BICCacheStatsOperationDiskWriteEnd[0] forRequest:*(a1 + 32)];
  [BICCacheStats logDescribedImage:*(a1 + 48) withComment:@"DiskDataStoreSaveImage"];
  [*(a1 + 80) addObject:*(a1 + 56)];
  dispatch_group_leave(*(a1 + 72));
}

void sub_17DEB8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_17E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17E038(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = [*(a1 + 32) cachePath];
  v6 = [v5 stringByAppendingPathComponent:v3];

  v8 = [v4 attributesOfItemAtPath:v6 error:0];

  v7 = [v8 objectForKey:NSFileSize];
  *(*(*(a1 + 40) + 8) + 24) += [v7 intValue];
}

void sub_17E340(id a1)
{
  v1 = kCGImageSourceShouldCacheImmediately;
  v2 = &__kCFBooleanTrue;
  qword_3461B8 = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
}

void sub_17E65C(id a1)
{
  qword_3461C8 = @"org.khronos.ktx";
  v5[0] = kCGImagePropertyEncoder;
  v5[1] = kCGImagePropertyASTCBlockSize;
  v6[0] = kCGImagePropertyASTCEncoder;
  v6[1] = &off_2E6AA0;
  v5[2] = kCGImagePropertyASTCUseLZFSE;
  v5[3] = kCGImagePropertyASTCPreTwiddle;
  v6[2] = &__kCFBooleanFalse;
  v6[3] = &__kCFBooleanTrue;
  qword_3461E0 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  qword_3461D0 = AVFileTypeHEIC;
  v3 = kCGImageDestinationLossyCompressionQuality;
  v4 = &off_2EF4E8;
  qword_3461E8 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  qword_3461D8 = AVFileTypeJPEG;
  v1 = kCGImageDestinationLossyCompressionQuality;
  v2 = &off_2EF4F8;
  qword_3461F0 = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
}

BOOL CGImageIsWideGamut(CGImage *a1)
{
  if (!a1)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    return 0;
  }

  return CGColorSpaceIsWideGamutRGB(ColorSpace);
}

CGImageSource *CGImageCreateWithURL(const __CFURL *a1)
{
  result = CGImageSourceCreateWithURL(a1, 0);
  if (result)
  {
    v2 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v2);
    return ImageAtIndex;
  }

  return result;
}

CFTypeRef BCCreateHairlineImageAsDataForColor(CGColor *a1, int a2, double a3)
{
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 1;
  }

  v6 = CGColorGetAlpha(a1) * a3;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(a1, v6);
  if (!CopyWithAlpha)
  {
    return 0;
  }

  v8 = CopyWithAlpha;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v10 = DeviceRGB;
    v11 = CGBitmapContextCreate(0, v4, v5, 8uLL, 0, DeviceRGB, 2u);
    if (v11)
    {
      v12 = v11;
      CGContextSetFillColorWithColor(v11, v8);
      v21.origin.x = 0.0;
      v21.origin.y = 0.0;
      v21.size.width = 1.0;
      v21.size.height = 1.0;
      CGContextFillRect(v12, v21);
      Image = CGBitmapContextCreateImage(v12);
      if (Image)
      {
        v14 = Image;
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        if (Mutable)
        {
          v16 = Mutable;
          v17 = [UTTypePNG identifier];
          v18 = CGImageDestinationCreateWithData(v16, v17, 1uLL, 0);

          if (v18)
          {
            CGImageDestinationAddImage(v18, v14, 0);
            CGImageDestinationFinalize(v18);
            v19 = CFRetain(v16);
            CFRelease(v18);
          }

          else
          {
            v19 = 0;
          }

          CFRelease(v16);
        }

        else
        {
          v19 = 0;
        }

        CGImageRelease(v14);
      }

      else
      {
        v19 = 0;
      }

      CGContextRelease(v12);
    }

    else
    {
      v19 = 0;
    }

    CGColorSpaceRelease(v10);
  }

  else
  {
    v19 = 0;
  }

  CGColorRelease(v8);
  return v19;
}

float sub_17EF44(void *a1, int a2, double a3, double a4, float a5, float a6)
{
  v10 = a1;
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  [v10 trackRectForBounds:?];
  v23.origin.y = v12;
  v23.size.height = v14;
  v24 = CGRectInset(v23, -2.0, 0.0);
  x = v24.origin.x;
  width = v24.size.width;
  v17 = [v10 currentThumbImage];

  [v17 size];
  v19 = v18;

  v20 = a3 - x + v19 * -0.5;
  v21 = ((a6 - a5) * v20) / (width - v19) + a5;
  if (a2)
  {
    v21 = a6 - (v21 - a5);
  }

  if (v21 >= a5)
  {
    a5 = v21;
    if (v21 > a6)
    {
      return a6;
    }
  }

  return a5;
}

void sub_180B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 imageEntries];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v16 + 1) + 8 * v8) state] == 1)
        {

          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_180D54;
          v13[3] = &unk_2C7B30;
          v13[4] = v12;
          v14 = v11;
          v15 = *(a1 + 48);
          [v12 _afterAllStoreOperationsCompletedForDescribedImage:v14 performBlock:v13];

          goto LABEL_13;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = objc_retainBlock(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v3);
  }

LABEL_13:
}

void sub_180D54(uint64_t a1)
{
  v2 = [*(a1 + 32) imageSetPersistence];
  [v2 withExistingImageSetForDescribedImage:*(a1 + 40) performBlock:*(a1 + 48)];
}

void sub_180E84(uint64_t a1, void *a2)
{
  v18 = a1;
  v2 = a2;
  v3 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v2;
  v4 = [v2 imageEntries];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 state] == 2 && (objc_msgSend(v9, "isExpired") & 1) == 0)
        {
          v10 = [BICDescribedImage describedImageFromImageEntry:v9];
          v11 = [v9 dataStoreInformation];
          v12 = [v11 hasPrefix:@"http"];

          if (v12)
          {
            v13 = 4;
            goto LABEL_14;
          }

          if ([v9 level] == 1)
          {
            v13 = 2;
            goto LABEL_14;
          }

          if ([v9 level] == 2)
          {
            v13 = 3;
LABEL_14:
            [v10 setLocation:v13];
          }

          [v3 addObject:v10];

          continue;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v14 = [*(v18 + 32) comparator];
  v15 = [v14 sortedBestMatchOf:*(v18 + 40) toCandidateImages:v3];

  v16 = objc_retainBlock(*(v18 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v15);
  }
}

void sub_181444(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_181578(uint64_t a1, void *a2)
{
  v3 = [a2 primaryEntry];
  if ([v3 state] == 2 && (+[BICDescribedImage describedImageFromImageEntry:](BICDescribedImage, "describedImageFromImageEntry:", v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICImageSetStorePersistance: Primary entry found: %@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICImageSetStorePersistance: Primary entry NOT found", &v9, 2u);
    }

    v5 = 0;
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5);
  }
}

void sub_181930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18195C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained dataStore];
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_181A58;
  v7[3] = &unk_2CF090;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  [v5 storeAddedEntries:v3 forRequest:v6 storingCompletedHandler:v7];

  objc_destroyWeak(&v9);
}

void sub_181A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained imageSetPersistence];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_181B38;
  v9[3] = &unk_2C8398;
  v10 = *(a1 + 32);
  [v8 markEntriesAsStored:v6 notStored:v5 completion:v9];
}

void sub_181B38(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_181E60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_181F20;
  v7[3] = &unk_2C8460;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 deleteRemovedEntries:v4 deletingCompletedHandler:v7];
}

void sub_181F20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageSetPersistence];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_181FEC;
  v6[3] = &unk_2C8488;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 deleteEntriesMarkedToBeDeleted:v5 completion:v6];
}

void sub_181FEC(uint64_t a1)
{
  v4 = [*(a1 + 32) valueForKey:@"imageDescription"];
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4);
  }
}

void sub_182330(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataStore];
  [v4 deleteImageForEntryLocation:v3];
}

uint64_t sub_184284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18429C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 48) allKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_184404(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_184564(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  if (v2)
  {
    v3 = *(a1[4] + 56);
    v10 = v2;
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v2 timeStamp]);
    v5 = [v3 bu_indexOfObjectWithValue:v4 forKeyPath:@"timeStamp"];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      NSLog(@"%s Initial Object mismatch", "[IMMemoryCache objectForKey:]_block_invoke");
      v6 = [*(a1[4] + 56) indexOfObjectIdenticalTo:v10];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        NSLog(@"%s Complete Object mismatch", "[IMMemoryCache objectForKey:]_block_invoke");
        [*(a1[4] + 48) removeObjectForKey:a1[5]];
LABEL_7:
        v2 = v10;
        goto LABEL_8;
      }

      v5 = v6;
    }

    [*(a1[4] + 56) removeObjectAtIndex:v5];
    [*(a1[4] + 56) addObject:v10];
    [v10 setTimeStamp:mach_absolute_time()];
    v7 = [v10 item];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    goto LABEL_7;
  }

LABEL_8:
}

id sub_1848F8(uint64_t a1)
{
  *(*(a1 + 32) + 88) = 0;
  *(*(a1 + 32) + 96) = 0;
  [*(*(a1 + 32) + 48) removeAllObjects];
  v2 = *(*(a1 + 32) + 56);

  return [v2 removeAllObjects];
}

void sub_184A18(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 hasPrefix:*(a1 + 40)] && objc_msgSend(v7, "hasSuffix:", *(a1 + 48)))
        {
          [*(a1 + 32) _removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_184BE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 hasPrefix:*(a1 + 40)])
        {
          [*(a1 + 32) _removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_185214(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  if (v2)
  {
    v3 = [v2 cost];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(*(a1[6] + 8) + 24) = v3;

  return _objc_release_x1(v3);
}

id sub_185334(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_18545C(uint64_t a1)
{
  v2 = [[NSString alloc] initWithFormat:@"<%@: %p>; Item Dictionary Count: %d; Item Array Count: %d; Internal Count: %d; Count Limit: %d; Current Cost: %d; Cost Limit: %d; Items: %@", objc_opt_class(), *(a1 + 32), objc_msgSend(*(*(a1 + 32) + 48), "count"), objc_msgSend(*(*(a1 + 32) + 56), "count"), *(*(a1 + 32) + 88), *(*(a1 + 32) + 40), *(*(a1 + 32) + 96), *(*(a1 + 32) + 32), *(*(a1 + 32) + 48)];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

id sub_1855E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];

  if (v2)
  {
    [*(a1 + 32) _removeObjectForKey:*(a1 + 40)];
  }

  [*(a1 + 48) setTimeStamp:mach_absolute_time()];
  [*(*(a1 + 32) + 48) setObject:*(a1 + 48) forKey:*(a1 + 40)];
  [*(*(a1 + 32) + 56) addObject:*(a1 + 48)];
  ++*(*(a1 + 32) + 88);
  if ([*(a1 + 48) cost])
  {
    *(*(a1 + 32) + 96) += [*(a1 + 48) cost];
  }

  v3 = *(a1 + 32);

  return [v3 _checkLimits];
}

float BCFloatClamp(float result, float a2, float a3)
{
  if (a3 < result)
  {
    result = a3;
  }

  if (result <= a2)
  {
    return a2;
  }

  return result;
}

void BCFloatAssertClamp(float a1, float a2, float a3)
{
  v6 = a1 >= a2 && a1 <= a3;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1EDA24(a2, a3, a1);
  }
}

float BCFloatClampedToIntervalOrSubstitute(float result, float a2, float a3, float a4)
{
  if (result > a3 || result < a2)
  {
    return a4;
  }

  return result;
}

float BCFloatClampedToUnitIntervalOrNegativeOne(float result)
{
  if (result > 1.0 || result < 0.0)
  {
    return -1.0;
  }

  return result;
}

void sub_186B1C(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  qword_346208 = v1;

  _objc_release_x1(v1);
}

void sub_188DD0(id a1)
{
  v1 = objc_alloc_init(BKSeriesManager);
  qword_346218 = v1;

  _objc_release_x1(v1);
}

void sub_18A0F8(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 buyParams];
      (v7)[2](v7, v8, v9);
    }
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, v9);
  }
}

void sub_18A354(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [BKSeriesManagerUpdater alloc];
  v4 = *(a1 + 32);
  v5 = [v4 database];
  v6 = [*(a1 + 32) catalogService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_18A4E4;
  v14[3] = &unk_2C7D40;
  v7 = v2;
  v15 = v7;
  v8 = [(BKSeriesManagerUpdater *)v3 initWithManager:v4 database:v5 catalogService:v6 onFinished:v14];

  [(BKSeriesManagerUpdater *)v8 updateSeriesForSeriesAdamIDsWithTypes:*(a1 + 40) forceCheck:*(a1 + 56)];
  [*(a1 + 32) timeOut];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  if (dispatch_semaphore_wait(v7, v10))
  {
    v11 = BCSeriesManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EDC44();
    }

    [(BKSeriesManagerUpdater *)v8 cancel];
  }

  v12 = objc_retainBlock(*(a1 + 48));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }
}

void sub_18A690(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [BKSeriesManagerUpdater alloc];
  v4 = *(a1 + 32);
  v5 = [v4 database];
  v6 = [*(a1 + 32) catalogService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_18A820;
  v14[3] = &unk_2C7D40;
  v7 = v2;
  v15 = v7;
  v8 = [(BKSeriesManagerUpdater *)v3 initWithManager:v4 database:v5 catalogService:v6 onFinished:v14];

  [(BKSeriesManagerUpdater *)v8 updateSeriesForAssetAdamIDsWithTypes:*(a1 + 40) forceCheck:*(a1 + 56)];
  [*(a1 + 32) timeOut];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  if (dispatch_semaphore_wait(v7, v10))
  {
    v11 = BCSeriesManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EDC84();
    }

    [(BKSeriesManagerUpdater *)v8 cancel];
  }

  v12 = objc_retainBlock(*(a1 + 48));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }
}

void sub_18A8E4(uint64_t a1)
{
  v2 = [BKSeriesManagerUpdater alloc];
  v3 = *(a1 + 32);
  v4 = [v3 database];
  v5 = [*(a1 + 32) catalogService];
  v6 = [(BKSeriesManagerUpdater *)v2 initWithManager:v3 database:v4 catalogService:v5 onFinished:0];

  [(BKSeriesManagerUpdater *)v6 updateExpiredSeriesForAssetAdamIDsWithTypes:*(a1 + 40)];
}

void sub_18ABF4(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [BKSeriesManagerUpdater alloc];
  v4 = *(a1 + 32);
  v5 = [v4 database];
  v6 = [*(a1 + 32) catalogService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_18AD80;
  v14[3] = &unk_2C7D40;
  v7 = v2;
  v15 = v7;
  v8 = [(BKSeriesManagerUpdater *)v3 initWithManager:v4 database:v5 catalogService:v6 onFinished:v14];

  [(BKSeriesManagerUpdater *)v8 updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:*(a1 + 40)];
  [*(a1 + 32) timeOut];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  if (dispatch_semaphore_wait(v7, v10))
  {
    v11 = BCSeriesManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EDCC4();
    }

    [(BKSeriesManagerUpdater *)v8 cancel];
  }

  v12 = objc_retainBlock(*(a1 + 48));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }
}

uint64_t BRCConfigurationManager.value<A>(for:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_1EEED4();
  v9 = [v4 valueForKey:v7 fromNamespace:v8];

  if (v9)
  {
    v10 = [v9 object];
    sub_1EF444();
    swift_unknownObjectRelease();
  }

  sub_18AFC0(&qword_33F9D8);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t sub_18AFC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18B02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_18B070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_18B0C0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B0CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B0EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_18B174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_18B1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1EEF04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B224(uint64_t a1, id *a2)
{
  result = sub_1EEEE4();
  *a2 = 0;
  return result;
}

uint64_t sub_18B29C(uint64_t a1, id *a2)
{
  v3 = sub_1EEEF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18B31C@<X0>(void *a1@<X8>)
{
  sub_1EEF04();
  v2 = sub_1EEED4();

  *a1 = v2;
  return result;
}

void *sub_18B374@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18B384(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FE68, type metadata accessor for BooksDefaultsKey);
  v3 = sub_18B7C0(&qword_33FE70, type metadata accessor for BooksDefaultsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B440(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FF78, type metadata accessor for Name);
  v3 = sub_18B7C0(&qword_33FF80, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B4FC(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FF58, type metadata accessor for BooksDefaultsPersonalizationLocalSignalPurgeKey);
  v3 = sub_18B7C0(&qword_33FF60, type metadata accessor for BooksDefaultsPersonalizationLocalSignalPurgeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B5B8(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FF68, type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey);
  v3 = sub_18B7C0(&qword_33FF70, type metadata accessor for BooksDefaultsPriceTrackingUpdateScheduleStepsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B674(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FE78, type metadata accessor for Key);
  v3 = sub_18B7C0(&qword_33FE80, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B7C0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B898(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FF88, type metadata accessor for MCatalogRequestRelationship);
  v3 = sub_18B7C0(&qword_33FF90, type metadata accessor for MCatalogRequestRelationship);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18B954@<X0>(void *a1@<X8>)
{
  v2 = sub_1EEED4();

  *a1 = v2;
  return result;
}

uint64_t sub_18B99C(uint64_t a1)
{
  v2 = sub_18B7C0(&qword_33FF98, type metadata accessor for MCatalogRequestView);
  v3 = sub_18B7C0(&unk_33FFA0, type metadata accessor for MCatalogRequestView);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18BA64()
{
  sub_1EEF04();
  v0 = sub_1EEFA4();

  return v0;
}

uint64_t sub_18BAA0()
{
  sub_1EEF04();
  sub_1EEF74();
}

Swift::Int sub_18BAF4()
{
  sub_1EEF04();
  sub_1EF784();
  sub_1EEF74();
  v0 = sub_1EF7B4();

  return v0;
}

__n128 sub_18BC84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18BC90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BCB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_18BD28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18BE04()
{
  v0 = sub_1EEF04();
  v2 = v1;
  if (v0 == sub_1EEF04() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1EF6D4();
  }

  return v5 & 1;
}

uint64_t BCDefaultCloudGlobalMetadataManager.fetchBool(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18C330;

  return (sub_18CDE4)(a1, a2);
}

uint64_t sub_18C330(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_18C430(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = *sub_18E35C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_18AFC0(&qword_3411A0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t BCDefaultCloudGlobalMetadataManager.fetchString(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18C5B8;

  return (sub_18D148)(a1, a2);
}

uint64_t sub_18C5B8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_18C6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_18E35C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_18AFC0(&qword_3411A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_1EEF04();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t BCDefaultCloudGlobalMetadataManager.update(_:forKey:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18E3B8;

  return sub_18D4A4(a1, a2, a3);
}

uint64_t sub_18C85C(uint64_t a1, void *a2)
{
  v3 = sub_18E35C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_18AFC0(&qword_3411A0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t BCDefaultCloudGlobalMetadataManager.update(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18C9D4;

  return (sub_18D788)(a1, a2, a3, a4);
}

uint64_t sub_18C9D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BCDefaultCloudGlobalMetadataManager.changeSignals.getter()
{
  v0 = [objc_opt_self() defaultCenter];
  sub_1EF224();

  sub_1EF214();
  sub_18DB04();
  return sub_1EF604();
}

uint64_t sub_18CBB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3C0;

  return (sub_18CDE4)(a1, a2);
}

uint64_t sub_18CC64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3BC;

  return (sub_18D148)(a1, a2);
}

uint64_t sub_18CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18E3B8;

  return (sub_18D788)(a1, a2, a3, a4);
}

uint64_t sub_18CDE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_18CE04, 0, 0);
}

uint64_t sub_18CE04()
{
  v1 = objc_opt_self();
  v2 = sub_1EEED4();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_18CF50;
  v3 = swift_continuation_init();
  v0[17] = sub_18AFC0(&qword_340120);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_18C430;
  v0[13] = &unk_2CFA80;
  v0[14] = v3;
  [v1 fetchMetadataBoolForKey:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_18CF50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_18D0D8;
  }

  else
  {
    v2 = sub_18D060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_18D060()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 177);

  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_18D0D8()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18D148(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_18D168, 0, 0);
}

uint64_t sub_18D168()
{
  v1 = objc_opt_self();
  v2 = sub_1EEED4();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18D2B4;
  v3 = swift_continuation_init();
  v0[17] = sub_18AFC0(&qword_340118);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_18C6C8;
  v0[13] = &unk_2CFA58;
  v0[14] = v3;
  [v1 fetchMetadataStringForKey:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_18D2B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_18D434;
  }

  else
  {
    v2 = sub_18D3C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_18D3C4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_18D434()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18D4A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 176) = a1;
  return _swift_task_switch(sub_18D4C8, 0, 0);
}

uint64_t sub_18D4C8()
{
  v1 = *(v0 + 176);
  v2 = objc_opt_self();
  v3 = sub_1EEED4();
  *(v0 + 160) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_18D614;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_18AFC0(&qword_340110);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_18C85C;
  *(v0 + 104) = &unk_2CFA30;
  *(v0 + 112) = v4;
  [v2 updateMetadataBool:v1 forKey:v3 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_18D614()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_18D0D8;
  }

  else
  {
    v2 = sub_18D724;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_18D724()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18D788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_18D7AC, 0, 0);
}

uint64_t sub_18D7AC()
{
  v1 = objc_opt_self();
  v2 = sub_1EEED4();
  v0[22] = v2;
  v3 = sub_1EEED4();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_18D914;
  v4 = swift_continuation_init();
  v0[17] = sub_18AFC0(&qword_340110);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_18C85C;
  v0[13] = &unk_2CFA08;
  v0[14] = v4;
  [v1 updateMetadataString:v2 forKey:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_18D914()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_18DA8C;
  }

  else
  {
    v2 = sub_18DA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_18DA24()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18DA8C()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_18DB04()
{
  result = qword_340070;
  if (!qword_340070)
  {
    sub_1EF214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340070);
  }

  return result;
}

uint64_t dispatch thunk of BCCloudGlobalMetadataManaging.fetchBool(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18DC8C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_18DC8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of BCCloudGlobalMetadataManaging.fetchString(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18DEB8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_18DEB8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of BCCloudGlobalMetadataManaging.update(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18E3B8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BCCloudGlobalMetadataManaging.update(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18C9D4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18E2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18E310(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_18E35C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t TurnPageButtonDirection.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_18E3D8()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF794(v1);
  return sub_1EF7B4();
}

Swift::Int sub_18E44C()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF794(v1);
  return sub_1EF7B4();
}

uint64_t *sub_18E490@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int UIAccessibility.BooksAccessibilityAnnouncementIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF794(v1);
  return sub_1EF7B4();
}

Swift::Int sub_18E534()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF794(v1);
  return sub_1EF7B4();
}

uint64_t sub_18E678()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E6D8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCCapsuleTurnPageButton_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E770;
}

void sub_18E770(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_18E838()
{
  v1 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_18E8EC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_18E95C(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*sub_18E9CC(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_18EA60;
}

void sub_18EA60(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

id sub_18EABC()
{
  if (![v0 isEnabled])
  {
LABEL_5:
    v3 = *&v0[OBJC_IVAR___BCCapsuleTurnPageButton_style];
    if (!v3)
    {
      v1 = [objc_opt_self() clearColor];
      goto LABEL_9;
    }

    if (v3 != 1)
    {
      sub_18AFC0(&qword_340180);
      result = sub_1EF6C4();
      __break(1u);
      return result;
    }

LABEL_8:
    v1 = [objc_opt_self() tertiarySystemFillColor];
    goto LABEL_9;
  }

  if (![v0 isHighlighted])
  {
    v2 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
    swift_beginAccess();
    if (v0[v2])
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v1 = [objc_opt_self() systemFillColor];
LABEL_9:

  return v1;
}

id CapsuleTurnPageButton.init(direction:style:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_18AFC0(&qword_340138);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - v6;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___BCCapsuleTurnPageButton_isHovering] = 0;
  *&v2[OBJC_IVAR___BCCapsuleTurnPageButton_direction] = a1;
  *&v2[OBJC_IVAR___BCCapsuleTurnPageButton_style] = a2;
  v8 = type metadata accessor for CapsuleTurnPageButton();
  v14.receiver = v2;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 28.0, 52.0);
  sub_18F1F0();
  v10 = sub_1EF3A4();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_1EF3C4();
  aBlock[4] = sub_18EE1C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F0D8;
  aBlock[3] = &unk_2CFAA8;
  v11 = _Block_copy(aBlock);
  [v9 setConfigurationUpdateHandler:v11];
  _Block_release(v11);
  [v9 setPreferredBehavioralStyle:1];

  return v9;
}

uint64_t sub_18EE1C(void *a1)
{
  sub_18AFC0(&qword_340138);
  v2 = (__chkstk_darwin)();
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v17[-v5];
  v7 = sub_1EF3A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CapsuleTurnPageButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    sub_1EF3B4();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_18FC18(v6);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      if ([v12 isEnabled])
      {
        [v12 isHighlighted];
        v14 = &selRef_labelColor;
      }

      else
      {
        v14 = &selRef_tertiaryLabelColor;
      }

      v15 = [objc_opt_self() *v14];
      sub_1EF374();
      sub_18EABC();
      v16 = sub_1EF344();
      sub_1EEC54();
      v16(v17, 0);
      (*(v8 + 16))(v4, v10, v7);
      (*(v8 + 56))(v4, 0, 1, v7);
      sub_1EF3C4();

      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

void sub_18F0D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_18F1F0()
{
  v1 = sub_1EF354();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EF394();
  if (*(v0 + OBJC_IVAR___BCCapsuleTurnPageButton_direction) > 1uLL)
  {
    v12[0] = *(v0 + OBJC_IVAR___BCCapsuleTurnPageButton_direction);
    result = sub_1EF6F4();
    __break(1u);
  }

  else
  {
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v6 = [objc_opt_self() configurationWithFont:v5 scale:3];

    v7 = sub_1EEED4();

    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    sub_1EF384();
    (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v1);
    result = sub_1EF364();
    if (*(v0 + OBJC_IVAR___BCCapsuleTurnPageButton_style) == 1)
    {
      v10 = [objc_opt_self() effectWithStyle:6];
      v11 = sub_1EF344();
      sub_1EEC44();
      return v11(v12, 0);
    }
  }

  return result;
}

uint64_t sub_18F46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CapsuleTurnPageButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id CapsuleTurnPageButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CapsuleTurnPageButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall CapsuleTurnPageButton.accessibilityElementDidBecomeFocused()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CapsuleTurnPageButton();
  objc_msgSendSuper2(&v4, "accessibilityElementDidBecomeFocused");
  v1 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 1;
  if ((v2 & 1) == 0)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateTurnPageButtonsForFocusChange];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CapsuleTurnPageButton.accessibilityElementDidLoseFocus()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CapsuleTurnPageButton();
  objc_msgSendSuper2(&v4, "accessibilityElementDidLoseFocus");
  v1 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  swift_beginAccess();
  v2 = v0[v1];
  v0[v1] = 0;
  if (v2 == 1)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateTurnPageButtonsForFocusChange];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_18F914()
{
  result = qword_340150;
  if (!qword_340150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340150);
  }

  return result;
}

uint64_t sub_18F968@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18FA20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18FC18(uint64_t a1)
{
  v2 = sub_18AFC0(&qword_340138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CapsuleTurnPageButton.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapsuleTurnPageButton.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18FDF0()
{
  result = qword_340188;
  if (!qword_340188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340188);
  }

  return result;
}

uint64_t NSObject.hasAXFocus.getter()
{
  if (UIAccessibilityFocusedElement(0))
  {
    sub_1EF444();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_18FF14(v5);
    goto LABEL_8;
  }

  sub_18FF7C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v0 = 0;
    return v0 & 1;
  }

  v0 = sub_1EF314();

  return v0 & 1;
}

uint64_t sub_18FF14(uint64_t a1)
{
  v2 = sub_18AFC0(&qword_33F9D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18FF7C()
{
  result = qword_340190;
  if (!qword_340190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_340190);
  }

  return result;
}

uint64_t ReadingHistoryAppFileSyncManager.enableCloudSync.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ReadingHistoryAppFileSyncManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ReadingHistoryAppFileSyncManager.init()();
  return v0;
}

void *ReadingHistoryAppFileSyncManager.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  sub_18AFC0(&qword_340198);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0xD00000000000003ELL;
  *(v0 + 80) = 0x800000000024E540;
  *(v0 + 88) = 0;
  *(v0 + 48) = [objc_allocWithZone(type metadata accessor for ReadingHistoryServiceClient()) init];
  sub_18AFC0(&qword_3401A0);
  *(v0 + 24) = sub_1EE764();
  sub_18AFC0(&qword_3401A8);
  [objc_allocWithZone(BDSOSTransactionProvider) init];
  v3 = sub_1EE6F4();
  v1[4] = v3;
  v4 = v1[3];
  sub_18AFC0(&qword_3401B0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v1[5] = v5;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8 = sub_1EEED4();
  v9 = [v7 integerForKey:v8];

  v1[11] = v9;

  sub_1EE734();

  sub_1928AC(&qword_3401B8, v10, type metadata accessor for ReadingHistoryAppFileSyncManager);

  sub_1EE754();

  sub_190374();
  return v1;
}

void sub_190374()
{
  v1 = v0;
  sub_1928F4(0, &qword_340358);
  v2 = sub_1EF064();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() defaultCenter];
    v5 = v3;
    [v4 addObserver:v1 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:v5];
    [v4 addObserver:v1 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:v5];
  }

  else
  {
    sub_1EF0B4();
    sub_1928F4(0, &qword_341A60);
    v5 = sub_1EF404();
    sub_1EEAA4();
  }
}

uint64_t sub_1904FC()
{
  sub_1EE774();
  swift_allocObject();
  swift_weakInit();
  sub_1EE634();

  sub_1EE704();
  swift_allocObject();
  swift_weakInit();
  sub_1EE634();
}

uint64_t sub_190640()
{
  v0 = sub_1EDD64();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();

  sub_1EE744();
  (*(v1 + 8))(v3, v0);
}

uint64_t ReadingHistoryAppFileSyncManager.deinit()
{

  return v0;
}

uint64_t ReadingHistoryAppFileSyncManager.__deallocating_deinit()
{
  ReadingHistoryAppFileSyncManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1907D8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_190818(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

void ReadingHistoryAppFileSyncManager.readingTimeDidIncrement(date:day:)()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  sub_191FB0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_190970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18AFC0(&qword_340328);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1EDEF4();
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = sub_1EE624();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1AEF08(v7, v10);
  return swift_endAccess();
}

uint64_t ReadingHistoryAppFileSyncManager._consumeChangedDays()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  sub_192220(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_190BC4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 88);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 88) = v4;
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1EEED4();
    [v6 setInteger:v4 forKey:v7];

    *a2 = *(a1 + 88);
  }
}

uint64_t ReadingHistoryAppFileSyncManager.modelDidSave(syncVersion:)(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_1EE6C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = *(v1 + 64);
  v19 = sub_192958;
  v20 = v1;
  os_unfair_lock_lock(v9 + 4);
  sub_19293C(&v21);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v21;
  v11 = sub_1EE714();
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v12 = sub_1EF404();
  sub_1EEAA4();

  v13 = sub_1EF014();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v3);
  v14 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v2;
  *(v15 + 5) = v10;
  *(v15 + 6) = v11;
  (*(v4 + 32))(&v15[v14], &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_1912EC(0, 0, v8, &unk_2A58D0, v15);
}

uint64_t sub_190F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_190F24, 0, 0);
}

uint64_t sub_190F24()
{
  v12 = v0;
  v1 = v0[2];
  v2 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_192798;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_192238(&v11);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v0[3];

  if (*(v4 + 16))
  {
    v5 = v0[4];
    sub_1EE6E4();

    v6 = v5;
    v7 = sub_1EE6D4();
  }

  else
  {
    v7 = 0;
  }

  v0[6] = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1910A0;
  v9 = v0[5];

  return sub_19CF98(v9, v7);
}

uint64_t sub_1910A0()
{

  return _swift_task_switch(sub_19119C, 0, 0);
}

uint64_t sub_19119C()
{
  v1 = sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v2 = sub_1EF404();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_0, v2, v1, "ReadingHistoryAppFileSyncManager: DONE handleSyncFileChange task - update: %@", v5, 0xCu);
    sub_1927B4(v6, &qword_340320);
  }

  else
  {

    v2 = v4;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1912EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_192580(a3, v25 - v10);
  v12 = sub_1EF014();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1927B4(v11, &unk_341460);
  }

  else
  {
    sub_1EF004();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1EEFF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1EEF64() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1927B4(a3, &unk_341460);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1927B4(a3, &unk_341460);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1915E0()
{
  v1 = *(*v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  sub_192994();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_19166C()
{
  v0 = sub_1EE6A4();
  v19 = *(v0 - 8);
  __chkstk_darwin(v0);
  v18 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFC0(&qword_340330);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_18AFC0(&qword_340338);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_18AFC0(&qword_340340);
  sub_1EE644();
  sub_1EE3F4();
  (*(v3 + 104))(v6, enum case for ModelState.LoadedState.ready<A>(_:), v2);
  sub_1928AC(&qword_340348, 255, &type metadata accessor for ReadingHistoryModel);
  sub_1928AC(&qword_340350, 255, &type metadata accessor for ReadingHistoryModel);
  v20 = v0;
  v13 = sub_1EE3C4();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v15 = sub_1EF404();
  sub_1EEAA4();

  if (v13)
  {
    v16 = v18;
    sub_1EE3D4();
    sub_1EE724();
    (*(v19 + 8))(v16, v20);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_191A5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_191AD0()
{
  v0 = sub_1EE6A4();
  v19 = *(v0 - 8);
  __chkstk_darwin(v0);
  v18 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFC0(&qword_340330);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_18AFC0(&qword_340338);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_18AFC0(&qword_340340);
  sub_1EE644();
  sub_1EE3F4();
  (*(v3 + 104))(v6, enum case for ModelState.LoadedState.ready<A>(_:), v2);
  sub_1928AC(&qword_340348, 255, &type metadata accessor for ReadingHistoryModel);
  sub_1928AC(&qword_340350, 255, &type metadata accessor for ReadingHistoryModel);
  v20 = v0;
  v13 = sub_1EE3C4();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v15 = sub_1EF404();
  sub_1EEAA4();

  if (v13)
  {
    v16 = v18;
    sub_1EE3D4();
    sub_1EE784();
    (*(v19 + 8))(v16, v20);
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_191ED8()
{
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v0 = sub_1EF404();
  sub_1EEAA4();
}

uint64_t sub_191F70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_191FD8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptyDictionarySingleton;
  *a1 = v4;
  return result;
}

uint64_t sub_192030(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_192128;

  return v6(a1);
}

uint64_t sub_192128()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_192238@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_19227C()
{
  v1 = sub_1EE6C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_192358(uint64_t a1)
{
  v4 = *(sub_1EE6C4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18C9D4;

  return sub_190F00(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_192464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1924AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_192580(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&unk_341460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1925F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_192628(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3B8;

  return sub_192030(a1, v4);
}

uint64_t sub_1926E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18C9D4;

  return sub_192030(a1, v4);
}

uint64_t sub_1927B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18AFC0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192814()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1928AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1928F4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static ReadingGoalsData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EE1F4();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = __chkstk_darwin(v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v65 = &v56 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - v10;
  __chkstk_darwin(v9);
  v13 = &v56 - v12;
  v14 = sub_1EE254();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v61 = &v56 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v56 - v21;
  __chkstk_darwin(v20);
  v24 = &v56 - v23;
  v25 = sub_1EE144();
  if (v25 != sub_1EE144())
  {
    goto LABEL_25;
  }

  v59 = a1;
  sub_1EE134();
  v60 = a2;
  sub_1EE134();
  v26 = sub_19A580(&qword_340368, &type metadata accessor for DailyReadingGoalStatus);
  sub_1EEFB4();
  v58 = v26;
  sub_1EEFB4();
  v63 = v14;
  if (v70 == v68 && v71 == v69)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_1EF6D4();
  }

  v28 = v67;
  v29 = *(v15 + 8);
  v30 = v22;
  v31 = v63;
  v29(v30, v63);
  v67 = v15 + 8;
  v57 = v29;
  v29(v24, v31);

  if ((v27 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1EE1A4();
  sub_1EE1A4();
  sub_19A580(&qword_340370, &type metadata accessor for DefaultReadingGoal);
  sub_1EEFB4();
  sub_1EEFB4();
  if (v70 == v68 && v71 == v69)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_1EF6D4();
  }

  v33 = *(v66 + 8);
  v33(v11, v28);
  v33(v13, v28);

  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1EE184();
  v35 = v34;
  sub_1EE184();
  if (v35 != v36)
  {
    goto LABEL_25;
  }

  v37 = v65;
  sub_1EE124();
  v38 = v64;
  sub_1EE124();
  sub_1EEFB4();
  sub_1EEFB4();
  if (v70 == v68 && v71 == v69)
  {
    v33(v38, v28);
    v33(v37, v28);
  }

  else
  {
    v39 = sub_1EF6D4();
    v33(v38, v28);
    v33(v37, v28);

    if ((v39 & 1) == 0)
    {
LABEL_25:
      v52 = 0;
      return v52 & 1;
    }
  }

  v40 = v63;
  sub_1EE114();
  v42 = v41;
  sub_1EE114();
  if (v42 != v43)
  {
    goto LABEL_25;
  }

  sub_1EE1C4();
  v45 = v44;
  sub_1EE1C4();
  if (v45 != v46)
  {
    goto LABEL_25;
  }

  v47 = sub_1EE1B4();
  if (v47 != sub_1EE1B4())
  {
    goto LABEL_25;
  }

  v48 = sub_1EE154();
  if (v48 != sub_1EE154())
  {
    goto LABEL_25;
  }

  v49 = sub_1EE174();
  if (v49 != sub_1EE174())
  {
    goto LABEL_25;
  }

  v50 = v61;
  sub_1EE164();
  v51 = v62;
  sub_1EE164();
  sub_1EEFB4();
  sub_1EEFB4();
  if (v70 == v68 && v71 == v69)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_1EF6D4();
  }

  v54 = v51;
  v55 = v57;
  v57(v54, v40);
  v55(v50, v40);

  return v52 & 1;
}

BOOL static BooksGoalsData.== infix(_:_:)()
{
  v0 = sub_1EE0C4();
  if (v0 != sub_1EE0C4())
  {
    return 0;
  }

  v1 = sub_1EE0F4();
  if (v1 != sub_1EE0F4())
  {
    return 0;
  }

  sub_1EE0D4();
  v3 = v2;
  sub_1EE0D4();
  if (v3 != v4)
  {
    return 0;
  }

  sub_1EE0B4();
  v6 = v5;
  sub_1EE0B4();
  return v6 == v7;
}

uint64_t sub_1930FC()
{
  type metadata accessor for ReadingGoalsAnalytics();
  swift_allocObject();
  result = sub_1943D0();
  qword_340360 = result;
  return result;
}

uint64_t static ReadingGoalsAnalytics.shared.getter()
{
  if (qword_33F900 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1931E0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_193240(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_analyticsSessionHosting;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E770;
}

uint64_t sub_1932D8()
{

  sub_18AFC0(&qword_340380);
  sub_1EF154();
}

uint64_t sub_193388(uint64_t a1, uint64_t *a2)
{
  v4 = sub_18AFC0(&qword_340380);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  sub_19A4B0(a1, &v14[-v5], &qword_340380);
  v7 = *a2;
  v8 = *(*a2 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics__goalsState);
  v15 = v6;
  v16 = v7;
  v9 = *(v8 + *(*v8 + 96));
  v10 = swift_allocObject();
  v10[2] = sub_19A704;
  v10[3] = v14;
  v10[4] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_19A708;
  *(v11 + 24) = v10;
  aBlock[4] = sub_19A6B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D0018;
  v12 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return sub_1927B4(v6, &qword_340380);
  }

  __break(1u);
  return result;
}

uint64_t sub_1935B4()
{

  sub_18AFC0(&qword_340380);
  sub_1EF154();
}

uint64_t sub_193660(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics__goalsState);
  v9[2] = a1;
  v4 = *(v3 + *(*v3 + 96));
  v5 = swift_allocObject();
  v5[2] = sub_1996D8;
  v5[3] = v9;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_199718;
  *(v6 + 24) = v5;
  aBlock[4] = sub_199724;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2CFD58;
  v7 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return sub_1927B4(a1, &qword_340380);
  }

  __break(1u);
  return result;
}

uint64_t sub_19381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_18AFC0(&qword_340380);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_1EE464();
  v12 = __chkstk_darwin(v11);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v17 = v16;
  sub_19A4B0(a1, v10, &qword_340380);
  v18 = *(v17 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_1927B4(a1, &qword_340380);
    sub_1927B4(v10, &qword_340380);
    v19 = a1;
    v20 = a2;
  }

  else
  {
    v37 = a1;
    v21 = *(v17 + 32);
    v21(v15, v10, v11);
    sub_19A4B0(a2, v8, &qword_340380);
    if (v18(v8, 1, v11) == 1)
    {
      (*(v17 + 8))(v15, v11);
      return sub_1927B4(v8, &qword_340380);
    }

    v20 = a2;
    sub_1927B4(v37, &qword_340380);
    v23 = v39;
    v21(v39, v8, v11);
    v24 = sub_1EE424();
    v25 = v38;
    if (v24)
    {
      sub_19A580(&qword_340630, &type metadata accessor for ReadingGoals.State);
      if ((sub_1EEEB4() & 1) == 0)
      {
        v26 = *(v25 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_userDefaults);
        sub_1EDE44();
        v28 = v27;
        v29 = sub_1EEED4();
        [v26 setDouble:v29 forKey:v28];

        v23 = v39;
      }
    }

    if (sub_1EE434())
    {
      sub_19A580(&qword_340630, &type metadata accessor for ReadingGoals.State);
      if ((sub_1EEEB4() & 1) == 0)
      {
        v30 = *(v25 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_userDefaults);
        sub_1EDE44();
        v32 = v31;
        v33 = sub_1EEED4();
        [v30 setDouble:v33 forKey:v32];

        v23 = v39;
      }
    }

    v34 = [objc_opt_self() defaultCenter];
    [v34 postNotificationName:@"BCCustomizingReadingGoals" object:v25 userInfo:0];

    sub_194B1C(v15, v23, 0);
    v35 = *(v17 + 8);
    v35(v23, v11);
    v35(v15, v11);
    v19 = v37;
  }

  return sub_19A4B0(v20, v19, &qword_340380);
}

void (*sub_193CE4(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  v5 = *(*(sub_18AFC0(&qword_340380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[13] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[13] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics__goalsState;
  v4[14] = v6;
  v4[15] = v7;

  sub_1EF154();

  return sub_193E2C;
}

void sub_193E2C(void ****a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[15];
    v5 = v2[12];
    v4 = v2[13];
    v6 = sub_19A4B0(v2[14], v4, &qword_340380);
    v7 = *(v3 + v5);
    __chkstk_darwin(v6);
    v22 = v4;
    v23 = v5;
    v8 = *(v7 + *(*v7 + 96));
    v9 = swift_allocObject();
    v9[2] = sub_19A704;
    v9[3] = v21;
    v9[4] = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_19A708;
    *(v10 + 24) = v9;
    v2[4] = sub_19A6B8;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_199688;
    v2[3] = &unk_2CFDD0;
    v11 = _Block_copy(v2);
    swift_retain_n();

    dispatch_sync(v8, v11);
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      v13 = v2[13];
      v12 = v2[14];
      sub_1927B4(v13, &qword_340380);
LABEL_6:
      sub_1927B4(v12, &qword_340380);
      free(v12);
      free(v13);
      free(v2);
      return;
    }

    __break(1u);
  }

  else
  {
    v14 = *(v2[15] + v2[12]);
    __chkstk_darwin(a1);
    v22 = v15;
    v23 = v16;
    v17 = *(v14 + *(*v14 + 96));
    v18 = swift_allocObject();
    v18[2] = sub_19A704;
    v18[3] = v21;
    v18[4] = v14;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_19A708;
    *(v19 + 24) = v18;
    v2[10] = sub_19A6B8;
    v2[11] = v19;
    v2[6] = _NSConcreteStackBlock;
    v2[7] = 1107296256;
    v2[8] = sub_199688;
    v2[9] = &unk_2CFE48;
    v20 = _Block_copy(v2 + 6);
    swift_retain_n();

    dispatch_sync(v17, v20);
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      v13 = v2[13];
      v12 = v2[14];
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_19425C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_19431C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1943D0()
{
  v1 = v0;
  v2 = sub_18AFC0(&qword_3405C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_18AFC0(&qword_340380);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  *(v1 + 16) = 0x54746E65746E6F63;
  *(v1 + 24) = 0xEB00000000657079;
  strcpy((v1 + 32), "dateFinished");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v8 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastReadingGoalsData;
  v9 = sub_1EE1D4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastBooksGoalsData;
  v11 = sub_1EE104();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_userDefaults;
  *(v1 + v12) = [objc_opt_self() standardUserDefaults];
  swift_unknownObjectWeakInit();
  v13 = sub_1EE464();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_18AFC0(&qword_340638);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics__goalsState) = sub_1992E4(v7, &qword_340380, &unk_2A5B00);
  v18 = xmmword_2A5AE0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_18AFC0(&qword_340640);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_booksState) = sub_19907C(&v18);
  v14 = sub_1EE5C4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_18AFC0(&qword_340648);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_historyState) = sub_1992E4(v4, &qword_3405C8, &unk_2A5BC0);
  v15 = [objc_opt_self() defaultCenter];

  v16 = sub_1EEED4();
  [v15 addObserver:v1 selector:"sessionActivityStateDidChange:" name:v16 object:0];

  return v1;
}

void sub_1947A0()
{
  v0 = sub_18AFC0(&qword_3405A8);
  v1 = __chkstk_darwin(v0);
  v3 = &v17[-4] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v17[-4] - v4;
  sub_1EDD44();
  if (!v19)
  {
    v14 = &qword_33F9D8;
    v15 = v18;
    goto LABEL_11;
  }

  sub_1EE344();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = v20;
  v7 = sub_1EDD54();
  if (v7)
  {
    v8 = v7;
    strcpy(v17, "sessionChange");
    v17[7] = -4864;
    sub_1EF504();
    if (!*(v8 + 16) || (v9 = sub_1B06E4(v18), (v10 & 1) == 0))
    {

      sub_19A52C(v18);
      return;
    }

    sub_18E2AC(*(v8 + 56) + 32 * v9, &v20);
    sub_19A52C(v18);

    if (swift_dynamicCast())
    {
      v11 = sub_1EDFB4();
      if ((v12 & 1) == 0 && v11 == 1)
      {
        sub_196484(v5, &v5[*(v0 + 48)]);
        sub_19A4B0(v5, v3, &qword_3405A8);
        v13 = *(v0 + 48);
        sub_198C4C(v3, &v3[v13], v6);

        sub_1927B4(v5, &qword_3405A8);
        sub_1927B4(&v3[v13], &qword_3403C0);
        v14 = &qword_3403B0;
        v15 = v3;
LABEL_11:
        sub_1927B4(v15, v14);
        return;
      }
    }
  }
}

uint64_t sub_194B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v29 = a1;
  v32 = sub_1EED84();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1EEDE4();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EE464();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  sub_1997F8();
  v30 = sub_1EF144();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v9 + 16);
  v16(v14, v28, v8);
  v16(v12, v29, v8);
  v17 = *(v9 + 80);
  v18 = (v17 + 32) & ~v17;
  v19 = (v10 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = a3;
  v21 = *(v9 + 32);
  v21(v20 + v18, v14, v8);
  v21(v20 + v19, v12, v8);
  aBlock[4] = sub_199970;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2CFEC0;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  sub_1EEDA4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_19A580(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  v25 = v31;
  v24 = v32;
  sub_1EF454();
  v26 = v30;
  sub_1EF164();
  _Block_release(v22);

  (*(v35 + 8))(v25, v24);
  return (*(v33 + 8))(v7, v34);
}

uint64_t sub_194F3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v5 = sub_1EE244();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1EE2A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v14 = a2;
      goto LABEL_4;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20[0] = v6;
      v14 = [Strong keyWindowAnalyticsTracker];
      swift_unknownObjectRelease();
      if (v14)
      {
        v6 = v20[0];
LABEL_4:
        v15 = a2;
        result = sub_1EE444();
        if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v16 > -9.22337204e18)
        {
          if (v16 < 9.22337204e18)
          {
            result = sub_1EE444();
            if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  sub_1EE294();
                  sub_1EE454();
                  sub_1EE454();
                  sub_1EE234();
                  sub_1EE0A4();
                  v18 = sub_1EE094();
                  sub_1EE074();

                  (*(v6 + 8))(v8, v5);
                  return (*(v10 + 8))(v12, v9);
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return result;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t sub_195254(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1952C0(uint64_t a1, void *a2)
{
  v52 = a2;
  v50 = sub_1EE274();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1EE224();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EE1F4();
  v55 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v51 = &v42 - v10;
  __chkstk_darwin(v9);
  v54 = &v42 - v11;
  v12 = sub_18AFC0(&qword_340380);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = sub_1EE464();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = v2;

    sub_1EF154();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_1927B4(v14, &qword_340380);
    }

    (*(v16 + 32))(v18, v14, v15);
    v20 = v52;
    v45 = v15;
    if (v52)
    {
      v43 = v16;
      v44 = v5;
      v42 = v52;
      goto LABEL_6;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = [Strong keyWindowAnalyticsTracker];
      swift_unknownObjectRelease();
      if (v41)
      {
        v42 = v41;
        v43 = v16;
        v44 = v5;
LABEL_6:
        v21 = v20;
        v22 = sub_1EE424();
        v24 = v54;
        v23 = v55;
        v25 = *(v55 + 104);
        v26 = enum case for DefaultReadingGoal.Y(_:);
        v27 = enum case for DefaultReadingGoal.N(_:);
        if (v22)
        {
          v28 = enum case for DefaultReadingGoal.Y(_:);
        }

        else
        {
          v28 = enum case for DefaultReadingGoal.N(_:);
        }

        v25(v54, v28, v6);
        if (sub_1EE434())
        {
          v29 = v26;
        }

        else
        {
          v29 = v27;
        }

        v30 = v51;
        v25(v51, v29, v6);
        v31 = *(v23 + 16);
        v31(v53, v24, v6);
        result = sub_1EE444();
        if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v33 = v50;
          v34 = v44;
          if (v32 > -9.22337204e18)
          {
            if (v32 < 9.22337204e18)
            {
              v35 = v53;
              sub_1EE214();
              v31(v35, v30, v6);
              sub_1EE454();
              BARoundIntegerToSignificantFigures();
              v36 = v48;
              sub_1EE264();
              sub_1EE0A4();
              v37 = sub_1EE094();
              v38 = v42;
              sub_1EE084();

              (*(v46 + 8))(v36, v33);
              (*(v47 + 8))(v34, v49);
              v39 = *(v55 + 8);
              v39(v30, v6);
              v39(v54, v6);
              return (*(v43 + 8))(v18, v45);
            }

            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }
    }

    (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_195928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v6 = sub_1EED84();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1EEDE4();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1997F8();
  v12 = sub_1EF144();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = v19;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1EEDA4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_19A580(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v15);

  (*(v21 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v20);
}

uint64_t sub_195C14(uint64_t a1, void *a2)
{
  v3 = sub_1EE104();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFC0(&qword_3403C0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - v7;
  v60 = sub_18AFC0(&qword_340610);
  __chkstk_darwin(v60);
  v61 = &v53 - v8;
  v9 = sub_1EE1D4();
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFC0(&qword_3403B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_18AFC0(&qword_340618);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v63 = sub_18AFC0(&qword_3405A8);
  v17 = __chkstk_darwin(v63);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v55 = v3;
    v54 = v4;
    if (a2)
    {
      v56 = a2;
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v33 = [Strong keyWindowAnalyticsTracker];
      swift_unknownObjectRelease();
      v56 = v33;
      if (!v33)
      {
      }
    }

    v24 = *(v63 + 48);
    v25 = a2;
    v53 = v24;
    sub_196484(v21, &v21[v24]);
    v26 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastReadingGoalsData;
    swift_beginAccess();
    v27 = *(v14 + 48);
    sub_19A4B0(v21, v16, &qword_3403B0);
    sub_19A4B0(v23 + v26, &v16[v27], &qword_3403B0);
    v28 = v62;
    v29 = *(v62 + 48);
    if (v29(v16, 1, v9) == 1)
    {
      if (v29(&v16[v27], 1, v9) == 1)
      {
        sub_1927B4(v16, &qword_3403B0);
LABEL_14:
        v38 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastBooksGoalsData;
        swift_beginAccess();
        v39 = v61;
        v40 = *(v60 + 48);
        sub_19A4B0(&v21[v53], v61, &qword_3403C0);
        sub_19A4B0(v23 + v38, v39 + v40, &qword_3403C0);
        v41 = v54;
        v42 = *(v54 + 48);
        v43 = v55;
        if (v42(v39, 1, v55) == 1)
        {
          if (v42(v39 + v40, 1, v43) == 1)
          {

            sub_1927B4(v39, &qword_3403C0);
LABEL_26:
            v47 = &qword_3405A8;
            v48 = v21;
            return sub_1927B4(v48, v47);
          }

          goto LABEL_19;
        }

        v44 = v58;
        sub_19A4B0(v39, v58, &qword_3403C0);
        if (v42(v39 + v40, 1, v43) == 1)
        {
          (*(v41 + 8))(v44, v43);
LABEL_19:
          v30 = &qword_340610;
          v31 = v39;
          goto LABEL_20;
        }

        v49 = v39 + v40;
        v50 = v57;
        (*(v41 + 32))(v57, v49, v43);
        sub_19A580(&qword_340620, &type metadata accessor for BooksGoalsData);
        v51 = sub_1EEEB4();
        v52 = *(v41 + 8);
        v52(v50, v43);
        v52(v44, v43);
        sub_1927B4(v39, &qword_3403C0);
        if (v51)
        {

          goto LABEL_26;
        }

LABEL_21:
        sub_19A4B0(v21, v19, &qword_3405A8);
        v45 = *(v63 + 48);
        v46 = v56;
        sub_198C4C(v19, &v19[v45], v56);

        sub_1927B4(v21, &qword_3405A8);
        sub_1927B4(&v19[v45], &qword_3403C0);
        v47 = &qword_3403B0;
        v48 = v19;
        return sub_1927B4(v48, v47);
      }
    }

    else
    {
      sub_19A4B0(v16, v13, &qword_3403B0);
      if (v29(&v16[v27], 1, v9) != 1)
      {
        v34 = &v16[v27];
        v35 = v59;
        (*(v28 + 32))(v59, v34, v9);
        sub_19A580(&qword_340628, &type metadata accessor for ReadingGoalsData);
        v36 = sub_1EEEB4();
        v37 = *(v28 + 8);
        v37(v35, v9);
        v37(v13, v9);
        sub_1927B4(v16, &qword_3403B0);
        if ((v36 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      (*(v28 + 8))(v13, v9);
    }

    v30 = &qword_340618;
    v31 = v16;
LABEL_20:
    sub_1927B4(v31, v30);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_196484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v278 = a2;
  v284 = a1;
  v4 = sub_18AFC0(&qword_3403C0);
  __chkstk_darwin(v4 - 8);
  v270 = &v233 - v5;
  v6 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v6 - 8);
  v273 = &v233 - v7;
  v8 = sub_18AFC0(&qword_3405B8);
  v9 = __chkstk_darwin(v8 - 8);
  v260 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v251 = &v233 - v11;
  v292 = sub_18AFC0(&qword_3405C0);
  v291 = *(v292 - 1);
  v12 = __chkstk_darwin(v292);
  v297 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v296 = &v233 - v15;
  __chkstk_darwin(v14);
  v303 = &v233 - v16;
  v252 = sub_1EDF84();
  v257 = *(v252 - 8);
  __chkstk_darwin(v252);
  v254 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1EDD84();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v253 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1EE614();
  v301 = *(v299 - 8);
  v19 = __chkstk_darwin(v299);
  v294 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v282 = &v233 - v21;
  v300 = sub_1EE584();
  v302 = *(v300 - 8);
  v22 = __chkstk_darwin(v300);
  v295 = &v233 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v293 = (&v233 - v24);
  v268 = sub_1EE254();
  v269 = *(v268 - 8);
  v25 = __chkstk_darwin(v268);
  v249 = &v233 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v258 = &v233 - v28;
  v29 = __chkstk_darwin(v27);
  v263 = &v233 - v30;
  __chkstk_darwin(v29);
  v267 = &v233 - v31;
  v290 = sub_1EDEF4();
  v275 = *(v290 - 8);
  v32 = __chkstk_darwin(v290);
  v261 = &v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v283 = &v233 - v35;
  v36 = __chkstk_darwin(v34);
  v279 = &v233 - v37;
  __chkstk_darwin(v36);
  v277 = &v233 - v38;
  v271 = sub_1EE1F4();
  v266 = *(v271 - 8);
  v39 = __chkstk_darwin(v271);
  v250 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v259 = &v233 - v42;
  v43 = __chkstk_darwin(v41);
  v281 = &v233 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v233 - v46;
  v48 = __chkstk_darwin(v45);
  v289 = &v233 - v49;
  __chkstk_darwin(v48);
  v262 = &v233 - v50;
  v298 = sub_18AFC0(&qword_3405C8);
  __chkstk_darwin(v298);
  v52 = &v233 - v51;
  v265 = sub_1EE5C4();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v272 = &v233 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_18AFC0(&qword_340380);
  __chkstk_darwin(v54);
  v56 = &v233 - v55;
  v57 = sub_1EE464();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v233 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_18AFC0(&qword_3403B0);
  v62 = __chkstk_darwin(v61 - 8);
  v248 = &v233 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v233 - v64;
  v66 = sub_1EE1D4();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v276 = v65;
  v247 = v66;
  v246 = v68;
  v245 = v67 + 56;
  (v68)(v65, 1, 1);

  sub_1EF154();

  v69 = (*(v58 + 48))(v56, 1, v57);
  v274 = v3;
  if (v69 == 1)
  {
    v70 = &qword_340380;
    v71 = v56;
LABEL_3:
    sub_1927B4(v71, v70);
LABEL_6:
    v72 = v278;
    goto LABEL_7;
  }

  (*(v58 + 32))(v60, v56, v57);
  swift_beginAccess();

  sub_18AFC0(&unk_3405D0);
  sub_1EF154();

  if (v306 == 1)
  {
    (*(v58 + 8))(v60, v57);
    goto LABEL_6;
  }

  v242 = v306;
  v285 = v305;
  v288 = v307;
  v287 = v308;
  v286 = v309;
  swift_beginAccess();

  sub_1EF154();

  v113 = v264;
  v114 = v265;
  if ((*(v264 + 48))(v52, 1, v265) == 1)
  {
    (*(v58 + 8))(v60, v57);
    sub_19A0F8(v285, v242);
    v70 = &qword_3405C8;
    v71 = v52;
    goto LABEL_3;
  }

  v234 = v58;
  v238 = v47;
  (*(v113 + 32))(v272, v52, v114);
  v243 = v60;
  v115 = sub_1EE424();
  v116 = v266[13];
  v236 = 0;
  if (v115)
  {
    v117 = v271;
    v116(v262, enum case for DefaultReadingGoal.Y(_:), v271);
    v118 = enum case for DefaultReadingGoal.N(_:);
  }

  else
  {
    v118 = enum case for DefaultReadingGoal.N(_:);
    v117 = v271;
    v116(v262, enum case for DefaultReadingGoal.N(_:), v271);
  }

  v128 = v282;
  v129 = v289;
  v235 = v57;
  LODWORD(v298) = v118;
  v116(v289, v118, v117);
  sub_19A580(&qword_340370, &type metadata accessor for DefaultReadingGoal);
  sub_1EEFB4();
  sub_1EEFB4();
  if (v305 == v310 && v306 == v311)
  {
    v130 = 1;
  }

  else
  {
    v130 = sub_1EF6D4();
  }

  v131 = v266[1];
  v240 = v266 + 1;
  v239 = v131;
  v131(v129, v271);

  if (v130)
  {
    v132 = *(v274 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_userDefaults);
    v133 = sub_1EEED4();
    [v132 doubleForKey:v133];

    v134 = v277;
    sub_1EDE34();
    sub_1EDED4();
    v136 = v135;
    result = (*(v275 + 8))(v134, v290);
    v137 = v136 * 1000.0;
    if (COERCE__INT64(fabs(v136 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v137 <= -9.22337204e18)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v137 >= 9.22337204e18)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }
  }

  v138 = sub_1EE434();
  v139 = v298;
  if (v138)
  {
    v140 = enum case for DefaultReadingGoal.Y(_:);
  }

  else
  {
    v140 = v298;
  }

  v141 = v271;
  v116(v238, v140, v271);
  v142 = v281;
  v116(v281, v139, v141);
  sub_1EEFB4();
  sub_1EEFB4();
  if (v305 == v310 && v306 == v311)
  {
    v239(v142, v271);
  }

  else
  {
    v143 = sub_1EF6D4();
    v239(v142, v271);

    if ((v143 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  v144 = *(v274 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_userDefaults);
  v145 = sub_1EEED4();
  [v144 doubleForKey:v145];

  v146 = v277;
  sub_1EDE34();
  sub_1EDED4();
  v148 = v147;
  result = (*(v275 + 8))(v146, v290);
  v149 = v148 * 1000.0;
  if (COERCE__INT64(fabs(v148 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v149 <= -9.22337204e18)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v149 >= 9.22337204e18)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

LABEL_75:
  v150 = enum case for DailyReadingGoalStatus.notStarted(_:);
  v151 = v269 + 104;
  v152 = v268;
  v241 = *(v269 + 104);
  v241(v267, enum case for DailyReadingGoalStatus.notStarted(_:), v268);
  v153 = v293;
  sub_1EE5B4();
  v154 = sub_1EE564();
  v155 = *(v302 + 8);
  v302 += 8;
  v298 = v155;
  v155(v153, v300);
  result = sub_1EE444();
  if ((*&v156 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v156 <= -9.22337204e18)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v157 = v241;
  if (v156 >= 9.22337204e18)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v154 >= v156)
  {
    v158 = &enum case for DailyReadingGoalStatus.reached(_:);
  }

  else
  {
    if (v154 < 1)
    {
      goto LABEL_83;
    }

    v158 = &enum case for DailyReadingGoalStatus.inProgress(_:);
  }

  v159 = v267;
  (*(v269 + 8))(v267, v152);
  v157(v159, *v158, v152);
LABEL_83:
  v237 = v151;
  v157(v263, v150, v152);
  v160 = sub_1EE594();
  v281 = *(v160 + 16);
  if (v281)
  {
    v161 = 0;
    v280 = v301 + 16;
    v244 = (v301 + 8);
    v289 = (v301 + 32);
    v162 = &_swiftEmptyArrayStorage;
    v163 = v299;
    while (v161 < *(v160 + 16))
    {
      v165 = (*(v301 + 80) + 32) & ~*(v301 + 80);
      v166 = v160;
      v167 = *(v301 + 72);
      (*(v301 + 16))(v128, v160 + v165 + v167 * v161, v163);
      v168 = v293;
      sub_1EE604();
      v169 = sub_1EE564();
      v298(v168, v300);
      if (v169 < 1)
      {
        (*v244)(v128, v163);
        v164 = v285;
      }

      else
      {
        v170 = v128;
        v171 = *v289;
        (*v289)(v294, v170, v163);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v305 = v162;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADFB8(0, *(v162 + 2) + 1, 1);
          v162 = v305;
        }

        v164 = v285;
        v174 = *(v162 + 2);
        v173 = *(v162 + 3);
        if (v174 >= v173 >> 1)
        {
          sub_1ADFB8(v173 > 1, v174 + 1, 1);
          v164 = v285;
          v162 = v305;
        }

        *(v162 + 2) = v174 + 1;
        v163 = v299;
        v171(&v162[v165 + v174 * v167], v294, v299);
        v128 = v282;
      }

      ++v161;
      v160 = v166;
      if (v281 == v161)
      {
        goto LABEL_95;
      }
    }

    goto LABEL_119;
  }

  v162 = &_swiftEmptyArrayStorage;
  v164 = v285;
LABEL_95:

  if (v242)
  {
    v175 = *(v242 + 16);
    sub_19A0F8(v164, v242);
  }

  else
  {
    v175 = 0;
  }

  v176 = v268;
  v177 = v292;
  v178 = v252;
  v179 = v241;
  if (v175 >= sub_1EE454())
  {
    v181 = v263;
    (*(v269 + 8))(v263, v176);

    v182 = &enum case for DailyReadingGoalStatus.reached(_:);
    goto LABEL_102;
  }

  v180 = *(v162 + 2);

  if (v180 | v175)
  {
    v181 = v263;
    (*(v269 + 8))(v263, v176);
    v182 = &enum case for DailyReadingGoalStatus.inProgress(_:);
LABEL_102:
    v179(v181, *v182, v176);
  }

  v183 = v254;
  sub_1EDF64();
  sub_18AFC0(&qword_3405E8);
  v184 = sub_1EDF74();
  v185 = *(v184 - 8);
  v186 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_2A5AF0;
  (*(v185 + 104))(v187 + v186, enum case for Calendar.Component.weekday(_:), v184);
  sub_19A190(v187);
  swift_setDeallocating();
  (*(v185 + 8))(v187 + v186, v184);
  swift_deallocClassInstance();
  v188 = v277;
  sub_1EDEE4();
  v189 = v253;
  sub_1EDF44();

  v190 = *(v275 + 8);
  v289 = (v275 + 8);
  v288 = v190;
  v190(v188, v290);
  (*(v257 + 8))(v183, v178);
  v191 = sub_1EDD74();
  LOBYTE(v184) = v192;
  (*(v255 + 8))(v189, v256);
  if (v184)
  {
    v193 = 0;
  }

  else
  {
    v193 = v191;
  }

  v293 = v193;
  v194 = sub_1EE594();
  v195 = *(v194 + 16);
  if (!v195)
  {
    goto LABEL_120;
  }

  v196 = 0;
  v294 = (v301 + 16);
  v197 = &_swiftEmptyArrayStorage;
  v198 = v295;
  while (v195 <= *(v194 + 16))
  {
    --v195;
    v199 = v301;
    v200 = v194 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v195;
    v201 = *(v177 + 12);
    v202 = v296;
    *v296 = v196;
    (*(v199 + 16))(&v202[v201], v200, v299);
    v203 = v202;
    v204 = v303;
    sub_19A61C(v203, v303, &qword_3405C0);
    v205 = *v204;
    sub_1EE604();
    LOBYTE(v204) = sub_1EE554();
    v298(v198, v300);
    if ((v204 & 1) != 0 && v205 < v293)
    {
      sub_19A61C(v303, v297, &qword_3405C0);
      v206 = swift_isUniquelyReferenced_nonNull_native();
      v305 = v197;
      if ((v206 & 1) == 0)
      {
        sub_1ADF98(0, v197[2] + 1, 1);
        v197 = v305;
      }

      v208 = v197[2];
      v207 = v197[3];
      if (v208 >= v207 >> 1)
      {
        sub_1ADF98(v207 > 1, v208 + 1, 1);
        v197 = v305;
      }

      v197[2] = v208 + 1;
      sub_19A61C(v297, v197 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v208, &qword_3405C0);
      v177 = v292;
    }

    else
    {
      sub_1927B4(v303, &qword_3405C0);
    }

    ++v196;
    if (!v195)
    {
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  v197 = &_swiftEmptyArrayStorage;
LABEL_121:

  v209 = v197[2];

  v210 = v251;
  sub_1EE5A4();
  v211 = sub_1EE5F4();
  v212 = *(v211 - 8);
  v213 = *(v212 + 48);
  if (v213(v210, 1, v211) == 1)
  {
    sub_1927B4(v210, &qword_3405B8);
    v214 = 0;
  }

  else
  {
    v215 = sub_1EE5D4();
    v216 = v210;
    v214 = v215;
    (*(v212 + 8))(v216, v211);
  }

  v217 = v250;
  sub_1EE5A4();
  v218 = v260;
  if (v213(v260, 1, v211) == 1)
  {
    sub_1927B4(v218, &qword_3405B8);
  }

  else
  {
    v219 = v277;
    sub_1EE5E4();
    (*(v212 + 8))(v218, v211);
    sub_1EDED4();
    v288(v219, v290);
  }

  v220 = v266[2];
  v220(v259, v262, v271);
  result = sub_1EE444();
  v222 = v221;
  if ((*&v221 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_148;
  }

  if (v221 <= -9.22337204e18)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v221 >= 9.22337204e18)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  v223 = *(v269 + 16);
  result = v223(v258, v267, v268);
  if (v209 >> 31)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v214 < 0xFFFFFFFF80000000)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v303 = v209;
  v302 = v214;
  if (v214 <= 0x7FFFFFFF)
  {
    v301 = v222;
    v224 = v238;
    v225 = v271;
    v220(v217, v238, v271);
    v226 = v243;
    sub_1EE454();
    BARoundIntegerToSignificantFigures();
    v227 = v263;
    v228 = v268;
    v223(v249, v263, v268);
    v229 = v248;
    sub_1EE194();
    v230 = *(v269 + 8);
    v230(v227, v228);
    v230(v267, v228);
    v231 = v239;
    v239(v224, v225);
    v231(v262, v225);
    (*(v264 + 8))(v272, v265);
    (*(v234 + 8))(v226, v235);
    v232 = v276;
    sub_1927B4(v276, &qword_3403B0);
    v246(v229, 0, 1, v247);
    sub_19A61C(v229, v232, &qword_3403B0);
    v72 = v278;
LABEL_7:
    v73 = sub_1EE104();
    v74 = *(v73 - 8);
    v75 = *(v74 + 56);
    v76 = v74 + 56;
    v75(v72, 1, 1, v73);
    swift_beginAccess();

    sub_18AFC0(&unk_3405D0);
    sub_1EF154();

    v77 = v306;
    v78 = v284;
    if (v306 == 1)
    {
      return sub_19A61C(v276, v78, &qword_3403B0);
    }

    v79 = v305;
    v80 = v307;
    v81 = v308;
    v82 = v309;
    sub_1EDE94();
    sub_1EDE94();
    v301 = v76;
    if (v77)
    {
      v294 = v82;
      v295 = v81;
      v296 = v80;
      v297 = v79;
      v299 = v75;
      v300 = v73;
      v83 = v77[2];
      v298 = v77;
      v84 = 0;
      if (v83)
      {
        v303 = 0;
        v86 = v274[2];
        v85 = v274[3];
        v87 = (v77 + 4);
        v302 = v275 + 56;
        v293 = (v275 + 48);
        v292 = (v275 + 32);
        v291 = v275 + 8;
        while (1)
        {
          v88 = *v87;
          if (*(*v87 + 16))
          {

            v89 = sub_1B0598(v86, v85);
            if (v90)
            {
              sub_19A10C(*(v88 + 56) + 40 * v89, &v305);
              result = swift_dynamicCast();
              if ((result & 1) != 0 && v304 <= 0xFu)
              {
                if (((1 << v304) & 0xB8C0) != 0)
                {
                  v92 = __OFADD__(v84++, 1);
                  if (v92)
                  {
                    __break(1u);
                    goto LABEL_135;
                  }

                  v93 = 0;
                  v94 = 1;
                  if (!*(v88 + 16))
                  {
                    goto LABEL_29;
                  }

LABEL_24:
                  v95 = sub_1B0598(v274[4], v274[5]);
                  if ((v96 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  sub_19A10C(*(v88 + 56) + 40 * v95, &v305);

                  v97 = v273;
                  v98 = v290;
                  v99 = swift_dynamicCast();
                  (*v302)(v97, v99 ^ 1u, 1, v98);
                  if ((*v293)(v97, 1, v98) != 1)
                  {
                    v100 = v261;
                    v101 = v97;
                    v102 = v290;
                    v289 = *v292;
                    (v289)(v261, v101, v290);
                    if (v93)
                    {
                      sub_19A580(&qword_3405E0, &type metadata accessor for Date);
                      v103 = v279;
                      v104 = sub_1EEEA4();
                      v105 = *v291;
                      v78 = v284;
                      if (v104)
                      {
                        v105(v100, v102);
                      }

                      else
                      {
                        v105(v103, v102);
                        (v289)(v103, v100, v102);
                      }

                      goto LABEL_12;
                    }

                    if (v94)
                    {
                      sub_19A580(&qword_3405E0, &type metadata accessor for Date);
                      v106 = v261;
                      v107 = v283;
                      v108 = v290;
                      v109 = sub_1EEEA4();
                      v110 = *v291;
                      if (v109)
                      {
                        v111 = v106;
                        v112 = v108;
                        goto LABEL_36;
                      }

                      v110(v107, v108);
                      (v289)(v107, v106, v108);
                    }

                    else
                    {
                      v110 = *v291;
                      v111 = v261;
                      v112 = v290;
LABEL_36:
                      v110(v111, v112);
                    }

                    v78 = v284;
                    goto LABEL_12;
                  }

                  goto LABEL_30;
                }

                if (((1 << v304) & 0x1A) != 0)
                {
                  v92 = __OFADD__(v303++, 1);
                  if (v92)
                  {
                    goto LABEL_138;
                  }

                  v94 = 0;
                  v93 = 1;
                  if (*(v88 + 16))
                  {
                    goto LABEL_24;
                  }

LABEL_29:

                  v97 = v273;
                  (*v302)(v273, 1, 1, v290);
LABEL_30:
                  sub_1927B4(v97, &qword_3405B0);
                  v78 = v284;
                  goto LABEL_12;
                }
              }
            }
          }

LABEL_12:
          v87 += 8;
          if (!--v83)
          {
            goto LABEL_45;
          }
        }
      }

      v303 = 0;
LABEL_45:
      sub_19A0F8(v297, v298);
      v73 = v300;
      v75 = v299;
    }

    else
    {
      v84 = 0;
      v303 = 0;
    }

    v119 = v277;
    sub_1EDE94();
    sub_19A580(&qword_341CB0, &type metadata accessor for Date);
    v120 = v290;
    v121 = sub_1EEEB4();
    v122 = *(v275 + 8);
    v122(v119, v120);
    if ((v121 & 1) == 0)
    {
      sub_1EDED4();
    }

    v123 = v277;
    sub_1EDE94();
    v124 = v290;
    v125 = sub_1EEEB4();
    v122(v123, v124);
    if ((v125 & 1) == 0)
    {
      sub_1EDED4();
    }

    result = v303;
    v126 = v278;
    if (v303 > 0x7FFFFFFF)
    {
LABEL_135:
      __break(1u);
    }

    else if (v84 >= 0xFFFFFFFF80000000 && v303 >= 0xFFFFFFFF80000000)
    {
      if (v84 <= 0x7FFFFFFF)
      {
        v127 = v270;
        sub_1EE0E4();
        v122(v283, v124);
        v122(v279, v124);
        sub_1927B4(v126, &qword_3403C0);
        v75(v127, 0, 1, v73);
        sub_19A61C(v127, v126, &qword_3403C0);
        return sub_19A61C(v276, v78, &qword_3403B0);
      }

      goto LABEL_137;
    }

    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_198C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v7 = sub_18AFC0(&qword_3403C0);
  __chkstk_darwin(v7 - 8);
  v28 = &v27 - v8;
  v9 = sub_18AFC0(&qword_3403B0);
  __chkstk_darwin(v9 - 8);
  v27 = &v27 - v10;
  v11 = sub_18AFC0(&qword_3405A8);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_19A4B0(a1, &v27 - v16, &qword_3403B0);
  sub_19A4B0(a2, &v17[*(v12 + 56)], &qword_3403C0);
  sub_19A4B0(v17, v15, &qword_3405A8);
  v18 = *(v12 + 56);
  v19 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastReadingGoalsData;
  swift_beginAccess();
  sub_19A074(v15, v4 + v19, &qword_3403B0);
  swift_endAccess();
  sub_1927B4(&v15[v18], &qword_3403C0);
  sub_19A4B0(v17, v15, &qword_3405A8);
  v20 = *(v12 + 56);
  v21 = OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastBooksGoalsData;
  swift_beginAccess();
  sub_19A074(&v15[v20], v4 + v21, &qword_3403C0);
  swift_endAccess();
  sub_1927B4(v15, &qword_3403B0);
  sub_1EE0A4();
  v22 = sub_1EE094();
  v23 = v27;
  sub_19A4B0(v4 + v19, v27, &qword_3403B0);
  v24 = v4 + v21;
  v25 = v28;
  sub_19A4B0(v24, v28, &qword_3403C0);
  sub_1EE064();

  sub_1927B4(v25, &qword_3403C0);
  sub_1927B4(v23, &qword_3403B0);
  return sub_1927B4(v17, &qword_3405A8);
}

uint64_t ReadingGoalsAnalytics.deinit()
{

  sub_1927B4(v0 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastReadingGoalsData, &qword_3403B0);
  sub_1927B4(v0 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_lastBooksGoalsData, &qword_3403C0);

  sub_18FBF0(v0 + OBJC_IVAR____TtC8BookCore21ReadingGoalsAnalytics_analyticsSessionHosting);

  return v0;
}

uint64_t ReadingGoalsAnalytics.__deallocating_deinit()
{
  ReadingGoalsAnalytics.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_19907C(_OWORD *a1)
{
  v14 = a1;
  v13 = sub_1EF134();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1EF104();
  __chkstk_darwin(v5);
  v6 = sub_1EEDE4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1997F8();
  v12[1] = "BATrackerSessionChanged";
  v12[2] = v7;
  sub_1EEDA4();
  v15 = &_swiftEmptyArrayStorage;
  sub_19A580(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_18AFC0(&qword_340658);
  sub_19A5C8(&qword_340660, &qword_340658);
  sub_1EF454();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v8 = sub_1EF174();
  v9 = v14;
  v10 = v14[1];
  *(v1 + 16) = *v14;
  *(v1 + 32) = v10;
  *(v1 + 48) = *(v9 + 4);
  *(v1 + 56) = v8;
  return v1;
}

uint64_t sub_1992E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v13 = sub_1EF134();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EF104();
  __chkstk_darwin(v7);
  v8 = sub_1EEDE4();
  __chkstk_darwin(v8 - 8);
  v12 = *(*v3 + 96);
  v9 = sub_1997F8();
  v11[0] = "BATrackerSessionChanged";
  v11[1] = v9;
  sub_1EEDA4();
  v17 = &_swiftEmptyArrayStorage;
  sub_19A580(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_18AFC0(&qword_340658);
  sub_19A5C8(&qword_340660, &qword_340658);
  sub_1EF454();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v3 + v12) = sub_1EF174();
  sub_19A61C(v14, v3 + *(*v3 + 88), v15);
  return v3;
}

uint64_t sub_199580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_19A518(v4, v5);
}

uint64_t sub_1995EC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_1996E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_19974C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_199764@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 88);
  swift_beginAccess();
  return sub_19A4B0(v2 + v5, a2, a1);
}

unint64_t sub_1997F8()
{
  result = qword_340388;
  if (!qword_340388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_340388);
  }

  return result;
}

uint64_t sub_199844()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19987C()
{
  v1 = sub_1EE464();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_199970()
{
  v1 = *(sub_1EE464() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_194F3C(v4, v5, v0 + v3, v6);
}

uint64_t sub_199A00(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_199A54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_199A9C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_199B94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t type metadata accessor for ReadingGoalsAnalytics()
{
  result = qword_3403F8;
  if (!qword_3403F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199C60()
{
  sub_19A020(319, &qword_340408, &type metadata accessor for ReadingGoalsData);
  if (v0 <= 0x3F)
  {
    sub_19A020(319, &unk_340410, &type metadata accessor for BooksGoalsData);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19A020(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1EF414();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19A074(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_18AFC0(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A0F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_19A190(uint64_t a1)
{
  v2 = sub_1EDF74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_18AFC0(&qword_3405F0);
    v9 = sub_1EF544();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_19A580(&qword_3405F8, &type metadata accessor for Calendar.Component);
      v16 = sub_1EEE84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_19A580(&unk_340600, &type metadata accessor for Calendar.Component);
          v23 = sub_1EEEB4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_19A4B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_18AFC0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A518(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_19A580(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A5C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_199A00(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A61C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_18AFC0(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A70C()
{
  v0 = sub_1EEAF4();
  sub_19C688(v0, qword_340670);
  sub_19C418(v0, qword_340670);
  return sub_1EEAE4();
}

uint64_t sub_19A7AC(uint64_t result, __int16 a2)
{
  v3 = (*&v2[OBJC_IVAR___BCFrontmostWindowTracker_state] == 0) & (v2[OBJC_IVAR___BCFrontmostWindowTracker_state + 8] & v2[OBJC_IVAR___BCFrontmostWindowTracker_state + 9]);
  if (result || (a2 & 1) == 0)
  {
    if (((*&v2[OBJC_IVAR___BCFrontmostWindowTracker_state] == 0) & (v2[OBJC_IVAR___BCFrontmostWindowTracker_state + 8] & v2[OBJC_IVAR___BCFrontmostWindowTracker_state + 9])) == 0)
    {
      return result;
    }
  }

  else if (v3 == (a2 & 0x100) >> 8)
  {
    return result;
  }

  if (qword_33F908 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEAF4();
  sub_19C418(v4, qword_340670);
  v5 = v2;
  v6 = sub_1EEAD4();
  v7 = sub_1EF0B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "%@: is frontmost => %{BOOL}d", v8, 0x12u);
    sub_1927B4(v9, &qword_340320);
  }

  v11 = &v5[OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged];
  result = swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {

    v12(v3);
    return sub_19C408(v12);
  }

  return result;
}

uint64_t FrontmostWindowTracker.onFrontmostChanged.getter()
{
  v1 = (v0 + OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged);
  swift_beginAccess();
  v2 = *v1;
  sub_19C3F8(*v1);
  return v2;
}

uint64_t FrontmostWindowTracker.onFrontmostChanged.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_19C408(v6);
}

uint64_t sub_19AC3C@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19C680;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19C3F8(v4);
}

uint64_t sub_19ACDC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19C678;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_19C3F8(v3);
  return sub_19C408(v8);
}

char *FrontmostWindowTracker.init(window:uiApplication:appKitBundle:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___BCFrontmostWindowTracker_state];
  *v8 = -1;
  *(v8 + 4) = 0;
  v9 = &v3[OBJC_IVAR___BCFrontmostWindowTracker_onFrontmostChanged];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v3[OBJC_IVAR___BCFrontmostWindowTracker_appKitBundle] = a3;
  v10 = objc_allocWithZone(type metadata accessor for FrontmostApplicationTracker());
  v11 = a2;
  *&v3[OBJC_IVAR___BCFrontmostWindowTracker_frontmostTracker] = FrontmostApplicationTracker.init(uiApplication:appKitBundle:)(v11, a3);
  *&v3[OBJC_IVAR___BCFrontmostWindowTracker_window] = a1;
  v52.receiver = v3;
  v52.super_class = ObjectType;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v52, "init");
  v14 = [v12 windowScene];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() defaultCenter];
    [v16 addObserver:v13 selector:"handleSceneStateNotification:" name:UISceneDidActivateNotification object:v15];
    [v16 addObserver:v13 selector:"handleSceneStateNotification:" name:UISceneDidEnterBackgroundNotification object:v15];
    v17 = [v15 activationState];
  }

  else
  {
    if (qword_33F908 != -1)
    {
      swift_once();
    }

    v18 = sub_1EEAF4();
    sub_19C418(v18, qword_340670);
    v19 = v12;
    v20 = v13;
    v16 = sub_1EEAD4();
    v21 = sub_1EF0A4();

    if (os_log_type_enabled(v16, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412546;
      *(v22 + 4) = v20;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v20;
      v23[1] = v19;
      v24 = v19;
      v25 = v20;
      _os_log_impl(&dword_0, v16, v21, "%@: Window %@ has no window scene!", v22, 0x16u);
      sub_18AFC0(&qword_340320);
      swift_arrayDestroy();
    }

    v17 = 0;
  }

  *&v13[OBJC_IVAR___BCFrontmostWindowTracker_state] = v17;
  if (a3)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [ObjCClassFromMetadata addMainObserver:v13 didBecomeSelector:"handleMainWindowNotification:" didResignSelector:"handleMainWindowNotification:" window:v12];
    v27 = [ObjCClassFromMetadata isMainWindow:v12];
    v13[OBJC_IVAR___BCFrontmostWindowTracker_state + 8] = v27;
  }

  else
  {
    v13[OBJC_IVAR___BCFrontmostWindowTracker_state + 8] = 1;
  }

  v28 = OBJC_IVAR___BCFrontmostWindowTracker_frontmostTracker;
  v29 = *&v13[OBJC_IVAR___BCFrontmostWindowTracker_frontmostTracker];
  v30 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v31 = &v29[OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged];
  swift_beginAccess();
  v32 = *v31;
  *v31 = sub_19C488;
  v31[1] = v30;
  v33 = v29;

  sub_19C408(v32);

  v34 = 0;
  v35 = *&v13[v28] + OBJC_IVAR___BCFrontmostApplicationTracker_state;
  if (!*v35 && *(v35 + 8) && (*(v35 + 9) & 1) == 0)
  {
    v34 = (*(v35 + 10) | *(v35 + 11)) ^ 1;
  }

  v36 = &v13[OBJC_IVAR___BCFrontmostWindowTracker_state];
  v13[OBJC_IVAR___BCFrontmostWindowTracker_state + 9] = v34 & 1;
  if (qword_33F908 != -1)
  {
    swift_once();
  }

  v37 = sub_1EEAF4();
  sub_19C418(v37, qword_340670);
  v38 = v12;
  v39 = v13;
  v40 = sub_1EEAD4();
  v41 = sub_1EF0B4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412546;
    *(v42 + 4) = v39;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v38;
    *v43 = v39;
    v43[1] = v38;
    v44 = v38;
    v45 = v39;
    _os_log_impl(&dword_0, v40, v41, "%@: window: %@", v42, 0x16u);
    sub_18AFC0(&qword_340320);
    swift_arrayDestroy();
  }

  v46 = v39;
  v47 = sub_1EEAD4();
  v48 = sub_1EF0B4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412546;
    *(v49 + 4) = v46;
    *v50 = v46;
    *(v49 + 12) = 1024;
    *(v49 + 14) = (*v36 == 0) & (v36[8] & v36[9]);

    _os_log_impl(&dword_0, v47, v48, "%@: initial is frontmost: %{BOOL}d", v49, 0x12u);
    sub_1927B4(v50, &qword_340320);
  }

  else
  {

    v38 = v46;
    v11 = v46;
  }

  return v46;
}

uint64_t sub_19B4C0()
{
  v1 = 0;
  v2 = *&v0[OBJC_IVAR___BCFrontmostWindowTracker_frontmostTracker] + OBJC_IVAR___BCFrontmostApplicationTracker_state;
  if (*v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 8) == 0;
  }

  if (!v3 && (*(v2 + 9) & 1) == 0)
  {
    v1 = (*(v2 + 10) | *(v2 + 11)) ^ 1;
  }

  if (qword_33F908 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEAF4();
  sub_19C418(v4, qword_340670);
  v5 = v0;
  v6 = sub_1EEAD4();
  v7 = sub_1EF0B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v1 & 1;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "%@: Application frontmost changed to %{BOOL}d", v8, 0x12u);
    sub_1927B4(v9, &qword_340320);
  }

  v11 = &v5[OBJC_IVAR___BCFrontmostWindowTracker_state];
  v12 = *&v5[OBJC_IVAR___BCFrontmostWindowTracker_state];
  v13 = v5[OBJC_IVAR___BCFrontmostWindowTracker_state + 8];
  v14 = v5[OBJC_IVAR___BCFrontmostWindowTracker_state + 9];
  v11[8] = v13;
  v11[9] = v1 & 1;
  if (v14)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return sub_19A7AC(v12, v15 | v13);
}

id FrontmostWindowTracker.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___BCFrontmostWindowTracker_frontmostTracker];
  v3 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged];
  swift_beginAccess();
  v4 = *v3;
  *v3 = 0;
  v3[1] = 0;
  v5 = v2;
  sub_19C408(v4);

  if (*&v0[OBJC_IVAR___BCFrontmostWindowTracker_appKitBundle])
  {
    [swift_getObjCClassFromMetadata() removeMainObserver:v0 window:*&v0[OBJC_IVAR___BCFrontmostWindowTracker_window]];
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v0];

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

id PPTConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_19B8B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1EDD64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD44();
  if (!v67[3])
  {
    sub_1927B4(v67, &qword_33F9D8);
    return;
  }

  sub_18FF7C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = v66;
  v9 = *&v1[OBJC_IVAR___BCFrontmostWindowTracker_window];
  v10 = [v9 windowScene];
  p_class_meths = &OBJC_PROTOCOL___BCTransactionContext.class_meths;
  v65 = v8;
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = v10;
  if (v10 == v8)
  {

LABEL_11:
    v17 = [v9 windowScene];
    if (!v17)
    {
      v62 = v7;
      v63 = v9;
      if (qword_33F908 != -1)
      {
        swift_once();
      }

      v26 = sub_1EEAF4();
      sub_19C418(v26, qword_340670);
      v27 = v2;
      v28 = v8;
      v17 = sub_1EEAD4();
      v29 = sub_1EF0A4();

      if (os_log_type_enabled(v17, v29))
      {
        v30 = swift_slowAlloc();
        v60 = v2;
        v31 = v30;
        v32 = swift_slowAlloc();
        *v31 = 138412802;
        *(v31 + 4) = v27;
        *(v31 + 12) = 2112;
        v33 = v29;
        v9 = v63;
        *(v31 + 14) = v63;
        *v32 = v27;
        v32[1] = v9;
        *(v31 + 22) = 2112;
        *(v31 + 24) = v28;
        v32[2] = v28;
        v34 = v27;
        v35 = v28;
        v36 = v9;
        _os_log_impl(&dword_0, v17, v33, "%@: window %@ no longer has a scene (was %@)", v31, 0x20u);
        sub_18AFC0(&qword_340320);
        swift_arrayDestroy();
        v8 = v65;
        p_class_meths = (&OBJC_PROTOCOL___BCTransactionContext + 32);

        v2 = v60;

        v7 = v62;
      }

      else
      {
        v7 = v62;
        v9 = v63;
      }
    }

    goto LABEL_18;
  }

  v63 = v9;
  v64 = v4;
  v61 = v5;
  if (qword_33F908 != -1)
  {
    swift_once();
  }

  v13 = sub_1EEAF4();
  sub_19C418(v13, qword_340670);
  v14 = v1;
  v15 = v12;
  v16 = v8;
  v17 = sub_1EEAD4();
  v18 = sub_1EF0A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v62 = v7;
    *v20 = 138413058;
    *(v20 + 4) = v14;
    *(v20 + 12) = 2112;
    v9 = v63;
    *(v20 + 14) = v63;
    *v21 = v14;
    v21[1] = v9;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v15;
    *(v20 + 32) = 2112;
    *(v20 + 34) = v16;
    v21[2] = v12;
    v21[3] = v16;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v9;
    _os_log_impl(&dword_0, v17, v18, "%@: window %@ changed to scene %@ (was %@)", v20, 0x2Au);
    sub_18AFC0(&qword_340320);
    swift_arrayDestroy();
    v7 = v62;

    v2 = v60;

    v17 = v23;
    v4 = v64;
    v8 = v65;
    v5 = v61;
    p_class_meths = (&OBJC_PROTOCOL___BCTransactionContext + 32);
  }

  else
  {

    v4 = v64;
    v8 = v65;
    v5 = v61;
    p_class_meths = (&OBJC_PROTOCOL___BCTransactionContext + 32);
    v9 = v63;
  }

LABEL_18:

  v37 = [v9 windowScene];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 activationState];
  }

  else
  {
    v39 = -1;
  }

  if (p_class_meths[289] != -1)
  {
    swift_once();
  }

  v40 = sub_1EEAF4();
  sub_19C418(v40, qword_340670);
  (*(v5 + 16))(v7, a1, v4);
  v41 = v2;
  v42 = sub_1EEAD4();
  v43 = sub_1EF0B4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v63 = v39;
    v45 = v44;
    v46 = swift_slowAlloc();
    v64 = v4;
    v47 = v46;
    v62 = swift_slowAlloc();
    v67[0] = v62;
    *v45 = 138412802;
    *(v45 + 4) = v41;
    *v47 = v41;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v63;
    *(v45 + 22) = 2080;
    v48 = v41;
    v49 = sub_1EDD34();
    v50 = sub_1EEF04();
    v52 = v51;

    (*(v5 + 8))(v7, v64);
    v53 = sub_1C554C(v50, v52, v67);

    *(v45 + 24) = v53;
    _os_log_impl(&dword_0, v42, v43, "%@: window scene state => %ld (%s)", v45, 0x20u);
    sub_1927B4(v47, &qword_340320);

    sub_18E310(v62);
    v8 = v65;

    v39 = v63;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v54 = &v41[OBJC_IVAR___BCFrontmostWindowTracker_state];
  v55 = v41[OBJC_IVAR___BCFrontmostWindowTracker_state + 8];
  v56 = v41[OBJC_IVAR___BCFrontmostWindowTracker_state + 9];
  v57 = *&v41[OBJC_IVAR___BCFrontmostWindowTracker_state];
  *v54 = v39;
  v54[8] = v55;
  v54[9] = v56;
  if (v56)
  {
    v58 = 256;
  }

  else
  {
    v58 = 0;
  }

  sub_19A7AC(v57, v58 | v55);
}

uint64_t sub_19BFCC(uint64_t a1)
{
  v3 = sub_1EDD64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v1[OBJC_IVAR___BCFrontmostWindowTracker_appKitBundle];
  if (result)
  {
    LODWORD(v8) = [swift_getObjCClassFromMetadata() isMainWindow:*&v1[OBJC_IVAR___BCFrontmostWindowTracker_window]];
    if (qword_33F908 != -1)
    {
      swift_once();
    }

    v9 = sub_1EEAF4();
    sub_19C418(v9, qword_340670);
    (*(v4 + 16))(v6, a1, v3);
    v10 = v1;
    v11 = sub_1EEAD4();
    v12 = sub_1EF0B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v13 = 138412802;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v8;
      *(v13 + 18) = 2080;
      v15 = v10;
      v16 = sub_1EDD34();
      v17 = sub_1EEF04();
      v28 = v8;
      v18 = v17;
      v20 = v19;

      (*(v4 + 8))(v6, v3);
      v8 = sub_1C554C(v18, v20, &v29);

      *(v13 + 20) = v8;
      LOBYTE(v8) = v28;
      _os_log_impl(&dword_0, v11, v12, "%@: window is-main => %{BOOL}d (%s)", v13, 0x1Cu);
      sub_1927B4(v26, &qword_340320);

      sub_18E310(v27);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v21 = &v10[OBJC_IVAR___BCFrontmostWindowTracker_state];
    v22 = *&v10[OBJC_IVAR___BCFrontmostWindowTracker_state];
    v23 = v10[OBJC_IVAR___BCFrontmostWindowTracker_state + 9];
    v24 = v10[OBJC_IVAR___BCFrontmostWindowTracker_state + 8];
    v21[8] = v8;
    v21[9] = v23;
    if (v23)
    {
      v25 = 256;
    }

    else
    {
      v25 = 0;
    }

    return sub_19A7AC(v22, v25 | v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19C308(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1EDD64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19C3F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19C408(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19C418(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19C450()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_19C488()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_19B4C0();
}

uint64_t initializeBufferWithCopyOfBuffer for FrontmostWindowTracker.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FrontmostWindowTracker.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FrontmostWindowTracker.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19C5E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19C628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19C640()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_19C688(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Atomic.mutate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 96));
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_199718;
  *(v8 + 24) = v7;
  v11[4] = sub_19CCC4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_199688;
  v11[3] = &unk_2D01F8;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t Atomic.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(_:)(a1);
  return v2;
}

uint64_t *Atomic.init(_:)(uint64_t a1)
{
  v13 = a1;
  v11 = *v1;
  v2 = v11;
  v12 = sub_1EF134();
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EF104();
  __chkstk_darwin(v6);
  v7 = sub_1EEDE4();
  __chkstk_darwin(v7 - 8);
  v10 = *(v2 + 96);
  sub_1997F8();
  sub_1EEDA4();
  v14 = &_swiftEmptyArrayStorage;
  sub_19CCE4();
  sub_18AFC0(&qword_340658);
  sub_19CD3C();
  sub_1EF454();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v1 + v10) = sub_1EF174();
  (*(*(*(v11 + 80) - 8) + 32))(v1 + *(*v1 + 88), v13);
  return v1;
}

uint64_t sub_19CBAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
}

uint64_t sub_19CC7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_19CCCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19CCE4()
{
  result = qword_340650;
  if (!qword_340650)
  {
    sub_1EF104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340650);
  }

  return result;
}

unint64_t sub_19CD3C()
{
  result = qword_340660;
  if (!qword_340660)
  {
    sub_199A00(&qword_340658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340660);
  }

  return result;
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_19CE84()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19CF98(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_19CFBC, 0, 0);
}

uint64_t sub_19CFBC()
{
  v1 = sub_1EE6B4();
  v3 = v2;
  v4 = objc_allocWithZone(BDSCRDTModelSyncVersionInfo);
  isa = sub_1EDE04().super.isa;
  v6 = [v4 initWithData:isa];

  sub_19D4D4(v1, v3);
  v0[21] = v6;
  v7 = v0[19];
  if (v7)
  {
    v7 = [objc_allocWithZone(BDSReadingHistoryUpdateInfo) initWithUpdate:v7];
  }

  v0[22] = v7;
  v8 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_19D1DC;
  v9 = swift_continuation_init();
  v0[17] = sub_18AFC0(&qword_340758);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_19D460;
  v0[13] = &unk_2D0300;
  v0[14] = v9;
  [v8 handleSyncFileChangeWithSyncVersionInfo:v6 updateInfo:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_19D1DC()
{

  return _swift_task_switch(sub_19D2BC, 0, 0);
}

uint64_t sub_19D2BC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3(v2);
}

id CRDTModelSyncVersion.toInfo()()
{
  v0 = sub_1EE6B4();
  v2 = v1;
  v3 = objc_allocWithZone(BDSCRDTModelSyncVersionInfo);
  isa = sub_1EDE04().super.isa;
  v5 = [v3 initWithData:isa];

  sub_19D4D4(v0, v2);
  return v5;
}

unint64_t sub_19D414()
{
  result = qword_341A60;
  if (!qword_341A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_341A60);
  }

  return result;
}

uint64_t sub_19D460(uint64_t a1, char a2)
{
  **(*(*sub_18E35C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_19D4D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ReadingHistoryServiceClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingHistoryServiceClient();
  return objc_msgSendSuper2(&v2, "init");
}

id ReadingHistoryServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingHistoryServiceClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t dispatch thunk of ReadingHistoryServiceClient.handleSyncFileChange(syncVersion:update:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(&stru_20.filesize + (swift_isaMask & *v2)) + **(&stru_20.filesize + (swift_isaMask & *v2)));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19D744;

  return v8(a1, a2);
}

uint64_t sub_19D744(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t UIViewController.firstVisibleChildViewController<A>(of:includePresented:)(uint64_t a1, char a2)
{
  if ([v2 bc_firstVisibleChildViewControllerOfClass:swift_getObjCClassFromMetadata() includePresented:a2 & 1])
  {
    sub_1EF444();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18FF14(v7);
    return 0;
  }
}

id UIViewController.ancestorViewController<A>(of:includePresenting:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_dynamicCastUnknownClass();
  if (v8)
  {
    v9 = v8;
    v10 = v4;
    return v9;
  }

  v11 = [v4 parentViewController];
  if (v11)
  {
    v12 = v11;
    v9 = UIViewController.ancestorViewController<A>(of:includePresenting:)(a1, a2 & 1, a3);

    return v9;
  }

  if ((a2 & 1) == 0)
  {
    return 0;
  }

  result = [v4 presentingViewController];
  if (result)
  {
    v14 = result;
    v9 = UIViewController.ancestorViewController<A>(of:includePresenting:)(a1, 1, a3);

    return v9;
  }

  return result;
}

id UIViewController.isWelcomeExperiencePresenting.getter()
{
  result = [v0 presentedViewController];
  if (result)
  {
    v2 = result;
    while (!swift_dynamicCastObjCProtocolConditional())
    {
      v3 = [v2 presentedViewController];

      v2 = v3;
      if (!v3)
      {
        return 0;
      }
    }

    return &dword_0 + 1;
  }

  return result;
}

Swift::Void __swiftcall UIViewController.dismissIfSafe(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v4 = [v1 presentedViewController];
  if (v4)
  {
    v5 = v4;
    while (!swift_dynamicCastObjCProtocolConditional())
    {
      v6 = [v5 presentedViewController];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_8;
  }

LABEL_5:
  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;
    v5 = [v7 presentingViewController];

    if (v5)
    {
      [v5 dismissViewControllerAnimated:animated completion:0];
LABEL_8:
    }
  }
}

uint64_t _AnyDefaultsValue.init(_:)@<X0>(Class *a1@<X8>)
{
  isa = sub_1EEE44().super.isa;

  *a1 = isa;
  return result;
}

{
  isa = sub_1EEE44().super.isa;

  *a1 = isa;
  return result;
}

uint64_t _AnyDefaultsValue.subscript.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1EEFB4();
  v6 = sub_1EEED4();

  v7 = [v5 valueForKeyPath:v6];

  if (v7)
  {
    sub_1EF444();
    swift_unknownObjectRelease();
    sub_19DE70(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_18AFC0(&qword_33F9D8);
  v8 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v8 ^ 1u, 1, a1);
}

_OWORD *sub_19DE70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_19DE80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19DEC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19DF10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19DF64()
{
  v1 = sub_18AFC0(&qword_340B18);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  v8 = type metadata accessor for ReadingAchievementsController.State(0);
  v9 = *(v7 + *(v8 + 20));
  if (*(v9 + 16) && (v10 = sub_1B0728(1u), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for Achievement();
    v15 = *(v14 - 8);
    sub_1AD1F4(v13 + *(v15 + 72) * v12, v6, type metadata accessor for Achievement);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for Achievement();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  swift_endAccess();
  type metadata accessor for Achievement();
  v16 = *(v14 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v6, 1, v14);
  v19 = sub_1927B4(v6, &qword_340B18);
  if (v18 == 1)
  {
    v20 = 0;
  }

  else
  {
    swift_beginAccess();
    v21 = *(v7 + *(v8 + 20));
    if (*(v21 + 16) && (v22 = sub_1B0728(0), (v23 & 1) != 0))
    {
      sub_1AD1F4(*(v21 + 56) + *(v16 + 72) * v22, v4, type metadata accessor for Achievement);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    (*(v16 + 56))(v4, v24, 1, v14);
    swift_endAccess();
    v20 = v17(v4, 1, v14) != 1;
    v19 = sub_1927B4(v4, &qword_340B18);
  }

  __chkstk_darwin(v19);
  *(&v26 - 16) = v20;
  return sub_1EE7F4();
}

uint64_t ReadingAchievementsController.__allocating_init(dataSource:goalsStateProvider:booksStateProvider:notifier:pendingReadingTimeProvider:currentTimeProvider:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  v51 = a8;
  v64 = a7;
  v50 = a6;
  v62 = a5;
  v49 = a4;
  v65 = a2;
  v66 = a3;
  v61 = a1;
  v63 = a9;
  v56 = sub_1EE464();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1EE584();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1EDEF4();
  v67 = *(v53 - 8);
  __chkstk_darwin(v53);
  v59 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1EF134();
  v68 = *(v58 - 8);
  __chkstk_darwin(v58);
  v48 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1EF104();
  __chkstk_darwin(v13);
  v14 = sub_1EEDE4();
  __chkstk_darwin(v14 - 8);
  v15 = swift_allocObject();
  v47[1] = sub_1928F4(0, &qword_340388);
  v47[4] = "BCWelcomeExperienceControlling";
  sub_1EEDB4();
  v69[0] = &_swiftEmptyArrayStorage;
  v47[3] = sub_1ACEB4(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  v47[2] = sub_18AFC0(&qword_340658);
  sub_19A5C8(&qword_340660, &qword_340658);
  sub_1EF454();
  v16 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v17 = *(v68 + 104);
  v68 += 104;
  v18 = v48;
  v17(v48, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
  *(v15 + 16) = sub_1EF174();
  sub_1EEDB4();
  v69[0] = &_swiftEmptyArrayStorage;
  sub_1EF454();
  v17(v18, v16, v58);
  *(v15 + 24) = sub_1EF174();
  *(v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions) = &_swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_timers) = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_isDataLoadedObservable;
  LOBYTE(v69[0]) = 0;
  sub_18AFC0(&qword_340820);
  swift_allocObject();
  *(v15 + v19) = sub_1EE7D4();
  v20 = v61;
  sub_19F5E0(v61, v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource);
  v21 = (v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_notifier);
  v22 = v62;
  v23 = v63;
  *v21 = v49;
  v21[1] = v22;
  v24 = (v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_pendingReadingTimeProvider);
  v25 = v64;
  *v24 = v50;
  v24[1] = v25;
  v26 = (v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_currentTimeProvider);
  v27 = v51;
  *v26 = v51;
  v26[1] = v23;

  v29 = v59;
  v27(v28);
  sub_18E35C(v20, v20[3]);
  v30 = v60;
  sub_1EE364();
  v31 = v65;
  sub_18E35C(v65, v65[3]);
  v32 = v52;
  sub_1EE7C4();
  v33 = sub_1EE454();
  (*(v54 + 8))(v32, v56);
  v34 = sub_1ABC34(&_swiftEmptyArrayStorage);
  v35 = v15 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  v36 = type metadata accessor for ReadingAchievementsController.State(0);
  v37 = v29;
  v38 = v53;
  (*(v67 + 16))(v35 + v36[6], v37, v53);
  v39 = v55;
  v40 = v57;
  (*(v55 + 16))(v35, v30, v57);
  *(v35 + v36[5]) = v34;
  *(v35 + v36[7]) = v33;
  v41 = v35 + v36[8];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v66[3];
  v43 = v66[4];
  sub_18E35C(v66, v42);
  (*(v43 + 8))(v42, v43);
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_1EE634();

  sub_18E35C(v31, v31[3]);
  sub_1EE7B4();
  sub_18E35C(v69, v69[3]);
  swift_allocObject();
  swift_weakInit();

  sub_1EE804();

  sub_18E310(v69);
  v44 = v61;
  sub_18E35C(v61, v61[3]);
  swift_allocObject();
  swift_weakInit();

  sub_1EE3B4();

  v45 = [objc_opt_self() defaultCenter];
  [v45 addObserver:v15 selector:"_handleSignificantDateChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];

  (*(v39 + 8))(v60, v40);
  (*(v67 + 8))(v59, v38);
  sub_18E310(v66);
  sub_18E310(v65);
  sub_18E310(v44);
  return v15;
}

uint64_t ReadingAchievementsController.init(dataSource:goalsStateProvider:booksStateProvider:notifier:pendingReadingTimeProvider:currentTimeProvider:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  v53 = a8;
  v67 = a7;
  v52 = a6;
  v65 = a5;
  v51 = a4;
  v68 = a2;
  v69 = a3;
  v64 = a1;
  v66 = a9;
  v58 = sub_1EE464();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1EE584();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1EDEF4();
  v70 = *(v55 - 8);
  __chkstk_darwin(v55);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1EF134();
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1EF104();
  __chkstk_darwin(v15);
  v16 = sub_1EEDE4();
  __chkstk_darwin(v16 - 8);
  v50[0] = sub_1928F4(0, &qword_340388);
  v50[3] = "BCWelcomeExperienceControlling";
  sub_1EEDB4();
  v71[0] = &_swiftEmptyArrayStorage;
  v50[2] = sub_1ACEB4(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_18AFC0(&qword_340658);
  sub_19A5C8(&qword_340660, &qword_340658);
  sub_1EF454();
  v17 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v18 = v12 + 104;
  v19 = *(v12 + 104);
  v50[1] = v18;
  v19(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
  *(v60 + 16) = sub_1EF174();
  sub_1EEDB4();
  v71[0] = &_swiftEmptyArrayStorage;
  sub_1EF454();
  v19(v14, v17, v61);
  v20 = sub_1EF174();
  v21 = v60;
  *(v60 + 24) = v20;
  *(v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions) = &_swiftEmptySetSingleton;
  *(v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_timers) = &_swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_isDataLoadedObservable;
  LOBYTE(v71[0]) = 0;
  sub_18AFC0(&qword_340820);
  swift_allocObject();
  *(v21 + v22) = sub_1EE7D4();
  v23 = v64;
  sub_19F5E0(v64, v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource);
  v24 = (v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_notifier);
  v25 = v65;
  v26 = v66;
  *v24 = v51;
  v24[1] = v25;
  v27 = (v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_pendingReadingTimeProvider);
  v28 = v67;
  *v27 = v52;
  v27[1] = v28;
  v29 = (v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_currentTimeProvider);
  v30 = v53;
  *v29 = v53;
  v29[1] = v26;

  v32 = v62;
  v30(v31);
  sub_18E35C(v23, v23[3]);
  v33 = v63;
  sub_1EE364();
  v34 = v68;
  sub_18E35C(v68, v68[3]);
  v35 = v54;
  sub_1EE7C4();
  v36 = sub_1EE454();
  (*(v56 + 8))(v35, v58);
  v37 = sub_1ABC34(&_swiftEmptyArrayStorage);
  v38 = v21 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  v39 = type metadata accessor for ReadingAchievementsController.State(0);
  v40 = v32;
  v41 = v55;
  (*(v70 + 16))(v38 + v39[6], v40, v55);
  v42 = v57;
  v43 = v59;
  (*(v57 + 16))(v38, v33, v59);
  *(v38 + v39[5]) = v37;
  *(v38 + v39[7]) = v36;
  v44 = v38 + v39[8];
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v69[3];
  v46 = v69[4];
  sub_18E35C(v69, v45);
  (*(v46 + 8))(v45, v46);
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_1EE634();

  sub_18E35C(v34, v34[3]);
  sub_1EE7B4();
  sub_18E35C(v71, v71[3]);
  swift_allocObject();
  swift_weakInit();

  sub_1EE804();

  sub_18E310(v71);
  v47 = v64;
  sub_18E35C(v64, v64[3]);
  swift_allocObject();
  swift_weakInit();

  sub_1EE3B4();

  v48 = [objc_opt_self() defaultCenter];
  [v48 addObserver:v21 selector:"_handleSignificantDateChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];

  (*(v42 + 8))(v63, v43);
  (*(v70 + 8))(v62, v41);
  sub_18E310(v69);
  sub_18E310(v68);
  sub_18E310(v47);
  return v21;
}

uint64_t sub_19F5E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19F644(uint64_t a1)
{
  v22 = a1;
  v1 = sub_1EED84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1EEDE4();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFC0(&qword_340B50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 16);
    v21 = v5;
    v20 = v13;

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v9 + 16))(v11, v22, v8);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v9 + 32))(v16 + v15, v11, v8);
    aBlock[4] = sub_1ADBA0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D0800;
    v17 = _Block_copy(aBlock);

    sub_1EEDA4();
    v24 = &_swiftEmptyArrayStorage;
    sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_19A5C8(&qword_3403A0, &qword_340398);
    sub_1EF454();
    v18 = v20;
    sub_1EF164();
    _Block_release(v17);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v7, v21);
  }

  return result;
}

uint64_t sub_19FA68(uint64_t a1)
{
  v22 = a1;
  v1 = sub_1EED84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1EEDE4();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFC0(&qword_340B40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 16);
    v21 = v5;
    v20 = v13;

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v9 + 16))(v11, v22, v8);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v9 + 32))(v16 + v15, v11, v8);
    aBlock[4] = sub_1ADAA4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D07B0;
    v17 = _Block_copy(aBlock);

    sub_1EEDA4();
    v24 = &_swiftEmptyArrayStorage;
    sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_19A5C8(&qword_3403A0, &qword_340398);
    sub_1EF454();
    v18 = v20;
    sub_1EF164();
    _Block_release(v17);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v7, v21);
  }

  return result;
}

uint64_t sub_19FE8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a2);
  }

  return result;
}

uint64_t sub_19FF00()
{
  v0 = sub_1EED84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1EEDE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 16);
    v14 = v1;
    v15 = v4;
    v13 = v9;

    v10 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_1ADA60;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D0760;
    v11 = _Block_copy(aBlock);

    sub_1EEDA4();
    v16 = &_swiftEmptyArrayStorage;
    sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_19A5C8(&qword_3403A0, &qword_340398);
    sub_1EF454();
    v12 = v13;
    sub_1EF164();
    _Block_release(v11);

    (*(v14 + 8))(v3, v0);
    (*(v5 + 8))(v7, v15);
  }

  return result;
}

uint64_t sub_1A0238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_1EDEF4();
  __chkstk_darwin(v3 - 8);
  v21 = sub_1EE684();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFC0(&qword_3405B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1EE5F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A4B0(a1, v9, &qword_3405B8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1927B4(v9, &qword_3405B8);
    v14 = type metadata accessor for Achievement();
    return (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1EE5E4();
    sub_1EE694();
    v16 = *(sub_18AFC0(&qword_340AE8) + 48);
    v17 = sub_1EE5D4();
    (*(v11 + 8))(v13, v10);
    v18 = v21;
    v19 = v22;
    *v22 = v17;
    (*(v4 + 32))(v19 + v16, v6, v18);
    v20 = type metadata accessor for Achievement();
    swift_storeEnumTagMultiPayload();
    return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }
}

uint64_t sub_1A057C()
{
  v1 = sub_1EED84();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1EEDE4();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AD89C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0670;
  v8 = _Block_copy(aBlock);

  sub_1EEDA4();
  v13 = &_swiftEmptyArrayStorage;
  sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1A0850(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1A0998()
{
  v1 = v0;
  v104 = sub_1EED84();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1EEDE4();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1EDF84();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFC0(&qword_340B28);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v81 - v8;
  v10 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v10 - 8);
  v90 = (&v81 - v11);
  v12 = sub_1EE584();
  v13 = *(v12 - 8);
  v108 = v12;
  v109 = v13;
  v14 = __chkstk_darwin(v12);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_1EDEF4();
  v107 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v81 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v82 = &v81 - v22;
  __chkstk_darwin(v21);
  v24 = &v81 - v23;
  v25 = type metadata accessor for ReadingAchievementsController.State(0);
  v93 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v106 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v27;
  __chkstk_darwin(v26);
  v29 = &v81 - v28;
  v30 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  v92 = v30;
  sub_1AD1F4(v0 + v30, v29, type metadata accessor for ReadingAchievementsController.State);
  v95 = swift_allocBox();
  v32 = v31;
  v96 = v29;
  sub_1AD1F4(v29, v31, type metadata accessor for ReadingAchievementsController.State);
  v33 = *(v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_currentTimeProvider);

  v33(v34);

  sub_18E35C((v1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource), *(v1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource + 24));
  v35 = v24;
  v37 = v107;
  v36 = v108;
  sub_1EE364();
  v38 = v109;
  (*(v109 + 24))(v32, v17, v36);
  v91 = v25;
  v39 = *(v25 + 24);
  v40 = v87;
  v41 = *(v37 + 24);
  v88 = v32;
  v105 = v18;
  v41(v32 + v39, v35, v18);
  v42 = *(v38 + 16);
  v98 = v17;
  v42(v9, v17, v36);
  (*(v38 + 56))(v9, 0, 1, v36);
  v110 = v1;
  v43 = (*(v1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_pendingReadingTimeProvider))(v35);
  v89 = v9;
  sub_19A4B0(v9, v40, &qword_340B28);
  v44 = (*(v38 + 48))(v40, 1, v36);
  v97 = v35;
  if (v44 == 1)
  {
    sub_1927B4(v89, &qword_340B28);
    sub_1927B4(v40, &qword_340B28);
    v45 = v90;
    *v90 = 0.0;
    *(v45 + 8) = 1;
  }

  else
  {
    v46 = v83;
    (*(v38 + 32))(v83, v40, v36);
    v47 = v43 + sub_1EE564();
    LODWORD(v87) = sub_1EE554();
    v48 = v84;
    sub_1EDF24();
    v49 = v81;
    sub_1EDF34();
    v50 = *(v85 + 8);
    v51 = v86;
    v50(v48, v86);
    sub_1EDF24();
    v52 = v82;
    sub_1EDE74();
    v50(v48, v51);
    v53 = *(v37 + 8);
    v54 = v105;
    v53(v49, v105);
    sub_1EDEA4();
    v56 = v55;
    v57 = sub_1EE574();
    v53(v52, v54);
    (*(v109 + 8))(v46, v108);
    sub_1927B4(v89, &qword_340B28);
    v58 = v57 - v47;
    if (v58 <= v56)
    {
      v45 = v90;
      if (v87 & 1 | (v47 >= v57))
      {
        *v90 = 0.0;
      }

      else
      {
        *v90 = v58;
      }

      *(v45 + 8) = 0;
    }

    else
    {
      v45 = v90;
      *v90 = 0.0;
      *(v45 + 8) = 1;
    }
  }

  v59 = type metadata accessor for Achievement();
  swift_storeEnumTagMultiPayload();
  (*(*(v59 - 8) + 56))(v45, 0, 1, v59);
  v60 = v88;
  sub_1AF134(v45, 0);
  sub_1EF084();
  sub_1928F4(0, &qword_341A60);
  v61 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2A5AF0;
  v63 = v106;
  sub_1AD1F4(v60, v106, type metadata accessor for ReadingAchievementsController.State);
  v64 = sub_1EEF54();
  v66 = v65;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = sub_1ACF5C();
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  sub_1EEAA4();

  sub_1AD1F4(v60, v63, type metadata accessor for ReadingAchievementsController.State);
  v67 = v92;
  v68 = v110;
  swift_beginAccess();
  sub_1AD25C(v63, v68 + v67);
  swift_endAccess();
  sub_19DF64();
  sub_1ACEFC(v63, type metadata accessor for ReadingAchievementsController.State);
  v69 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions;
  swift_beginAccess();
  if (*(*(v68 + v69) + 16))
  {
    sub_1A4738(0.0);
  }

  v92 = *(v110 + 24);
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = v96;
  v72 = v106;
  sub_1AD1F4(v96, v106, type metadata accessor for ReadingAchievementsController.State);
  v73 = (*(v93 + 80) + 24) & ~*(v93 + 80);
  v74 = (v94 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  *(v75 + 16) = v70;
  sub_1AD51C(v72, v75 + v73, type metadata accessor for ReadingAchievementsController.State);
  *(v75 + v74) = v95;
  aBlock[4] = sub_1ADC6C;
  aBlock[5] = v75;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0648;
  v76 = _Block_copy(aBlock);

  v77 = v99;
  sub_1EEDA4();
  v111 = &_swiftEmptyArrayStorage;
  sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  v78 = v101;
  v79 = v104;
  sub_1EF454();
  sub_1EF164();
  _Block_release(v76);
  (*(v103 + 8))(v78, v79);
  (*(v100 + 8))(v77, v102);
  (*(v109 + 8))(v98, v108);
  (*(v107 + 8))(v97, v105);
  sub_1ACEFC(v71, type metadata accessor for ReadingAchievementsController.State);
}

uint64_t sub_1A1710()
{
  v1 = v0;
  v2 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v2 - 8);
  v4 = (&v30 - v3);
  v5 = type metadata accessor for ReadingAchievementsController.State(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  sub_18AFC0(&qword_340B50);
  result = sub_1EE644();
  v15 = v35;
  if (v35 != 1)
  {
    v30 = v36;
    v31 = v34;
    v16 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
    swift_beginAccess();
    v32 = v16;
    v33 = v1;
    sub_1AD1F4(v1 + v16, v13, type metadata accessor for ReadingAchievementsController.State);
    result = sub_1AD1F4(v13, v11, type metadata accessor for ReadingAchievementsController.State);
    if (v15)
    {
      v17 = *(v15 + 16);
      result = sub_19A0F8(v31, v15);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v11[*(v5 + 32)];
    *v18 = v17;
    v18[8] = 0;
    v19 = *&v13[*(v5 + 28)];
    v20 = __OFSUB__(v19, v17);
    v21 = v19 - v17;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      *v4 = v21 & ~(v21 >> 63);
      v22 = type metadata accessor for Achievement();
      swift_storeEnumTagMultiPayload();
      (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
      sub_1AF134(v4, 1);
      sub_1EF084();
      sub_1928F4(0, &qword_341A60);
      v23 = sub_1EF404();
      sub_18AFC0(&qword_340AF0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2A5AF0;
      sub_1AD1F4(v11, v8, type metadata accessor for ReadingAchievementsController.State);
      v25 = sub_1EEF54();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1ACF5C();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_1EEAA4();

      sub_1AD1F4(v11, v8, type metadata accessor for ReadingAchievementsController.State);
      v28 = v32;
      v29 = v33;
      swift_beginAccess();
      sub_1AD25C(v8, v29 + v28);
      swift_endAccess();
      sub_19DF64();
      sub_1ACEFC(v8, type metadata accessor for ReadingAchievementsController.State);
      sub_1ACEFC(v11, type metadata accessor for ReadingAchievementsController.State);
      return sub_1ACEFC(v13, type metadata accessor for ReadingAchievementsController.State);
    }
  }

  return result;
}

uint64_t sub_1A1AD4(uint64_t a1)
{
  v81 = a1;
  v2 = sub_1EED84();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1EEDE4();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_18AFC0(&qword_340B40);
  v74 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v61 - v5;
  v6 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v6 - 8);
  v62 = (&v61 - v7);
  v8 = sub_1EE464();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1EE414();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReadingAchievementsController.State(0);
  v64 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v17;
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v21 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  v75 = v1;
  v73 = v21;
  sub_1AD1F4(v1 + v21, v20, type metadata accessor for ReadingAchievementsController.State);
  v76 = swift_allocBox();
  v23 = v22;
  sub_1AD1F4(v20, v22, type metadata accessor for ReadingAchievementsController.State);
  sub_1EE644();
  sub_1EE404();
  v24 = *(v12 + 8);
  v66 = v11;
  v25 = v11;
  v26 = v79;
  v63 = v12 + 8;
  (v24)(v14, v25);
  v27 = v18;
  v28 = sub_1EE454();
  result = v77[1](v10, v78);
  *(v23 + *(v15 + 28)) = v28;
  v30 = *(v15 + 32);
  v78 = v20;
  v31 = &v20[v30];
  if ((v31[8] & 1) == 0)
  {
    v32 = *v31;
    v33 = __OFSUB__(v28, v32);
    v34 = v28 - v32;
    if (v33)
    {
      __break(1u);
      return result;
    }

    v35 = v62;
    *v62 = v34 & ~(v34 >> 63);
    v36 = type metadata accessor for Achievement();
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    sub_1AF134(v35, 1);
  }

  v77 = v24;
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v37 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2A5AF0;
  sub_1AD1F4(v23, v27, type metadata accessor for ReadingAchievementsController.State);
  v39 = sub_1EEF54();
  v40 = v23;
  v42 = v41;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_1ACF5C();
  *(v38 + 32) = v39;
  *(v38 + 40) = v42;
  sub_1EEAA4();

  sub_1AD1F4(v40, v27, type metadata accessor for ReadingAchievementsController.State);
  v43 = v75;
  v44 = v73;
  swift_beginAccess();
  sub_1AD25C(v27, v43 + v44);
  swift_endAccess();
  sub_19DF64();
  sub_1ACEFC(v27, type metadata accessor for ReadingAchievementsController.State);
  v45 = v74;
  v46 = v26;
  v47 = v26;
  v48 = v80;
  (*(v74 + 16))(v47, v81, v80);
  if ((*(v45 + 88))(v46, v48) == enum case for ObservableContainer.Event.change<A>(_:))
  {
    (*(v45 + 96))(v46, v48);
    v49 = sub_18AFC0(&qword_340B48);
    v50 = v66;
    v51 = v77;
    (v77)(&v46[*(v49 + 48)], v66);
    (v51)(v46, v50);
    v81 = *(v43 + 24);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = v78;
    sub_1AD1F4(v78, v27, type metadata accessor for ReadingAchievementsController.State);
    v54 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v55 = (v65 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v52;
    sub_1AD51C(v27, v56 + v54, type metadata accessor for ReadingAchievementsController.State);
    *(v56 + v55) = v76;
    aBlock[4] = sub_1ADC6C;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D05F8;
    v57 = _Block_copy(aBlock);

    v58 = v67;
    sub_1EEDA4();
    v82 = &_swiftEmptyArrayStorage;
    sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_19A5C8(&qword_3403A0, &qword_340398);
    v59 = v69;
    v60 = v72;
    sub_1EF454();
    sub_1EF164();
    _Block_release(v57);
    (*(v71 + 8))(v59, v60);
    (*(v68 + 8))(v58, v70);
    sub_1ACEFC(v53, type metadata accessor for ReadingAchievementsController.State);
  }

  else
  {
    sub_1ACEFC(v78, type metadata accessor for ReadingAchievementsController.State);
    (*(v45 + 8))(v46, v48);
  }
}

uint64_t sub_1A24B8()
{
  v152 = sub_1EED84();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1EEDE4();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v147 = &v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_18AFC0(&qword_340B20);
  __chkstk_darwin(v161);
  v160 = &v137 - v3;
  v142 = sub_1EDF84();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFC0(&qword_340B18);
  v6 = __chkstk_darwin(v5 - 8);
  v153 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v162 = &v137 - v9;
  v10 = __chkstk_darwin(v8);
  v159 = (&v137 - v11);
  __chkstk_darwin(v10);
  v158 = (&v137 - v12);
  v176 = type metadata accessor for ReadingAchievementsController.State(0);
  v145 = *(v176 - 8);
  v13 = __chkstk_darwin(v176);
  v170 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v14;
  __chkstk_darwin(v13);
  v178 = &v137 - v15;
  v16 = sub_18AFC0(&qword_3405B8);
  __chkstk_darwin(v16 - 8);
  v177 = &v137 - v17;
  v18 = sub_18AFC0(&qword_340B28);
  v19 = __chkstk_darwin(v18 - 8);
  v157 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v164 = (&v137 - v22);
  __chkstk_darwin(v21);
  v171 = &v137 - v23;
  v155 = sub_1EE504();
  v175 = *(v155 - 8);
  v24 = __chkstk_darwin(v155);
  v156 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v154 = &v137 - v26;
  v174 = sub_1EE584();
  v173 = *(v174 - 8);
  v27 = __chkstk_darwin(v174);
  v139 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v167 = &v137 - v29;
  v30 = sub_18AFC0(&qword_340330);
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v137 - v35;
  v172 = sub_1EE544();
  v166 = *(v172 - 8);
  v37 = __chkstk_darwin(v172);
  v163 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v38;
  __chkstk_darwin(v37);
  v40 = &v137 - v39;
  v41 = sub_1EDEF4();
  v179 = *(v41 - 8);
  v180 = v41;
  v42 = __chkstk_darwin(v41);
  v165 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v138 = &v137 - v45;
  v143 = v46;
  __chkstk_darwin(v44);
  v48 = &v137 - v47;
  v49 = *(v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_currentTimeProvider);

  v49(v50);

  v168 = v0;
  v51 = (v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource);
  sub_18E35C(v51, v51[3]);
  sub_1EE354();
  sub_1EE534();
  (*(v31 + 104))(v34, enum case for ModelState.LoadedState.ready<A>(_:), v30);
  sub_1EE6A4();
  sub_1ACEB4(&qword_340348, &type metadata accessor for ReadingHistoryModel);
  sub_1ACEB4(&qword_340350, &type metadata accessor for ReadingHistoryModel);
  v52 = sub_1EE3C4();
  v53 = *(v31 + 8);
  v53(v34, v30);
  v53(v36, v30);
  if ((v52 & 1) == 0)
  {
    (*(v166 + 8))(v40, v172);
    return (*(v179 + 8))(v48, v180);
  }

  v169 = v48;
  v54 = v154;
  sub_1EE524();
  v55 = v171;
  sub_1EE4E4();
  v56 = *(v175 + 8);
  v57 = v155;
  v175 += 8;
  v56(v54, v155);
  v58 = v173;
  v59 = *(v173 + 48);
  v60 = v174;
  v61 = v59(v55, 1, v174);
  v137 = v59;
  if (v61 == 1)
  {
    sub_18E35C(v51, v51[3]);
    v62 = v169;
    v63 = v167;
    sub_1EE364();
    if (v59(v171, 1, v60) != 1)
    {
      sub_1927B4(v171, &qword_340B28);
    }
  }

  else
  {
    v63 = v167;
    (*(v58 + 32))(v167, v171, v60);
    v62 = v169;
  }

  v65 = v156;
  v171 = v40;
  sub_1EE524();
  sub_1EE4F4();
  v56(v65, v57);
  v66 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  v67 = v168;
  swift_beginAccess();
  v155 = v66;
  v68 = v67 + v66;
  v69 = v178;
  sub_1AD1F4(v68, v178, type metadata accessor for ReadingAchievementsController.State);
  v70 = v176;
  v156 = swift_allocBox();
  v72 = v71;
  sub_1AD1F4(v69, v71, type metadata accessor for ReadingAchievementsController.State);
  (*(v58 + 24))(v72, v63, v60);
  v73 = *(v70 + 24);
  v74 = *(v179 + 24);
  v154 = v72;
  v74(&v72[v73], v62, v180);
  v75 = v164;
  (*(v58 + 16))(v164, v63, v60);
  (*(v58 + 56))(v75, 0, 1, v60);
  v76 = (*(v67 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_pendingReadingTimeProvider))(v62);
  v77 = v157;
  sub_19A4B0(v75, v157, &qword_340B28);
  if (v137(v77, 1, v60) == 1)
  {
    sub_1927B4(v75, &qword_340B28);
    sub_1927B4(v77, &qword_340B28);
    v78 = v158;
    *v158 = 0.0;
    *(v78 + 8) = 1;
  }

  else
  {
    v79 = v139;
    (*(v58 + 32))(v139, v77, v60);
    v80 = v76 + sub_1EE564();
    LODWORD(v175) = sub_1EE554();
    v81 = v140;
    sub_1EDF24();
    v82 = v165;
    sub_1EDF34();
    v83 = *(v141 + 8);
    v84 = v142;
    v83(v81, v142);
    sub_1EDF24();
    v85 = v138;
    sub_1EDE74();
    v83(v81, v84);
    v86 = v180;
    v87 = *(v179 + 8);
    v87(v82, v180);
    sub_1EDEA4();
    v89 = v88;
    v90 = sub_1EE574();
    v87(v85, v86);
    (*(v58 + 8))(v79, v60);
    sub_1927B4(v164, &qword_340B28);
    v91 = v90 - v80;
    if (v91 <= v89)
    {
      v78 = v158;
      if (v175 & 1 | (v80 >= v90))
      {
        *v158 = 0.0;
      }

      else
      {
        *v158 = v91;
      }

      *(v78 + 8) = 0;
    }

    else
    {
      v78 = v158;
      *v158 = 0.0;
      *(v78 + 8) = 1;
    }
  }

  v92 = type metadata accessor for Achievement();
  swift_storeEnumTagMultiPayload();
  v157 = *(v92 - 8);
  v93 = *(v157 + 56);
  v158 = v92;
  v175 = v157 + 56;
  v164 = v93;
  (v93)(v78, 0, 1, v92);
  v94 = v154;
  sub_1AF134(v78, 0);
  type metadata accessor for ReadingAchievementsController(0);
  v95 = v159;
  sub_1A0238(v177, v159);
  sub_1AF134(v95, 2);
  LODWORD(v159) = sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v96 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_2A5D70;
  v98 = v170;
  sub_1AD1F4(v94, v170, type metadata accessor for ReadingAchievementsController.State);
  v99 = sub_1EEF54();
  v101 = v100;
  *(v97 + 56) = &type metadata for String;
  v102 = sub_1ACF5C();
  *(v97 + 64) = v102;
  *(v97 + 32) = v99;
  *(v97 + 40) = v101;
  v103 = v160;
  sub_1EE514();
  v104 = sub_1EE3E4();
  v106 = v105;
  sub_1927B4(v103, &qword_340B20);
  *(v97 + 96) = &type metadata for String;
  *(v97 + 104) = v102;
  *(v97 + 72) = v104;
  *(v97 + 80) = v106;
  sub_1EEAA4();

  sub_1AD1F4(v94, v98, type metadata accessor for ReadingAchievementsController.State);
  v107 = v168;
  v108 = v155;
  swift_beginAccess();
  sub_1AD25C(v98, v107 + v108);
  swift_endAccess();
  sub_19DF64();
  sub_1ACEFC(v98, type metadata accessor for ReadingAchievementsController.State);
  v109 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions;
  swift_beginAccess();
  if (*(*(v107 + v109) + 16))
  {
    sub_1A4738(0.0);
  }

  v110 = v179;
  v111 = *(v178 + *(v176 + 20));
  v112 = v174;
  v113 = v173;
  v114 = v172;
  v115 = v166;
  v116 = v180;
  if (*(v111 + 16) && (v117 = sub_1B0728(0), (v118 & 1) != 0))
  {
    v119 = v162;
    v120 = v158;
  }

  else
  {
    v121 = v162;
    v120 = v158;
    (v164)(v162, 1, 1, v158);
    sub_1927B4(v121, &qword_340B18);
    if (!*(v111 + 16) || (v117 = sub_1B0728(2u), (v122 & 1) == 0))
    {
      v136 = v153;
      (v164)(v153, 1, 1, v120);
      sub_1927B4(v177, &qword_3405B8);
      (*(v113 + 8))(v167, v112);
      (*(v115 + 8))(v171, v114);
      (*(v110 + 8))(v169, v116);
      sub_1927B4(v136, &qword_340B18);
      goto LABEL_25;
    }

    v119 = v153;
  }

  sub_1AD1F4(*(v111 + 56) + *(v157 + 72) * v117, v119, type metadata accessor for Achievement);
  (v164)(v119, 0, 1, v120);
  sub_1927B4(v119, &qword_340B18);
  v176 = *(v107 + 3);
  v175 = swift_allocObject();
  swift_weakInit();
  (*(v115 + 16))(v163, v171, v114);
  v168 = type metadata accessor for ReadingAchievementsController.State;
  sub_1AD1F4(v178, v170, type metadata accessor for ReadingAchievementsController.State);
  (*(v110 + 16))(v165, v169, v116);
  v123 = v114;
  v124 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v125 = v110;
  v126 = (v144 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
  v127 = (*(v145 + 80) + v126 + 8) & ~*(v145 + 80);
  v128 = v116;
  v129 = (v146 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (*(v125 + 80) + v129 + 8) & ~*(v125 + 80);
  v131 = swift_allocObject();
  (*(v115 + 32))(v131 + v124, v163, v123);
  *(v131 + v126) = v175;
  sub_1AD51C(v170, v131 + v127, v168);
  *(v131 + v129) = v156;
  (*(v125 + 32))(v131 + v130, v165, v128);
  aBlock[4] = sub_1AD584;
  aBlock[5] = v131;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D05A8;
  v132 = _Block_copy(aBlock);

  v133 = v147;
  sub_1EEDA4();
  v181 = &_swiftEmptyArrayStorage;
  sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  v134 = v149;
  v135 = v152;
  sub_1EF454();
  sub_1EF164();
  _Block_release(v132);
  (*(v151 + 8))(v134, v135);
  (*(v148 + 8))(v133, v150);
  sub_1927B4(v177, &qword_3405B8);
  (*(v173 + 8))(v167, v174);
  (*(v115 + 8))(v171, v172);
  (*(v179 + 8))(v169, v180);

LABEL_25:

  return sub_1ACEFC(v178, type metadata accessor for ReadingAchievementsController.State);
}

uint64_t sub_1A3C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v103 = a3;
  v105 = a2;
  v6 = sub_18AFC0(&qword_3405B8);
  __chkstk_darwin(v6 - 8);
  v97 = &v82 - v7;
  v98 = sub_1EDF84();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1EDEF4();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = __chkstk_darwin(v9);
  v92 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v82 - v12;
  v104 = sub_1EE584();
  v96 = *(v104 - 8);
  __chkstk_darwin(v104);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFC0(&qword_340B18);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v82 - v19;
  v21 = sub_18AFC0(&qword_340B30);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  v27 = sub_18AFC0(&qword_340B28);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v82 - v31;
  v33 = type metadata accessor for ReadingAchievementsController.State(0);
  __chkstk_darwin(v33 - 8);
  v102 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_18AFC0(&qword_340B20);
  __chkstk_darwin(v35 - 8);
  v37 = &v82 - v36;
  v38 = swift_projectBox();
  sub_1EE514();
  v39 = sub_18AFC0(&qword_340B38);
  result = (*(*(v39 - 8) + 48))(v37, 2, v39);
  if (result)
  {
    if (result == 1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        swift_beginAccess();
        v41 = v102;
        sub_1AD1F4(v38, v102, type metadata accessor for ReadingAchievementsController.State);
        sub_1A76B4(v103, v41, 0);

        return sub_1ACEFC(v41, type metadata accessor for ReadingAchievementsController.State);
      }
    }

    return result;
  }

  v91 = v14;
  v42 = v104;
  v90 = v37;
  v43 = v98;
  v85 = v24;
  v82 = v38;
  v44 = v32;
  sub_1EE4D4();
  v45 = sub_1EE504();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v88 = v46 + 48;
  v87 = v47;
  v48 = v47(v26, 1, v45);
  v86 = a1;
  v89 = v18;
  v84 = v45;
  v83 = v46;
  if (v48 == 1)
  {
    sub_1927B4(v26, &qword_340B30);
    v49 = v96;
    v50 = v42;
    (*(v96 + 56))(v44, 1, 1, v42);
    v51 = v43;
    v52 = v20;
  }

  else
  {
    sub_1EE4E4();
    (*(v46 + 8))(v26, v45);
    v51 = v43;
    v52 = v20;
    v50 = v42;
    v49 = v96;
  }

  v106 = &_swiftEmptyDictionarySingleton;
  sub_19A4B0(v44, v30, &qword_340B28);
  v53 = (*(v49 + 48))(v30, 1, v50);
  v54 = v100;
  v55 = v50;
  v56 = v49;
  v57 = v99;
  if (v53 == 1)
  {
    sub_1927B4(v30, &qword_340B28);
    *v52 = 0;
    *(v52 + 8) = 1;
    v58 = v85;
  }

  else
  {
    v98 = v44;
    (*(v56 + 32))(v91, v30, v55);
    v59 = sub_1EE564();
    LODWORD(v96) = sub_1EE554();
    sub_1EDF24();
    v60 = v92;
    sub_1EDF34();
    v61 = *(v54 + 8);
    v61(v57, v51);
    sub_1EDF24();
    v62 = v93;
    sub_1EDE74();
    v61(v57, v51);
    v63 = *(v94 + 8);
    v64 = v60;
    v65 = v95;
    v63(v64, v95);
    sub_1EDEA4();
    v67 = v66;
    v68 = v91;
    v69 = sub_1EE574();
    v63(v62, v65);
    (*(v56 + 8))(v68, v104);
    v70 = v69 - v59;
    if (v70 <= v67)
    {
      v58 = v85;
      v71 = v84;
      v72 = v83;
      if (v96 & 1 | (v59 >= v69))
      {
        *v52 = 0;
      }

      else
      {
        *v52 = v70;
      }

      *(v52 + 8) = 0;
      v44 = v98;
      goto LABEL_17;
    }

    *v52 = 0;
    *(v52 + 8) = 1;
    v58 = v85;
    v44 = v98;
  }

  v71 = v84;
  v72 = v83;
LABEL_17:
  v73 = type metadata accessor for Achievement();
  swift_storeEnumTagMultiPayload();
  (*(*(v73 - 8) + 56))(v52, 0, 1, v73);
  sub_1AF134(v52, 0);
  sub_1EE4D4();
  if (v87(v58, 1, v71) == 1)
  {
    sub_1927B4(v58, &qword_340B30);
    v74 = sub_1EE5F4();
    v75 = v97;
    (*(*(v74 - 8) + 56))(v97, 1, 1, v74);
  }

  else
  {
    v75 = v97;
    sub_1EE4F4();
    (*(v72 + 8))(v58, v71);
  }

  type metadata accessor for ReadingAchievementsController(0);
  v76 = v89;
  sub_1A0238(v75, v89);
  sub_1927B4(v75, &qword_3405B8);
  sub_1AF134(v76, 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v78 = v90;
  if (Strong)
  {
    v79 = v82;
    swift_beginAccess();
    v80 = v102;
    sub_1AD1F4(v79, v102, type metadata accessor for ReadingAchievementsController.State);
    sub_1A76B4(v103, v80, v106);

    sub_1ACEFC(v80, type metadata accessor for ReadingAchievementsController.State);
  }

  else
  {
  }

  sub_1927B4(v44, &qword_340B28);
  v81 = sub_1EE6A4();
  return (*(*(v81 - 8) + 8))(v78, v81);
}

uint64_t sub_1A4738(double a1)
{
  v3 = type metadata accessor for Achievement();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = (&v62 - v8);
  v10 = __chkstk_darwin(v7);
  v77 = &v62 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v70 = v15;
  __chkstk_darwin(v12);
  v76 = &v62 - v16;
  v17 = (v1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_timers);
  swift_beginAccess();
  v69 = v17;
  v18 = *v17;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if (!*(v18 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = sub_1EF494();

  if (v19)
  {
LABEL_3:
    sub_1A5BA4();
  }

LABEL_4:
  v71 = v1;
  v20 = v1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  v21 = *(v20 + *(type metadata accessor for ReadingAchievementsController.State(0) + 20));
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v68 = v81;
  v67 = NSRunLoopCommonModes;
  v78 = v21;

  v28 = 0;
  v66 = xmmword_2A5D70;
  v72 = xmmword_2A5AF0;
  while (v25)
  {
LABEL_13:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v76;
    sub_1AD1F4(*(v78 + 56) + *(v4 + 72) * (v30 | (v28 << 6)), v76, type metadata accessor for Achievement);
    sub_1AD51C(v31, v14, type metadata accessor for Achievement);
    v32 = v77;
    sub_1AD1F4(v14, v77, type metadata accessor for Achievement);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1ACEFC(v14, type metadata accessor for Achievement);
      result = sub_1ACEFC(v32, type metadata accessor for Achievement);
    }

    else
    {
      if (*(v32 + 8))
      {
        goto LABEL_25;
      }

      v33 = *v32;
      sub_1AD1F4(v14, v9, type metadata accessor for Achievement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v75 = v4;
      v73 = v9;
      if (!EnumCaseMultiPayload)
      {
        if ((v9[1] & 1) == 0 && *v9 <= 0.0)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v54 = *(sub_18AFC0(&qword_340AE8) + 48);
        v55 = sub_1EE684();
        (*(*(v55 - 8) + 8))(v9 + v54, v55);
        goto LABEL_27;
      }

      if (*v9 >= 1)
      {
LABEL_21:
        if (v33 + a1 <= 0.0)
        {
          v35 = 0.001;
        }

        else
        {
          v35 = v33 + a1;
        }

        v64 = sub_1EF084();
        sub_1928F4(0, &qword_341A60);
        v36 = sub_1EF404();
        sub_18AFC0(&qword_340AF0);
        v37 = swift_allocObject();
        *(v37 + 16) = v66;
        *(v37 + 56) = &type metadata for Double;
        *(v37 + 64) = &protocol witness table for Double;
        *(v37 + 32) = v35;
        v65 = v3;
        v63 = type metadata accessor for Achievement;
        v38 = v74;
        sub_1AD1F4(v14, v74, type metadata accessor for Achievement);
        v39 = sub_1EEF54();
        v41 = v40;
        *(v37 + 96) = &type metadata for String;
        *(v37 + 104) = sub_1ACF5C();
        *(v37 + 72) = v39;
        *(v37 + 80) = v41;
        sub_1EEAA4();

        v42 = swift_allocObject();
        swift_weakInit();
        v43 = v63;
        sub_1AD1F4(v14, v38, v63);
        v44 = (*(v75 + 80) + 24) & ~*(v75 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = v42;
        sub_1AD51C(v38, v45 + v44, v43);
        v81[2] = sub_1AD134;
        v81[3] = v45;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v81[0] = sub_18F0D8;
        v81[1] = &unk_2D04E0;
        v46 = _Block_copy(aBlock);
        v47 = objc_opt_self();

        v48 = v47;
        v9 = v73;
        v49 = [v48 timerWithTimeInterval:0 repeats:v46 block:v35];
        _Block_release(v46);

        v50 = [objc_opt_self() mainRunLoop];
        [v50 addTimer:v49 forMode:v67];

        swift_beginAccess();
        v51 = v49;
        v3 = v65;
        v52 = v51;
        sub_1A9014(&v79, v51);
        v53 = v79;
        swift_endAccess();

        v4 = v75;
LABEL_25:
        result = sub_1ACEFC(v14, type metadata accessor for Achievement);
      }

      else
      {
LABEL_27:
        LODWORD(v65) = sub_1EF084();
        sub_1928F4(0, &qword_341A60);
        v56 = sub_1EF404();
        sub_18AFC0(&qword_340AF0);
        v57 = swift_allocObject();
        *(v57 + 16) = v72;
        sub_1AD1F4(v14, v74, type metadata accessor for Achievement);
        v58 = v3;
        v59 = sub_1EEF54();
        v61 = v60;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = sub_1ACF5C();
        *(v57 + 32) = v59;
        *(v57 + 40) = v61;
        v3 = v58;
        sub_1EEAA4();

        v9 = v73;

        result = sub_1ACEFC(v14, type metadata accessor for Achievement);
        v4 = v75;
      }
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Achievement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v59 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_1AD1F4(a3, v18, type metadata accessor for Achievement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v60 = a1;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = 1;
      }

      else
      {
        v25 = *(sub_18AFC0(&qword_340AE8) + 48);
        v26 = sub_1EE684();
        (*(*(v26 - 8) + 8))(&v18[v25], v26);
        v24 = 2;
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = v22 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
    swift_beginAccess();
    v28 = *(v27 + *(type metadata accessor for ReadingAchievementsController.State(0) + 20));
    if (*(v28 + 16) && (v29 = sub_1B0728(v24), (v30 & 1) != 0))
    {
      sub_1AD1F4(*(v28 + 56) + *(v6 + 72) * v29, v15, type metadata accessor for Achievement);
      v31 = v15;
      v32 = v20;
      sub_1AD51C(v31, v20, type metadata accessor for Achievement);
      sub_1AD1F4(v20, v12, type metadata accessor for Achievement);
      v33 = swift_getEnumCaseMultiPayload();
      if (v33)
      {
        v34 = v60;
        if (v33 != 1)
        {
          v52 = *(sub_18AFC0(&qword_340AE8) + 48);
          v53 = sub_1EE684();
          (*(*(v53 - 8) + 8))(v12 + v52, v53);
LABEL_20:
          sub_1EF094();
          sub_1928F4(0, &qword_341A60);
          v54 = sub_1EF404();
          sub_18AFC0(&qword_340AF0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_2A5AF0;
          sub_1AD1F4(a3, v9, type metadata accessor for Achievement);
          v56 = sub_1EEF54();
          v58 = v57;
          *(v55 + 56) = &type metadata for String;
          *(v55 + 64) = sub_1ACF5C();
          *(v55 + 32) = v56;
          *(v55 + 40) = v58;
          sub_1EEAA4();

          return sub_1ACEFC(v32, type metadata accessor for Achievement);
        }

        if (*v12 < 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v34 = v60;
        if ((v12[1] & 1) == 0 && *v12 <= 0.0)
        {
          goto LABEL_20;
        }
      }

      v40 = *(v22 + 16);
      v41 = swift_allocObject();
      v41[2] = v22;
      v41[3] = v34;
      v41[4] = v32;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1AD1E8;
      *(v42 + 24) = v41;
      aBlock[4] = sub_1ADC78;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199688;
      aBlock[3] = &unk_2D0558;
      v43 = _Block_copy(aBlock);

      v44 = v34;

      dispatch_sync(v40, v43);
      _Block_release(v43);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if (v40)
      {
        __break(1u);
      }

      else
      {
        sub_1EF084();
        sub_1928F4(0, &qword_341A60);
        v45 = sub_1EF404();
        sub_18AFC0(&qword_340AF0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_2A5AF0;
        sub_1AD1F4(v32, v9, type metadata accessor for Achievement);
        v47 = sub_1EEF54();
        v48 = v32;
        v50 = v49;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_1ACF5C();
        *(v46 + 32) = v47;
        *(v46 + 40) = v50;
        sub_1EEAA4();

        v51 = *(v22 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_notifier);
        sub_1AD1F4(v48, v9, type metadata accessor for Achievement);
        v51(v9);
        sub_1ACEFC(v9, type metadata accessor for Achievement);

        sub_1ACEFC(v48, type metadata accessor for Achievement);
      }
    }

    else
    {
      sub_1EF094();
      sub_1928F4(0, &qword_341A60);
      v35 = sub_1EF404();
      sub_18AFC0(&qword_340AF0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2A5AF0;
      sub_1AD1F4(a3, v9, type metadata accessor for Achievement);
      v37 = sub_1EEF54();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_1ACF5C();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      sub_1EEAA4();
    }
  }

  return result;
}