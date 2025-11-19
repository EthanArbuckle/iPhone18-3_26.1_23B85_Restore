@interface ATXPBMinimalAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBMinimalAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBMinimalAction;
  v4 = [(ATXPBMinimalAction *)&v8 description];
  v5 = [(ATXPBMinimalAction *)self dictionaryRepresentation];
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

  actionType = self->_actionType;
  if (actionType)
  {
    [v4 setObject:actionType forKey:@"actionType"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_paramHash];
    [v4 setObject:v7 forKey:@"paramHash"];
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

  if (self->_actionType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    paramHash = self->_paramHash;
    PBDataWriterWriteFixed64Field();
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

  if (self->_actionType)
  {
    [v5 setActionType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_paramHash;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_actionType copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_paramHash;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  actionType = self->_actionType;
  if (actionType | *(v4 + 2))
  {
    if (![(NSString *)actionType isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_paramHash == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_actionType hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_paramHash;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(ATXPBMinimalAction *)self setBundleId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ATXPBMinimalAction *)self setActionType:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_paramHash = v4[1];
    *&self->_has |= 1u;
  }
}

@end