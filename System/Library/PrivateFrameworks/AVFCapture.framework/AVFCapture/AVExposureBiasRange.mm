@interface AVExposureBiasRange
+ (AVExposureBiasRange)exposureBiasRangeWithMinExposureBias:(float)bias maxExposureBias:(float)exposureBias;
- (AVExposureBiasRange)initWithMinExposureBias:(float)bias maxExposureBias:(float)exposureBias;
- (id)description;
@end

@implementation AVExposureBiasRange

+ (AVExposureBiasRange)exposureBiasRangeWithMinExposureBias:(float)bias maxExposureBias:(float)exposureBias
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = bias;
  *&v8 = exposureBias;
  v9 = [v6 initWithMinExposureBias:v7 maxExposureBias:v8];

  return v9;
}

- (AVExposureBiasRange)initWithMinExposureBias:(float)bias maxExposureBias:(float)exposureBias
{
  v7.receiver = self;
  v7.super_class = AVExposureBiasRange;
  result = [(AVExposureBiasRange *)&v7 init];
  if (result)
  {
    result->_minExposureBias = bias;
    result->_maxExposureBias = exposureBias;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %.2f - %.2f>", NSStringFromClass(v4), self, self->_minExposureBias, self->_maxExposureBias];
}

@end