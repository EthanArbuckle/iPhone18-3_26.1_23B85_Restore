@interface BandCombo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBandInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BandCombo

- (void)addBandInfo:(id)a3
{
  v4 = a3;
  bandInfos = self->_bandInfos;
  v8 = v4;
  if (!bandInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_bandInfos;
    self->_bandInfos = v6;

    v4 = v8;
    bandInfos = self->_bandInfos;
  }

  [(NSMutableArray *)bandInfos addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BandCombo;
  v3 = [(BandCombo *)&v7 description];
  v4 = [(BandCombo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_numBandComponents];
    [v3 setObject:v4 forKey:@"num_band_components"];
  }

  if ([(NSMutableArray *)self->_bandInfos count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_bandInfos, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_bandInfos;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"band_info"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    numBandComponents = self->_numBandComponents;
    PBDataWriterWriteUint32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_bandInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_numBandComponents;
    *(v4 + 20) |= 1u;
  }

  v9 = v4;
  if ([(BandCombo *)self bandInfosCount])
  {
    [v9 clearBandInfos];
    v5 = [(BandCombo *)self bandInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BandCombo *)self bandInfoAtIndex:i];
        [v9 addBandInfo:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_numBandComponents;
    *(v5 + 20) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_bandInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{a3, v14}];
        [v6 addBandInfo:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_numBandComponents != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  bandInfos = self->_bandInfos;
  if (bandInfos | *(v4 + 1))
  {
    v7 = [(NSMutableArray *)bandInfos isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_numBandComponents;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_bandInfos hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 20))
  {
    self->_numBandComponents = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BandCombo *)self addBandInfo:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end