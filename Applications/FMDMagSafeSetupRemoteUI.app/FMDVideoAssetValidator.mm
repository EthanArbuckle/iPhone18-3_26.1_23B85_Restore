@interface FMDVideoAssetValidator
- (BOOL)isValidVideoAtFilePath:(id)path;
@end

@implementation FMDVideoAssetValidator

- (BOOL)isValidVideoAtFilePath:(id)path
{
  v3 = [NSURL fileURLWithPath:path];
  v4 = [AVURLAsset URLAssetWithURL:v3 options:0];
  isPlayable = [v4 isPlayable];

  return isPlayable;
}

@end