@interface NTKParmesanResourcesManifest
- (BOOL)_resourceIsValidMediaAsset:(id)asset ofType:(id)type;
- (BOOL)validateImageListItem:(id)item withError:(id *)error;
@end

@implementation NTKParmesanResourcesManifest

- (BOOL)validateImageListItem:(id)item withError:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_resourceDirectoryURL(self, v10, v11, v12);
    v17 = objc_msgSend_lastPathComponent(v13, v14, v15, v16);
    v20 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v18, @"localIdentifier", v19);
    *buf = 138412546;
    v102 = v17;
    v103 = 2112;
    v104 = v20;
    _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", buf, 0x16u);
  }

  v23 = objc_msgSend_decodeFromDictionary_(NTKParmesanAsset, v21, itemCopy, v22);
  v27 = v23;
  if (!v23)
  {
    v48 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25, v26);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8860(self, itemCopy, v48, v92);
    }

LABEL_22:

    v91 = 0;
    goto LABEL_23;
  }

  v28 = objc_msgSend_layouts(v23, v24, v25, v26);
  v32 = objc_msgSend_allValues(v28, v29, v30, v31);
  v36 = objc_msgSend_count(v32, v33, v34, v35);

  if (v36)
  {
    v100 = itemCopy;
    v40 = 0;
    while (1)
    {
      v41 = objc_msgSend_layouts(v27, v37, v38, v39);
      v45 = objc_msgSend_allValues(v41, v42, v43, v44);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v40, v47);

      v52 = objc_msgSend_baseImageName(v48, v49, v50, v51);
      if (v52)
      {
        v56 = v52;
        v57 = objc_msgSend_baseImageName(v48, v53, v54, v55);
        IsValidMediaAsset_ofType = objc_msgSend__resourceIsValidMediaAsset_ofType_(self, v58, v57, &unk_284ED4230);

        if ((IsValidMediaAsset_ofType & 1) == 0)
        {
          break;
        }
      }

      v60 = objc_msgSend_mask(v48, v53, v54, v55);
      v64 = objc_msgSend_imageName(v60, v61, v62, v63);
      if (v64)
      {
        v68 = v64;
        v69 = objc_msgSend_mask(v48, v65, v66, v67);
        v73 = objc_msgSend_imageName(v69, v70, v71, v72);
        v75 = objc_msgSend__resourceIsValidMediaAsset_ofType_(self, v74, v73, &unk_284ED4248);

        if ((v75 & 1) == 0)
        {
          v95 = objc_msgSend_logObject(NTKParmesanFaceBundle, v76, v77, v78);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF87B8(self, v95, v97, v98);
          }

          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v40;
      v82 = objc_msgSend_layouts(v27, v79, v80, v81);
      v86 = objc_msgSend_allValues(v82, v83, v84, v85);
      v90 = objc_msgSend_count(v86, v87, v88, v89);

      if (v40 >= v90)
      {
        v91 = 1;
        itemCopy = v100;
        goto LABEL_23;
      }
    }

    v95 = objc_msgSend_logObject(NTKParmesanFaceBundle, v53, v54, v55);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8710(self, v95, v93, v94);
    }

LABEL_21:
    itemCopy = v100;

    goto LABEL_22;
  }

  v91 = 1;
LABEL_23:

  return v91;
}

- (BOOL)_resourceIsValidMediaAsset:(id)asset ofType:(id)type
{
  assetCopy = asset;
  if (objc_msgSend_resourceWithName_isValidMediaAssetOfType_withMinFileSize_maxFileSize_(self, v7, assetCopy, type, 1000, 4000000))
  {
    IsValidImage = objc_msgSend_resourceWithNameIsValidImage_(self, v8, assetCopy, v9);
  }

  else
  {
    IsValidImage = 0;
  }

  return IsValidImage;
}

@end