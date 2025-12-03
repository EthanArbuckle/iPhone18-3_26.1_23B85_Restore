@interface NTKParmesanPreviewProvider
- (CGRect)Parmesan_screenBounds;
- (CGSize)Parmesan_minimumNormalizedCropSize;
- (NTKParmesanPreviewProvider)initWithEditor:(id)editor selectedImageIndex:(int64_t)index;
- (NTKParmesanTypefaceMetrics)Parmesan_typefaceMetrics;
- (double)Parmesan_screenCornerRadius;
- (void)Parmesan_changePhotoWithAsset:(id)asset completion:(id)completion;
- (void)Parmesan_getPreviewWithCompletion:(id)completion;
@end

@implementation NTKParmesanPreviewProvider

- (NTKParmesanPreviewProvider)initWithEditor:(id)editor selectedImageIndex:(int64_t)index
{
  editorCopy = editor;
  v11.receiver = self;
  v11.super_class = NTKParmesanPreviewProvider;
  v8 = [(NTKParmesanPreviewProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editor, editor);
    v9->_selectedImageIndex = index;
  }

  return v9;
}

- (CGRect)Parmesan_screenBounds
{
  v4 = objc_msgSend_device(self->_editor, a2, v2, v3);
  objc_msgSend_screenBounds(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (double)Parmesan_screenCornerRadius
{
  v4 = objc_msgSend_device(self->_editor, a2, v2, v3);
  objc_msgSend_screenCornerRadius(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

- (CGSize)Parmesan_minimumNormalizedCropSize
{
  (MEMORY[0x2821F9670])(self->_editor, sel_minimumNormalizedCropSizeForPhotoAtIndex_, self->_selectedImageIndex);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NTKParmesanTypefaceMetrics)Parmesan_typefaceMetrics
{
  v3 = [NTKParmesanTypefaceMetrics alloc];
  v7 = objc_msgSend_device(self->_editor, v4, v5, v6);
  v10 = objc_msgSend_initWithDevice_(v3, v8, v7, v9);

  return v10;
}

- (void)Parmesan_getPreviewWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    selectedImageIndex = self->_selectedImageIndex;
    v15 = 134217984;
    v16 = selectedImageIndex;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "Requesting preview for asset index = %ld", &v15, 0xCu);
  }

  editor = self->_editor;
  if (editor)
  {
    objc_msgSend_previewOfLibraryPhotoAtIndex_completion_(editor, v10, self->_selectedImageIndex, completionCopy);
  }

  else
  {
    v14 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8938(self, v14);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)Parmesan_changePhotoWithAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if (objc_msgSend_Parmesan_canAddPhotoAssets(self, v7, v8, v9))
  {
    v13 = objc_msgSend_replaceAssetAtIndex_withAsset_(self->_editor, v10, self->_selectedImageIndex, assetCopy);
    if (v13)
    {
      completionCopy[2](completionCopy, 0, v13);
    }

    else
    {
      objc_msgSend_Parmesan_getPreviewWithCompletion_(self, v11, completionCopy, v12);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

@end