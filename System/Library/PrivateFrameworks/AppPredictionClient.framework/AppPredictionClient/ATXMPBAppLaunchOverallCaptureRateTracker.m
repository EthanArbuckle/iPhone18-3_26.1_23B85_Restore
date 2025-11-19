@interface ATXMPBAppLaunchOverallCaptureRateTracker
- (BOOL)isEqual:(id)a3;
- (id)captureTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)iconLocationAsString:(int)a3;
- (int)StringAsCaptureType:(id)a3;
- (int)StringAsIconLocation:(id)a3;
- (int)captureType;
- (int)iconLocation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppLibraryEnabled:(BOOL)a3;
- (void)setHasAppPredictionPanelEnabled:(BOOL)a3;
- (void)setHasAppPredictionPanelTodayEnabled:(BOOL)a3;
- (void)setHasIconLocation:(BOOL)a3;
- (void)setHasSpotlightEnabled:(BOOL)a3;
- (void)setHasSuggestionsWidgetEnabled:(BOOL)a3;
- (void)setHasSuggestionsWidgetTodayEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBAppLaunchOverallCaptureRateTracker

- (int)captureType
{
  if (*&self->_has)
  {
    return self->_captureType;
  }

  else
  {
    return 0;
  }
}

- (id)captureTypeAsString:(int)a3
{
  if (a3 >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C6698[a3];
  }

  return v4;
}

- (int)StringAsCaptureType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Other"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HomeScreen"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HomeScreenDock"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Spotlight"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AppLibrary"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HomeScreenOrTodayWidget"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AppPredictionPanel"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AppPredictionPanelToday"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SuggestionsWidget"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SuggestionsWidgetToday"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)iconLocation
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_iconLocation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIconLocation:(BOOL)a3
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

- (id)iconLocationAsString:(int)a3
{
  if (a3 >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C66E8[a3];
  }

  return v4;
}

- (int)StringAsIconLocation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotOnHomeScreen"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Dock"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Page1"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Page2"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Page3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Page4"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Page5"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Page6"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"OtherPages"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSpotlightEnabled:(BOOL)a3
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

- (void)setHasAppLibraryEnabled:(BOOL)a3
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

- (void)setHasAppPredictionPanelEnabled:(BOOL)a3
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

- (void)setHasAppPredictionPanelTodayEnabled:(BOOL)a3
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

- (void)setHasSuggestionsWidgetEnabled:(BOOL)a3
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

- (void)setHasSuggestionsWidgetTodayEnabled:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBAppLaunchOverallCaptureRateTracker;
  v4 = [(ATXMPBAppLaunchOverallCaptureRateTracker *)&v8 description];
  v5 = [(ATXMPBAppLaunchOverallCaptureRateTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    captureType = self->_captureType;
    if (captureType >= 0xA)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_captureType];
    }

    else
    {
      v6 = off_1E80C6698[captureType];
    }

    [v3 setObject:v6 forKey:@"captureType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    iconLocation = self->_iconLocation;
    if (iconLocation >= 9)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_iconLocation];
    }

    else
    {
      v8 = off_1E80C66E8[iconLocation];
    }

    [v3 setObject:v8 forKey:@"iconLocation"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_spotlightEnabled];
    [v3 setObject:v10 forKey:@"spotlightEnabled"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_13;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_appLibraryEnabled];
  [v3 setObject:v11 forKey:@"appLibraryEnabled"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_appPredictionPanelEnabled];
  [v3 setObject:v12 forKey:@"appPredictionPanelEnabled"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestionsWidgetEnabled];
    [v3 setObject:v14 forKey:@"suggestionsWidgetEnabled"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_23:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_appPredictionPanelTodayEnabled];
  [v3 setObject:v13 forKey:@"appPredictionPanelTodayEnabled"];

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_25:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestionsWidgetTodayEnabled];
  [v3 setObject:v15 forKey:@"suggestionsWidgetTodayEnabled"];

LABEL_17:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_captureType;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_iconLocation;
  *(v4 + 24) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 19) = self->_spotlightEnabled;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 16) = self->_appLibraryEnabled;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 17) = self->_appPredictionPanelEnabled;
  *(v4 + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(v4 + 20) = self->_suggestionsWidgetEnabled;
    *(v4 + 24) |= 0x40u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(v4 + 18) = self->_appPredictionPanelTodayEnabled;
  *(v4 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  *(v4 + 21) = self->_suggestionsWidgetTodayEnabled;
  *(v4 + 24) |= 0x80u;
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_captureType;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_iconLocation;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 19) = self->_spotlightEnabled;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 16) = self->_appLibraryEnabled;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 17) = self->_appPredictionPanelEnabled;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 18) = self->_appPredictionPanelTodayEnabled;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      return result;
    }

LABEL_17:
    *(result + 21) = self->_suggestionsWidgetTodayEnabled;
    *(result + 24) |= 0x80u;
    return result;
  }

LABEL_16:
  *(result + 20) = self->_suggestionsWidgetEnabled;
  *(result + 24) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_17;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  if (*&self->_has)
  {
    if ((v4[24] & 1) == 0 || self->_captureType != *(v4 + 2))
    {
      goto LABEL_56;
    }
  }

  else if (v4[24])
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[24] & 2) == 0 || self->_iconLocation != *(v4 + 3))
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 2) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[24] & 0x20) == 0)
    {
      goto LABEL_56;
    }

    if (self->_spotlightEnabled)
    {
      if ((v4[19] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[19])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[24] & 4) == 0)
    {
      goto LABEL_56;
    }

    if (self->_appLibraryEnabled)
    {
      if ((v4[16] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[16])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[24] & 8) == 0)
    {
      goto LABEL_56;
    }

    if (self->_appPredictionPanelEnabled)
    {
      if ((v4[17] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[17])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[24] & 0x10) == 0)
    {
      goto LABEL_56;
    }

    if (self->_appPredictionPanelTodayEnabled)
    {
      if ((v4[18] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[18])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[24] & 0x40) == 0)
    {
      goto LABEL_56;
    }

    if (self->_suggestionsWidgetEnabled)
    {
      if ((v4[20] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[20])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[24] & 0x40) != 0)
  {
    goto LABEL_56;
  }

  v5 = v4[24] >= 0;
  if ((*&self->_has & 0x80) != 0)
  {
    if (v4[24] < 0)
    {
      if (self->_suggestionsWidgetTodayEnabled)
      {
        if (v4[21])
        {
          goto LABEL_59;
        }
      }

      else if (!v4[21])
      {
LABEL_59:
        v5 = 1;
        goto LABEL_57;
      }
    }

LABEL_56:
    v5 = 0;
  }

LABEL_57:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_captureType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_iconLocation;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_spotlightEnabled;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_appLibraryEnabled;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_appPredictionPanelEnabled;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_appPredictionPanelTodayEnabled;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_suggestionsWidgetEnabled;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_suggestionsWidgetTodayEnabled;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_captureType = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_iconLocation = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_spotlightEnabled = *(v4 + 19);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_appLibraryEnabled = *(v4 + 16);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_appPredictionPanelEnabled = *(v4 + 17);
  *&self->_has |= 8u;
  v5 = *(v4 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    self->_suggestionsWidgetEnabled = *(v4 + 20);
    *&self->_has |= 0x40u;
    if ((*(v4 + 24) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  self->_appPredictionPanelTodayEnabled = *(v4 + 18);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 24);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  self->_suggestionsWidgetTodayEnabled = *(v4 + 21);
  *&self->_has |= 0x80u;
LABEL_9:
}

@end