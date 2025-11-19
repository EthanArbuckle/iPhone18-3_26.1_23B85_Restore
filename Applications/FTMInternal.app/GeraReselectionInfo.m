@interface GeraReselectionInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGeraNcell:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSfMedium:(BOOL)a3;
- (void)setHasTReselection:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GeraReselectionInfo

- (void)setHasTReselection:(BOOL)a3
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

- (void)setHasSfMedium:(BOOL)a3
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

- (void)addGeraNcell:(id)a3
{
  v4 = a3;
  geraNcells = self->_geraNcells;
  v8 = v4;
  if (!geraNcells)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_geraNcells;
    self->_geraNcells = v6;

    v4 = v8;
    geraNcells = self->_geraNcells;
  }

  [(NSMutableArray *)geraNcells addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = GeraReselectionInfo;
  v3 = [(GeraReselectionInfo *)&v7 description];
  v4 = [(GeraReselectionInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_tReselection];
    [v3 setObject:v14 forKey:@"t_reselection"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v15 = [NSNumber numberWithUnsignedInt:self->_sfMedium];
  [v3 setObject:v15 forKey:@"sf_medium"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_sfHigh];
    [v3 setObject:v5 forKey:@"sf_high"];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_geraNcells count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_geraNcells, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_geraNcells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"gera_ncell"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    tReselection = self->_tReselection;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  sfMedium = self->_sfMedium;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_4:
    sfHigh = self->_sfHigh;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_geraNcells;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v4[5] = self->_sfMedium;
    *(v4 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[6] = self->_tReselection;
  *(v4 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    v4[4] = self->_sfHigh;
    *(v4 + 28) |= 1u;
  }

LABEL_5:
  v10 = v4;
  if ([(GeraReselectionInfo *)self geraNcellsCount])
  {
    [v10 clearGeraNcells];
    v6 = [(GeraReselectionInfo *)self geraNcellsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(GeraReselectionInfo *)self geraNcellAtIndex:i];
        [v10 addGeraNcell:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 6) = self->_tReselection;
    *(v5 + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(v5 + 5) = self->_sfMedium;
  *(v5 + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 4) = self->_sfHigh;
    *(v5 + 28) |= 1u;
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_geraNcells;
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
        [v6 addGeraNcell:v13];
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
    goto LABEL_19;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_tReselection != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_sfMedium != *(v4 + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_sfHigh != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_19;
  }

  geraNcells = self->_geraNcells;
  if (geraNcells | *(v4 + 1))
  {
    v7 = [(NSMutableArray *)geraNcells isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_geraNcells hash:v3];
  }

  v6 = 2654435761 * self->_tReselection;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_sfMedium;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_sfHigh;
  return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_geraNcells hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if ((v6 & 4) != 0)
  {
    self->_tReselection = *(v4 + 6);
    *&self->_has |= 4u;
    v6 = *(v4 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sfMedium = *(v4 + 5);
  *&self->_has |= 2u;
  if (*(v4 + 28))
  {
LABEL_4:
    self->_sfHigh = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_5:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v4 + 1);
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

        [(GeraReselectionInfo *)self addGeraNcell:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end