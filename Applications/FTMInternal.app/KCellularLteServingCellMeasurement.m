@interface KCellularLteServingCellMeasurement
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsConnectedMode:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteServingCellMeasurement

- (void)setHasIsConnectedMode:(BOOL)a3
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

- (void)addRxInfo:(id)a3
{
  v4 = a3;
  rxInfos = self->_rxInfos;
  v8 = v4;
  if (!rxInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rxInfos;
    self->_rxInfos = v6;

    v4 = v8;
    rxInfos = self->_rxInfos;
  }

  [(NSMutableArray *)rxInfos addObject:v4];
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
  v7.super_class = KCellularLteServingCellMeasurement;
  v3 = [(KCellularLteServingCellMeasurement *)&v7 description];
  v4 = [(KCellularLteServingCellMeasurement *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

  if ((has & 4) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_isConnectedMode];
    [v3 setObject:v6 forKey:@"is_connected_mode"];
  }

  if ([(NSMutableArray *)self->_rxInfos count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_rxInfos, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_rxInfos;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"rx_info"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isConnectedMode = self->_isConnectedMode;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_rxInfos;
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

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
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
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 28) = self->_isConnectedMode;
    *(v4 + 32) |= 4u;
  }

  v10 = v4;
  if ([(KCellularLteServingCellMeasurement *)self rxInfosCount])
  {
    [v10 clearRxInfos];
    v6 = [(KCellularLteServingCellMeasurement *)self rxInfosCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularLteServingCellMeasurement *)self rxInfoAtIndex:i];
        [v10 addRxInfo:v9];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 6) = self->_subsId;
    *(v10 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 28) = self->_isConnectedMode;
    *(v5 + 32) |= 4u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_rxInfos;
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
        [v6 addRxInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 6) = self->_subsId;
    *(v6 + 32) |= 2u;
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

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(v4 + 28);
    if (self->_isConnectedMode)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_17;
  }

  rxInfos = self->_rxInfos;
  if (!(rxInfos | *(v4 + 2)))
  {
    goto LABEL_12;
  }

  if (![(NSMutableArray *)rxInfos isEqual:?])
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  has = self->_has;
LABEL_12:
  v8 = (*(v4 + 32) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_subsId != *(v4 + 6))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isConnectedMode;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_rxInfos hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_subsId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 32);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 32);
  }

  if ((v6 & 4) != 0)
  {
    self->_isConnectedMode = *(v4 + 28);
    *&self->_has |= 4u;
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

        [(KCellularLteServingCellMeasurement *)self addRxInfo:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ((v5[8] & 2) != 0)
  {
    self->_subsId = v5[6];
    *&self->_has |= 2u;
  }
}

@end