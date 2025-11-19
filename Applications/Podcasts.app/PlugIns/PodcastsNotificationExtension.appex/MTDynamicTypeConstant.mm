@interface MTDynamicTypeConstant
- (BOOL)isEqual:(id)a3;
- (MTDynamicTypeConstant)initWithDefaultConstant:(double)a3 textStyle:(id)a4;
@end

@implementation MTDynamicTypeConstant

- (MTDynamicTypeConstant)initWithDefaultConstant:(double)a3 textStyle:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTDynamicTypeConstant;
  v8 = [(MTDynamicTypeConstant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_defaultConstant = a3;
    objc_storeStrong(&v8->_textStyle, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v6 = 1;
    }

    else
    {
      v5 = v4;
      if ([(NSString *)self->_textStyle isEqual:v5->_textStyle])
      {
        v6 = vabdd_f64(self->_defaultConstant, v5->_defaultConstant) <= 0.00000011920929;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end