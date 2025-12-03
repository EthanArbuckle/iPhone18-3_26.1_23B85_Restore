@interface ATXPBUserNotificationDigest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)addAppDigests:(id)digests;
- (void)addHighlightedGroups:(id)groups;
- (void)addMessageGroups:(id)groups;
- (void)addRankedGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotificationDigest

- (void)addMessageGroups:(id)groups
{
  groupsCopy = groups;
  messageGroups = self->_messageGroups;
  v8 = groupsCopy;
  if (!messageGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_messageGroups;
    self->_messageGroups = v6;

    groupsCopy = v8;
    messageGroups = self->_messageGroups;
  }

  [(NSMutableArray *)messageGroups addObject:groupsCopy];
}

- (void)addHighlightedGroups:(id)groups
{
  groupsCopy = groups;
  highlightedGroups = self->_highlightedGroups;
  v8 = groupsCopy;
  if (!highlightedGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_highlightedGroups;
    self->_highlightedGroups = v6;

    groupsCopy = v8;
    highlightedGroups = self->_highlightedGroups;
  }

  [(NSMutableArray *)highlightedGroups addObject:groupsCopy];
}

- (void)addRankedGroups:(id)groups
{
  groupsCopy = groups;
  rankedGroups = self->_rankedGroups;
  v8 = groupsCopy;
  if (!rankedGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rankedGroups;
    self->_rankedGroups = v6;

    groupsCopy = v8;
    rankedGroups = self->_rankedGroups;
  }

  [(NSMutableArray *)rankedGroups addObject:groupsCopy];
}

- (void)addAppDigests:(id)digests
{
  digestsCopy = digests;
  appDigests = self->_appDigests;
  v8 = digestsCopy;
  if (!appDigests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_appDigests;
    self->_appDigests = v6;

    digestsCopy = v8;
    appDigests = self->_appDigests;
  }

  [(NSMutableArray *)appDigests addObject:digestsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotificationDigest;
  v4 = [(ATXPBUserNotificationDigest *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotificationDigest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v61 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  rankerId = self->_rankerId;
  if (rankerId)
  {
    [dictionary setObject:rankerId forKey:@"rankerId"];
  }

  modeId = self->_modeId;
  if (modeId)
  {
    [dictionary setObject:modeId forKey:@"modeId"];
  }

  if ([(NSMutableArray *)self->_messageGroups count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_messageGroups, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v9 = self->_messageGroups;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v53 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"messageGroups"];
  }

  if ([(NSMutableArray *)self->_highlightedGroups count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_highlightedGroups, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = self->_highlightedGroups;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v49 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation2];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"highlightedGroups"];
  }

  if ([(NSMutableArray *)self->_rankedGroups count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rankedGroups, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = self->_rankedGroups;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v45 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation3];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKey:@"rankedGroups"];
  }

  if ([(NSMutableArray *)self->_appDigests count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_appDigests, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = self->_appDigests;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v42;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation4 = [*(*(&v41 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation4];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"appDigests"];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker)
  {
    dictionaryRepresentation5 = [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"sharedEngagementTracker"];
  }

  digestTimeline = self->_digestTimeline;
  if (digestTimeline)
  {
    dictionaryRepresentation6 = [(ATXPBDigestTimeline *)digestTimeline dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"digestTimeline"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_messageGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_highlightedGroups;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_rankedGroups;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
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

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_appDigests;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_timestamp;
    *(toCopy + 88) |= 1u;
  }

  v21 = toCopy;
  if ([(ATXPBUserNotificationDigest *)self messageGroupsCount])
  {
    [v21 clearMessageGroups];
    messageGroupsCount = [(ATXPBUserNotificationDigest *)self messageGroupsCount];
    if (messageGroupsCount)
    {
      v6 = messageGroupsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBUserNotificationDigest *)self messageGroupsAtIndex:i];
        [v21 addMessageGroups:v8];
      }
    }
  }

  if ([(ATXPBUserNotificationDigest *)self highlightedGroupsCount])
  {
    [v21 clearHighlightedGroups];
    highlightedGroupsCount = [(ATXPBUserNotificationDigest *)self highlightedGroupsCount];
    if (highlightedGroupsCount)
    {
      v10 = highlightedGroupsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(ATXPBUserNotificationDigest *)self highlightedGroupsAtIndex:j];
        [v21 addHighlightedGroups:v12];
      }
    }
  }

  if ([(ATXPBUserNotificationDigest *)self rankedGroupsCount])
  {
    [v21 clearRankedGroups];
    rankedGroupsCount = [(ATXPBUserNotificationDigest *)self rankedGroupsCount];
    if (rankedGroupsCount)
    {
      v14 = rankedGroupsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(ATXPBUserNotificationDigest *)self rankedGroupsAtIndex:k];
        [v21 addRankedGroups:v16];
      }
    }
  }

  if (self->_uuid)
  {
    [v21 setUuid:?];
  }

  if (self->_rankerId)
  {
    [v21 setRankerId:?];
  }

  if (self->_modeId)
  {
    [v21 setModeId:?];
  }

  if (self->_sharedEngagementTracker)
  {
    [v21 setSharedEngagementTracker:?];
  }

  if (self->_digestTimeline)
  {
    [v21 setDigestTimeline:?];
  }

  if ([(ATXPBUserNotificationDigest *)self appDigestsCount])
  {
    [v21 clearAppDigests];
    appDigestsCount = [(ATXPBUserNotificationDigest *)self appDigestsCount];
    if (appDigestsCount)
    {
      v18 = appDigestsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(ATXPBUserNotificationDigest *)self appDigestsAtIndex:m];
        [v21 addAppDigests:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 88) |= 1u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = self->_messageGroups;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v54 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addMessageGroups:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v9);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_highlightedGroups;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      v17 = 0;
      do
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v50 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addHighlightedGroups:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = self->_rankedGroups;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    do
    {
      v23 = 0;
      do
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v46 + 1) + 8 * v23) copyWithZone:zone];
        [v6 addRankedGroups:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v21);
  }

  v25 = [(NSString *)self->_uuid copyWithZone:zone];
  v26 = v6[10];
  v6[10] = v25;

  v27 = [(NSString *)self->_rankerId copyWithZone:zone];
  v28 = v6[8];
  v6[8] = v27;

  v29 = [(NSString *)self->_modeId copyWithZone:zone];
  v30 = v6[6];
  v6[6] = v29;

  v31 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker copyWithZone:zone];
  v32 = v6[9];
  v6[9] = v31;

  v33 = [(ATXPBDigestTimeline *)self->_digestTimeline copyWithZone:zone];
  v34 = v6[3];
  v6[3] = v33;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = self->_appDigests;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v43;
    do
    {
      v39 = 0;
      do
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v42 + 1) + 8 * v39) copyWithZone:{zone, v42}];
        [v6 addAppDigests:v40];

        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v37);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  messageGroups = self->_messageGroups;
  if (messageGroups | *(equalCopy + 5) && ![(NSMutableArray *)messageGroups isEqual:?])
  {
    goto LABEL_25;
  }

  highlightedGroups = self->_highlightedGroups;
  if (highlightedGroups | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)highlightedGroups isEqual:?])
    {
      goto LABEL_25;
    }
  }

  rankedGroups = self->_rankedGroups;
  if (rankedGroups | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)rankedGroups isEqual:?])
    {
      goto LABEL_25;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 10))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_25;
    }
  }

  rankerId = self->_rankerId;
  if (rankerId | *(equalCopy + 8))
  {
    if (![(NSString *)rankerId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  modeId = self->_modeId;
  if (modeId | *(equalCopy + 6))
  {
    if (![(NSString *)modeId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker | *(equalCopy + 9))
  {
    if (![(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker isEqual:?])
    {
      goto LABEL_25;
    }
  }

  digestTimeline = self->_digestTimeline;
  if (digestTimeline | *(equalCopy + 3))
  {
    if (![(ATXPBDigestTimeline *)digestTimeline isEqual:?])
    {
      goto LABEL_25;
    }
  }

  appDigests = self->_appDigests;
  if (appDigests | *(equalCopy + 2))
  {
    v14 = [(NSMutableArray *)appDigests isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_26:

  return v14;
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

  v9 = [(NSMutableArray *)self->_messageGroups hash]^ v5;
  v10 = [(NSMutableArray *)self->_highlightedGroups hash];
  v11 = v9 ^ v10 ^ [(NSMutableArray *)self->_rankedGroups hash];
  v12 = [(NSString *)self->_uuid hash];
  v13 = v12 ^ [(NSString *)self->_rankerId hash];
  v14 = v11 ^ v13 ^ [(NSString *)self->_modeId hash];
  v15 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker hash];
  v16 = v15 ^ [(ATXPBDigestTimeline *)self->_digestTimeline hash];
  return v14 ^ v16 ^ [(NSMutableArray *)self->_appDigests hash];
}

- (void)mergeFrom:(id)from
{
  v50 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 88))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = *(fromCopy + 5);
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBUserNotificationDigest *)self addMessageGroups:*(*(&v42 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v5[4];
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ATXPBUserNotificationDigest *)self addHighlightedGroups:*(*(&v38 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v5[7];
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ATXPBUserNotificationDigest *)self addRankedGroups:*(*(&v34 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v18);
  }

  if (v5[10])
  {
    [(ATXPBUserNotificationDigest *)self setUuid:?];
  }

  if (v5[8])
  {
    [(ATXPBUserNotificationDigest *)self setRankerId:?];
  }

  if (v5[6])
  {
    [(ATXPBUserNotificationDigest *)self setModeId:?];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  v22 = v5[9];
  if (sharedEngagementTracker)
  {
    if (v22)
    {
      [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(ATXPBUserNotificationDigest *)self setSharedEngagementTracker:?];
  }

  digestTimeline = self->_digestTimeline;
  v24 = v5[3];
  if (digestTimeline)
  {
    if (v24)
    {
      [(ATXPBDigestTimeline *)digestTimeline mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(ATXPBUserNotificationDigest *)self setDigestTimeline:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v5[2];
  v26 = [v25 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(ATXPBUserNotificationDigest *)self addAppDigests:*(*(&v30 + 1) + 8 * m), v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v27);
  }
}

- (id)initFromJSON:(id)n
{
  v73 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v5 = [(ATXPBUserNotificationDigest *)self init];
  if (v5)
  {
    v6 = nCopy;
    v7 = [v6 objectForKeyedSubscript:@"timestamp"];
    [v7 doubleValue];
    [(ATXPBUserNotificationDigest *)v5 setTimestamp:?];

    v8 = [v6 objectForKeyedSubscript:@"uuid"];
    v9 = [ATXJSONHelper unwrapObject:v8];
    [(ATXPBUserNotificationDigest *)v5 setUuid:v9];

    v10 = [v6 objectForKeyedSubscript:@"rankerId"];
    v11 = [ATXJSONHelper unwrapObject:v10];
    [(ATXPBUserNotificationDigest *)v5 setRankerId:v11];

    v12 = [v6 objectForKeyedSubscript:@"modeId"];
    v13 = [ATXJSONHelper unwrapObject:v12];
    [(ATXPBUserNotificationDigest *)v5 setModeId:v13];

    v14 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
    v15 = [ATXJSONHelper unwrapObject:v14];

    if (v15)
    {
      v16 = [ATXPBSharedDigestEngagementTrackingMetrics alloc];
      v17 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
      v18 = [ATXJSONHelper unwrapObject:v17];
      v19 = [(ATXPBSharedDigestEngagementTrackingMetrics *)v16 initFromJSON:v18];
      [(ATXPBUserNotificationDigest *)v5 setSharedEngagementTracker:v19];
    }

    v52 = nCopy;
    v20 = [v6 objectForKeyedSubscript:@"digestTimeline"];
    v21 = [ATXJSONHelper unwrapObject:v20];

    if (v21)
    {
      v22 = [ATXPBDigestTimeline alloc];
      v23 = [v6 objectForKeyedSubscript:@"digestTimeline"];
      v24 = [ATXJSONHelper unwrapObject:v23];
      v25 = [(ATXPBDigestTimeline *)v22 initFromJSON:v24];
      [(ATXPBUserNotificationDigest *)v5 setDigestTimeline:v25];
    }

    v26 = [v6 objectForKeyedSubscript:@"messageGroups"];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v66;
      do
      {
        v30 = 0;
        do
        {
          if (*v66 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v65 + 1) + 8 * v30)];
          [(ATXPBUserNotificationDigest *)v5 addMessageGroups:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v28);
    }

    v32 = [v6 objectForKeyedSubscript:@"highlightedGroups"];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v62;
      do
      {
        v36 = 0;
        do
        {
          if (*v62 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v61 + 1) + 8 * v36)];
          [(ATXPBUserNotificationDigest *)v5 addHighlightedGroups:v37];

          ++v36;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v34);
    }

    v38 = [v6 objectForKeyedSubscript:@"rankedGroups"];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        v42 = 0;
        do
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v57 + 1) + 8 * v42)];
          [(ATXPBUserNotificationDigest *)v5 addRankedGroups:v43];

          ++v42;
        }

        while (v40 != v42);
        v40 = [v38 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v40);
    }

    v44 = [v6 objectForKeyedSubscript:{@"appDigests", v6}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v54;
      do
      {
        v48 = 0;
        do
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = [[ATXPBUserNotificationAppDigest alloc] initFromJSON:*(*(&v53 + 1) + 8 * v48)];
          [(ATXPBUserNotificationDigest *)v5 addAppDigests:v49];

          ++v48;
        }

        while (v46 != v48);
        v46 = [v44 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v46);
    }

    nCopy = v52;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v25[10] = *MEMORY[0x1E69E9840];
  v24[0] = @"timestamp";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v22 = [ATXJSONHelper wrapObject:v23];
  v25[0] = v22;
  v24[1] = @"uuid";
  v21 = [ATXJSONHelper wrapObject:self->_uuid];
  v25[1] = v21;
  v24[2] = @"rankerId";
  v20 = [ATXJSONHelper wrapObject:self->_rankerId];
  v25[2] = v20;
  v24[3] = @"modeId";
  v19 = [ATXJSONHelper wrapObject:self->_modeId];
  v25[3] = v19;
  v24[4] = @"sharedDigestEngagementTracker";
  sharedEngagementTracker = [(ATXPBUserNotificationDigest *)self sharedEngagementTracker];
  jsonRepresentation = [sharedEngagementTracker jsonRepresentation];
  v16 = [ATXJSONHelper wrapObject:jsonRepresentation];
  v25[4] = v16;
  v24[5] = @"digestTimeline";
  digestTimeline = [(ATXPBUserNotificationDigest *)self digestTimeline];
  jsonRepresentation2 = [digestTimeline jsonRepresentation];
  v3 = [ATXJSONHelper wrapObject:jsonRepresentation2];
  v25[5] = v3;
  v24[6] = @"messageGroups";
  v4 = [(NSMutableArray *)self->_messageGroups _pas_mappedArrayWithTransform:&__block_literal_global_93];
  v5 = [ATXJSONHelper wrapObject:v4];
  v25[6] = v5;
  v24[7] = @"highlightedGroups";
  v6 = [(NSMutableArray *)self->_highlightedGroups _pas_mappedArrayWithTransform:&__block_literal_global_41_0];
  v7 = [ATXJSONHelper wrapObject:v6];
  v25[7] = v7;
  v24[8] = @"rankedGroups";
  v8 = [(NSMutableArray *)self->_rankedGroups _pas_mappedArrayWithTransform:&__block_literal_global_43];
  v9 = [ATXJSONHelper wrapObject:v8];
  v25[8] = v9;
  v24[9] = @"appDigests";
  v10 = [(NSMutableArray *)self->_appDigests _pas_mappedArrayWithTransform:&__block_literal_global_46_2];
  v11 = [ATXJSONHelper wrapObject:v10];
  v25[9] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v12;
}

@end