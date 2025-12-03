@interface GEORPFeedbackImageUploadResult
- (id)_photoForClientImageIdentifier:(id)identifier inPhotoList:(id)list;
- (void)enumerateAndMatchPhotosWithMetadata:(id)metadata withBlock:(id)block;
@end

@implementation GEORPFeedbackImageUploadResult

- (id)_photoForClientImageIdentifier:(id)identifier inPhotoList:(id)list
{
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(listCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        photoMetadata = [v10 photoMetadata];
        clientImageUuid = [photoMetadata clientImageUuid];
        v13 = [clientImageUuid caseInsensitiveCompare:identifierCopy];

        if (!v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)enumerateAndMatchPhotosWithMetadata:(id)metadata withBlock:(id)block
{
  metadataCopy = metadata;
  blockCopy = block;
  if (blockCopy)
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
          clientImageUuid = [v12 clientImageUuid];
          v14 = [(GEORPFeedbackImageUploadResult *)self _photoForClientImageIdentifier:clientImageUuid inPhotoList:metadataCopy];

          blockCopy[2](blockCopy, v12, v14);
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