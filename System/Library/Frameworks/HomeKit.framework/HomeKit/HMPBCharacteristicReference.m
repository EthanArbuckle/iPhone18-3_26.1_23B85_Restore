@interface HMPBCharacteristicReference
+ (id)characteristicReferenceWithCharacteristic:(id)a3;
+ (id)characteristicReferenceWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBCharacteristicReference

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  serviceReference = self->_serviceReference;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    serviceReference = [(HMPBCharacteristicReference *)self setUniqueIdentifier:?];
    v4 = v7;
  }

  MEMORY[0x1EEE66BB8](serviceReference, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceReference = self->_serviceReference, !(serviceReference | v4[1])) || -[HMPBServiceReference isEqual:](serviceReference, "isEqual:")))
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
  v6 = [(HMPBServiceReference *)self->_serviceReference copyWithZone:a3];
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
  if (self->_serviceReference)
  {
    [v4 setServiceReference:?];
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
  if (self->_serviceReference)
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
  serviceReference = self->_serviceReference;
  if (serviceReference)
  {
    v5 = [(HMPBServiceReference *)serviceReference dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"serviceReference"];
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
  v8.super_class = HMPBCharacteristicReference;
  v4 = [(HMPBCharacteristicReference *)&v8 description];
  v5 = [(HMPBCharacteristicReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

+ (id)characteristicReferenceWithCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  v5 = [HMPBServiceReference serviceReferenceWithService:v4];
  v6 = objc_alloc_init(HMPBCharacteristicReference);
  v7 = [v3 uniqueIdentifier];

  v8 = [v7 hm_convertToData];
  [(HMPBCharacteristicReference *)v6 setUniqueIdentifier:v8];

  [(HMPBCharacteristicReference *)v6 setServiceReference:v5];

  return v6;
}

+ (id)characteristicReferenceWithData:(id)a3
{
  v3 = a3;
  v4 = [[HMPBCharacteristicReference alloc] initWithData:v3];

  return v4;
}

@end