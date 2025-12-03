@interface HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)self setUuidString:?];
    fromCopy = v7;
  }

  publicPairingIdentity = self->_publicPairingIdentity;
  v6 = fromCopy[1];
  if (publicPairingIdentity)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    publicPairingIdentity = [(HMAccessoryInfoProtoPublicPairingIdentity *)publicPairingIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    publicPairingIdentity = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)self setPublicPairingIdentity:?];
  }

  fromCopy = v7;
LABEL_9:

  MEMORY[0x1EEE66BB8](publicPairingIdentity, fromCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuidString = self->_uuidString, !(uuidString | equalCopy[2])) || -[NSString isEqual:](uuidString, "isEqual:")))
  {
    publicPairingIdentity = self->_publicPairingIdentity;
    if (publicPairingIdentity | equalCopy[1])
    {
      v7 = [(HMAccessoryInfoProtoPublicPairingIdentity *)publicPairingIdentity isEqual:?];
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
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HMAccessoryInfoProtoPublicPairingIdentity *)self->_publicPairingIdentity copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuidString)
  {
    [toCopy setUuidString:?];
    toCopy = v5;
  }

  if (self->_publicPairingIdentity)
  {
    [v5 setPublicPairingIdentity:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_publicPairingIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
  }

  publicPairingIdentity = self->_publicPairingIdentity;
  if (publicPairingIdentity)
  {
    dictionaryRepresentation = [(HMAccessoryInfoProtoPublicPairingIdentity *)publicPairingIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"publicPairingIdentity"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end