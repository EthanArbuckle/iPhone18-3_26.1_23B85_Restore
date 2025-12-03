@interface KCellularGsmGrrEventMeasCr
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGsmNcellMeas:(id)meas;
- (void)addLteNcellMeas:(id)meas;
- (void)addUmtsNcellMeas:(id)meas;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularGsmGrrEventMeasCr

- (void)addGsmNcellMeas:(id)meas
{
  measCopy = meas;
  gsmNcellMeas = self->_gsmNcellMeas;
  v8 = measCopy;
  if (!gsmNcellMeas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_gsmNcellMeas;
    self->_gsmNcellMeas = v6;

    measCopy = v8;
    gsmNcellMeas = self->_gsmNcellMeas;
  }

  [(NSMutableArray *)gsmNcellMeas addObject:measCopy];
}

- (void)addUmtsNcellMeas:(id)meas
{
  measCopy = meas;
  umtsNcellMeas = self->_umtsNcellMeas;
  v8 = measCopy;
  if (!umtsNcellMeas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_umtsNcellMeas;
    self->_umtsNcellMeas = v6;

    measCopy = v8;
    umtsNcellMeas = self->_umtsNcellMeas;
  }

  [(NSMutableArray *)umtsNcellMeas addObject:measCopy];
}

- (void)addLteNcellMeas:(id)meas
{
  measCopy = meas;
  lteNcellMeas = self->_lteNcellMeas;
  v8 = measCopy;
  if (!lteNcellMeas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_lteNcellMeas;
    self->_lteNcellMeas = v6;

    measCopy = v8;
    lteNcellMeas = self->_lteNcellMeas;
  }

  [(NSMutableArray *)lteNcellMeas addObject:measCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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
  v7.super_class = KCellularGsmGrrEventMeasCr;
  v3 = [(KCellularGsmGrrEventMeasCr *)&v7 description];
  dictionaryRepresentation = [(KCellularGsmGrrEventMeasCr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

  if ([(NSMutableArray *)self->_gsmNcellMeas count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_gsmNcellMeas, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = self->_gsmNcellMeas;
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

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"gsm_ncell_meas"];
  }

  if ([(NSMutableArray *)self->_umtsNcellMeas count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_umtsNcellMeas, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_umtsNcellMeas;
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

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"umts_ncell_meas"];
  }

  if ([(NSMutableArray *)self->_lteNcellMeas count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lteNcellMeas, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_lteNcellMeas;
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

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"lte_ncell_meas"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v26 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_gsmNcellMeas;
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
  v12 = self->_umtsNcellMeas;
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
  v18 = self->_lteNcellMeas;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v17 = toCopy;
  if ([(KCellularGsmGrrEventMeasCr *)self gsmNcellMeasCount])
  {
    [v17 clearGsmNcellMeas];
    gsmNcellMeasCount = [(KCellularGsmGrrEventMeasCr *)self gsmNcellMeasCount];
    if (gsmNcellMeasCount)
    {
      v6 = gsmNcellMeasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(KCellularGsmGrrEventMeasCr *)self gsmNcellMeasAtIndex:i];
        [v17 addGsmNcellMeas:v8];
      }
    }
  }

  if ([(KCellularGsmGrrEventMeasCr *)self umtsNcellMeasCount])
  {
    [v17 clearUmtsNcellMeas];
    umtsNcellMeasCount = [(KCellularGsmGrrEventMeasCr *)self umtsNcellMeasCount];
    if (umtsNcellMeasCount)
    {
      v10 = umtsNcellMeasCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(KCellularGsmGrrEventMeasCr *)self umtsNcellMeasAtIndex:j];
        [v17 addUmtsNcellMeas:v12];
      }
    }
  }

  if ([(KCellularGsmGrrEventMeasCr *)self lteNcellMeasCount])
  {
    [v17 clearLteNcellMeas];
    lteNcellMeasCount = [(KCellularGsmGrrEventMeasCr *)self lteNcellMeasCount];
    if (lteNcellMeasCount)
    {
      v14 = lteNcellMeasCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(KCellularGsmGrrEventMeasCr *)self lteNcellMeasAtIndex:k];
        [v17 addLteNcellMeas:v16];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v17 + 8) = self->_subsId;
    *(v17 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_gsmNcellMeas;
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

        v12 = [*(*(&v34 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addGsmNcellMeas:v12];

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
  v13 = self->_umtsNcellMeas;
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

        v18 = [*(*(&v30 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addUmtsNcellMeas:v18];

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
  v19 = self->_lteNcellMeas;
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

        v24 = [*(*(&v26 + 1) + 8 * v23) copyWithZone:{zone, v26}];
        [v6 addLteNcellMeas:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 8) = self->_subsId;
    *(v6 + 48) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  gsmNcellMeas = self->_gsmNcellMeas;
  if (gsmNcellMeas | *(equalCopy + 2) && ![(NSMutableArray *)gsmNcellMeas isEqual:?])
  {
    goto LABEL_17;
  }

  umtsNcellMeas = self->_umtsNcellMeas;
  if (umtsNcellMeas | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)umtsNcellMeas isEqual:?])
    {
      goto LABEL_17;
    }
  }

  lteNcellMeas = self->_lteNcellMeas;
  if (lteNcellMeas | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)lteNcellMeas isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_subsId != *(equalCopy + 8))
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

  v4 = [(NSMutableArray *)self->_gsmNcellMeas hash];
  v5 = [(NSMutableArray *)self->_umtsNcellMeas hash];
  v6 = [(NSMutableArray *)self->_lteNcellMeas hash];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 48))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(fromCopy + 2);
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

        [(KCellularGsmGrrEventMeasCr *)self addGsmNcellMeas:*(*(&v29 + 1) + 8 * v10)];
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
  v11 = *(v5 + 5);
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

        [(KCellularGsmGrrEventMeasCr *)self addUmtsNcellMeas:*(*(&v25 + 1) + 8 * v15)];
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

        [(KCellularGsmGrrEventMeasCr *)self addLteNcellMeas:*(*(&v21 + 1) + 8 * v20), v21];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }

  if ((*(v5 + 48) & 2) != 0)
  {
    self->_subsId = *(v5 + 8);
    *&self->_has |= 2u;
  }
}

@end