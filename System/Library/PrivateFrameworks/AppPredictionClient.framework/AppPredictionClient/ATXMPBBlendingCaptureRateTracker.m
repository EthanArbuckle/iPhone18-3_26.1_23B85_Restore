@interface ATXMPBBlendingCaptureRateTracker
- (BOOL)isEqual:(id)a3;
- (id)captureTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureType:(id)a3;
- (int)captureType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCaptured:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingCaptureRateTracker

- (void)setHasCaptured:(BOOL)a3
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

- (int)captureType
{
  if (*&self->_has)
  {
    return self->_captureType;
  }

  else
  {
    return 1;
  }
}

- (id)captureTypeAsString:(int)a3
{
  if (a3 > 4004)
  {
    if (a3 > 5002)
    {
      if (a3 <= 5005)
      {
        if (a3 == 5003)
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        }

        else if (a3 == 5004)
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        }

        else
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        }

        return v4;
      }

      switch(a3)
      {
        case 5006:
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";

          return v4;
        case 5007:
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";

          return v4;
        case 5008:
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";

          return v4;
      }
    }

    else
    {
      if (a3 > 4999)
      {
        if (a3 == 5000)
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        }

        else if (a3 == 5001)
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        }

        else
        {
          v4 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        }

        return v4;
      }

      switch(a3)
      {
        case 4005:
          v4 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";

          return v4;
        case 4006:
          v4 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";

          return v4;
        case 4007:
          v4 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";

          return v4;
      }
    }

LABEL_101:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];

    return v4;
  }

  if (a3 > 3000)
  {
    if (a3 > 4001)
    {
      if (a3 == 4002)
      {
        v4 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
      }

      else if (a3 == 4003)
      {
        v4 = @"AppLibraryDiverted_AppLaunchedFromRecents";
      }

      else
      {
        v4 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
      }

      return v4;
    }

    switch(a3)
    {
      case 3001:
        v4 = @"SpotlightDiverted_ActionExecutedFromSearch";

        return v4;
      case 4000:
        v4 = @"AppLibraryDiverted_AppLaunchedFromSearch";

        return v4;
      case 4001:
        v4 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";

        return v4;
    }

    goto LABEL_101;
  }

  if (a3 > 2000)
  {
    switch(a3)
    {
      case 2001:
        v4 = @"SpotlightDiverted_AppLaunchedFromSearch";

        return v4;
      case 2002:
        v4 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";

        return v4;
      case 3000:
        v4 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";

        return v4;
    }

    goto LABEL_101;
  }

  switch(a3)
  {
    case 1:
      v4 = @"Captured";

      break;
    case 1000:
      v4 = @"Diverted";

      break;
    case 2000:
      v4 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";

      return v4;
    default:
      goto LABEL_101;
  }

  return v4;
}

- (int)StringAsCaptureType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Captured"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Diverted"])
  {
    v4 = 1000;
  }

  else if ([v3 isEqualToString:@"SpotlightDiverted_AppLaunchedFromShortcutExecution"])
  {
    v4 = 2000;
  }

  else if ([v3 isEqualToString:@"SpotlightDiverted_AppLaunchedFromSearch"])
  {
    v4 = 2001;
  }

  else if ([v3 isEqualToString:@"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp"])
  {
    v4 = 2002;
  }

  else if ([v3 isEqualToString:@"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch"])
  {
    v4 = 3000;
  }

  else if ([v3 isEqualToString:@"SpotlightDiverted_ActionExecutedFromSearch"])
  {
    v4 = 3001;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromSearch"])
  {
    v4 = 4000;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromCategoryPreview"])
  {
    v4 = 4001;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromExpandedCategory"])
  {
    v4 = 4002;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromRecents"])
  {
    v4 = 4003;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromSearch_Deduped"])
  {
    v4 = 4004;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped"])
  {
    v4 = 4005;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped"])
  {
    v4 = 4006;
  }

  else if ([v3 isEqualToString:@"AppLibraryDiverted_AppLaunchedFromRecents_Deduped"])
  {
    v4 = 4007;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreen"])
  {
    v4 = 5000;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromShortcutExecution"])
  {
    v4 = 5001;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromWidgetTap"])
  {
    v4 = 5002;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget"])
  {
    v4 = 5003;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreenDock"])
  {
    v4 = 5004;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage"])
  {
    v4 = 5005;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder"])
  {
    v4 = 5006;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage"])
  {
    v4 = 5007;
  }

  else if ([v3 isEqualToString:@"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder"])
  {
    v4 = 5008;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingCaptureRateTracker;
  v4 = [(ATXMPBBlendingCaptureRateTracker *)&v8 description];
  v5 = [(ATXMPBBlendingCaptureRateTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_captured];
    [v4 setObject:v7 forKey:@"captured"];

    has = self->_has;
  }

  if (has)
  {
    captureType = self->_captureType;
    if (captureType > 4004)
    {
      if (captureType > 5002)
      {
        if (captureType <= 5005)
        {
          if (captureType == 5003)
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
          }

          else if (captureType == 5004)
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
          }

          else
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
          }

          goto LABEL_59;
        }

        switch(captureType)
        {
          case 5006:
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
            goto LABEL_59;
          case 5007:
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
            goto LABEL_59;
          case 5008:
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
            goto LABEL_59;
        }
      }

      else
      {
        if (captureType > 4999)
        {
          if (captureType == 5000)
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
          }

          else if (captureType == 5001)
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
          }

          else
          {
            v9 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
          }

          goto LABEL_59;
        }

        switch(captureType)
        {
          case 4005:
            v9 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
            goto LABEL_59;
          case 4006:
            v9 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
            goto LABEL_59;
          case 4007:
            v9 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
            goto LABEL_59;
        }
      }
    }

    else if (captureType > 3000)
    {
      if (captureType > 4001)
      {
        if (captureType == 4002)
        {
          v9 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        }

        else if (captureType == 4003)
        {
          v9 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        }

        else
        {
          v9 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        }

        goto LABEL_59;
      }

      switch(captureType)
      {
        case 3001:
          v9 = @"SpotlightDiverted_ActionExecutedFromSearch";
          goto LABEL_59;
        case 4000:
          v9 = @"AppLibraryDiverted_AppLaunchedFromSearch";
          goto LABEL_59;
        case 4001:
          v9 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
          goto LABEL_59;
      }
    }

    else if (captureType > 2000)
    {
      switch(captureType)
      {
        case 2001:
          v9 = @"SpotlightDiverted_AppLaunchedFromSearch";
          goto LABEL_59;
        case 2002:
          v9 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
          goto LABEL_59;
        case 3000:
          v9 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
          goto LABEL_59;
      }
    }

    else
    {
      switch(captureType)
      {
        case 1:
          v9 = @"Captured";
          goto LABEL_59;
        case 1000:
          v9 = @"Diverted";
          goto LABEL_59;
        case 2000:
          v9 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
LABEL_59:
          [v4 setObject:v9 forKey:@"captureType"];

          goto LABEL_60;
      }
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_captureType];
    goto LABEL_59;
  }

LABEL_60:
  executableType = self->_executableType;
  if (executableType)
  {
    [v4 setObject:executableType forKey:@"executableType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_consumerSubType)
  {
    [v4 setConsumerSubType:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_captured;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_captureType;
    *(v4 + 44) |= 1u;
  }

  if (self->_executableType)
  {
    [v6 setExecutableType:?];
    v4 = v6;
  }

  if (self->_abGroup)
  {
    [v6 setAbGroup:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_captured;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_captureType;
    *(v5 + 44) |= 1u;
  }

  v9 = [(NSString *)self->_executableType copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = [(NSString *)self->_abGroup copyWithZone:a3];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 3))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_20;
  }

  if (self->_captured)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_20;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_captureType != *(v4 + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_20;
  }

  executableType = self->_executableType;
  if (executableType | *(v4 + 4) && ![(NSString *)executableType isEqual:?])
  {
    goto LABEL_20;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    v8 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_21:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_consumerSubType hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_captured;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_captureType;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_executableType hash];
  return v6 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(ATXMPBBlendingCaptureRateTracker *)self setConsumerSubType:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_captured = *(v4 + 40);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_captureType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBBlendingCaptureRateTracker *)self setExecutableType:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingCaptureRateTracker *)self setAbGroup:?];
    v4 = v6;
  }
}

@end