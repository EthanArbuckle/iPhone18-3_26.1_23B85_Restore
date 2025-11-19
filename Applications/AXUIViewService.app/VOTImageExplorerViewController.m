@interface VOTImageExplorerViewController
- (VOTImageExplorerViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_dismissImageExplorer;
- (void)launchImageExplorerFromHostApp:(id)a3 withImage:(id)a4 visionFeatures:(id)a5 data:(id)a6;
- (void)setupNavigationItems;
- (void)updateImageExplorerWithImage:(id)a3 features:(id)a4 data:(id)a5;
- (void)viewDidLoad;
@end

@implementation VOTImageExplorerViewController

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = VOTImageExplorerViewController;
  [(VOTImageExplorerViewController *)&v32 viewDidLoad];
  v3 = [UITableView alloc];
  v4 = [(VOTImageExplorerViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(VOTImageExplorerViewController *)self setTableView:v5];

  v6 = [(VOTImageExplorerViewController *)self tableView];
  [v6 setDataSource:self];

  v7 = [(VOTImageExplorerViewController *)self tableView];
  [v7 setDelegate:self];

  v8 = [(VOTImageExplorerViewController *)self tableView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(VOTImageExplorerViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"ImageExplorerImageCell"];

  v10 = [(VOTImageExplorerViewController *)self view];
  v11 = [(VOTImageExplorerViewController *)self tableView];
  [v10 addSubview:v11];

  v12 = [(VOTImageExplorerViewController *)self tableView];
  v13 = [v12 leftAnchor];
  v14 = [(VOTImageExplorerViewController *)self view];
  v15 = [v14 leftAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(VOTImageExplorerViewController *)self tableView];
  v18 = [v17 rightAnchor];
  v19 = [(VOTImageExplorerViewController *)self view];
  v20 = [v19 rightAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(VOTImageExplorerViewController *)self tableView];
  v23 = [v22 topAnchor];
  v24 = [(VOTImageExplorerViewController *)self view];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(VOTImageExplorerViewController *)self tableView];
  v28 = [v27 bottomAnchor];
  v29 = [(VOTImageExplorerViewController *)self view];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];
}

- (void)setupNavigationItems
{
  v3 = sub_10000CCD4(@"VoiceOverImageExplorer.title");
  v4 = [(VOTImageExplorerViewController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDoneButtonTap:"];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [(VOTImageExplorerViewController *)self navigationItem];
  [v7 setRightBarButtonItems:v6];
}

- (void)_dismissImageExplorer
{
  v3 = [(VOTImageExplorerViewController *)self delegate];
  [v3 imageExplorerViewControllerWillDisappear];

  v4 = [(VOTImageExplorerViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:0 completion:0];
}

- (void)launchImageExplorerFromHostApp:(id)a3 withImage:(id)a4 visionFeatures:(id)a5 data:(id)a6
{
  v16 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  if ([v16 length])
  {
    v13 = sub_10000CCD4(@"VoiceOverImageExplorer.title.with.hostname");
    v14 = [NSString stringWithFormat:v13, v16];
    v15 = [(VOTImageExplorerViewController *)self navigationItem];
    [v15 setTitle:v14];
  }

  else
  {
    v13 = sub_10000CCD4(@"VoiceOverImageExplorer.title");
    v14 = [(VOTImageExplorerViewController *)self navigationItem];
    [v14 setTitle:v13];
  }

  [(VOTImageExplorerViewController *)self updateImageExplorerWithImage:v12 features:v11 data:v10];
}

- (void)updateImageExplorerWithImage:(id)a3 features:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  if (v8)
  {
    [(VOTImageExplorerViewController *)self setImage:v8];
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    v14 = VOTLogImageExplorer();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10001327C();
    }

    if (v10)
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

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_7:
  [(VOTImageExplorerViewController *)self setFeatures:v9];
  if (v10)
  {
LABEL_8:
    [(VOTImageExplorerViewController *)self setData:v10];
    goto LABEL_18;
  }

LABEL_15:
  v15 = VOTLogImageExplorer();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_100013308();
  }

LABEL_18:
  v16 = [(VOTImageExplorerViewController *)self tableView];
  [v16 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(VOTImageExplorerViewController *)self data];
    v8 = [v7 count];
    v9 = a4 - 1;

    if (v8 <= v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [(VOTImageExplorerViewController *)self data];
      v11 = [v10 objectAtIndex:v9];
      v12 = [v11 values];
      v13 = [v12 count];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VOTImageExplorerViewController *)self data];
  v4 = [v3 count];

  return v4 + 1;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(VOTImageExplorerViewController *)self data];
    v8 = [v7 count];
    v9 = a4 - 1;

    if (v8 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v10 = [(VOTImageExplorerViewController *)self data];
      v11 = [v10 objectAtIndex:v9];
      v12 = [v11 key];
    }
  }

  else
  {
    v12 = sub_10000CCD4(@"VoiceOverImageExplorer.image");
  }

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [(VOTImageExplorerViewController *)self tableView];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 dequeueReusableCellWithIdentifier:@"ImageExplorerDetailCell"];

    if (!v9)
    {
      v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ImageExplorerDetailCell"];
    }

    v10 = [(VOTImageExplorerViewController *)self data];
    v11 = [v10 count];
    v12 = [v5 section] - 1;

    if (v11 > v12)
    {
      v13 = [(VOTImageExplorerViewController *)self data];
      v14 = [v13 objectAtIndex:{objc_msgSend(v5, "section") - 1}];
      v15 = [v14 values];

      v16 = [v15 count];
      if (v16 > [v5 row])
      {
        v17 = [v15 objectAtIndex:{objc_msgSend(v5, "row")}];
        v18 = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
        [v18 setText:v17];
      }
    }

    v19 = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
    [v19 setLineBreakMode:0];

    v20 = [(VOTImageExplorerImageTableViewCell *)v9 textLabel];
    [v20 setNumberOfLines:0];
  }

  else
  {
    v9 = [v7 dequeueReusableCellWithIdentifier:@"ImageExplorerImageCell"];

    if (!v9)
    {
      v9 = [[VOTImageExplorerImageTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ImageExplorerImageCell"];
    }

    v21 = [(VOTImageExplorerViewController *)self image];
    v22 = [(VOTImageExplorerImageTableViewCell *)v9 explorerImageView];
    [v22 setImage:v21];

    v20 = [(VOTImageExplorerImageTableViewCell *)v9 explorerImageView];
    v23 = [(VOTImageExplorerViewController *)self features];
    [v20 setVisionFeatures:v23];
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  if (![a4 section])
  {
    v9 = [(VOTImageExplorerViewController *)self image];
    if (v9)
    {
      v10 = v9;
      v11 = [(VOTImageExplorerViewController *)self image];
      [v11 size];
      if (v12 <= 0.0)
      {
      }

      else
      {
        v13 = [(VOTImageExplorerViewController *)self image];
        [v13 size];
        v15 = v14;

        if (v15 > 0.0)
        {
          v16 = [(VOTImageExplorerViewController *)self image];
          [v16 size];
          v18 = v17;
          v19 = [(VOTImageExplorerViewController *)self image];
          [v19 size];
          v21 = v18 / v20;

          [v6 frame];
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