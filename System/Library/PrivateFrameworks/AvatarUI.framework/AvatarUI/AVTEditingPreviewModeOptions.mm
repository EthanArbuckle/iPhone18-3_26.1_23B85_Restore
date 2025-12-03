@interface AVTEditingPreviewModeOptions
+ (id)defaultOptions;
- (AVTEditingPreviewModeOptions)initWithFramingMode:(id)mode bodyPosePack:(id)pack;
- (id)description;
@end

@implementation AVTEditingPreviewModeOptions

+ (id)defaultOptions
{
  v2 = [self alloc];
  v3 = [v2 initWithFramingMode:*MEMORY[0x1E698E230] bodyPosePack:0];

  return v3;
}

- (AVTEditingPreviewModeOptions)initWithFramingMode:(id)mode bodyPosePack:(id)pack
{
  modeCopy = mode;
  packCopy = pack;
  v12.receiver = self;
  v12.super_class = AVTEditingPreviewModeOptions;
  v9 = [(AVTEditingPreviewModeOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_framingMode, mode);
    objc_storeStrong(&v10->_bodyPosePack, pack);
  }

  return v10;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AVTEditingPreviewModeOptions;
  v3 = [(AVTEditingPreviewModeOptions *)&v10 description];
  v4 = [v3 mutableCopy];

  framingMode = [(AVTEditingPreviewModeOptions *)self framingMode];
  [v4 appendFormat:@" framingMode: %@\n", framingMode];

  bodyPosePack = [(AVTEditingPreviewModeOptions *)self bodyPosePack];

  if (bodyPosePack)
  {
    bodyPosePack2 = [(AVTEditingPreviewModeOptions *)self bodyPosePack];
    [v4 appendFormat:@" posePack:%@\n", bodyPosePack2];
  }

  v8 = [v4 copy];

  return v8;
}

@end