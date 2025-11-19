@interface beam_bridge_2022_v2_1Output
- (beam_bridge_2022_v2_1Output)initWithCell_leaf_fully_connected_BiasAdd:(id)a3 leaf_leaf_predictions_probabilities:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation beam_bridge_2022_v2_1Output

- (beam_bridge_2022_v2_1Output)initWithCell_leaf_fully_connected_BiasAdd:(id)a3 leaf_leaf_predictions_probabilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = beam_bridge_2022_v2_1Output;
  v9 = [(beam_bridge_2022_v2_1Output *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cell_leaf_fully_connected_BiasAdd, a3);
    objc_storeStrong(&v10->_leaf_leaf_predictions_probabilities, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"cell_leaf_fully_connected_BiasAdd"])
  {
    v5 = [(beam_bridge_2022_v2_1Output *)self cell_leaf_fully_connected_BiasAdd];
LABEL_5:
    v6 = v5;
    v7 = [MLFeatureValue featureValueWithMultiArray:v5];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"leaf_leaf_predictions_probabilities"])
  {
    v5 = [(beam_bridge_2022_v2_1Output *)self leaf_leaf_predictions_probabilities];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end