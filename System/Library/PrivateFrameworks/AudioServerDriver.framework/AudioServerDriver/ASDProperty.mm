@interface ASDProperty
- (ASDProperty)initWithAddress:(id)address value:(id)value;
- (ASDProperty)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation ASDProperty

- (ASDProperty)initWithAddress:(id)address value:(id)value
{
  addressCopy = address;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = ASDProperty;
  v9 = [(ASDProperty *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_address, address);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (ASDProperty)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Address"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[ASDPropertyAddress alloc] initWithDictionary:v5];
    v8 = [(ASDProperty *)self initWithAddress:v7 value:v6];
    self = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  address = [(ASDProperty *)self address];
  value = [(ASDProperty *)self value];
  v7 = [v4 initWithAddress:address value:value];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = [(ASDProperty *)v5 address];
      address2 = [(ASDProperty *)self address];
      if ([address isEqual:address2])
      {
        value = [(ASDProperty *)v5 value];
        value2 = [(ASDProperty *)self value];
        v10 = [value isEqual:value2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  address = [(ASDProperty *)self address];
  v4 = [address hash];
  value = [(ASDProperty *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

@end