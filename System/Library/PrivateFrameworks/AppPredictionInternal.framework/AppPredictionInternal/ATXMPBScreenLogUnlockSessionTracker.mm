@interface ATXMPBScreenLogUnlockSessionTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppLibraryEnabled:(BOOL)a3;
- (void)setHasAppLibraryViewed:(BOOL)a3;
- (void)setHasAppPredictionPanelEnabled:(BOOL)a3;
- (void)setHasAppPredictionPanelTodayPageEnabled:(BOOL)a3;
- (void)setHasAppPredictionPanelTodayPageViewed:(BOOL)a3;
- (void)setHasAppPredictionPanelViewed:(BOOL)a3;
- (void)setHasNumEngagementsInAppPredictionPanel:(BOOL)a3;
- (void)setHasNumEngagementsInAppPredictionPanelTodayPage:(BOOL)a3;
- (void)setHasNumEngagementsInSpotlightActions:(BOOL)a3;
- (void)setHasNumEngagementsInSpotlightApps:(BOOL)a3;
- (void)setHasNumEngagementsInSuggestionsWidget:(BOOL)a3;
- (void)setHasNumEngagementsInSuggestionsWidgetTodayPage:(BOOL)a3;
- (void)setHasSessionLengthInSeconds:(BOOL)a3;
- (void)setHasSpotlightActionsViewed:(BOOL)a3;
- (void)setHasSpotlightAppsViewed:(BOOL)a3;
- (void)setHasSpotlightEnabled:(BOOL)a3;
- (void)setHasSuggestionsWidgetEnabled:(BOOL)a3;
- (void)setHasSuggestionsWidgetTodayPageEnabled:(BOOL)a3;
- (void)setHasSuggestionsWidgetTodayPageViewed:(BOOL)a3;
- (void)setHasSuggestionsWidgetViewed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBScreenLogUnlockSessionTracker

- (void)setHasSessionLengthInSeconds:(BOOL)a3
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

- (void)setHasNumEngagementsInSpotlightApps:(BOOL)a3
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

- (void)setHasNumEngagementsInSpotlightActions:(BOOL)a3
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

- (void)setHasNumEngagementsInSuggestionsWidget:(BOOL)a3
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

- (void)setHasNumEngagementsInAppPredictionPanel:(BOOL)a3
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

- (void)setHasSpotlightEnabled:(BOOL)a3
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

- (void)setHasSuggestionsWidgetEnabled:(BOOL)a3
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

- (void)setHasAppPredictionPanelEnabled:(BOOL)a3
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

- (void)setHasAppLibraryEnabled:(BOOL)a3
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

- (void)setHasSpotlightAppsViewed:(BOOL)a3
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

- (void)setHasSpotlightActionsViewed:(BOOL)a3
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

- (void)setHasSuggestionsWidgetViewed:(BOOL)a3
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

- (void)setHasAppPredictionPanelViewed:(BOOL)a3
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

- (void)setHasAppLibraryViewed:(BOOL)a3
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

- (void)setHasSuggestionsWidgetTodayPageViewed:(BOOL)a3
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

- (void)setHasAppPredictionPanelTodayPageViewed:(BOOL)a3
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

- (void)setHasNumEngagementsInSuggestionsWidgetTodayPage:(BOOL)a3
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

- (void)setHasNumEngagementsInAppPredictionPanelTodayPage:(BOOL)a3
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

- (void)setHasSuggestionsWidgetTodayPageEnabled:(BOOL)a3
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

- (void)setHasAppPredictionPanelTodayPageEnabled:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBScreenLogUnlockSessionTracker;
  v4 = [(ATXMPBScreenLogUnlockSessionTracker *)&v8 description];
  v5 = [(ATXMPBScreenLogUnlockSessionTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionLengthInSeconds];
    [v3 setObject:v7 forKey:@"sessionLengthInSeconds"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInSpotlightApps];
  [v3 setObject:v8 forKey:@"numEngagementsInSpotlightApps"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInSpotlightActions];
  [v3 setObject:v9 forKey:@"numEngagementsInSpotlightActions"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInSuggestionsWidget];
  [v3 setObject:v10 forKey:@"numEngagementsInSuggestionsWidget"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInAppPredictionPanel];
  [v3 setObject:v11 forKey:@"numEngagementsInAppPredictionPanel"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInAppLibrary];
  [v3 setObject:v12 forKey:@"numEngagementsInAppLibrary"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_spotlightEnabled];
  [v3 setObject:v13 forKey:@"spotlightEnabled"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsWidgetEnabled];
  [v3 setObject:v14 forKey:@"suggestionsWidgetEnabled"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_appPredictionPanelEnabled];
  [v3 setObject:v15 forKey:@"appPredictionPanelEnabled"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_appLibraryEnabled];
  [v3 setObject:v16 forKey:@"appLibraryEnabled"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_spotlightAppsViewed];
  [v3 setObject:v17 forKey:@"spotlightAppsViewed"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_spotlightActionsViewed];
  [v3 setObject:v18 forKey:@"spotlightActionsViewed"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsWidgetViewed];
  [v3 setObject:v19 forKey:@"suggestionsWidgetViewed"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_appPredictionPanelViewed];
  [v3 setObject:v20 forKey:@"appPredictionPanelViewed"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_appLibraryViewed];
  [v3 setObject:v21 forKey:@"appLibraryViewed"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsWidgetTodayPageViewed];
  [v3 setObject:v22 forKey:@"suggestionsWidgetTodayPageViewed"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_appPredictionPanelTodayPageViewed];
  [v3 setObject:v23 forKey:@"appPredictionPanelTodayPageViewed"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInSuggestionsWidgetTodayPage];
  [v3 setObject:v24 forKey:@"numEngagementsInSuggestionsWidgetTodayPage"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEngagementsInAppPredictionPanelTodayPage];
  [v3 setObject:v25 forKey:@"numEngagementsInAppPredictionPanelTodayPage"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsWidgetTodayPageEnabled];
  [v3 setObject:v26 forKey:@"suggestionsWidgetTodayPageEnabled"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_appPredictionPanelTodayPageEnabled];
    [v3 setObject:v5 forKey:@"appPredictionPanelTodayPageEnabled"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)a3
{
  v26 = a3;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    sessionLengthInSeconds = self->_sessionLengthInSeconds;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  numEngagementsInSpotlightApps = self->_numEngagementsInSpotlightApps;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  numEngagementsInSpotlightActions = self->_numEngagementsInSpotlightActions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  numEngagementsInSuggestionsWidget = self->_numEngagementsInSuggestionsWidget;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  numEngagementsInAppPredictionPanel = self->_numEngagementsInAppPredictionPanel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  numEngagementsInAppLibrary = self->_numEngagementsInAppLibrary;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  spotlightEnabled = self->_spotlightEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  suggestionsWidgetEnabled = self->_suggestionsWidgetEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  appPredictionPanelEnabled = self->_appPredictionPanelEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  appLibraryEnabled = self->_appLibraryEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  spotlightAppsViewed = self->_spotlightAppsViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  spotlightActionsViewed = self->_spotlightActionsViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  suggestionsWidgetViewed = self->_suggestionsWidgetViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  appPredictionPanelViewed = self->_appPredictionPanelViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  appLibraryViewed = self->_appLibraryViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  suggestionsWidgetTodayPageViewed = self->_suggestionsWidgetTodayPageViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  appPredictionPanelTodayPageViewed = self->_appPredictionPanelTodayPageViewed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  numEngagementsInSuggestionsWidgetTodayPage = self->_numEngagementsInSuggestionsWidgetTodayPage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  numEngagementsInAppPredictionPanelTodayPage = self->_numEngagementsInAppPredictionPanelTodayPage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  suggestionsWidgetTodayPageEnabled = self->_suggestionsWidgetTodayPageEnabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    appPredictionPanelTodayPageEnabled = self->_appPredictionPanelTodayPageEnabled;
    PBDataWriterWriteBOOLField();
  }

LABEL_23:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v4[9] = self->_sessionLengthInSeconds;
    v4[14] |= 0x80u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_numEngagementsInSpotlightApps;
  v4[14] |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[5] = self->_numEngagementsInSpotlightActions;
  v4[14] |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[7] = self->_numEngagementsInSuggestionsWidget;
  v4[14] |= 0x20u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[3] = self->_numEngagementsInAppPredictionPanel;
  v4[14] |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[2] = self->_numEngagementsInAppLibrary;
  v4[14] |= 1u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 48) = self->_spotlightEnabled;
  v4[14] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 49) = self->_suggestionsWidgetEnabled;
  v4[14] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 42) = self->_appPredictionPanelEnabled;
  v4[14] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 40) = self->_appLibraryEnabled;
  v4[14] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 47) = self->_spotlightAppsViewed;
  v4[14] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 46) = self->_spotlightActionsViewed;
  v4[14] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 52) = self->_suggestionsWidgetViewed;
  v4[14] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 45) = self->_appPredictionPanelViewed;
  v4[14] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 41) = self->_appLibraryViewed;
  v4[14] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 51) = self->_suggestionsWidgetTodayPageViewed;
  v4[14] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 44) = self->_appPredictionPanelTodayPageViewed;
  v4[14] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4[8] = self->_numEngagementsInSuggestionsWidgetTodayPage;
  v4[14] |= 0x40u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v4[4] = self->_numEngagementsInAppPredictionPanelTodayPage;
  v4[14] |= 4u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  *(v4 + 50) = self->_suggestionsWidgetTodayPageEnabled;
  v4[14] |= 0x40000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    *(v4 + 43) = self->_appPredictionPanelTodayPageEnabled;
    v4[14] |= 0x800u;
  }

LABEL_23:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(result + 9) = self->_sessionLengthInSeconds;
    *(result + 14) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_numEngagementsInSpotlightApps;
  *(result + 14) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 5) = self->_numEngagementsInSpotlightActions;
  *(result + 14) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 7) = self->_numEngagementsInSuggestionsWidget;
  *(result + 14) |= 0x20u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 3) = self->_numEngagementsInAppPredictionPanel;
  *(result + 14) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 2) = self->_numEngagementsInAppLibrary;
  *(result + 14) |= 1u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 48) = self->_spotlightEnabled;
  *(result + 14) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 49) = self->_suggestionsWidgetEnabled;
  *(result + 14) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 42) = self->_appPredictionPanelEnabled;
  *(result + 14) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 40) = self->_appLibraryEnabled;
  *(result + 14) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 47) = self->_spotlightAppsViewed;
  *(result + 14) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 46) = self->_spotlightActionsViewed;
  *(result + 14) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 52) = self->_suggestionsWidgetViewed;
  *(result + 14) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 45) = self->_appPredictionPanelViewed;
  *(result + 14) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 41) = self->_appLibraryViewed;
  *(result + 14) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 51) = self->_suggestionsWidgetTodayPageViewed;
  *(result + 14) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 44) = self->_appPredictionPanelTodayPageViewed;
  *(result + 14) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 8) = self->_numEngagementsInSuggestionsWidgetTodayPage;
  *(result + 14) |= 0x40u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 4) = self->_numEngagementsInAppPredictionPanelTodayPage;
  *(result + 14) |= 4u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_43:
  *(result + 50) = self->_suggestionsWidgetTodayPageEnabled;
  *(result + 14) |= 0x40000u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_22:
  *(result + 43) = self->_appPredictionPanelTodayPageEnabled;
  *(result + 14) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_145;
  }

  has = self->_has;
  v6 = *(v4 + 14);
  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_sessionLengthInSeconds != *(v4 + 9))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numEngagementsInSpotlightApps != *(v4 + 6))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_numEngagementsInSpotlightActions != *(v4 + 5))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numEngagementsInSuggestionsWidget != *(v4 + 7))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_numEngagementsInAppPredictionPanel != *(v4 + 3))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_145;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_numEngagementsInAppLibrary != *(v4 + 2))
    {
      goto LABEL_145;
    }
  }

  else if (v6)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_145;
    }

    v7 = *(v4 + 48);
    if (self->_spotlightEnabled)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_145;
    }

    v8 = *(v4 + 49);
    if (self->_suggestionsWidgetEnabled)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_145;
    }

    v9 = *(v4 + 42);
    if (self->_appPredictionPanelEnabled)
    {
      if ((*(v4 + 42) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 42))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_145;
    }

    v10 = *(v4 + 40);
    if (self->_appLibraryEnabled)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_145;
    }

    v11 = *(v4 + 47);
    if (self->_spotlightAppsViewed)
    {
      if ((*(v4 + 47) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 47))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_145;
    }

    v12 = *(v4 + 46);
    if (self->_spotlightActionsViewed)
    {
      if ((*(v4 + 46) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 46))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_145;
    }

    v13 = *(v4 + 52);
    if (self->_suggestionsWidgetViewed)
    {
      if ((*(v4 + 52) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 52))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_145;
    }

    v14 = *(v4 + 45);
    if (self->_appPredictionPanelViewed)
    {
      if ((*(v4 + 45) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 45))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_145;
    }

    v15 = *(v4 + 41);
    if (self->_appLibraryViewed)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_145;
    }

    v16 = *(v4 + 51);
    if (self->_suggestionsWidgetTodayPageViewed)
    {
      if ((*(v4 + 51) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 51))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_145;
    }

    v17 = *(v4 + 44);
    if (self->_appPredictionPanelTodayPageViewed)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 44))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numEngagementsInSuggestionsWidgetTodayPage != *(v4 + 8))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numEngagementsInAppPredictionPanelTodayPage != *(v4 + 4))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_145;
    }

    v19 = *(v4 + 50);
    if (self->_suggestionsWidgetTodayPageEnabled)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_145;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_145;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) != 0)
    {
      if (self->_appPredictionPanelTodayPageEnabled)
      {
        if (*(v4 + 43))
        {
          goto LABEL_147;
        }
      }

      else if (!*(v4 + 43))
      {
LABEL_147:
        v18 = 1;
        goto LABEL_146;
      }
    }

LABEL_145:
    v18 = 0;
    goto LABEL_146;
  }

  v18 = (*(v4 + 14) & 0x800) == 0;
LABEL_146:

  return v18;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v3 = 2654435761 * self->_sessionLengthInSeconds;
    if ((*&has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numEngagementsInSpotlightApps;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_numEngagementsInSpotlightActions;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_numEngagementsInSuggestionsWidget;
    if ((*&has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_numEngagementsInAppPredictionPanel;
    if (*&has)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if (*&has)
  {
LABEL_7:
    v8 = 2654435761 * self->_numEngagementsInAppLibrary;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_spotlightEnabled;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_suggestionsWidgetEnabled;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_appPredictionPanelEnabled;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_appLibraryEnabled;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_spotlightAppsViewed;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_spotlightActionsViewed;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_suggestionsWidgetViewed;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_appPredictionPanelViewed;
  if ((*&has & 0x200) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_appLibraryViewed;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x80000) != 0)
  {
    v18 = 2654435761 * self->_suggestionsWidgetTodayPageViewed;
    if ((*&has & 0x1000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_appPredictionPanelTodayPageViewed;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_numEngagementsInSuggestionsWidgetTodayPage;
    if ((*&has & 4) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_numEngagementsInAppPredictionPanelTodayPage;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_37;
    }

LABEL_43:
    v22 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    v23 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_42:
  v21 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v22 = 2654435761 * self->_suggestionsWidgetTodayPageEnabled;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v23 = 2654435761 * self->_appPredictionPanelTodayPageEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 14);
  if ((v5 & 0x80) != 0)
  {
    self->_sessionLengthInSeconds = *(v4 + 9);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 14);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_numEngagementsInSpotlightApps = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 14);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_numEngagementsInSpotlightActions = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 14);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_numEngagementsInSuggestionsWidget = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 14);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_numEngagementsInAppPredictionPanel = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 14);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_numEngagementsInAppLibrary = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 14);
  if ((v5 & 0x10000) == 0)
  {
LABEL_8:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_spotlightEnabled = *(v4 + 48);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x20000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_suggestionsWidgetEnabled = *(v4 + 49);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_appPredictionPanelEnabled = *(v4 + 42);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 14);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_appLibraryEnabled = *(v4 + 40);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 14);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_spotlightAppsViewed = *(v4 + 47);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_spotlightActionsViewed = *(v4 + 46);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_suggestionsWidgetViewed = *(v4 + 52);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_appPredictionPanelViewed = *(v4 + 45);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x200) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_appLibraryViewed = *(v4 + 41);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 14);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_suggestionsWidgetTodayPageViewed = *(v4 + 51);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x1000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_appPredictionPanelTodayPageViewed = *(v4 + 44);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 14);
  if ((v5 & 0x40) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_numEngagementsInSuggestionsWidgetTodayPage = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_numEngagementsInAppPredictionPanelTodayPage = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 14);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  self->_suggestionsWidgetTodayPageEnabled = *(v4 + 50);
  *&self->_has |= 0x40000u;
  if ((*(v4 + 14) & 0x800) != 0)
  {
LABEL_22:
    self->_appPredictionPanelTodayPageEnabled = *(v4 + 43);
    *&self->_has |= 0x800u;
  }

LABEL_23:
}

@end