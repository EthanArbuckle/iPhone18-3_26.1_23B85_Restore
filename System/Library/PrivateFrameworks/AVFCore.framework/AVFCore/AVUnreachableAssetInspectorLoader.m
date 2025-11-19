@interface AVUnreachableAssetInspectorLoader
- (AVUnreachableAssetInspectorLoader)initWithFigError:(int)a3 userInfo:(id)a4;
- (id)initForUnitTests;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation AVUnreachableAssetInspectorLoader

- (AVUnreachableAssetInspectorLoader)initWithFigError:(int)a3 userInfo:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVUnreachableAssetInspectorLoader;
  v6 = [(AVAssetInspectorLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_figError = a3;
    v6->_figErrorUserInfo = a4;
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

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  if (self->_statusOfValueForKeyReturnsLoaded)
  {
    return 2;
  }

  if (a4)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(self->_figError, self->_figErrorUserInfo);
  }

  return 3;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

@end