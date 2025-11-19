@interface ASCodableFinalizeHandshake
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableFinalizeHandshake

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableFinalizeHandshake;
  v4 = [(ASCodableFinalizeHandshake *)&v8 description];
  v5 = [(ASCodableFinalizeHandshake *)self dictionaryRepresentation];
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

  inviterShareLocations = self->_inviterShareLocations;
  if (inviterShareLocations)
  {
    v7 = [(ASCodableShareLocations *)inviterShareLocations dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"inviterShareLocations"];
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview)
  {
    v9 = [(ASCodableActivityDataPreview *)activityDataPreview dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"activityDataPreview"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_inviterShareLocations)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_activityDataPreview)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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

  if (self->_inviterShareLocations)
  {
    [v5 setInviterShareLocations:?];
    v4 = v5;
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
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(ASCodableShareLocations *)self->_inviterShareLocations copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(ASCodableActivityDataPreview *)self->_activityDataPreview copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((handshakeToken = self->_handshakeToken, !(handshakeToken | v4[2])) || -[NSString isEqual:](handshakeToken, "isEqual:")) && ((inviterShareLocations = self->_inviterShareLocations, !(inviterShareLocations | v4[3])) || -[ASCodableShareLocations isEqual:](inviterShareLocations, "isEqual:")))
  {
    activityDataPreview = self->_activityDataPreview;
    if (activityDataPreview | v4[1])
    {
      v8 = [(ASCodableActivityDataPreview *)activityDataPreview isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handshakeToken hash];
  v4 = [(ASCodableShareLocations *)self->_inviterShareLocations hash]^ v3;
  return v4 ^ [(ASCodableActivityDataPreview *)self->_activityDataPreview hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(ASCodableFinalizeHandshake *)self setHandshakeToken:?];
    v4 = v9;
  }

  inviterShareLocations = self->_inviterShareLocations;
  v6 = v4[3];
  if (inviterShareLocations)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(ASCodableShareLocations *)inviterShareLocations mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(ASCodableFinalizeHandshake *)self setInviterShareLocations:?];
  }

  v4 = v9;
LABEL_9:
  activityDataPreview = self->_activityDataPreview;
  v8 = v4[1];
  if (activityDataPreview)
  {
    if (v8)
    {
      [(ASCodableActivityDataPreview *)activityDataPreview mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ASCodableFinalizeHandshake *)self setActivityDataPreview:?];
  }

  MEMORY[0x2821F96F8]();
}

@end