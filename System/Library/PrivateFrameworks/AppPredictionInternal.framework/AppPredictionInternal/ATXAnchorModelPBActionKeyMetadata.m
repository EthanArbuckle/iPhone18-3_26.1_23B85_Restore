@interface ATXAnchorModelPBActionKeyMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBActionKeyMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBActionKeyMetadata;
  v4 = [(ATXAnchorModelPBActionKeyMetadata *)&v8 description];
  v5 = [(ATXAnchorModelPBActionKeyMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  actionType = self->_actionType;
  if (actionType)
  {
    [v3 setObject:actionType forKey:@"actionType"];
  }

  actionKeyLaunchHistory = self->_actionKeyLaunchHistory;
  if (actionKeyLaunchHistory)
  {
    v7 = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionKeyLaunchHistory dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"actionKeyLaunchHistory"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_actionKeyLaunchHistory)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionType)
  {
    [v4 setActionType:?];
    v4 = v5;
  }

  if (self->_actionKeyLaunchHistory)
  {
    [v5 setActionKeyLaunchHistory:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_actionType copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_actionKeyLaunchHistory copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((actionType = self->_actionType, !(actionType | v4[2])) || -[NSString isEqual:](actionType, "isEqual:")))
  {
    actionKeyLaunchHistory = self->_actionKeyLaunchHistory;
    if (actionKeyLaunchHistory | v4[1])
    {
      v7 = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionKeyLaunchHistory isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(ATXAnchorModelPBActionKeyMetadata *)self setActionType:?];
    v4 = v7;
  }

  actionKeyLaunchHistory = self->_actionKeyLaunchHistory;
  v6 = v4[1];
  if (actionKeyLaunchHistory)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    actionKeyLaunchHistory = [(ATXAnchorModelPBLaunchHistoryMetadata *)actionKeyLaunchHistory mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    actionKeyLaunchHistory = [(ATXAnchorModelPBActionKeyMetadata *)self setActionKeyLaunchHistory:?];
  }

  v4 = v7;
LABEL_9:

  MEMORY[0x2821F96F8](actionKeyLaunchHistory, v4);
}

@end