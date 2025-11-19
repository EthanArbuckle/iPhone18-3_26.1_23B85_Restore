@interface LteCellMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCell:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation LteCellMetric

- (void)addCell:(id)a3
{
  v4 = a3;
  cells = self->_cells;
  v8 = v4;
  if (!cells)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_cells;
    self->_cells = v6;

    v4 = v8;
    cells = self->_cells;
  }

  [(NSMutableArray *)cells addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LteCellMetric;
  v3 = [(LteCellMetric *)&v7 description];
  v4 = [(LteCellMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_event];
    [v3 setObject:v4 forKey:@"event"];
  }

  if ([(NSMutableArray *)self->_cells count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_cells, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_cells;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"cell"];
  }

  totalMetric = self->_totalMetric;
  if (totalMetric)
  {
    v13 = [(CellMetric *)totalMetric dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"total_metric"];
  }

  configuredMetric = self->_configuredMetric;
  if (configuredMetric)
  {
    v15 = [(CellMetric *)configuredMetric dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"configured_metric"];
  }

  activatedMetric = self->_activatedMetric;
  if (activatedMetric)
  {
    v17 = [(CellMetric *)activatedMetric dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"activated_metric"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    event = self->_event;
    PBDataWriterWriteUint32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_cells;
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

  if (self->_totalMetric)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_configuredMetric)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activatedMetric)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_event;
    *(v4 + 48) |= 1u;
  }

  v10 = v4;
  if ([(LteCellMetric *)self cellsCount])
  {
    [v10 clearCells];
    v5 = [(LteCellMetric *)self cellsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(LteCellMetric *)self cellAtIndex:i];
        [v10 addCell:v8];
      }
    }
  }

  if (self->_totalMetric)
  {
    [v10 setTotalMetric:?];
  }

  v9 = v10;
  if (self->_configuredMetric)
  {
    [v10 setConfiguredMetric:?];
    v9 = v10;
  }

  if (self->_activatedMetric)
  {
    [v10 setActivatedMetric:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_event;
    *(v5 + 48) |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_cells;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * v11) copyWithZone:{a3, v20}];
        [v6 addCell:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = [(CellMetric *)self->_totalMetric copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  v15 = [(CellMetric *)self->_configuredMetric copyWithZone:a3];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(CellMetric *)self->_activatedMetric copyWithZone:a3];
  v18 = v6[1];
  v6[1] = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_event != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  cells = self->_cells;
  if (cells | *(v4 + 2) && ![(NSMutableArray *)cells isEqual:?])
  {
    goto LABEL_15;
  }

  totalMetric = self->_totalMetric;
  if (totalMetric | *(v4 + 5))
  {
    if (![(CellMetric *)totalMetric isEqual:?])
    {
      goto LABEL_15;
    }
  }

  configuredMetric = self->_configuredMetric;
  if (configuredMetric | *(v4 + 3))
  {
    if (![(CellMetric *)configuredMetric isEqual:?])
    {
      goto LABEL_15;
    }
  }

  activatedMetric = self->_activatedMetric;
  if (activatedMetric | *(v4 + 1))
  {
    v10 = [(CellMetric *)activatedMetric isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_event;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_cells hash]^ v3;
  v5 = [(CellMetric *)self->_totalMetric hash];
  v6 = v4 ^ v5 ^ [(CellMetric *)self->_configuredMetric hash];
  return v6 ^ [(CellMetric *)self->_activatedMetric hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 48))
  {
    self->_event = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(LteCellMetric *)self addCell:*(*(&v17 + 1) + 8 * i), v17];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  totalMetric = self->_totalMetric;
  v12 = v5[5];
  if (totalMetric)
  {
    if (v12)
    {
      [(CellMetric *)totalMetric mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(LteCellMetric *)self setTotalMetric:?];
  }

  configuredMetric = self->_configuredMetric;
  v14 = v5[3];
  if (configuredMetric)
  {
    if (v14)
    {
      [(CellMetric *)configuredMetric mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(LteCellMetric *)self setConfiguredMetric:?];
  }

  activatedMetric = self->_activatedMetric;
  v16 = v5[1];
  if (activatedMetric)
  {
    if (v16)
    {
      [(CellMetric *)activatedMetric mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(LteCellMetric *)self setActivatedMetric:?];
  }
}

@end