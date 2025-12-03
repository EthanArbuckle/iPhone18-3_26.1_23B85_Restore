@interface DSPGMLInputProvider
- (id)featureValueForName:(id)name;
@end

@implementation DSPGMLInputProvider

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  name = [(MLFeatureDescription *)self->_featureDescription name];
  v6 = [nameCopy isEqualToString:name];

  if (v6)
  {
    [MEMORY[0x1E695FE60] featureValueWithMultiArray:self->_input];
  }

  else
  {
    [(NSMutableDictionary *)self->_featureCache objectForKeyedSubscript:nameCopy];
  }
  v7 = ;

  return v7;
}

@end