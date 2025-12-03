@interface HMAccessoryDiagnosticInfoProtoIdsInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIdsState:(id)state;
- (int)idsState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryDiagnosticInfoProtoIdsInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_idsState = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self setIdsIdentifierString:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_idsState;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_idsIdentifierString hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_idsState != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString | *(equalCopy + 1))
  {
    v7 = [(NSString *)idsIdentifierString isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_idsState;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_idsIdentifierString copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_idsState;
    *(toCopy + 20) |= 1u;
  }

  if (self->_idsIdentifierString)
  {
    v5 = toCopy;
    [toCopy setIdsIdentifierString:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    idsState = self->_idsState;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_idsIdentifierString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    idsState = self->_idsState;
    if (idsState)
    {
      if (idsState == 1)
      {
        v5 = @"Good";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_idsState];
      }
    }

    else
    {
      v5 = @"Unknown";
    }

    [dictionary setObject:v5 forKey:@"idsState"];
  }

  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString)
  {
    [dictionary setObject:idsIdentifierString forKey:@"idsIdentifierString"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoIdsInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsIdsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stateCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (int)idsState
{
  if (*&self->_has)
  {
    return self->_idsState;
  }

  else
  {
    return 0;
  }
}

@end