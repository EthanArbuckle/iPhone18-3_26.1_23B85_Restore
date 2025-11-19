@interface HMPBHomeReference
+ (HMPBHomeReference)homeReferenceWithData:(id)a3;
+ (HMPBHomeReference)homeReferenceWithHome:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBHomeReference

+ (HMPBHomeReference)homeReferenceWithHome:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HMPBHomeReference);
  v5 = [v3 uniqueIdentifier];

  v6 = [v5 hm_convertToData];
  [(HMPBHomeReference *)v4 setUniqueIdentifier:v6];

  return v4;
}

+ (HMPBHomeReference)homeReferenceWithData:(id)a3
{
  v3 = a3;
  v4 = [[HMPBHomeReference alloc] initWithData:v3];

  return v4;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(HMPBHomeReference *)self setUniqueIdentifier:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    if (uniqueIdentifier | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uniqueIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [a3 setUniqueIdentifier:uniqueIdentifier];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBHomeReference;
  v4 = [(HMPBHomeReference *)&v8 description];
  v5 = [(HMPBHomeReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end