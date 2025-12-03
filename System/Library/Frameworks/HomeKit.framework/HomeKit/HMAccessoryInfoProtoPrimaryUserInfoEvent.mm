@interface HMAccessoryInfoProtoPrimaryUserInfoEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSelectionType:(id)type;
- (int)selectionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryInfoProtoPrimaryUserInfoEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)self setUuidString:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_selectionType = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 2))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_selectionType == *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_selectionType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuidString)
  {
    v5 = toCopy;
    [toCopy setUuidString:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_selectionType;
    *(toCopy + 24) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    selectionType = self->_selectionType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
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
  dictionaryRepresentation = [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsSelectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"selectionTypeHomePodAccount"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"selectionTypeHomeUser"];
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