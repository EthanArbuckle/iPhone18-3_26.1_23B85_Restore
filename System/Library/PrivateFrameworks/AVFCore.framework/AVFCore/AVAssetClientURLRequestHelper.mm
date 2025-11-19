@interface AVAssetClientURLRequestHelper
- (AVAssetClientURLRequestHelper)initWithAsset:(id)a3;
- (OpaqueFigAsset)figAsset;
- (void)dealloc;
@end

@implementation AVAssetClientURLRequestHelper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetClientURLRequestHelper;
  [(AVAssetClientURLRequestHelper *)&v3 dealloc];
}

- (OpaqueFigAsset)figAsset
{
  result = self->_figAssetProvider;
  if (result)
  {
    return (*(result + 2))();
  }

  return result;
}

- (AVAssetClientURLRequestHelper)initWithAsset:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetClientURLRequestHelper;
  v4 = [(AVAssetClientURLRequestHelper *)&v6 init];
  if (v4)
  {
    v4->_weakReferenceToSelf = [[AVWeakReference alloc] initWithReferencedObject:v4];
    v4->_weakReferenceToAsset = [a3 _weakReference];
  }

  return v4;
}

@end