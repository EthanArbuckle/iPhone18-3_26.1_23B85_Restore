@interface FBAOpaqueFileViewController
+ (BOOL)shouldDisplayItem:(id)a3;
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
  v3 = [(FBAOpaqueFileViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [(FBAOpaqueFileViewController *)self item];

  if (v4)
  {
    v5 = [(FBAOpaqueFileViewController *)self item];
    v6 = [v5 displayName];
    v7 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [v7 setText:v6];

    v8 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [v8 setNumberOfLines:0];

    v9 = [(FBAOpaqueFileViewController *)self item];
    v10 = [v9 fileSize];
    v11 = [v10 unsignedLongLongValue];

    v12 = [NSByteCountFormatter stringFromByteCount:v11 countStyle:0];
    v13 = [(FBAOpaqueFileViewController *)self fileSizeLabel];
    [v13 setText:v12];

    if (FBKIsInternalInstall() && [(FBAOpaqueFileViewController *)self showsItem])
    {
      v14 = [(FBAOpaqueFileViewController *)self item];
      v15 = [v14 description];
      v16 = [NSString stringWithFormat:@"(INTERNAL)\n\n%@", v15];
      v17 = [(FBAOpaqueFileViewController *)self debugLabel];
      [v17 setText:v16];

      v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didTapView"];
      v19 = [(FBAOpaqueFileViewController *)self view];
      [v19 addGestureRecognizer:v18];

      v20 = [(FBAOpaqueFileViewController *)self debugLabel];
      [v20 setAlpha:0.0];

      v21 = [(FBAOpaqueFileViewController *)self debugLabel];
      [v21 setHidden:0];
    }
  }

  else
  {
    v22 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [v22 setText:&stru_1000E2210];

    v12 = [(FBAOpaqueFileViewController *)self fileNameLabel];
    [v12 setText:&stru_1000E2210];
  }
}

+ (BOOL)shouldDisplayItem:(id)a3
{
  v3 = a3;
  if ([v3 pointsToReachableDir])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 attachedPath];
    if ([v3 isLocal] && objc_msgSend(v5, "checkResourceIsReachableAndReturnError:", 0) && +[FBKFileManager humansCanReadFile:](FBKFileManager, "humansCanReadFile:", v5))
    {
      v6 = [v3 fileSize];
      v4 = [v6 intValue] == 0;
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
  v3 = [(FBAOpaqueFileViewController *)self debugLabel];
  [v3 alpha];
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