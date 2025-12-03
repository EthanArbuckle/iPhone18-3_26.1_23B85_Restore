@interface ATXAnchorModelPBLinkActionMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBLinkActionMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBLinkActionMetadata;
  v4 = [(ATXAnchorModelPBLinkActionMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXAnchorModelPBLinkActionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  actionId = self->_actionId;
  if (actionId)
  {
    [v4 setObject:actionId forKey:@"actionId"];
  }

  actionHistory = self->_actionHistory;
  if (actionHistory)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionHistory dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"actionHistory"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeTimeSinceAnchorInSeconds];
    [v4 setObject:v9 forKey:@"relativeTimeSinceAnchorInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_actionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_actionHistory)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    relativeTimeSinceAnchorInSeconds = self->_relativeTimeSinceAnchorInSeconds;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_actionId)
  {
    [v5 setActionId:?];
    toCopy = v5;
  }

  if (self->_actionHistory)
  {
    [v5 setActionHistory:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_relativeTimeSinceAnchorInSeconds;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_actionId copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionHistory copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_relativeTimeSinceAnchorInSeconds;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  actionId = self->_actionId;
  if (actionId | *(equalCopy + 2))
  {
    if (![(NSString *)actionId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  actionHistory = self->_actionHistory;
  if (actionHistory | *(equalCopy + 1))
  {
    if (![(ATXAnchorModelPBLaunchHistoryMetadata *)actionHistory isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_relativeTimeSinceAnchorInSeconds == *(equalCopy + 8))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_actionId hash];
  v5 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionHistory hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_relativeTimeSinceAnchorInSeconds;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ATXAnchorModelPBLinkActionMetadata *)self setBundleId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(ATXAnchorModelPBLinkActionMetadata *)self setActionId:?];
    fromCopy = v7;
  }

  actionHistory = self->_actionHistory;
  v6 = *(fromCopy + 1);
  if (actionHistory)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(ATXAnchorModelPBLaunchHistoryMetadata *)actionHistory mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(ATXAnchorModelPBLinkActionMetadata *)self setActionHistory:?];
  }

  fromCopy = v7;
LABEL_11:
  if (fromCopy[9])
  {
    self->_relativeTimeSinceAnchorInSeconds = fromCopy[8];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end