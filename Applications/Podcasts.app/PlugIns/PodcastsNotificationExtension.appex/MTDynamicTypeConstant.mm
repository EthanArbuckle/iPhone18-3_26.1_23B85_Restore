@interface MTDynamicTypeConstant
- (BOOL)isEqual:(id)equal;
- (MTDynamicTypeConstant)initWithDefaultConstant:(double)constant textStyle:(id)style;
@end

@implementation MTDynamicTypeConstant

- (MTDynamicTypeConstant)initWithDefaultConstant:(double)constant textStyle:(id)style
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = MTDynamicTypeConstant;
  v8 = [(MTDynamicTypeConstant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_defaultConstant = constant;
    objc_storeStrong(&v8->_textStyle, style);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == equalCopy)
    {
      v6 = 1;
    }

    else
    {
      v5 = equalCopy;
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