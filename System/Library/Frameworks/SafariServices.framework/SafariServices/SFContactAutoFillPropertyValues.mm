@interface SFContactAutoFillPropertyValues
- (SFContactAutoFillPropertyValues)initWithValues:(id)a3 property:(id)a4;
@end

@implementation SFContactAutoFillPropertyValues

- (SFContactAutoFillPropertyValues)initWithValues:(id)a3 property:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFContactAutoFillPropertyValues;
  v8 = [(SFContactAutoFillPropertyValues *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    values = v8->_values;
    v8->_values = v9;

    v11 = [v7 copy];
    property = v8->_property;
    v8->_property = v11;

    v13 = v8;
  }

  return v8;
}

@end