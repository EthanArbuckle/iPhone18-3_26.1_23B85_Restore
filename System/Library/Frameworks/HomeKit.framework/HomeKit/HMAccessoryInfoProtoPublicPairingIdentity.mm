@interface HMAccessoryInfoProtoPublicPairingIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoPublicPairingIdentity

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HMAccessoryInfoProtoPublicPairingIdentity *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HMAccessoryInfoProtoPublicPairingIdentity *)self setPublicPairingKeyData:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    publicPairingKeyData = self->_publicPairingKeyData;
    if (publicPairingKeyData | v4[2])
    {
      v7 = [(NSData *)publicPairingKeyData isEqual:?];
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
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_publicPairingKeyData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_publicPairingKeyData)
  {
    [v5 setPublicPairingKeyData:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_publicPairingKeyData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  publicPairingKeyData = self->_publicPairingKeyData;
  if (publicPairingKeyData)
  {
    [v4 setObject:publicPairingKeyData forKey:@"publicPairingKeyData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoPublicPairingIdentity;
  v4 = [(HMAccessoryInfoProtoPublicPairingIdentity *)&v8 description];
  v5 = [(HMAccessoryInfoProtoPublicPairingIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end