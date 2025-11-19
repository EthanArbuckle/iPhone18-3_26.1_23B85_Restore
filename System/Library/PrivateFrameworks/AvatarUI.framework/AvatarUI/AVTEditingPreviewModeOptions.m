@interface AVTEditingPreviewModeOptions
+ (id)defaultOptions;
- (AVTEditingPreviewModeOptions)initWithFramingMode:(id)a3 bodyPosePack:(id)a4;
- (id)description;
@end

@implementation AVTEditingPreviewModeOptions

+ (id)defaultOptions
{
  v2 = [a1 alloc];
  v3 = [v2 initWithFramingMode:*MEMORY[0x1E698E230] bodyPosePack:0];

  return v3;
}

- (AVTEditingPreviewModeOptions)initWithFramingMode:(id)a3 bodyPosePack:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTEditingPreviewModeOptions;
  v9 = [(AVTEditingPreviewModeOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_framingMode, a3);
    objc_storeStrong(&v10->_bodyPosePack, a4);
  }

  return v10;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AVTEditingPreviewModeOptions;
  v3 = [(AVTEditingPreviewModeOptions *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTEditingPreviewModeOptions *)self framingMode];
  [v4 appendFormat:@" framingMode: %@\n", v5];

  v6 = [(AVTEditingPreviewModeOptions *)self bodyPosePack];

  if (v6)
  {
    v7 = [(AVTEditingPreviewModeOptions *)self bodyPosePack];
    [v4 appendFormat:@" posePack:%@\n", v7];
  }

  v8 = [v4 copy];

  return v8;
}

@end