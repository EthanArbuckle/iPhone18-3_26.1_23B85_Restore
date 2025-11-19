@interface HMAccessoryDiagnosticInfoProtoDiagnosticInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHomeHubVersion:(BOOL)a3;
- (void)setHasNumHomes:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoDiagnosticInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[8] & 2) != 0)
  {
    self->_version = v4[2];
    *&self->_has |= 2u;
  }

  appleMediaAccessoryDiagnosticInfo = self->_appleMediaAccessoryDiagnosticInfo;
  v7 = v5[3];
  v13 = v5;
  if (appleMediaAccessoryDiagnosticInfo)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)appleMediaAccessoryDiagnosticInfo mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)self setAppleMediaAccessoryDiagnosticInfo:?];
  }

  v5 = v13;
LABEL_9:
  primaryResidentDiagnosticInfo = self->_primaryResidentDiagnosticInfo;
  v9 = v5[7];
  if (primaryResidentDiagnosticInfo)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)primaryResidentDiagnosticInfo mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)self setPrimaryResidentDiagnosticInfo:?];
  }

  v5 = v13;
LABEL_15:
  v10 = *(v5 + 64);
  if ((v10 & 4) != 0)
  {
    self->_homeHubVersion = *(v5 + 8);
    *&self->_has |= 4u;
    v10 = *(v5 + 64);
    if ((v10 & 8) == 0)
    {
LABEL_17:
      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v5[8] & 8) == 0)
  {
    goto LABEL_17;
  }

  self->_numHomes = *(v5 + 12);
  *&self->_has |= 8u;
  if (v5[8])
  {
LABEL_18:
    self->_generationTime = v5[1];
    *&self->_has |= 1u;
  }

LABEL_19:
  lastSetupInfo = self->_lastSetupInfo;
  v12 = v5[5];
  if (lastSetupInfo)
  {
    if (v12)
    {
      [(HMAccessoryDiagnosticInfoProtoSetupInfo *)lastSetupInfo mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)self setLastSetupInfo:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self->_appleMediaAccessoryDiagnosticInfo hash];
  v5 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self->_primaryResidentDiagnosticInfo hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13 ^ [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self->_lastSetupInfo hash];
  }

  v8 = 2654435761 * self->_homeHubVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_numHomes;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  generationTime = self->_generationTime;
  if (generationTime < 0.0)
  {
    generationTime = -generationTime;
  }

  *v6.i64 = floor(generationTime + 0.5);
  v11 = (generationTime - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13 ^ [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self->_lastSetupInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  appleMediaAccessoryDiagnosticInfo = self->_appleMediaAccessoryDiagnosticInfo;
  if (appleMediaAccessoryDiagnosticInfo | *(v4 + 3) && ![(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)appleMediaAccessoryDiagnosticInfo isEqual:?])
  {
    goto LABEL_28;
  }

  primaryResidentDiagnosticInfo = self->_primaryResidentDiagnosticInfo;
  if (primaryResidentDiagnosticInfo | *(v4 + 7))
  {
    if (![(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)primaryResidentDiagnosticInfo isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(v4 + 64);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_homeHubVersion != *(v4 + 8))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_numHomes != *(v4 + 12))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_generationTime != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_28;
  }

  lastSetupInfo = self->_lastSetupInfo;
  if (lastSetupInfo | *(v4 + 5))
  {
    v10 = [(HMAccessoryDiagnosticInfoProtoSetupInfo *)lastSetupInfo isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_29:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_version;
    *(v5 + 64) |= 2u;
  }

  v7 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self->_appleMediaAccessoryDiagnosticInfo copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self->_primaryResidentDiagnosticInfo copyWithZone:a3];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 48) = self->_numHomes;
    *(v6 + 64) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v6 + 32) = self->_homeHubVersion;
  *(v6 + 64) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(v6 + 8) = self->_generationTime;
    *(v6 + 64) |= 1u;
  }

LABEL_7:
  v12 = [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self->_lastSetupInfo copyWithZone:a3];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_version;
    *(v4 + 64) |= 2u;
  }

  v6 = v4;
  if (self->_appleMediaAccessoryDiagnosticInfo)
  {
    [v4 setAppleMediaAccessoryDiagnosticInfo:?];
    v4 = v6;
  }

  if (self->_primaryResidentDiagnosticInfo)
  {
    [v6 setPrimaryResidentDiagnosticInfo:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_homeHubVersion;
    *(v4 + 64) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 12) = self->_numHomes;
  *(v4 + 64) |= 8u;
  if (*&self->_has)
  {
LABEL_10:
    v4[1] = *&self->_generationTime;
    *(v4 + 64) |= 1u;
  }

LABEL_11:
  if (self->_lastSetupInfo)
  {
    [v6 setLastSetupInfo:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    v4 = v10;
  }

  if (self->_appleMediaAccessoryDiagnosticInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_primaryResidentDiagnosticInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    homeHubVersion = self->_homeHubVersion;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  numHomes = self->_numHomes;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  if (*&self->_has)
  {
LABEL_10:
    generationTime = self->_generationTime;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_11:
  if (self->_lastSetupInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  appleMediaAccessoryDiagnosticInfo = self->_appleMediaAccessoryDiagnosticInfo;
  if (appleMediaAccessoryDiagnosticInfo)
  {
    v6 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)appleMediaAccessoryDiagnosticInfo dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"appleMediaAccessoryDiagnosticInfo"];
  }

  primaryResidentDiagnosticInfo = self->_primaryResidentDiagnosticInfo;
  if (primaryResidentDiagnosticInfo)
  {
    v8 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)primaryResidentDiagnosticInfo dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"primaryResidentDiagnosticInfo"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_homeHubVersion];
    [v3 setObject:v10 forKey:@"homeHubVersion"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_numHomes];
    [v3 setObject:v11 forKey:@"numHomes"];
  }

  lastSetupInfo = self->_lastSetupInfo;
  if (lastSetupInfo)
  {
    v13 = [(HMAccessoryDiagnosticInfoProtoSetupInfo *)lastSetupInfo dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"lastSetupInfo"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_generationTime];
    [v3 setObject:v14 forKey:@"generationTime"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoDiagnosticInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)&v8 description];
  v5 = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNumHomes:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHomeHubVersion:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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