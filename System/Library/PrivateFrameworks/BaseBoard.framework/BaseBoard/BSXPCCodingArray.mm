@interface BSXPCCodingArray
- (BOOL)isEqual:(id)equal;
- (BSXPCCodingArray)initWithArray:(id)array;
- (BSXPCCodingArray)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BSXPCCodingArray

- (BSXPCCodingArray)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = BSXPCCodingArray;
  v5 = [(BSXPCCodingArray *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = BSEqualArrays(self->_array, equalCopy[1]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BSXPCCodingArray)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BSXPCCodingArray;
  v5 = [(BSXPCCodingArray *)&v9 init];
  if (v5)
  {
    v6 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(dictionaryCopy, "items", &__block_literal_global_26);
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSXPCCodingArray *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSArray count](self->_array withName:{"count"), @"count"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSXPCCodingArray *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSXPCCodingArray *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendArraySection:self->_array withName:0 multilinePrefix:prefixCopy skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

@end