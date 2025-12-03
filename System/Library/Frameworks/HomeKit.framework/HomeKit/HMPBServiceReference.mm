@interface HMPBServiceReference
+ (HMPBServiceReference)serviceReferenceWithData:(id)data;
+ (HMPBServiceReference)serviceReferenceWithService:(id)service;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBServiceReference

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  accessoryReference = self->_accessoryReference;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (accessoryReference)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    accessoryReference = [(HMPBAccessoryReference *)accessoryReference mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    accessoryReference = [(HMPBServiceReference *)self setAccessoryReference:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    accessoryReference = [(HMPBServiceReference *)self setUniqueIdentifier:?];
    fromCopy = v7;
  }

  MEMORY[0x1EEE66BB8](accessoryReference, fromCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((accessoryReference = self->_accessoryReference, !(accessoryReference | equalCopy[1])) || -[HMPBAccessoryReference isEqual:](accessoryReference, "isEqual:")))
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
  v6 = [(HMPBAccessoryReference *)self->_accessoryReference copyWithZone:zone];
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
  if (self->_accessoryReference)
  {
    [toCopy setAccessoryReference:?];
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
  if (self->_accessoryReference)
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
  accessoryReference = self->_accessoryReference;
  if (accessoryReference)
  {
    dictionaryRepresentation = [(HMPBAccessoryReference *)accessoryReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"accessoryReference"];
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
  v8.super_class = HMPBServiceReference;
  v4 = [(HMPBServiceReference *)&v8 description];
  dictionaryRepresentation = [(HMPBServiceReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (HMPBServiceReference)serviceReferenceWithService:(id)service
{
  serviceCopy = service;
  accessory = [serviceCopy accessory];
  v5 = [HMPBAccessoryReference accessoryReferenceWithAccessory:accessory];
  v6 = objc_alloc_init(HMPBServiceReference);
  uniqueIdentifier = [serviceCopy uniqueIdentifier];

  hm_convertToData = [uniqueIdentifier hm_convertToData];
  [(HMPBServiceReference *)v6 setUniqueIdentifier:hm_convertToData];

  [(HMPBServiceReference *)v6 setAccessoryReference:v5];

  return v6;
}

+ (HMPBServiceReference)serviceReferenceWithData:(id)data
{
  dataCopy = data;
  v4 = [[HMPBServiceReference alloc] initWithData:dataCopy];

  return v4;
}

@end