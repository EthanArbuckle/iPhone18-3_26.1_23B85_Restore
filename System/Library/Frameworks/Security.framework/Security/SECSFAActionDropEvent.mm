@interface SECSFAActionDropEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExcludeEvent:(BOOL)event;
- (void)writeTo:(id)to;
@end

@implementation SECSFAActionDropEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if ((v5 & 2) != 0)
  {
    self->_excludeEvent = fromCopy[9];
    *&self->_has |= 2u;
    v5 = fromCopy[12];
  }

  if (v5)
  {
    self->_excludeCount = fromCopy[8];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_excludeEvent;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_excludeCount;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((equalCopy[12] & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((equalCopy[12] & 2) == 0)
  {
    goto LABEL_10;
  }

  v7 = equalCopy[9];
  if (self->_excludeEvent)
  {
    if ((equalCopy[9] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (equalCopy[9])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if (equalCopy[12])
    {
      if (self->_excludeCount)
      {
        if (equalCopy[8])
        {
          goto LABEL_18;
        }
      }

      else if (!equalCopy[8])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 9) = self->_excludeEvent;
    *(result + 12) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 8) = self->_excludeCount;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_excludeEvent;
    toCopy[12] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[8] = self->_excludeCount;
    toCopy[12] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    excludeEvent = self->_excludeEvent;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    excludeCount = self->_excludeCount;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_excludeEvent];
    [dictionary setObject:v5 forKey:@"excludeEvent"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_excludeCount];
    [dictionary setObject:v6 forKey:@"excludeCount"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAActionDropEvent;
  v4 = [(SECSFAActionDropEvent *)&v8 description];
  dictionaryRepresentation = [(SECSFAActionDropEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasExcludeEvent:(BOOL)event
{
  if (event)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end