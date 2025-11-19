@interface KCellularWcdmaNbrCellMeas
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMeasGsmResult:(id)a3;
- (void)addMeasLteResult:(id)a3;
- (void)addMeasUtraResult:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularWcdmaNbrCellMeas

- (void)addMeasUtraResult:(id)a3
{
  v4 = a3;
  measUtraResults = self->_measUtraResults;
  v8 = v4;
  if (!measUtraResults)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_measUtraResults;
    self->_measUtraResults = v6;

    v4 = v8;
    measUtraResults = self->_measUtraResults;
  }

  [(NSMutableArray *)measUtraResults addObject:v4];
}

- (void)addMeasGsmResult:(id)a3
{
  v4 = a3;
  measGsmResults = self->_measGsmResults;
  v8 = v4;
  if (!measGsmResults)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_measGsmResults;
    self->_measGsmResults = v6;

    v4 = v8;
    measGsmResults = self->_measGsmResults;
  }

  [(NSMutableArray *)measGsmResults addObject:v4];
}

- (void)addMeasLteResult:(id)a3
{
  v4 = a3;
  measLteResults = self->_measLteResults;
  v8 = v4;
  if (!measLteResults)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_measLteResults;
    self->_measLteResults = v6;

    v4 = v8;
    measLteResults = self->_measLteResults;
  }

  [(NSMutableArray *)measLteResults addObject:v4];
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
  v7.super_class = KCellularWcdmaNbrCellMeas;
  v3 = [(KCellularWcdmaNbrCellMeas *)&v7 description];
  v4 = [(KCellularWcdmaNbrCellMeas *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_measUtraResults count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_measUtraResults, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = self->_measUtraResults;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"meas_utra_result"];
  }

  if ([(NSMutableArray *)self->_measGsmResults count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_measGsmResults, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_measGsmResults;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"meas_gsm_result"];
  }

  if ([(NSMutableArray *)self->_measLteResults count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_measLteResults, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_measLteResults;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"meas_lte_result"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v26 forKey:@"subs_id"];
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

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_measUtraResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_measGsmResults;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_measLteResults;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
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
    *(v4 + 44) |= 1u;
  }

  v17 = v4;
  if ([(KCellularWcdmaNbrCellMeas *)self measUtraResultsCount])
  {
    [v17 clearMeasUtraResults];
    v5 = [(KCellularWcdmaNbrCellMeas *)self measUtraResultsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(KCellularWcdmaNbrCellMeas *)self measUtraResultAtIndex:i];
        [v17 addMeasUtraResult:v8];
      }
    }
  }

  if ([(KCellularWcdmaNbrCellMeas *)self measGsmResultsCount])
  {
    [v17 clearMeasGsmResults];
    v9 = [(KCellularWcdmaNbrCellMeas *)self measGsmResultsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(KCellularWcdmaNbrCellMeas *)self measGsmResultAtIndex:j];
        [v17 addMeasGsmResult:v12];
      }
    }
  }

  if ([(KCellularWcdmaNbrCellMeas *)self measLteResultsCount])
  {
    [v17 clearMeasLteResults];
    v13 = [(KCellularWcdmaNbrCellMeas *)self measLteResultsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(KCellularWcdmaNbrCellMeas *)self measLteResultAtIndex:k];
        [v17 addMeasLteResult:v16];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v17 + 10) = self->_subsId;
    *(v17 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_measUtraResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v34 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addMeasUtraResult:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_measGsmResults;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v30 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addMeasGsmResult:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_measLteResults;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v26 + 1) + 8 * v23) copyWithZone:{a3, v26}];
        [v6 addMeasLteResult:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_subsId;
    *(v6 + 44) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  measUtraResults = self->_measUtraResults;
  if (measUtraResults | *(v4 + 4) && ![(NSMutableArray *)measUtraResults isEqual:?])
  {
    goto LABEL_17;
  }

  measGsmResults = self->_measGsmResults;
  if (measGsmResults | *(v4 + 2))
  {
    if (![(NSMutableArray *)measGsmResults isEqual:?])
    {
      goto LABEL_17;
    }
  }

  measLteResults = self->_measLteResults;
  if (measLteResults | *(v4 + 3))
  {
    if (![(NSMutableArray *)measLteResults isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_subsId != *(v4 + 10))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
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

  v4 = [(NSMutableArray *)self->_measUtraResults hash];
  v5 = [(NSMutableArray *)self->_measGsmResults hash];
  v6 = [(NSMutableArray *)self->_measLteResults hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_subsId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 44))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(v4 + 4);
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(KCellularWcdmaNbrCellMeas *)self addMeasUtraResult:*(*(&v29 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(v5 + 2);
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(KCellularWcdmaNbrCellMeas *)self addMeasGsmResult:*(*(&v25 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v5 + 3);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(KCellularWcdmaNbrCellMeas *)self addMeasLteResult:*(*(&v21 + 1) + 8 * v20), v21];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    self->_subsId = *(v5 + 10);
    *&self->_has |= 2u;
  }
}

@end