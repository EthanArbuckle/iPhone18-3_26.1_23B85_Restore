@interface ASCodableFriend
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAchievements:(id)achievements;
- (void)addCompetitions:(id)competitions;
- (void)addSnapshots:(id)snapshots;
- (void)addWorkouts:(id)workouts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableFriend

- (void)addSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  snapshots = self->_snapshots;
  v8 = snapshotsCopy;
  if (!snapshots)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_snapshots;
    self->_snapshots = v6;

    snapshotsCopy = v8;
    snapshots = self->_snapshots;
  }

  [(NSMutableArray *)snapshots addObject:snapshotsCopy];
}

- (void)addWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  workouts = self->_workouts;
  v8 = workoutsCopy;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workouts;
    self->_workouts = v6;

    workoutsCopy = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:workoutsCopy];
}

- (void)addAchievements:(id)achievements
{
  achievementsCopy = achievements;
  achievements = self->_achievements;
  v8 = achievementsCopy;
  if (!achievements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_achievements;
    self->_achievements = v6;

    achievementsCopy = v8;
    achievements = self->_achievements;
  }

  [(NSMutableArray *)achievements addObject:achievementsCopy];
}

- (void)addCompetitions:(id)competitions
{
  competitionsCopy = competitions;
  competitions = self->_competitions;
  v8 = competitionsCopy;
  if (!competitions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_competitions;
    self->_competitions = v6;

    competitionsCopy = v8;
    competitions = self->_competitions;
  }

  [(NSMutableArray *)competitions addObject:competitionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableFriend;
  v4 = [(ASCodableFriend *)&v8 description];
  dictionaryRepresentation = [(ASCodableFriend *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  contact = self->_contact;
  if (contact)
  {
    dictionaryRepresentation = [(ASCodableContact *)contact dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"contact"];
  }

  if ([(NSMutableArray *)self->_snapshots count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_snapshots, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = self->_snapshots;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"snapshots"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = self->_workouts;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_achievements count])
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_achievements, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = self->_achievements;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v40 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation4];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"achievements"];
  }

  if ([(NSMutableArray *)self->_competitions count])
  {
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_competitions, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = self->_competitions;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v36 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"competitions"];
  }

  v34 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v50 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_contact)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_snapshots;
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
  v11 = self->_workouts;
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
  v17 = self->_achievements;
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
  v23 = self->_competitions;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_contact)
  {
    [toCopy setContact:?];
  }

  if ([(ASCodableFriend *)self snapshotsCount])
  {
    [toCopy clearSnapshots];
    snapshotsCount = [(ASCodableFriend *)self snapshotsCount];
    if (snapshotsCount)
    {
      v5 = snapshotsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableFriend *)self snapshotsAtIndex:i];
        [toCopy addSnapshots:v7];
      }
    }
  }

  if ([(ASCodableFriend *)self workoutsCount])
  {
    [toCopy clearWorkouts];
    workoutsCount = [(ASCodableFriend *)self workoutsCount];
    if (workoutsCount)
    {
      v9 = workoutsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ASCodableFriend *)self workoutsAtIndex:j];
        [toCopy addWorkouts:v11];
      }
    }
  }

  if ([(ASCodableFriend *)self achievementsCount])
  {
    [toCopy clearAchievements];
    achievementsCount = [(ASCodableFriend *)self achievementsCount];
    if (achievementsCount)
    {
      v13 = achievementsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ASCodableFriend *)self achievementsAtIndex:k];
        [toCopy addAchievements:v15];
      }
    }
  }

  if ([(ASCodableFriend *)self competitionsCount])
  {
    [toCopy clearCompetitions];
    competitionsCount = [(ASCodableFriend *)self competitionsCount];
    if (competitionsCount)
    {
      v17 = competitionsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ASCodableFriend *)self competitionsAtIndex:m];
        [toCopy addCompetitions:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableContact *)self->_contact copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = self->_snapshots;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      v12 = 0;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v46 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addSnapshots:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v10);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = self->_workouts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      v18 = 0;
      do
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v42 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addWorkouts:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v16);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = self->_achievements;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v38 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addAchievements:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = self->_competitions;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v34 + 1) + 8 * v30) copyWithZone:{zone, v34}];
        [v5 addCompetitions:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v28);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((contact = self->_contact, !(contact | equalCopy[3])) || -[ASCodableContact isEqual:](contact, "isEqual:")) && ((snapshots = self->_snapshots, !(snapshots | equalCopy[4])) || -[NSMutableArray isEqual:](snapshots, "isEqual:")) && ((workouts = self->_workouts, !(workouts | equalCopy[5])) || -[NSMutableArray isEqual:](workouts, "isEqual:")) && ((achievements = self->_achievements, !(achievements | equalCopy[1])) || -[NSMutableArray isEqual:](achievements, "isEqual:")))
  {
    competitions = self->_competitions;
    if (competitions | equalCopy[2])
    {
      v10 = [(NSMutableArray *)competitions isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ASCodableContact *)self->_contact hash];
  v4 = [(NSMutableArray *)self->_snapshots hash]^ v3;
  v5 = [(NSMutableArray *)self->_workouts hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_achievements hash];
  return v6 ^ [(NSMutableArray *)self->_competitions hash];
}

- (void)mergeFrom:(id)from
{
  v48 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  contact = self->_contact;
  v6 = *(fromCopy + 3);
  if (contact)
  {
    if (v6)
    {
      [(ASCodableContact *)contact mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableFriend *)self setContact:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = *(fromCopy + 4);
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

        [(ASCodableFriend *)self addSnapshots:*(*(&v40 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = *(fromCopy + 5);
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

        [(ASCodableFriend *)self addWorkouts:*(*(&v36 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = *(fromCopy + 1);
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

        [(ASCodableFriend *)self addAchievements:*(*(&v32 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = *(fromCopy + 2);
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

        [(ASCodableFriend *)self addCompetitions:*(*(&v28 + 1) + 8 * m), v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end