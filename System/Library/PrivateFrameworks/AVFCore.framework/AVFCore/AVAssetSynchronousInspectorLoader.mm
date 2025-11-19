@interface AVAssetSynchronousInspectorLoader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVAssetSynchronousInspectorLoader)initWithAssetInspector:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5;
@end

@implementation AVAssetSynchronousInspectorLoader

- (AVAssetSynchronousInspectorLoader)initWithAssetInspector:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetSynchronousInspectorLoader;
  v4 = [(AVAssetInspectorLoader *)&v6 init];
  if (v4)
  {
    v4->_assetInspector = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetSynchronousInspectorLoader;
  [(AVAssetInspectorLoader *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  assetInspector = self->_assetInspector;
  v6 = [a3 assetInspector];

  return [(AVAssetInspector *)assetInspector isEqual:v6];
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
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