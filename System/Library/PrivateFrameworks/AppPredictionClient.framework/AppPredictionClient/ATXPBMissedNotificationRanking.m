@interface ATXPBMissedNotificationRanking
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)addRankedGroups:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBMissedNotificationRanking

- (id)initFromJSON:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXPBMissedNotificationRanking *)self init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"timestamp"];
    [v7 doubleValue];
    [(ATXPBMissedNotificationRanking *)v5 setTimestamp:?];

    v8 = [v6 objectForKeyedSubscript:@"uuid"];
    v9 = [ATXJSONHelper unwrapObject:v8];
    [(ATXPBMissedNotificationRanking *)v5 setUuid:v9];

    v10 = [v6 objectForKeyedSubscript:@"rankerId"];
    v11 = [ATXJSONHelper unwrapObject:v10];
    [(ATXPBMissedNotificationRanking *)v5 setRankerId:v11];

    v12 = [v6 objectForKeyedSubscript:@"modeId"];
    v13 = [ATXJSONHelper unwrapObject:v12];
    [(ATXPBMissedNotificationRanking *)v5 setModeId:v13];

    v14 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
    v15 = [ATXJSONHelper unwrapObject:v14];

    if (v15)
    {
      v16 = [ATXPBSharedDigestEngagementTrackingMetrics alloc];
      v17 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
      v18 = [ATXJSONHelper unwrapObject:v17];
      v19 = [(ATXPBSharedDigestEngagementTrackingMetrics *)v16 initFromJSON:v18];
      [(ATXPBMissedNotificationRanking *)v5 setSharedEngagementTracker:v19];
    }

    v20 = [v6 objectForKeyedSubscript:@"digestTimeline"];
    v21 = [ATXJSONHelper unwrapObject:v20];

    if (v21)
    {
      v22 = [ATXPBDigestTimeline alloc];
      v23 = [v6 objectForKeyedSubscript:@"digestTimeline"];
      v24 = [ATXJSONHelper unwrapObject:v23];
      v25 = [(ATXPBDigestTimeline *)v22 initFromJSON:v24];
      [(ATXPBMissedNotificationRanking *)v5 setDigestTimeline:v25];
    }

    v26 = [v6 objectForKeyedSubscript:@"rankedGroups"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        v30 = 0;
        do
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v33 + 1) + 8 * v30)];
          [(ATXPBMissedNotificationRanking *)v5 addRankedGroups:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v28);
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v19[7] = *MEMORY[0x1E69E9840];
  v18[0] = @"timestamp";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v16 = [ATXJSONHelper wrapObject:v17];
  v19[0] = v16;
  v18[1] = @"uuid";
  v15 = [ATXJSONHelper wrapObject:self->_uuid];
  v19[1] = v15;
  v18[2] = @"rankerId";
  v14 = [ATXJSONHelper wrapObject:self->_rankerId];
  v19[2] = v14;
  v18[3] = @"modeId";
  v3 = [ATXJSONHelper wrapObject:self->_modeId];
  v19[3] = v3;
  v18[4] = @"sharedDigestEngagementTracker";
  v4 = [(ATXPBMissedNotificationRanking *)self sharedEngagementTracker];
  v5 = [v4 jsonRepresentation];
  v6 = [ATXJSONHelper wrapObject:v5];
  v19[4] = v6;
  v18[5] = @"digestTimeline";
  v7 = [(ATXPBMissedNotificationRanking *)self digestTimeline];
  v8 = [v7 jsonRepresentation];
  v9 = [ATXJSONHelper wrapObject:v8];
  v19[5] = v9;
  v18[6] = @"rankedGroups";
  v10 = [(NSMutableArray *)self->_rankedGroups _pas_mappedArrayWithTransform:&__block_literal_global_14];
  v11 = [ATXJSONHelper wrapObject:v10];
  v19[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];

  return v12;
}

- (void)addRankedGroups:(id)a3
{
  v4 = a3;
  rankedGroups = self->_rankedGroups;
  v8 = v4;
  if (!rankedGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rankedGroups;
    self->_rankedGroups = v6;

    v4 = v8;
    rankedGroups = self->_rankedGroups;
  }

  [(NSMutableArray *)rankedGroups addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBMissedNotificationRanking;
  v4 = [(ATXPBMissedNotificationRanking *)&v8 description];
  v5 = [(ATXPBMissedNotificationRanking *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  rankerId = self->_rankerId;
  if (rankerId)
  {
    [v3 setObject:rankerId forKey:@"rankerId"];
  }

  modeId = self->_modeId;
  if (modeId)
  {
    [v3 setObject:modeId forKey:@"modeId"];
  }

  if ([(NSMutableArray *)self->_rankedGroups count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rankedGroups, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_rankedGroups;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"rankedGroups"];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker)
  {
    v16 = [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"sharedEngagementTracker"];
  }

  digestTimeline = self->_digestTimeline;
  if (digestTimeline)
  {
    v18 = [(ATXPBDigestTimeline *)digestTimeline dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"digestTimeline"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_rankedGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_rankerId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modeId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sharedEngagementTracker)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_digestTimeline)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_timestamp;
    *(v4 + 64) |= 1u;
  }

  v10 = v4;
  if ([(ATXPBMissedNotificationRanking *)self rankedGroupsCount])
  {
    [v10 clearRankedGroups];
    v5 = [(ATXPBMissedNotificationRanking *)self rankedGroupsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBMissedNotificationRanking *)self rankedGroupsAtIndex:i];
        [v10 addRankedGroups:v8];
      }
    }
  }

  if (self->_uuid)
  {
    [v10 setUuid:?];
  }

  v9 = v10;
  if (self->_rankerId)
  {
    [v10 setRankerId:?];
    v9 = v10;
  }

  if (self->_modeId)
  {
    [v10 setModeId:?];
    v9 = v10;
  }

  if (self->_sharedEngagementTracker)
  {
    [v10 setSharedEngagementTracker:?];
    v9 = v10;
  }

  if (self->_digestTimeline)
  {
    [v10 setDigestTimeline:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_rankedGroups;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * v11) copyWithZone:{a3, v24}];
        [v6 addRankedGroups:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_uuid copyWithZone:a3];
  v14 = v6[7];
  v6[7] = v13;

  v15 = [(NSString *)self->_rankerId copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(NSString *)self->_modeId copyWithZone:a3];
  v18 = v6[3];
  v6[3] = v17;

  v19 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker copyWithZone:a3];
  v20 = v6[6];
  v6[6] = v19;

  v21 = [(ATXPBDigestTimeline *)self->_digestTimeline copyWithZone:a3];
  v22 = v6[2];
  v6[2] = v21;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  rankedGroups = self->_rankedGroups;
  if (rankedGroups | *(v4 + 4) && ![(NSMutableArray *)rankedGroups isEqual:?])
  {
    goto LABEL_19;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_19;
    }
  }

  rankerId = self->_rankerId;
  if (rankerId | *(v4 + 5))
  {
    if (![(NSString *)rankerId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  modeId = self->_modeId;
  if (modeId | *(v4 + 3))
  {
    if (![(NSString *)modeId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker | *(v4 + 6))
  {
    if (![(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker isEqual:?])
    {
      goto LABEL_19;
    }
  }

  digestTimeline = self->_digestTimeline;
  if (digestTimeline | *(v4 + 2))
  {
    v11 = [(ATXPBDigestTimeline *)digestTimeline isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
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

  v9 = [(NSMutableArray *)self->_rankedGroups hash]^ v5;
  v10 = [(NSString *)self->_uuid hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_rankerId hash];
  v12 = [(NSString *)self->_modeId hash];
  v13 = v12 ^ [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker hash];
  return v11 ^ v13 ^ [(ATXPBDigestTimeline *)self->_digestTimeline hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 64))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(v4 + 4);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBMissedNotificationRanking *)self addRankedGroups:*(*(&v15 + 1) + 8 * i), v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (v5[7])
  {
    [(ATXPBMissedNotificationRanking *)self setUuid:?];
  }

  if (v5[5])
  {
    [(ATXPBMissedNotificationRanking *)self setRankerId:?];
  }

  if (v5[3])
  {
    [(ATXPBMissedNotificationRanking *)self setModeId:?];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  v12 = v5[6];
  if (sharedEngagementTracker)
  {
    if (v12)
    {
      [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ATXPBMissedNotificationRanking *)self setSharedEngagementTracker:?];
  }

  digestTimeline = self->_digestTimeline;
  v14 = v5[2];
  if (digestTimeline)
  {
    if (v14)
    {
      [(ATXPBDigestTimeline *)digestTimeline mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(ATXPBMissedNotificationRanking *)self setDigestTimeline:?];
  }
}

@end