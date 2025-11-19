@interface AMLUserLevelPhotosSearchMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUiSurface:(id)a3;
- (int)uiSurface;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCoverageWeekly:(BOOL)a3;
- (void)setHasIsProductionModel:(BOOL)a3;
- (void)setHasNdcgDaily:(BOOL)a3;
- (void)setHasNdcgWeekly:(BOOL)a3;
- (void)setHasTtrDaily:(BOOL)a3;
- (void)setHasTtrWeekly:(BOOL)a3;
- (void)setHasUiSurface:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AMLUserLevelPhotosSearchMetrics

- (void)setHasIsProductionModel:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTtrDaily:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTtrWeekly:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasCoverageWeekly:(BOOL)a3
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

- (void)setHasNdcgDaily:(BOOL)a3
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

- (void)setHasNdcgWeekly:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)uiSurface
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_uiSurface;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUiSurface:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsUiSurface:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AMLUISurfaceTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AMLUISurfaceTypeSpotlight"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AMLUISurfaceTypePhotosApp"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AMLUISurfaceTypeStoryTellingBackground"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AMLUserLevelPhotosSearchMetrics;
  v4 = [(AMLUserLevelPhotosSearchMetrics *)&v8 description];
  v5 = [(AMLUserLevelPhotosSearchMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isProductionModel];
    [v3 setObject:v4 forKey:@"isProductionModel"];
  }

  modelName = self->_modelName;
  if (modelName)
  {
    [v3 setObject:modelName forKey:@"modelName"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ttrDaily];
    [v3 setObject:v11 forKey:@"ttrDaily"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ttrWeekly];
  [v3 setObject:v12 forKey:@"ttrWeekly"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coverageDaily];
  [v3 setObject:v13 forKey:@"coverageDaily"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coverageWeekly];
  [v3 setObject:v14 forKey:@"coverageWeekly"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ndcgDaily];
  [v3 setObject:v15 forKey:@"ndcgDaily"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ndcgWeekly];
    [v3 setObject:v7 forKey:@"ndcgWeekly"];
  }

LABEL_12:
  metricDefinitionVersion = self->_metricDefinitionVersion;
  if (metricDefinitionVersion)
  {
    [v3 setObject:metricDefinitionVersion forKey:@"metricDefinitionVersion"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    uiSurface = self->_uiSurface;
    if (uiSurface >= 4)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_uiSurface];
    }

    else
    {
      v10 = off_2782B5E80[uiSurface];
    }

    [v3 setObject:v10 forKey:@"uiSurface"];
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId)
  {
    [v3 setObject:trialDeploymentId forKey:@"trialDeploymentId"];
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId)
  {
    [v3 setObject:trialExperimentId forKey:@"trialExperimentId"];
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId)
  {
    [v3 setObject:trialTreatmentId forKey:@"trialTreatmentId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if ((*&self->_has & 0x80000000) != 0)
  {
    isProductionModel = self->_isProductionModel;
    PBDataWriterWriteBOOLField();
    v4 = v14;
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    ttrDaily = self->_ttrDaily;
    PBDataWriterWriteDoubleField();
    v4 = v14;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  ttrWeekly = self->_ttrWeekly;
  PBDataWriterWriteDoubleField();
  v4 = v14;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  coverageDaily = self->_coverageDaily;
  PBDataWriterWriteDoubleField();
  v4 = v14;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  coverageWeekly = self->_coverageWeekly;
  PBDataWriterWriteDoubleField();
  v4 = v14;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  ndcgDaily = self->_ndcgDaily;
  PBDataWriterWriteDoubleField();
  v4 = v14;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    ndcgWeekly = self->_ndcgWeekly;
    PBDataWriterWriteDoubleField();
    v4 = v14;
  }

LABEL_12:
  if (self->_metricDefinitionVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    uiSurface = self->_uiSurface;
    PBDataWriterWriteInt32Field();
    v4 = v14;
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x80000000) != 0)
  {
    v4[100] = self->_isProductionModel;
    v4[104] |= 0x80u;
  }

  v6 = v4;
  if (self->_modelName)
  {
    [v4 setModelName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 5) = *&self->_ttrDaily;
    v4[104] |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 6) = *&self->_ttrWeekly;
  v4[104] |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 1) = *&self->_coverageDaily;
  v4[104] |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 2) = *&self->_coverageWeekly;
  v4[104] |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  *(v4 + 3) = *&self->_ndcgDaily;
  v4[104] |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 4) = *&self->_ndcgWeekly;
    v4[104] |= 8u;
  }

LABEL_12:
  if (self->_metricDefinitionVersion)
  {
    [v6 setMetricDefinitionVersion:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v4 + 24) = self->_uiSurface;
    v4[104] |= 0x40u;
  }

  if (self->_trialDeploymentId)
  {
    [v6 setTrialDeploymentId:?];
    v4 = v6;
  }

  if (self->_trialExperimentId)
  {
    [v6 setTrialExperimentId:?];
    v4 = v6;
  }

  if (self->_trialTreatmentId)
  {
    [v6 setTrialTreatmentId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 100) = self->_isProductionModel;
    *(v5 + 104) |= 0x80u;
  }

  v7 = [(NSString *)self->_modelName copyWithZone:a3];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 40) = self->_ttrDaily;
    *(v6 + 104) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 48) = self->_ttrWeekly;
  *(v6 + 104) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 8) = self->_coverageDaily;
  *(v6 + 104) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v6 + 16) = self->_coverageWeekly;
  *(v6 + 104) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(v6 + 24) = self->_ndcgDaily;
  *(v6 + 104) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v6 + 32) = self->_ndcgWeekly;
    *(v6 + 104) |= 8u;
  }

LABEL_10:
  v10 = [(NSString *)self->_metricDefinitionVersion copyWithZone:a3];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v6 + 96) = self->_uiSurface;
    *(v6 + 104) |= 0x40u;
  }

  v12 = [(NSString *)self->_trialDeploymentId copyWithZone:a3];
  v13 = *(v6 + 72);
  *(v6 + 72) = v12;

  v14 = [(NSString *)self->_trialExperimentId copyWithZone:a3];
  v15 = *(v6 + 80);
  *(v6 + 80) = v14;

  v16 = [(NSString *)self->_trialTreatmentId copyWithZone:a3];
  v17 = *(v6 + 88);
  *(v6 + 88) = v16;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = v4[104];
  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v8 = v4[100];
    if (self->_isProductionModel)
    {
      if ((v4[100] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v4[100])
    {
      goto LABEL_58;
    }
  }

  else if (v6 < 0)
  {
    goto LABEL_58;
  }

  modelName = self->_modelName;
  if (modelName | *(v4 + 8))
  {
    if (![(NSString *)modelName isEqual:?])
    {
      goto LABEL_58;
    }

    *&has = self->_has;
  }

  v9 = v4[104];
  if ((*&has & 0x10) != 0)
  {
    if ((v4[104] & 0x10) == 0 || self->_ttrDaily != *(v4 + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v4[104] & 0x20) == 0 || self->_ttrWeekly != *(v4 + 6))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 0x20) != 0)
  {
    goto LABEL_58;
  }

  if (*&has)
  {
    if ((v4[104] & 1) == 0 || self->_coverageDaily != *(v4 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v4[104])
  {
    goto LABEL_58;
  }

  if ((*&has & 2) != 0)
  {
    if ((v4[104] & 2) == 0 || self->_coverageWeekly != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((*&has & 4) != 0)
  {
    if ((v4[104] & 4) == 0 || self->_ndcgDaily != *(v4 + 3))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((*&has & 8) != 0)
  {
    if ((v4[104] & 8) == 0 || self->_ndcgWeekly != *(v4 + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 8) != 0)
  {
    goto LABEL_58;
  }

  metricDefinitionVersion = self->_metricDefinitionVersion;
  if (metricDefinitionVersion | *(v4 + 7))
  {
    if ([(NSString *)metricDefinitionVersion isEqual:?])
    {
      *&has = self->_has;
      goto LABEL_47;
    }

LABEL_58:
    v15 = 0;
    goto LABEL_59;
  }

LABEL_47:
  v11 = v4[104];
  if ((*&has & 0x40) != 0)
  {
    if ((v4[104] & 0x40) == 0 || self->_uiSurface != *(v4 + 24))
    {
      goto LABEL_58;
    }
  }

  else if ((v4[104] & 0x40) != 0)
  {
    goto LABEL_58;
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId | *(v4 + 9) && ![(NSString *)trialDeploymentId isEqual:?])
  {
    goto LABEL_58;
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId | *(v4 + 10))
  {
    if (![(NSString *)trialExperimentId isEqual:?])
    {
      goto LABEL_58;
    }
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId | *(v4 + 11))
  {
    v15 = [(NSString *)trialTreatmentId isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_59:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    v36 = 2654435761 * self->_isProductionModel;
  }

  else
  {
    v36 = 0;
  }

  v3 = [(NSString *)self->_modelName hash];
  if ((*&self->_has & 0x10) != 0)
  {
    ttrDaily = self->_ttrDaily;
    if (ttrDaily < 0.0)
    {
      ttrDaily = -ttrDaily;
    }

    *v4.i64 = floor(ttrDaily + 0.5);
    v8 = (ttrDaily - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    ttrWeekly = self->_ttrWeekly;
    if (ttrWeekly < 0.0)
    {
      ttrWeekly = -ttrWeekly;
    }

    *v4.i64 = floor(ttrWeekly + 0.5);
    v12 = (ttrWeekly - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v13), v5, v4);
    v10 = 2654435761u * *v4.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*&self->_has)
  {
    coverageDaily = self->_coverageDaily;
    if (coverageDaily < 0.0)
    {
      coverageDaily = -coverageDaily;
    }

    *v4.i64 = floor(coverageDaily + 0.5);
    v16 = (coverageDaily - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v17), v5, v4);
    v14 = 2654435761u * *v4.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    coverageWeekly = self->_coverageWeekly;
    if (coverageWeekly < 0.0)
    {
      coverageWeekly = -coverageWeekly;
    }

    *v4.i64 = floor(coverageWeekly + 0.5);
    v20 = (coverageWeekly - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v21), v5, v4);
    v18 = 2654435761u * *v4.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    ndcgDaily = self->_ndcgDaily;
    if (ndcgDaily < 0.0)
    {
      ndcgDaily = -ndcgDaily;
    }

    *v4.i64 = floor(ndcgDaily + 0.5);
    v24 = (ndcgDaily - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v25), v5, v4);
    v22 = 2654435761u * *v4.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    ndcgWeekly = self->_ndcgWeekly;
    if (ndcgWeekly < 0.0)
    {
      ndcgWeekly = -ndcgWeekly;
    }

    *v4.i64 = floor(ndcgWeekly + 0.5);
    v28 = (ndcgWeekly - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v26 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v5, v4).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  v30 = [(NSString *)self->_metricDefinitionVersion hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v31 = 2654435761 * self->_uiSurface;
  }

  else
  {
    v31 = 0;
  }

  v32 = v3 ^ v36 ^ v6 ^ v10 ^ v14 ^ v18 ^ v22 ^ v26 ^ v30;
  v33 = v31 ^ [(NSString *)self->_trialDeploymentId hash];
  v34 = v32 ^ v33 ^ [(NSString *)self->_trialExperimentId hash];
  return v34 ^ [(NSString *)self->_trialTreatmentId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[104] < 0)
  {
    self->_isProductionModel = v4[100];
    *&self->_has |= 0x80u;
  }

  v6 = v4;
  if (*(v4 + 8))
  {
    [(AMLUserLevelPhotosSearchMetrics *)self setModelName:?];
    v4 = v6;
  }

  v5 = v4[104];
  if ((v5 & 0x10) != 0)
  {
    self->_ttrDaily = *(v4 + 5);
    *&self->_has |= 0x10u;
    v5 = v4[104];
    if ((v5 & 0x20) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4[104] & 0x20) == 0)
  {
    goto LABEL_7;
  }

  self->_ttrWeekly = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = v4[104];
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_coverageDaily = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = v4[104];
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_coverageWeekly = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = v4[104];
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  self->_ndcgDaily = *(v4 + 3);
  *&self->_has |= 4u;
  if ((v4[104] & 8) != 0)
  {
LABEL_11:
    self->_ndcgWeekly = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(v4 + 7))
  {
    [(AMLUserLevelPhotosSearchMetrics *)self setMetricDefinitionVersion:?];
    v4 = v6;
  }

  if ((v4[104] & 0x40) != 0)
  {
    self->_uiSurface = *(v4 + 24);
    *&self->_has |= 0x40u;
  }

  if (*(v4 + 9))
  {
    [(AMLUserLevelPhotosSearchMetrics *)self setTrialDeploymentId:?];
    v4 = v6;
  }

  if (*(v4 + 10))
  {
    [(AMLUserLevelPhotosSearchMetrics *)self setTrialExperimentId:?];
    v4 = v6;
  }

  if (*(v4 + 11))
  {
    [(AMLUserLevelPhotosSearchMetrics *)self setTrialTreatmentId:?];
    v4 = v6;
  }
}

@end