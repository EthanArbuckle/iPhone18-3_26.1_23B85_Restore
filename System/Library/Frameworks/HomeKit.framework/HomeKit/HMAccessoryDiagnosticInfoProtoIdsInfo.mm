@interface HMAccessoryDiagnosticInfoProtoIdsInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIdsState:(id)a3;
- (int)idsState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoIdsInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_idsState = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self setIdsIdentifierString:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_idsState != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_idsState;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_idsIdentifierString copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_idsState;
    *(v4 + 20) |= 1u;
  }

  if (self->_idsIdentifierString)
  {
    v5 = v4;
    [v4 setIdsIdentifierString:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    idsState = self->_idsState;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_idsIdentifierString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"idsState"];
  }

  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString)
  {
    [v3 setObject:idsIdentifierString forKey:@"idsIdentifierString"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoIdsInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)&v8 description];
  v5 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsIdsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Good"];
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