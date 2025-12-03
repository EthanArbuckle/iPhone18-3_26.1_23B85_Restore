@interface beam_bridge_2022_v2_1Output
- (beam_bridge_2022_v2_1Output)initWithCell_leaf_fully_connected_BiasAdd:(id)add leaf_leaf_predictions_probabilities:(id)leaf_leaf_predictions_probabilities;
- (id)featureValueForName:(id)name;
@end

@implementation beam_bridge_2022_v2_1Output

- (beam_bridge_2022_v2_1Output)initWithCell_leaf_fully_connected_BiasAdd:(id)add leaf_leaf_predictions_probabilities:(id)leaf_leaf_predictions_probabilities
{
  addCopy = add;
  leaf_leaf_predictions_probabilitiesCopy = leaf_leaf_predictions_probabilities;
  v12.receiver = self;
  v12.super_class = beam_bridge_2022_v2_1Output;
  v9 = [(beam_bridge_2022_v2_1Output *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cell_leaf_fully_connected_BiasAdd, add);
    objc_storeStrong(&v10->_leaf_leaf_predictions_probabilities, leaf_leaf_predictions_probabilities);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"cell_leaf_fully_connected_BiasAdd"])
  {
    cell_leaf_fully_connected_BiasAdd = [(beam_bridge_2022_v2_1Output *)self cell_leaf_fully_connected_BiasAdd];
LABEL_5:
    v6 = cell_leaf_fully_connected_BiasAdd;
    v7 = [MLFeatureValue featureValueWithMultiArray:cell_leaf_fully_connected_BiasAdd];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"leaf_leaf_predictions_probabilities"])
  {
    cell_leaf_fully_connected_BiasAdd = [(beam_bridge_2022_v2_1Output *)self leaf_leaf_predictions_probabilities];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end