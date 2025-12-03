@interface Te_tjejjxf8q3Input
- (Te_tjejjxf8q3Input)initWithPlaceholder:(id)placeholder;
- (id)featureValueForName:(id)name;
@end

@implementation Te_tjejjxf8q3Input

- (Te_tjejjxf8q3Input)initWithPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v9.receiver = self;
  v9.super_class = Te_tjejjxf8q3Input;
  v6 = [(Te_tjejjxf8q3Input *)&v9 init];
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
    placeholder = [(Te_tjejjxf8q3Input *)self Placeholder];
    v6 = [v4 featureValueWithMultiArray:placeholder];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end