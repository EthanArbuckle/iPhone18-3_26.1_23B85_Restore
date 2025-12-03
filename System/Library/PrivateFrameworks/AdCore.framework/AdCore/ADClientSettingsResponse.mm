@interface ADClientSettingsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSearchAdsSettingsParams:(id)params;
- (void)addSearchLandingAdsSettingsParams:(id)params;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADClientSettingsResponse

- (void)addSearchAdsSettingsParams:(id)params
{
  paramsCopy = params;
  searchAdsSettingsParams = self->_searchAdsSettingsParams;
  v8 = paramsCopy;
  if (!searchAdsSettingsParams)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_searchAdsSettingsParams;
    self->_searchAdsSettingsParams = v6;

    paramsCopy = v8;
    searchAdsSettingsParams = self->_searchAdsSettingsParams;
  }

  [(NSMutableArray *)searchAdsSettingsParams addObject:paramsCopy];
}

- (void)addSearchLandingAdsSettingsParams:(id)params
{
  paramsCopy = params;
  searchLandingAdsSettingsParams = self->_searchLandingAdsSettingsParams;
  v8 = paramsCopy;
  if (!searchLandingAdsSettingsParams)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_searchLandingAdsSettingsParams;
    self->_searchLandingAdsSettingsParams = v6;

    paramsCopy = v8;
    searchLandingAdsSettingsParams = self->_searchLandingAdsSettingsParams;
  }

  [(NSMutableArray *)searchLandingAdsSettingsParams addObject:paramsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADClientSettingsResponse;
  v4 = [(ADClientSettingsResponse *)&v8 description];
  dictionaryRepresentation = [(ADClientSettingsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
    [dictionary setObject:v4 forKey:@"expirationDate"];
  }

  if ([(NSMutableArray *)self->_searchAdsSettingsParams count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_searchAdsSettingsParams, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = self->_searchAdsSettingsParams;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"searchAdsSettingsParams"];
  }

  if ([(NSMutableArray *)self->_searchLandingAdsSettingsParams count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_searchLandingAdsSettingsParams, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_searchLandingAdsSettingsParams;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"searchLandingAdsSettingsParams"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    PBDataWriterWriteDoubleField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_searchAdsSettingsParams;
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
        ++v10;
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
  v12 = self->_searchLandingAdsSettingsParams;
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
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_expirationDate;
    *(toCopy + 32) |= 1u;
  }

  v13 = toCopy;
  if ([(ADClientSettingsResponse *)self searchAdsSettingsParamsCount])
  {
    [v13 clearSearchAdsSettingsParams];
    searchAdsSettingsParamsCount = [(ADClientSettingsResponse *)self searchAdsSettingsParamsCount];
    if (searchAdsSettingsParamsCount)
    {
      v6 = searchAdsSettingsParamsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ADClientSettingsResponse *)self searchAdsSettingsParamsAtIndex:i];
        [v13 addSearchAdsSettingsParams:v8];
      }
    }
  }

  if ([(ADClientSettingsResponse *)self searchLandingAdsSettingsParamsCount])
  {
    [v13 clearSearchLandingAdsSettingsParams];
    searchLandingAdsSettingsParamsCount = [(ADClientSettingsResponse *)self searchLandingAdsSettingsParamsCount];
    if (searchLandingAdsSettingsParamsCount)
    {
      v10 = searchLandingAdsSettingsParamsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(ADClientSettingsResponse *)self searchLandingAdsSettingsParamsAtIndex:j];
        [v13 addSearchLandingAdsSettingsParams:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_expirationDate;
    *(v5 + 32) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_searchAdsSettingsParams;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addSearchAdsSettingsParams:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_searchLandingAdsSettingsParams;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{zone, v21}];
        [v6 addSearchLandingAdsSettingsParams:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_expirationDate != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  searchAdsSettingsParams = self->_searchAdsSettingsParams;
  if (searchAdsSettingsParams | *(equalCopy + 2) && ![(NSMutableArray *)searchAdsSettingsParams isEqual:?])
  {
    goto LABEL_11;
  }

  searchLandingAdsSettingsParams = self->_searchLandingAdsSettingsParams;
  if (searchLandingAdsSettingsParams | *(equalCopy + 3))
  {
    v8 = [(NSMutableArray *)searchLandingAdsSettingsParams isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v2.i64 = floor(expirationDate + 0.5);
    v7 = (expirationDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSMutableArray *)self->_searchAdsSettingsParams hash]^ v5;
  return v9 ^ [(NSMutableArray *)self->_searchLandingAdsSettingsParams hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_expirationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ADClientSettingsResponse *)self addSearchAdsSettingsParams:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5[3];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ADClientSettingsResponse *)self addSearchLandingAdsSettingsParams:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end