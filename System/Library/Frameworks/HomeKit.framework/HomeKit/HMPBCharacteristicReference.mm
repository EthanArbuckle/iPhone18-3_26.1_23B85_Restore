@interface HMPBCharacteristicReference
+ (id)characteristicReferenceWithCharacteristic:(id)characteristic;
+ (id)characteristicReferenceWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBCharacteristicReference

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  serviceReference = self->_serviceReference;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (serviceReference)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    serviceReference = [(HMPBServiceReference *)serviceReference mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    serviceReference = [(HMPBCharacteristicReference *)self setServiceReference:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    serviceReference = [(HMPBCharacteristicReference *)self setUniqueIdentifier:?];
    fromCopy = v7;
  }

  MEMORY[0x1EEE66BB8](serviceReference, fromCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((serviceReference = self->_serviceReference, !(serviceReference | equalCopy[1])) || -[HMPBServiceReference isEqual:](serviceReference, "isEqual:")))
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
  v6 = [(HMPBServiceReference *)self->_serviceReference copyWithZone:zone];
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
  if (self->_serviceReference)
  {
    [toCopy setServiceReference:?];
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
  if (self->_serviceReference)
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
  serviceReference = self->_serviceReference;
  if (serviceReference)
  {
    dictionaryRepresentation = [(HMPBServiceReference *)serviceReference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"serviceReference"];
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
  v8.super_class = HMPBCharacteristicReference;
  v4 = [(HMPBCharacteristicReference *)&v8 description];
  dictionaryRepresentation = [(HMPBCharacteristicReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (id)characteristicReferenceWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  v5 = [HMPBServiceReference serviceReferenceWithService:service];
  v6 = objc_alloc_init(HMPBCharacteristicReference);
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  hm_convertToData = [uniqueIdentifier hm_convertToData];
  [(HMPBCharacteristicReference *)v6 setUniqueIdentifier:hm_convertToData];

  [(HMPBCharacteristicReference *)v6 setServiceReference:v5];

  return v6;
}

+ (id)characteristicReferenceWithData:(id)data
{
  dataCopy = data;
  v4 = [[HMPBCharacteristicReference alloc] initWithData:dataCopy];

  return v4;
}

@end