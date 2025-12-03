@interface _BSUIFamilyProfileImageLayerConfig
- (_BSUIFamilyProfileImageLayerConfig)initWithSize:(CGSize)size contentsScale:(double)scale cornerRadius:(double)radius urlString:(id)string;
- (id)_generateImage;
- (void)_profilePictureStoreChanged:(id)changed;
- (void)configureLayer:(id)layer;
- (void)dealloc;
@end

@implementation _BSUIFamilyProfileImageLayerConfig

- (_BSUIFamilyProfileImageLayerConfig)initWithSize:(CGSize)size contentsScale:(double)scale cornerRadius:(double)radius urlString:(id)string
{
  height = size.height;
  width = size.width;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = _BSUIFamilyProfileImageLayerConfig;
  v13 = [(_BSUIFamilyProfileImageLayerConfig *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_contentsScale = scale;
    v13->_cornerRadius = radius;
    objc_storeStrong(&v13->_urlString, string);
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

- (void)_profilePictureStoreChanged:(id)changed
{
  changedCopy = changed;
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
  urlString = [(_BSUIFamilyProfileImageLayerConfig *)self urlString];
  v3 = [NSURL URLWithString:urlString];

  v4 = BSUIGetFamilyMemberImage(v3);

  return v4;
}

- (void)configureLayer:(id)layer
{
  objc_storeStrong(&self->_layer, layer);
  layerCopy = layer;
  [layerCopy setRasterizationScale:self->_contentsScale];
  [layerCopy setContentsGravity:kCAGravityResizeAspectFill];
  _generateImage = [(_BSUIFamilyProfileImageLayerConfig *)self _generateImage];
  v6 = _generateImage;
  [layerCopy setContents:{objc_msgSend(_generateImage, "CGImage")}];
  [layerCopy setContentsScale:self->_contentsScale];
  [layerCopy setCornerRadius:self->_cornerRadius];
  [layerCopy setMasksToBounds:1];
}

@end