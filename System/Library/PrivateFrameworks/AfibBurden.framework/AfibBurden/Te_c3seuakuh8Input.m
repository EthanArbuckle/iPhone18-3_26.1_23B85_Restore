@interface Te_c3seuakuh8Input
- (Te_c3seuakuh8Input)initWithPlaceholder:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation Te_c3seuakuh8Input

- (Te_c3seuakuh8Input)initWithPlaceholder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Te_c3seuakuh8Input;
  v6 = [(Te_c3seuakuh8Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Placeholder, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"Placeholder"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(Te_c3seuakuh8Input *)self Placeholder];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end