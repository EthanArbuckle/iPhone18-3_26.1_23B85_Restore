@interface ATXTimelineRelevancePBTimelineRelevanceContainer
- (BOOL)isEqual:(id)a3;
- (NSString)abGroup;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsWidgetFamily:(id)a3;
- (unint64_t)hash;
- (void)addRotation:(id)a3;
- (void)addStackConfigSummary:(id)a3;
- (void)addTimelineRelevanceScore:(id)a3;
- (void)addTimelineRelevanceSuggestion:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAtLeastOnePositiveTimelineRelevanceScore:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceContainer

- (int)StringAsWidgetFamily:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIDGET_FAMILY_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WIDGET_FAMILY_SMALL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WIDGET_FAMILY_MEDIUM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIDGET_FAMILY_LARGE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WIDGET_FAMILY_EXTRA_LARGE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAtLeastOnePositiveTimelineRelevanceScore:(BOOL)a3
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

- (void)addTimelineRelevanceScore:(id)a3
{
  v4 = a3;
  timelineRelevanceScores = self->_timelineRelevanceScores;
  v8 = v4;
  if (!timelineRelevanceScores)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timelineRelevanceScores;
    self->_timelineRelevanceScores = v6;

    v4 = v8;
    timelineRelevanceScores = self->_timelineRelevanceScores;
  }

  [(NSMutableArray *)timelineRelevanceScores addObject:v4];
}

- (void)addTimelineRelevanceSuggestion:(id)a3
{
  v4 = a3;
  timelineRelevanceSuggestions = self->_timelineRelevanceSuggestions;
  v8 = v4;
  if (!timelineRelevanceSuggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timelineRelevanceSuggestions;
    self->_timelineRelevanceSuggestions = v6;

    v4 = v8;
    timelineRelevanceSuggestions = self->_timelineRelevanceSuggestions;
  }

  [(NSMutableArray *)timelineRelevanceSuggestions addObject:v4];
}

- (void)addRotation:(id)a3
{
  v4 = a3;
  rotations = self->_rotations;
  v8 = v4;
  if (!rotations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_rotations;
    self->_rotations = v6;

    v4 = v8;
    rotations = self->_rotations;
  }

  [(NSMutableArray *)rotations addObject:v4];
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

- (void)addStackConfigSummary:(id)a3
{
  v4 = a3;
  stackConfigSummarys = self->_stackConfigSummarys;
  v8 = v4;
  if (!stackConfigSummarys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stackConfigSummarys;
    self->_stackConfigSummarys = v6;

    v4 = v8;
    stackConfigSummarys = self->_stackConfigSummarys;
  }

  [(NSMutableArray *)stackConfigSummarys addObject:v4];
}

- (NSString)abGroup
{
  if (self->_abGroup)
  {
    return self->_abGroup;
  }

  else
  {
    return @"default";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceContainer;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)&v8 description];
  v5 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  widgetBundleId = self->_widgetBundleId;
  if (widgetBundleId)
  {
    [v3 setObject:widgetBundleId forKey:@"widgetBundleId"];
  }

  widgetKind = self->_widgetKind;
  if (widgetKind)
  {
    [v4 setObject:widgetKind forKey:@"widgetKind"];
  }

  containerBundleIdentifier = self->_containerBundleIdentifier;
  if (containerBundleIdentifier)
  {
    [v4 setObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];
  }

  widgetFamily = self->_widgetFamily;
  if (widgetFamily >= 5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_widgetFamily];
  }

  else
  {
    v9 = off_27859D2A8[widgetFamily];
  }

  [v4 setObject:v9 forKey:@"widgetFamily"];

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timelineDonationNilCount];
    [v4 setObject:v11 forKey:@"timelineDonationNilCount"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_atLeastOnePositiveTimelineRelevanceScore];
    [v4 setObject:v12 forKey:@"atLeastOnePositiveTimelineRelevanceScore"];
  }

  if ([(NSMutableArray *)self->_timelineRelevanceScores count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timelineRelevanceScores, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v14 = self->_timelineRelevanceScores;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"timelineRelevanceScore"];
  }

  if ([(NSMutableArray *)self->_timelineRelevanceSuggestions count])
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timelineRelevanceSuggestions, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v21 = self->_timelineRelevanceSuggestions;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v55 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"timelineRelevanceSuggestion"];
  }

  if ([(NSMutableArray *)self->_rotations count])
  {
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_rotations, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v28 = self->_rotations;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v51 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"rotation"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestamp];
    [v4 setObject:v34 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_stackConfigSummarys count])
  {
    v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_stackConfigSummarys, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = self->_stackConfigSummarys;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v47 + 1) + 8 * m) dictionaryRepresentation];
          [v35 addObject:v41];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v38);
    }

    [v4 setObject:v35 forKey:@"stackConfigSummary"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  featureVector = self->_featureVector;
  if (featureVector)
  {
    v44 = [(ATXTimelineRelevancePBFeatureVector *)featureVector dictionaryRepresentation];
    [v4 setObject:v44 forKey:@"featureVector"];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_widgetBundleId)
  {
    [ATXTimelineRelevancePBTimelineRelevanceContainer writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_widgetKind)
  {
    [ATXTimelineRelevancePBTimelineRelevanceContainer writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_containerBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  widgetFamily = self->_widgetFamily;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    timelineDonationNilCount = self->_timelineDonationNilCount;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    atLeastOnePositiveTimelineRelevanceScore = self->_atLeastOnePositiveTimelineRelevanceScore;
    PBDataWriterWriteBOOLField();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = self->_timelineRelevanceScores;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v12);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = self->_timelineRelevanceSuggestions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v18);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = self->_rotations;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v24);
  }

  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_stackConfigSummarys;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v31);
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_featureVector)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v22 = a3;
  [v22 setWidgetBundleId:self->_widgetBundleId];
  [v22 setWidgetKind:self->_widgetKind];
  if (self->_containerBundleIdentifier)
  {
    [v22 setContainerBundleIdentifier:?];
  }

  *(v22 + 22) = self->_widgetFamily;
  has = self->_has;
  if (has)
  {
    *(v22 + 1) = self->_timelineDonationNilCount;
    *(v22 + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v22 + 104) = self->_atLeastOnePositiveTimelineRelevanceScore;
    *(v22 + 108) |= 4u;
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceScoresCount])
  {
    [v22 clearTimelineRelevanceScores];
    v5 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceScoresCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceScoreAtIndex:i];
        [v22 addTimelineRelevanceScore:v8];
      }
    }
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceSuggestionsCount])
  {
    [v22 clearTimelineRelevanceSuggestions];
    v9 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceSuggestionsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self timelineRelevanceSuggestionAtIndex:j];
        [v22 addTimelineRelevanceSuggestion:v12];
      }
    }
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceContainer *)self rotationsCount])
  {
    [v22 clearRotations];
    v13 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self rotationsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self rotationAtIndex:k];
        [v22 addRotation:v16];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v22 + 2) = self->_timestamp;
    *(v22 + 108) |= 2u;
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceContainer *)self stackConfigSummarysCount])
  {
    [v22 clearStackConfigSummarys];
    v17 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self stackConfigSummarysCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self stackConfigSummaryAtIndex:m];
        [v22 addStackConfigSummary:v20];
      }
    }
  }

  if (self->_abGroup)
  {
    [v22 setAbGroup:?];
  }

  v21 = v22;
  if (self->_featureVector)
  {
    [v22 setFeatureVector:?];
    v21 = v22;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_widgetBundleId copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_widgetKind copyWithZone:a3];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v10 = [(NSString *)self->_containerBundleIdentifier copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 88) = self->_widgetFamily;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timelineDonationNilCount;
    *(v5 + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 104) = self->_atLeastOnePositiveTimelineRelevanceScore;
    *(v5 + 108) |= 4u;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = self->_timelineRelevanceScores;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v56;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v55 + 1) + 8 * i) copyWithZone:a3];
        [v5 addTimelineRelevanceScore:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v15);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = self->_timelineRelevanceSuggestions;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v52;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v52 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v51 + 1) + 8 * j) copyWithZone:a3];
        [v5 addTimelineRelevanceSuggestion:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v21);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = self->_rotations;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v48;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v47 + 1) + 8 * k) copyWithZone:a3];
        [v5 addRotation:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v27);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 108) |= 2u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = self->_stackConfigSummarys;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v43 + 1) + 8 * m) copyWithZone:{a3, v43}];
        [v5 addStackConfigSummary:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v33);
  }

  v37 = [(NSString *)self->_abGroup copyWithZone:a3];
  v38 = *(v5 + 24);
  *(v5 + 24) = v37;

  v39 = [(ATXTimelineRelevancePBFeatureVector *)self->_featureVector copyWithZone:a3];
  v40 = *(v5 + 40);
  *(v5 + 40) = v39;

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  widgetBundleId = self->_widgetBundleId;
  if (widgetBundleId | *(v4 + 10))
  {
    if (![(NSString *)widgetBundleId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  widgetKind = self->_widgetKind;
  if (widgetKind | *(v4 + 12))
  {
    if (![(NSString *)widgetKind isEqual:?])
    {
      goto LABEL_26;
    }
  }

  containerBundleIdentifier = self->_containerBundleIdentifier;
  if (containerBundleIdentifier | *(v4 + 4))
  {
    if (![(NSString *)containerBundleIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (self->_widgetFamily != *(v4 + 22))
  {
    goto LABEL_26;
  }

  v8 = *(v4 + 108);
  if (*&self->_has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_timelineDonationNilCount != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 108) & 4) == 0)
    {
      goto LABEL_26;
    }

    v15 = *(v4 + 104);
    if (self->_atLeastOnePositiveTimelineRelevanceScore)
    {
      if ((*(v4 + 104) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 104))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 108) & 4) != 0)
  {
    goto LABEL_26;
  }

  timelineRelevanceScores = self->_timelineRelevanceScores;
  if (timelineRelevanceScores | *(v4 + 8) && ![(NSMutableArray *)timelineRelevanceScores isEqual:?])
  {
    goto LABEL_26;
  }

  timelineRelevanceSuggestions = self->_timelineRelevanceSuggestions;
  if (timelineRelevanceSuggestions | *(v4 + 9))
  {
    if (![(NSMutableArray *)timelineRelevanceSuggestions isEqual:?])
    {
      goto LABEL_26;
    }
  }

  rotations = self->_rotations;
  if (rotations | *(v4 + 6))
  {
    if (![(NSMutableArray *)rotations isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v12 = *(v4 + 108);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 108) & 2) == 0)
    {
      goto LABEL_35;
    }

LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 108) & 2) == 0 || self->_timestamp != *(v4 + 2))
  {
    goto LABEL_26;
  }

LABEL_35:
  stackConfigSummarys = self->_stackConfigSummarys;
  if (stackConfigSummarys | *(v4 + 7) && ![(NSMutableArray *)stackConfigSummarys isEqual:?])
  {
    goto LABEL_26;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 3))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_26;
    }
  }

  featureVector = self->_featureVector;
  if (featureVector | *(v4 + 5))
  {
    v13 = [(ATXTimelineRelevancePBFeatureVector *)featureVector isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_27:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_widgetBundleId hash];
  v4 = [(NSString *)self->_widgetKind hash];
  v5 = [(NSString *)self->_containerBundleIdentifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_timelineDonationNilCount;
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_atLeastOnePositiveTimelineRelevanceScore;
  }

  else
  {
    v7 = 0;
  }

  widgetFamily = self->_widgetFamily;
  v9 = [(NSMutableArray *)self->_timelineRelevanceScores hash];
  v10 = [(NSMutableArray *)self->_timelineRelevanceSuggestions hash];
  v11 = [(NSMutableArray *)self->_rotations hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_timestamp;
  }

  else
  {
    v12 = 0;
  }

  v13 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ (2654435761 * widgetFamily);
  v14 = v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_stackConfigSummarys hash];
  v15 = v13 ^ v14 ^ [(NSString *)self->_abGroup hash];
  return v15 ^ [(ATXTimelineRelevancePBFeatureVector *)self->_featureVector hash];
}

- (void)mergeFrom:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 10))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self setWidgetBundleId:?];
  }

  if (*(v4 + 12))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self setWidgetKind:?];
  }

  if (*(v4 + 4))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self setContainerBundleIdentifier:?];
  }

  self->_widgetFamily = *(v4 + 22);
  v5 = *(v4 + 108);
  if (v5)
  {
    self->_timelineDonationNilCount = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 108);
  }

  if ((v5 & 4) != 0)
  {
    self->_atLeastOnePositiveTimelineRelevanceScore = *(v4 + 104);
    *&self->_has |= 4u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = *(v4 + 8);
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self addTimelineRelevanceScore:*(*(&v41 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = *(v4 + 9);
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self addTimelineRelevanceSuggestion:*(*(&v37 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = *(v4 + 6);
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self addRotation:*(*(&v33 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v18);
  }

  if ((*(v4 + 108) & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = *(v4 + 7);
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self addStackConfigSummary:*(*(&v29 + 1) + 8 * m), v29];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v23);
  }

  if (*(v4 + 3))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self setAbGroup:?];
  }

  featureVector = self->_featureVector;
  v27 = *(v4 + 5);
  if (featureVector)
  {
    if (v27)
    {
      [(ATXTimelineRelevancePBFeatureVector *)featureVector mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(ATXTimelineRelevancePBTimelineRelevanceContainer *)self setFeatureVector:?];
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end