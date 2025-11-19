@interface ATXCandidateRelevanceModelPBEvaluationMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProdShadowEvaluationNumberOfDaysWithSessions:(BOOL)a3;
- (void)setHasProdShadowEvaluationNumberOfSessions:(BOOL)a3;
- (void)setHasProdShadowEvaluationNumberOfSessionsWithPredictions:(BOOL)a3;
- (void)setHasProdShadowEvaluationSuccessAt1:(BOOL)a3;
- (void)setHasProdShadowEvaluationSuccessAt2:(BOOL)a3;
- (void)setHasProdShadowEvaluationSuccessAt4:(BOOL)a3;
- (void)setHasProdShadowEvaluationSuccessAt8:(BOOL)a3;
- (void)setHasProdUIEvaluationMRR:(BOOL)a3;
- (void)setHasProdUIEvaluationNumberOfDaysWithSessions:(BOOL)a3;
- (void)setHasProdUIEvaluationNumberOfSessions:(BOOL)a3;
- (void)setHasProdUIEvaluationNumberOfSessionsWithPredictions:(BOOL)a3;
- (void)setHasProdUIEvaluationSuccessAt1:(BOOL)a3;
- (void)setHasProdUIEvaluationSuccessAt2:(BOOL)a3;
- (void)setHasProdUIEvaluationSuccessAt4:(BOOL)a3;
- (void)setHasProdUIEvaluationSuccessAt8:(BOOL)a3;
- (void)setHasShadowEvaluationMRR:(BOOL)a3;
- (void)setHasShadowEvaluationNumberOfDaysWithSessions:(BOOL)a3;
- (void)setHasShadowEvaluationNumberOfSessions:(BOOL)a3;
- (void)setHasShadowEvaluationNumberOfSessionsWithPredictions:(BOOL)a3;
- (void)setHasShadowEvaluationSuccessAt1:(BOOL)a3;
- (void)setHasShadowEvaluationSuccessAt2:(BOOL)a3;
- (void)setHasShadowEvaluationSuccessAt4:(BOOL)a3;
- (void)setHasShadowEvaluationSuccessAt8:(BOOL)a3;
- (void)setHasUiEvaluationMRR:(BOOL)a3;
- (void)setHasUiEvaluationNumberOfDaysWithSessions:(BOOL)a3;
- (void)setHasUiEvaluationNumberOfSessions:(BOOL)a3;
- (void)setHasUiEvaluationNumberOfSessionsWithPredictions:(BOOL)a3;
- (void)setHasUiEvaluationSuccessAt1:(BOOL)a3;
- (void)setHasUiEvaluationSuccessAt2:(BOOL)a3;
- (void)setHasUiEvaluationSuccessAt4:(BOOL)a3;
- (void)setHasUiEvaluationSuccessAt8:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXCandidateRelevanceModelPBEvaluationMetrics

- (void)setHasUiEvaluationSuccessAt1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasUiEvaluationSuccessAt2:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasUiEvaluationSuccessAt4:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasUiEvaluationSuccessAt8:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (void)setHasUiEvaluationMRR:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasUiEvaluationNumberOfSessionsWithPredictions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasUiEvaluationNumberOfSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasUiEvaluationNumberOfDaysWithSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasShadowEvaluationSuccessAt1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasShadowEvaluationSuccessAt2:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasShadowEvaluationSuccessAt4:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasShadowEvaluationSuccessAt8:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasShadowEvaluationMRR:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasShadowEvaluationNumberOfSessionsWithPredictions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasShadowEvaluationNumberOfSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasShadowEvaluationNumberOfDaysWithSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasProdUIEvaluationSuccessAt1:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasProdUIEvaluationSuccessAt2:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasProdUIEvaluationSuccessAt4:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasProdUIEvaluationSuccessAt8:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasProdUIEvaluationMRR:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasProdUIEvaluationNumberOfSessionsWithPredictions:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasProdUIEvaluationNumberOfSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasProdUIEvaluationNumberOfDaysWithSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasProdShadowEvaluationSuccessAt1:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasProdShadowEvaluationSuccessAt2:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasProdShadowEvaluationSuccessAt4:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasProdShadowEvaluationSuccessAt8:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasProdShadowEvaluationNumberOfSessionsWithPredictions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasProdShadowEvaluationNumberOfSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasProdShadowEvaluationNumberOfDaysWithSessions:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXCandidateRelevanceModelPBEvaluationMetrics;
  v4 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)&v8 description];
  v5 = [(ATXCandidateRelevanceModelPBEvaluationMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    *&v4 = self->_uiEvaluationSuccessAt1;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v9 forKey:@"uiEvaluationSuccessAt1"];

    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_uiEvaluationSuccessAt2;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v10 forKey:@"uiEvaluationSuccessAt2"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *&v4 = self->_uiEvaluationSuccessAt4;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v11 forKey:@"uiEvaluationSuccessAt4"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *&v4 = self->_uiEvaluationSuccessAt8;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v12 forKey:@"uiEvaluationSuccessAt8"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *&v4 = self->_uiEvaluationMRR;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v13 forKey:@"uiEvaluationMRR"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uiEvaluationNumberOfSessionsWithPredictions];
  [v3 setObject:v14 forKey:@"uiEvaluationNumberOfSessionsWithPredictions"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uiEvaluationNumberOfSessions];
  [v3 setObject:v15 forKey:@"uiEvaluationNumberOfSessions"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uiEvaluationNumberOfDaysWithSessions];
  [v3 setObject:v16 forKey:@"uiEvaluationNumberOfDaysWithSessions"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *&v4 = self->_shadowEvaluationSuccessAt1;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v17 forKey:@"shadowEvaluationSuccessAt1"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *&v4 = self->_shadowEvaluationSuccessAt2;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v18 forKey:@"shadowEvaluationSuccessAt2"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *&v4 = self->_shadowEvaluationSuccessAt4;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v19 forKey:@"shadowEvaluationSuccessAt4"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *&v4 = self->_shadowEvaluationSuccessAt8;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v20 forKey:@"shadowEvaluationSuccessAt8"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *&v4 = self->_shadowEvaluationMRR;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v21 forKey:@"shadowEvaluationMRR"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shadowEvaluationNumberOfSessionsWithPredictions];
  [v3 setObject:v22 forKey:@"shadowEvaluationNumberOfSessionsWithPredictions"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shadowEvaluationNumberOfSessions];
  [v3 setObject:v23 forKey:@"shadowEvaluationNumberOfSessions"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shadowEvaluationNumberOfDaysWithSessions];
  [v3 setObject:v24 forKey:@"shadowEvaluationNumberOfDaysWithSessions"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *&v4 = self->_prodUIEvaluationSuccessAt1;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v25 forKey:@"prodUIEvaluationSuccessAt1"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  *&v4 = self->_prodUIEvaluationSuccessAt2;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v26 forKey:@"prodUIEvaluationSuccessAt2"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *&v4 = self->_prodUIEvaluationSuccessAt4;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v27 forKey:@"prodUIEvaluationSuccessAt4"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  *&v4 = self->_prodUIEvaluationSuccessAt8;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v28 forKey:@"prodUIEvaluationSuccessAt8"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *&v4 = self->_prodUIEvaluationMRR;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v29 forKey:@"prodUIEvaluationMRR"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodUIEvaluationNumberOfSessionsWithPredictions];
  [v3 setObject:v30 forKey:@"prodUIEvaluationNumberOfSessionsWithPredictions"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodUIEvaluationNumberOfSessions];
  [v3 setObject:v31 forKey:@"prodUIEvaluationNumberOfSessions"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodUIEvaluationNumberOfDaysWithSessions];
  [v3 setObject:v32 forKey:@"prodUIEvaluationNumberOfDaysWithSessions"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  *&v4 = self->_prodShadowEvaluationSuccessAt1;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v33 forKey:@"prodShadowEvaluationSuccessAt1"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  *&v4 = self->_prodShadowEvaluationSuccessAt2;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v34 forKey:@"prodShadowEvaluationSuccessAt2"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *&v4 = self->_prodShadowEvaluationSuccessAt4;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v35 forKey:@"prodShadowEvaluationSuccessAt4"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  *&v4 = self->_prodShadowEvaluationSuccessAt8;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v36 forKey:@"prodShadowEvaluationSuccessAt8"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  *&v4 = self->_prodShadowEvaluationMRR;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v37 forKey:@"prodShadowEvaluationMRR"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_31:
    if ((*&has & 4) == 0)
    {
      goto LABEL_32;
    }

LABEL_65:
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodShadowEvaluationNumberOfSessions];
    [v3 setObject:v39 forKey:@"prodShadowEvaluationNumberOfSessions"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodShadowEvaluationNumberOfSessionsWithPredictions];
  [v3 setObject:v38 forKey:@"prodShadowEvaluationNumberOfSessionsWithPredictions"];

  has = self->_has;
  if ((*&has & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_32:
  if ((*&has & 2) != 0)
  {
LABEL_33:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prodShadowEvaluationNumberOfDaysWithSessions];
    [v3 setObject:v6 forKey:@"prodShadowEvaluationNumberOfDaysWithSessions"];
  }

LABEL_34:
  v7 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v37 = a3;
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    uiEvaluationSuccessAt1 = self->_uiEvaluationSuccessAt1;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  uiEvaluationSuccessAt2 = self->_uiEvaluationSuccessAt2;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  uiEvaluationSuccessAt4 = self->_uiEvaluationSuccessAt4;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  uiEvaluationSuccessAt8 = self->_uiEvaluationSuccessAt8;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  uiEvaluationMRR = self->_uiEvaluationMRR;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  uiEvaluationNumberOfSessionsWithPredictions = self->_uiEvaluationNumberOfSessionsWithPredictions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  uiEvaluationNumberOfSessions = self->_uiEvaluationNumberOfSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  uiEvaluationNumberOfDaysWithSessions = self->_uiEvaluationNumberOfDaysWithSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  shadowEvaluationSuccessAt1 = self->_shadowEvaluationSuccessAt1;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  shadowEvaluationSuccessAt2 = self->_shadowEvaluationSuccessAt2;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  shadowEvaluationSuccessAt4 = self->_shadowEvaluationSuccessAt4;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  shadowEvaluationSuccessAt8 = self->_shadowEvaluationSuccessAt8;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  shadowEvaluationMRR = self->_shadowEvaluationMRR;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  shadowEvaluationNumberOfSessionsWithPredictions = self->_shadowEvaluationNumberOfSessionsWithPredictions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  shadowEvaluationNumberOfSessions = self->_shadowEvaluationNumberOfSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  shadowEvaluationNumberOfDaysWithSessions = self->_shadowEvaluationNumberOfDaysWithSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  prodUIEvaluationSuccessAt1 = self->_prodUIEvaluationSuccessAt1;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  prodUIEvaluationSuccessAt2 = self->_prodUIEvaluationSuccessAt2;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  prodUIEvaluationSuccessAt4 = self->_prodUIEvaluationSuccessAt4;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  prodUIEvaluationSuccessAt8 = self->_prodUIEvaluationSuccessAt8;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  prodUIEvaluationMRR = self->_prodUIEvaluationMRR;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  prodUIEvaluationNumberOfSessionsWithPredictions = self->_prodUIEvaluationNumberOfSessionsWithPredictions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  prodUIEvaluationNumberOfSessions = self->_prodUIEvaluationNumberOfSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  prodUIEvaluationNumberOfDaysWithSessions = self->_prodUIEvaluationNumberOfDaysWithSessions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  prodShadowEvaluationSuccessAt1 = self->_prodShadowEvaluationSuccessAt1;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  prodShadowEvaluationSuccessAt2 = self->_prodShadowEvaluationSuccessAt2;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  prodShadowEvaluationSuccessAt4 = self->_prodShadowEvaluationSuccessAt4;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  prodShadowEvaluationSuccessAt8 = self->_prodShadowEvaluationSuccessAt8;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  prodShadowEvaluationMRR = self->_prodShadowEvaluationMRR;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_31:
    if ((*&has & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  prodShadowEvaluationNumberOfSessionsWithPredictions = self->_prodShadowEvaluationNumberOfSessionsWithPredictions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_32:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  prodShadowEvaluationNumberOfSessions = self->_prodShadowEvaluationNumberOfSessions;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_33:
    prodShadowEvaluationNumberOfDaysWithSessions = self->_prodShadowEvaluationNumberOfDaysWithSessions;
    PBDataWriterWriteUint32Field();
  }

LABEL_34:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    v4[30] = LODWORD(self->_uiEvaluationSuccessAt1);
    v4[34] |= 0x10000000u;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  v4[31] = LODWORD(self->_uiEvaluationSuccessAt2);
  v4[34] |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4[32] = LODWORD(self->_uiEvaluationSuccessAt4);
  v4[34] |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4[33] = LODWORD(self->_uiEvaluationSuccessAt8);
  v4[34] |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4[26] = LODWORD(self->_uiEvaluationMRR);
  v4[34] |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4[29] = self->_uiEvaluationNumberOfSessionsWithPredictions;
  v4[34] |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4[28] = self->_uiEvaluationNumberOfSessions;
  v4[34] |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  v4[27] = self->_uiEvaluationNumberOfDaysWithSessions;
  v4[34] |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v4[22] = LODWORD(self->_shadowEvaluationSuccessAt1);
  v4[34] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v4[23] = LODWORD(self->_shadowEvaluationSuccessAt2);
  v4[34] |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v4[24] = LODWORD(self->_shadowEvaluationSuccessAt4);
  v4[34] |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v4[25] = LODWORD(self->_shadowEvaluationSuccessAt8);
  v4[34] |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4[18] = LODWORD(self->_shadowEvaluationMRR);
  v4[34] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4[21] = self->_shadowEvaluationNumberOfSessionsWithPredictions;
  v4[34] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v4[20] = self->_shadowEvaluationNumberOfSessions;
  v4[34] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4[19] = self->_shadowEvaluationNumberOfDaysWithSessions;
  v4[34] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4[14] = LODWORD(self->_prodUIEvaluationSuccessAt1);
  v4[34] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  v4[15] = LODWORD(self->_prodUIEvaluationSuccessAt2);
  v4[34] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4[16] = LODWORD(self->_prodUIEvaluationSuccessAt4);
  v4[34] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4[17] = LODWORD(self->_prodUIEvaluationSuccessAt8);
  v4[34] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4[10] = LODWORD(self->_prodUIEvaluationMRR);
  v4[34] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4[13] = self->_prodUIEvaluationNumberOfSessionsWithPredictions;
  v4[34] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  v4[12] = self->_prodUIEvaluationNumberOfSessions;
  v4[34] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v4[11] = self->_prodUIEvaluationNumberOfDaysWithSessions;
  v4[34] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  v4[6] = LODWORD(self->_prodShadowEvaluationSuccessAt1);
  v4[34] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4[7] = LODWORD(self->_prodShadowEvaluationSuccessAt2);
  v4[34] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  v4[8] = LODWORD(self->_prodShadowEvaluationSuccessAt4);
  v4[34] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v4[9] = LODWORD(self->_prodShadowEvaluationSuccessAt8);
  v4[34] |= 0x80u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v4[2] = LODWORD(self->_prodShadowEvaluationMRR);
  v4[34] |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_31:
    if ((*&has & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  v4[5] = self->_prodShadowEvaluationNumberOfSessionsWithPredictions;
  v4[34] |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_32:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  v4[4] = self->_prodShadowEvaluationNumberOfSessions;
  v4[34] |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_33:
    v4[3] = self->_prodShadowEvaluationNumberOfDaysWithSessions;
    v4[34] |= 2u;
  }

LABEL_34:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    *(v4 + 120) = self->_uiEvaluationSuccessAt1;
    *(v4 + 136) |= 0x10000000u;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 124) = self->_uiEvaluationSuccessAt2;
  *(v4 + 136) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 128) = self->_uiEvaluationSuccessAt4;
  *(v4 + 136) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 132) = self->_uiEvaluationSuccessAt8;
  *(v4 + 136) |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 104) = self->_uiEvaluationMRR;
  *(v4 + 136) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 116) = self->_uiEvaluationNumberOfSessionsWithPredictions;
  *(v4 + 136) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 112) = self->_uiEvaluationNumberOfSessions;
  *(v4 + 136) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 108) = self->_uiEvaluationNumberOfDaysWithSessions;
  *(v4 + 136) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 88) = self->_shadowEvaluationSuccessAt1;
  *(v4 + 136) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 92) = self->_shadowEvaluationSuccessAt2;
  *(v4 + 136) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 96) = self->_shadowEvaluationSuccessAt4;
  *(v4 + 136) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 100) = self->_shadowEvaluationSuccessAt8;
  *(v4 + 136) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 72) = self->_shadowEvaluationMRR;
  *(v4 + 136) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 84) = self->_shadowEvaluationNumberOfSessionsWithPredictions;
  *(v4 + 136) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 80) = self->_shadowEvaluationNumberOfSessions;
  *(v4 + 136) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 76) = self->_shadowEvaluationNumberOfDaysWithSessions;
  *(v4 + 136) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 56) = self->_prodUIEvaluationSuccessAt1;
  *(v4 + 136) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 60) = self->_prodUIEvaluationSuccessAt2;
  *(v4 + 136) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 64) = self->_prodUIEvaluationSuccessAt4;
  *(v4 + 136) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 68) = self->_prodUIEvaluationSuccessAt8;
  *(v4 + 136) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 40) = self->_prodUIEvaluationMRR;
  *(v4 + 136) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 52) = self->_prodUIEvaluationNumberOfSessionsWithPredictions;
  *(v4 + 136) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 48) = self->_prodUIEvaluationNumberOfSessions;
  *(v4 + 136) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 44) = self->_prodUIEvaluationNumberOfDaysWithSessions;
  *(v4 + 136) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 24) = self->_prodShadowEvaluationSuccessAt1;
  *(v4 + 136) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 28) = self->_prodShadowEvaluationSuccessAt2;
  *(v4 + 136) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 32) = self->_prodShadowEvaluationSuccessAt4;
  *(v4 + 136) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 36) = self->_prodShadowEvaluationSuccessAt8;
  *(v4 + 136) |= 0x80u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 8) = self->_prodShadowEvaluationMRR;
  *(v4 + 136) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_31:
    if ((*&has & 4) == 0)
    {
      goto LABEL_32;
    }

LABEL_65:
    *(v4 + 16) = self->_prodShadowEvaluationNumberOfSessions;
    *(v4 + 136) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  *(v4 + 20) = self->_prodShadowEvaluationNumberOfSessionsWithPredictions;
  *(v4 + 136) |= 8u;
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_32:
  if ((*&has & 2) != 0)
  {
LABEL_33:
    *(v4 + 12) = self->_prodShadowEvaluationNumberOfDaysWithSessions;
    *(v4 + 136) |= 2u;
  }

LABEL_34:
  v6 = v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_162;
  }

  has = self->_has;
  v6 = *(v4 + 34);
  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_uiEvaluationSuccessAt1 != *(v4 + 30))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_uiEvaluationSuccessAt2 != *(v4 + 31))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_uiEvaluationSuccessAt4 != *(v4 + 32))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_uiEvaluationSuccessAt8 != *(v4 + 33))
    {
      goto LABEL_162;
    }
  }

  else if (v6 < 0)
  {
LABEL_162:
    v7 = 0;
    goto LABEL_163;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_uiEvaluationMRR != *(v4 + 26))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_uiEvaluationNumberOfSessionsWithPredictions != *(v4 + 29))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_uiEvaluationNumberOfSessions != *(v4 + 28))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_uiEvaluationNumberOfDaysWithSessions != *(v4 + 27))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_shadowEvaluationSuccessAt1 != *(v4 + 22))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_shadowEvaluationSuccessAt2 != *(v4 + 23))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_shadowEvaluationSuccessAt4 != *(v4 + 24))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_shadowEvaluationSuccessAt8 != *(v4 + 25))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_shadowEvaluationMRR != *(v4 + 18))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_shadowEvaluationNumberOfSessionsWithPredictions != *(v4 + 21))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_shadowEvaluationNumberOfSessions != *(v4 + 20))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_shadowEvaluationNumberOfDaysWithSessions != *(v4 + 19))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_prodUIEvaluationSuccessAt1 != *(v4 + 14))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_prodUIEvaluationSuccessAt2 != *(v4 + 15))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_prodUIEvaluationSuccessAt4 != *(v4 + 16))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_prodUIEvaluationSuccessAt8 != *(v4 + 17))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_prodUIEvaluationMRR != *(v4 + 10))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_prodUIEvaluationNumberOfSessionsWithPredictions != *(v4 + 13))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_prodUIEvaluationNumberOfSessions != *(v4 + 12))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_prodUIEvaluationNumberOfDaysWithSessions != *(v4 + 11))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_prodShadowEvaluationSuccessAt1 != *(v4 + 6))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_prodShadowEvaluationSuccessAt2 != *(v4 + 7))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_prodShadowEvaluationSuccessAt4 != *(v4 + 8))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_prodShadowEvaluationSuccessAt8 != *(v4 + 9))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_162;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_prodShadowEvaluationMRR != *(v4 + 2))
    {
      goto LABEL_162;
    }
  }

  else if (v6)
  {
    goto LABEL_162;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_prodShadowEvaluationNumberOfSessionsWithPredictions != *(v4 + 5))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_prodShadowEvaluationNumberOfSessions != *(v4 + 4))
    {
      goto LABEL_162;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_prodShadowEvaluationNumberOfDaysWithSessions != *(v4 + 3))
    {
      goto LABEL_162;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(v4 + 34) & 2) == 0;
  }

LABEL_163:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    uiEvaluationSuccessAt1 = self->_uiEvaluationSuccessAt1;
    if (uiEvaluationSuccessAt1 < 0.0)
    {
      uiEvaluationSuccessAt1 = -uiEvaluationSuccessAt1;
    }

    *v2.i32 = floorf(uiEvaluationSuccessAt1 + 0.5);
    v7 = (uiEvaluationSuccessAt1 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v8, v3, v2);
    v5 = 2654435761u * *v2.i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&has & 0x20000000) != 0)
  {
    uiEvaluationSuccessAt2 = self->_uiEvaluationSuccessAt2;
    if (uiEvaluationSuccessAt2 < 0.0)
    {
      uiEvaluationSuccessAt2 = -uiEvaluationSuccessAt2;
    }

    *v2.i32 = floorf(uiEvaluationSuccessAt2 + 0.5);
    v11 = (uiEvaluationSuccessAt2 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v12, v3, v2);
    v9 = 2654435761u * *v2.i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v101 = v9;
  if ((*&has & 0x40000000) != 0)
  {
    uiEvaluationSuccessAt4 = self->_uiEvaluationSuccessAt4;
    if (uiEvaluationSuccessAt4 < 0.0)
    {
      uiEvaluationSuccessAt4 = -uiEvaluationSuccessAt4;
    }

    *v2.i32 = floorf(uiEvaluationSuccessAt4 + 0.5);
    v15 = (uiEvaluationSuccessAt4 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v16, v3, v2);
    v13 = 2654435761u * *v2.i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabsf(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&has & 0x80000000) != 0)
  {
    uiEvaluationSuccessAt8 = self->_uiEvaluationSuccessAt8;
    if (uiEvaluationSuccessAt8 < 0.0)
    {
      uiEvaluationSuccessAt8 = -uiEvaluationSuccessAt8;
    }

    *v2.i32 = floorf(uiEvaluationSuccessAt8 + 0.5);
    v19 = (uiEvaluationSuccessAt8 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v20, v3, v2);
    v17 = 2654435761u * *v2.i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&has & 0x1000000) != 0)
  {
    uiEvaluationMRR = self->_uiEvaluationMRR;
    if (uiEvaluationMRR < 0.0)
    {
      uiEvaluationMRR = -uiEvaluationMRR;
    }

    *v2.i32 = floorf(uiEvaluationMRR + 0.5);
    v23 = (uiEvaluationMRR - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v24, v3, v2);
    v21 = 2654435761u * *v2.i32;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabsf(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&has & 0x8000000) != 0)
  {
    v100 = 2654435761 * self->_uiEvaluationNumberOfSessionsWithPredictions;
    if ((*&has & 0x4000000) != 0)
    {
LABEL_43:
      v99 = 2654435761 * self->_uiEvaluationNumberOfSessions;
      if ((*&has & 0x2000000) != 0)
      {
        goto LABEL_44;
      }

LABEL_51:
      v98 = 0;
      if ((*&has & 0x100000) != 0)
      {
        goto LABEL_45;
      }

LABEL_52:
      v28 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v100 = 0;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_43;
    }
  }

  v99 = 0;
  if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_44:
  v98 = 2654435761 * self->_uiEvaluationNumberOfDaysWithSessions;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  shadowEvaluationSuccessAt1 = self->_shadowEvaluationSuccessAt1;
  if (shadowEvaluationSuccessAt1 < 0.0)
  {
    shadowEvaluationSuccessAt1 = -shadowEvaluationSuccessAt1;
  }

  *v2.i32 = floorf(shadowEvaluationSuccessAt1 + 0.5);
  v26 = (shadowEvaluationSuccessAt1 - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v27, v3, v2);
  v28 = 2654435761u * *v2.i32;
  if (v26 >= 0.0)
  {
    if (v26 > 0.0)
    {
      v28 += v26;
    }
  }

  else
  {
    v28 -= fabsf(v26);
  }

LABEL_53:
  if ((*&has & 0x200000) != 0)
  {
    shadowEvaluationSuccessAt2 = self->_shadowEvaluationSuccessAt2;
    if (shadowEvaluationSuccessAt2 < 0.0)
    {
      shadowEvaluationSuccessAt2 = -shadowEvaluationSuccessAt2;
    }

    *v2.i32 = floorf(shadowEvaluationSuccessAt2 + 0.5);
    v31 = (shadowEvaluationSuccessAt2 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v32, v3, v2);
    v29 = 2654435761u * *v2.i32;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabsf(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&has & 0x400000) != 0)
  {
    shadowEvaluationSuccessAt4 = self->_shadowEvaluationSuccessAt4;
    if (shadowEvaluationSuccessAt4 < 0.0)
    {
      shadowEvaluationSuccessAt4 = -shadowEvaluationSuccessAt4;
    }

    *v2.i32 = floorf(shadowEvaluationSuccessAt4 + 0.5);
    v35 = (shadowEvaluationSuccessAt4 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v36.i64[0] = 0x8000000080000000;
    v36.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v36, v3, v2);
    v33 = 2654435761u * *v2.i32;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabsf(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((*&has & 0x800000) != 0)
  {
    shadowEvaluationSuccessAt8 = self->_shadowEvaluationSuccessAt8;
    if (shadowEvaluationSuccessAt8 < 0.0)
    {
      shadowEvaluationSuccessAt8 = -shadowEvaluationSuccessAt8;
    }

    *v2.i32 = floorf(shadowEvaluationSuccessAt8 + 0.5);
    v39 = (shadowEvaluationSuccessAt8 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v40, v3, v2);
    v37 = 2654435761u * *v2.i32;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabsf(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    shadowEvaluationMRR = self->_shadowEvaluationMRR;
    if (shadowEvaluationMRR < 0.0)
    {
      shadowEvaluationMRR = -shadowEvaluationMRR;
    }

    *v2.i32 = floorf(shadowEvaluationMRR + 0.5);
    v43 = (shadowEvaluationMRR - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v44.i64[0] = 0x8000000080000000;
    v44.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v44, v3, v2);
    v41 = 2654435761u * *v2.i32;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabsf(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    v97 = 2654435761 * self->_shadowEvaluationNumberOfSessionsWithPredictions;
    if ((*&has & 0x40000) != 0)
    {
LABEL_89:
      v45 = 2654435761 * self->_shadowEvaluationNumberOfSessions;
      if ((*&has & 0x20000) != 0)
      {
        goto LABEL_90;
      }

LABEL_97:
      v46 = 0;
      if ((*&has & 0x1000) != 0)
      {
        goto LABEL_91;
      }

LABEL_98:
      v50 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v97 = 0;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_89;
    }
  }

  v45 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_97;
  }

LABEL_90:
  v46 = 2654435761 * self->_shadowEvaluationNumberOfDaysWithSessions;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_98;
  }

LABEL_91:
  prodUIEvaluationSuccessAt1 = self->_prodUIEvaluationSuccessAt1;
  if (prodUIEvaluationSuccessAt1 < 0.0)
  {
    prodUIEvaluationSuccessAt1 = -prodUIEvaluationSuccessAt1;
  }

  *v2.i32 = floorf(prodUIEvaluationSuccessAt1 + 0.5);
  v48 = (prodUIEvaluationSuccessAt1 - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v49.i64[0] = 0x8000000080000000;
  v49.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v49, v3, v2);
  v50 = 2654435761u * *v2.i32;
  if (v48 >= 0.0)
  {
    if (v48 > 0.0)
    {
      v50 += v48;
    }
  }

  else
  {
    v50 -= fabsf(v48);
  }

LABEL_99:
  if ((*&has & 0x2000) != 0)
  {
    prodUIEvaluationSuccessAt2 = self->_prodUIEvaluationSuccessAt2;
    if (prodUIEvaluationSuccessAt2 < 0.0)
    {
      prodUIEvaluationSuccessAt2 = -prodUIEvaluationSuccessAt2;
    }

    *v2.i32 = floorf(prodUIEvaluationSuccessAt2 + 0.5);
    v53 = (prodUIEvaluationSuccessAt2 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v54.i64[0] = 0x8000000080000000;
    v54.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v54, v3, v2);
    v51 = 2654435761u * *v2.i32;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabsf(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((*&has & 0x4000) != 0)
  {
    prodUIEvaluationSuccessAt4 = self->_prodUIEvaluationSuccessAt4;
    if (prodUIEvaluationSuccessAt4 < 0.0)
    {
      prodUIEvaluationSuccessAt4 = -prodUIEvaluationSuccessAt4;
    }

    *v2.i32 = floorf(prodUIEvaluationSuccessAt4 + 0.5);
    v57 = (prodUIEvaluationSuccessAt4 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v58.i64[0] = 0x8000000080000000;
    v58.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v58, v3, v2);
    v55 = 2654435761u * *v2.i32;
    if (v57 >= 0.0)
    {
      if (v57 > 0.0)
      {
        v55 += v57;
      }
    }

    else
    {
      v55 -= fabsf(v57);
    }
  }

  else
  {
    v55 = 0;
  }

  if ((*&has & 0x8000) != 0)
  {
    prodUIEvaluationSuccessAt8 = self->_prodUIEvaluationSuccessAt8;
    if (prodUIEvaluationSuccessAt8 < 0.0)
    {
      prodUIEvaluationSuccessAt8 = -prodUIEvaluationSuccessAt8;
    }

    *v2.i32 = floorf(prodUIEvaluationSuccessAt8 + 0.5);
    v61 = (prodUIEvaluationSuccessAt8 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v62.i64[0] = 0x8000000080000000;
    v62.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v62, v3, v2);
    v59 = 2654435761u * *v2.i32;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabsf(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  if ((*&has & 0x100) != 0)
  {
    prodUIEvaluationMRR = self->_prodUIEvaluationMRR;
    if (prodUIEvaluationMRR < 0.0)
    {
      prodUIEvaluationMRR = -prodUIEvaluationMRR;
    }

    *v2.i32 = floorf(prodUIEvaluationMRR + 0.5);
    v65 = (prodUIEvaluationMRR - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v66.i64[0] = 0x8000000080000000;
    v66.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v66, v3, v2);
    v63 = 2654435761u * *v2.i32;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v63 += v65;
      }
    }

    else
    {
      v63 -= fabsf(v65);
    }
  }

  else
  {
    v63 = 0;
  }

  if ((*&has & 0x800) != 0)
  {
    v67 = 2654435761 * self->_prodUIEvaluationNumberOfSessionsWithPredictions;
    if ((*&has & 0x400) != 0)
    {
LABEL_135:
      v68 = 2654435761 * self->_prodUIEvaluationNumberOfSessions;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_136;
      }

LABEL_143:
      v69 = 0;
      if ((*&has & 0x10) != 0)
      {
        goto LABEL_137;
      }

LABEL_144:
      v73 = 0;
      goto LABEL_145;
    }
  }

  else
  {
    v67 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_135;
    }
  }

  v68 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_143;
  }

LABEL_136:
  v69 = 2654435761 * self->_prodUIEvaluationNumberOfDaysWithSessions;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_144;
  }

LABEL_137:
  prodShadowEvaluationSuccessAt1 = self->_prodShadowEvaluationSuccessAt1;
  if (prodShadowEvaluationSuccessAt1 < 0.0)
  {
    prodShadowEvaluationSuccessAt1 = -prodShadowEvaluationSuccessAt1;
  }

  *v2.i32 = floorf(prodShadowEvaluationSuccessAt1 + 0.5);
  v71 = (prodShadowEvaluationSuccessAt1 - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v72.i64[0] = 0x8000000080000000;
  v72.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v72, v3, v2);
  v73 = 2654435761u * *v2.i32;
  if (v71 >= 0.0)
  {
    if (v71 > 0.0)
    {
      v73 += v71;
    }
  }

  else
  {
    v73 -= fabsf(v71);
  }

LABEL_145:
  if ((*&has & 0x20) != 0)
  {
    prodShadowEvaluationSuccessAt2 = self->_prodShadowEvaluationSuccessAt2;
    if (prodShadowEvaluationSuccessAt2 < 0.0)
    {
      prodShadowEvaluationSuccessAt2 = -prodShadowEvaluationSuccessAt2;
    }

    *v2.i32 = floorf(prodShadowEvaluationSuccessAt2 + 0.5);
    v76 = (prodShadowEvaluationSuccessAt2 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v77.i64[0] = 0x8000000080000000;
    v77.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v77, v3, v2);
    v74 = 2654435761u * *v2.i32;
    if (v76 >= 0.0)
    {
      if (v76 > 0.0)
      {
        v74 += v76;
      }
    }

    else
    {
      v74 -= fabsf(v76);
    }
  }

  else
  {
    v74 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    prodShadowEvaluationSuccessAt4 = self->_prodShadowEvaluationSuccessAt4;
    if (prodShadowEvaluationSuccessAt4 < 0.0)
    {
      prodShadowEvaluationSuccessAt4 = -prodShadowEvaluationSuccessAt4;
    }

    *v2.i32 = floorf(prodShadowEvaluationSuccessAt4 + 0.5);
    v80 = (prodShadowEvaluationSuccessAt4 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v81.i64[0] = 0x8000000080000000;
    v81.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v81, v3, v2);
    v78 = 2654435761u * *v2.i32;
    if (v80 >= 0.0)
    {
      if (v80 > 0.0)
      {
        v78 += v80;
      }
    }

    else
    {
      v78 -= fabsf(v80);
    }
  }

  else
  {
    v78 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    prodShadowEvaluationSuccessAt8 = self->_prodShadowEvaluationSuccessAt8;
    if (prodShadowEvaluationSuccessAt8 < 0.0)
    {
      prodShadowEvaluationSuccessAt8 = -prodShadowEvaluationSuccessAt8;
    }

    *v2.i32 = floorf(prodShadowEvaluationSuccessAt8 + 0.5);
    v84 = (prodShadowEvaluationSuccessAt8 - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v85.i64[0] = 0x8000000080000000;
    v85.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v85, v3, v2);
    v82 = 2654435761u * *v2.i32;
    if (v84 >= 0.0)
    {
      if (v84 > 0.0)
      {
        v82 += v84;
      }
    }

    else
    {
      v82 -= fabsf(v84);
    }
  }

  else
  {
    v82 = 0;
  }

  if (*&has)
  {
    prodShadowEvaluationMRR = self->_prodShadowEvaluationMRR;
    if (prodShadowEvaluationMRR < 0.0)
    {
      prodShadowEvaluationMRR = -prodShadowEvaluationMRR;
    }

    *v2.i32 = floorf(prodShadowEvaluationMRR + 0.5);
    v88 = (prodShadowEvaluationMRR - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v89.i64[0] = 0x8000000080000000;
    v89.i64[1] = 0x8000000080000000;
    v86 = 2654435761u * *vbslq_s8(v89, v3, v2).i32;
    if (v88 >= 0.0)
    {
      if (v88 > 0.0)
      {
        v86 += v88;
      }
    }

    else
    {
      v86 -= fabsf(v88);
    }
  }

  else
  {
    v86 = 0;
  }

  v90 = v13;
  v91 = v17;
  if ((*&has & 8) != 0)
  {
    v92 = 2654435761 * self->_prodShadowEvaluationNumberOfSessionsWithPredictions;
  }

  else
  {
    v92 = 0;
  }

  v93 = v5;
  if ((*&has & 4) != 0)
  {
    v94 = 2654435761 * self->_prodShadowEvaluationNumberOfSessions;
    if ((*&has & 2) != 0)
    {
      goto LABEL_184;
    }

LABEL_186:
    v95 = 0;
    return v101 ^ v93 ^ v90 ^ v91 ^ v21 ^ v100 ^ v99 ^ v98 ^ v28 ^ v29 ^ v33 ^ v37 ^ v41 ^ v97 ^ v45 ^ v46 ^ v50 ^ v51 ^ v55 ^ v59 ^ v63 ^ v67 ^ v68 ^ v69 ^ v73 ^ v74 ^ v78 ^ v82 ^ v86 ^ v92 ^ v94 ^ v95;
  }

  v94 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_186;
  }

LABEL_184:
  v95 = 2654435761 * self->_prodShadowEvaluationNumberOfDaysWithSessions;
  return v101 ^ v93 ^ v90 ^ v91 ^ v21 ^ v100 ^ v99 ^ v98 ^ v28 ^ v29 ^ v33 ^ v37 ^ v41 ^ v97 ^ v45 ^ v46 ^ v50 ^ v51 ^ v55 ^ v59 ^ v63 ^ v67 ^ v68 ^ v69 ^ v73 ^ v74 ^ v78 ^ v82 ^ v86 ^ v92 ^ v94 ^ v95;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 34);
  if ((v5 & 0x10000000) != 0)
  {
    self->_uiEvaluationSuccessAt1 = *(v4 + 30);
    *&self->_has |= 0x10000000u;
    v5 = *(v4 + 34);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  self->_uiEvaluationSuccessAt2 = *(v4 + 31);
  *&self->_has |= 0x20000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_uiEvaluationSuccessAt4 = *(v4 + 32);
  *&self->_has |= 0x40000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_uiEvaluationSuccessAt8 = *(v4 + 33);
  *&self->_has |= 0x80000000;
  v5 = *(v4 + 34);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_uiEvaluationMRR = *(v4 + 26);
  *&self->_has |= 0x1000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_uiEvaluationNumberOfSessionsWithPredictions = *(v4 + 29);
  *&self->_has |= 0x8000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_uiEvaluationNumberOfSessions = *(v4 + 28);
  *&self->_has |= 0x4000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_uiEvaluationNumberOfDaysWithSessions = *(v4 + 27);
  *&self->_has |= 0x2000000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x100000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_shadowEvaluationSuccessAt1 = *(v4 + 22);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x200000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_shadowEvaluationSuccessAt2 = *(v4 + 23);
  *&self->_has |= 0x200000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x400000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_shadowEvaluationSuccessAt4 = *(v4 + 24);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x800000) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_shadowEvaluationSuccessAt8 = *(v4 + 25);
  *&self->_has |= 0x800000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_shadowEvaluationMRR = *(v4 + 18);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x80000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_shadowEvaluationNumberOfSessionsWithPredictions = *(v4 + 21);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_shadowEvaluationNumberOfSessions = *(v4 + 20);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_shadowEvaluationNumberOfDaysWithSessions = *(v4 + 19);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_prodUIEvaluationSuccessAt1 = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x2000) == 0)
  {
LABEL_19:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_prodUIEvaluationSuccessAt2 = *(v4 + 15);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x4000) == 0)
  {
LABEL_20:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_prodUIEvaluationSuccessAt4 = *(v4 + 16);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x8000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_prodUIEvaluationSuccessAt8 = *(v4 + 17);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_prodUIEvaluationMRR = *(v4 + 10);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 34);
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_prodUIEvaluationNumberOfSessionsWithPredictions = *(v4 + 13);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_24:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_prodUIEvaluationNumberOfSessions = *(v4 + 12);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_25:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_prodUIEvaluationNumberOfDaysWithSessions = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_26:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_prodShadowEvaluationSuccessAt1 = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_27:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_prodShadowEvaluationSuccessAt2 = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_28:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_prodShadowEvaluationSuccessAt4 = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_29:
    if ((v5 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_prodShadowEvaluationSuccessAt8 = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 34);
  if ((v5 & 1) == 0)
  {
LABEL_30:
    if ((v5 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_prodShadowEvaluationMRR = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 34);
  if ((v5 & 8) == 0)
  {
LABEL_31:
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_prodShadowEvaluationNumberOfSessionsWithPredictions = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 34);
  if ((v5 & 4) == 0)
  {
LABEL_32:
    if ((v5 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  self->_prodShadowEvaluationNumberOfSessions = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 34) & 2) != 0)
  {
LABEL_33:
    self->_prodShadowEvaluationNumberOfDaysWithSessions = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_34:
}

@end