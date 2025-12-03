@interface VOTImageExplorerViewController
- (VOTImageExplorerViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_dismissImageExplorer;
- (void)launchImageExplorerFromHostApp:(id)app withImage:(id)image visionFeatures:(id)features data:(id)data;
- (void)setupNavigationItems;
- (void)updateImageExplorerWithImage:(id)image features:(id)features data:(id)data;
- (void)viewDidLoad;
@end

@implementation VOTImageExplorerViewController

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = VOTImageExplorerViewController;
  [(VOTImageExplorerViewController *)&v32 viewDidLoad];
  v3 = [UITableView alloc];
  view = [(VOTImageExplorerViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(VOTImageExplorerViewController *)self setTableView:v5];

  tableView = [(VOTImageExplorerViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(VOTImageExplorerViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(VOTImageExplorerViewController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView4 = [(VOTImageExplorerViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ImageExplorerImageCell"];

  view2 = [(VOTImageExplorerViewController *)self view];
  tableView5 = [(VOTImageExplorerViewController *)self tableView];
  [view2 addSubview:tableView5];

  tableView6 = [(VOTImageExplorerViewController *)self tableView];
  leftAnchor = [tableView6 leftAnchor];
  view3 = [(VOTImageExplorerViewController *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v16 setActive:1];

  tableView7 = [(VOTImageExplorerViewController *)self tableView];
  rightAnchor = [tableView7 rightAnchor];
  view4 = [(VOTImageExplorerViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v21 setActive:1];

  tableView8 = [(VOTImageExplorerViewController *)self tableView];
  topAnchor = [tableView8 topAnchor];
  view5 = [(VOTImageExplorerViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v26 setActive:1];

  tableView9 = [(VOTImageExplorerViewController *)self tableView];
  bottomAnchor = [tableView9 bottomAnchor];
  view6 = [(VOTImageExplorerViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v31 setActive:1];
}

- (void)setupNavigationItems
{
  v3 = sub_10000CCD4(@"VoiceOverImageExplorer.title");
  navigationItem = [(VOTImageExplorerViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDoneButtonTap:"];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  navigationItem2 = [(VOTImageExplorerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:v6];
}

- (void)_dismissImageExplorer
{
  delegate = [(VOTImageExplorerViewController *)self delegate];
  [delegate imageExplorerViewControllerWillDisappear];

  presentingViewController = [(VOTImageExplorerViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];
}

- (void)launchImageExplorerFromHostApp:(id)app withImage:(id)image visionFeatures:(id)features data:(id)data
{
  appCopy = app;
  dataCopy = data;
  featuresCopy = features;
  imageCopy = image;
  if ([appCopy length])
  {
    v13 = sub_10000CCD4(@"VoiceOverImageExplorer.title.with.hostname");
    appCopy = [NSString stringWithFormat:v13, appCopy];
    navigationItem = [(VOTImageExplorerViewController *)self navigationItem];
    [navigationItem setTitle:appCopy];
  }

  else
  {
    v13 = sub_10000CCD4(@"VoiceOverImageExplorer.title");
    appCopy = [(VOTImageExplorerViewController *)self navigationItem];
    [appCopy setTitle:v13];
  }

  [(VOTImageExplorerViewController *)self updateImageExplorerWithImage:imageCopy features:featuresCopy data:dataCopy];
}

- (void)updateImageExplorerWithImage:(id)image features:(id)features data:(id)data
{
  imageCopy = image;
  featuresCopy = features;
  dataCopy = data;
  v11 = VOTLogImageExplorer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100013078(self);
  }

  v12 = VOTLogImageExplorer();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100013134(self);
  }

  if (imageCopy)
  {
    [(VOTImageExplorerViewController *)self setImage:imageCopy];
    if (featuresCopy)
    {
      goto LABEL_7;
    }

LABEL_12:
    v14 = VOTLogImageExplorer();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10001327C();
    }

    if (dataCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v13 = VOTLogImageExplorer();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1000131F0();
  }

  if (!featuresCopy)
  {
    goto LABEL_12;
  }

LABEL_7:
  [(VOTImageExplorerViewController *)self setFeatures:featuresCopy];
  if (dataCopy)
  {
LABEL_8:
    [(VOTImageExplorerViewController *)self setData:dataCopy];
    goto LABEL_18;
  }

LABEL_15:
  v15 = VOTLogImageExplorer();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_100013308();
  }

LABEL_18:
  tableView = [(VOTImageExplorerViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    data = [(VOTImageExplorerViewController *)self data];
    v8 = [data count];
    v9 = section - 1;

    if (v8 <= v9)
    {
      v13 = 0;
    }

    else
    {
      data2 = [(VOTImageExplorerViewController *)self data];
      v11 = [data2 objectAtIndex:v9];
      values = [v11 values];
      v13 = [values count];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  data = [(VOTImageExplorerViewController *)self data];
  v4 = [data count];

  return v4 + 1;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    data = [(VOTImageExplorerViewController *)self data];
    v8 = [data count];
    v9 = section - 1;

    if (v8 <= v9)
    {
      v12 = 0;
    }

    else
    {
      data2 = [(VOTImageExplorerViewController *)self data];
      v11 = [data2 objectAtIndex:v9];
      v12 = [v11 key];
    }
  }

  else
  {
    v12 = sub_10000CCD4(@"VoiceOverImageExplorer.image");
  }

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  tableView = [(VOTImageExplorerViewController *)self tableView];
  v8 = tableView;
  if (section)
  {
    v9 = [tableView dequeueReusableCellWithIdentifier:@"ImageExplorerDetailCell"];

    if (!v9)
    {
      v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ImageExplorerDetailCell"];
    }

    data = [(VOTImageExplorerViewController *)self data];
    v11 = [data count];
    v12 = [pathCopy section] - 1;

    if (v11 > v12)
    {
      data2 = [(VOTImageExplorerViewController *)self data];
      v14 = [data2 objectAtIndex:{objc_msgSend(pathCopy, "section") - 1}];
      values = [v14 values];

      v16 = [values count];
      if (v16 > [pathCopy row])
      {
        v17 = [values objectAtIndex:{objc_msgSend(pathCopy, "row")}];
        textLabel = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
        [textLabel setText:v17];
      }
    }

    textLabel2 = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
    [textLabel2 setLineBreakMode:0];

    textLabel3 = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
    [textLabel3 setNumberOfLines:0];
  }

  else
  {
    v9 = [tableView dequeueReusableCellWithIdentifier:@"ImageExplorerImageCell"];

    if (!v9)
    {
      v9 = [[VOTImageExplorerImageTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ImageExplorerImageCell"];
    }

    image = [(VOTImageExplorerViewController *)self image];
    explorerImageView = [(VOTImageExplorerImageTableViewCell *)v9 explorerImageView];
    [explorerImageView setImage:image];

    textLabel3 = [(VOTImageExplorerImageTableViewCell *)v9 explorerImageView];
    features = [(VOTImageExplorerViewController *)self features];
    [textLabel3 setVisionFeatures:features];
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  if (![path section])
  {
    image = [(VOTImageExplorerViewController *)self image];
    if (image)
    {
      v10 = image;
      image2 = [(VOTImageExplorerViewController *)self image];
      [image2 size];
      if (v12 <= 0.0)
      {
      }

      else
      {
        image3 = [(VOTImageExplorerViewController *)self image];
        [image3 size];
        v15 = v14;

        if (v15 > 0.0)
        {
          image4 = [(VOTImageExplorerViewController *)self image];
          [image4 size];
          v18 = v17;
          image5 = [(VOTImageExplorerViewController *)self image];
          [image5 size];
          v21 = v18 / v20;

          [viewCopy frame];
          v7 = v22 / v21;
          goto LABEL_3;
        }
      }
    }
  }

  v7 = UITableViewAutomaticDimension;
LABEL_3:

  return v7;
}

- (VOTImageExplorerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end