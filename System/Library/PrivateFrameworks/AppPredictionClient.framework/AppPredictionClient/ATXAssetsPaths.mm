@interface ATXAssetsPaths
+ (id)decDirectoryFile:(id)file;
@end

@implementation ATXAssetsPaths

+ (id)decDirectoryFile:(id)file
{
  fileCopy = file;
  decDirectory = [self decDirectory];
  v6 = [decDirectory stringByAppendingPathComponent:fileCopy];

  return v6;
}

@end