@interface AVUnreachableAssetInspectorLoader
- (AVUnreachableAssetInspectorLoader)initWithFigError:(int)error userInfo:(id)info;
- (id)initForUnitTests;
- (int64_t)statusOfValueForKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation AVUnreachableAssetInspectorLoader

- (AVUnreachableAssetInspectorLoader)initWithFigError:(int)error userInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = AVUnreachableAssetInspectorLoader;
  v6 = [(AVAssetInspectorLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_figError = error;
    v6->_figErrorUserInfo = info;
    v7->_statusOfValueForKeyReturnsLoaded = 0;
  }

  return v7;
}

- (id)initForUnitTests
{
  v3.receiver = self;
  v3.super_class = AVUnreachableAssetInspectorLoader;
  result = [(AVAssetInspectorLoader *)&v3 init];
  if (result)
  {
    *(result + 4) = 0;
    *(result + 3) = 0;
    *(result + 32) = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVUnreachableAssetInspectorLoader;
  [(AVAssetInspectorLoader *)&v3 dealloc];
}

- (int64_t)statusOfValueForKey:(id)key error:(id *)error
{
  if (self->_statusOfValueForKeyReturnsLoaded)
  {
    return 2;
  }

  if (error)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(self->_figError, self->_figErrorUserInfo);
  }

  return 3;
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

@end