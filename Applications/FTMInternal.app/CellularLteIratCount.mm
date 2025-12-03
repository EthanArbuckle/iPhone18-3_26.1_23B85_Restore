@interface CellularLteIratCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCtolReselCount:(id)count;
- (void)addFromLteHoCount:(id)count;
- (void)addFromLteRedirCount:(id)count;
- (void)addFromLteReselCount:(id)count;
- (void)addWtolRedirCount:(id)count;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation CellularLteIratCount

- (void)setHasDurationSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addFromLteHoCount:(id)count
{
  countCopy = count;
  fromLteHoCounts = self->_fromLteHoCounts;
  v8 = countCopy;
  if (!fromLteHoCounts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_fromLteHoCounts;
    self->_fromLteHoCounts = v6;

    countCopy = v8;
    fromLteHoCounts = self->_fromLteHoCounts;
  }

  [(NSMutableArray *)fromLteHoCounts addObject:countCopy];
}

- (void)addFromLteReselCount:(id)count
{
  countCopy = count;
  fromLteReselCounts = self->_fromLteReselCounts;
  v8 = countCopy;
  if (!fromLteReselCounts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_fromLteReselCounts;
    self->_fromLteReselCounts = v6;

    countCopy = v8;
    fromLteReselCounts = self->_fromLteReselCounts;
  }

  [(NSMutableArray *)fromLteReselCounts addObject:countCopy];
}

- (void)addFromLteRedirCount:(id)count
{
  countCopy = count;
  fromLteRedirCounts = self->_fromLteRedirCounts;
  v8 = countCopy;
  if (!fromLteRedirCounts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_fromLteRedirCounts;
    self->_fromLteRedirCounts = v6;

    countCopy = v8;
    fromLteRedirCounts = self->_fromLteRedirCounts;
  }

  [(NSMutableArray *)fromLteRedirCounts addObject:countCopy];
}

- (void)addWtolRedirCount:(id)count
{
  countCopy = count;
  wtolRedirCounts = self->_wtolRedirCounts;
  v8 = countCopy;
  if (!wtolRedirCounts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_wtolRedirCounts;
    self->_wtolRedirCounts = v6;

    countCopy = v8;
    wtolRedirCounts = self->_wtolRedirCounts;
  }

  [(NSMutableArray *)wtolRedirCounts addObject:countCopy];
}

- (void)addCtolReselCount:(id)count
{
  countCopy = count;
  ctolReselCounts = self->_ctolReselCounts;
  v8 = countCopy;
  if (!ctolReselCounts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_ctolReselCounts;
    self->_ctolReselCounts = v6;

    countCopy = v8;
    ctolReselCounts = self->_ctolReselCounts;
  }

  [(NSMutableArray *)ctolReselCounts addObject:countCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteIratCount;
  v3 = [(CellularLteIratCount *)&v7 description];
  dictionaryRepresentation = [(CellularLteIratCount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_durationSeconds];
    [v3 setObject:v6 forKey:@"duration_seconds"];
  }

  if ([(NSMutableArray *)self->_fromLteHoCounts count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_fromLteHoCounts, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v8 = self->_fromLteHoCounts;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v64;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"from_lte_ho_count"];
  }

  if ([(NSMutableArray *)self->_fromLteReselCounts count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_fromLteReselCounts, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v15 = self->_fromLteReselCounts;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"from_lte_resel_count"];
  }

  if ([(NSMutableArray *)self->_fromLteRedirCounts count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_fromLteRedirCounts, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v22 = self->_fromLteRedirCounts;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v56;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v55 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"from_lte_redir_count"];
  }

  wtolHoCount = self->_wtolHoCount;
  if (wtolHoCount)
  {
    dictionaryRepresentation4 = [(HoFromUtranCount *)wtolHoCount dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"wtol_ho_count"];
  }

  wtolReselCount = self->_wtolReselCount;
  if (wtolReselCount)
  {
    dictionaryRepresentation5 = [(ReselFromUtranCount *)wtolReselCount dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"wtol_resel_count"];
  }

  if ([(NSMutableArray *)self->_wtolRedirCounts count])
  {
    v32 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_wtolRedirCounts, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = self->_wtolRedirCounts;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v52;
      do
      {
        for (m = 0; m != v35; m = m + 1)
        {
          if (*v52 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation6 = [*(*(&v51 + 1) + 8 * m) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation6];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKey:@"wtol_redir_count"];
  }

  if ([(NSMutableArray *)self->_ctolReselCounts count])
  {
    v39 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_ctolReselCounts, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = self->_ctolReselCounts;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v67 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v48;
      do
      {
        for (n = 0; n != v42; n = n + 1)
        {
          if (*v48 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation7 = [*(*(&v47 + 1) + 8 * n) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation7];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v67 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"ctol_resel_count"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    durationSeconds = self->_durationSeconds;
    PBDataWriterWriteUint32Field();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = self->_fromLteHoCounts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v10);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = self->_fromLteReselCounts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v50 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v16);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = self->_fromLteRedirCounts;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v46 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v22);
  }

  if (self->_wtolHoCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_wtolReselCount)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = self->_wtolRedirCounts;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v28);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = self->_ctolReselCounts;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v38 objects:v58 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v39;
    do
    {
      for (n = 0; n != v34; n = n + 1)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v38 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v38 objects:v58 count:16];
    }

    while (v34);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 80) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_durationSeconds;
    *(toCopy + 80) |= 2u;
  }

  v26 = toCopy;
  if ([(CellularLteIratCount *)self fromLteHoCountsCount])
  {
    [v26 clearFromLteHoCounts];
    fromLteHoCountsCount = [(CellularLteIratCount *)self fromLteHoCountsCount];
    if (fromLteHoCountsCount)
    {
      v7 = fromLteHoCountsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteIratCount *)self fromLteHoCountAtIndex:i];
        [v26 addFromLteHoCount:v9];
      }
    }
  }

  if ([(CellularLteIratCount *)self fromLteReselCountsCount])
  {
    [v26 clearFromLteReselCounts];
    fromLteReselCountsCount = [(CellularLteIratCount *)self fromLteReselCountsCount];
    if (fromLteReselCountsCount)
    {
      v11 = fromLteReselCountsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularLteIratCount *)self fromLteReselCountAtIndex:j];
        [v26 addFromLteReselCount:v13];
      }
    }
  }

  if ([(CellularLteIratCount *)self fromLteRedirCountsCount])
  {
    [v26 clearFromLteRedirCounts];
    fromLteRedirCountsCount = [(CellularLteIratCount *)self fromLteRedirCountsCount];
    if (fromLteRedirCountsCount)
    {
      v15 = fromLteRedirCountsCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(CellularLteIratCount *)self fromLteRedirCountAtIndex:k];
        [v26 addFromLteRedirCount:v17];
      }
    }
  }

  if (self->_wtolHoCount)
  {
    [v26 setWtolHoCount:?];
  }

  if (self->_wtolReselCount)
  {
    [v26 setWtolReselCount:?];
  }

  if ([(CellularLteIratCount *)self wtolRedirCountsCount])
  {
    [v26 clearWtolRedirCounts];
    wtolRedirCountsCount = [(CellularLteIratCount *)self wtolRedirCountsCount];
    if (wtolRedirCountsCount)
    {
      v19 = wtolRedirCountsCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(CellularLteIratCount *)self wtolRedirCountAtIndex:m];
        [v26 addWtolRedirCount:v21];
      }
    }
  }

  if ([(CellularLteIratCount *)self ctolReselCountsCount])
  {
    [v26 clearCtolReselCounts];
    ctolReselCountsCount = [(CellularLteIratCount *)self ctolReselCountsCount];
    if (ctolReselCountsCount)
    {
      v23 = ctolReselCountsCount;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(CellularLteIratCount *)self ctolReselCountAtIndex:n];
        [v26 addCtolReselCount:v25];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 80) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_durationSeconds;
    *(v5 + 80) |= 2u;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = self->_fromLteHoCounts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v59 + 1) + 8 * i) copyWithZone:zone];
        [v6 addFromLteHoCount:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v10);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = self->_fromLteReselCounts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v56;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v55 + 1) + 8 * j) copyWithZone:zone];
        [v6 addFromLteReselCount:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v16);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = self->_fromLteRedirCounts;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v51 + 1) + 8 * k) copyWithZone:zone];
        [v6 addFromLteRedirCount:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v22);
  }

  v26 = [(HoFromUtranCount *)self->_wtolHoCount copyWithZone:zone];
  v27 = v6[7];
  v6[7] = v26;

  v28 = [(ReselFromUtranCount *)self->_wtolReselCount copyWithZone:zone];
  v29 = v6[9];
  v6[9] = v28;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = self->_wtolRedirCounts;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v47 objects:v64 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (m = 0; m != v32; m = m + 1)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v47 + 1) + 8 * m) copyWithZone:zone];
        [v6 addWtolRedirCount:v35];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v47 objects:v64 count:16];
    }

    while (v32);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self->_ctolReselCounts;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v63 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      for (n = 0; n != v38; n = n + 1)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v43 + 1) + 8 * n) copyWithZone:{zone, v43}];
        [v6 addCtolReselCount:v41];
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v63 count:16];
    }

    while (v38);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_durationSeconds != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_26;
  }

  fromLteHoCounts = self->_fromLteHoCounts;
  if (fromLteHoCounts | *(equalCopy + 4) && ![(NSMutableArray *)fromLteHoCounts isEqual:?])
  {
    goto LABEL_26;
  }

  fromLteReselCounts = self->_fromLteReselCounts;
  if (fromLteReselCounts | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)fromLteReselCounts isEqual:?])
    {
      goto LABEL_26;
    }
  }

  fromLteRedirCounts = self->_fromLteRedirCounts;
  if (fromLteRedirCounts | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)fromLteRedirCounts isEqual:?])
    {
      goto LABEL_26;
    }
  }

  wtolHoCount = self->_wtolHoCount;
  if (wtolHoCount | *(equalCopy + 7))
  {
    if (![(HoFromUtranCount *)wtolHoCount isEqual:?])
    {
      goto LABEL_26;
    }
  }

  wtolReselCount = self->_wtolReselCount;
  if (wtolReselCount | *(equalCopy + 9))
  {
    if (![(ReselFromUtranCount *)wtolReselCount isEqual:?])
    {
      goto LABEL_26;
    }
  }

  wtolRedirCounts = self->_wtolRedirCounts;
  if (wtolRedirCounts | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)wtolRedirCounts isEqual:?])
    {
      goto LABEL_26;
    }
  }

  ctolReselCounts = self->_ctolReselCounts;
  if (ctolReselCounts | *(equalCopy + 2))
  {
    v13 = [(NSMutableArray *)ctolReselCounts isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_27:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_durationSeconds;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_fromLteHoCounts hash];
  v6 = [(NSMutableArray *)self->_fromLteReselCounts hash];
  v7 = v5 ^ v6 ^ [(NSMutableArray *)self->_fromLteRedirCounts hash];
  v8 = [(HoFromUtranCount *)self->_wtolHoCount hash];
  v9 = v8 ^ [(ReselFromUtranCount *)self->_wtolReselCount hash];
  v10 = v7 ^ v9 ^ [(NSMutableArray *)self->_wtolRedirCounts hash];
  return v10 ^ [(NSMutableArray *)self->_ctolReselCounts hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 80);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 80);
  }

  if ((v6 & 2) != 0)
  {
    self->_durationSeconds = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularLteIratCount *)self addFromLteHoCount:*(*(&v52 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v9);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = v5[6];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CellularLteIratCount *)self addFromLteReselCount:*(*(&v48 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v14);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v5[5];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(CellularLteIratCount *)self addFromLteRedirCount:*(*(&v44 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v19);
  }

  wtolHoCount = self->_wtolHoCount;
  v23 = v5[7];
  if (wtolHoCount)
  {
    if (v23)
    {
      [(HoFromUtranCount *)wtolHoCount mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(CellularLteIratCount *)self setWtolHoCount:?];
  }

  wtolReselCount = self->_wtolReselCount;
  v25 = v5[9];
  if (wtolReselCount)
  {
    if (v25)
    {
      [(ReselFromUtranCount *)wtolReselCount mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(CellularLteIratCount *)self setWtolReselCount:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = v5[8];
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(CellularLteIratCount *)self addWtolRedirCount:*(*(&v40 + 1) + 8 * m)];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v28);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = v5[2];
  v32 = [v31 countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v37;
    do
    {
      for (n = 0; n != v33; n = n + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(CellularLteIratCount *)self addCtolReselCount:*(*(&v36 + 1) + 8 * n), v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v33);
  }
}

@end