@interface FBASqliteIndexViewController
+ (BOOL)canDisplayExtension:(id)a3 strict:(BOOL)a4;
+ (BOOL)canDisplayURL:(id)a3;
+ (id)dbUrlForMetadataUrl:(id)a3;
+ (id)removeWalShm:(id)a3;
- (CGRect)documentInteractionControllerRectForPreview:(id)a3;
- (id)documentInteractionControllerViewForPreview:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didReceiveMemoryWarning;
- (void)documentInteractionControllerDidEndPreview:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FBASqliteIndexViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBASqliteIndexViewController;
  [(FBASqliteIndexViewController *)&v5 viewDidLoad];
  v3 = [(FBASqliteIndexViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  [(FBASqliteIndexViewController *)self setClearsSelectionOnViewWillAppear:1];
  [(FBASqliteIndexViewController *)self setTableNames:&__NSArray0__struct];
  v4 = [(FBASqliteIndexViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"FBATableNameCell"];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBASqliteIndexViewController;
  [(FBASqliteIndexViewController *)&v2 didReceiveMemoryWarning];
}

+ (BOOL)canDisplayURL:(id)a3
{
  v4 = [a3 pathExtension];
  v5 = [v4 lowercaseString];

  LOBYTE(a1) = [a1 canDisplayExtension:v5 strict:0];
  return a1;
}

+ (id)dbUrlForMetadataUrl:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 lowercaseString];

  if ([a1 canDisplayExtension:v6 strict:1])
  {
    v7 = v4;
  }

  else
  {
    v8 = [v4 URLByDeletingPathExtension];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 removeWalShm:v6];
      if (v10)
      {
        v11 = [v9 URLByAppendingPathExtension:v10];

        v12 = +[NSFileManager defaultManager];
        v13 = [v11 path];
        v14 = [v12 fileExistsAtPath:v13 isDirectory:0];

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

+ (BOOL)canDisplayExtension:(id)a3 strict:(BOOL)a4
{
  if (a4)
  {

    return [&off_1000E5F90 containsObject:a3];
  }

  else
  {
    v6 = a1;
    v7 = [a1 removeWalShm:a3];
    LOBYTE(v6) = [v6 canDisplayExtension:v7 strict:1];

    return v6;
  }
}

+ (id)removeWalShm:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"-wal" withString:&stru_1000E2210];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-shm" withString:&stru_1000E2210];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(FBASqliteIndexViewController *)self tableNames];
  v11 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v7 = [(FBASqliteIndexViewController *)self reader];
  v8 = [v7 csvRepresentationForTable:v11];

  v9 = [FBABugFormAttachmentPreview textFileForString:v8 withFileName:v11];
  v10 = [UIDocumentInteractionController interactionControllerWithURL:v9];
  [v10 setDelegate:self];
  [v10 setAnnotation:v5];

  [v10 presentPreviewAnimated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(FBASqliteIndexViewController *)self tableNames:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"FBATableNameCell" forIndexPath:v6];
  v8 = [(FBASqliteIndexViewController *)self tableNames];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v7 textLabel];
  [v11 setText:v10];

  return v7;
}

- (void)documentInteractionControllerDidEndPreview:(id)a3
{
  v4 = a3;
  v6 = [(FBASqliteIndexViewController *)self tableView];
  v5 = [v4 annotation];

  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)a3
{
  v4 = a3;
  v5 = [(FBASqliteIndexViewController *)self tableView];
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
  v5 = [(FBASqliteIndexViewController *)self tableView];
  v6 = [v4 annotation];

  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [v7 imageView];

  return v8;
}

@end