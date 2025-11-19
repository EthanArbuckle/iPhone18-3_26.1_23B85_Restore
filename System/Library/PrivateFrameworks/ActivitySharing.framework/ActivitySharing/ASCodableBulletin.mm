@interface ASCodableBulletin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableBulletin

- (void)setHasType:(BOOL)a3
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

- (void)setHasTimestamp:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableBulletin;
  v4 = [(ASCodableBulletin *)&v8 description];
  v5 = [(ASCodableBulletin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [v3 setObject:friendUUID forKey:@"friendUUID"];
  }

  friendListData = self->_friendListData;
  if (friendListData)
  {
    [v3 setObject:friendListData forKey:@"friendListData"];
  }

  achievementData = self->_achievementData;
  if (achievementData)
  {
    [v3 setObject:achievementData forKey:@"achievementData"];
  }

  workoutData = self->_workoutData;
  if (workoutData)
  {
    [v3 setObject:workoutData forKey:@"workoutData"];
  }

  snapshotData = self->_snapshotData;
  if (snapshotData)
  {
    [v3 setObject:snapshotData forKey:@"snapshotData"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v12 forKey:@"timestamp"];

    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_competitionStage];
    [v3 setObject:v13 forKey:@"competitionStage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_friendListData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_achievementData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_workoutData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_snapshotData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    competitionStage = self->_competitionStage;
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v5[3] = self->_type;
    *(v5 + 80) |= 4u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
  }

  if (self->_friendUUID)
  {
    [v5 setFriendUUID:?];
  }

  if (self->_friendListData)
  {
    [v5 setFriendListData:?];
  }

  if (self->_achievementData)
  {
    [v5 setAchievementData:?];
  }

  if (self->_workoutData)
  {
    [v5 setWorkoutData:?];
  }

  if (self->_snapshotData)
  {
    [v5 setSnapshotData:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_timestamp;
    *(v5 + 80) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_competitionStage;
    *(v5 + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 80) |= 4u;
  }

  v7 = [(NSString *)self->_title copyWithZone:a3];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  v9 = [(NSString *)self->_friendUUID copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSData *)self->_friendListData copyWithZone:a3];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v13 = [(NSData *)self->_achievementData copyWithZone:a3];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  v15 = [(NSData *)self->_workoutData copyWithZone:a3];
  v16 = *(v6 + 72);
  *(v6 + 72) = v15;

  v17 = [(NSData *)self->_snapshotData copyWithZone:a3];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_timestamp;
    *(v6 + 80) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_competitionStage;
    *(v6 + 80) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_type != *(v4 + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  title = self->_title;
  if (title | *(v4 + 8) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_28;
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(v4 + 6))
  {
    if (![(NSString *)friendUUID isEqual:?])
    {
      goto LABEL_28;
    }
  }

  friendListData = self->_friendListData;
  if (friendListData | *(v4 + 5))
  {
    if (![(NSData *)friendListData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  achievementData = self->_achievementData;
  if (achievementData | *(v4 + 4))
  {
    if (![(NSData *)achievementData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  workoutData = self->_workoutData;
  if (workoutData | *(v4 + 9))
  {
    if (![(NSData *)workoutData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  snapshotData = self->_snapshotData;
  if (snapshotData | *(v4 + 7))
  {
    if (![(NSData *)snapshotData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_28;
  }

  v12 = (*(v4 + 80) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_competitionStage != *(v4 + 1))
    {
      goto LABEL_28;
    }

    v12 = 1;
  }

LABEL_29:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_friendUUID hash];
  v6 = [(NSData *)self->_friendListData hash];
  v7 = [(NSData *)self->_achievementData hash];
  v8 = [(NSData *)self->_workoutData hash];
  v9 = [(NSData *)self->_snapshotData hash];
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v10.i64 = floor(timestamp + 0.5);
    v14 = (timestamp - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*&self->_has)
  {
    v16 = 2654435761 * self->_competitionStage;
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 80) & 4) != 0)
  {
    self->_type = *(v4 + 3);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 8))
  {
    [(ASCodableBulletin *)self setTitle:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(ASCodableBulletin *)self setFriendUUID:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(ASCodableBulletin *)self setFriendListData:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(ASCodableBulletin *)self setAchievementData:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(ASCodableBulletin *)self setWorkoutData:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(ASCodableBulletin *)self setSnapshotData:?];
    v4 = v6;
  }

  v5 = *(v4 + 80);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 80);
  }

  if (v5)
  {
    self->_competitionStage = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end