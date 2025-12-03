@interface AVCapturePreparedPhotoSettingsArrayRequest
+ (id)preparedPhotoSettingsArrayRequestWithArray:(id)array completionHandler:(id)handler;
- (id)_initWithArray:(id)array completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation AVCapturePreparedPhotoSettingsArrayRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePreparedPhotoSettingsArrayRequest;
  [(AVCapturePreparedPhotoSettingsArrayRequest *)&v3 dealloc];
}

+ (id)preparedPhotoSettingsArrayRequestWithArray:(id)array completionHandler:(id)handler
{
  v4 = [objc_alloc(objc_opt_class()) _initWithArray:array completionHandler:handler];

  return v4;
}

- (id)_initWithArray:(id)array completionHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = AVCapturePreparedPhotoSettingsArrayRequest;
  v6 = [(AVCapturePreparedPhotoSettingsArrayRequest *)&v8 init];
  if (v6)
  {
    v6->_requestID = +[AVCapturePhotoSettings uniqueID];
    v6->_photoSettingsArray = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array copyItems:1];
    v6->_completionHandler = [handler copy];
  }

  return v6;
}

@end