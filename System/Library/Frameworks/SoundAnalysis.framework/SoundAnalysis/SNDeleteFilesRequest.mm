@interface SNDeleteFilesRequest
- (SNDeleteFilesRequest)initWithFiles:(id)files serverBasePath:(id)path serverInfo:(id)info;
@end

@implementation SNDeleteFilesRequest

- (SNDeleteFilesRequest)initWithFiles:(id)files serverBasePath:(id)path serverInfo:(id)info
{
  v6 = sub_1C9A92798();
  v7 = sub_1C9A924A8();
  return sub_1C9876AAC(v6, v7, v8, info);
}

@end