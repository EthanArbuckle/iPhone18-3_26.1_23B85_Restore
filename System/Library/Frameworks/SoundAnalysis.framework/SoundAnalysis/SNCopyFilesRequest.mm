@interface SNCopyFilesRequest
- (SNCopyFilesRequest)initWithServerInfo:(id)info serverBasePath:(id)path serverFilePaths:(id)paths localDestinationPath:(id)destinationPath;
@end

@implementation SNCopyFilesRequest

- (SNCopyFilesRequest)initWithServerInfo:(id)info serverBasePath:(id)path serverFilePaths:(id)paths localDestinationPath:(id)destinationPath
{
  v7 = sub_1C9A924A8();
  v9 = v8;
  v10 = sub_1C9A92798();
  v11 = sub_1C9A924A8();
  return sub_1C9A1F20C(info, v7, v9, v10, v11, v12);
}

@end