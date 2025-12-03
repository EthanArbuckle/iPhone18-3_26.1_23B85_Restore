@interface NTKParmesanResourceDirectoryEditor
+ (id)linkParmesanAsset:(id)asset from:(id)from to:(id)to;
+ (void)transcodeAssetsWithIdentifiers:(id)identifiers to:(id)to completion:(id)completion;
@end

@implementation NTKParmesanResourceDirectoryEditor

+ (id)linkParmesanAsset:(id)asset from:(id)from to:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  fromCopy = from;
  toCopy = to;
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = assetCopy;
    v37 = 2112;
    v38 = toCopy;
    _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "linkParmesanAsset: linking existing photo %@ into the new resource directory %@", buf, 0x16u);
  }

  v17 = objc_msgSend_copy(assetCopy, v14, v15, v16);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = objc_msgSend_layouts(assetCopy, v18, v19, v20, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v30, v34, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v31;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v21);
        }

        if (!objc_msgSend_linkFromSrcDirectory_toDstDirectory_(*(*(&v30 + 1) + 8 * i), v24, fromCopy, toCopy))
        {

          v28 = 0;
          goto LABEL_13;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v30, v34, 16);
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v28 = v17;
LABEL_13:

  return v28;
}

+ (void)transcodeAssetsWithIdentifiers:(id)identifiers to:(id)to completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  toCopy = to;
  completionCopy = completion;
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v26 = objc_msgSend_count(identifiersCopy, v14, v15, v16);
    v27 = 2112;
    v28 = toCopy;
    v29 = 2112;
    v30 = identifiersCopy;
    _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "transcodeAssetsWithIdentifiers: transcoding %ld new assets to %@\x04\n%@", buf, 0x20u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BF1C684;
  v21[3] = &unk_278BA6C88;
  v23 = identifiersCopy;
  v24 = completionCopy;
  v22 = toCopy;
  v17 = identifiersCopy;
  v18 = completionCopy;
  v19 = toCopy;
  objc_msgSend_processAssetsWithIdentifiers_dstDir_completion_(NTKParmesanPhotoProcessor, v20, v17, v19, v21);
}

@end