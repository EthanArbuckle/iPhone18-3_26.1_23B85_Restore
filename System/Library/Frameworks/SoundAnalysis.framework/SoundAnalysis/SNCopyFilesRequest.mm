@interface SNCopyFilesRequest
- (SNCopyFilesRequest)initWithServerInfo:(id)a3 serverBasePath:(id)a4 serverFilePaths:(id)a5 localDestinationPath:(id)a6;
@end

@implementation SNCopyFilesRequest

- (SNCopyFilesRequest)initWithServerInfo:(id)a3 serverBasePath:(id)a4 serverFilePaths:(id)a5 localDestinationPath:(id)a6
{
  v7 = sub_1C9A924A8();
  v9 = v8;
  v10 = sub_1C9A92798();
  v11 = sub_1C9A924A8();
  return sub_1C9A1F20C(a3, v7, v9, v10, v11, v12);
}

@end