@interface THBookCoverViewController
- (THBookCoverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)th_fetchCoverImage;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THBookCoverViewController

- (THBookCoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = THBookCoverViewController;
  v4 = [(THBookCoverViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(THBookCoverViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = THBookCoverViewController;
  [(THBookCoverViewController *)&v7 viewDidLoad];
  view = [(THBookCoverViewController *)self view];
  v4 = [UIImageView alloc];
  [view bounds];
  v5 = [v4 initWithFrame:?];
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setAutoresizingMask:18];
  [(UIImageView *)self->_imageView setContentMode:1];
  [view addSubview:self->_imageView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = THBookCoverViewController;
  [(THBookCoverViewController *)&v5 viewWillAppear:appear];
  image = [(UIImageView *)self->_imageView image];

  if (!image)
  {
    [(THBookCoverViewController *)self th_fetchCoverImage];
  }
}

- (void)th_fetchCoverImage
{
  assetID = [(THAsset *)self->_asset assetID];
  if ([assetID length])
  {
    traitCollection = [(THBookCoverViewController *)self traitCollection];
    v5 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

    v6 = (v5 << 6);
    v7 = BCImageCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_29CB00(assetID, v7);
    }

    view = [(THBookCoverViewController *)self view];
    [view bounds];
    v11 = [BICDescribedImage describedImageWithIdentifier:assetID size:v6 processingOptions:v9, v10];

    [v11 setRequestOptions:18];
    [v11 setPriority:6];
    title = [(THAsset *)self->_asset title];
    [v11 setTitle:title];

    author = [(THAsset *)self->_asset author];
    [v11 setAuthor:author];

    v14 = [v11 copy];
    [v14 setRequestOptions:514];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_5B610;
    v33[4] = sub_5B620;
    v34 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_5B610;
    v31[4] = sub_5B620;
    v32 = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    dispatch_group_enter(v15);
    v16 = +[BCCacheManager defaultCacheManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_5B628;
    v28[3] = &unk_45BCA8;
    v30 = v33;
    v17 = v15;
    v29 = v17;
    [v16 fetchCGImageFor:v14 forRequest:v14 timeOut:1 waitForNonGeneric:v28 completion:4.0];

    v18 = +[BCCacheManager defaultCacheManager];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_5B688;
    v25[3] = &unk_45BCA8;
    v27 = v31;
    v19 = v17;
    v26 = v19;
    [v18 fetchCGImageFor:v11 forRequest:v11 timeOut:1 waitForNonGeneric:v25 completion:4.0];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_5B6E8;
    v20[3] = &unk_45BCD0;
    v23 = v33;
    v24 = v31;
    v21 = assetID;
    selfCopy = self;
    dispatch_group_notify(v19, &_dispatch_main_q, v20);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }
}

@end