@interface AVStreamDataAssetInspector
- (AVStreamDataAssetInspector)initWithTrackIDs:(id)a3;
- (void)dealloc;
@end

@implementation AVStreamDataAssetInspector

- (AVStreamDataAssetInspector)initWithTrackIDs:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVStreamDataAssetInspector;
  v4 = [(AVStreamDataAssetInspector *)&v6 init];
  if (v4)
  {
    v4->_trackIDs = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVStreamDataAssetInspector;
  [(AVStreamDataAssetInspector *)&v3 dealloc];
}

@end