@interface WCDProtoUserInfoTransfer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WCDProtoUserInfoTransfer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WCDProtoUserInfoTransfer;
  v4 = [(WCDProtoUserInfoTransfer *)&v8 description];
  dictionaryRepresentation = [(WCDProtoUserInfoTransfer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  clientData = self->_clientData;
  if (clientData)
  {
    [dictionary setObject:clientData forKey:@"clientData"];
  }

  transferIdentifier = self->_transferIdentifier;
  if (transferIdentifier)
  {
    [dictionary setObject:transferIdentifier forKey:@"transferIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_clientData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_transferIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_clientData)
  {
    [toCopy setClientData:?];
    toCopy = v5;
  }

  if (self->_transferIdentifier)
  {
    [v5 setTransferIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_clientData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_transferIdentifier copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  clientData = self->_clientData;
  if (clientData | *(equalCopy + 1) && ![(NSData *)clientData isEqual:?])
  {
    goto LABEL_11;
  }

  transferIdentifier = self->_transferIdentifier;
  if (transferIdentifier | *(equalCopy + 2))
  {
    v8 = [(NSString *)transferIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_clientData hash]^ v3;
  return v4 ^ [(NSString *)self->_transferIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_version = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(WCDProtoUserInfoTransfer *)self setClientData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WCDProtoUserInfoTransfer *)self setTransferIdentifier:?];
    fromCopy = v5;
  }
}

@end