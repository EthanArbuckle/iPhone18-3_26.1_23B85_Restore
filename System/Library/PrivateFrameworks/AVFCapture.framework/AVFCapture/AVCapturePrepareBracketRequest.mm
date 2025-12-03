@interface AVCapturePrepareBracketRequest
+ (id)prepareBracketRequestWithCompletionBlock:(id)block settings:(id)settings;
- (id)_initWithCompletionBlock:(id)block settings:(id)settings;
- (void)dealloc;
@end

@implementation AVCapturePrepareBracketRequest

+ (id)prepareBracketRequestWithCompletionBlock:(id)block settings:(id)settings
{
  v4 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:block settings:settings];

  return v4;
}

- (id)_initWithCompletionBlock:(id)block settings:(id)settings
{
  v8.receiver = self;
  v8.super_class = AVCapturePrepareBracketRequest;
  v6 = [(AVCapturePrepareBracketRequest *)&v8 init];
  if (v6)
  {
    v6->_completionBlock = [block copy];
    v6->_settings = settings;
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