@interface CNMultiValueSingleUpdate
- (CNMultiValueSingleUpdate)initWithValue:(id)value;
- (id)description;
@end

@implementation CNMultiValueSingleUpdate

- (CNMultiValueSingleUpdate)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = CNMultiValueSingleUpdate;
  v6 = [(CNMultiValueSingleUpdate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"value", self->_value, 0}];
  build = [v3 build];

  return build;
}

@end