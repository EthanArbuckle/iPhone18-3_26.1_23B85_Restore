@interface GEORPFeedbackImageUploadResult
- (id)_photoForClientImageIdentifier:(id)a3 inPhotoList:(id)a4;
- (void)enumerateAndMatchPhotosWithMetadata:(id)a3 withBlock:(id)a4;
@end

@implementation GEORPFeedbackImageUploadResult

- (id)_photoForClientImageIdentifier:(id)a3 inPhotoList:(id)a4
{
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 photoMetadata];
        v12 = [v11 clientImageUuid];
        v13 = [v12 caseInsensitiveCompare:v5];

        if (!v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)enumerateAndMatchPhotosWithMetadata:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [(GEORPFeedbackImageUploadResult *)self imageUploadInfos];
    v8 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 clientImageUuid];
          v14 = [(GEORPFeedbackImageUploadResult *)self _photoForClientImageIdentifier:v13 inPhotoList:v6];

          v7[2](v7, v12, v14);
        }

        v9 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: block != ((void *)0)", buf, 2u);
  }
}

@end