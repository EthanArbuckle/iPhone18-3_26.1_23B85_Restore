@interface AVStreamDataInspectionOnlyAsset
- (AVStreamDataInspectionOnlyAsset)initWithFigAsset:(OpaqueFigAsset *)a3;
@end

@implementation AVStreamDataInspectionOnlyAsset

- (AVStreamDataInspectionOnlyAsset)initWithFigAsset:(OpaqueFigAsset *)a3
{
  v4 = [[AVFigAssetInspectorLoader alloc] initWithFigAsset:a3 forAsset:0];
  if (v4 && (v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v4, 0x1F0A8D210, 0}]) != 0)
  {
    v7.receiver = self;
    v7.super_class = AVStreamDataInspectionOnlyAsset;
    return [(AVURLAsset *)&v7 initWithURL:0 options:v5];
  }

  else
  {

    return 0;
  }
}

@end