@interface ASVGesture
- (ASVGesture)initWithDataSource:(id)source;
- (ASVGestureDataSource)dataSource;
@end

@implementation ASVGesture

- (ASVGesture)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = ASVGesture;
  v5 = [(ASVGesture *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    [sourceCopy assetScreenPosition];
    *v6->_initialAssetLocationOnScreen = v7;
    *v6->_latestAssetLocationOnScreen = v7;
  }

  return v6;
}

- (ASVGestureDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end