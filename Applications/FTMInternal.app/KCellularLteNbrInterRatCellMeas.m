@interface KCellularLteNbrInterRatCellMeas
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMeasNbrGeran:(id)a3;
- (void)addMeasNbrUtra:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteNbrInterRatCellMeas

- (void)addMeasNbrUtra:(id)a3
{
  v4 = a3;
  measNbrUtras = self->_measNbrUtras;
  v8 = v4;
  if (!measNbrUtras)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_measNbrUtras;
    self->_measNbrUtras = v6;

    v4 = v8;
    measNbrUtras = self->_measNbrUtras;
  }

  [(NSMutableArray *)measNbrUtras addObject:v4];
}

- (void)addMeasNbrGeran:(id)a3
{
  v4 = a3;
  measNbrGerans = self->_measNbrGerans;
  v8 = v4;
  if (!measNbrGerans)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_measNbrGerans;
    self->_measNbrGerans = v6;

    v4 = v8;
    measNbrGerans = self->_measNbrGerans;
  }

  [(NSMutableArray *)measNbrGerans addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteNbrInterRatCellMeas;
  v3 = [(KCellularLteNbrInterRatCellMeas *)&v7 description];
  v4 = [(KCellularLteNbrInterRatCellMeas *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_measNbrUtras count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_measNbrUtras, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = self->_measNbrUtras;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"meas_nbr_utra"];
  }

  if ([(NSMutableArray *)self->_measNbrGerans count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_measNbrGerans, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_measNbrGerans;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"meas_nbr_geran"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v19 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_measNbrUtras;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_measNbrGerans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 2) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
  }

  v13 = v4;
  if ([(KCellularLteNbrInterRatCellMeas *)self measNbrUtrasCount])
  {
    [v13 clearMeasNbrUtras];
    v5 = [(KCellularLteNbrInterRatCellMeas *)self measNbrUtrasCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(KCellularLteNbrInterRatCellMeas *)self measNbrUtraAtIndex:i];
        [v13 addMeasNbrUtra:v8];
      }
    }
  }

  if ([(KCellularLteNbrInterRatCellMeas *)self measNbrGeransCount])
  {
    [v13 clearMeasNbrGerans];
    v9 = [(KCellularLteNbrInterRatCellMeas *)self measNbrGeransCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(KCellularLteNbrInterRatCellMeas *)self measNbrGeranAtIndex:j];
        [v13 addMeasNbrGeran:v12];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v13 + 8) = self->_subsId;
    *(v13 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_measNbrUtras;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addMeasNbrUtra:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_measNbrGerans;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) copyWithZone:{a3, v20}];
        [v6 addMeasNbrGeran:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 8) = self->_subsId;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  measNbrUtras = self->_measNbrUtras;
  if (measNbrUtras | *(v4 + 3) && ![(NSMutableArray *)measNbrUtras isEqual:?])
  {
    goto LABEL_15;
  }

  measNbrGerans = self->_measNbrGerans;
  if (measNbrGerans | *(v4 + 2))
  {
    if (![(NSMutableArray *)measNbrGerans isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_measNbrUtras hash];
  v5 = [(NSMutableArray *)self->_measNbrGerans hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_subsId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 36))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(v4 + 3);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(KCellularLteNbrInterRatCellMeas *)self addMeasNbrUtra:*(*(&v20 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(v5 + 2);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(KCellularLteNbrInterRatCellMeas *)self addMeasNbrGeran:*(*(&v16 + 1) + 8 * v15), v16];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  if ((*(v5 + 36) & 2) != 0)
  {
    self->_subsId = *(v5 + 8);
    *&self->_has |= 2u;
  }
}

@end