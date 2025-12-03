@interface iconclassificationOutput
- (iconclassificationOutput)initWithLeaf_leaf_predictions_probabilities:(id)leaf_leaf_predictions_probabilities;
- (id)featureValueForName:(id)name;
@end

@implementation iconclassificationOutput

- (iconclassificationOutput)initWithLeaf_leaf_predictions_probabilities:(id)leaf_leaf_predictions_probabilities
{
  leaf_leaf_predictions_probabilitiesCopy = leaf_leaf_predictions_probabilities;
  v9.receiver = self;
  v9.super_class = iconclassificationOutput;
  v6 = [(iconclassificationOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_leaf_leaf_predictions_probabilities, leaf_leaf_predictions_probabilities);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"leaf/leaf/predictions/probabilities"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:self->_leaf_leaf_predictions_probabilities];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end