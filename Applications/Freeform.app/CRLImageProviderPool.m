@interface CRLImageProviderPool
+ (CRLImageProviderPool)sharedPool;
+ (Class)p_providerClassForData:(id)a3;
- (BOOL)isBitmapAsset:(id)a3;
- (CRLImageProviderPool)init;
- (id)p_providerForData:(id)a3 temporary:(BOOL)a4 shouldValidate:(BOOL)a5;
- (unint64_t)p_estimatedSizeOfAllProviders;
- (unint64_t)p_imageProviderMemoryThreshold;
- (unint64_t)p_removeProvidersWithZeroInterest;
- (void)addInterestInProviderForAsset:(id)a3;
- (void)flushImageProviders;
- (void)flushProvidersToFreeMemoryIfNecessaryExcludingProvider:(id)a3;
- (void)p_applicationDidEnterBackground:(id)a3;
- (void)p_didReceiveMemoryWarning:(id)a3;
- (void)p_flushProvidersWithNoOneActivelyHoldingAReference;
- (void)p_flushRandomImageProvidersExcludingProvider:(id)a3;
- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)a3;
- (void)p_updateFileDescriptorLimit;
- (void)removeInterestInProviderForAsset:(id)a3;
- (void)willCullAssets:(id)a3;
@end

@implementation CRLImageProviderPool

+ (CRLImageProviderPool)sharedPool
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100241360;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A348C0 != -1)
  {
    dispatch_once(&qword_101A348C0, block);
  }

  v2 = qword_101A348B8;

  return v2;
}

- (CRLImageProviderPool)init
{
  v9.receiver = self;
  v9.super_class = CRLImageProviderPool;
  v2 = [(CRLImageProviderPool *)&v9 init];
  if (v2)
  {
    v3 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:0];
    mImageDataToImageProviderMap = v2->mImageDataToImageProviderMap;
    v2->mImageDataToImageProviderMap = v3;

    [(CRLImageProviderPool *)v2 p_updateFileDescriptorLimit];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[UIApplication sharedApplication];
    [v5 addObserver:v2 selector:"p_didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:v6];

    v7 = +[UIApplication sharedApplication];
    [v5 addObserver:v2 selector:"p_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:v7];

    [_TtC8Freeform15CRLAssetManager addCullingListener:v2];
  }

  return v2;
}

- (BOOL)isBitmapAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = sub_1000ECC48();
  v6 = [v4 conformsToType:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [objc_opt_class() p_providerClassForData:v3];
    v7 = [v8 isSubclassOfClass:objc_opt_class()];
  }

  return v7;
}

+ (Class)p_providerClassForData:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v4 identifier];
  v6 = sub_1000ECC48();
  v7 = [v4 conformsToType:v6];

  if (v7)
  {
    if (qword_101AD5C60 != -1)
    {
      sub_101338C04();
    }

    v8 = off_1019EEA08;
    if (os_log_type_enabled(off_1019EEA08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to render PICT, returning error provider.", buf, 2u);
    }

    goto LABEL_30;
  }

  if ([v5 crl_conformsToUTI:@"com.adobe.illustrator.ai-image"] || objc_msgSend(v4, "conformsToType:", UTTypeImage) || objc_msgSend(v4, "conformsToType:", UTTypePDF))
  {
    v9 = objc_opt_class();
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v25) = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100241B88;
    v21[3] = &unk_10184B8E0;
    v21[4] = buf;
    v21[5] = &v22;
    [v3 performInputStreamReadWithAccessor:v21];
    if (*(*&buf[8] + 24) == 1 && (v22 == 1178882085 ? (v14 = v23 == 45) : (v14 = 0), v14))
    {
      v9 = objc_opt_class();
    }

    else
    {
      v15 = [v3 newCGImage];
      if (v15)
      {
        v9 = objc_opt_class();
        CGImageRelease(v15);
      }

      else
      {
        v9 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
    if (!v9)
    {
LABEL_30:
      if (qword_101AD5C60 != -1)
      {
        sub_101338C18();
      }

      v10 = off_1019EEA08;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_101338C40(v3, v10);
      }

      v9 = 0;
      goto LABEL_35;
    }
  }

  if (qword_101AD5C60 != -1)
  {
    sub_101338BDC();
  }

  v10 = off_1019EEA08;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSStringFromClass(v9);
    if (v3)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
    }

    else
    {
      v13 = @"Nil";
    }

    v16 = [v3 filename];
    v17 = [v3 assetUUID];
    v18 = [v17 UUIDString];
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v25 = v16;
    v26 = 2114;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Returning provider of class %{public}@ for <%{public}@: filename=%@, assetUUID=%{public}@> ", buf, 0x2Au);

    if (v3)
    {
    }
  }

LABEL_35:

  v19 = v9;
  return v9;
}

- (id)p_providerForData:(id)a3 temporary:(BOOL)a4 shouldValidate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (!v7 || ([(__CFString *)v7 needsDownload]& 1) != 0)
  {
    if ([(__CFString *)v8 needsDownload])
    {
      if (qword_101AD5C60 != -1)
      {
        sub_101338D64();
      }

      v9 = off_1019EEA08;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
        }

        else
        {
          v11 = @"Nil";
        }

        v15 = [(__CFString *)v8 filename];
        v16 = [(__CFString *)v8 assetUUID];
        v17 = [v16 UUIDString];
        *buf = 138543874;
        v49 = v11;
        v50 = 2112;
        v51 = v15;
        v52 = 2114;
        v53 = v17;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping provider for image data needing download <%{public}@: filename=%@, assetUUID=%{public}@> ", buf, 0x20u);

        if (v8)
        {
        }
      }
    }

    v45 = 0;
    mOpenFileDescriptorLimit = 0;
    goto LABEL_22;
  }

  v12 = self;
  objc_sync_enter(v12);
  mOpenFileDescriptorLimit = v12->mOpenFileDescriptorLimit;
  v13 = [(NSMapTable *)v12->mImageDataToImageProviderMap objectForKeyedSubscript:v8];
  if (v13)
  {
    v45 = [(NSMapTable *)v12->mImageDataToImageProviderMap count];
    objc_sync_exit(v12);

    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  objc_sync_exit(v12);

  v14 = v12;
  objc_sync_enter(v14);
  v13 = [(NSMapTable *)v12->mImageDataToImageProviderMap objectForKeyedSubscript:v8];
  if (v13)
  {
    goto LABEL_13;
  }

  v36 = [objc_opt_class() p_providerClassForData:v8];
  if (v36)
  {
    v13 = [[v36 alloc] initWithImageData:v8];
    if (v13)
    {
      if (!a4)
      {
        [(NSMapTable *)v12->mImageDataToImageProviderMap setObject:v13 forKeyedSubscript:v8];
      }

LABEL_13:
      v45 = [(NSMapTable *)v12->mImageDataToImageProviderMap count];
      goto LABEL_14;
    }

    v45 = 0;
  }

  else
  {
    v45 = 0;
    v13 = 0;
  }

LABEL_14:
  objc_sync_exit(v14);

  if (v13)
  {
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_22:
  if (qword_101AD5C60 != -1)
  {
    sub_101338D78();
  }

  v18 = off_1019EEA08;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
    }

    else
    {
      v20 = @"Nil";
    }

    v21 = [(__CFString *)v8 filename];
    v22 = [(__CFString *)v8 assetUUID];
    v23 = [v22 UUIDString];
    *buf = 138543874;
    v49 = v20;
    v50 = 2112;
    v51 = v21;
    v52 = 2114;
    v53 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No provider found or determinable for data. Falling back to error. <%{public}@: filename=%@, assetUUID=%{public}@> ", buf, 0x20u);

    if (v8)
    {
    }
  }

  v13 = +[CRLErrorImageProvider sharedInstance];
  if (v5)
  {
LABEL_31:
    if (([v13 isError] & 1) == 0 && (objc_msgSend(v13, "isValid") & 1) == 0)
    {
      if (qword_101AD5C60 != -1)
      {
        sub_101338DA0();
      }

      v24 = off_1019EEA08;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        if (v8)
        {
          v40 = objc_opt_class();
          v39 = NSStringFromClass(v40);
        }

        else
        {
          v39 = @"Nil";
        }

        v41 = [(__CFString *)v8 filename];
        v42 = [(__CFString *)v8 assetUUID];
        v43 = [v42 UUIDString];
        *buf = 138544130;
        v49 = v38;
        v50 = 2114;
        v51 = v39;
        v52 = 2112;
        v53 = v41;
        v54 = 2114;
        *v55 = v43;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Provider of type %{public}@ says data is not valid <%{public}@: filename=%@, assetUUID=%{public}@> ", buf, 0x2Au);

        if (v8)
        {
        }
      }

      v25 = +[CRLErrorImageProvider sharedInstance];

      v13 = v25;
    }
  }

LABEL_37:
  if ([v13 isError])
  {
    if (qword_101AD5C60 != -1)
    {
      sub_101338DC8();
    }

    v26 = off_1019EEA08;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v27 = objc_opt_class();
        v44 = NSStringFromClass(v27);
      }

      else
      {
        v44 = @"Nil";
      }

      v28 = [(__CFString *)v8 filename];
      v29 = [(__CFString *)v8 needsDownload];
      v30 = [(__CFString *)v8 type];
      v31 = [(__CFString *)v8 assetUUID];
      v32 = [v31 UUIDString];
      v33 = [NSNumber numberWithUnsignedLongLong:[(__CFString *)v8 length]];
      v34 = [v33 stringValue];
      *buf = 138544898;
      v49 = v44;
      v50 = 2050;
      v51 = v8;
      v52 = 2112;
      v53 = v28;
      v54 = 1024;
      *v55 = v29;
      *&v55[4] = 2114;
      *&v55[6] = v30;
      v56 = 2114;
      v57 = v32;
      v58 = 2112;
      v59 = v34;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Returning error provider. <%{public}@: %{public}p filename=%@, needsDownload=%i, type=%{public}@, assetUUID=%{public}@, length=%@> ", buf, 0x44u);

      if (v8)
      {
      }
    }
  }

  if (v45 > [(CRLImageProviderPool *)self p_providerLimitForFileDescriptorLimit:mOpenFileDescriptorLimit])
  {
    [(CRLImageProviderPool *)self p_freeFileDescriptorsWithProviderCount:?];
  }

  return v13;
}

- (void)addInterestInProviderForAsset:(id)a3
{
  if (a3)
  {
    v6 = [(CRLImageProviderPool *)self providerForAsset:a3 shouldValidate:0];
    [v6 addInterest];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338DF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338E04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338EA0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageProviderPool addInterestInProviderForAsset:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:252 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];
  }
}

- (void)removeInterestInProviderForAsset:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->mImageDataToImageProviderMap objectForKeyedSubscript:v4];
    [v6 removeInterest];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338EC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338EDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338F78();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338FA0(v8, v7);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageProviderPool removeInterestInProviderForAsset:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:260 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];
  }
}

- (void)p_flushRandomImageProvidersExcludingProvider:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMapTable *)v5->mImageDataToImageProviderMap objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v9 = *v15;
    *&v8 = 134217984;
    v13 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11 != v4 && [(CRLImageProviderPool *)v5 p_rngSaysToFlush])
        {
          if (qword_101AD5C60 != -1)
          {
            sub_101339068();
          }

          v12 = off_1019EEA08;
          if (os_log_type_enabled(off_1019EEA08, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Flushing image provider %p at random.", buf, 0xCu);
          }

          [v11 flush];
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)flushImageProviders
{
  if (qword_101AD5C60 != -1)
  {
    sub_101339090();
  }

  v3 = off_1019EEA08;
  if (os_log_type_enabled(off_1019EEA08, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flushing all image providers.", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMapTable *)v4->mImageDataToImageProviderMap objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * i) flush];
      }

      v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMapTable *)v4->mImageDataToImageProviderMap removeAllObjects];
  objc_sync_exit(v4);
}

- (void)willCullAssets:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMapTable *)v5->mImageDataToImageProviderMap removeObjectForKey:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)a3
{
  v3 = self;
  objc_sync_enter(v3);
  obj = v3;
  [(CRLImageProviderPool *)v3 p_updateFileDescriptorLimit];
  v4 = [(CRLImageProviderPool *)v3 p_providerLimitForFileDescriptorLimit:v3->mOpenFileDescriptorLimit];
  if (v4 < a3)
  {
    if (qword_101AD5C58 != -1)
    {
      sub_1013390A4();
    }

    v5 = off_1019EEA00;
    if (os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
    {
      mOpenFileDescriptorLimit = v3->mOpenFileDescriptorLimit;
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = mOpenFileDescriptorLimit;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "1st stage of fd grief. %tu providers and %tu fds allowed. Freeing 0-interest providers.", buf, 0x16u);
    }

    v7 = [(CRLImageProviderPool *)v3 p_removeProvidersWithZeroInterest];
    if (qword_101AD5C58 != -1)
    {
      sub_1013390B8();
    }

    a3 -= v7;
    v8 = off_1019EEA00;
    if (os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "1st stage of fd grief. Freed %tu providers.", buf, 0xCu);
    }
  }

  if (a3 > v4)
  {
    if (!v3->mHaveRaisedFileDescriptorLimit)
    {
      if (v3->mOpenFileDescriptorLimit > 0x7FF)
      {
        if (qword_101AD5C58 != -1)
        {
          sub_1013390E0();
        }

        v17 = off_1019EEA00;
        if (!os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v19 = v3->mOpenFileDescriptorLimit;
        *buf = 134218496;
        *&buf[4] = a3;
        *&buf[12] = 2048;
        *&buf[14] = v19;
        *&buf[22] = 2048;
        *&buf[24] = 2048;
        v11 = "2nd stage of fd grief. %tu providers and %tu fds allowed. Limit already at least %tu.";
      }

      else
      {
        if (qword_101AD5C58 != -1)
        {
          sub_101339108();
        }

        v14 = off_1019EEA00;
        if (os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v3->mOpenFileDescriptorLimit;
          *buf = 134218496;
          *&buf[4] = a3;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          *&buf[24] = 2048;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "2nd stage of fd grief. %tu providers and %tu fds allowed. Will raise limit to %tu.", buf, 0x20u);
        }

        if (v3->mOpenFileDescriptorLimit <= 0x7FF)
        {
          v16 = 2048;
          do
          {
            *buf = 0;
            *&buf[8] = 0;
            if (getrlimit(8, buf) || *buf >= v16)
            {
              break;
            }

            *buf = 2048;
            if (setrlimit(8, buf))
            {
              v16 -= 256;
            }

            else
            {
              v3->mOpenFileDescriptorLimit = *buf;
              v4 = [(CRLImageProviderPool *)v3 p_providerLimitForFileDescriptorLimit:?];
            }
          }

          while (v3->mOpenFileDescriptorLimit < v16);
        }

        v3->mHaveRaisedFileDescriptorLimit = 1;
        if (qword_101AD5C58 != -1)
        {
          sub_101339130();
        }

        v17 = off_1019EEA00;
        if (!os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v18 = v3->mOpenFileDescriptorLimit;
        *buf = 134218496;
        *&buf[4] = a3;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2048;
        *&buf[24] = 2048;
        v11 = "2nd stage of fd grief. %tu providers and %tu fds allowed. Limit now %tu.";
      }

      v12 = v17;
      v13 = 32;
      goto LABEL_38;
    }

    if (qword_101AD5C58 != -1)
    {
      sub_101339158();
    }

    v9 = off_1019EEA00;
    if (os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3->mOpenFileDescriptorLimit;
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      v11 = "2nd stage of fd grief. %tu providers and %tu fds allowed. Already raised the limit, skipping.";
      v12 = v9;
      v13 = 22;
LABEL_38:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

LABEL_39:
  if (a3 > v4)
  {
    if (qword_101AD5C58 != -1)
    {
      sub_101339180();
    }

    v20 = a3 - ((3 * v4) >> 2);
    v21 = off_1019EEA00;
    if (os_log_type_enabled(off_1019EEA00, OS_LOG_TYPE_DEFAULT))
    {
      v22 = obj->mOpenFileDescriptorLimit;
      *buf = 134218496;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      *&buf[24] = a3 - ((3 * v4) >> 2);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "3rd stage of fd grief. %tu providers and %tu fds allowed. Freeing the least interesting %tu providers.", buf, 0x20u);
    }

    v23 = objc_alloc_init(NSMutableArray);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v24 = [(NSMapTable *)obj->mImageDataToImageProviderMap objectEnumerator];
    v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v25)
    {
      v55 = *v62;
      v52 = v24;
      v53 = v20;
      do
      {
        v56 = v25;
        for (i = 0; i != v56; i = i + 1)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(v24);
          }

          v27 = *(*(&v61 + 1) + 8 * i);
          v28 = [v23 count];
          if (v28 >= v20)
          {
            v29 = [v27 interest];
            if (v28)
            {
              v30 = v29;
              v31 = 0;
              v32 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                v33 = objc_opt_class();
                v34 = [v23 objectAtIndexedSubscript:v31];
                v35 = sub_100014370(v33, v34);

                if ([v35 interest] > v30)
                {
                  v30 = [v35 interest];
                  v32 = v31;
                }

                ++v31;
              }

              while (v28 != v31);
              v24 = v52;
              v20 = v53;
              if (v32 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v23 replaceObjectAtIndex:v32 withObject:v27];
              }
            }
          }

          else
          {
            [v23 addObject:v27];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v25);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = v23;
    v37 = [v36 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v37)
    {
      v38 = *v58;
      do
      {
        v39 = 0;
        do
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = [*(*(&v57 + 1) + 8 * v39) imageData];
          if (v40)
          {
            [(NSMapTable *)obj->mImageDataToImageProviderMap removeObjectForKey:v40];
          }

          else
          {
            v41 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013391A8();
            }

            v42 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              *&buf[4] = v41;
              *&buf[8] = 2082;
              *&buf[10] = "[CRLImageProviderPool p_freeFileDescriptorsWithProviderCount:]";
              *&buf[18] = 2082;
              *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m";
              *&buf[28] = 1024;
              *&buf[30] = 416;
              v66 = 2082;
              v67 = "imageData";
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013391D0();
            }

            v43 = off_1019EDA68;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v46 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              *&buf[4] = v41;
              *&buf[8] = 2114;
              *&buf[10] = v46;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v44 = [NSString stringWithUTF8String:"[CRLImageProviderPool p_freeFileDescriptorsWithProviderCount:]"];
            v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m"];
            [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:416 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];
          }

          v39 = v39 + 1;
        }

        while (v37 != v39);
        v37 = [v36 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v37);
    }

    v47 = [v36 count];
    if (qword_101AD5C58 != -1)
    {
      sub_1013391F8();
    }

    v48 = off_1019EEA00;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = obj->mOpenFileDescriptorLimit;
      v50 = [v36 count];
      *buf = 134218496;
      *&buf[4] = a3 - v47;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      *&buf[24] = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "3rd stage of fd grief. %tu providers and %tu fds allowed. Freed %tu providers.", buf, 0x20u);
    }
  }

  objc_sync_exit(obj);
}

- (unint64_t)p_imageProviderMemoryThreshold
{
  v2 = +[CRLCapabilities currentCapabilities];
  v3 = [v2 isRendererH5OrBelow];

  if (v3)
  {
    return 0x4000000;
  }

  else
  {
    return 0x10000000;
  }
}

- (unint64_t)p_estimatedSizeOfAllProviders
{
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMapTable *)v2->mImageDataToImageProviderMap objectEnumerator];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7) i_flushableMemoryEstimate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  return v4;
}

- (void)flushProvidersToFreeMemoryIfNecessaryExcludingProvider:(id)a3
{
  v5 = a3;
  v4 = [(CRLImageProviderPool *)self p_estimatedSizeOfAllProviders];
  if (v4 > [(CRLImageProviderPool *)self p_imageProviderMemoryThreshold])
  {
    [(CRLImageProviderPool *)self p_flushRandomImageProvidersExcludingProvider:v5];
  }
}

- (void)p_didReceiveMemoryWarning:(id)a3
{
  [(CRLImageProviderPool *)self p_removeProvidersWithZeroInterest];

  [(CRLImageProviderPool *)self p_flushProvidersWithNoOneActivelyHoldingAReference];
}

- (void)p_applicationDidEnterBackground:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243CF0;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (unint64_t)p_removeProvidersWithZeroInterest
{
  v2 = self;
  objc_sync_enter(v2);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(NSMapTable *)v2->mImageDataToImageProviderMap objectEnumerator];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 interest] >= 1)
        {
          v9 = [v8 imageData];
          v10 = [v9 hasOwners];

          if (v10)
          {
            continue;
          }
        }

        if (!v4)
        {
          v4 = objc_alloc_init(NSMutableArray);
        }

        [v4 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v18 + 1) + 8 * j) imageData];
        if (v15)
        {
          [(NSMapTable *)v2->mImageDataToImageProviderMap removeObjectForKey:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = [v11 count];
  objc_sync_exit(v2);

  return v16;
}

- (void)p_flushProvidersWithNoOneActivelyHoldingAReference
{
  v2 = self;
  objc_sync_enter(v2);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMapTable *)v2->mImageDataToImageProviderMap objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) i_flushIfNoOneUsing];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)p_updateFileDescriptorLimit
{
  v9.rlim_cur = 0;
  v9.rlim_max = 0;
  if (getrlimit(8, &v9))
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339220();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101339248(v4, v3);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339318();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageProviderPool p_updateFileDescriptorLimit]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:522 isFatal:0 description:"Failed to get fd limit: getrlimit set errno to %d. Assuming limit of 256.", *__error()];

    rlim_cur = 256;
  }

  else
  {
    rlim_cur = v9.rlim_cur;
  }

  self->mOpenFileDescriptorLimit = rlim_cur;
}

@end