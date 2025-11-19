@interface ADConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsTest:(BOOL)a3;
- (void)setHasRequestType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADConfiguration

- (void)setHasRequestType:(BOOL)a3
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

- (void)setHasIsTest:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADConfiguration;
  v4 = [(ADConfiguration *)&v8 description];
  v5 = [(ADConfiguration *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_requestType];
    [v4 setObject:v7 forKey:@"requestType"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTest];
    [v4 setObject:v8 forKey:@"isTest"];
  }

  baseUrl = self->_baseUrl;
  if (baseUrl)
  {
    [v4 setObject:baseUrl forKey:@"baseUrl"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
    [v4 setObject:v10 forKey:@"expirationDate"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isTest = self->_isTest;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_baseUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_requestType;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 36) = self->_isTest;
    *(v4 + 40) |= 4u;
  }

  if (self->_baseUrl)
  {
    [v6 setBaseUrl:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_expirationDate;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_requestType;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 36) = self->_isTest;
    *(v5 + 40) |= 4u;
  }

  v9 = [(NSString *)self->_baseUrl copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_expirationDate;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_requestType != *(v4 + 8))
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
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_19;
    }

    v11 = *(v4 + 36);
    if (self->_isTest)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  baseUrl = self->_baseUrl;
  if (!(baseUrl | *(v4 + 2)))
  {
    goto LABEL_14;
  }

  if (![(NSString *)baseUrl isEqual:?])
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  has = self->_has;
LABEL_14:
  v9 = (*(v4 + 40) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_expirationDate != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_requestType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isTest;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_baseUrl hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v7.i64 = floor(expirationDate + 0.5);
    v11 = (expirationDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(ADConfiguration *)self setBundleId:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_requestType = *(v4 + 8);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_isTest = *(v4 + 36);
    *&self->_has |= 4u;
  }

  if (*(v4 + 2))
  {
    [(ADConfiguration *)self setBaseUrl:?];
    v4 = v6;
  }

  if (*(v4 + 40))
  {
    self->_expirationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end