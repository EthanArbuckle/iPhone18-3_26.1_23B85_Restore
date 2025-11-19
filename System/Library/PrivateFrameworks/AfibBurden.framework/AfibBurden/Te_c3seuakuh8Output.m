@interface Te_c3seuakuh8Output
- (Te_c3seuakuh8Output)initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation Te_c3seuakuh8Output

- (Te_c3seuakuh8Output)initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Te_c3seuakuh8Output;
  v6 = [(Te_c3seuakuh8Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(Te_c3seuakuh8Output *)self RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end