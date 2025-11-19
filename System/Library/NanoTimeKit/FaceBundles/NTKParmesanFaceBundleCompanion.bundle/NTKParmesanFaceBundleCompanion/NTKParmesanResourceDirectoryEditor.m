@interface NTKParmesanResourceDirectoryEditor
+ (id)linkParmesanAsset:(id)a3 from:(id)a4 to:(id)a5;
+ (void)transcodeAssetsWithIdentifiers:(id)a3 to:(id)a4 completion:(id)a5;
@end

@implementation NTKParmesanResourceDirectoryEditor

+ (id)linkParmesanAsset:(id)a3 from:(id)a4 to:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "linkParmesanAsset: linking existing photo %@ into the new resource directory %@", buf, 0x16u);
  }

  v17 = objc_msgSend_copy(v7, v14, v15, v16);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = objc_msgSend_layouts(v7, v18, v19, v20, 0);
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

        if (!objc_msgSend_linkFromSrcDirectory_toDstDirectory_(*(*(&v30 + 1) + 8 * i), v24, v8, v9))
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

+ (void)transcodeAssetsWithIdentifiers:(id)a3 to:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v26 = objc_msgSend_count(v7, v14, v15, v16);
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "transcodeAssetsWithIdentifiers: transcoding %ld new assets to %@\x04\n%@", buf, 0x20u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BF1C684;
  v21[3] = &unk_278BA6C88;
  v23 = v7;
  v24 = v9;
  v22 = v8;
  v17 = v7;
  v18 = v9;
  v19 = v8;
  objc_msgSend_processAssetsWithIdentifiers_dstDir_completion_(NTKParmesanPhotoProcessor, v20, v17, v19, v21);
}

@end