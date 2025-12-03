@interface IKFolder
+ (id)folderWithFolderID:(int64_t)d;
- (IKFolder)initWithFolderID:(int64_t)d;
- (id)description;
- (void)dealloc;
@end

@implementation IKFolder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IKFolder;
  [(IKFolder *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %@ (%ld)>", NSStringFromClass(v4), -[IKFolder title](self, "title"), -[IKFolder folderID](self, "folderID")];
}

- (IKFolder)initWithFolderID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = IKFolder;
  result = [(IKFolder *)&v5 init];
  if (result)
  {
    result->_folderID = d;
    result->_title = 0;
    result->_syncToMobile = 0;
    result->_position = 0;
  }

  return result;
}

+ (id)folderWithFolderID:(int64_t)d
{
  v3 = [[IKFolder alloc] initWithFolderID:d];

  return v3;
}

@end