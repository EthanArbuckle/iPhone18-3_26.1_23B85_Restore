@interface AVAssetSynchronousInspectorLoader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVAssetSynchronousInspectorLoader)initWithAssetInspector:(id)inspector;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler;
- (void)loadValuesAsynchronouslyForKeys:(id)keys keysForCollectionKeys:(id)collectionKeys completionHandler:(id)handler;
@end

@implementation AVAssetSynchronousInspectorLoader

- (AVAssetSynchronousInspectorLoader)initWithAssetInspector:(id)inspector
{
  v6.receiver = self;
  v6.super_class = AVAssetSynchronousInspectorLoader;
  v4 = [(AVAssetInspectorLoader *)&v6 init];
  if (v4)
  {
    v4->_assetInspector = inspector;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetSynchronousInspectorLoader;
  [(AVAssetInspectorLoader *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  assetInspector = self->_assetInspector;
  assetInspector = [equal assetInspector];

  return [(AVAssetInspector *)assetInspector isEqual:assetInspector];
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys keysForCollectionKeys:(id)collectionKeys completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = self->_assetInspector;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result duration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

@end