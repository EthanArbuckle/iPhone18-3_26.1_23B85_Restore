@interface VCCameraPreview
- (id)description;
@end

@implementation VCCameraPreview

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p)", NSStringFromClass(v4), self];
}

@end