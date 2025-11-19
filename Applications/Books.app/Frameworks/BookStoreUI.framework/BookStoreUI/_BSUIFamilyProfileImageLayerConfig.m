@interface _BSUIFamilyProfileImageLayerConfig
- (_BSUIFamilyProfileImageLayerConfig)initWithSize:(CGSize)a3 contentsScale:(double)a4 cornerRadius:(double)a5 urlString:(id)a6;
- (id)_generateImage;
- (void)_profilePictureStoreChanged:(id)a3;
- (void)configureLayer:(id)a3;
- (void)dealloc;
@end

@implementation _BSUIFamilyProfileImageLayerConfig

- (_BSUIFamilyProfileImageLayerConfig)initWithSize:(CGSize)a3 contentsScale:(double)a4 cornerRadius:(double)a5 urlString:(id)a6
{
  height = a3.height;
  width = a3.width;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = _BSUIFamilyProfileImageLayerConfig;
  v13 = [(_BSUIFamilyProfileImageLayerConfig *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_contentsScale = a4;
    v13->_cornerRadius = a5;
    objc_storeStrong(&v13->_urlString, a6);
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v14 selector:"_profilePictureStoreChanged:" name:AAUIProfilePictureStoreDidChangeNotification object:0];
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AAUIProfilePictureStoreDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = _BSUIFamilyProfileImageLayerConfig;
  [(_BSUIFamilyProfileImageLayerConfig *)&v4 dealloc];
}

- (void)_profilePictureStoreChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2095C;
  v8[3] = &unk_387698;
  objc_copyWeak(&v9, &location);
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_209F8;
      block[3] = &unk_386C58;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_generateImage
{
  v2 = [(_BSUIFamilyProfileImageLayerConfig *)self urlString];
  v3 = [NSURL URLWithString:v2];

  v4 = BSUIGetFamilyMemberImage(v3);

  return v4;
}

- (void)configureLayer:(id)a3
{
  objc_storeStrong(&self->_layer, a3);
  v5 = a3;
  [v5 setRasterizationScale:self->_contentsScale];
  [v5 setContentsGravity:kCAGravityResizeAspectFill];
  v7 = [(_BSUIFamilyProfileImageLayerConfig *)self _generateImage];
  v6 = v7;
  [v5 setContents:{objc_msgSend(v7, "CGImage")}];
  [v5 setContentsScale:self->_contentsScale];
  [v5 setCornerRadius:self->_cornerRadius];
  [v5 setMasksToBounds:1];
}

@end