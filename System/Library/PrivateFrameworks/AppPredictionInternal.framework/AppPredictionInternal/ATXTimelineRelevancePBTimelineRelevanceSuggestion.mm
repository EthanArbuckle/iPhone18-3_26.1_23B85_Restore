@interface ATXTimelineRelevancePBTimelineRelevanceSuggestion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAbuseControlOutcome:(id)a3;
- (void)addTimelineRelevanceScoreEntry:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceSuggestion

- (void)addAbuseControlOutcome:(id)a3
{
  v4 = a3;
  abuseControlOutcomes = self->_abuseControlOutcomes;
  v8 = v4;
  if (!abuseControlOutcomes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_abuseControlOutcomes;
    self->_abuseControlOutcomes = v6;

    v4 = v8;
    abuseControlOutcomes = self->_abuseControlOutcomes;
  }

  [(NSMutableArray *)abuseControlOutcomes addObject:v4];
}

- (void)addTimelineRelevanceScoreEntry:(id)a3
{
  v4 = a3;
  timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
  v8 = v4;
  if (!timelineRelevanceScoreEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timelineRelevanceScoreEntrys;
    self->_timelineRelevanceScoreEntrys = v6;

    v4 = v8;
    timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
  }

  [(NSMutableArray *)timelineRelevanceScoreEntrys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceSuggestion;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)&v8 description];
  v5 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  suggestionID = self->_suggestionID;
  if (suggestionID)
  {
    [v3 setObject:suggestionID forKey:@"suggestionID"];
  }

  if ([(NSMutableArray *)self->_abuseControlOutcomes count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_abuseControlOutcomes, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_abuseControlOutcomes;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"abuseControlOutcome"];
  }

  if ([(NSMutableArray *)self->_timelineRelevanceScoreEntrys count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timelineRelevanceScoreEntrys, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_timelineRelevanceScoreEntrys;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"timelineRelevanceScoreEntry"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_suggestionID)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_abuseControlOutcomes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_timelineRelevanceScoreEntrys;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_suggestionID)
  {
    [v12 setSuggestionID:?];
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomesCount])
  {
    [v12 clearAbuseControlOutcomes];
    v4 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomeAtIndex:i];
        [v12 addAbuseControlOutcome:v7];
      }
    }
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntrysCount])
  {
    [v12 clearTimelineRelevanceScoreEntrys];
    v8 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntrysCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntryAtIndex:j];
        [v12 addTimelineRelevanceScoreEntry:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_suggestionID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_abuseControlOutcomes;
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
        [v5 addAbuseControlOutcome:v13];

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
  v14 = self->_timelineRelevanceScoreEntrys;
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
        [v5 addTimelineRelevanceScoreEntry:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((suggestionID = self->_suggestionID, !(suggestionID | v4[2])) || -[NSString isEqual:](suggestionID, "isEqual:")) && ((abuseControlOutcomes = self->_abuseControlOutcomes, !(abuseControlOutcomes | v4[1])) || -[NSMutableArray isEqual:](abuseControlOutcomes, "isEqual:")))
  {
    timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
    if (timelineRelevanceScoreEntrys | v4[3])
    {
      v8 = [(NSMutableArray *)timelineRelevanceScoreEntrys isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_suggestionID hash];
  v4 = [(NSMutableArray *)self->_abuseControlOutcomes hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_timelineRelevanceScoreEntrys hash];
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self setSuggestionID:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self addAbuseControlOutcome:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self addTimelineRelevanceScoreEntry:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end