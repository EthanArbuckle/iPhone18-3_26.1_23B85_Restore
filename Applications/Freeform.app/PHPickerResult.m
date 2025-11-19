@interface PHPickerResult
+ (id)crl_loadFileRepresentationsForResultItemProviders:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5;
+ (id)crl_safeLastPathComponentForItemURL:(id)a3 registeredTypeIdentifier:(id)a4;
+ (id)crl_typeIdentifiersForResults:(id)a3;
@end

@implementation PHPickerResult

+ (id)crl_loadFileRepresentationsForResultItemProviders:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5
{
  v21 = a3;
  v7 = a4;
  v22 = a5;
  v54 = 0;
  v29 = [[CRLTemporaryDirectory alloc] initWithSignature:@"PHPickerResult.crl_loadFileRepresentationsForResultItemProviders" error:&v54];
  v20 = v54;
  if (v29)
  {
    v26 = +[NSMutableArray array];
    v25 = +[NSFileManager defaultManager];
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2810000000;
    v52[3] = &unk_1016A8115;
    v53 = 0;
    v28 = +[NSMutableArray array];
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = sub_10059FA2C;
    v50[4] = sub_10059FA3C;
    v51 = 0;
    group = dispatch_group_create();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v21;
    v8 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v8)
    {
      v30 = *v47;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v46 + 1) + 8 * i);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v11 = [v10 registeredTypeIdentifiers];
          v12 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v12)
          {
            v13 = *v43;
            while (2)
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v43 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v42 + 1) + 8 * j);
                if ([v15 crl_conformsToAnyUTI:v7])
                {
                  dispatch_group_enter(group);
                  v40[0] = 0;
                  v40[1] = v40;
                  v40[2] = 0x2020000000;
                  v41 = 0;
                  v34[0] = _NSConcreteStackBlock;
                  v34[1] = 3221225472;
                  v34[2] = sub_10059FA44;
                  v34[3] = &unk_1018714D0;
                  v34[4] = v29;
                  v34[5] = v15;
                  v36 = v40;
                  v37 = v52;
                  v34[6] = v25;
                  v34[7] = v28;
                  v38 = v50;
                  v39 = a1;
                  v35 = group;
                  v16 = [v10 loadFileRepresentationForTypeIdentifier:v15 completionHandler:v34];
                  [v26 addObject:v16];

                  _Block_object_dispose(v40, 8);
                  goto LABEL_17;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005A009C;
    block[3] = &unk_1018714F8;
    block[4] = v29;
    block[5] = v28;
    v32 = v22;
    v33 = v50;
    dispatch_group_notify(group, &_dispatch_main_q, block);
    v17 = [NSProgress crl_progressWithChildren:v26];

    _Block_object_dispose(v50, 8);
    _Block_object_dispose(v52, 8);
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101398F48();
    }

    v18 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101398F70(v18, v20);
    }

    if (v22)
    {
      (*(v22 + 2))(v22, 0, 0, v20);
    }

    v17 = [NSProgress discreteProgressWithTotalUnitCount:1];
  }

  return v17;
}

+ (id)crl_safeLastPathComponentForItemURL:(id)a3 registeredTypeIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 lastPathComponent];
  v8 = [v7 pathExtension];
  v9 = [v8 length];

  if (v9)
  {
    v10 = v7;
LABEL_16:
    v20 = v10;
    goto LABEL_17;
  }

  v11 = [UTTypeImage identifier];
  v12 = [v6 crl_conformsToUTI:v11];

  if ((v12 & 1) == 0)
  {
    v10 = [v7 stringByAppendingPathExtension:@"mov"];
    goto LABEL_16;
  }

  v13 = CGImageSourceCreateWithURL(v5, 0);
  if (!v13)
  {
    v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139938C();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013993A0(v22, v23);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139944C();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v24);
    }

    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[PHPickerResult(CRLAdditions) crl_safeLastPathComponentForItemURL:registeredTypeIdentifier:]");
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/PHPickerResult_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v18 lineNumber:127 isFatal:0 description:"Unable to create image source to check file type for photo picker file URL with no file extension."];
    v16 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v15 = CGImageSourceGetType(v13);
  CFRelease(v14);
  v16 = [v15 crl_UTIFilenameExtension];
  if (![(__CFString *)v16 length])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013992BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013992D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399364();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[PHPickerResult(CRLAdditions) crl_safeLastPathComponentForItemURL:registeredTypeIdentifier:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/PHPickerResult_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:125 isFatal:0 description:"No file extension for CG-provided type identifier: %{public}@", v15];

LABEL_29:
  }

  if ([(__CFString *)v16 length])
  {
    v25 = v16;
  }

  else
  {
    v25 = [v6 crl_UTIFilenameExtension];

    if (![(__CFString *)v25 length])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101399474();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139949C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101399530();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v26);
      }

      v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[PHPickerResult(CRLAdditions) crl_safeLastPathComponentForItemURL:registeredTypeIdentifier:]");
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/PHPickerResult_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:132 isFatal:0 description:"No file extension for file URL with registered type identifier: %{public}@", v6];
    }
  }

  if (v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = @"jpeg";
  }

  v20 = [v7 stringByAppendingPathExtension:v29];

LABEL_17:

  return v20;
}

+ (id)crl_typeIdentifiersForResults:(id)a3
{
  v3 = a3;
  v4 = [UTTypeImage identifier];
  v5 = [UTTypeMovie identifier];
  v22 = objc_alloc_init(NSMutableSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [v10 itemProvider];
        v12 = [v11 registeredTypeIdentifiers];

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = *v24;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * j);
            if ([v17 crl_conformsToUTI:v4])
            {
              v18 = v4;
LABEL_18:
              [v22 addObject:v18];
              goto LABEL_19;
            }

            if ([v17 crl_conformsToUTI:v5])
            {
              v18 = v5;
              goto LABEL_18;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_19:
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v19 = [v22 copy];

  return v19;
}

@end