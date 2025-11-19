@interface MKVKImageSourceCalculationParameters
- (MKVKImageSourceCalculationParameters)initWithImageSourceKeys:(id)a3 scale:(double)a4;
@end

@implementation MKVKImageSourceCalculationParameters

- (MKVKImageSourceCalculationParameters)initWithImageSourceKeys:(id)a3 scale:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MKVKImageSourceCalculationParameters;
  v7 = [(MKVKImageSourceCalculationParameters *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    imageSourceKeys = v7->_imageSourceKeys;
    v7->_imageSourceKeys = v8;

    v7->_scale = a4;
  }

  return v7;
}

@end