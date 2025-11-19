@interface AVTStickerGeneratorOptions
+ (id)defaultOptions;
+ (id)optionsWithCorrectClipping:(BOOL)a3;
- (AVTStickerGeneratorOptions)init;
@end

@implementation AVTStickerGeneratorOptions

- (AVTStickerGeneratorOptions)init
{
  v3.receiver = self;
  v3.super_class = AVTStickerGeneratorOptions;
  result = [(AVTStickerGeneratorOptions *)&v3 init];
  if (result)
  {
    *&result->_size = xmmword_1BB4F0680;
    result->_scaleFactor = 3.0;
    result->_contentMode = 0;
    result->_useLegacyCorrectClippingImplementation = 0;
  }

  return result;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)optionsWithCorrectClipping:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 defaultOptions];
  [v4 setContentMode:v3];

  return v4;
}

@end