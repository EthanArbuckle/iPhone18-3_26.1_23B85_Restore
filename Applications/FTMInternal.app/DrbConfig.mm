@interface DrbConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCipheringAlgo:(id)a3;
- (int)StringAsIntegrityAlgo:(id)a3;
- (int)cipheringAlgo;
- (int)integrityAlgo;
- (unint64_t)hash;
- (void)addPerDrbConfig:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIntegrityAlgo:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DrbConfig

- (int)integrityAlgo
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_integrityAlgo;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIntegrityAlgo:(BOOL)a3
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

- (int)StringAsIntegrityAlgo:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ALGO_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ALGO_SNOW3G"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ALGO_AES"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALGO_ZUC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ALGO_MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)cipheringAlgo
{
  if (*&self->_has)
  {
    return self->_cipheringAlgo;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCipheringAlgo:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ALGO_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ALGO_SNOW3G"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ALGO_AES"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALGO_ZUC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ALGO_MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPerDrbConfig:(id)a3
{
  v4 = a3;
  perDrbConfigs = self->_perDrbConfigs;
  v8 = v4;
  if (!perDrbConfigs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_perDrbConfigs;
    self->_perDrbConfigs = v6;

    v4 = v8;
    perDrbConfigs = self->_perDrbConfigs;
  }

  [(NSMutableArray *)perDrbConfigs addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DrbConfig;
  v3 = [(DrbConfig *)&v7 description];
  v4 = [(DrbConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    integrityAlgo = self->_integrityAlgo;
    if (integrityAlgo >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_integrityAlgo];
    }

    else
    {
      v6 = *(&off_100317978 + integrityAlgo);
    }

    [v3 setObject:v6 forKey:@"integrity_algo"];

    has = self->_has;
  }

  if (has)
  {
    cipheringAlgo = self->_cipheringAlgo;
    if (cipheringAlgo >= 5)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_cipheringAlgo];
    }

    else
    {
      v8 = *(&off_100317978 + cipheringAlgo);
    }

    [v3 setObject:v8 forKey:@"ciphering_algo"];
  }

  if ([(NSMutableArray *)self->_perDrbConfigs count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_perDrbConfigs, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_perDrbConfigs;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"per_drb_config"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    integrityAlgo = self->_integrityAlgo;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    cipheringAlgo = self->_cipheringAlgo;
    PBDataWriterWriteInt32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_perDrbConfigs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_integrityAlgo;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_cipheringAlgo;
    *(v4 + 24) |= 1u;
  }

  v10 = v4;
  if ([(DrbConfig *)self perDrbConfigsCount])
  {
    [v10 clearPerDrbConfigs];
    v6 = [(DrbConfig *)self perDrbConfigsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(DrbConfig *)self perDrbConfigAtIndex:i];
        [v10 addPerDrbConfig:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 3) = self->_integrityAlgo;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 2) = self->_cipheringAlgo;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_perDrbConfigs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v6 addPerDrbConfig:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_integrityAlgo != *(v4 + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_cipheringAlgo != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  perDrbConfigs = self->_perDrbConfigs;
  if (perDrbConfigs | *(v4 + 2))
  {
    v7 = [(NSMutableArray *)perDrbConfigs isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_integrityAlgo;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_perDrbConfigs hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_cipheringAlgo;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_perDrbConfigs hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 24);
  if ((v6 & 2) != 0)
  {
    self->_integrityAlgo = *(v4 + 3);
    *&self->_has |= 2u;
    v6 = *(v4 + 24);
  }

  if (v6)
  {
    self->_cipheringAlgo = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(DrbConfig *)self addPerDrbConfig:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end