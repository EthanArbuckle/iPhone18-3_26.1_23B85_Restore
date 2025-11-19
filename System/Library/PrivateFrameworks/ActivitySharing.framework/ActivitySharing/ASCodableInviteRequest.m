@interface ASCodableInviteRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableInviteRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableInviteRequest;
  v4 = [(ASCodableInviteRequest *)&v8 description];
  v5 = [(ASCodableInviteRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [v3 setObject:handshakeToken forKey:@"handshakeToken"];
  }

  inviterCloudKitAddress = self->_inviterCloudKitAddress;
  if (inviterCloudKitAddress)
  {
    [v4 setObject:inviterCloudKitAddress forKey:@"inviterCloudKitAddress"];
  }

  inviterCallerID = self->_inviterCallerID;
  if (inviterCallerID)
  {
    [v4 setObject:inviterCallerID forKey:@"inviterCallerID"];
  }

  inviterBuildNumber = self->_inviterBuildNumber;
  if (inviterBuildNumber)
  {
    [v4 setObject:inviterBuildNumber forKey:@"inviterBuildNumber"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_inviterVersion];
    [v4 setObject:v9 forKey:@"inviterVersion"];
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview)
  {
    v11 = [(ASCodableActivityDataPreview *)activityDataPreview dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"activityDataPreview"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_inviterCloudKitAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_inviterCallerID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_inviterBuildNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    inviterVersion = self->_inviterVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_activityDataPreview)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handshakeToken)
  {
    [v4 setHandshakeToken:?];
    v4 = v5;
  }

  if (self->_inviterCloudKitAddress)
  {
    [v5 setInviterCloudKitAddress:?];
    v4 = v5;
  }

  if (self->_inviterCallerID)
  {
    [v5 setInviterCallerID:?];
    v4 = v5;
  }

  if (self->_inviterBuildNumber)
  {
    [v5 setInviterBuildNumber:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_inviterVersion;
    *(v4 + 52) |= 1u;
  }

  if (self->_activityDataPreview)
  {
    [v5 setActivityDataPreview:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_inviterCloudKitAddress copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_inviterCallerID copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_inviterBuildNumber copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_inviterVersion;
    *(v5 + 52) |= 1u;
  }

  v14 = [(ASCodableActivityDataPreview *)self->_activityDataPreview copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  handshakeToken = self->_handshakeToken;
  if (handshakeToken | *(v4 + 2))
  {
    if (![(NSString *)handshakeToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterCloudKitAddress = self->_inviterCloudKitAddress;
  if (inviterCloudKitAddress | *(v4 + 5))
  {
    if (![(NSString *)inviterCloudKitAddress isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterCallerID = self->_inviterCallerID;
  if (inviterCallerID | *(v4 + 4))
  {
    if (![(NSString *)inviterCallerID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterBuildNumber = self->_inviterBuildNumber;
  if (inviterBuildNumber | *(v4 + 3))
  {
    if (![(NSString *)inviterBuildNumber isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_inviterVersion != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview | *(v4 + 1))
  {
    v11 = [(ASCodableActivityDataPreview *)activityDataPreview isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handshakeToken hash];
  v4 = [(NSString *)self->_inviterCloudKitAddress hash];
  v5 = [(NSString *)self->_inviterCallerID hash];
  v6 = [(NSString *)self->_inviterBuildNumber hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_inviterVersion;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(ASCodableActivityDataPreview *)self->_activityDataPreview hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(ASCodableInviteRequest *)self setHandshakeToken:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(ASCodableInviteRequest *)self setInviterCloudKitAddress:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(ASCodableInviteRequest *)self setInviterCallerID:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(ASCodableInviteRequest *)self setInviterBuildNumber:?];
    v4 = v7;
  }

  if (v4[13])
  {
    self->_inviterVersion = v4[12];
    *&self->_has |= 1u;
  }

  activityDataPreview = self->_activityDataPreview;
  v6 = *(v4 + 1);
  if (activityDataPreview)
  {
    if (v6)
    {
      [(ASCodableActivityDataPreview *)activityDataPreview mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableInviteRequest *)self setActivityDataPreview:?];
  }

  MEMORY[0x2821F96F8]();
}

@end