@interface CLFindMyAccessoryConnectionMaterial
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMaterial:(id)material;
- (CLFindMyAccessoryConnectionMaterial)init;
- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)address ltk:(id)ltk primaryIndex:(id)index secondaryIndex:(id)secondaryIndex;
- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryDescription;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryConnectionMaterial

- (CLFindMyAccessoryConnectionMaterial)init
{
  [(CLFindMyAccessoryConnectionMaterial *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)address ltk:(id)ltk primaryIndex:(id)index secondaryIndex:(id)secondaryIndex
{
  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryConnectionMaterial;
  v10 = [(CLFindMyAccessoryConnectionMaterial *)&v12 init];
  if (v10)
  {
    v10->_address = [address copy];
    v10->_ltk = [ltk copy];
    v10->_primaryIndex = [index copy];
    v10->_secondaryIndex = [secondaryIndex copy];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToMaterial_);
}

- (BOOL)isEqualToMaterial:(id)material
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  address = [material address];
  address2 = [(CLFindMyAccessoryConnectionMaterial *)self address];
  if (address)
  {
    v8 = -[NSData isEqualToData:](address2, "isEqualToData:", [material address]);
  }

  else
  {
    v8 = address2 == 0;
  }

  if ([material ltk])
  {
    if (v8)
    {
      v8 = -[NSData isEqualToData:](-[CLFindMyAccessoryConnectionMaterial ltk](self, "ltk"), "isEqualToData:", [material ltk]);
    }
  }

  else if (v8)
  {
    v8 = [(CLFindMyAccessoryConnectionMaterial *)self ltk]== 0;
  }

  if ([material primaryIndex])
  {
    if (v8)
    {
      v8 = -[NSNumber isEqualToNumber:](-[CLFindMyAccessoryConnectionMaterial primaryIndex](self, "primaryIndex"), "isEqualToNumber:", [material primaryIndex]);
    }
  }

  else if (v8)
  {
    v8 = [(CLFindMyAccessoryConnectionMaterial *)self primaryIndex]== 0;
  }

  if (![material secondaryIndex])
  {
    if (v8)
    {
      return [(CLFindMyAccessoryConnectionMaterial *)self secondaryIndex]== 0;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  secondaryIndex = [(CLFindMyAccessoryConnectionMaterial *)self secondaryIndex];
  secondaryIndex2 = [material secondaryIndex];

  return [(NSNumber *)secondaryIndex isEqualToNumber:secondaryIndex2];
}

- (unint64_t)hash
{
  v3 = [(NSData *)[(CLFindMyAccessoryConnectionMaterial *)self address] hash];
  v4 = [(NSData *)[(CLFindMyAccessoryConnectionMaterial *)self ltk] hash]^ v3;
  v5 = [(NSNumber *)[(CLFindMyAccessoryConnectionMaterial *)self primaryIndex] hash];
  return v4 ^ v5 ^ [(NSNumber *)[(CLFindMyAccessoryConnectionMaterial *)self secondaryIndex] hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSData *)self->_address copy];
  v6 = [(NSData *)self->_ltk copy];
  v7 = [(NSNumber *)self->_primaryIndex copy];
  v8 = [(NSNumber *)self->_secondaryIndex copy];

  return MEMORY[0x1EEE66B58](v4, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_);
}

- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"ltk"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];

  return MEMORY[0x1EEE66B58](self, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_address forKey:@"address"];
  [coder encodeObject:self->_ltk forKey:@"ltk"];
  [coder encodeObject:self->_primaryIndex forKey:@"primaryIndex"];
  secondaryIndex = self->_secondaryIndex;

  [coder encodeObject:secondaryIndex forKey:@"secondaryIndex"];
}

- (id)dictionaryDescription
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  address = self->_address;
  if ([(NSData *)address length]== 6)
  {
    bytes = [(NSData *)address bytes];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
  }

  else
  {
    v6 = 0;
  }

  [dictionary setObject:v6 forKey:@"address"];
  ltk = self->_ltk;
  if (ltk)
  {
    if ([(NSData *)self->_ltk length]>= 0x10)
    {
      bytes2 = [(NSData *)ltk bytes];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X", *bytes2, bytes2[1], bytes2[2], bytes2[3], bytes2[4], bytes2[5], bytes2[6], bytes2[7], bytes2[8], bytes2[9], bytes2[10], bytes2[11], bytes2[12], bytes2[13], bytes2[14], bytes2[15]];
    }

    else
    {
      v8 = 0;
    }

    [dictionary setObject:v8 forKey:@"ltk"];
  }

  primaryIndex = self->_primaryIndex;
  if (primaryIndex)
  {
    [dictionary setObject:primaryIndex forKey:@"primaryIndex"];
  }

  secondaryIndex = self->_secondaryIndex;
  if (secondaryIndex)
  {
    [dictionary setObject:secondaryIndex forKey:@"secondaryIndex"];
  }

  return dictionary;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryConnectionMaterial;
  [(CLFindMyAccessoryConnectionMaterial *)&v3 dealloc];
}

@end