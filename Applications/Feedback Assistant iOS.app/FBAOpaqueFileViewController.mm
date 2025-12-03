@interface FBAOpaqueFileViewController
+ (BOOL)shouldDisplayItem:(id)item;
- (BOOL)showsItem;
- (UIImageView)icon;
- (UILabel)debugLabel;
- (UILabel)fileNameLabel;
- (UILabel)fileSizeLabel;
- (void)didTapView;
- (void)viewDidLoad;
@end

@implementation FBAOpaqueFileViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = FBAOpaqueFileViewController;
  [(FBAOpaqueFileViewController *)&v23 viewDidLoad];
  navigationItem = [(FBAOpaqueFileViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  item = [(FBAOpaqueFileViewController *)self item];

  if (item)
  {
    item2 = [(FBAOpaqueFileViewController *)self item];
    displayName = [item2 displayName];
    fileNameLabel = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [fileNameLabel setText:displayName];

    fileNameLabel2 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [fileNameLabel2 setNumberOfLines:0];

    item3 = [(FBAOpaqueFileViewController *)self item];
    fileSize = [item3 fileSize];
    unsignedLongLongValue = [fileSize unsignedLongLongValue];

    fileNameLabel4 = [NSByteCountFormatter stringFromByteCount:unsignedLongLongValue countStyle:0];
    fileSizeLabel = [(FBAOpaqueFileViewController *)self fileSizeLabel];
    [fileSizeLabel setText:fileNameLabel4];

    if (FBKIsInternalInstall() && [(FBAOpaqueFileViewController *)self showsItem])
    {
      item4 = [(FBAOpaqueFileViewController *)self item];
      v15 = [item4 description];
      v16 = [NSString stringWithFormat:@"(INTERNAL)\n\n%@", v15];
      debugLabel = [(FBAOpaqueFileViewController *)self debugLabel];
      [debugLabel setText:v16];

      v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didTapView"];
      view = [(FBAOpaqueFileViewController *)self view];
      [view addGestureRecognizer:v18];

      debugLabel2 = [(FBAOpaqueFileViewController *)self debugLabel];
      [debugLabel2 setAlpha:0.0];

      debugLabel3 = [(FBAOpaqueFileViewController *)self debugLabel];
      [debugLabel3 setHidden:0];
    }
  }

  else
  {
    fileNameLabel3 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [fileNameLabel3 setText:&stru_1000E2210];

    fileNameLabel4 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [fileNameLabel4 setText:&stru_1000E2210];
  }
}

+ (BOOL)shouldDisplayItem:(id)item
{
  itemCopy = item;
  if ([itemCopy pointsToReachableDir])
  {
    v4 = 0;
  }

  else
  {
    attachedPath = [itemCopy attachedPath];
    if ([itemCopy isLocal] && objc_msgSend(attachedPath, "checkResourceIsReachableAndReturnError:", 0) && +[FBKFileManager humansCanReadFile:](FBKFileManager, "humansCanReadFile:", attachedPath))
    {
      fileSize = [itemCopy fileSize];
      v4 = [fileSize intValue] == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)showsItem
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:FBKShowDEDItem];

  return v3;
}

- (void)didTapView
{
  debugLabel = [(FBAOpaqueFileViewController *)self debugLabel];
  [debugLabel alpha];
  v5 = v4 == 0.0;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006824;
  v6[3] = &unk_1000DE548;
  v7 = v5;
  v6[4] = self;
  [UIView animateWithDuration:v6 animations:0.25];
}

- (UILabel)debugLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_debugLabel);

  return WeakRetained;
}

- (UILabel)fileNameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_fileNameLabel);

  return WeakRetained;
}

- (UILabel)fileSizeLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_fileSizeLabel);

  return WeakRetained;
}

- (UIImageView)icon
{
  WeakRetained = objc_loadWeakRetained(&self->_icon);

  return WeakRetained;
}

@end