@interface HMPBAccessoryReference
+ (id)accessoryReferenceWithAccessory:(id)a3;
+ (id)accessoryReferenceWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBAccessoryReference

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  homeReference = self->_homeReference;
  v6 = v4[1];
  v7 = v4;
  if (homeReference)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HMPBHomeReference *)homeReference mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HMPBAccessoryReference *)self setHomeReference:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(HMPBAccessoryReference *)self setUniqueIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((homeReference = self->_homeReference, !(homeReference | v4[1])) || -[HMPBHomeReference isEqual:](homeReference, "isEqual:")))
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    if (uniqueIdentifier | v4[2])
    {
      v7 = [(NSData *)uniqueIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HMPBHomeReference *)self->_homeReference copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_uniqueIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_homeReference)
  {
    [v4 setHomeReference:?];
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_homeReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  homeReference = self->_homeReference;
  if (homeReference)
  {
    v5 = [(HMPBHomeReference *)homeReference dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"homeReference"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBAccessoryReference;
  v4 = [(HMPBAccessoryReference *)&v8 description];
  v5 = [(HMPBAccessoryReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

+ (id)accessoryReferenceWithAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 home];
  v5 = [HMPBHomeReference homeReferenceWithHome:v4];
  v6 = objc_alloc_init(HMPBAccessoryReference);
  v7 = [v3 uniqueIdentifier];

  v8 = [v7 hm_convertToData];
  [(HMPBAccessoryReference *)v6 setUniqueIdentifier:v8];

  [(HMPBAccessoryReference *)v6 setHomeReference:v5];

  return v6;
}

+ (id)accessoryReferenceWithData:(id)a3
{
  v3 = a3;
  v4 = [[HMPBAccessoryReference alloc] initWithData:v3];

  return v4;
}

@end