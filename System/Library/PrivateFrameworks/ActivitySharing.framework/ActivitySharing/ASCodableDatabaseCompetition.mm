@interface ASCodableDatabaseCompetition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableDatabaseCompetition

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetition;
  v4 = [(ASCodableDatabaseCompetition *)&v8 description];
  dictionaryRepresentation = [(ASCodableDatabaseCompetition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [dictionary setObject:friendUUID forKey:@"friendUUID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v6 forKey:@"type"];
  }

  competition = self->_competition;
  if (competition)
  {
    dictionaryRepresentation = [(ASCodableCloudKitCompetition *)competition dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"competition"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_competition)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_friendUUID)
  {
    [toCopy setFriendUUID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_type;
    *(toCopy + 32) |= 1u;
  }

  if (self->_competition)
  {
    [v5 setCompetition:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_friendUUID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v8 = [(ASCodableCloudKitCompetition *)self->_competition copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(equalCopy + 3))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_type != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  competition = self->_competition;
  if (competition | *(equalCopy + 2))
  {
    v8 = [(ASCodableCloudKitCompetition *)competition isEqual:?];
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
  v3 = [(NSData *)self->_friendUUID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(ASCodableCloudKitCompetition *)self->_competition hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(ASCodableDatabaseCompetition *)self setFriendUUID:?];
    fromCopy = v7;
  }

  if (fromCopy[4])
  {
    self->_type = fromCopy[1];
    *&self->_has |= 1u;
  }

  competition = self->_competition;
  v6 = fromCopy[2];
  if (competition)
  {
    if (v6)
    {
      [(ASCodableCloudKitCompetition *)competition mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableDatabaseCompetition *)self setCompetition:?];
  }

  MEMORY[0x2821F96F8]();
}

@end