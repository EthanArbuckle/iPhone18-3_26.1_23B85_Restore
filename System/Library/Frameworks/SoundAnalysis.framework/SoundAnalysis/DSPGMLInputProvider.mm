@interface DSPGMLInputProvider
- (id)featureValueForName:(id)a3;
@end

@implementation DSPGMLInputProvider

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  v5 = [(MLFeatureDescription *)self->_featureDescription name];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [MEMORY[0x1E695FE60] featureValueWithMultiArray:self->_input];
  }

  else
  {
    [(NSMutableDictionary *)self->_featureCache objectForKeyedSubscript:v4];
  }
  v7 = ;

  return v7;
}

@end