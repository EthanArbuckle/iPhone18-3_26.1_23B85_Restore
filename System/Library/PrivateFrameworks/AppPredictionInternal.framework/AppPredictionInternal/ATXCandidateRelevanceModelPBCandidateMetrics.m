@interface ATXCandidateRelevanceModelPBCandidateMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCandidateNumberOfModelWeights:(BOOL)a3;
- (void)setHasCandidateNumberOfNonZeroModelWeights:(BOOL)a3;
- (void)setHasCandidateNumberOfPositiveSamples:(BOOL)a3;
- (void)setHasCandidateNumberOfSamples:(BOOL)a3;
- (void)setHasCandidateShadowF1:(BOOL)a3;
- (void)setHasCandidateShadowLaunchPercentage:(BOOL)a3;
- (void)setHasCandidateShadowPrecision:(BOOL)a3;
- (void)setHasCandidateShadowRecall:(BOOL)a3;
- (void)setHasCandidateShadowShownPercentage:(BOOL)a3;
- (void)setHasCandidateUIF1:(BOOL)a3;
- (void)setHasCandidateUILaunchPercentage:(BOOL)a3;
- (void)setHasCandidateUIPrecision:(BOOL)a3;
- (void)setHasCandidateUIRecall:(BOOL)a3;
- (void)setHasCandidateUIShownPercentage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXCandidateRelevanceModelPBCandidateMetrics

- (void)setHasCandidateNumberOfPositiveSamples:(BOOL)a3
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

- (void)setHasCandidateNumberOfSamples:(BOOL)a3
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

- (void)setHasCandidateNumberOfModelWeights:(BOOL)a3
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

- (void)setHasCandidateNumberOfNonZeroModelWeights:(BOOL)a3
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

- (void)setHasCandidateShadowLaunchPercentage:(BOOL)a3
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

- (void)setHasCandidateShadowShownPercentage:(BOOL)a3
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

- (void)setHasCandidateShadowPrecision:(BOOL)a3
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

- (void)setHasCandidateShadowRecall:(BOOL)a3
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

- (void)setHasCandidateShadowF1:(BOOL)a3
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

- (void)setHasCandidateUILaunchPercentage:(BOOL)a3
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

- (void)setHasCandidateUIShownPercentage:(BOOL)a3
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

- (void)setHasCandidateUIPrecision:(BOOL)a3
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

- (void)setHasCandidateUIRecall:(BOOL)a3
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

- (void)setHasCandidateUIF1:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXCandidateRelevanceModelPBCandidateMetrics;
  v4 = [(ATXCandidateRelevanceModelPBCandidateMetrics *)&v8 description];
  v5 = [(ATXCandidateRelevanceModelPBCandidateMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_candidateNumberOfPositiveSamples];
    [v3 setObject:v9 forKey:@"candidateNumberOfPositiveSamples"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_candidateNumberOfSamples];
  [v3 setObject:v10 forKey:@"candidateNumberOfSamples"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_candidateNumberOfDaysWithPositiveSamples];
  [v3 setObject:v11 forKey:@"candidateNumberOfDaysWithPositiveSamples"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_candidateNumberOfModelWeights];
  [v3 setObject:v12 forKey:@"candidateNumberOfModelWeights"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_candidateNumberOfNonZeroModelWeights];
  [v3 setObject:v13 forKey:@"candidateNumberOfNonZeroModelWeights"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&v4 = self->_candidateShadowLaunchPercentage;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v14 forKey:@"candidateShadowLaunchPercentage"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *&v4 = self->_candidateShadowShownPercentage;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v15 forKey:@"candidateShadowShownPercentage"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *&v4 = self->_candidateShadowPrecision;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v16 forKey:@"candidateShadowPrecision"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *&v4 = self->_candidateShadowRecall;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v17 forKey:@"candidateShadowRecall"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *&v4 = self->_candidateShadowF1;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v18 forKey:@"candidateShadowF1"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *&v4 = self->_candidateUILaunchPercentage;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v19 forKey:@"candidateUILaunchPercentage"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *&v4 = self->_candidateUIShownPercentage;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v20 forKey:@"candidateUIShownPercentage"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *&v4 = self->_candidateUIPrecision;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v21 forKey:@"candidateUIPrecision"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  *&v4 = self->_candidateUIRecall;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v22 forKey:@"candidateUIRecall"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    *&v4 = self->_candidateUIF1;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"candidateUIF1"];
  }

LABEL_17:
  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v3 setObject:candidateIdentifier forKey:@"candidateIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v21 = v4;
  if ((has & 8) != 0)
  {
    candidateNumberOfPositiveSamples = self->_candidateNumberOfPositiveSamples;
    PBDataWriterWriteUint32Field();
    v4 = v21;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  candidateNumberOfSamples = self->_candidateNumberOfSamples;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  candidateNumberOfDaysWithPositiveSamples = self->_candidateNumberOfDaysWithPositiveSamples;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  candidateNumberOfModelWeights = self->_candidateNumberOfModelWeights;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  candidateNumberOfNonZeroModelWeights = self->_candidateNumberOfNonZeroModelWeights;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  candidateShadowLaunchPercentage = self->_candidateShadowLaunchPercentage;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  candidateShadowShownPercentage = self->_candidateShadowShownPercentage;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  candidateShadowPrecision = self->_candidateShadowPrecision;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  candidateShadowRecall = self->_candidateShadowRecall;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  candidateShadowF1 = self->_candidateShadowF1;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  candidateUILaunchPercentage = self->_candidateUILaunchPercentage;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  candidateUIShownPercentage = self->_candidateUIShownPercentage;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  candidateUIPrecision = self->_candidateUIPrecision;
  PBDataWriterWriteFloatField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  candidateUIRecall = self->_candidateUIRecall;
  PBDataWriterWriteFloatField();
  v4 = v21;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    candidateUIF1 = self->_candidateUIF1;
    PBDataWriterWriteFloatField();
    v4 = v21;
  }

LABEL_17:
  if (self->_candidateIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[7] = self->_candidateNumberOfPositiveSamples;
    *(v4 + 38) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[8] = self->_candidateNumberOfSamples;
  *(v4 + 38) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[4] = self->_candidateNumberOfDaysWithPositiveSamples;
  *(v4 + 38) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[5] = self->_candidateNumberOfModelWeights;
  *(v4 + 38) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[6] = self->_candidateNumberOfNonZeroModelWeights;
  *(v4 + 38) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[10] = LODWORD(self->_candidateShadowLaunchPercentage);
  *(v4 + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[13] = LODWORD(self->_candidateShadowShownPercentage);
  *(v4 + 38) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[11] = LODWORD(self->_candidateShadowPrecision);
  *(v4 + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[12] = LODWORD(self->_candidateShadowRecall);
  *(v4 + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[9] = LODWORD(self->_candidateShadowF1);
  *(v4 + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4[15] = LODWORD(self->_candidateUILaunchPercentage);
  *(v4 + 38) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[18] = LODWORD(self->_candidateUIShownPercentage);
  *(v4 + 38) |= 0x4000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[16] = LODWORD(self->_candidateUIPrecision);
  *(v4 + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  v4[17] = LODWORD(self->_candidateUIRecall);
  *(v4 + 38) |= 0x2000u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    v4[14] = LODWORD(self->_candidateUIF1);
    *(v4 + 38) |= 0x400u;
  }

LABEL_17:
  if (self->_candidateIdentifier)
  {
    v6 = v4;
    [v4 setCandidateIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 28) = self->_candidateNumberOfPositiveSamples;
    *(v5 + 76) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_candidateNumberOfSamples;
  *(v5 + 76) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 16) = self->_candidateNumberOfDaysWithPositiveSamples;
  *(v5 + 76) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 20) = self->_candidateNumberOfModelWeights;
  *(v5 + 76) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 24) = self->_candidateNumberOfNonZeroModelWeights;
  *(v5 + 76) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 40) = self->_candidateShadowLaunchPercentage;
  *(v5 + 76) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 52) = self->_candidateShadowShownPercentage;
  *(v5 + 76) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 44) = self->_candidateShadowPrecision;
  *(v5 + 76) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 48) = self->_candidateShadowRecall;
  *(v5 + 76) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 36) = self->_candidateShadowF1;
  *(v5 + 76) |= 0x20u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 60) = self->_candidateUILaunchPercentage;
  *(v5 + 76) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 72) = self->_candidateUIShownPercentage;
  *(v5 + 76) |= 0x4000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(v5 + 68) = self->_candidateUIRecall;
    *(v5 + 76) |= 0x2000u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  *(v5 + 64) = self->_candidateUIPrecision;
  *(v5 + 76) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((has & 0x400) != 0)
  {
LABEL_16:
    *(v5 + 56) = self->_candidateUIF1;
    *(v5 + 76) |= 0x400u;
  }

LABEL_17:
  v8 = [(NSString *)self->_candidateIdentifier copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  has = self->_has;
  v6 = *(v4 + 38);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_candidateNumberOfPositiveSamples != *(v4 + 7))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 8) != 0)
  {
LABEL_79:
    v8 = 0;
    goto LABEL_80;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_candidateNumberOfSamples != *(v4 + 8))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_candidateNumberOfDaysWithPositiveSamples != *(v4 + 4))
    {
      goto LABEL_79;
    }
  }

  else if (v6)
  {
    goto LABEL_79;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_candidateNumberOfModelWeights != *(v4 + 5))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_candidateNumberOfNonZeroModelWeights != *(v4 + 6))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_candidateShadowLaunchPercentage != *(v4 + 10))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 38) & 0x200) == 0 || self->_candidateShadowShownPercentage != *(v4 + 13))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x200) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_candidateShadowPrecision != *(v4 + 11))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 38) & 0x100) == 0 || self->_candidateShadowRecall != *(v4 + 12))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_candidateShadowF1 != *(v4 + 9))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 38) & 0x800) == 0 || self->_candidateUILaunchPercentage != *(v4 + 15))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 38) & 0x4000) == 0 || self->_candidateUIShownPercentage != *(v4 + 18))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x4000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 38) & 0x1000) == 0 || self->_candidateUIPrecision != *(v4 + 16))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x1000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 38) & 0x2000) == 0 || self->_candidateUIRecall != *(v4 + 17))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x2000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 38) & 0x400) == 0 || self->_candidateUIF1 != *(v4 + 14))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 38) & 0x400) != 0)
  {
    goto LABEL_79;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier | *(v4 + 1))
  {
    v8 = [(NSString *)candidateIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_80:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = 2654435761 * self->_candidateNumberOfPositiveSamples;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v10 = 2654435761 * self->_candidateNumberOfSamples;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
  if (has)
  {
LABEL_4:
    v11 = 2654435761 * self->_candidateNumberOfDaysWithPositiveSamples;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v12 = 2654435761 * self->_candidateNumberOfModelWeights;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v13 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v12 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v13 = 2654435761 * self->_candidateNumberOfNonZeroModelWeights;
  if ((has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  candidateShadowLaunchPercentage = self->_candidateShadowLaunchPercentage;
  if (candidateShadowLaunchPercentage < 0.0)
  {
    candidateShadowLaunchPercentage = -candidateShadowLaunchPercentage;
  }

  *v6.i32 = floorf(candidateShadowLaunchPercentage + 0.5);
  v15 = (candidateShadowLaunchPercentage - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v6 = vbslq_s8(v16, v7, v6);
  v17 = 2654435761u * *v6.i32;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabsf(v15);
  }

LABEL_17:
  if ((*&self->_has & 0x200) != 0)
  {
    candidateShadowShownPercentage = self->_candidateShadowShownPercentage;
    if (candidateShadowShownPercentage < 0.0)
    {
      candidateShadowShownPercentage = -candidateShadowShownPercentage;
    }

    *v6.i32 = floorf(candidateShadowShownPercentage + 0.5);
    v20 = (candidateShadowShownPercentage - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v21, v7, v6);
    v18 = 2654435761u * *v6.i32;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabsf(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x80) != 0)
  {
    candidateShadowPrecision = self->_candidateShadowPrecision;
    if (candidateShadowPrecision < 0.0)
    {
      candidateShadowPrecision = -candidateShadowPrecision;
    }

    *v6.i32 = floorf(candidateShadowPrecision + 0.5);
    v24 = (candidateShadowPrecision - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v25.i64[0] = 0x8000000080000000;
    v25.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v25, v7, v6);
    v22 = 2654435761u * *v6.i32;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabsf(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    candidateShadowRecall = self->_candidateShadowRecall;
    if (candidateShadowRecall < 0.0)
    {
      candidateShadowRecall = -candidateShadowRecall;
    }

    *v6.i32 = floorf(candidateShadowRecall + 0.5);
    v28 = (candidateShadowRecall - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v29, v7, v6);
    v26 = 2654435761u * *v6.i32;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabsf(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x20) != 0)
  {
    candidateShadowF1 = self->_candidateShadowF1;
    if (candidateShadowF1 < 0.0)
    {
      candidateShadowF1 = -candidateShadowF1;
    }

    *v6.i32 = floorf(candidateShadowF1 + 0.5);
    v32 = (candidateShadowF1 - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v33.i64[0] = 0x8000000080000000;
    v33.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v33, v7, v6);
    v30 = 2654435761u * *v6.i32;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabsf(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    candidateUILaunchPercentage = self->_candidateUILaunchPercentage;
    if (candidateUILaunchPercentage < 0.0)
    {
      candidateUILaunchPercentage = -candidateUILaunchPercentage;
    }

    *v6.i32 = floorf(candidateUILaunchPercentage + 0.5);
    v36 = (candidateUILaunchPercentage - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v37.i64[0] = 0x8000000080000000;
    v37.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v37, v7, v6);
    v34 = 2654435761u * *v6.i32;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabsf(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    candidateUIShownPercentage = self->_candidateUIShownPercentage;
    if (candidateUIShownPercentage < 0.0)
    {
      candidateUIShownPercentage = -candidateUIShownPercentage;
    }

    *v6.i32 = floorf(candidateUIShownPercentage + 0.5);
    v40 = (candidateUIShownPercentage - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v41.i64[0] = 0x8000000080000000;
    v41.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v41, v7, v6);
    v38 = 2654435761u * *v6.i32;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabsf(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    candidateUIPrecision = self->_candidateUIPrecision;
    if (candidateUIPrecision < 0.0)
    {
      candidateUIPrecision = -candidateUIPrecision;
    }

    *v6.i32 = floorf(candidateUIPrecision + 0.5);
    v44 = (candidateUIPrecision - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v45.i64[0] = 0x8000000080000000;
    v45.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v45, v7, v6);
    v42 = 2654435761u * *v6.i32;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v42 += v44;
      }
    }

    else
    {
      v42 -= fabsf(v44);
    }
  }

  else
  {
    v42 = 0;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    candidateUIRecall = self->_candidateUIRecall;
    if (candidateUIRecall < 0.0)
    {
      candidateUIRecall = -candidateUIRecall;
    }

    *v6.i32 = floorf(candidateUIRecall + 0.5);
    v48 = (candidateUIRecall - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v49.i64[0] = 0x8000000080000000;
    v49.i64[1] = 0x8000000080000000;
    v6 = vbslq_s8(v49, v7, v6);
    v46 = 2654435761u * *v6.i32;
    if (v48 >= 0.0)
    {
      if (v48 > 0.0)
      {
        v46 += v48;
      }
    }

    else
    {
      v46 -= fabsf(v48);
    }
  }

  else
  {
    v46 = 0;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    candidateUIF1 = self->_candidateUIF1;
    if (candidateUIF1 < 0.0)
    {
      candidateUIF1 = -candidateUIF1;
    }

    *v6.i32 = floorf(candidateUIF1 + 0.5);
    v52 = (candidateUIF1 - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v53.i64[0] = 0x8000000080000000;
    v53.i64[1] = 0x8000000080000000;
    v50 = 2654435761u * *vbslq_s8(v53, v7, v6).i32;
    if (v52 >= 0.0)
    {
      if (v52 > 0.0)
      {
        v50 += v52;
      }
    }

    else
    {
      v50 -= fabsf(v52);
    }
  }

  else
  {
    v50 = 0;
  }

  return v10 ^ v9 ^ v11 ^ v12 ^ v13 ^ v17 ^ v18 ^ v22 ^ v26 ^ v30 ^ v34 ^ v38 ^ v42 ^ v46 ^ v50 ^ [(NSString *)self->_candidateIdentifier hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 38);
  if ((v5 & 8) != 0)
  {
    self->_candidateNumberOfPositiveSamples = *(v4 + 7);
    *&self->_has |= 8u;
    v5 = *(v4 + 38);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_candidateNumberOfSamples = *(v4 + 8);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 38);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_candidateNumberOfDaysWithPositiveSamples = *(v4 + 4);
  *&self->_has |= 1u;
  v5 = *(v4 + 38);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_candidateNumberOfModelWeights = *(v4 + 5);
  *&self->_has |= 2u;
  v5 = *(v4 + 38);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_candidateNumberOfNonZeroModelWeights = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 38);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_candidateShadowLaunchPercentage = *(v4 + 10);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 38);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_candidateShadowShownPercentage = *(v4 + 13);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 38);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_candidateShadowPrecision = *(v4 + 11);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_candidateShadowRecall = *(v4 + 12);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_candidateShadowF1 = *(v4 + 9);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 38);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_candidateUILaunchPercentage = *(v4 + 15);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 38);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_candidateUIShownPercentage = *(v4 + 18);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_candidateUIPrecision = *(v4 + 16);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 38);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  self->_candidateUIRecall = *(v4 + 17);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 38) & 0x400) != 0)
  {
LABEL_16:
    self->_candidateUIF1 = *(v4 + 14);
    *&self->_has |= 0x400u;
  }

LABEL_17:
  if (*(v4 + 1))
  {
    v6 = v4;
    [(ATXCandidateRelevanceModelPBCandidateMetrics *)self setCandidateIdentifier:?];
    v4 = v6;
  }
}

@end