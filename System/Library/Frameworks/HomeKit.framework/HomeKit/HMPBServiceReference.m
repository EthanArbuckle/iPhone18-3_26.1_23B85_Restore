@interface HMPBServiceReference
+ (HMPBServiceReference)serviceReferenceWithData:(id)a3;
+ (HMPBServiceReference)serviceReferenceWithService:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBServiceReference

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  accessoryReference = self->_accessoryReference;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    accessoryReference = [(HMPBServiceReference *)self setUniqueIdentifier:?];
    v4 = v7;
  }

  MEMORY[0x1EEE66BB8](accessoryReference, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((accessoryReference = self->_accessoryReference, !(accessoryReference | v4[1])) || -[HMPBAccessoryReference isEqual:](accessoryReference, "isEqual:")))
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
  v6 = [(HMPBAccessoryReference *)self->_accessoryReference copyWithZone:a3];
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
  if (self->_accessoryReference)
  {
    [v4 setAccessoryReference:?];
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
  if (self->_accessoryReference)
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
  accessoryReference = self->_accessoryReference;
  if (accessoryReference)
  {
    v5 = [(HMPBAccessoryReference *)accessoryReference dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"accessoryReference"];
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
  v8.super_class = HMPBServiceReference;
  v4 = [(HMPBServiceReference *)&v8 description];
  v5 = [(HMPBServiceReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

+ (HMPBServiceReference)serviceReferenceWithService:(id)a3
{
  v3 = a3;
  v4 = [v3 accessory];
  v5 = [HMPBAccessoryReference accessoryReferenceWithAccessory:v4];
  v6 = objc_alloc_init(HMPBServiceReference);
  v7 = [v3 uniqueIdentifier];

  v8 = [v7 hm_convertToData];
  [(HMPBServiceReference *)v6 setUniqueIdentifier:v8];

  [(HMPBServiceReference *)v6 setAccessoryReference:v5];

  return v6;
}

+ (HMPBServiceReference)serviceReferenceWithData:(id)a3
{
  v3 = a3;
  v4 = [[HMPBServiceReference alloc] initWithData:v3];

  return v4;
}

@end