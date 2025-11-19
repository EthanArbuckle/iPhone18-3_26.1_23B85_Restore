@interface ATXAnchorModelPBLinkActionMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBLinkActionMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBLinkActionMetadata;
  v4 = [(ATXAnchorModelPBLinkActionMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBLinkActionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  actionId = self->_actionId;
  if (actionId)
  {
    [v4 setObject:actionId forKey:@"actionId"];
  }

  actionHistory = self->_actionHistory;
  if (actionHistory)
  {
    v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionHistory dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"actionHistory"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeTimeSinceAnchorInSeconds];
    [v4 setObject:v9 forKey:@"relativeTimeSinceAnchorInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_actionId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_actionHistory)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    relativeTimeSinceAnchorInSeconds = self->_relativeTimeSinceAnchorInSeconds;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_actionId)
  {
    [v5 setActionId:?];
    v4 = v5;
  }

  if (self->_actionHistory)
  {
    [v5 setActionHistory:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_relativeTimeSinceAnchorInSeconds;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_actionId copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionHistory copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_relativeTimeSinceAnchorInSeconds;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  actionId = self->_actionId;
  if (actionId | *(v4 + 2))
  {
    if (![(NSString *)actionId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  actionHistory = self->_actionHistory;
  if (actionHistory | *(v4 + 1))
  {
    if (![(ATXAnchorModelPBLaunchHistoryMetadata *)actionHistory isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_relativeTimeSinceAnchorInSeconds == *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 3))
  {
    [(ATXAnchorModelPBLinkActionMetadata *)self setBundleId:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(ATXAnchorModelPBLinkActionMetadata *)self setActionId:?];
    v4 = v7;
  }

  actionHistory = self->_actionHistory;
  v6 = *(v4 + 1);
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

  v4 = v7;
LABEL_11:
  if (v4[9])
  {
    self->_relativeTimeSinceAnchorInSeconds = v4[8];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end