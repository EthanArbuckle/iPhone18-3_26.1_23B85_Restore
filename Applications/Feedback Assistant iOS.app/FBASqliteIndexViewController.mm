@interface FBASqliteIndexViewController
+ (BOOL)canDisplayExtension:(id)extension strict:(BOOL)strict;
+ (BOOL)canDisplayURL:(id)l;
+ (id)dbUrlForMetadataUrl:(id)url;
+ (id)removeWalShm:(id)shm;
- (CGRect)documentInteractionControllerRectForPreview:(id)preview;
- (id)documentInteractionControllerViewForPreview:(id)preview;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didReceiveMemoryWarning;
- (void)documentInteractionControllerDidEndPreview:(id)preview;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBASqliteIndexViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBASqliteIndexViewController;
  [(FBASqliteIndexViewController *)&v5 viewDidLoad];
  navigationItem = [(FBASqliteIndexViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(FBASqliteIndexViewController *)self setClearsSelectionOnViewWillAppear:1];
  [(FBASqliteIndexViewController *)self setTableNames:&__NSArray0__struct];
  tableView = [(FBASqliteIndexViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"FBATableNameCell"];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBASqliteIndexViewController;
  [(FBASqliteIndexViewController *)&v2 didReceiveMemoryWarning];
}

+ (BOOL)canDisplayURL:(id)l
{
  pathExtension = [l pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  LOBYTE(self) = [self canDisplayExtension:lowercaseString strict:0];
  return self;
}

+ (id)dbUrlForMetadataUrl:(id)url
{
  urlCopy = url;
  pathExtension = [urlCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([self canDisplayExtension:lowercaseString strict:1])
  {
    v7 = urlCopy;
  }

  else
  {
    uRLByDeletingPathExtension = [urlCopy URLByDeletingPathExtension];
    if (uRLByDeletingPathExtension)
    {
      v9 = uRLByDeletingPathExtension;
      v10 = [self removeWalShm:lowercaseString];
      if (v10)
      {
        v11 = [v9 URLByAppendingPathExtension:v10];

        v12 = +[NSFileManager defaultManager];
        path = [v11 path];
        v14 = [v12 fileExistsAtPath:path isDirectory:0];

        if (v14)
        {
          v9 = v11;
          v7 = v9;
        }

        else
        {
          v7 = 0;
          v9 = v11;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)canDisplayExtension:(id)extension strict:(BOOL)strict
{
  if (strict)
  {

    return [&off_1000E5F90 containsObject:extension];
  }

  else
  {
    selfCopy = self;
    v7 = [self removeWalShm:extension];
    LOBYTE(selfCopy) = [selfCopy canDisplayExtension:v7 strict:1];

    return selfCopy;
  }
}

+ (id)removeWalShm:(id)shm
{
  v3 = [shm stringByReplacingOccurrencesOfString:@"-wal" withString:&stru_1000E2210];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-shm" withString:&stru_1000E2210];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableNames = [(FBASqliteIndexViewController *)self tableNames];
  v11 = [tableNames objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  reader = [(FBASqliteIndexViewController *)self reader];
  v8 = [reader csvRepresentationForTable:v11];

  v9 = [FBABugFormAttachmentPreview textFileForString:v8 withFileName:v11];
  v10 = [UIDocumentInteractionController interactionControllerWithURL:v9];
  [v10 setDelegate:self];
  [v10 setAnnotation:pathCopy];

  [v10 presentPreviewAnimated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(FBASqliteIndexViewController *)self tableNames:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"FBATableNameCell" forIndexPath:pathCopy];
  tableNames = [(FBASqliteIndexViewController *)self tableNames];
  v9 = [pathCopy row];

  v10 = [tableNames objectAtIndexedSubscript:v9];
  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  return v7;
}

- (void)documentInteractionControllerDidEndPreview:(id)preview
{
  previewCopy = preview;
  tableView = [(FBASqliteIndexViewController *)self tableView];
  annotation = [previewCopy annotation];

  [tableView deselectRowAtIndexPath:annotation animated:1];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)preview
{
  previewCopy = preview;
  tableView = [(FBASqliteIndexViewController *)self tableView];
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
  tableView = [(FBASqliteIndexViewController *)self tableView];
  annotation = [previewCopy annotation];

  v7 = [tableView cellForRowAtIndexPath:annotation];

  imageView = [v7 imageView];

  return imageView;
}

@end