@interface CLFindMyAccessoryConnectionMaterial
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMaterial:(id)a3;
- (CLFindMyAccessoryConnectionMaterial)init;
- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)a3 ltk:(id)a4 primaryIndex:(id)a5 secondaryIndex:(id)a6;
- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryDescription;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryConnectionMaterial

- (CLFindMyAccessoryConnectionMaterial)init
{
  [(CLFindMyAccessoryConnectionMaterial *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)a3 ltk:(id)a4 primaryIndex:(id)a5 secondaryIndex:(id)a6
{
  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryConnectionMaterial;
  v10 = [(CLFindMyAccessoryConnectionMaterial *)&v12 init];
  if (v10)
  {
    v10->_address = [a3 copy];
    v10->_ltk = [a4 copy];
    v10->_primaryIndex = [a5 copy];
    v10->_secondaryIndex = [a6 copy];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

- (BOOL)isEqualToMaterial:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 address];
  v7 = [(CLFindMyAccessoryConnectionMaterial *)self address];
  if (v6)
  {
    v8 = -[NSData isEqualToData:](v7, "isEqualToData:", [a3 address]);
  }

  else
  {
    v8 = v7 == 0;
  }

  if ([a3 ltk])
  {
    if (v8)
    {
      v8 = -[NSData isEqualToData:](-[CLFindMyAccessoryConnectionMaterial ltk](self, "ltk"), "isEqualToData:", [a3 ltk]);
    }
  }

  else if (v8)
  {
    v8 = [(CLFindMyAccessoryConnectionMaterial *)self ltk]== 0;
  }

  if ([a3 primaryIndex])
  {
    if (v8)
    {
      v8 = -[NSNumber isEqualToNumber:](-[CLFindMyAccessoryConnectionMaterial primaryIndex](self, "primaryIndex"), "isEqualToNumber:", [a3 primaryIndex]);
    }
  }

  else if (v8)
  {
    v8 = [(CLFindMyAccessoryConnectionMaterial *)self primaryIndex]== 0;
  }

  if (![a3 secondaryIndex])
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

  v9 = [(CLFindMyAccessoryConnectionMaterial *)self secondaryIndex];
  v10 = [a3 secondaryIndex];

  return [(NSNumber *)v9 isEqualToNumber:v10];
}

- (unint64_t)hash
{
  v3 = [(NSData *)[(CLFindMyAccessoryConnectionMaterial *)self address] hash];
  v4 = [(NSData *)[(CLFindMyAccessoryConnectionMaterial *)self ltk] hash]^ v3;
  v5 = [(NSNumber *)[(CLFindMyAccessoryConnectionMaterial *)self primaryIndex] hash];
  return v4 ^ v5 ^ [(NSNumber *)[(CLFindMyAccessoryConnectionMaterial *)self secondaryIndex] hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSData *)self->_address copy];
  v6 = [(NSData *)self->_ltk copy];
  v7 = [(NSNumber *)self->_primaryIndex copy];
  v8 = [(NSNumber *)self->_secondaryIndex copy];

  return MEMORY[0x1EEE66B58](v4, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_);
}

- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ltk"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];

  return MEMORY[0x1EEE66B58](self, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_address forKey:@"address"];
  [a3 encodeObject:self->_ltk forKey:@"ltk"];
  [a3 encodeObject:self->_primaryIndex forKey:@"primaryIndex"];
  secondaryIndex = self->_secondaryIndex;

  [a3 encodeObject:secondaryIndex forKey:@"secondaryIndex"];
}

- (id)dictionaryDescription
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  address = self->_address;
  if ([(NSData *)address length]== 6)
  {
    v5 = [(NSData *)address bytes];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *v5, v5[1], v5[2], v5[3], v5[4], v5[5]];
  }

  else
  {
    v6 = 0;
  }

  [v3 setObject:v6 forKey:@"address"];
  ltk = self->_ltk;
  if (ltk)
  {
    if ([(NSData *)self->_ltk length]>= 0x10)
    {
      v9 = [(NSData *)ltk bytes];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X", *v9, v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]];
    }

    else
    {
      v8 = 0;
    }

    [v3 setObject:v8 forKey:@"ltk"];
  }

  primaryIndex = self->_primaryIndex;
  if (primaryIndex)
  {
    [v3 setObject:primaryIndex forKey:@"primaryIndex"];
  }

  secondaryIndex = self->_secondaryIndex;
  if (secondaryIndex)
  {
    [v3 setObject:secondaryIndex forKey:@"secondaryIndex"];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryConnectionMaterial;
  [(CLFindMyAccessoryConnectionMaterial *)&v3 dealloc];
}

@end