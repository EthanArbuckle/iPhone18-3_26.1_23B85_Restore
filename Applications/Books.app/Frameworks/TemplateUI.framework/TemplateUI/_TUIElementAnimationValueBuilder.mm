@interface _TUIElementAnimationValueBuilder
- (id)finalizeAnimationValues;
- (void)addAnimationValue:(id)value forAttributeName:(id)name;
@end

@implementation _TUIElementAnimationValueBuilder

- (void)addAnimationValue:(id)value forAttributeName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  if (!self->_values)
  {
    v7 = objc_opt_new();
    values = self->_values;
    self->_values = v7;
  }

  v9 = [nameCopy copy];

  [(NSMutableDictionary *)self->_values setObject:valueCopy forKeyedSubscript:v9];
}

- (id)finalizeAnimationValues
{
  v2 = [(NSMutableDictionary *)self->_values copy];

  return v2;
}

@end