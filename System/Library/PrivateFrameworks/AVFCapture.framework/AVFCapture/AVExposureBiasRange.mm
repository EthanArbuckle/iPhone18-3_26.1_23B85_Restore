@interface AVExposureBiasRange
+ (AVExposureBiasRange)exposureBiasRangeWithMinExposureBias:(float)a3 maxExposureBias:(float)a4;
- (AVExposureBiasRange)initWithMinExposureBias:(float)a3 maxExposureBias:(float)a4;
- (id)description;
@end

@implementation AVExposureBiasRange

+ (AVExposureBiasRange)exposureBiasRangeWithMinExposureBias:(float)a3 maxExposureBias:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = a3;
  *&v8 = a4;
  v9 = [v6 initWithMinExposureBias:v7 maxExposureBias:v8];

  return v9;
}

- (AVExposureBiasRange)initWithMinExposureBias:(float)a3 maxExposureBias:(float)a4
{
  v7.receiver = self;
  v7.super_class = AVExposureBiasRange;
  result = [(AVExposureBiasRange *)&v7 init];
  if (result)
  {
    result->_minExposureBias = a3;
    result->_maxExposureBias = a4;
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