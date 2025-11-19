@interface ATXAnchorModelPBAnchorModelLogEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNegativeActions:(id)a3;
- (void)addNegativeAppLaunches:(id)a3;
- (void)addPositiveActions:(id)a3;
- (void)addPositiveAppLaunches:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXAnchorModelPBAnchorModelLogEntry

- (void)addPositiveAppLaunches:(id)a3
{
  v4 = a3;
  positiveAppLaunches = self->_positiveAppLaunches;
  v8 = v4;
  if (!positiveAppLaunches)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_positiveAppLaunches;
    self->_positiveAppLaunches = v6;

    v4 = v8;
    positiveAppLaunches = self->_positiveAppLaunches;
  }

  [(NSMutableArray *)positiveAppLaunches addObject:v4];
}

- (void)addPositiveActions:(id)a3
{
  v4 = a3;
  positiveActions = self->_positiveActions;
  v8 = v4;
  if (!positiveActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_positiveActions;
    self->_positiveActions = v6;

    v4 = v8;
    positiveActions = self->_positiveActions;
  }

  [(NSMutableArray *)positiveActions addObject:v4];
}

- (void)addNegativeAppLaunches:(id)a3
{
  v4 = a3;
  negativeAppLaunches = self->_negativeAppLaunches;
  v8 = v4;
  if (!negativeAppLaunches)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_negativeAppLaunches;
    self->_negativeAppLaunches = v6;

    v4 = v8;
    negativeAppLaunches = self->_negativeAppLaunches;
  }

  [(NSMutableArray *)negativeAppLaunches addObject:v4];
}

- (void)addNegativeActions:(id)a3
{
  v4 = a3;
  negativeActions = self->_negativeActions;
  v8 = v4;
  if (!negativeActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_negativeActions;
    self->_negativeActions = v6;

    v4 = v8;
    negativeActions = self->_negativeActions;
  }

  [(NSMutableArray *)negativeActions addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBAnchorModelLogEntry;
  v4 = [(ATXAnchorModelPBAnchorModelLogEntry *)&v8 description];
  v5 = [(ATXAnchorModelPBAnchorModelLogEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  userId = self->_userId;
  if (userId)
  {
    [v3 setObject:userId forKey:@"userId"];
  }

  anchor = self->_anchor;
  if (anchor)
  {
    v7 = [(ATXAnchorModelPBAnchorMetadata *)anchor dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"anchor"];
  }

  if ([(NSMutableArray *)self->_positiveAppLaunches count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_positiveAppLaunches, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = self->_positiveAppLaunches;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"positiveAppLaunches"];
  }

  if ([(NSMutableArray *)self->_positiveActions count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_positiveActions, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = self->_positiveActions;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"positiveActions"];
  }

  if ([(NSMutableArray *)self->_negativeAppLaunches count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_negativeAppLaunches, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = self->_negativeAppLaunches;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v42 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"negativeAppLaunches"];
  }

  if ([(NSMutableArray *)self->_negativeActions count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_negativeActions, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = self->_negativeActions;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v38 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"negativeActions"];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_userId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_anchor)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_positiveAppLaunches;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_positiveActions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_negativeAppLaunches;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_negativeActions;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if (self->_userId)
  {
    [v20 setUserId:?];
  }

  if (self->_anchor)
  {
    [v20 setAnchor:?];
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesCount])
  {
    [v20 clearPositiveAppLaunches];
    v4 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesAtIndex:i];
        [v20 addPositiveAppLaunches:v7];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsCount])
  {
    [v20 clearPositiveActions];
    v8 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsAtIndex:j];
        [v20 addPositiveActions:v11];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesCount])
  {
    [v20 clearNegativeAppLaunches];
    v12 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesAtIndex:k];
        [v20 addNegativeAppLaunches:v15];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsCount])
  {
    [v20 clearNegativeActions];
    v16 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsAtIndex:m];
        [v20 addNegativeActions:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_userId copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(ATXAnchorModelPBAnchorMetadata *)self->_anchor copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = self->_positiveAppLaunches;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v48 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addPositiveAppLaunches:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v12);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = self->_positiveActions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      v20 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v44 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addPositiveActions:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v18);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = self->_negativeAppLaunches;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      v26 = 0;
      do
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v40 + 1) + 8 * v26) copyWithZone:a3];
        [v5 addNegativeAppLaunches:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v24);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = self->_negativeActions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v36 + 1) + 8 * v32) copyWithZone:{a3, v36}];
        [v5 addNegativeActions:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v30);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((userId = self->_userId, !(userId | v4[6])) || -[NSString isEqual:](userId, "isEqual:")) && ((anchor = self->_anchor, !(anchor | v4[1])) || -[ATXAnchorModelPBAnchorMetadata isEqual:](anchor, "isEqual:")) && ((positiveAppLaunches = self->_positiveAppLaunches, !(positiveAppLaunches | v4[5])) || -[NSMutableArray isEqual:](positiveAppLaunches, "isEqual:")) && ((positiveActions = self->_positiveActions, !(positiveActions | v4[4])) || -[NSMutableArray isEqual:](positiveActions, "isEqual:")) && ((negativeAppLaunches = self->_negativeAppLaunches, !(negativeAppLaunches | v4[3])) || -[NSMutableArray isEqual:](negativeAppLaunches, "isEqual:")))
  {
    negativeActions = self->_negativeActions;
    if (negativeActions | v4[2])
    {
      v11 = [(NSMutableArray *)negativeActions isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_userId hash];
  v4 = [(ATXAnchorModelPBAnchorMetadata *)self->_anchor hash]^ v3;
  v5 = [(NSMutableArray *)self->_positiveAppLaunches hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_positiveActions hash];
  v7 = [(NSMutableArray *)self->_negativeAppLaunches hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_negativeActions hash];
}

- (void)mergeFrom:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(ATXAnchorModelPBAnchorModelLogEntry *)self setUserId:?];
  }

  anchor = self->_anchor;
  v6 = *(v4 + 1);
  if (anchor)
  {
    if (v6)
    {
      [(ATXAnchorModelPBAnchorMetadata *)anchor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXAnchorModelPBAnchorModelLogEntry *)self setAnchor:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addPositiveAppLaunches:*(*(&v40 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = *(v4 + 4);
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addPositiveActions:*(*(&v36 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = *(v4 + 3);
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addNegativeAppLaunches:*(*(&v32 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = *(v4 + 2);
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addNegativeActions:*(*(&v28 + 1) + 8 * m), v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end