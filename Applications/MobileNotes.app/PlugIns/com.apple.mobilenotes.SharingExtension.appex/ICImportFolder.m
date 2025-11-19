@interface ICImportFolder
- (ICImportFolder)init;
@end

@implementation ICImportFolder

- (ICImportFolder)init
{
  v8.receiver = self;
  v8.super_class = ICImportFolder;
  v2 = [(ICImportFolder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    fileURLs = v2->_fileURLs;
    v2->_fileURLs = v3;

    v5 = objc_alloc_init(NSMutableArray);
    subFolders = v2->_subFolders;
    v2->_subFolders = v5;
  }

  return v2;
}

@end