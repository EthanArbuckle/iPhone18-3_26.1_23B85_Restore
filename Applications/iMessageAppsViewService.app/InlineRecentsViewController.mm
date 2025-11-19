@interface InlineRecentsViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)stickerRecentsController:(id)a3 didTapSticker:(id)a4;
- (void)stickerRecentsControllerDidRequestMemojiEditor:(id)a3;
- (void)stickerRecentsControllerDidTapAppButton:(id)a3;
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
    v5 = [v3 stickerRecentsController];
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
    v5 = [v3 stickerRecentsControllerForStore:v8];
  }

  [v5 setDelegate:self];
  [(InlineRecentsViewController *)self addChildViewController:v5];
  v9 = [v5 view];
  v10 = [(InlineRecentsViewController *)self view];
  [v10 bounds];
  [v9 setFrame:?];

  [v9 setAutoresizingMask:18];
  v11 = [(InlineRecentsViewController *)self view];
  [v11 addSubview:v9];

  [v5 didMoveToParentViewController:self];
}

- (void)stickerRecentsControllerDidRequestMemojiEditor:(id)a3
{
  [AppCardViewController setNextPresentationIsFullscreenModal:1];
  v4 = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  [v4 presentCard];
}

- (void)stickerRecentsControllerDidTapAppButton:(id)a3
{
  v3 = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  [v3 presentCard];
}

- (void)stickerRecentsController:(id)a3 didTapSticker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 imageFileURL];
  v9 = [v8 path];
  v10 = [NSFileHandle fileHandleForReadingAtPath:v9];

  v11 = [(InlineRecentsViewController *)self _remoteViewControllerProxy];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v7 imageFileURL];
    v13 = [v12 absoluteString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1000108B0;
    }

    v16 = v15;

    v17 = [v7 localizedDescription];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1000108B0;
    }

    v20 = v19;

    [v11 stageStickerWithFileHandle:v10 url:v16 accessibilityLabel:v20];
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
    v23 = [(InlineRecentsViewController *)self _hostApplicationBundleIdentifier];
    [v21 trackStickerSentFromHostBundleIdentifier:v23];
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