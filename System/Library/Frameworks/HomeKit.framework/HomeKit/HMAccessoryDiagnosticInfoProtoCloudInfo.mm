@interface HMAccessoryDiagnosticInfoProtoCloudInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCloudState:(id)a3;
- (int)StringAsOctagonState:(id)a3;
- (int)cloudState;
- (int)octagonState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFirstCloudImportComplete:(BOOL)a3;
- (void)setHasOctagonState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoCloudInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_cloudState = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_octagonState = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 20) & 4) != 0)
  {
LABEL_4:
    self->_firstCloudImportComplete = *(v4 + 16);
    *&self->_has |= 4u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_cloudState;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_octagonState;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_firstCloudImportComplete;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_cloudState != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_octagonState != *(v4 + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_14;
  }

  v5 = (*(v4 + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_15;
    }

    if (self->_firstCloudImportComplete)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_14;
    }

    v5 = 1;
  }

LABEL_15:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_cloudState;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_octagonState;
  *(result + 20) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 16) = self->_firstCloudImportComplete;
  *(result + 20) |= 4u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_cloudState;
    *(v4 + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_octagonState;
  *(v4 + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 16) = self->_firstCloudImportComplete;
    *(v4 + 20) |= 4u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    cloudState = self->_cloudState;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  octagonState = self->_octagonState;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    firstCloudImportComplete = self->_firstCloudImportComplete;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    cloudState = self->_cloudState;
    if (cloudState)
    {
      if (cloudState == 1)
      {
        v8 = @"Good";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_cloudState];
      }
    }

    else
    {
      v8 = @"Unknown";
    }

    [v3 setObject:v8 forKey:@"cloudState"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  octagonState = self->_octagonState;
  if (octagonState)
  {
    if (octagonState == 1)
    {
      v10 = @"Good";
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_octagonState];
    }
  }

  else
  {
    v10 = @"Unknown";
  }

  [v3 setObject:v10 forKey:@"octagonState"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_firstCloudImportComplete];
  [v3 setObject:v5 forKey:@"firstCloudImportComplete"];

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoCloudInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoCloudInfo *)&v8 description];
  v5 = [(HMAccessoryDiagnosticInfoProtoCloudInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasFirstCloudImportComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsOctagonState:(id)a3
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

- (void)setHasOctagonState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)octagonState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_octagonState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCloudState:(id)a3
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

- (int)cloudState
{
  if (*&self->_has)
  {
    return self->_cloudState;
  }

  else
  {
    return 0;
  }
}

@end