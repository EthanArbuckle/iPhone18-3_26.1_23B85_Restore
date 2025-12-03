@interface Te_c3seuakuh8Output
- (Te_c3seuakuh8Output)initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:(id)add;
- (id)featureValueForName:(id)name;
@end

@implementation Te_c3seuakuh8Output

- (Te_c3seuakuh8Output)initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:(id)add
{
  addCopy = add;
  v9.receiver = self;
  v9.super_class = Te_c3seuakuh8Output;
  v6 = [(Te_c3seuakuh8Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd, add);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"])
  {
    v4 = MEMORY[0x277CBFEF8];
    rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd = [(Te_c3seuakuh8Output *)self RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd];
    v6 = [v4 featureValueWithMultiArray:rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end