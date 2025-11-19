@interface ATXCandidateRelevanceModelPBModelMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvgNumberOfNonZeroModelWeights:(BOOL)a3;
- (void)setHasHasDefaultHyperParams:(BOOL)a3;
- (void)setHasHasTrainedModel:(BOOL)a3;
- (void)setHasLearningRate:(BOOL)a3;
- (void)setHasLogisticRegressionRegularizationL1Ratio:(BOOL)a3;
- (void)setHasLogisticRegressionRegularizationRate:(BOOL)a3;
- (void)setHasMinIterations:(BOOL)a3;
- (void)setHasModelAgeInDays:(BOOL)a3;
- (void)setHasNumberOfCandidateModels:(BOOL)a3;
- (void)setHasPipelineEnabled:(BOOL)a3;
- (void)setHasStoppingThreshold:(BOOL)a3;
- (void)setHasTrainDataNumberOfCandidates:(BOOL)a3;
- (void)setHasTrainDataNumberOfDaysWithPositiveSamples:(BOOL)a3;
- (void)setHasTrainDataNumberOfPositiveSamples:(BOOL)a3;
- (void)setHasTrainDataNumberOfSamples:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXCandidateRelevanceModelPBModelMetrics

- (void)setHasPipelineEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasHasTrainedModel:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasHasDefaultHyperParams:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasAvgNumberOfNonZeroModelWeights:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNumberOfCandidateModels:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasLogisticRegressionRegularizationRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLogisticRegressionRegularizationL1Ratio:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLearningRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMinIterations:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasStoppingThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTrainDataNumberOfPositiveSamples:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTrainDataNumberOfSamples:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTrainDataNumberOfDaysWithPositiveSamples:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTrainDataNumberOfCandidates:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasModelAgeInDays:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXCandidateRelevanceModelPBModelMetrics;
  v4 = [(ATXCandidateRelevanceModelPBModelMetrics *)&v8 description];
  v5 = [(ATXCandidateRelevanceModelPBModelMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v3;
  blendingABGroup = self->_blendingABGroup;
  if (blendingABGroup)
  {
    [v3 setObject:blendingABGroup forKey:@"blendingABGroup"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v5 setObject:abGroup forKey:@"abGroup"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v5 setObject:clientModelId forKey:@"clientModelId"];
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_pipelineEnabled];
  [v5 setObject:v31 forKey:@"pipelineEnabled"];

  *&has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasTrainedModel];
    [v5 setObject:v10 forKey:@"hasTrainedModel"];

    *&has = self->_has;
  }

LABEL_10:
  if ((*&has & 0x2000) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasDefaultHyperParams];
    [v5 setObject:v11 forKey:@"hasDefaultHyperParams"];
  }

  modelType = self->_modelType;
  if (modelType)
  {
    [v5 setObject:modelType forKey:@"modelType"];
  }

  v13 = self->_has;
  if (v13)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_avgNumberOfModelWeights];
    [v5 setObject:v21 forKey:@"avgNumberOfModelWeights"];

    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_avgNumberOfNonZeroModelWeights];
  [v5 setObject:v22 forKey:@"avgNumberOfNonZeroModelWeights"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfCandidateModels];
    [v5 setObject:v14 forKey:@"numberOfCandidateModels"];
  }

LABEL_18:
  logisticRegressionRegularizationStrategy = self->_logisticRegressionRegularizationStrategy;
  if (logisticRegressionRegularizationStrategy)
  {
    [v5 setObject:logisticRegressionRegularizationStrategy forKey:@"logisticRegressionRegularizationStrategy"];
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    *&v4 = self->_logisticRegressionRegularizationRate;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v23 forKey:@"logisticRegressionRegularizationRate"];

    v16 = self->_has;
    if ((v16 & 8) == 0)
    {
LABEL_22:
      if ((v16 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v16 & 8) == 0)
  {
    goto LABEL_22;
  }

  *&v4 = self->_logisticRegressionRegularizationL1Ratio;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v24 forKey:@"logisticRegressionRegularizationL1Ratio"];

  v16 = self->_has;
  if ((v16 & 4) == 0)
  {
LABEL_23:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  *&v4 = self->_learningRate;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v25 forKey:@"learningRate"];

  v16 = self->_has;
  if ((v16 & 0x20) == 0)
  {
LABEL_24:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_minIterations];
  [v5 setObject:v26 forKey:@"minIterations"];

  v16 = self->_has;
  if ((v16 & 0x100) == 0)
  {
LABEL_25:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  *&v4 = self->_stoppingThreshold;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v27 forKey:@"stoppingThreshold"];

  v16 = self->_has;
  if ((v16 & 0x800) == 0)
  {
LABEL_26:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trainDataNumberOfPositiveSamples];
  [v5 setObject:v28 forKey:@"trainDataNumberOfPositiveSamples"];

  v16 = self->_has;
  if ((v16 & 0x1000) == 0)
  {
LABEL_27:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trainDataNumberOfSamples];
  [v5 setObject:v29 forKey:@"trainDataNumberOfSamples"];

  v16 = self->_has;
  if ((v16 & 0x400) == 0)
  {
LABEL_28:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_47:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trainDataNumberOfDaysWithPositiveSamples];
  [v5 setObject:v30 forKey:@"trainDataNumberOfDaysWithPositiveSamples"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_trainDataNumberOfCandidates];
    [v5 setObject:v17 forKey:@"trainDataNumberOfCandidates"];
  }

LABEL_30:
  executableType = self->_executableType;
  if (executableType)
  {
    [v5 setObject:executableType forKey:@"executableType"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_modelAgeInDays];
    [v5 setObject:v19 forKey:@"modelAgeInDays"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v24 = v4;
  if (self->_blendingABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  pipelineEnabled = self->_pipelineEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v24;
  *&has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    hasTrainedModel = self->_hasTrainedModel;
    PBDataWriterWriteBOOLField();
    v4 = v24;
    *&has = self->_has;
  }

LABEL_10:
  if ((*&has & 0x2000) != 0)
  {
    hasDefaultHyperParams = self->_hasDefaultHyperParams;
    PBDataWriterWriteBOOLField();
    v4 = v24;
  }

  if (self->_modelType)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  v8 = self->_has;
  if (v8)
  {
    avgNumberOfModelWeights = self->_avgNumberOfModelWeights;
    PBDataWriterWriteUint32Field();
    v4 = v24;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_16;
  }

  avgNumberOfNonZeroModelWeights = self->_avgNumberOfNonZeroModelWeights;
  PBDataWriterWriteUint32Field();
  v4 = v24;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    numberOfCandidateModels = self->_numberOfCandidateModels;
    PBDataWriterWriteUint32Field();
    v4 = v24;
  }

LABEL_18:
  if (self->_logisticRegressionRegularizationStrategy)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    logisticRegressionRegularizationRate = self->_logisticRegressionRegularizationRate;
    PBDataWriterWriteFloatField();
    v4 = v24;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_22:
      if ((v10 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_22;
  }

  logisticRegressionRegularizationL1Ratio = self->_logisticRegressionRegularizationL1Ratio;
  PBDataWriterWriteFloatField();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_23:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  learningRate = self->_learningRate;
  PBDataWriterWriteFloatField();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_24:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  minIterations = self->_minIterations;
  PBDataWriterWriteUint32Field();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_25:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  stoppingThreshold = self->_stoppingThreshold;
  PBDataWriterWriteFloatField();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 0x800) == 0)
  {
LABEL_26:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  trainDataNumberOfPositiveSamples = self->_trainDataNumberOfPositiveSamples;
  PBDataWriterWriteUint32Field();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 0x1000) == 0)
  {
LABEL_27:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  trainDataNumberOfSamples = self->_trainDataNumberOfSamples;
  PBDataWriterWriteUint32Field();
  v4 = v24;
  v10 = self->_has;
  if ((v10 & 0x400) == 0)
  {
LABEL_28:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_47:
  trainDataNumberOfDaysWithPositiveSamples = self->_trainDataNumberOfDaysWithPositiveSamples;
  PBDataWriterWriteUint32Field();
  v4 = v24;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    trainDataNumberOfCandidates = self->_trainDataNumberOfCandidates;
    PBDataWriterWriteUint32Field();
    v4 = v24;
  }

LABEL_30:
  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    v4 = v24;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    modelAgeInDays = self->_modelAgeInDays;
    PBDataWriterWriteUint32Field();
    v4 = v24;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_blendingABGroup)
  {
    [v4 setBlendingABGroup:?];
    v4 = v8;
  }

  if (self->_abGroup)
  {
    [v8 setAbGroup:?];
    v4 = v8;
  }

  if (self->_clientModelId)
  {
    [v8 setClientModelId:?];
    v4 = v8;
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v4 + 114) = self->_pipelineEnabled;
  *(v4 + 58) |= 0x8000u;
  *&has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    *(v4 + 113) = self->_hasTrainedModel;
    *(v4 + 58) |= 0x4000u;
    *&has = self->_has;
  }

LABEL_10:
  if ((*&has & 0x2000) != 0)
  {
    *(v4 + 112) = self->_hasDefaultHyperParams;
    *(v4 + 58) |= 0x2000u;
  }

  if (self->_modelType)
  {
    [v8 setModelType:?];
    v4 = v8;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 4) = self->_avgNumberOfModelWeights;
    *(v4 + 58) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_16:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(v4 + 5) = self->_avgNumberOfNonZeroModelWeights;
  *(v4 + 58) |= 2u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    *(v4 + 22) = self->_numberOfCandidateModels;
    *(v4 + 58) |= 0x80u;
  }

LABEL_18:
  if (self->_logisticRegressionRegularizationStrategy)
  {
    [v8 setLogisticRegressionRegularizationStrategy:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    *(v4 + 14) = LODWORD(self->_logisticRegressionRegularizationRate);
    *(v4 + 58) |= 0x10u;
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_22:
      if ((v7 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

  *(v4 + 13) = LODWORD(self->_logisticRegressionRegularizationL1Ratio);
  *(v4 + 58) |= 8u;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_23:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 12) = LODWORD(self->_learningRate);
  *(v4 + 58) |= 4u;
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_24:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 18) = self->_minIterations;
  *(v4 + 58) |= 0x20u;
  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_25:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 23) = LODWORD(self->_stoppingThreshold);
  *(v4 + 58) |= 0x100u;
  v7 = self->_has;
  if ((v7 & 0x800) == 0)
  {
LABEL_26:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 26) = self->_trainDataNumberOfPositiveSamples;
  *(v4 + 58) |= 0x800u;
  v7 = self->_has;
  if ((v7 & 0x1000) == 0)
  {
LABEL_27:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 27) = self->_trainDataNumberOfSamples;
  *(v4 + 58) |= 0x1000u;
  v7 = self->_has;
  if ((v7 & 0x400) == 0)
  {
LABEL_28:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_47:
  *(v4 + 25) = self->_trainDataNumberOfDaysWithPositiveSamples;
  *(v4 + 58) |= 0x400u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    *(v4 + 24) = self->_trainDataNumberOfCandidates;
    *(v4 + 58) |= 0x200u;
  }

LABEL_30:
  if (self->_executableType)
  {
    [v8 setExecutableType:?];
    v4 = v8;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v4 + 19) = self->_modelAgeInDays;
    *(v4 + 58) |= 0x40u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_blendingABGroup copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(v5 + 114) = self->_pipelineEnabled;
  *(v5 + 116) |= 0x8000u;
  *&has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
LABEL_3:
    *(v5 + 113) = self->_hasTrainedModel;
    *(v5 + 116) |= 0x4000u;
    *&has = self->_has;
  }

LABEL_4:
  if ((*&has & 0x2000) != 0)
  {
    *(v5 + 112) = self->_hasDefaultHyperParams;
    *(v5 + 116) |= 0x2000u;
  }

  v13 = [(NSString *)self->_modelType copyWithZone:a3];
  v14 = *(v5 + 80);
  *(v5 + 80) = v13;

  v15 = self->_has;
  if (v15)
  {
    *(v5 + 16) = self->_avgNumberOfModelWeights;
    *(v5 + 116) |= 1u;
    v15 = self->_has;
    if ((v15 & 2) == 0)
    {
LABEL_8:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_8;
  }

  *(v5 + 20) = self->_avgNumberOfNonZeroModelWeights;
  *(v5 + 116) |= 2u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_9:
    *(v5 + 88) = self->_numberOfCandidateModels;
    *(v5 + 116) |= 0x80u;
  }

LABEL_10:
  v16 = [(NSString *)self->_logisticRegressionRegularizationStrategy copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    *(v5 + 56) = self->_logisticRegressionRegularizationRate;
    *(v5 + 116) |= 0x10u;
    v18 = self->_has;
    if ((v18 & 8) == 0)
    {
LABEL_12:
      if ((v18 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 52) = self->_logisticRegressionRegularizationL1Ratio;
  *(v5 + 116) |= 8u;
  v18 = self->_has;
  if ((v18 & 4) == 0)
  {
LABEL_13:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 48) = self->_learningRate;
  *(v5 + 116) |= 4u;
  v18 = self->_has;
  if ((v18 & 0x20) == 0)
  {
LABEL_14:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 72) = self->_minIterations;
  *(v5 + 116) |= 0x20u;
  v18 = self->_has;
  if ((v18 & 0x100) == 0)
  {
LABEL_15:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 92) = self->_stoppingThreshold;
  *(v5 + 116) |= 0x100u;
  v18 = self->_has;
  if ((v18 & 0x800) == 0)
  {
LABEL_16:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 104) = self->_trainDataNumberOfPositiveSamples;
  *(v5 + 116) |= 0x800u;
  v18 = self->_has;
  if ((v18 & 0x1000) == 0)
  {
LABEL_17:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 108) = self->_trainDataNumberOfSamples;
  *(v5 + 116) |= 0x1000u;
  v18 = self->_has;
  if ((v18 & 0x400) == 0)
  {
LABEL_18:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_33:
  *(v5 + 100) = self->_trainDataNumberOfDaysWithPositiveSamples;
  *(v5 + 116) |= 0x400u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_19:
    *(v5 + 96) = self->_trainDataNumberOfCandidates;
    *(v5 + 116) |= 0x200u;
  }

LABEL_20:
  v19 = [(NSString *)self->_executableType copyWithZone:a3];
  v20 = *(v5 + 40);
  *(v5 + 40) = v19;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 76) = self->_modelAgeInDays;
    *(v5 + 116) |= 0x40u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_106;
  }

  blendingABGroup = self->_blendingABGroup;
  if (blendingABGroup | *(v4 + 3))
  {
    if (![(NSString *)blendingABGroup isEqual:?])
    {
      goto LABEL_106;
    }
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_106;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 4))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_106;
    }
  }

  has = self->_has;
  v9 = *(v4 + 58);
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(v4 + 58) & 0x8000) == 0)
    {
      goto LABEL_106;
    }

    v12 = *(v4 + 114);
    if (self->_pipelineEnabled)
    {
      if ((*(v4 + 114) & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (*(v4 + 114))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x8000) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((*(v4 + 58) & 0x4000) == 0)
    {
      goto LABEL_106;
    }

    v13 = *(v4 + 113);
    if (self->_hasTrainedModel)
    {
      if ((*(v4 + 113) & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (*(v4 + 113))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x4000) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((*(v4 + 58) & 0x2000) == 0)
    {
      goto LABEL_106;
    }

    v14 = *(v4 + 112);
    if (self->_hasDefaultHyperParams)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (*(v4 + 112))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x2000) != 0)
  {
    goto LABEL_106;
  }

  modelType = self->_modelType;
  if (modelType | *(v4 + 10))
  {
    if (![(NSString *)modelType isEqual:?])
    {
      goto LABEL_106;
    }

    *&has = self->_has;
  }

  v11 = *(v4 + 58);
  if (*&has)
  {
    if ((v11 & 1) == 0 || self->_avgNumberOfModelWeights != *(v4 + 4))
    {
      goto LABEL_106;
    }
  }

  else if (v11)
  {
    goto LABEL_106;
  }

  if ((*&has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_avgNumberOfNonZeroModelWeights != *(v4 + 5))
    {
      goto LABEL_106;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_numberOfCandidateModels != *(v4 + 22))
    {
      goto LABEL_106;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_106;
  }

  logisticRegressionRegularizationStrategy = self->_logisticRegressionRegularizationStrategy;
  if (logisticRegressionRegularizationStrategy | *(v4 + 8))
  {
    if (![(NSString *)logisticRegressionRegularizationStrategy isEqual:?])
    {
      goto LABEL_106;
    }

    *&has = self->_has;
  }

  v16 = *(v4 + 58);
  if ((*&has & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0 || self->_logisticRegressionRegularizationRate != *(v4 + 14))
    {
      goto LABEL_106;
    }
  }

  else if ((v16 & 0x10) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 8) != 0)
  {
    if ((v16 & 8) == 0 || self->_logisticRegressionRegularizationL1Ratio != *(v4 + 13))
    {
      goto LABEL_106;
    }
  }

  else if ((v16 & 8) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 4) != 0)
  {
    if ((v16 & 4) == 0 || self->_learningRate != *(v4 + 12))
    {
      goto LABEL_106;
    }
  }

  else if ((v16 & 4) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v16 & 0x20) == 0 || self->_minIterations != *(v4 + 18))
    {
      goto LABEL_106;
    }
  }

  else if ((v16 & 0x20) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((*(v4 + 58) & 0x100) == 0 || self->_stoppingThreshold != *(v4 + 23))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x100) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((*(v4 + 58) & 0x800) == 0 || self->_trainDataNumberOfPositiveSamples != *(v4 + 26))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x800) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((*(v4 + 58) & 0x1000) == 0 || self->_trainDataNumberOfSamples != *(v4 + 27))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x1000) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((*(v4 + 58) & 0x400) == 0 || self->_trainDataNumberOfDaysWithPositiveSamples != *(v4 + 25))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x400) != 0)
  {
    goto LABEL_106;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((*(v4 + 58) & 0x200) == 0 || self->_trainDataNumberOfCandidates != *(v4 + 24))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 58) & 0x200) != 0)
  {
    goto LABEL_106;
  }

  executableType = self->_executableType;
  if (executableType | *(v4 + 5))
  {
    if ([(NSString *)executableType isEqual:?])
    {
      *&has = self->_has;
      goto LABEL_101;
    }

LABEL_106:
    v19 = 0;
    goto LABEL_107;
  }

LABEL_101:
  v18 = *(v4 + 58);
  if ((*&has & 0x40) != 0)
  {
    if ((v18 & 0x40) == 0 || self->_modelAgeInDays != *(v4 + 19))
    {
      goto LABEL_106;
    }

    v19 = 1;
  }

  else
  {
    v19 = (v18 & 0x40) == 0;
  }

LABEL_107:

  return v19;
}

- (unint64_t)hash
{
  v41 = [(NSString *)self->_blendingABGroup hash];
  v40 = [(NSString *)self->_abGroup hash];
  v39 = [(NSString *)self->_clientModelId hash];
  if ((*&self->_has & 0x8000) == 0)
  {
    v38 = 0;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v37 = 2654435761 * self->_hasTrainedModel;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v38 = 2654435761 * self->_pipelineEnabled;
  if ((*&self->_has & 0x4000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v37 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_4:
    v36 = 2654435761 * self->_hasDefaultHyperParams;
    goto LABEL_8;
  }

LABEL_7:
  v36 = 0;
LABEL_8:
  v35 = [(NSString *)self->_modelType hash];
  has = self->_has;
  if ((has & 1) == 0)
  {
    v34 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v33 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v34 = 2654435761 * self->_avgNumberOfModelWeights;
  if ((has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v33 = 2654435761 * self->_avgNumberOfNonZeroModelWeights;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v32 = 2654435761 * self->_numberOfCandidateModels;
    goto LABEL_15;
  }

LABEL_14:
  v32 = 0;
LABEL_15:
  v31 = [(NSString *)self->_logisticRegressionRegularizationStrategy hash];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    logisticRegressionRegularizationRate = self->_logisticRegressionRegularizationRate;
    if (logisticRegressionRegularizationRate < 0.0)
    {
      logisticRegressionRegularizationRate = -logisticRegressionRegularizationRate;
    }

    *v4.i32 = floorf(logisticRegressionRegularizationRate + 0.5);
    v9 = (logisticRegressionRegularizationRate - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v10, v5, v4);
    v7 = 2654435761u * *v4.i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((v6 & 8) != 0)
  {
    logisticRegressionRegularizationL1Ratio = self->_logisticRegressionRegularizationL1Ratio;
    if (logisticRegressionRegularizationL1Ratio < 0.0)
    {
      logisticRegressionRegularizationL1Ratio = -logisticRegressionRegularizationL1Ratio;
    }

    *v4.i32 = floorf(logisticRegressionRegularizationL1Ratio + 0.5);
    v13 = (logisticRegressionRegularizationL1Ratio - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v14.i64[0] = 0x8000000080000000;
    v14.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v14, v5, v4);
    v11 = 2654435761u * *v4.i32;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabsf(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v6 & 4) != 0)
  {
    learningRate = self->_learningRate;
    if (learningRate < 0.0)
    {
      learningRate = -learningRate;
    }

    *v4.i32 = floorf(learningRate + 0.5);
    v17 = (learningRate - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v18.i64[0] = 0x8000000080000000;
    v18.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v18, v5, v4);
    v15 = 2654435761u * *v4.i32;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabsf(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((v6 & 0x20) != 0)
  {
    v30 = 2654435761 * self->_minIterations;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    v22 = 0;
    goto LABEL_47;
  }

  v30 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_41:
  stoppingThreshold = self->_stoppingThreshold;
  if (stoppingThreshold < 0.0)
  {
    stoppingThreshold = -stoppingThreshold;
  }

  *v4.i32 = floorf(stoppingThreshold + 0.5);
  v20 = (stoppingThreshold - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  v22 = 2654435761u * *vbslq_s8(v21, v5, v4).i32;
  if (v20 >= 0.0)
  {
    if (v20 > 0.0)
    {
      v22 += v20;
    }
  }

  else
  {
    v22 -= fabsf(v20);
  }

LABEL_47:
  if ((*&self->_has & 0x800) != 0)
  {
    v29 = 2654435761 * self->_trainDataNumberOfPositiveSamples;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_49:
      v23 = 2654435761 * self->_trainDataNumberOfSamples;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_50;
      }

LABEL_54:
      v24 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v29 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_49;
    }
  }

  v23 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_54;
  }

LABEL_50:
  v24 = 2654435761 * self->_trainDataNumberOfDaysWithPositiveSamples;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_51:
    v25 = 2654435761 * self->_trainDataNumberOfCandidates;
    goto LABEL_56;
  }

LABEL_55:
  v25 = 0;
LABEL_56:
  v26 = [(NSString *)self->_executableType hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v27 = 2654435761 * self->_modelAgeInDays;
  }

  else
  {
    v27 = 0;
  }

  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v7 ^ v11 ^ v15 ^ v30 ^ v22 ^ v29 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 3))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setBlendingABGroup:?];
    v4 = v8;
  }

  if (*(v4 + 1))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setAbGroup:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setClientModelId:?];
    v4 = v8;
  }

  v5 = v4[58];
  if ((v5 & 0x80000000) == 0)
  {
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_pipelineEnabled = *(v4 + 114);
  *&self->_has |= 0x8000u;
  LOWORD(v5) = v4[58];
  if ((v5 & 0x4000) != 0)
  {
LABEL_9:
    self->_hasTrainedModel = *(v4 + 113);
    *&self->_has |= 0x4000u;
    LOWORD(v5) = v4[58];
  }

LABEL_10:
  if ((v5 & 0x2000) != 0)
  {
    self->_hasDefaultHyperParams = *(v4 + 112);
    *&self->_has |= 0x2000u;
  }

  if (*(v4 + 10))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setModelType:?];
    v4 = v8;
  }

  v6 = v4[58];
  if (v6)
  {
    self->_avgNumberOfModelWeights = *(v4 + 4);
    *&self->_has |= 1u;
    v6 = v4[58];
    if ((v6 & 2) == 0)
    {
LABEL_16:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_16;
  }

  self->_avgNumberOfNonZeroModelWeights = *(v4 + 5);
  *&self->_has |= 2u;
  if ((v4[58] & 0x80) != 0)
  {
LABEL_17:
    self->_numberOfCandidateModels = *(v4 + 22);
    *&self->_has |= 0x80u;
  }

LABEL_18:
  if (*(v4 + 8))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setLogisticRegressionRegularizationStrategy:?];
    v4 = v8;
  }

  v7 = v4[58];
  if ((v7 & 0x10) != 0)
  {
    self->_logisticRegressionRegularizationRate = *(v4 + 14);
    *&self->_has |= 0x10u;
    v7 = v4[58];
    if ((v7 & 8) == 0)
    {
LABEL_22:
      if ((v7 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

  self->_logisticRegressionRegularizationL1Ratio = *(v4 + 13);
  *&self->_has |= 8u;
  v7 = v4[58];
  if ((v7 & 4) == 0)
  {
LABEL_23:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_learningRate = *(v4 + 12);
  *&self->_has |= 4u;
  v7 = v4[58];
  if ((v7 & 0x20) == 0)
  {
LABEL_24:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_minIterations = *(v4 + 18);
  *&self->_has |= 0x20u;
  v7 = v4[58];
  if ((v7 & 0x100) == 0)
  {
LABEL_25:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_stoppingThreshold = *(v4 + 23);
  *&self->_has |= 0x100u;
  v7 = v4[58];
  if ((v7 & 0x800) == 0)
  {
LABEL_26:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_trainDataNumberOfPositiveSamples = *(v4 + 26);
  *&self->_has |= 0x800u;
  v7 = v4[58];
  if ((v7 & 0x1000) == 0)
  {
LABEL_27:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_trainDataNumberOfSamples = *(v4 + 27);
  *&self->_has |= 0x1000u;
  v7 = v4[58];
  if ((v7 & 0x400) == 0)
  {
LABEL_28:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_47:
  self->_trainDataNumberOfDaysWithPositiveSamples = *(v4 + 25);
  *&self->_has |= 0x400u;
  if ((v4[58] & 0x200) != 0)
  {
LABEL_29:
    self->_trainDataNumberOfCandidates = *(v4 + 24);
    *&self->_has |= 0x200u;
  }

LABEL_30:
  if (*(v4 + 5))
  {
    [(ATXCandidateRelevanceModelPBModelMetrics *)self setExecutableType:?];
    v4 = v8;
  }

  if ((v4[58] & 0x40) != 0)
  {
    self->_modelAgeInDays = *(v4 + 19);
    *&self->_has |= 0x40u;
  }
}

@end