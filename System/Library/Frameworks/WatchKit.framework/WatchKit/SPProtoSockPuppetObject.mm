@interface SPProtoSockPuppetObject
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNBOOL:(BOOL)a3;
- (void)setHasNfloat:(BOOL)a3;
- (void)setHasNint32:(BOOL)a3;
- (void)setHasNint64:(BOOL)a3;
- (void)setHasNuint32:(BOOL)a3;
- (void)setHasNuint64:(BOOL)a3;
- (void)setHasSubtype:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoSockPuppetObject

- (void)setHasSubtype:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNfloat:(BOOL)a3
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

- (void)setHasNint64:(BOOL)a3
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

- (void)setHasNint32:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNuint64:(BOOL)a3
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

- (void)setHasNuint32:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNBOOL:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoSockPuppetObject;
  v4 = [(SPProtoSockPuppetObject *)&v8 description];
  v5 = [(SPProtoSockPuppetObject *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  if ((*&self->_has & 0x40) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_subtype];
    [v3 setObject:v6 forKey:@"subtype"];
  }

  cacheMessage = self->_cacheMessage;
  if (cacheMessage)
  {
    v8 = [(SPProtoCacheMessage *)cacheMessage dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"cacheMessage"];
  }

  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ndouble];
    [v3 setObject:v14 forKey:@"ndouble"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *&v5 = self->_nfloat;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v3 setObject:v15 forKey:@"nfloat"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_nint64];
  [v3 setObject:v16 forKey:@"nint64"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_nint32];
  [v3 setObject:v17 forKey:@"nint32"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nuint32];
    [v3 setObject:v19 forKey:@"nuint32"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nuint64];
  [v3 setObject:v18 forKey:@"nuint64"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_nBOOL];
  [v3 setObject:v20 forKey:@"nBOOL"];

LABEL_16:
  object = self->_object;
  if (object)
  {
    [v3 setObject:object forKey:@"object"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v16 = v4;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
    subtype = self->_subtype;
    PBDataWriterWriteInt32Field();
  }

  if (self->_cacheMessage)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = v16;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v7 = v16;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v7 = v16;
  }

  has = self->_has;
  if (has)
  {
    ndouble = self->_ndouble;
    PBDataWriterWriteDoubleField();
    v7 = v16;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  nfloat = self->_nfloat;
  PBDataWriterWriteFloatField();
  v7 = v16;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  nint64 = self->_nint64;
  PBDataWriterWriteInt64Field();
  v7 = v16;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  nint32 = self->_nint32;
  PBDataWriterWriteInt32Field();
  v7 = v16;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    nuint32 = self->_nuint32;
    PBDataWriterWriteUint32Field();
    v7 = v16;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  nuint64 = self->_nuint64;
  PBDataWriterWriteUint64Field();
  v7 = v16;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  nBOOL = self->_nBOOL;
  PBDataWriterWriteBOOLField();
  v7 = v16;
LABEL_16:
  if (self->_object)
  {
    PBDataWriterWriteDataField();
    v7 = v16;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[22] = self->_type;
  if ((*&self->_has & 0x40) != 0)
  {
    v4[18] = self->_subtype;
    *(v4 + 96) |= 0x40u;
  }

  v6 = v4;
  if (self->_cacheMessage)
  {
    [v4 setCacheMessage:?];
    v4 = v6;
  }

  if (self->_key)
  {
    [v6 setKey:?];
    v4 = v6;
  }

  if (self->_text)
  {
    [v6 setText:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_ndouble;
    *(v4 + 96) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v4[12] = LODWORD(self->_nfloat);
  *(v4 + 96) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 2) = self->_nint64;
  *(v4 + 96) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[13] = self->_nint32;
  *(v4 + 96) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v4[14] = self->_nuint32;
    *(v4 + 96) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  *(v4 + 3) = self->_nuint64;
  *(v4 + 96) |= 4u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  *(v4 + 92) = self->_nBOOL;
  *(v4 + 96) |= 0x80u;
LABEL_16:
  if (self->_object)
  {
    [v6 setObject:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  *(v5 + 88) = self->_type;
  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 72) = self->_subtype;
    *(v5 + 96) |= 0x40u;
  }

  v7 = [(SPProtoCacheMessage *)self->_cacheMessage copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSString *)self->_key copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_text copyWithZone:a3];
  v12 = *(v6 + 80);
  *(v6 + 80) = v11;

  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_ndouble;
    *(v6 + 96) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 48) = self->_nfloat;
  *(v6 + 96) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v6 + 16) = self->_nint64;
  *(v6 + 96) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v6 + 52) = self->_nint32;
  *(v6 + 96) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(v6 + 56) = self->_nuint32;
    *(v6 + 96) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(v6 + 92) = self->_nBOOL;
    *(v6 + 96) |= 0x80u;
    goto LABEL_10;
  }

LABEL_15:
  *(v6 + 24) = self->_nuint64;
  *(v6 + 96) |= 4u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (has < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v14 = [(NSData *)self->_object copyWithZone:a3];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_type != *(v4 + 22))
  {
    goto LABEL_49;
  }

  v5 = *(v4 + 96);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 96) & 0x40) == 0 || self->_subtype != *(v4 + 18))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 0x40) != 0)
  {
    goto LABEL_49;
  }

  cacheMessage = self->_cacheMessage;
  if (cacheMessage | *(v4 + 4) && ![(SPProtoCacheMessage *)cacheMessage isEqual:?])
  {
    goto LABEL_49;
  }

  key = self->_key;
  if (key | *(v4 + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_49;
    }
  }

  text = self->_text;
  if (text | *(v4 + 10))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_49;
    }
  }

  v9 = *(v4 + 96);
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_ndouble != *(v4 + 1))
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 96) & 8) == 0 || self->_nfloat != *(v4 + 12))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_nint64 != *(v4 + 2))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 96) & 0x10) == 0 || self->_nint32 != *(v4 + 13))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_nuint64 != *(v4 + 3))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 96) & 0x20) == 0 || self->_nuint32 != *(v4 + 14))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 96) & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(v4 + 96) & 0x80) == 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v11 = 0;
    goto LABEL_50;
  }

  if ((*(v4 + 96) & 0x80) == 0)
  {
    goto LABEL_49;
  }

  v13 = *(v4 + 92);
  if (self->_nBOOL)
  {
    if ((*(v4 + 92) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_49;
  }

LABEL_46:
  object = self->_object;
  if (object | *(v4 + 8))
  {
    v11 = [(NSData *)object isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_50:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x40) != 0)
  {
    v3 = 2654435761 * self->_subtype;
  }

  else
  {
    v3 = 0;
  }

  type = self->_type;
  v5 = [(SPProtoCacheMessage *)self->_cacheMessage hash];
  v6 = [(NSString *)self->_key hash];
  v7 = [(NSString *)self->_text hash];
  if (*&self->_has)
  {
    ndouble = self->_ndouble;
    if (ndouble < 0.0)
    {
      ndouble = -ndouble;
    }

    *v8.i64 = floor(ndouble + 0.5);
    v12 = (ndouble - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v8 = vbslq_s8(vnegq_f64(v13), v9, v8);
    v10 = 2654435761u * *v8.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    nfloat = self->_nfloat;
    if (nfloat >= 0.0)
    {
      v16 = nfloat;
    }

    else
    {
      v16 = -nfloat;
    }

    *v8.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v9, v8).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = 2654435761 * self->_nint64;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_23:
      v20 = 2654435761 * self->_nint32;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v19 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_23;
    }
  }

  v20 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v21 = 2654435761u * self->_nuint64;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v22 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v23 = 0;
    return v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ (2654435761 * type) ^ v14 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(NSData *)self->_object hash];
  }

LABEL_29:
  v21 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  v22 = 2654435761 * self->_nuint32;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v23 = 2654435761 * self->_nBOOL;
  return v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ (2654435761 * type) ^ v14 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(NSData *)self->_object hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  self->_type = v4[22];
  if ((v4[24] & 0x40) != 0)
  {
    self->_subtype = v4[18];
    *&self->_has |= 0x40u;
  }

  cacheMessage = self->_cacheMessage;
  v7 = *(v5 + 4);
  v9 = v5;
  if (cacheMessage)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SPProtoCacheMessage *)cacheMessage mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SPProtoSockPuppetObject *)self setCacheMessage:?];
  }

  v5 = v9;
LABEL_9:
  if (*(v5 + 5))
  {
    [(SPProtoSockPuppetObject *)self setKey:?];
    v5 = v9;
  }

  if (*(v5 + 10))
  {
    [(SPProtoSockPuppetObject *)self setText:?];
    v5 = v9;
  }

  v8 = *(v5 + 96);
  if (v8)
  {
    self->_ndouble = *(v5 + 1);
    *&self->_has |= 1u;
    v8 = *(v5 + 96);
    if ((v8 & 8) == 0)
    {
LABEL_15:
      if ((v8 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v5[24] & 8) == 0)
  {
    goto LABEL_15;
  }

  self->_nfloat = v5[12];
  *&self->_has |= 8u;
  v8 = *(v5 + 96);
  if ((v8 & 2) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_nint64 = *(v5 + 2);
  *&self->_has |= 2u;
  v8 = *(v5 + 96);
  if ((v8 & 0x10) == 0)
  {
LABEL_17:
    if ((v8 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_nint32 = v5[13];
  *&self->_has |= 0x10u;
  v8 = *(v5 + 96);
  if ((v8 & 4) == 0)
  {
LABEL_18:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    self->_nuint32 = v5[14];
    *&self->_has |= 0x20u;
    if ((v5[24] & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_29:
  self->_nuint64 = *(v5 + 3);
  *&self->_has |= 4u;
  v8 = *(v5 + 96);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_31:
  self->_nBOOL = *(v5 + 92);
  *&self->_has |= 0x80u;
LABEL_20:
  if (*(v5 + 8))
  {
    [(SPProtoSockPuppetObject *)self setObject:?];
  }

  MEMORY[0x2821F96F8]();
}

@end