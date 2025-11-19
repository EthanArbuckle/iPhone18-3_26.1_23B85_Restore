@interface AVCapturePrepareBracketRequest
+ (id)prepareBracketRequestWithCompletionBlock:(id)a3 settings:(id)a4;
- (id)_initWithCompletionBlock:(id)a3 settings:(id)a4;
- (void)dealloc;
@end

@implementation AVCapturePrepareBracketRequest

+ (id)prepareBracketRequestWithCompletionBlock:(id)a3 settings:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:a3 settings:a4];

  return v4;
}

- (id)_initWithCompletionBlock:(id)a3 settings:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVCapturePrepareBracketRequest;
  v6 = [(AVCapturePrepareBracketRequest *)&v8 init];
  if (v6)
  {
    v6->_completionBlock = [a3 copy];
    v6->_settings = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePrepareBracketRequest;
  [(AVCapturePrepareBracketRequest *)&v3 dealloc];
}

@end