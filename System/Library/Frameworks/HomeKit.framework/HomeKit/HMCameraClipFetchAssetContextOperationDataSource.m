@interface HMCameraClipFetchAssetContextOperationDataSource
- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
- (id)createTemporaryDirectoryAppropriateForURL:(id)a3 error:(id *)a4;
- (id)createVideoFileCombinerWithVideoFileURLs:(id)a3 queue:(id)a4;
- (id)dataTaskWithURL:(id)a3 httpHeaderFields:(id)a4;
@end

@implementation HMCameraClipFetchAssetContextOperationDataSource

- (id)createVideoFileCombinerWithVideoFileURLs:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMCameraClipVideoFileCombiner alloc] initWithVideoFileURLs:v6 queue:v5];

  return v7;
}

- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = [v5 defaultManager];
  LOBYTE(a4) = [v7 removeItemAtURL:v6 error:a4];

  return a4;
}

- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E696AC08];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  LOBYTE(a5) = [v10 copyItemAtURL:v9 toURL:v8 error:a5];

  return a5;
}

- (id)createTemporaryDirectoryAppropriateForURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:a4];

  return v8;
}

- (id)dataTaskWithURL:(id)a3 httpHeaderFields:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMCameraClipDownloadAssetDataTask alloc] initWithURL:v6 httpHeaderFields:v5];

  return v7;
}

@end