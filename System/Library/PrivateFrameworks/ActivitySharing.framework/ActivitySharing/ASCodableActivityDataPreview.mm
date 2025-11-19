@interface ASCodableActivityDataPreview
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAchievements:(id)a3;
- (void)addWorkouts:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableActivityDataPreview

- (void)addWorkouts:(id)a3
{
  v4 = a3;
  workouts = self->_workouts;
  v8 = v4;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workouts;
    self->_workouts = v6;

    v4 = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:v4];
}

- (void)addAchievements:(id)a3
{
  v4 = a3;
  achievements = self->_achievements;
  v8 = v4;
  if (!achievements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_achievements;
    self->_achievements = v6;

    v4 = v8;
    achievements = self->_achievements;
  }

  [(NSMutableArray *)achievements addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableActivityDataPreview;
  v4 = [(ASCodableActivityDataPreview *)&v8 description];
  v5 = [(ASCodableActivityDataPreview *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot)
  {
    v5 = [(ASCodableCloudKitActivitySnapshot *)activitySnapshot dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"activitySnapshot"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_workouts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_achievements count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_achievements, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = self->_achievements;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"achievements"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v3 setObject:v20 forKey:@"date"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activitySnapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_workouts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_achievements;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_activitySnapshot)
  {
    [v12 setActivitySnapshot:?];
  }

  if ([(ASCodableActivityDataPreview *)self workoutsCount])
  {
    [v12 clearWorkouts];
    v4 = [(ASCodableActivityDataPreview *)self workoutsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableActivityDataPreview *)self workoutsAtIndex:i];
        [v12 addWorkouts:v7];
      }
    }
  }

  if ([(ASCodableActivityDataPreview *)self achievementsCount])
  {
    [v12 clearAchievements];
    v8 = [(ASCodableActivityDataPreview *)self achievementsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ASCodableActivityDataPreview *)self achievementsAtIndex:j];
        [v12 addAchievements:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 1) = *&self->_date;
    *(v12 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASCodableCloudKitActivitySnapshot *)self->_activitySnapshot copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_workouts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addWorkouts:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_achievements;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addAchievements:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot | *(v4 + 3))
  {
    if (![(ASCodableCloudKitActivitySnapshot *)activitySnapshot isEqual:?])
    {
      goto LABEL_12;
    }
  }

  workouts = self->_workouts;
  if (workouts | *(v4 + 4))
  {
    if (![(NSMutableArray *)workouts isEqual:?])
    {
      goto LABEL_12;
    }
  }

  achievements = self->_achievements;
  if (achievements | *(v4 + 2))
  {
    if (![(NSMutableArray *)achievements isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_date == *(v4 + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ASCodableCloudKitActivitySnapshot *)self->_activitySnapshot hash];
  v4 = [(NSMutableArray *)self->_workouts hash];
  v5 = [(NSMutableArray *)self->_achievements hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v6.i64 = floor(date + 0.5);
    v10 = (date - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  activitySnapshot = self->_activitySnapshot;
  v6 = *(v4 + 3);
  if (activitySnapshot)
  {
    if (v6)
    {
      [(ASCodableCloudKitActivitySnapshot *)activitySnapshot mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableActivityDataPreview *)self setActivitySnapshot:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 4);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ASCodableActivityDataPreview *)self addWorkouts:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 2);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ASCodableActivityDataPreview *)self addAchievements:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if (*(v4 + 40))
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end