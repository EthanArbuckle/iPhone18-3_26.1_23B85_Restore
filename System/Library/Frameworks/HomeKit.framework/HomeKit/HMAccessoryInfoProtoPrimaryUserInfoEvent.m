@interface HMAccessoryInfoProtoPrimaryUserInfoEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSelectionType:(id)a3;
- (int)selectionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoPrimaryUserInfoEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)self setUuidString:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_selectionType = v4[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_selectionType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 2))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_selectionType == *(v4 + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_selectionType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_uuidString)
  {
    v5 = v4;
    [v4 setUuidString:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_selectionType;
    *(v4 + 24) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    if (selectionType)
    {
      if (selectionType == 1)
      {
        v7 = @"selectionTypeHomeUser";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_selectionType];
      }
    }

    else
    {
      v7 = @"selectionTypeHomePodAccount";
    }

    [v4 setObject:v7 forKey:@"selectionType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoPrimaryUserInfoEvent;
  v4 = [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsSelectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"selectionTypeHomePodAccount"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"selectionTypeHomeUser"];
  }

  return v4;
}

- (int)selectionType
{
  if (*&self->_has)
  {
    return self->_selectionType;
  }

  else
  {
    return 0;
  }
}

@end