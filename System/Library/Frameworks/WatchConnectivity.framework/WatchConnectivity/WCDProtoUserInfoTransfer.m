@interface WCDProtoUserInfoTransfer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WCDProtoUserInfoTransfer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WCDProtoUserInfoTransfer;
  v4 = [(WCDProtoUserInfoTransfer *)&v8 description];
  v5 = [(WCDProtoUserInfoTransfer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  clientData = self->_clientData;
  if (clientData)
  {
    [v3 setObject:clientData forKey:@"clientData"];
  }

  transferIdentifier = self->_transferIdentifier;
  if (transferIdentifier)
  {
    [v3 setObject:transferIdentifier forKey:@"transferIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_clientData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_transferIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_clientData)
  {
    [v4 setClientData:?];
    v4 = v5;
  }

  if (self->_transferIdentifier)
  {
    [v5 setTransferIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_clientData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_transferIdentifier copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  clientData = self->_clientData;
  if (clientData | *(v4 + 1) && ![(NSData *)clientData isEqual:?])
  {
    goto LABEL_11;
  }

  transferIdentifier = self->_transferIdentifier;
  if (transferIdentifier | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_version = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(WCDProtoUserInfoTransfer *)self setClientData:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(WCDProtoUserInfoTransfer *)self setTransferIdentifier:?];
    v4 = v5;
  }
}

@end