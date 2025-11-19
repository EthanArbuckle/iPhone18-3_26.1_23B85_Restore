@interface AVCapturePreparedPhotoSettingsArrayRequest
+ (id)preparedPhotoSettingsArrayRequestWithArray:(id)a3 completionHandler:(id)a4;
- (id)_initWithArray:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
@end

@implementation AVCapturePreparedPhotoSettingsArrayRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePreparedPhotoSettingsArrayRequest;
  [(AVCapturePreparedPhotoSettingsArrayRequest *)&v3 dealloc];
}

+ (id)preparedPhotoSettingsArrayRequestWithArray:(id)a3 completionHandler:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) _initWithArray:a3 completionHandler:a4];

  return v4;
}

- (id)_initWithArray:(id)a3 completionHandler:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVCapturePreparedPhotoSettingsArrayRequest;
  v6 = [(AVCapturePreparedPhotoSettingsArrayRequest *)&v8 init];
  if (v6)
  {
    v6->_requestID = +[AVCapturePhotoSettings uniqueID];
    v6->_photoSettingsArray = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a3 copyItems:1];
    v6->_completionHandler = [a4 copy];
  }

  return v6;
}

@end