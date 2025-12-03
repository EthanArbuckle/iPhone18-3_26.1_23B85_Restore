@interface UtraReselectionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUtraNcell:(id)ncell;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSfMedium:(BOOL)medium;
- (void)setHasTReselection:(BOOL)reselection;
- (void)writeTo:(id)to;
@end

@implementation UtraReselectionInfo

- (void)setHasTReselection:(BOOL)reselection
{
  if (reselection)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSfMedium:(BOOL)medium
{
  if (medium)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addUtraNcell:(id)ncell
{
  ncellCopy = ncell;
  utraNcells = self->_utraNcells;
  v8 = ncellCopy;
  if (!utraNcells)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_utraNcells;
    self->_utraNcells = v6;

    ncellCopy = v8;
    utraNcells = self->_utraNcells;
  }

  [(NSMutableArray *)utraNcells addObject:ncellCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UtraReselectionInfo;
  v3 = [(UtraReselectionInfo *)&v7 description];
  dictionaryRepresentation = [(UtraReselectionInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
  if ([(NSMutableArray *)self->_utraNcells count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_utraNcells, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_utraNcells;
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"utra_ncell"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  v7 = self->_utraNcells;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    toCopy[3] = self->_sfMedium;
    *(toCopy + 32) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  toCopy[4] = self->_tReselection;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    toCopy[2] = self->_sfHigh;
    *(toCopy + 32) |= 1u;
  }

LABEL_5:
  v10 = toCopy;
  if ([(UtraReselectionInfo *)self utraNcellsCount])
  {
    [v10 clearUtraNcells];
    utraNcellsCount = [(UtraReselectionInfo *)self utraNcellsCount];
    if (utraNcellsCount)
    {
      v7 = utraNcellsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(UtraReselectionInfo *)self utraNcellAtIndex:i];
        [v10 addUtraNcell:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 4) = self->_tReselection;
    *(v5 + 32) |= 4u;
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

  *(v5 + 3) = self->_sfMedium;
  *(v5 + 32) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 2) = self->_sfHigh;
    *(v5 + 32) |= 1u;
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_utraNcells;
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

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addUtraNcell:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_tReselection != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_sfMedium != *(equalCopy + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_sfHigh != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_19;
  }

  utraNcells = self->_utraNcells;
  if (utraNcells | *(equalCopy + 3))
  {
    v7 = [(NSMutableArray *)utraNcells isEqual:?];
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
    return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_utraNcells hash:v3];
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
  return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_utraNcells hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if ((v6 & 4) != 0)
  {
    self->_tReselection = *(fromCopy + 4);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 32);
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

  else if ((*(fromCopy + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sfMedium = *(fromCopy + 3);
  *&self->_has |= 2u;
  if (*(fromCopy + 32))
  {
LABEL_4:
    self->_sfHigh = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
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

        [(UtraReselectionInfo *)self addUtraNcell:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end