@interface NTKCompanionUltraCubePhotosEditor
- (BOOL)_ensurePreviewEditSessionIsLoadedForPhotoAtIndex:(int64_t)index computeCrop:(BOOL)crop;
- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count;
- (BOOL)addPhotosFromUIImagePicker:(id)picker;
- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index;
- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index;
- (NTKCompanionUltraCubePhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (id)_copyOrTranscodePhotosTo:(id)to;
- (id)_createPreviewEditSessionForPhoto:(id)photo;
- (id)_fetchAssetsForNewPhotos:(id)photos;
- (void)_fetchAssetsForResourceDirectoryPhotos;
- (void)_readResourceDirectoryPhotosFrom:(id)from;
- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory;
- (void)deletePhotoAtIndex:(int64_t)index;
- (void)finalizeWithCompletion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)purgeResourcesForPreviewAtIndex:(int64_t)index;
- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)thumbnailImageForPhotoAtIndex:(int64_t)index completion:(id)completion;
@end

@implementation NTKCompanionUltraCubePhotosEditor

- (NTKCompanionUltraCubePhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = NTKCompanionUltraCubePhotosEditor;
  v4 = [(NTKCompanionUltraCubePhotosEditor *)&v14 initWithResourceDirectory:directory forDevice:device];
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
    resourceDirectory = [(NTKCompanionUltraCubePhotosEditor *)v4 resourceDirectory];

    if (resourceDirectory)
    {
      resourceDirectory2 = [(NTKCompanionUltraCubePhotosEditor *)v4 resourceDirectory];
      [(NTKCompanionUltraCubePhotosEditor *)v4 _readResourceDirectoryPhotosFrom:resourceDirectory2];
    }

    [(NTKCompanionUltraCubePhotosEditor *)v4 setState:1];
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  completionCopy = completion;
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
  state = [(NTKCompanionUltraCubePhotosEditor *)self state];
  v15[4] = self;
  v6 = completionCopy;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  if ([(NTKCompanionUltraCubePhotosEditor *)self state]&& [(NTKCompanionUltraCubePhotosEditor *)self state]<= 2)
  {
    if ([(NTKCompanionUltraCubePhotosEditor *)self state]== &dword_0 + 1)
    {
      resourceDirectory = [(NTKCompanionUltraCubePhotosEditor *)self resourceDirectory];
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

      resourceDirectory = [(NTKCompanionUltraCubePhotosEditor *)self galleryPreviewResourceDirectory];
    }

    v10 = *(v20 + 5);
    *(v20 + 5) = resourceDirectory;

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

- (void)finalizeWithCompletion:(id)completion
{
  completionCopy = completion;
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
      v11 = completionCopy;
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
      v9 = completionCopy;
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
    v13 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
    v6 = v13;
  }
}

- (BOOL)addPhotosFromUIImagePicker:(id)picker
{
  selfCopy = self;
  v4 = [(NTKCompanionUltraCubePhotosEditor *)self _fetchAssetsForNewPhotos:picker];
  LOBYTE(selfCopy) = [(NTKCompanionUltraCubePhotosEditor *)selfCopy addAssetsFromAssetList:v4 maxPhotosCount:24];

  return selfCopy;
}

- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count
{
  listCopy = list;
  if (!-[NTKCompanionUltraCubePhotosEditor state](self, "state") || -[NTKCompanionUltraCubePhotosEditor state](self, "state") > 2 || (v7 = -[NTKCompanionUltraCubePhotosEditor photosCount](self, "photosCount"), [listCopy count] + v7 > count))
  {
    v8 = 0;
    goto LABEL_5;
  }

  firstObject = [(NSMutableArray *)self->_orderList firstObject];
  v39 = listCopy;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = listCopy;
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
      localIdentifier = [v13 localIdentifier];
      v15 = objc_opt_new();
      [v15 setAsset:v13];
      [v15 setSubsampleFactor:sub_1E2B4(v13)];
      [v15 setPhoto:0];
      v16 = objc_alloc_init(_NTKLayoutDescriptor);
      [v15 setLayout:v16];

      v17 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:localIdentifier];
      v18 = v17;
      if (v17)
      {
        if ([v17 isInResourceDirectory])
        {
          photo = [v18 photo];
          modificationDate = [photo modificationDate];
          ntk_modificationDate = [v13 ntk_modificationDate];
          [modificationDate timeIntervalSince1970];
          v23 = v22;
          [ntk_modificationDate timeIntervalSince1970];
          v25 = vabdd_f64(v23, v24);

          v26 = _NTKLoggingObjectForDomain();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25 > 2.0)
          {
            if (v27)
            {
              photo2 = [v18 photo];
              baseImageURL = [photo2 baseImageURL];
              *buf = 138412290;
              v47 = baseImageURL;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: replacing existing photo %@ because it was modified", buf, 0xCu);
            }

            [(NSMutableDictionary *)self->_photos setObject:v15 forKeyedSubscript:localIdentifier];
            goto LABEL_26;
          }

          if (v27)
          {
            photo3 = [v18 photo];
            baseImageURL2 = [photo3 baseImageURL];
            *buf = 138412290;
            v47 = baseImageURL2;
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
            photo3 = [v15 asset];
            baseImageURL2 = [photo3 localIdentifier];
            *buf = 138412290;
            v47 = baseImageURL2;
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
        asset = [v15 asset];
        localIdentifier2 = [asset localIdentifier];
        *buf = 138412290;
        v47 = localIdentifier2;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: adding new asset %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_photos setObject:v15 forKeyedSubscript:localIdentifier];
      [(NSMutableArray *)self->_orderList addObject:localIdentifier];
LABEL_26:
    }

    v11 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v11);
LABEL_28:

  if (self->_galleryPreviewIsValid)
  {
    firstObject2 = [(NSMutableArray *)self->_orderList firstObject];
    self->_galleryPreviewIsValid = NTKEqualStrings();
  }

  [(NTKCompanionUltraCubePhotosEditor *)self setState:2];

  v8 = 1;
  listCopy = v39;
LABEL_5:

  return v8;
}

- (void)deletePhotoAtIndex:(int64_t)index
{
  if (![(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    return;
  }

  state = [(NTKCompanionUltraCubePhotosEditor *)self state];
  if (index < 0 || state > 2 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    return;
  }

  v6 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
  [(NSMutableArray *)self->_orderList removeObject:v6];
  v7 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v6];
  if ([v7 isInResourceDirectory])
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      photo = [v7 photo];
      baseImageURL = [photo baseImageURL];
      *v15 = 138412546;
      *&v15[4] = baseImageURL;
      *&v15[12] = 2048;
      *&v15[14] = index;
      v11 = "deletePhotoAtIndex: deleting existing photo %@ at index %ld";
LABEL_10:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v11, v15, 0x16u);
    }
  }

  else
  {
    scaledImageCache = self->_scaledImageCache;
    asset = [v7 asset];
    localIdentifier = [asset localIdentifier];
    [(NSCache *)scaledImageCache removeObjectForKey:localIdentifier];

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      photo = [v7 asset];
      baseImageURL = [photo localIdentifier];
      *v15 = 138412546;
      *&v15[4] = baseImageURL;
      *&v15[12] = 2048;
      *&v15[14] = index;
      v11 = "deletePhotoAtIndex: deleting new asset id %@ at index %ld";
      goto LABEL_10;
    }
  }

  [(NSMutableDictionary *)self->_photos removeObjectForKey:v6];
  if (self->_galleryPreviewIsValid)
  {
    self->_galleryPreviewIsValid = index != 0;
  }

  [(NTKCompanionUltraCubePhotosEditor *)self setState:2, *v15, *&v15[16]];
}

- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  if ([(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    state = [(NTKCompanionUltraCubePhotosEditor *)self state];
    if ((index & 0x8000000000000000) == 0 && state <= 2)
    {
      v8 = [(NSMutableArray *)self->_orderList count];
      if ((toIndex & 0x8000000000000000) == 0 && v8 > index && [(NSMutableArray *)self->_orderList count]> toIndex)
      {
        v9 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
        v10 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134218240;
          indexCopy = index;
          v16 = 2048;
          toIndexCopy = toIndex;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v14, 0x16u);
        }

        [(NSMutableArray *)self->_orderList removeObjectAtIndex:index];
        [(NSMutableArray *)self->_orderList insertObject:v9 atIndex:toIndex];
        if (self->_galleryPreviewIsValid)
        {
          if (index)
          {
            v11 = toIndex == 0;
          }

          else
          {
            v11 = 1;
          }

          v13 = !v11 || index == toIndex;
          self->_galleryPreviewIsValid = v13;
        }

        [(NTKCompanionUltraCubePhotosEditor *)self setState:2];
      }
    }
  }
}

- (void)thumbnailImageForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1EB1C;
    v44[3] = &unk_49298;
    v45 = completionCopy;
    dispatch_async(&_dispatch_main_q, v44);
    v7 = v45;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
    v8 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
    if ([v8 isInResourceDirectory])
    {
      photo = [v8 photo];
      baseImageURL = [photo baseImageURL];
      v11 = NTKPhotosImageForURL();

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1EB30;
      block[3] = &unk_492C0;
      v42 = v11;
      v43 = completionCopy;
      v12 = v11;
      dispatch_async(&_dispatch_main_q, block);

      v13 = v43;
    }

    else
    {
      scaledImageCache = self->_scaledImageCache;
      asset = [v8 asset];
      localIdentifier = [asset localIdentifier];
      v12 = [(NSCache *)scaledImageCache objectForKey:localIdentifier];

      if (v12)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1EB44;
        v38[3] = &unk_492C0;
        v40 = completionCopy;
        v12 = v12;
        v39 = v12;
        dispatch_async(&_dispatch_main_q, v38);

        v13 = v40;
      }

      else
      {
        layout = [v8 layout];
        [layout crop];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v31 = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1EB58;
        v34 = &unk_49360;
        selfCopy = self;
        v26 = v8;
        v36 = v26;
        v37 = completionCopy;
        v27 = objc_retainBlock(&v31);
        v53.origin.x = v19;
        v53.origin.y = v21;
        v53.size.width = v23;
        v53.size.height = v25;
        if (CGRectIsEmpty(v53))
        {
          asset2 = [v26 asset];
          [NTKCompanionUltraCubePhotosEditor _imageForAsset:asset2 forSize:v27 completion:480.0, 600.0];
        }

        else
        {
          asset3 = [v26 asset];
          v30 = v27;
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_2151C;
          v46[3] = &unk_49400;
          v49 = v19;
          v50 = v21;
          v51 = v23;
          v52 = v25;
          v47 = asset3;
          v48 = v30;
          asset2 = asset3;
          [NTKCompanionUltraCubePhotosEditor _imageDataForAsset:asset2 completion:v46];
        }

        v13 = v36;
      }
    }
  }
}

- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
  v6 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v5];
  asset = [v6 asset];
  v8 = asset != 0;

  return v8;
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EDCC;
  block[3] = &unk_49388;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F198;
  block[3] = &unk_49388;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index
{
  v3 = 1.0;
  if (index < 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0;
    if ([(NSMutableArray *)self->_orderList count]> index)
    {
      v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
      v8 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
      asset = [v8 asset];

      v10 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v7];
      subsampleFactor = [v10 subsampleFactor];

      if (asset)
      {
        pixelWidth = [asset pixelWidth];
        pixelHeight = [asset pixelHeight];
        if (subsampleFactor * 480.0 / pixelWidth <= 1.0)
        {
          v6 = subsampleFactor * 480.0 / pixelWidth;
        }

        else
        {
          v6 = 1.0;
        }

        if (subsampleFactor * 600.0 / pixelHeight <= 1.0)
        {
          v3 = subsampleFactor * 600.0 / pixelHeight;
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

- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index
{
  previewCopy = preview;
  if (![(NTKCompanionUltraCubePhotosEditor *)self state])
  {
    goto LABEL_16;
  }

  state = [(NTKCompanionUltraCubePhotosEditor *)self state];
  v8 = 0;
  if (index < 0 || state > 2)
  {
    goto LABEL_17;
  }

  if ([(NSMutableArray *)self->_orderList count]<= index || ![(NTKCompanionUltraCubePhotosEditor *)self canChangeOriginalCropOfPhotoAtIndex:index])
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v9 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
  v10 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v9];
  [previewCopy crop];
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
    layout = [v10 layout];
    position = [layout position];
    timeLabelPosition = [previewCopy timeLabelPosition];

    layout2 = [v10 layout];
    [layout2 crop];
    v33 = CLKRectEqualsRect();

    if (v33)
    {
      v34 = position == timeLabelPosition;
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
    asset = [v10 asset];
    [v35 setAsset:asset];

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
  asset2 = [v35 asset];
  localIdentifier = [asset2 localIdentifier];
  [(NSCache *)scaledImageCache removeObjectForKey:localIdentifier];

  layout3 = [v35 layout];
  [layout3 setCrop:{v26, v28, width, height}];

  timeLabelPosition2 = [previewCopy timeLabelPosition];
  layout4 = [v35 layout];
  [layout4 setPosition:timeLabelPosition2];

  [v35 setUserAdjusted:{objc_msgSend(previewCopy, "isRevertable")}];
  [(NSMutableDictionary *)self->_photos setObject:v35 forKeyedSubscript:v9];
  v45 = 0;
LABEL_23:
  [(NTKCompanionUltraCubePhotosEditor *)self purgeResourcesForPreviewAtIndex:index];
  if (self->_galleryPreviewIsValid)
  {
    if (index)
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

- (void)purgeResourcesForPreviewAtIndex:(int64_t)index
{
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "purgeResourcesForPreviewAtIndex: %ld", &v7, 0xCu);
  }

  if (self->_editedIndex == index)
  {
    self->_editedIndex = -1;
    previewEditSession = self->_previewEditSession;
    self->_previewEditSession = 0;
  }
}

- (void)_readResourceDirectoryPhotosFrom:(id)from
{
  [NTKUltraCubePhotosReader readerForResourceDirectory:from];
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
        localIdentifier = [v8 localIdentifier];
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
        [(NSMutableDictionary *)self->_photos setObject:v10 forKeyedSubscript:localIdentifier];
        [(NSMutableArray *)self->_orderList addObject:localIdentifier];
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
  allValues = [(NSMutableDictionary *)self->_photos allValues];
  v5 = [allValues countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        if ([v9 isInResourceDirectory])
        {
          photo = [v9 photo];
          localIdentifier = [photo localIdentifier];

          if (localIdentifier)
          {
            [v3 addObject:localIdentifier];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v38 objects:v44 count:16];
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
        localIdentifier2 = [v19 localIdentifier];
        [v13 setObject:v19 forKeyedSubscript:localIdentifier2];
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_photos allValues];
  v22 = [allValues2 countByEnumeratingWithState:&v30 objects:v42 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        v26 = *(*(&v30 + 1) + 8 * k);
        if ([v26 isInResourceDirectory])
        {
          photo2 = [v26 photo];
          localIdentifier3 = [photo2 localIdentifier];

          if (localIdentifier3)
          {
            v29 = [v13 objectForKeyedSubscript:localIdentifier3];
            [v26 setAsset:v29];
            [v26 setSubsampleFactor:sub_1E2B4(v29)];
          }
        }
      }

      v23 = [allValues2 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }
}

- (id)_fetchAssetsForNewPhotos:(id)photos
{
  photosCopy = photos;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = photosCopy;
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
          localIdentifier = [v10 localIdentifier];
          [v4 addObject:localIdentifier];
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

- (id)_copyOrTranscodePhotosTo:(id)to
{
  toCopy = to;
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
  v6 = toCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)orderList enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory
{
  listCopy = list;
  directoryCopy = directory;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = listCopy;
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

        v12 = [NTKUltraCubePhoto decodeFromDictionary:*(*(&v24 + 1) + 8 * v11) forResourceDirectory:directoryCopy];
        localIdentifier = [v12 localIdentifier];
        v14 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:localIdentifier];
        asset = [v14 asset];

        v16 = objc_opt_new();
        [v16 setAsset:asset];
        [v16 setSubsampleFactor:sub_1E2B4(asset)];
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
        [(NSMutableDictionary *)v6 setObject:v16 forKeyedSubscript:localIdentifier];
        [(NSMutableArray *)v7 addObject:localIdentifier];

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

- (BOOL)_ensurePreviewEditSessionIsLoadedForPhotoAtIndex:(int64_t)index computeCrop:(BOOL)crop
{
  if (index < 0)
  {
    return 0;
  }

  cropCopy = crop;
  if ([(NSMutableArray *)self->_orderList count]<= index)
  {
    return 0;
  }

  if (!self->_previewEditSession || self->_editedIndex != index)
  {
    v8 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
    v9 = [(NSMutableDictionary *)self->_photos objectForKeyedSubscript:v8];
    asset = [v9 asset];
    v7 = asset != 0;

    if (asset)
    {
      v11 = [(NTKCompanionUltraCubePhotosEditor *)self _createPreviewEditSessionForPhoto:v9];
      previewEditSession = self->_previewEditSession;
      self->_previewEditSession = v11;

      self->_editedIndex = index;
      photo = [v9 photo];
      if (photo && (v14 = photo, [v9 asset], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "modificationDate"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16) && (objc_msgSend(v9, "asset"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "ntk_modificationDate"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "photo"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "modificationDate"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v20), v22 = v21, v20, v19, v18, v17, v22 > 1.0))
      {
        if (!cropCopy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!cropCopy)
        {
          goto LABEL_16;
        }

        layout = [(_NTKPreviewEditSession *)self->_previewEditSession layout];
        [layout crop];
        IsEmpty = CGRectIsEmpty(v34);

        if (!IsEmpty)
        {
          goto LABEL_16;
        }
      }

      v25 = self->_previewEditSession;
      photoImageMasked = [(_NTKPreviewEditSession *)v25 photoImageMasked];
      v27 = photoImageMasked != 0;

      faceRects = [(_NTKPreviewEditSession *)v25 faceRects];
      previewValidator = [(_NTKPreviewEditSession *)v25 previewValidator];
      [(_NTKPreviewEditSession *)v25 presentationSize];
      v32 = sub_1F52C(faceRects, v27, previewValidator, v30, v31);
      [(_NTKPreviewEditSession *)v25 setLayout:v32];
    }

LABEL_16:

    return v7;
  }

  return 1;
}

- (id)_createPreviewEditSessionForPhoto:(id)photo
{
  photoCopy = photo;
  v4 = objc_alloc_init(_NTKPreviewEditSession);
  v5 = [NTKCompanionUltraCubeImageDataDescriptor alloc];
  asset = [photoCopy asset];
  v7 = [(NTKCompanionUltraCubeImageDataDescriptor *)v5 initWithAsset:asset];

  if ([(NTKCompanionUltraCubeImageDataDescriptor *)v7 isValid])
  {
    [(NTKCompanionUltraCubeImageDataDescriptor *)v7 orientation];
    v8 = NTKCGImagePropertyOrientationToUIImageOrientation();
    data = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 data];
    v10 = +[NTKCompanionResourceDirectoryEditor _subsampledImageWithData:orientation:subsampleFactor:](NTKCompanionResourceDirectoryEditor, "_subsampledImageWithData:orientation:subsampleFactor:", data, v8, [photoCopy subsampleFactor]);

    segmentation = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 segmentation];
    if ([segmentation hasAuxiliaryDictionary] && (v12 = objc_msgSend(segmentation, "auxiliaryMaskImage")) != 0)
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

    auxiliaryDictionary = [segmentation auxiliaryDictionary];
    [(_NTKPreviewEditSession *)v4 setAuxiliaryDict:auxiliaryDictionary];

    faceRects = [(NTKCompanionUltraCubeImageDataDescriptor *)v7 faceRects];
    [(_NTKPreviewEditSession *)v4 setFaceRects:faceRects];

    [(_NTKPreviewEditSession *)v4 setOrientation:[(NTKCompanionUltraCubeImageDataDescriptor *)v7 orientation]];
    [(NTKCompanionUltraCubeImageDataDescriptor *)v7 presentationSize];
    [(_NTKPreviewEditSession *)v4 setPresentationSize:?];
    [(_NTKPreviewEditSession *)v4 setPhotoImage:v10];
    [(_NTKPreviewEditSession *)v4 setPhotoImageMasked:v15];
    [(_NTKPreviewEditSession *)v4 setPreviewValidator:v16];
    layout = [photoCopy layout];
    v21 = [layout copy];
    [(_NTKPreviewEditSession *)v4 setLayout:v21];

    -[_NTKPreviewEditSession setUserAdjusted:](v4, "setUserAdjusted:", [photoCopy isUserAdjusted]);
    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end