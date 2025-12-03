@interface MKVKImageSourceCalculationParameters
- (MKVKImageSourceCalculationParameters)initWithImageSourceKeys:(id)keys scale:(double)scale;
@end

@implementation MKVKImageSourceCalculationParameters

- (MKVKImageSourceCalculationParameters)initWithImageSourceKeys:(id)keys scale:(double)scale
{
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = MKVKImageSourceCalculationParameters;
  v7 = [(MKVKImageSourceCalculationParameters *)&v11 init];
  if (v7)
  {
    v8 = [keysCopy copy];
    imageSourceKeys = v7->_imageSourceKeys;
    v7->_imageSourceKeys = v8;

    v7->_scale = scale;
  }

  return v7;
}

@end