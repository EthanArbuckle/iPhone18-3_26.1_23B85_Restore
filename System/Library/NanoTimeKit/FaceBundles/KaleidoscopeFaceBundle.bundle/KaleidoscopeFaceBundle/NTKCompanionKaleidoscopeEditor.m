@interface NTKCompanionKaleidoscopeEditor
- (NTKCompanionKaleidoscopeEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4;
- (void)_readPickedPhoto;
- (void)_reinitializeWithPhoto:(id)a3 image:(id)a4;
- (void)finalizeWithCompletion:(id)a3;
- (void)imageForPhotoWithCompletion:(id)a3;
- (void)setAsset:(id)a3 completion:(id)a4;
- (void)setPhoto:(id)a3 completion:(id)a4;
- (void)setRawImage:(id)a3 completion:(id)a4;
@end

@implementation NTKCompanionKaleidoscopeEditor

- (NTKCompanionKaleidoscopeEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v8.receiver = self;
  v8.super_class = NTKCompanionKaleidoscopeEditor;
  v4 = [(NTKCompanionKaleidoscopeEditor *)&v8 initWithResourceDirectory:a3 forDevice:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NTKCompanionKaleidoscopeEditor *)v4 resourceDirectory];

    if (v6)
    {
      [(NTKCompanionKaleidoscopeEditor *)v5 _readPickedPhoto];
    }

    [(NTKCompanionKaleidoscopeEditor *)v5 setState:1];
  }

  return v5;
}

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    if ([(NTKCompanionKaleidoscopeEditor *)self state]== &dword_0 + 1)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_8C1C;
      v13[3] = &unk_24A28;
      v13[4] = self;
      v14 = v4;
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
      v10 = v4;
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
      v12 = v4;
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
    v16 = v4;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v16;
  }
}

- (void)setPhoto:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_9250;
    v16[3] = &unk_24AA0;
    v16[4] = self;
    v17 = v7;
    v8 = objc_retainBlock(v16);
    if (v6)
    {
      v9 = [objc_opt_class() _fetchAssetForPhoto:v6];
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
    v7[2](v7);
  }
}

- (void)setAsset:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]< 3)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_9600;
    v15[3] = &unk_24AA0;
    v15[4] = self;
    v16 = v8;
    v9 = objc_retainBlock(v15);
    if (v7)
    {
      objc_storeStrong(&self->_newAsset, a3);
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
    v8[2](v8);
  }
}

- (void)setRawImage:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(NTKCompanionKaleidoscopeEditor *)self state]&& [(NTKCompanionKaleidoscopeEditor *)self state]<= 2)
  {
    v7 = [objc_opt_class() _scaleImage:v12 toLongestEdgeInPixels:768.0];
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

  v6[2](v6);
}

- (void)imageForPhotoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NTKCompanionKaleidoscopeEditor *)self state];
  if (v5 == &dword_0 + 1)
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

    v4[2](v4, pickedImage);
  }

  else if (v5 == &dword_0 + 2 && !self->_newImage)
  {
    newAsset = self->_newAsset;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_996C;
    v11[3] = &unk_24AC8;
    v11[4] = self;
    v12 = v4;
    sub_92C8(newAsset, v11);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)_readPickedPhoto
{
  v3 = [(NTKCompanionKaleidoscopeEditor *)self resourceDirectory];
  v6 = [NTKPhotosReader readerForResourceDirectory:v3];

  v4 = [v6 firstObject];
  pickedPhoto = self->_pickedPhoto;
  self->_pickedPhoto = v4;
}

- (void)_reinitializeWithPhoto:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  pickedPhoto = self->_pickedPhoto;
  self->_pickedPhoto = v6;
  v9 = v6;

  pickedImage = self->_pickedImage;
  self->_pickedImage = v7;
  v11 = v7;

  newAsset = self->_newAsset;
  self->_newAsset = 0;

  newImage = self->_newImage;
  self->_newImage = 0;

  [(NTKCompanionKaleidoscopeEditor *)self setState:1];
}

@end