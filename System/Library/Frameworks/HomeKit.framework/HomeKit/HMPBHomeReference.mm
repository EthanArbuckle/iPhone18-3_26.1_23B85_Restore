@interface HMPBHomeReference
+ (HMPBHomeReference)homeReferenceWithData:(id)data;
+ (HMPBHomeReference)homeReferenceWithHome:(id)home;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBHomeReference

+ (HMPBHomeReference)homeReferenceWithHome:(id)home
{
  homeCopy = home;
  v4 = objc_alloc_init(HMPBHomeReference);
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  hm_convertToData = [uniqueIdentifier hm_convertToData];
  [(HMPBHomeReference *)v4 setUniqueIdentifier:hm_convertToData];

  return v4;
}

+ (HMPBHomeReference)homeReferenceWithData:(id)data
{
  dataCopy = data;
  v4 = [[HMPBHomeReference alloc] initWithData:dataCopy];

  return v4;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(HMPBHomeReference *)self setUniqueIdentifier:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    if (uniqueIdentifier | equalCopy[1])
    {
      v6 = [(NSData *)uniqueIdentifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uniqueIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [to setUniqueIdentifier:uniqueIdentifier];
  }
}

- (void)writeTo:(id)to
{
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBHomeReference;
  v4 = [(HMPBHomeReference *)&v8 description];
  dictionaryRepresentation = [(HMPBHomeReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end