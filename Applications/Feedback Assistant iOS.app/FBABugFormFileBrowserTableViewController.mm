@interface FBABugFormFileBrowserTableViewController
- (CGRect)documentInteractionControllerRectForPreview:(id)a3;
- (FBABugFormFileBrowserTableViewController)initWithGroup:(id)a3;
- (FBABugFormFileBrowserTableViewController)initWithUrl:(id)a3;
- (id)documentInteractionControllerViewForPreview:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)documentInteractionControllerDidEndPreview:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FBABugFormFileBrowserTableViewController

- (FBABugFormFileBrowserTableViewController)initWithGroup:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FBABugFormFileBrowserTableViewController;
  v5 = [(FBABugFormFileBrowserTableViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBABugFormFileBrowserTableViewController *)v5 setGroup:v4];
  }

  return v6;
}

- (FBABugFormFileBrowserTableViewController)initWithUrl:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FBABugFormFileBrowserTableViewController;
  v5 = [(FBABugFormFileBrowserTableViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBABugFormFileBrowserTableViewController *)v5 setUrl:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBABugFormFileBrowserTableViewController;
  [(FBABugFormFileBrowserTableViewController *)&v11 viewDidLoad];
  v3 = [(FBABugFormFileBrowserTableViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [(FBABugFormFileBrowserTableViewController *)self group];

  if (v4)
  {
    v5 = [(FBABugFormFileBrowserTableViewController *)self group];
    v6 = [v5 displayName];
    [(FBABugFormFileBrowserTableViewController *)self setTitle:v6];
  }

  else
  {
    v7 = [(FBABugFormFileBrowserTableViewController *)self url];
    v8 = [v7 lastPathComponent];
    [(FBABugFormFileBrowserTableViewController *)self setTitle:v8];

    v5 = +[NSFileManager defaultManager];
    v6 = [(FBABugFormFileBrowserTableViewController *)self url];
    v9 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:&__NSArray0__struct options:4 error:0];
    [(FBABugFormFileBrowserTableViewController *)self setDirectoryList:v9];
  }

  v10 = [(FBABugFormFileBrowserTableViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"DEFileCell"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBABugFormFileBrowserTableViewController *)self group:a3];

  if (v5)
  {
    v6 = [(FBABugFormFileBrowserTableViewController *)self group];
    v7 = [v6 attachmentItems];
    v8 = [v7 count];
  }

  else
  {
    v6 = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v8 = [v6 count];
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"DEFileCell" forIndexPath:v6];
  v8 = [(FBABugFormFileBrowserTableViewController *)self group];

  if (v8)
  {
    v9 = [(FBABugFormFileBrowserTableViewController *)self group];
    v10 = [v9 attachmentItems];
    v11 = [v6 row];

    v12 = [v10 objectAtIndexedSubscript:v11];

    v13 = [v12 displayName];
    if ([v12 isLocal])
    {
      v14 = [v12 attachedPath];
      v15 = [FBKFileManager isDirectory:v14]^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v16 = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v17 = [v6 row];

    v12 = [v16 objectAtIndexedSubscript:v17];

    v13 = [v12 lastPathComponent];
    v15 = [FBKFileManager isDirectory:v12]^ 1;
  }

  v18 = [v7 textLabel];
  [v18 setText:v13];

  [v7 setAccessoryType:1];
  v19 = &FBKSystemImageNameFolder;
  if (v15)
  {
    v19 = &FBKSystemImageNamePaper;
  }

  v20 = [UIImage systemImageNamed:*v19];
  v21 = [v7 imageView];
  [v21 setImage:v20];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(FBABugFormFileBrowserTableViewController *)self group];

  if (v6)
  {
    v7 = [(FBABugFormFileBrowserTableViewController *)self group];
    v8 = [v7 attachmentItems];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    [FBAAttachmentViewingControllerSelector controllerForItem:v9];
  }

  else
  {
    v10 = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v9 = [v10 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    [FBAAttachmentViewingControllerSelector controllerForUrl:v9];
  }
  v11 = ;

  if (v11)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = +[FBALog appHandle];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (isKindOfClass)
    {
      if (v14)
      {
        sub_100091FC0(v13);
      }

      v15 = v11;
      [v15 setDelegate:self];
      [v15 setAnnotation:v5];
      [v15 presentPreviewAnimated:1];
    }

    else
    {
      if (v14)
      {
        sub_100091F7C(v13);
      }

      v15 = [(FBABugFormFileBrowserTableViewController *)self navigationController];
      [v15 pushViewController:v11 animated:1];
    }
  }

  else
  {
    v15 = +[FBALog appHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100092004(v15);
    }
  }
}

- (void)documentInteractionControllerDidEndPreview:(id)a3
{
  v4 = a3;
  v6 = [(FBABugFormFileBrowserTableViewController *)self tableView];
  v5 = [v4 annotation];

  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)a3
{
  v4 = a3;
  v5 = [(FBABugFormFileBrowserTableViewController *)self tableView];
  v6 = [v4 annotation];

  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [v7 imageView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)documentInteractionControllerViewForPreview:(id)a3
{
  v4 = a3;
  v5 = [(FBABugFormFileBrowserTableViewController *)self tableView];
  v6 = [v4 annotation];

  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [v7 imageView];

  return v8;
}

@end