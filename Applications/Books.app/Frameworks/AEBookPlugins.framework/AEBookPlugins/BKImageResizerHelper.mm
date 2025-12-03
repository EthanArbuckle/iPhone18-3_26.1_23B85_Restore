@interface BKImageResizerHelper
- (BKImageResizerHelper)init;
- (id)resizeImage:(id)image toSize:(CGSize)size callback:(id)callback;
@end

@implementation BKImageResizerHelper

- (BKImageResizerHelper)init
{
  v6.receiver = self;
  v6.super_class = BKImageResizerHelper;
  v2 = [(BKImageResizerHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(BKImageResizerHelper *)v2 setOperationQueue:v3];

    operationQueue = [(BKImageResizerHelper *)v2 operationQueue];
    [operationQueue setMaxConcurrentOperationCount:5];
  }

  return v2;
}

- (id)resizeImage:(id)image toSize:(CGSize)size callback:(id)callback
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  callbackCopy = callback;
  v11 = objc_alloc_init(NSBlockOperation);
  objc_initWeak(&location, v11);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_8422C;
  v19 = &unk_1E4AE0;
  objc_copyWeak(v22, &location);
  v12 = imageCopy;
  v20 = v12;
  v22[1] = *&width;
  v22[2] = *&height;
  v13 = callbackCopy;
  v21 = v13;
  [v11 addExecutionBlock:&v16];
  v14 = [(BKImageResizerHelper *)self operationQueue:v16];
  [v14 addOperation:v11];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  return v11;
}

@end