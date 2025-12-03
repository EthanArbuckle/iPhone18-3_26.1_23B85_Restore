@interface ASCodableFinalizeHandshake
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableFinalizeHandshake

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableFinalizeHandshake;
  v4 = [(ASCodableFinalizeHandshake *)&v8 description];
  dictionaryRepresentation = [(ASCodableFinalizeHandshake *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [dictionary setObject:handshakeToken forKey:@"handshakeToken"];
  }

  inviterShareLocations = self->_inviterShareLocations;
  if (inviterShareLocations)
  {
    dictionaryRepresentation = [(ASCodableShareLocations *)inviterShareLocations dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"inviterShareLocations"];
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview)
  {
    dictionaryRepresentation2 = [(ASCodableActivityDataPreview *)activityDataPreview dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"activityDataPreview"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_inviterShareLocations)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_activityDataPreview)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handshakeToken)
  {
    [toCopy setHandshakeToken:?];
    toCopy = v5;
  }

  if (self->_inviterShareLocations)
  {
    [v5 setInviterShareLocations:?];
    toCopy = v5;
  }

  if (self->_activityDataPreview)
  {
    [v5 setActivityDataPreview:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(ASCodableShareLocations *)self->_inviterShareLocations copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(ASCodableActivityDataPreview *)self->_activityDataPreview copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((handshakeToken = self->_handshakeToken, !(handshakeToken | equalCopy[2])) || -[NSString isEqual:](handshakeToken, "isEqual:")) && ((inviterShareLocations = self->_inviterShareLocations, !(inviterShareLocations | equalCopy[3])) || -[ASCodableShareLocations isEqual:](inviterShareLocations, "isEqual:")))
  {
    activityDataPreview = self->_activityDataPreview;
    if (activityDataPreview | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(ASCodableFinalizeHandshake *)self setHandshakeToken:?];
    fromCopy = v9;
  }

  inviterShareLocations = self->_inviterShareLocations;
  v6 = fromCopy[3];
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

  fromCopy = v9;
LABEL_9:
  activityDataPreview = self->_activityDataPreview;
  v8 = fromCopy[1];
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