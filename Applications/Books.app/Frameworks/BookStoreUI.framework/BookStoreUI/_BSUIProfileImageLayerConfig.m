@interface _BSUIProfileImageLayerConfig
- (AAUIProfilePictureStore)profilePictureStore;
- (_BSUIProfileImageLayerConfig)initWithSize:(CGSize)a3 contentsScale:(double)a4 cornerRadius:(double)a5 maskColor:(id)a6;
- (id)_generateImage;
- (void)_accountStoreChanged:(id)a3;
- (void)configureLayer:(id)a3;
- (void)dealloc;
@end

@implementation _BSUIProfileImageLayerConfig

- (_BSUIProfileImageLayerConfig)initWithSize:(CGSize)a3 contentsScale:(double)a4 cornerRadius:(double)a5 maskColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = _BSUIProfileImageLayerConfig;
  v13 = [(_BSUIProfileImageLayerConfig *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_contentsScale = a4;
    v13->_cornerRadius = a5;
    objc_storeStrong(&v13->_maskColor, a6);
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v14 selector:"_accountStoreChanged:" name:AAUIProfilePictureStoreDidChangeNotification object:0];

    v16 = +[BUAccountsProvider sharedProvider];
    [v16 addObserver:v14 accountTypes:1];
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AAUIProfilePictureStoreDidChangeNotification object:0];

  v4 = +[BUAccountsProvider sharedProvider];
  [v4 removeObserver:self accountTypes:1];

  v5.receiver = self;
  v5.super_class = _BSUIProfileImageLayerConfig;
  [(_BSUIProfileImageLayerConfig *)&v5 dealloc];
}

- (void)_accountStoreChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_17D6C;
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
      block[2] = sub_17E08;
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
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 activeStoreAccount];

  if (!v4 || (-[_BSUIProfileImageLayerConfig profilePictureStore](self, "profilePictureStore"), v5 = objc_claimAutoreleasedReturnValue(), [v5 profilePictureForAccountOwnerWithoutMonogramFallback], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    if (self->_size.height >= self->_size.width)
    {
      height = self->_size.height;
    }

    else
    {
      height = self->_size.width;
    }

    if (_UISolariumEnabled())
    {
      v8 = 5;
    }

    else
    {
      v8 = 3;
    }

    v9 = [UIImageSymbolConfiguration configurationWithPointSize:v8 weight:3 scale:height];
    v10 = [UIImage systemImageNamed:@"person.crop.circle"];
    v6 = [v10 imageWithConfiguration:v9];

    v11 = [(_BSUIProfileImageLayerConfig *)self maskColor];

    if (v11)
    {
      v12 = [(_BSUIProfileImageLayerConfig *)self maskColor];
      v13 = [v6 tui_imageMaskWithColor:v12];

      v6 = v13;
    }
  }

  return v6;
}

- (void)configureLayer:(id)a3
{
  objc_storeStrong(&self->_layer, a3);
  v5 = a3;
  [v5 setRasterizationScale:self->_contentsScale];
  [v5 setContentsGravity:kCAGravityResizeAspectFill];
  v7 = [(_BSUIProfileImageLayerConfig *)self _generateImage];
  v6 = v7;
  [v5 setContents:{objc_msgSend(v7, "CGImage")}];
  [v5 setContentsScale:self->_contentsScale];
  [v5 setCornerRadius:self->_cornerRadius];
  [v5 setMasksToBounds:1];
}

- (AAUIProfilePictureStore)profilePictureStore
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 iCloudAccountName];

  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v5 username];

  if ([v3 length] && objc_msgSend(v6, "length"))
  {
    v7 = +[BUAccountsProvider sharedProvider];
    v8 = [v7 primaryAppleAccount];

    v9 = +[ACAccountStore bu_sharedAccountStore];
    v10 = [v9 aida_accountForPrimaryiCloudAccount];
    v11 = [[AAUIProfilePictureStore alloc] initWithAppleAccount:v8 grandSlamAccount:v10 accountStore:v9];
    [v11 setMonogramType:2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end