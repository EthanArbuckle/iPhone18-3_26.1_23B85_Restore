@interface HMAccessoryInfoProtoSoftwareVersionInfoEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinorVersion:(BOOL)a3;
- (void)setHasUpdateVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoSoftwareVersionInfoEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_majorVersion = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_minorVersion = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_4:
    self->_updateVersion = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(HMAccessoryInfoProtoSoftwareVersionInfoEvent *)self setBuildVersion:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_buildVersion hash:v3];
  }

  v6 = 2654435761 * self->_majorVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_minorVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_updateVersion;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_buildVersion hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_majorVersion != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_minorVersion != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_updateVersion != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 4))
  {
    v7 = [(NSString *)buildVersion isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_minorVersion;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_majorVersion;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_updateVersion;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_majorVersion;
    *(v4 + 40) |= 1u;
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

  v4[2] = self->_minorVersion;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_updateVersion;
    *(v4 + 40) |= 4u;
  }

LABEL_5:
  if (self->_buildVersion)
  {
    v6 = v4;
    [v4 setBuildVersion:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    majorVersion = self->_majorVersion;
    PBDataWriterWriteInt64Field();
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

  minorVersion = self->_minorVersion;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    updateVersion = self->_updateVersion;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_majorVersion];
    [v3 setObject:v8 forKey:@"majorVersion"];

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

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minorVersion];
  [v3 setObject:v9 forKey:@"minorVersion"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_updateVersion];
    [v3 setObject:v5 forKey:@"updateVersion"];
  }

LABEL_5:
  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoSoftwareVersionInfoEvent;
  v4 = [(HMAccessoryInfoProtoSoftwareVersionInfoEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoSoftwareVersionInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasUpdateVersion:(BOOL)a3
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

- (void)setHasMinorVersion:(BOOL)a3
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

@end