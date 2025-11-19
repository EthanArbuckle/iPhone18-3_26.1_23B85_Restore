@interface BSXPCCodingArray
- (BOOL)isEqual:(id)a3;
- (BSXPCCodingArray)initWithArray:(id)a3;
- (BSXPCCodingArray)initWithXPCDictionary:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BSXPCCodingArray

- (BSXPCCodingArray)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSXPCCodingArray;
  v5 = [(BSXPCCodingArray *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = BSEqualArrays(self->_array, v4[1]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BSXPCCodingArray)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSXPCCodingArray;
  v5 = [(BSXPCCodingArray *)&v9 init];
  if (v5)
  {
    v6 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(v4, "items", &__block_literal_global_26);
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(BSXPCCodingArray *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSArray count](self->_array withName:{"count"), @"count"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSXPCCodingArray *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSXPCCodingArray *)self succinctDescriptionBuilder];
  [v5 appendArraySection:self->_array withName:0 multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

@end