@interface HMPBAccessoryReference
+ (id)accessoryReferenceWithAccessory:(id)accessory;
+ (id)accessoryReferenceWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBAccessoryReference

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  homeReference = self->_homeReference;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(HMPBAccessoryReference *)self setUniqueIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((homeReference = self->_homeReference, !(homeReference | equalCopy[1])) || -[HMPBHomeReference isEqual:](homeReference, "isEqual:")))
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    if (uniqueIdentifier | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HMPBHomeReference *)self->_homeReference copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_uniqueIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_homeReference)
  {
    [toCopy setHomeReference:?];
    toCopy = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_homeReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  homeReference = self->_homeReference;
  if (homeReference)
  {
    dictionaryRepresentation = [(HMPBHomeReference *)homeReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"homeReference"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBAccessoryReference;
  v4 = [(HMPBAccessoryReference *)&v8 description];
  dictionaryRepresentation = [(HMPBAccessoryReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (id)accessoryReferenceWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v5 = [HMPBHomeReference homeReferenceWithHome:home];
  v6 = objc_alloc_init(HMPBAccessoryReference);
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];

  hm_convertToData = [uniqueIdentifier hm_convertToData];
  [(HMPBAccessoryReference *)v6 setUniqueIdentifier:hm_convertToData];

  [(HMPBAccessoryReference *)v6 setHomeReference:v5];

  return v6;
}

+ (id)accessoryReferenceWithData:(id)data
{
  dataCopy = data;
  v4 = [[HMPBAccessoryReference alloc] initWithData:dataCopy];

  return v4;
}

@end