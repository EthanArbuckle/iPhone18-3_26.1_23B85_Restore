@interface ASCodableDatabaseCompetition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableDatabaseCompetition

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetition;
  v4 = [(ASCodableDatabaseCompetition *)&v8 description];
  v5 = [(ASCodableDatabaseCompetition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [v3 setObject:friendUUID forKey:@"friendUUID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v6 forKey:@"type"];
  }

  competition = self->_competition;
  if (competition)
  {
    v8 = [(ASCodableCloudKitCompetition *)competition dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"competition"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_competition)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_friendUUID)
  {
    [v4 setFriendUUID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_type;
    *(v4 + 32) |= 1u;
  }

  if (self->_competition)
  {
    [v5 setCompetition:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_friendUUID copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v8 = [(ASCodableCloudKitCompetition *)self->_competition copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(v4 + 3))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_type != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  competition = self->_competition;
  if (competition | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(ASCodableDatabaseCompetition *)self setFriendUUID:?];
    v4 = v7;
  }

  if (v4[4])
  {
    self->_type = v4[1];
    *&self->_has |= 1u;
  }

  competition = self->_competition;
  v6 = v4[2];
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