@interface ATXAssetsPaths
+ (id)decDirectoryFile:(id)a3;
@end

@implementation ATXAssetsPaths

+ (id)decDirectoryFile:(id)a3
{
  v4 = a3;
  v5 = [a1 decDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

@end