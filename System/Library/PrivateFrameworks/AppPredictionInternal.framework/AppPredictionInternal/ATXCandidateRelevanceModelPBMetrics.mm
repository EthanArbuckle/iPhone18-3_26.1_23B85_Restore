@interface ATXCandidateRelevanceModelPBMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCandidateMetrics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXCandidateRelevanceModelPBMetrics

- (void)addCandidateMetrics:(id)a3
{
  v4 = a3;
  candidateMetrics = self->_candidateMetrics;
  v8 = v4;
  if (!candidateMetrics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_candidateMetrics;
    self->_candidateMetrics = v6;

    v4 = v8;
    candidateMetrics = self->_candidateMetrics;
  }

  [(NSMutableArray *)candidateMetrics addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXCandidateRelevanceModelPBMetrics;
  v4 = [(ATXCandidateRelevanceModelPBMetrics *)&v8 description];
  v5 = [(ATXCandidateRelevanceModelPBMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  modelMetrics = self->_modelMetrics;
  if (modelMetrics)
  {
    v5 = [(ATXCandidateRelevanceModelPBModelMetrics *)modelMetrics dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"modelMetrics"];
  }

  evaluationMetricsOneWeekAgo = self->_evaluationMetricsOneWeekAgo;
  if (evaluationMetricsOneWeekAgo)
  {
    v7 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsOneWeekAgo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"evaluationMetricsOneWeekAgo"];
  }

  evaluationMetricsTwoWeeksAgo = self->_evaluationMetricsTwoWeeksAgo;
  if (evaluationMetricsTwoWeeksAgo)
  {
    v9 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsTwoWeeksAgo dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"evaluationMetricsTwoWeeksAgo"];
  }

  evaluationMetricsThreeWeeksAgo = self->_evaluationMetricsThreeWeeksAgo;
  if (evaluationMetricsThreeWeeksAgo)
  {
    v11 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsThreeWeeksAgo dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"evaluationMetricsThreeWeeksAgo"];
  }

  evaluationMetricsFourWeeksAgo = self->_evaluationMetricsFourWeeksAgo;
  if (evaluationMetricsFourWeeksAgo)
  {
    v13 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsFourWeeksAgo dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"evaluationMetricsFourWeeksAgo"];
  }

  evaluationMetricsLastFourWeeks = self->_evaluationMetricsLastFourWeeks;
  if (evaluationMetricsLastFourWeeks)
  {
    v15 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsLastFourWeeks dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"evaluationMetricsLastFourWeeks"];
  }

  if ([(NSMutableArray *)self->_candidateMetrics count])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_candidateMetrics, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_candidateMetrics;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKey:@"candidateMetrics"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_modelMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetricsOneWeekAgo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetricsTwoWeeksAgo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetricsThreeWeeksAgo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetricsFourWeeksAgo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetricsLastFourWeeks)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_candidateMetrics;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_modelMetrics)
  {
    [v8 setModelMetrics:?];
  }

  if (self->_evaluationMetricsOneWeekAgo)
  {
    [v8 setEvaluationMetricsOneWeekAgo:?];
  }

  if (self->_evaluationMetricsTwoWeeksAgo)
  {
    [v8 setEvaluationMetricsTwoWeeksAgo:?];
  }

  if (self->_evaluationMetricsThreeWeeksAgo)
  {
    [v8 setEvaluationMetricsThreeWeeksAgo:?];
  }

  if (self->_evaluationMetricsFourWeeksAgo)
  {
    [v8 setEvaluationMetricsFourWeeksAgo:?];
  }

  if (self->_evaluationMetricsLastFourWeeks)
  {
    [v8 setEvaluationMetricsLastFourWeeks:?];
  }

  if ([(ATXCandidateRelevanceModelPBMetrics *)self candidateMetricsCount])
  {
    [v8 clearCandidateMetrics];
    v4 = [(ATXCandidateRelevanceModelPBMetrics *)self candidateMetricsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXCandidateRelevanceModelPBMetrics *)self candidateMetricsAtIndex:i];
        [v8 addCandidateMetrics:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ATXCandidateRelevanceModelPBModelMetrics *)self->_modelMetrics copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsOneWeekAgo copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsTwoWeeksAgo copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsThreeWeeksAgo copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsFourWeeksAgo copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsLastFourWeeks copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_candidateMetrics;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{a3, v26}];
        [v5 addCandidateMetrics:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((modelMetrics = self->_modelMetrics, !(modelMetrics | v4[7])) || -[ATXCandidateRelevanceModelPBModelMetrics isEqual:](modelMetrics, "isEqual:")) && ((evaluationMetricsOneWeekAgo = self->_evaluationMetricsOneWeekAgo, !(evaluationMetricsOneWeekAgo | v4[4])) || -[ATXCandidateRelevanceModelPBEvaluationMetrics isEqual:](evaluationMetricsOneWeekAgo, "isEqual:")) && ((evaluationMetricsTwoWeeksAgo = self->_evaluationMetricsTwoWeeksAgo, !(evaluationMetricsTwoWeeksAgo | v4[6])) || -[ATXCandidateRelevanceModelPBEvaluationMetrics isEqual:](evaluationMetricsTwoWeeksAgo, "isEqual:")) && ((evaluationMetricsThreeWeeksAgo = self->_evaluationMetricsThreeWeeksAgo, !(evaluationMetricsThreeWeeksAgo | v4[5])) || -[ATXCandidateRelevanceModelPBEvaluationMetrics isEqual:](evaluationMetricsThreeWeeksAgo, "isEqual:")) && ((evaluationMetricsFourWeeksAgo = self->_evaluationMetricsFourWeeksAgo, !(evaluationMetricsFourWeeksAgo | v4[2])) || -[ATXCandidateRelevanceModelPBEvaluationMetrics isEqual:](evaluationMetricsFourWeeksAgo, "isEqual:")) && ((evaluationMetricsLastFourWeeks = self->_evaluationMetricsLastFourWeeks, !(evaluationMetricsLastFourWeeks | v4[3])) || -[ATXCandidateRelevanceModelPBEvaluationMetrics isEqual:](evaluationMetricsLastFourWeeks, "isEqual:")))
  {
    candidateMetrics = self->_candidateMetrics;
    if (candidateMetrics | v4[1])
    {
      v12 = [(NSMutableArray *)candidateMetrics isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(ATXCandidateRelevanceModelPBModelMetrics *)self->_modelMetrics hash];
  v4 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsOneWeekAgo hash]^ v3;
  v5 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsTwoWeeksAgo hash];
  v6 = v4 ^ v5 ^ [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsThreeWeeksAgo hash];
  v7 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsFourWeeksAgo hash];
  v8 = v7 ^ [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self->_evaluationMetricsLastFourWeeks hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_candidateMetrics hash];
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  modelMetrics = self->_modelMetrics;
  v6 = *(v4 + 7);
  if (modelMetrics)
  {
    if (v6)
    {
      [(ATXCandidateRelevanceModelPBModelMetrics *)modelMetrics mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setModelMetrics:?];
  }

  evaluationMetricsOneWeekAgo = self->_evaluationMetricsOneWeekAgo;
  v8 = *(v4 + 4);
  if (evaluationMetricsOneWeekAgo)
  {
    if (v8)
    {
      [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsOneWeekAgo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setEvaluationMetricsOneWeekAgo:?];
  }

  evaluationMetricsTwoWeeksAgo = self->_evaluationMetricsTwoWeeksAgo;
  v10 = *(v4 + 6);
  if (evaluationMetricsTwoWeeksAgo)
  {
    if (v10)
    {
      [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsTwoWeeksAgo mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setEvaluationMetricsTwoWeeksAgo:?];
  }

  evaluationMetricsThreeWeeksAgo = self->_evaluationMetricsThreeWeeksAgo;
  v12 = *(v4 + 5);
  if (evaluationMetricsThreeWeeksAgo)
  {
    if (v12)
    {
      [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsThreeWeeksAgo mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setEvaluationMetricsThreeWeeksAgo:?];
  }

  evaluationMetricsFourWeeksAgo = self->_evaluationMetricsFourWeeksAgo;
  v14 = *(v4 + 2);
  if (evaluationMetricsFourWeeksAgo)
  {
    if (v14)
    {
      [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsFourWeeksAgo mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setEvaluationMetricsFourWeeksAgo:?];
  }

  evaluationMetricsLastFourWeeks = self->_evaluationMetricsLastFourWeeks;
  v16 = *(v4 + 3);
  if (evaluationMetricsLastFourWeeks)
  {
    if (v16)
    {
      [(ATXCandidateRelevanceModelPBEvaluationMetrics *)evaluationMetricsLastFourWeeks mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(ATXCandidateRelevanceModelPBMetrics *)self setEvaluationMetricsLastFourWeeks:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(v4 + 1);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(ATXCandidateRelevanceModelPBMetrics *)self addCandidateMetrics:*(*(&v23 + 1) + 8 * i), v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end