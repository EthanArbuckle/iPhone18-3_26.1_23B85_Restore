@interface InlineRecentsViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)stickerRecentsController:(id)controller didTapSticker:(id)sticker;
- (void)stickerRecentsControllerDidRequestMemojiEditor:(id)editor;
- (void)stickerRecentsControllerDidTapAppButton:(id)button;
- (void)viewDidLoad;
@end

@implementation InlineRecentsViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = InlineRecentsViewController;
  [(InlineRecentsViewController *)&v12 viewDidLoad];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = qword_100015EA0;
  v21 = qword_100015EA0;
  if (!qword_100015EA0)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100006DCC;
    v16 = &unk_100010560;
    v17 = &v18;
    sub_100006DCC(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  if (objc_opt_respondsToSelector())
  {
    stickerRecentsController = [v3 stickerRecentsController];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = qword_100015EB0;
    v21 = qword_100015EB0;
    if (!qword_100015EB0)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100006F94;
      v16 = &unk_100010560;
      v17 = &v18;
      sub_100006F94(&v13);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = objc_alloc_init(v6);
    stickerRecentsController = [v3 stickerRecentsControllerForStore:v8];
  }

  [stickerRecentsController setDelegate:self];
  [(InlineRecentsViewController *)self addChildViewController:stickerRecentsController];
  view = [stickerRecentsController view];
  view2 = [(InlineRecentsViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(InlineRecentsViewController *)self view];
  [view3 addSubview:view];

  [stickerRecentsController didMoveToParentViewController:self];
}

- (void)stickerRecentsControllerDidRequestMemojiEditor:(id)editor
{
  [AppCardViewController setNextPresentationIsFullscreenModal:1];
  _remoteViewControllerProxy = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy presentCard];
}

- (void)stickerRecentsControllerDidTapAppButton:(id)button
{
  _remoteViewControllerProxy = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy presentCard];
}

- (void)stickerRecentsController:(id)controller didTapSticker:(id)sticker
{
  controllerCopy = controller;
  stickerCopy = sticker;
  imageFileURL = [stickerCopy imageFileURL];
  path = [imageFileURL path];
  v10 = [NSFileHandle fileHandleForReadingAtPath:path];

  _remoteViewControllerProxy = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  if (objc_opt_respondsToSelector())
  {
    imageFileURL2 = [stickerCopy imageFileURL];
    absoluteString = [imageFileURL2 absoluteString];
    v14 = absoluteString;
    if (absoluteString)
    {
      v15 = absoluteString;
    }

    else
    {
      v15 = &stru_1000108B0;
    }

    v16 = v15;

    localizedDescription = [stickerCopy localizedDescription];
    v18 = localizedDescription;
    if (localizedDescription)
    {
      v19 = localizedDescription;
    }

    else
    {
      v19 = &stru_1000108B0;
    }

    v20 = v19;

    [_remoteViewControllerProxy stageStickerWithFileHandle:v10 url:v16 accessibilityLabel:v20];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v21 = qword_100015EB8;
  v28 = qword_100015EB8;
  if (!qword_100015EB8)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100006FEC;
    v24[3] = &unk_100010560;
    v24[4] = &v25;
    sub_100006FEC(v24);
    v21 = v26[3];
  }

  v22 = v21;
  _Block_object_dispose(&v25, 8);
  if (objc_opt_respondsToSelector())
  {
    _hostApplicationBundleIdentifier = [(InlineRecentsViewController *)self _hostApplicationBundleIdentifier];
    [v21 trackStickerSentFromHostBundleIdentifier:_hostApplicationBundleIdentifier];
  }
}

+ (id)_remoteViewControllerInterface
{
  if (qword_100015E88 != -1)
  {
    sub_10000743C();
  }

  v3 = qword_100015E80;

  return v3;
}

+ (id)_exportedInterface
{
  if (qword_100015E98 != -1)
  {
    sub_100007450();
  }

  v3 = qword_100015E90;

  return v3;
}

@end