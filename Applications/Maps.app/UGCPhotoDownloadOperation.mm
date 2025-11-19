@interface UGCPhotoDownloadOperation
- (UGCPhotoDownloadOperation)initWithPhotoInfo:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)_completeOperation;
- (void)cancel;
- (void)main;
- (void)start;
@end

@implementation UGCPhotoDownloadOperation

- (void)cancel
{
  [(NSURLSessionDataTask *)self->_downloadTask cancel];
  v3.receiver = self;
  v3.super_class = UGCPhotoDownloadOperation;
  [(UGCPhotoDownloadOperation *)&v3 cancel];
}

- (void)_completeOperation
{
  v3 = sub_100799780();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(UGCPhotoDownloadOperation *)self name];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Download operation finished %@", &v5, 0xCu);
  }

  [(UGCPhotoDownloadOperation *)self willChangeValueForKey:@"isFinished"];
  [(UGCPhotoDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = 0;
  self->_finished = 1;
  [(UGCPhotoDownloadOperation *)self didChangeValueForKey:@"isExecuting"];
  [(UGCPhotoDownloadOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)main
{
  v3 = [NSURLRequest alloc];
  v4 = [(UGCDownloadablePhotoInfo *)self->_photoInfo url];
  [(UGCDownloadablePhotoInfo *)self->_photoInfo timeoutInterval];
  v5 = [v3 initWithURL:v4 cachePolicy:2 timeoutInterval:?];

  objc_initWeak(&location, self);
  v6 = +[NSURLSession sharedSession];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10066FED8;
  v12 = &unk_101637420;
  objc_copyWeak(&v13, &location);
  v7 = [v6 dataTaskWithRequest:v5 completionHandler:&v9];
  downloadTask = self->_downloadTask;
  self->_downloadTask = v7;

  [(NSURLSessionDataTask *)self->_downloadTask resume:v9];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)start
{
  if ([(UGCPhotoDownloadOperation *)self isCancelled])
  {
    [(UGCPhotoDownloadOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(UGCPhotoDownloadOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(UGCPhotoDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(UGCPhotoDownloadOperation *)self didChangeValueForKey:@"isExecuting"];

    [(UGCPhotoDownloadOperation *)self main];
  }
}

- (UGCPhotoDownloadOperation)initWithPhotoInfo:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = UGCPhotoDownloadOperation;
  v12 = [(UGCPhotoDownloadOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoInfo, a3);
    v13->_finished = 0;
    v13->_executing = 0;
    v14 = [v11 copy];
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;

    objc_storeStrong(&v13->_completionQueue, a4);
  }

  return v13;
}

@end