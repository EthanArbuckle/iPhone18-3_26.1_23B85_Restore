@interface VSAppChannelsMapping
- (BOOL)isEqual:(id)equal;
- (VSAppChannelsMapping)init;
- (VSAppChannelsMapping)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAppChannelsMapping

- (VSAppChannelsMapping)init
{
  v5.receiver = self;
  v5.super_class = VSAppChannelsMapping;
  v2 = [(VSAppChannelsMapping *)&v5 init];
  if (v2)
  {
    v3 = VSAppChannelsMappingValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSAppChannelsMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSAppChannelsMapping;
  v5 = [(VSAppChannelsMapping *)&v8 init];
  if (v5)
  {
    v6 = VSAppChannelsMappingValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAppChannelsMappingValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAppChannelsMappingValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAppChannelsMappingValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAppChannelsMappingValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAppChannelsMappingValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end