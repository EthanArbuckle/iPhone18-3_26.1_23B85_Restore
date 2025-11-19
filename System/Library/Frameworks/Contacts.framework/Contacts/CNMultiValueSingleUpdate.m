@interface CNMultiValueSingleUpdate
- (CNMultiValueSingleUpdate)initWithValue:(id)a3;
- (id)description;
@end

@implementation CNMultiValueSingleUpdate

- (CNMultiValueSingleUpdate)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNMultiValueSingleUpdate;
  v6 = [(CNMultiValueSingleUpdate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"value", self->_value, 0}];
  v5 = [v3 build];

  return v5;
}

@end