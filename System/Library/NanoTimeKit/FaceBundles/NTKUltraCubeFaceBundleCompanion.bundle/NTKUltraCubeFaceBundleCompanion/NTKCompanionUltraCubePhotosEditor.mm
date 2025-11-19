@interface NTKCompanionUltraCubePhotosEditor
- (BOOL)_ensurePreviewEditSessionIsLoadedForPhotoAtIndex:(int64_t)a3 computeCrop:(BOOL)a4;
- (BOOL)addAssetsFromAssetList:(id)a3 maxPhotosCount:(unint64_t)a4;
- (BOOL)addPhotosFromUIImagePicker:(id)a3;
- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)a3;
- (BOOL)savePreview:(id)a3 forPhotoAtIndex:(int64_t)a4;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3;
- (NTKCompanionUltraCubePhotosEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4;
- (id)_copyOrTranscodePhotosTo:(id)a3;
- (id)_createPreviewEditSessionForPhoto:(id)a3;
- (id)_fetchAssetsForNewPhotos:(id)a3;
- (void)_fetchAssetsForResourceDirectoryPhotos;
- (void)_readResourceDirectoryPhotosFrom:(id)a3;
- (void)_reinitializeWithImageList:(id)a3 andResourceDirectory:(id)a4;
- (void)deletePhotoAtIndex:(int64_t)a3;
- (void)finalizeWithCompletion:(id)a3;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)purgeResourcesForPreviewAtIndex:(int64_t)a3;
- (void)resetCropOfPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)thumbnailImageForPhotoAtIndex:(int64_t)a3 completion:(id)a4;
@end

@implementation NTKCompanionUltraCubePhotosEditor

- (NTKCompanionUltraCubePhotosEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v14.receiver = self;
  v14.super_class = NTKCompanionUltraCubePhotosEditor;
  v4 = [(NTKCompanionUltraCubePhotosEditor *)&v14 initWithResourceDirectory:a3 forDevice:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    photos = v4->_photos;
    v4->_photos = v5;

    v7 = objc_opt_new();
    orderList = v4->_orderList;
    v4->_orderList = v7;

    v9 = objc_opt_new();
    scaledImageCache = v4->_scaledImageCache;
    v4->_scaledImageCache = v9;

    v4->_galleryPreviewIsValid = 0;
    v4->_editedIndex = -1;
    v11 = [(NTKCompanionUltraCubePhotosEditor *)v4 resourceDirectory];

    if (v11)
    {
      v12 = [(NTKCompanionUltraCubePhotosEditor *)v4 resourceDirectory];
      [(NTKCompanionUltraCubePhotosEditor *)v4 _readResourceDirectoryPhotosFrom:v12];
    }

    [(NTKCompanionUltraCubePhotosEditor *)v4 setState:1];
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for NTKCompanionUltraCubePhotosEditor", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_1BB28;
  v23 = sub_1BB38;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1BB40;
  v15[3] = &unk_49248;
  v17 = buf;
  v18 = [(NTKCompanionUltraCubePhotosEditor *)self state];
  v15[4] = self;
  v6 = v4;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  if ([(NTKCompanionUltraCubePhotosEditor *)self state]&& [(NTKCompanionUltraCubePhotosEditor *)self state]<= 2)
  {
    if ([(NTKCompanionUltraCubePhotosEditor *)self state]== &dword_0 + 1)
    {
      v9 = [(NTKCompanionUltraCubePhotosEditor *)self resourceDirectory];
    }

    else
    {
      if (!self->_galleryPreviewIsValid)
      {
        [(NTKCompanionUltraCubePhotosEditor *)self setState:3];
        v11 = dispatch_get_global_queue(2, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1BCEC;
        block[3] = &unk_49270;
        block[4] = self;
        v13 = v7;
        v14 = buf;
        dispatch_async(v11, block);

        goto LABEL_12;
      }

      v9 = [(NTKCompanionUltraCubePhotosEditor *)self galleryPreviewResourceDirectory];
    }

    v10 = *(v20 + 5);
    *(v20 + 5) = v9;

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  (v7[2])(v7, v8);
LABEL_12:

  _Block_object_dispose(buf, 8);
}

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "finalizeWithCompletion: finalizing NTKCompanionUltraCubePhotosEditor", buf, 2u);
  }

  if ([(NTKCompanionUltraCubePhotosEditor *)self state]&& [(NTKCompanionUltraCubePhotosEditor *)self state]< 3)
  {
    if ([(NTKCompanionUltraCubePhotosEditor *)self state]== &dword_0 + 1)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1DA80;
      v10[3] = &unk_492C0;
      v10[4] = self;
      v11 = v4;
      dispatch_async(&_dispatch_main_q, v10);
      v6 = v11;
    }

    else
    {
      [(NTKCompanionUltraCubePhotosEditor *)self setState:4];
      v7 = dispatch_get_global_queue(2, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1DADC;
      v8[3] = &unk_49338;
      v8[4] = self;
      v9 = v4;
      dispatch_async(v7, v8);

      v6 = v9;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1DA6C;
    block[3] = &unk_49298;
    v13 = v4;
    dispatch_async(&_dispatch_main_q, block);
    v6 = v13;
  }
}

- (BOOL)addPhotosFromUIImagePicker:(id)a3
{
  v3 = self;
  v4 = [(NTKCompanionUltraCubePhotosEditor *)self _fetchAssetsForNewPhotos:a3];
  LOBYTE(v3) = [(NTKCompanionUltraCubePhotosEditor *)v3 addAssetsFromAssetList:v4 maxPhotosCount:24];

  return v3;
}

- (BOOL)addAssetsFromAssetList:(id)a3 maxPhotosCount:(unint64_t)a4
{
  v6 = a3;
  if (!-[NTKCompanionUltraCubePhotosEditor state](self, "state") || -[NTKCompanionUltraCubePhotosEditor state](self, "state") > 2 || (v7 = -[NTKCompanionUltraCubePhotosEditor photosCount](self, "photosCount"), [v6 count] + v7 > a4))
  {
    v8 = 0;
    goto LABEL_5;
  }

  v38 = [(NSMutableArray *)self->_orderList firstObject];
  v39 = v6;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v41 = *v43;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v43 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v42 + 1) + 8 * i);
      v14 = [v13 localIdentifier];
      v15 = objc_opt_new();
      [v15 setAsset:v13];
      [v15 setSubsampleFactor:sub_1E2B4(v13)];
      [v15 setPhoto:0];
      v16 = objc_alloc_init(_NTKLayoutDescriptor);
      [v15 setLayout:v16];

      v17 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v14];
      v18 = v17;
      if (v17)
      {
        if ([v17 isInResourceDirectory])
        {
          v19 = [v18 photo];
          v20 = [v19 modificationDate];
          v21 = [v13 ntk_modificationDate];
          [v20 timeIntervalSince1970];
          v23 = v22;
          [v21 timeIntervalSince1970];
          v25 = vabdd_f64(v23, v24);

          v26 = _NTKLoggingObjectForDomain();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25 > 2.0)
          {
            if (v27)
            {
              v28 = [v18 photo];
              v29 = [v28 baseImageURL];
              *buf = 138412290;
              v47 = v29;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: replacing existing photo %@ because it was modified", buf, 0xCu);
            }

            [(NSMutableDictionary *)self->_photos setObject:v15 forKeyedSubscript:v14];
            goto LABEL_26;
          }

          if (v27)
          {
            v33 = [v18 photo];
            v34 = [v33 baseImageURL];
            *buf = 138412290;
            v47 = v34;
            v35 = v26;
            v36 = "addAssetsFromAssetList: not adding existing photo %@";
LABEL_24:
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
          }
        }

        else
        {
          v26 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v15 asset];
            v34 = [v33 localIdentifier];
            *buf = 138412290;
            v47 = v34;
            v35 = v26;
            v36 = "addAssetsFromAssetList: not adding new asset again %@";
            goto LABEL_24;
          }
        }

        goto LABEL_26;
      }

      v30 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v15 asset];
        v32 = [v31 localIdentifier];
        *buf = 138412290;
        v47 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: adding new asset %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_photos setObject:v15 forKeyedSubscript:v14];
      [(NSMutableArray *)self->_orderList addObject:v14];
LABEL_26:
    }

    v11 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v11);
LABEL_28:

  if (self->_galleryPreviewIsValid)
  {
    v37 = [(NSMutableArray *)self->_orderList firstObject];
    self->_galleryPreviewIsValid = NTKEqualStrings();
  }

  [(NTKCompanionUltraCubePhotosEditor *)self setState:2];

  v8 = 1;
  v6 = v39;
LABEL_5:

  return v8;
}

- (void)deletePhotoAtIndex:(int64_t)a3
{
  if (![(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    return;
  }

  v5 = [(NTKCompanionUltraCubePhotosEditor *)self state];
  if (a3 < 0 || v5 > 2 || [(NSMutableArray *)self->_orderList count]<= a3)
  {
    return;
  }

  v6 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
  [(NSMutableArray *)self->_orderList removeObject:v6];
  v7 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v6];
  if ([v7 isInResourceDirectory])
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 photo];
      v10 = [v9 baseImageURL];
      *v15 = 138412546;
      *&v15[4] = v10;
      *&v15[12] = 2048;
      *&v15[14] = a3;
      v11 = "deletePhotoAtIndex: deleting existing photo %@ at index %ld";
LABEL_10:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v11, v15, 0x16u);
    }
  }

  else
  {
    scaledImageCache = self->_scaledImageCache;
    v13 = [v7 asset];
    v14 = [v13 localIdentifier];
    [(NSCache *)scaledImageCache removeObjectForKey:v14];

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 asset];
      v10 = [v9 localIdentifier];
      *v15 = 138412546;
      *&v15[4] = v10;
      *&v15[12] = 2048;
      *&v15[14] = a3;
      v11 = "deletePhotoAtIndex: deleting new asset id %@ at index %ld";
      goto LABEL_10;
    }
  }

  [(NSMutableDictionary *)self->_photos removeObjectForKey:v6];
  if (self->_galleryPreviewIsValid)
  {
    self->_galleryPreviewIsValid = a3 != 0;
  }

  [(NTKCompanionUltraCubePhotosEditor *)self setState:2, *v15, *&v15[16]];
}

- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  if ([(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    v7 = [(NTKCompanionUltraCubePhotosEditor *)self state];
    if ((a3 & 0x8000000000000000) == 0 && v7 <= 2)
    {
      v8 = [(NSMutableArray *)self->_orderList count];
      if ((a4 & 0x8000000000000000) == 0 && v8 > a3 && [(NSMutableArray *)self->_orderList count]> a4)
      {
        v9 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
        v10 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134218240;
          v15 = a3;
          v16 = 2048;
          v17 = a4;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v14, 0x16u);
        }

        [(NSMutableArray *)self->_orderList removeObjectAtIndex:a3];
        [(NSMutableArray *)self->_orderList insertObject:v9 atIndex:a4];
        if (self->_galleryPreviewIsValid)
        {
          if (a3)
          {
            v11 = a4 == 0;
          }

          else
          {
            v11 = 1;
          }

          v13 = !v11 || a3 == a4;
          self->_galleryPreviewIsValid = v13;
        }

        [(NTKCompanionUltraCubePhotosEditor *)self setState:2];
      }
    }
  }
}

- (void)thumbnailImageForPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 < 0 || [(NSMutableArray *)self->_orderList count]<= a3)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1EB1C;
    v44[3] = &unk_49298;
    v45 = v6;
    dispatch_async(&_dispatch_main_q, v44);
    v7 = v45;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
    v8 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
    if ([v8 isInResourceDirectory])
    {
      v9 = [v8 photo];
      v10 = [v9 baseImageURL];
      v11 = NTKPhotosImageForURL();

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1EB30;
      block[3] = &unk_492C0;
      v42 = v11;
      v43 = v6;
      v12 = v11;
      dispatch_async(&_dispatch_main_q, block);

      v13 = v43;
    }

    else
    {
      scaledImageCache = self->_scaledImageCache;
      v15 = [v8 asset];
      v16 = [v15 localIdentifier];
      v12 = [(NSCache *)scaledImageCache objectForKey:v16];

      if (v12)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1EB44;
        v38[3] = &unk_492C0;
        v40 = v6;
        v12 = v12;
        v39 = v12;
        dispatch_async(&_dispatch_main_q, v38);

        v13 = v40;
      }

      else
      {
        v17 = [v8 layout];
        [v17 crop];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v31 = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1EB58;
        v34 = &unk_49360;
        v35 = self;
        v26 = v8;
        v36 = v26;
        v37 = v6;
        v27 = objc_retainBlock(&v31);
        v53.origin.x = v19;
        v53.origin.y = v21;
        v53.size.width = v23;
        v53.size.height = v25;
        if (CGRectIsEmpty(v53))
        {
          v28 = [v26 asset];
          [NTKCompanionUltraCubePhotosEditor _imageForAsset:v28 forSize:v27 completion:480.0, 600.0];
        }

        else
        {
          v29 = [v26 asset];
          v30 = v27;
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_2151C;
          v46[3] = &unk_49400;
          v49 = v19;
          v50 = v21;
          v51 = v23;
          v52 = v25;
          v47 = v29;
          v48 = v30;
          v28 = v29;
          [NTKCompanionUltraCubePhotosEditor _imageDataForAsset:v28 completion:v46];
        }

        v13 = v36;
      }
    }
  }
}

- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSMutableArray *)self->_orderList count]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
  v6 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v5];
  v7 = [v6 asset];
  v8 = v7 != 0;

  return v8;
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EDCC;
  block[3] = &unk_49388;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F198;
  block[3] = &unk_49388;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3
{
  v3 = 1.0;
  if (a3 < 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0;
    if ([(NSMutableArray *)self->_orderList count]> a3)
    {
      v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
      v8 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
      v9 = [v8 asset];

      v10 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
      v11 = [v10 subsampleFactor];

      if (v9)
      {
        v12 = [v9 pixelWidth];
        v13 = [v9 pixelHeight];
        if (v11 * 480.0 / v12 <= 1.0)
        {
          v6 = v11 * 480.0 / v12;
        }

        else
        {
          v6 = 1.0;
        }

        if (v11 * 600.0 / v13 <= 1.0)
        {
          v3 = v11 * 600.0 / v13;
        }

        else
        {
          v3 = 1.0;
        }
      }
    }
  }

  v14 = v6;
  v15 = v3;
  result.height = v15;
  result.width = v14;
  return result;
}

- (BOOL)savePreview:(id)a3 forPhotoAtIndex:(int64_t)a4
{
  v6 = a3;
  if (![(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    goto LABEL_16;
  }

  v7 = [(NTKCompanionUltraCubePhotosEditor *)self state];
  v8 = 0;
  if (a4 < 0 || v7 > 2)
  {
    goto LABEL_17;
  }

  if ([(NSMutableArray *)self->_orderList count]<= a4 || ![(NTKCompanionUltraCubePhotosEditor *)self canChangeOriginalCropOfPhotoAtIndex:a4])
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v9 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a4];
  v10 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v9];
  [v6 crop];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGAffineTransformMakeScale(&v47, [v10 subsampleFactor], objc_msgSend(v10, "subsampleFactor"));
  v48.origin.x = v12;
  v48.origin.y = v14;
  v48.size.width = v16;
  v48.size.height = v18;
  v49 = CGRectApplyAffineTransform(v48, &v47);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  [(_NTKPreviewEditSession *)self->_previewEditSession presentationSize];
  v25 = v24 - width;
  if (x < v25)
  {
    v25 = x;
  }

  v26 = fmax(v25, 0.0);
  v27 = v23 - height;
  if (y < v23 - height)
  {
    v27 = y;
  }

  v28 = fmax(v27, 0.0);
  if ([v10 isInResourceDirectory])
  {
    v29 = [v10 layout];
    v30 = [v29 position];
    v31 = [v6 timeLabelPosition];

    v32 = [v10 layout];
    [v32 crop];
    v33 = CLKRectEqualsRect();

    if (v33)
    {
      v34 = v30 == v31;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v35 = 0;
      goto LABEL_22;
    }

    v35 = objc_opt_new();
    v36 = [v10 asset];
    [v35 setAsset:v36];

    [v35 setSubsampleFactor:{objc_msgSend(v10, "subsampleFactor")}];
    [v35 setPhoto:0];
    v37 = objc_alloc_init(_NTKLayoutDescriptor);
    [v35 setLayout:v37];

    [v35 setUserAdjusted:0];
  }

  else
  {
    v35 = v10;
  }

  if (!v35)
  {
LABEL_22:
    v45 = 1;
    goto LABEL_23;
  }

  scaledImageCache = self->_scaledImageCache;
  v40 = [v35 asset];
  v41 = [v40 localIdentifier];
  [(NSCache *)scaledImageCache removeObjectForKey:v41];

  v42 = [v35 layout];
  [v42 setCrop:{v26, v28, width, height}];

  v43 = [v6 timeLabelPosition];
  v44 = [v35 layout];
  [v44 setPosition:v43];

  [v35 setUserAdjusted:{objc_msgSend(v6, "isRevertable")}];
  [(NSMutableDictionary *)self->_photos setObject:v35 forKeyedSubscript:v9];
  v45 = 0;
LABEL_23:
  [(NTKCompanionUltraCubePhotosEditor *)self purgeResourcesForPreviewAtIndex:a4];
  if (self->_galleryPreviewIsValid)
  {
    if (a4)
    {
      v46 = 0;
    }

    else
    {
      v46 = v45;
    }

    self->_galleryPreviewIsValid = v46;
  }

  [(NTKCompanionUltraCubePhotosEditor *)self setState:2];

  v8 = 1;
LABEL_17:

  return v8;
}

- (void)purgeResourcesForPreviewAtIndex:(int64_t)a3
{
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "purgeResourcesForPreviewAtIndex: %ld", &v7, 0xCu);
  }

  if (self->_editedIndex == a3)
  {
    self->_editedIndex = -1;
    previewEditSession = self->_previewEditSession;
    self->_previewEditSession = 0;
  }
}

- (void)_readResourceDirectoryPhotosFrom:(id)a3
{
  [NTKUltraCubePhotosReader readerForResourceDirectory:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v16 = 0u;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 localIdentifier];
        v10 = objc_opt_new();
        [v10 setAsset:0];
        [v10 setSubsampleFactor:1];
        [v10 setPhoto:v8];
        [v10 setUserAdjusted:{objc_msgSend(v8, "isUserAdjusted")}];
        v11 = objc_alloc_init(_NTKLayoutDescriptor);
        [v8 originalCrop];
        [(_NTKLayoutDescriptor *)v11 setCrop:?];
        [v8 timeElementUnitBaseline];
        [(_NTKLayoutDescriptor *)v11 setBaseline:?];
        [v8 timeElementZorder];
        [(_NTKLayoutDescriptor *)v11 setTimeElementZorder:?];
        [v8 maskedImageZorder];
        [(_NTKLayoutDescriptor *)v11 setMaskedImageZorder:?];
        [v10 setLayout:v11];
        [(NSMutableDictionary *)self->_photos setObject:v10 forKeyedSubscript:v9];
        [(NSMutableArray *)self->_orderList addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NTKCompanionUltraCubePhotosEditor *)self _fetchAssetsForResourceDirectoryPhotos];
}

- (void)_fetchAssetsForResourceDirectoryPhotos
{
  v3 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(NSMutableDictionary *)self->_photos allValues];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        if ([v9 isInResourceDirectory])
        {
          v10 = [v9 photo];
          v11 = [v10 localIdentifier];

          if (v11)
          {
            [v3 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v6);
  }

  v12 = NTKPHAssetsForLocalIdentifiers();
  v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        v20 = [v19 localIdentifier];
        [v13 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = [(NSMutableDictionary *)self->_photos allValues];
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * k);
        if ([v26 isInResourceDirectory])
        {
          v27 = [v26 photo];
          v28 = [v27 localIdentifier];

          if (v28)
          {
            v29 = [v13 objectForKeyedSubscript:v28];
            [v26 setAsset:v29];
            [v26 setSubsampleFactor:sub_1E2B4(v29)];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }
}

- (id)_fetchAssetsForNewPhotos:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * v9) objectForKeyedSubscript:{UIImagePickerControllerPHAsset, v19}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 localIdentifier];
          [v4 addObject:v12];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = NTKPHAssetsForLocalIdentifiers();
  v14 = [v13 count];
  if (v14 != [v4 count])
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_29CF4(v13, v4, v15);
    }
  }

  if ([v13 count])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)_copyOrTranscodePhotosTo:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1BB28;
  v16 = sub_1BB38;
  v17 = objc_opt_new();
  orderList = self->_orderList;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_20B28;
  v9[3] = &unk_493B0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)orderList enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)_reinitializeWithImageList:(id)a3 andResourceDirectory:(id)a4
{
  v5 = a3;
  v22 = a4;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [NTKUltraCubePhoto decodeFromDictionary:*(*(&v24 + 1) + 8 * v11) forResourceDirectory:v22];
        v13 = [v12 localIdentifier];
        v14 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v13];
        v15 = [v14 asset];

        v16 = objc_opt_new();
        [v16 setAsset:v15];
        [v16 setSubsampleFactor:sub_1E2B4(v15)];
        [v16 setPhoto:v12];
        [v16 setUserAdjusted:{objc_msgSend(v12, "isUserAdjusted")}];
        v17 = objc_alloc_init(_NTKLayoutDescriptor);
        [v12 originalCrop];
        [(_NTKLayoutDescriptor *)v17 setCrop:?];
        [v12 timeElementUnitBaseline];
        [(_NTKLayoutDescriptor *)v17 setBaseline:?];
        [v12 timeElementZorder];
        [(_NTKLayoutDescriptor *)v17 setTimeElementZorder:?];
        [v12 maskedImageZorder];
        [(_NTKLayoutDescriptor *)v17 setMaskedImageZorder:?];
        [v16 setLayout:v17];
        [(NSMutableDictionary *)v6 setObject:v16 forKeyedSubscript:v13];
        [(NSMutableArray *)v7 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  orderList = self->_orderList;
  self->_orderList = v7;
  v19 = v7;

  photos = self->_photos;
  self->_photos = v6;
}

- (BOOL)_ensurePreviewEditSessionIsLoadedForPhotoAtIndex:(int64_t)a3 computeCrop:(BOOL)a4
{
  if (a3 < 0)
  {
    return 0;
  }

  v4 = a4;
  if ([(NSMutableArray *)self->_orderList count]<= a3)
  {
    return 0;
  }

  if (!self->_previewEditSession || self->_editedIndex != a3)
  {
    v8 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:a3];
    v9 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v8];
    v10 = [v9 asset];
    v7 = v10 != 0;

    if (v10)
    {
      v11 = [(NTKCompanionUltraCubePhotosEditor *)self _createPreviewEditSessionForPhoto:v9];
      previewEditSession = self->_previewEditSession;
      self->_previewEditSession = v11;

      self->_editedIndex = a3;
      v13 = [v9 photo];
      if (v13 && (v14 = v13, [v9 asset], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "modificationDate"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16) && (objc_msgSend(v9, "asset"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "ntk_modificationDate"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "photo"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "modificationDate"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v20), v22 = v21, v20, v19, v18, v17, v22 > 1.0))
      {
        if (!v4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_16;
        }

        v23 = [(_NTKPreviewEditSession *)self->_previewEditSession layout];
        [v23 crop];
        IsEmpty = CGRectIsEmpty(v34);

        if (!IsEmpty)
        {
          goto LABEL_16;
        }
      }

      v25 = self->_previewEditSession;
      v26 = [(_NTKPreviewEditSession *)v25 photoImageMasked];
      v27 = v26 != 0;

      v28 = [(_NTKPreviewEditSession *)v25 faceRects];
      v29 = [(_NTKPreviewEditSession *)v25 previewValidator];
      [(_NTKPreviewEditSession *)v25 presentationSize];
      v32 = sub_1F52C(v28, v27, v29, v30, v31);
      [(_NTKPreviewEditSession *)v25 setLayout:v32];
    }

LABEL_16:

    return v7;
  }

  return 1;
}

- (id)_createPreviewEditSessionForPhoto:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_NTKPreviewEditSession);
  v5 = [NTKCompanionUltraCubeImageDataDescriptor alloc];
  v6 = [v3 asset];
  v7 = [(NTKCompanionUltraCubeImageDataDescriptor *)v5 initWithAsset:v6];

  if ([(NTKCompanionUltraCubeImageDataDescriptor *)v7 isValid])
  {
    [(NTKCompanionUltraCubeImageDataDescriptor *)v7 orientation];
    v8 = NTKCGImagePropertyOrientationToUIImageOrientation();
    v9 = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 data];
    v10 = +[NTKCompanionResourceDirectoryEditor _subsampledImageWithData:orientation:subsampleFactor:](NTKCompanionResourceDirectoryEditor, "_subsampledImageWithData:orientation:subsampleFactor:", v9, v8, [v3 subsampleFactor]);

    v11 = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 segmentation];
    if ([v11 hasAuxiliaryDictionary] && (v12 = objc_msgSend(v11, "auxiliaryMaskImage")) != 0)
    {
      v13 = v12;
      v14 = sub_213BC([v10 CGImage], v12);
      v15 = [UIImage imageWithCGImage:v14 scale:v8 orientation:1.0];
      v16 = [[NTKUltraCubePreviewCoveragePercentageValidator alloc] initWithMaskImage:v13 orientation:[(NTKCompanionUltraCubeImageDataDescriptor *)v7 orientation]];
      CGImageRelease(v14);
      CGImageRelease(v13);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v18 = [v11 auxiliaryDictionary];
    [(_NTKPreviewEditSession *)v4 setAuxiliaryDict:v18];

    v19 = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 faceRects];
    [(_NTKPreviewEditSession *)v4 setFaceRects:v19];

    [(_NTKPreviewEditSession *)v4 setOrientation:[(NTKCompanionUltraCubeImageDataDescriptor *)v7 orientation]];
    [(NTKCompanionUltraCubeImageDataDescriptor *)v7 presentationSize];
    [(_NTKPreviewEditSession *)v4 setPresentationSize:?];
    [(_NTKPreviewEditSession *)v4 setPhotoImage:v10];
    [(_NTKPreviewEditSession *)v4 setPhotoImageMasked:v15];
    [(_NTKPreviewEditSession *)v4 setPreviewValidator:v16];
    v20 = [v3 layout];
    v21 = [v20 copy];
    [(_NTKPreviewEditSession *)v4 setLayout:v21];

    -[_NTKPreviewEditSession setUserAdjusted:](v4, "setUserAdjusted:", [v3 isUserAdjusted]);
    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end