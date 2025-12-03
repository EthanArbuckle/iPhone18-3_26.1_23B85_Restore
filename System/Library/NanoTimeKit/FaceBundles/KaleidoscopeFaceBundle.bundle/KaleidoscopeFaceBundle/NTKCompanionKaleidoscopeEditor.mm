@interface NTKCompanionKaleidoscopeEditor
- (NTKCompanionKaleidoscopeEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (void)_readPickedPhoto;
- (void)_reinitializeWithPhoto:(id)photo image:(id)image;
- (void)finalizeWithCompletion:(id)completion;
- (void)imageForPhotoWithCompletion:(id)completion;
- (void)setAsset:(id)asset completion:(id)completion;
- (void)setPhoto:(id)photo completion:(id)completion;
- (void)setRawImage:(id)image completion:(id)completion;
@end

@implementation NTKCompanionKaleidoscopeEditor

- (NTKCompanionKaleidoscopeEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = NTKCompanionKaleidoscopeEditor;
  v4 = [(NTKCompanionKaleidoscopeEditor *)&v8 initWithResourceDirectory:directory forDevice:device];
  v5 = v4;
  if (v4)
  {
    resourceDirectory = [(NTKCompanionKaleidoscopeEditor *)v4 resourceDirectory];

    if (resourceDirectory)
    {
      [(NTKCompanionKaleidoscopeEditor *)v5 _readPickedPhoto];
    }

    [(NTKCompanionKaleidoscopeEditor *)v5 setState:1];
  }

  return v5;
}

- (void)finalizeWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    if ([(NTKCompanionKaleidoscopeEditor *)self state]== &dword_0 + 1)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_8C1C;
      v13[3] = &unk_24A28;
      v13[4] = self;
      v14 = completionCopy;
      dispatch_async(&_dispatch_main_q, v13);
      v5 = v14;
    }

    else if (self->_newAsset || self->_newImage)
    {
      [(NTKCompanionKaleidoscopeEditor *)self setState:4];
      v6 = dispatch_get_global_queue(2, 0);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_8D00;
      v9[3] = &unk_24A28;
      v9[4] = self;
      v10 = completionCopy;
      dispatch_async(v6, v9);

      v5 = v10;
    }

    else
    {
      pickedPhoto = self->_pickedPhoto;
      self->_pickedPhoto = 0;

      pickedImage = self->_pickedImage;
      self->_pickedImage = 0;

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_8C9C;
      v11[3] = &unk_24A28;
      v11[4] = self;
      v12 = completionCopy;
      dispatch_async(&_dispatch_main_q, v11);
      v5 = v12;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8C08;
    block[3] = &unk_24A00;
    v16 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v16;
  }
}

- (void)setPhoto:(id)photo completion:(id)completion
{
  photoCopy = photo;
  completionCopy = completion;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_9250;
    v16[3] = &unk_24AA0;
    v16[4] = self;
    v17 = completionCopy;
    v8 = objc_retainBlock(v16);
    if (photoCopy)
    {
      v9 = [objc_opt_class() _fetchAssetForPhoto:photoCopy];
      newAsset = self->_newAsset;
      self->_newAsset = v9;

      v11 = self->_newAsset;
      if (v11)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_93E8;
        v14[3] = &unk_24AC8;
        v14[4] = self;
        v15 = v8;
        sub_92C8(v11, v14);
      }

      else
      {
        (v8[2])(v8, 0);
      }
    }

    else
    {
      v12 = self->_newAsset;
      self->_newAsset = 0;

      newImage = self->_newImage;
      self->_newImage = 0;

      (v8[2])(v8, 2);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_9600;
    v15[3] = &unk_24AA0;
    v15[4] = self;
    v16 = completionCopy;
    v9 = objc_retainBlock(v15);
    if (assetCopy)
    {
      objc_storeStrong(&self->_newAsset, asset);
      newAsset = self->_newAsset;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_9678;
      v13[3] = &unk_24AC8;
      v13[4] = self;
      v14 = v9;
      sub_92C8(newAsset, v13);
    }

    else
    {
      v11 = self->_newAsset;
      self->_newAsset = 0;

      newImage = self->_newImage;
      self->_newImage = 0;

      (v9[2])(v9, 2);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setRawImage:(id)image completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]<= 2)
  {
    v7 = [objc_opt_class() _scaleImage:imageCopy toLongestEdgeInPixels:768.0];
    newImage = self->_newImage;
    self->_newImage = v7;

    newAsset = self->_newAsset;
    self->_newAsset = 0;

    pickedPhoto = self->_pickedPhoto;
    self->_pickedPhoto = 0;

    pickedImage = self->_pickedImage;
    self->_pickedImage = 0;

    [(NTKCompanionKaleidoscopeEditor *)self setState:2];
  }

  completionCopy[2](completionCopy);
}

- (void)imageForPhotoWithCompletion:(id)completion
{
  completionCopy = completion;
  state = [(NTKCompanionKaleidoscopeEditor *)self state];
  if (state == &dword_0 + 1)
  {
    pickedImage = self->_pickedImage;
    if (!pickedImage)
    {
      v7 = self->_pickedPhoto;
      v8 = NTKPhotosImageForPhoto();
      v9 = self->_pickedImage;
      self->_pickedImage = v8;

      pickedImage = self->_pickedImage;
    }

    completionCopy[2](completionCopy, pickedImage);
  }

  else if (state == &dword_0 + 2 && !self->_newImage)
  {
    newAsset = self->_newAsset;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_996C;
    v11[3] = &unk_24AC8;
    v11[4] = self;
    v12 = completionCopy;
    sub_92C8(newAsset, v11);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_readPickedPhoto
{
  resourceDirectory = [(NTKCompanionKaleidoscopeEditor *)self resourceDirectory];
  v6 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory];

  firstObject = [v6 firstObject];
  pickedPhoto = self->_pickedPhoto;
  self->_pickedPhoto = firstObject;
}

- (void)_reinitializeWithPhoto:(id)photo image:(id)image
{
  photoCopy = photo;
  imageCopy = image;
  pickedPhoto = self->_pickedPhoto;
  self->_pickedPhoto = photoCopy;
  v9 = photoCopy;

  pickedImage = self->_pickedImage;
  self->_pickedImage = imageCopy;
  v11 = imageCopy;

  newAsset = self->_newAsset;
  self->_newAsset = 0;

  newImage = self->_newImage;
  self->_newImage = 0;

  [(NTKCompanionKaleidoscopeEditor *)self setState:1];
}

@end