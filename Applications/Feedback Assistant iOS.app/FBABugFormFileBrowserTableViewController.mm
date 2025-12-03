@interface FBABugFormFileBrowserTableViewController
- (CGRect)documentInteractionControllerRectForPreview:(id)preview;
- (FBABugFormFileBrowserTableViewController)initWithGroup:(id)group;
- (FBABugFormFileBrowserTableViewController)initWithUrl:(id)url;
- (id)documentInteractionControllerViewForPreview:(id)preview;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)documentInteractionControllerDidEndPreview:(id)preview;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBABugFormFileBrowserTableViewController

- (FBABugFormFileBrowserTableViewController)initWithGroup:(id)group
{
  groupCopy = group;
  v8.receiver = self;
  v8.super_class = FBABugFormFileBrowserTableViewController;
  v5 = [(FBABugFormFileBrowserTableViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBABugFormFileBrowserTableViewController *)v5 setGroup:groupCopy];
  }

  return v6;
}

- (FBABugFormFileBrowserTableViewController)initWithUrl:(id)url
{
  urlCopy = url;
  v8.receiver = self;
  v8.super_class = FBABugFormFileBrowserTableViewController;
  v5 = [(FBABugFormFileBrowserTableViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBABugFormFileBrowserTableViewController *)v5 setUrl:urlCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBABugFormFileBrowserTableViewController;
  [(FBABugFormFileBrowserTableViewController *)&v11 viewDidLoad];
  navigationItem = [(FBABugFormFileBrowserTableViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  group = [(FBABugFormFileBrowserTableViewController *)self group];

  if (group)
  {
    group2 = [(FBABugFormFileBrowserTableViewController *)self group];
    displayName = [group2 displayName];
    [(FBABugFormFileBrowserTableViewController *)self setTitle:displayName];
  }

  else
  {
    v7 = [(FBABugFormFileBrowserTableViewController *)self url];
    lastPathComponent = [v7 lastPathComponent];
    [(FBABugFormFileBrowserTableViewController *)self setTitle:lastPathComponent];

    group2 = +[NSFileManager defaultManager];
    displayName = [(FBABugFormFileBrowserTableViewController *)self url];
    v9 = [group2 contentsOfDirectoryAtURL:displayName includingPropertiesForKeys:&__NSArray0__struct options:4 error:0];
    [(FBABugFormFileBrowserTableViewController *)self setDirectoryList:v9];
  }

  tableView = [(FBABugFormFileBrowserTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"DEFileCell"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBABugFormFileBrowserTableViewController *)self group:view];

  if (v5)
  {
    group = [(FBABugFormFileBrowserTableViewController *)self group];
    attachmentItems = [group attachmentItems];
    v8 = [attachmentItems count];
  }

  else
  {
    group = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v8 = [group count];
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"DEFileCell" forIndexPath:pathCopy];
  group = [(FBABugFormFileBrowserTableViewController *)self group];

  if (group)
  {
    group2 = [(FBABugFormFileBrowserTableViewController *)self group];
    attachmentItems = [group2 attachmentItems];
    v11 = [pathCopy row];

    v12 = [attachmentItems objectAtIndexedSubscript:v11];

    displayName = [v12 displayName];
    if ([v12 isLocal])
    {
      attachedPath = [v12 attachedPath];
      v15 = [FBKFileManager isDirectory:attachedPath]^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    directoryList = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v17 = [pathCopy row];

    v12 = [directoryList objectAtIndexedSubscript:v17];

    displayName = [v12 lastPathComponent];
    v15 = [FBKFileManager isDirectory:v12]^ 1;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:displayName];

  [v7 setAccessoryType:1];
  v19 = &FBKSystemImageNameFolder;
  if (v15)
  {
    v19 = &FBKSystemImageNamePaper;
  }

  v20 = [UIImage systemImageNamed:*v19];
  imageView = [v7 imageView];
  [imageView setImage:v20];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  group = [(FBABugFormFileBrowserTableViewController *)self group];

  if (group)
  {
    group2 = [(FBABugFormFileBrowserTableViewController *)self group];
    attachmentItems = [group2 attachmentItems];
    v9 = [attachmentItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [FBAAttachmentViewingControllerSelector controllerForItem:v9];
  }

  else
  {
    directoryList = [(FBABugFormFileBrowserTableViewController *)self directoryList];
    v9 = [directoryList objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

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

      navigationController = v11;
      [navigationController setDelegate:self];
      [navigationController setAnnotation:pathCopy];
      [navigationController presentPreviewAnimated:1];
    }

    else
    {
      if (v14)
      {
        sub_100091F7C(v13);
      }

      navigationController = [(FBABugFormFileBrowserTableViewController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];
    }
  }

  else
  {
    navigationController = +[FBALog appHandle];
    if (os_log_type_enabled(navigationController, OS_LOG_TYPE_ERROR))
    {
      sub_100092004(navigationController);
    }
  }
}

- (void)documentInteractionControllerDidEndPreview:(id)preview
{
  previewCopy = preview;
  tableView = [(FBABugFormFileBrowserTableViewController *)self tableView];
  annotation = [previewCopy annotation];

  [tableView deselectRowAtIndexPath:annotation animated:1];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)preview
{
  previewCopy = preview;
  tableView = [(FBABugFormFileBrowserTableViewController *)self tableView];
  annotation = [previewCopy annotation];

  v7 = [tableView cellForRowAtIndexPath:annotation];

  imageView = [v7 imageView];
  [imageView frame];
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

- (id)documentInteractionControllerViewForPreview:(id)preview
{
  previewCopy = preview;
  tableView = [(FBABugFormFileBrowserTableViewController *)self tableView];
  annotation = [previewCopy annotation];

  v7 = [tableView cellForRowAtIndexPath:annotation];

  imageView = [v7 imageView];

  return imageView;
}

@end