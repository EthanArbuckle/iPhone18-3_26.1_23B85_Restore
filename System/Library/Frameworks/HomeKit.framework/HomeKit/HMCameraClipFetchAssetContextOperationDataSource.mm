@interface HMCameraClipFetchAssetContextOperationDataSource
- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (id)createTemporaryDirectoryAppropriateForURL:(id)l error:(id *)error;
- (id)createVideoFileCombinerWithVideoFileURLs:(id)ls queue:(id)queue;
- (id)dataTaskWithURL:(id)l httpHeaderFields:(id)fields;
@end

@implementation HMCameraClipFetchAssetContextOperationDataSource

- (id)createVideoFileCombinerWithVideoFileURLs:(id)ls queue:(id)queue
{
  queueCopy = queue;
  lsCopy = ls;
  v7 = [[HMCameraClipVideoFileCombiner alloc] initWithVideoFileURLs:lsCopy queue:queueCopy];

  return v7;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:lCopy error:error];

  return error;
}

- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x1E696AC08];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (id)createTemporaryDirectoryAppropriateForURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

  return v8;
}

- (id)dataTaskWithURL:(id)l httpHeaderFields:(id)fields
{
  fieldsCopy = fields;
  lCopy = l;
  v7 = [[HMCameraClipDownloadAssetDataTask alloc] initWithURL:lCopy httpHeaderFields:fieldsCopy];

  return v7;
}

@end