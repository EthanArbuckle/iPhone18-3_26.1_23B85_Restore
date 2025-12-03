@interface SFContactAutoFillPropertyValues
- (SFContactAutoFillPropertyValues)initWithValues:(id)values property:(id)property;
@end

@implementation SFContactAutoFillPropertyValues

- (SFContactAutoFillPropertyValues)initWithValues:(id)values property:(id)property
{
  valuesCopy = values;
  propertyCopy = property;
  v15.receiver = self;
  v15.super_class = SFContactAutoFillPropertyValues;
  v8 = [(SFContactAutoFillPropertyValues *)&v15 init];
  if (v8)
  {
    v9 = [valuesCopy copy];
    values = v8->_values;
    v8->_values = v9;

    v11 = [propertyCopy copy];
    property = v8->_property;
    v8->_property = v11;

    v13 = v8;
  }

  return v8;
}

@end