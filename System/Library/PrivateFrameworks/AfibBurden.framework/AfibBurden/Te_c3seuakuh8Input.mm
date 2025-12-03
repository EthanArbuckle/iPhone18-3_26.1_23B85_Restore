@interface Te_c3seuakuh8Input
- (Te_c3seuakuh8Input)initWithPlaceholder:(id)placeholder;
- (id)featureValueForName:(id)name;
@end

@implementation Te_c3seuakuh8Input

- (Te_c3seuakuh8Input)initWithPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v9.receiver = self;
  v9.super_class = Te_c3seuakuh8Input;
  v6 = [(Te_c3seuakuh8Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Placeholder, placeholder);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"Placeholder"])
  {
    v4 = MEMORY[0x277CBFEF8];
    placeholder = [(Te_c3seuakuh8Input *)self Placeholder];
    v6 = [v4 featureValueWithMultiArray:placeholder];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end