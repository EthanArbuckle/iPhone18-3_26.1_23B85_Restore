@interface AMLPhotosSearchLabeledData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUiSurface:(id)a3;
- (int)uiSurface;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenLocationInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenLocationInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickCountInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasClickOrder:(BOOL)a3;
- (void)setHasClicked:(BOOL)a3;
- (void)setHasClipScore:(BOOL)a3;
- (void)setHasCurationScore:(BOOL)a3;
- (void)setHasFavorited:(BOOL)a3;
- (void)setHasFreshness:(BOOL)a3;
- (void)setHasHasEverClickInLastMonth:(BOOL)a3;
- (void)setHasHasEverClickInLastWeek:(BOOL)a3;
- (void)setHasHasEverShareInLastMonth:(BOOL)a3;
- (void)setHasHasEverShareInLastWeek:(BOOL)a3;
- (void)setHasIsCompleteMatch:(BOOL)a3;
- (void)setHasIsDuplicate:(BOOL)a3;
- (void)setHasItemPosition:(BOOL)a3;
- (void)setHasL1Score:(BOOL)a3;
- (void)setHasL2ModelScore:(BOOL)a3;
- (void)setHasMatchedFieldsCount:(BOOL)a3;
- (void)setHasMatchedLocationRatio:(BOOL)a3;
- (void)setHasMatchedOCRCharacterRatio:(BOOL)a3;
- (void)setHasMatchedOCRImportance:(BOOL)a3;
- (void)setHasMatchedPeopleRatio:(BOOL)a3;
- (void)setHasMatchedSceneBoundingBox:(BOOL)a3;
- (void)setHasMatchedSceneConfidence:(BOOL)a3;
- (void)setHasMatchedSceneRatio:(BOOL)a3;
- (void)setHasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenLocationInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenLocationInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountInLastMonthNormalizedAcrossItems:(BOOL)a3;
- (void)setHasShareCountInLastWeekNormalizedAcrossItems:(BOOL)a3;
- (void)setHasUiSurface:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AMLPhotosSearchLabeledData

- (int)uiSurface
{
  if (*(&self->_has + 6))
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
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
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

- (void)setHasMatchedPeopleRatio:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasMatchedLocationRatio:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMatchedSceneRatio:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasMatchedSceneConfidence:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasMatchedSceneBoundingBox:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasMatchedOCRCharacterRatio:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasMatchedOCRImportance:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMatchedFieldsCount:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasL1Score:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasFreshness:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasFavorited:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasCurationScore:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasHasEverClickInLastWeek:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasHasEverClickInLastMonth:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasHasEverShareInLastWeek:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasHasEverShareInLastMonth:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasClickCountInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasClickCountInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasShareCountInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasShareCountInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasClickCountGivenLocationInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasClickCountGivenLocationInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenLocationInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenLocationInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasClipScore:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasClicked:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasClickOrder:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasItemPosition:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasL2ModelScore:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasIsDuplicate:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasIsCompleteMatch:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AMLPhotosSearchLabeledData;
  v4 = [(AMLPhotosSearchLabeledData *)&v8 description];
  v5 = [(AMLPhotosSearchLabeledData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  searchSessionUUID = self->_searchSessionUUID;
  if (searchSessionUUID)
  {
    [v3 setObject:searchSessionUUID forKey:@"searchSessionUUID"];
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    uiSurface = self->_uiSurface;
    if (uiSurface >= 4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_uiSurface];
    }

    else
    {
      v8 = off_2782B5E40[uiSurface];
    }

    [v4 setObject:v8 forKey:@"uiSurface"];

    has = self->_has;
  }

  if ((*&has & 0x20000000) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedPeopleRatio];
    [v4 setObject:v12 forKey:@"matchedPeopleRatio"];

    has = self->_has;
    if ((*&has & 0x4000000) == 0)
    {
LABEL_10:
      if ((*&has & 0x100000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_62;
    }
  }

  else if ((*&has & 0x4000000) == 0)
  {
    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedLocationRatio];
  [v4 setObject:v13 forKey:@"matchedLocationRatio"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedSceneRatio];
  [v4 setObject:v14 forKey:@"matchedSceneRatio"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedSceneConfidence];
  [v4 setObject:v15 forKey:@"matchedSceneConfidence"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedSceneBoundingBox];
  [v4 setObject:v16 forKey:@"matchedSceneBoundingBox"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedOCRCharacterRatio];
  [v4 setObject:v17 forKey:@"matchedOCRCharacterRatio"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_matchedOCRImportance];
  [v4 setObject:v18 forKey:@"matchedOCRImportance"];

  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_matchedFieldsCount];
  [v4 setObject:v19 forKey:@"matchedFieldsCount"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_l1Score];
  [v4 setObject:v20 forKey:@"L1Score"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_freshness];
  [v4 setObject:v21 forKey:@"freshness"];

  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_19:
    if ((*&has & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_favorited];
  [v4 setObject:v22 forKey:@"favorited"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_aestheticScore];
  [v4 setObject:v23 forKey:@"aestheticScore"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_curationScore];
  [v4 setObject:v24 forKey:@"curationScore"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hasEverClickInLastWeek];
  [v4 setObject:v25 forKey:@"hasEverClickInLastWeek"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hasEverClickInLastMonth];
  [v4 setObject:v26 forKey:@"hasEverClickInLastMonth"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_24:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hasEverShareInLastWeek];
  [v4 setObject:v27 forKey:@"hasEverShareInLastWeek"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hasEverShareInLastMonth];
  [v4 setObject:v28 forKey:@"hasEverShareInLastMonth"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountInLastWeekNormalizedAcrossItems];
  [v4 setObject:v29 forKey:@"clickCountInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountInLastMonthNormalizedAcrossItems];
  [v4 setObject:v30 forKey:@"clickCountInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountInLastWeekNormalizedAcrossItems];
  [v4 setObject:v31 forKey:@"shareCountInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountInLastMonthNormalizedAcrossItems];
  [v4 setObject:v32 forKey:@"shareCountInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  [v4 setObject:v33 forKey:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_31:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  [v4 setObject:v34 forKey:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_32:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems];
  [v4 setObject:v35 forKey:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_33:
    if ((*&has & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems];
  [v4 setObject:v36 forKey:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_34:
    if ((*&has & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v37 forKey:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_35:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_87;
  }

LABEL_86:
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v38 forKey:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_36:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v39 forKey:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_37:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v40 forKey:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_38:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v41 forKey:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_39:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_91;
  }

LABEL_90:
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v42 forKey:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_40:
    if ((*&has & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_92;
  }

LABEL_91:
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v43 forKey:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_41:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_93;
  }

LABEL_92:
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v44 forKey:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_94;
  }

LABEL_93:
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  [v4 setObject:v45 forKey:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_95;
  }

LABEL_94:
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  [v4 setObject:v46 forKey:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_96;
  }

LABEL_95:
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems];
  [v4 setObject:v47 forKey:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_97;
  }

LABEL_96:
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems];
  [v4 setObject:v48 forKey:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_98;
  }

LABEL_97:
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v49 forKey:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_99;
  }

LABEL_98:
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v50 forKey:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_100;
  }

LABEL_99:
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v51 forKey:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_101;
  }

LABEL_100:
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v52 forKey:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_102;
  }

LABEL_101:
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  [v4 setObject:v53 forKey:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_102:
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  [v4 setObject:v54 forKey:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_52:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clipScore];
  [v4 setObject:v55 forKey:@"clipScore"];

  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_clicked];
  [v4 setObject:v56 forKey:@"clicked"];

  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_54:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clickOrder];
  [v4 setObject:v57 forKey:@"clickOrder"];

  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_55:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_107;
  }

LABEL_106:
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_itemPosition];
  [v4 setObject:v58 forKey:@"itemPosition"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_56:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_57;
    }

LABEL_108:
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isDuplicate];
    [v4 setObject:v60 forKey:@"isDuplicate"];

    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_107:
  v59 = [MEMORY[0x277CCABB0] numberWithDouble:self->_l2ModelScore];
  [v4 setObject:v59 forKey:@"L2ModelScore"];

  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    goto LABEL_108;
  }

LABEL_57:
  if ((*&has & 0x400000) != 0)
  {
LABEL_58:
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isCompleteMatch];
    [v4 setObject:v9 forKey:@"isCompleteMatch"];
  }

LABEL_59:
  v10 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v57 = v4;
  if (self->_searchSessionUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v57;
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    uiSurface = self->_uiSurface;
    PBDataWriterWriteInt32Field();
    v4 = v57;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  matchedPeopleRatio = self->_matchedPeopleRatio;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  matchedLocationRatio = self->_matchedLocationRatio;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  matchedSceneRatio = self->_matchedSceneRatio;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  matchedSceneConfidence = self->_matchedSceneConfidence;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  matchedSceneBoundingBox = self->_matchedSceneBoundingBox;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  matchedOCRCharacterRatio = self->_matchedOCRCharacterRatio;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  matchedOCRImportance = self->_matchedOCRImportance;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  matchedFieldsCount = self->_matchedFieldsCount;
  PBDataWriterWriteUint32Field();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  l1Score = self->_l1Score;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  freshness = self->_freshness;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  favorited = self->_favorited;
  PBDataWriterWriteBOOLField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  aestheticScore = self->_aestheticScore;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  curationScore = self->_curationScore;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  hasEverClickInLastWeek = self->_hasEverClickInLastWeek;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  hasEverClickInLastMonth = self->_hasEverClickInLastMonth;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  hasEverShareInLastWeek = self->_hasEverShareInLastWeek;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  hasEverShareInLastMonth = self->_hasEverShareInLastMonth;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  clickCountInLastWeekNormalizedAcrossItems = self->_clickCountInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  clickCountInLastMonthNormalizedAcrossItems = self->_clickCountInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  shareCountInLastWeekNormalizedAcrossItems = self->_shareCountInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  shareCountInLastMonthNormalizedAcrossItems = self->_shareCountInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_26:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  clickCountGivenLocationInLastWeekNormalizedAcrossItems = self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  clickCountGivenLocationInLastMonthNormalizedAcrossItems = self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_32:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_33:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_34:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_35:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_36:
    if ((*&has & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_37:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  shareCountGivenLocationInLastWeekNormalizedAcrossItems = self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  shareCountGivenLocationInLastMonthNormalizedAcrossItems = self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_48:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  clipScore = self->_clipScore;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  clicked = self->_clicked;
  PBDataWriterWriteBOOLField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  clickOrder = self->_clickOrder;
  PBDataWriterWriteUint32Field();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  itemPosition = self->_itemPosition;
  PBDataWriterWriteUint32Field();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_52:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  l2ModelScore = self->_l2ModelScore;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_53:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_107:
  isDuplicate = self->_isDuplicate;
  PBDataWriterWriteDoubleField();
  v4 = v57;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_54:
    isCompleteMatch = self->_isCompleteMatch;
    PBDataWriterWriteDoubleField();
    v4 = v57;
  }

LABEL_55:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_searchSessionUUID)
  {
    v6 = v4;
    [v4 setSearchSessionUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    *(v4 + 98) = self->_uiSurface;
    *(v4 + 50) |= 0x1000000000000uLL;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 30) = *&self->_matchedPeopleRatio;
  *(v4 + 50) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 27) = *&self->_matchedLocationRatio;
  *(v4 + 50) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 33) = *&self->_matchedSceneRatio;
  *(v4 + 50) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 32) = *&self->_matchedSceneConfidence;
  *(v4 + 50) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 31) = *&self->_matchedSceneBoundingBox;
  *(v4 + 50) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 28) = *&self->_matchedOCRCharacterRatio;
  *(v4 + 50) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 29) = *&self->_matchedOCRImportance;
  *(v4 + 50) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 94) = self->_matchedFieldsCount;
  *(v4 + 50) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 25) = *&self->_l1Score;
  *(v4 + 50) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 18) = *&self->_freshness;
  *(v4 + 50) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 397) = self->_favorited;
  *(v4 + 50) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 1) = *&self->_aestheticScore;
  *(v4 + 50) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 17) = *&self->_curationScore;
  *(v4 + 50) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v4 + 20) = *&self->_hasEverClickInLastWeek;
  *(v4 + 50) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v4 + 19) = *&self->_hasEverClickInLastMonth;
  *(v4 + 50) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v4 + 22) = *&self->_hasEverShareInLastWeek;
  *(v4 + 50) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v4 + 21) = *&self->_hasEverShareInLastMonth;
  *(v4 + 50) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v4 + 15) = *&self->_clickCountInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v4 + 14) = *&self->_clickCountInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v4 + 45) = *&self->_shareCountInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v4 + 44) = *&self->_shareCountInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_26:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v4 + 13) = *&self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_27:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v4 + 12) = *&self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v4 + 7) = *&self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v4 + 6) = *&self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v4 + 3) = *&self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 4uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v4 + 2) = *&self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_32:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v4 + 9) = *&self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_33:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v4 + 8) = *&self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_34:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v4 + 11) = *&self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_35:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v4 + 10) = *&self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_36:
    if ((*&has & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v4 + 5) = *&self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_37:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v4 + 4) = *&self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v4 + 43) = *&self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v4 + 42) = *&self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v4 + 39) = *&self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v4 + 38) = *&self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v4 + 35) = *&self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v4 + 34) = *&self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v4 + 41) = *&self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v4 + 40) = *&self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v4 + 37) = *&self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  *(v4 + 50) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v4 + 36) = *&self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  *(v4 + 50) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_48:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v4 + 16) = *&self->_clipScore;
  *(v4 + 50) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v4 + 396) = self->_clicked;
  *(v4 + 50) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v4 + 92) = self->_clickOrder;
  *(v4 + 50) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v4 + 93) = self->_itemPosition;
  *(v4 + 50) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_52:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v4 + 26) = *&self->_l2ModelScore;
  *(v4 + 50) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_53:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_107:
  *(v4 + 24) = *&self->_isDuplicate;
  *(v4 + 50) |= 0x800000uLL;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_54:
    *(v4 + 23) = *&self->_isCompleteMatch;
    *(v4 + 50) |= 0x400000uLL;
  }

LABEL_55:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_searchSessionUUID copyWithZone:a3];
  v7 = *(v5 + 384);
  *(v5 + 384) = v6;

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    *(v5 + 392) = self->_uiSurface;
    *(v5 + 400) |= 0x1000000000000uLL;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 240) = self->_matchedPeopleRatio;
  *(v5 + 400) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 216) = self->_matchedLocationRatio;
  *(v5 + 400) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 264) = self->_matchedSceneRatio;
  *(v5 + 400) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 256) = self->_matchedSceneConfidence;
  *(v5 + 400) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 248) = self->_matchedSceneBoundingBox;
  *(v5 + 400) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 224) = self->_matchedOCRCharacterRatio;
  *(v5 + 400) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 232) = self->_matchedOCRImportance;
  *(v5 + 400) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 376) = self->_matchedFieldsCount;
  *(v5 + 400) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 200) = self->_l1Score;
  *(v5 + 400) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 144) = self->_freshness;
  *(v5 + 400) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_13:
    if ((*&has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 397) = self->_favorited;
  *(v5 + 400) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 8) = self->_aestheticScore;
  *(v5 + 400) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 136) = self->_curationScore;
  *(v5 + 400) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 160) = self->_hasEverClickInLastWeek;
  *(v5 + 400) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 152) = self->_hasEverClickInLastMonth;
  *(v5 + 400) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 176) = self->_hasEverShareInLastWeek;
  *(v5 + 400) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 168) = self->_hasEverShareInLastMonth;
  *(v5 + 400) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 120) = self->_clickCountInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 112) = self->_clickCountInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 360) = self->_shareCountInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 352) = self->_shareCountInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 104) = self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_25:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 96) = self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 56) = self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 48) = self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 24) = self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 4uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_29:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 16) = self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_30:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 72) = self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_31:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 64) = self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_32:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 88) = self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_33:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 80) = self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_34:
    if ((*&has & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 40) = self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_35:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 32) = self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v5 + 344) = self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 336) = self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v5 + 312) = self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 304) = self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v5 + 280) = self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v5 + 272) = self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v5 + 328) = self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v5 + 320) = self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v5 + 296) = self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
  *(v5 + 400) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v5 + 288) = self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
  *(v5 + 400) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_46:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v5 + 128) = self->_clipScore;
  *(v5 + 400) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v5 + 396) = self->_clicked;
  *(v5 + 400) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v5 + 368) = self->_clickOrder;
  *(v5 + 400) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v5 + 372) = self->_itemPosition;
  *(v5 + 400) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_51;
    }

LABEL_103:
    *(v5 + 192) = self->_isDuplicate;
    *(v5 + 400) |= 0x800000uLL;
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_102:
  *(v5 + 208) = self->_l2ModelScore;
  *(v5 + 400) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) != 0)
  {
    goto LABEL_103;
  }

LABEL_51:
  if ((*&has & 0x400000) != 0)
  {
LABEL_52:
    *(v5 + 184) = self->_isCompleteMatch;
    *(v5 + 400) |= 0x400000uLL;
  }

LABEL_53:
  v9 = v5;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_265;
  }

  searchSessionUUID = self->_searchSessionUUID;
  if (searchSessionUUID | *(v4 + 48))
  {
    if (![(NSString *)searchSessionUUID isEqual:?])
    {
      goto LABEL_265;
    }
  }

  has = self->_has;
  v7 = *(v4 + 50);
  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v7 & 0x1000000000000) == 0 || self->_uiSurface != *(v4 + 98))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_matchedPeopleRatio != *(v4 + 30))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_matchedLocationRatio != *(v4 + 27))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_matchedSceneRatio != *(v4 + 33))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_matchedSceneConfidence != *(v4 + 32))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_matchedSceneBoundingBox != *(v4 + 31))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_matchedOCRCharacterRatio != *(v4 + 28))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_matchedOCRImportance != *(v4 + 29))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    if ((v7 & 0x800000000000) == 0 || self->_matchedFieldsCount != *(v4 + 94))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_l1Score != *(v4 + 25))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_freshness != *(v4 + 18))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v7 & 0x4000000000000) == 0)
    {
      goto LABEL_265;
    }

    v8 = *(v4 + 397);
    if (self->_favorited)
    {
      if ((*(v4 + 397) & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    else if (*(v4 + 397))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x4000000000000) != 0)
  {
    goto LABEL_265;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_aestheticScore != *(v4 + 1))
    {
      goto LABEL_265;
    }
  }

  else if (v7)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_curationScore != *(v4 + 17))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_hasEverClickInLastWeek != *(v4 + 20))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_hasEverClickInLastMonth != *(v4 + 19))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_hasEverShareInLastWeek != *(v4 + 22))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_hasEverShareInLastMonth != *(v4 + 21))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_clickCountInLastWeekNormalizedAcrossItems != *(v4 + 15))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_clickCountInLastMonthNormalizedAcrossItems != *(v4 + 14))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v7 & 0x100000000000) == 0 || self->_shareCountInLastWeekNormalizedAcrossItems != *(v4 + 45))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x100000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0 || self->_shareCountInLastMonthNormalizedAcrossItems != *(v4 + 44))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems != *(v4 + 13))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems != *(v4 + 12))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems != *(v4 + 7))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems != *(v4 + 6))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems != *(v4 + 3))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems != *(v4 + 2))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems != *(v4 + 9))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems != *(v4 + 8))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems != *(v4 + 11))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems != *(v4 + 10))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems != *(v4 + 5))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems != *(v4 + 4))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0 || self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems != *(v4 + 43))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0 || self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems != *(v4 + 42))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0 || self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems != *(v4 + 39))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0 || self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems != *(v4 + 38))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems != *(v4 + 35))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems != *(v4 + 34))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0 || self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems != *(v4 + 41))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems != *(v4 + 40))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems != *(v4 + 37))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems != *(v4 + 36))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_clipScore != *(v4 + 16))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v7 & 0x2000000000000) != 0)
    {
      v9 = *(v4 + 396);
      if (self->_clicked)
      {
        if ((*(v4 + 396) & 1) == 0)
        {
          goto LABEL_265;
        }

        goto LABEL_240;
      }

      if ((*(v4 + 396) & 1) == 0)
      {
        goto LABEL_240;
      }
    }

LABEL_265:
    v11 = 0;
    goto LABEL_266;
  }

  if ((v7 & 0x2000000000000) != 0)
  {
    goto LABEL_265;
  }

LABEL_240:
  if ((*&has & 0x200000000000) != 0)
  {
    if ((v7 & 0x200000000000) == 0 || self->_clickOrder != *(v4 + 92))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x200000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v7 & 0x400000000000) == 0 || self->_itemPosition != *(v4 + 93))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x400000000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_l2ModelScore != *(v4 + 26))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_265;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_isDuplicate != *(v4 + 24))
    {
      goto LABEL_265;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_265;
  }

  v10 = *(v4 + 50);
  if ((*&has & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_isCompleteMatch != *(v4 + 23))
    {
      goto LABEL_265;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v10 & 0x400000) == 0;
  }

LABEL_266:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_searchSessionUUID hash];
  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    v217 = 2654435761 * self->_uiSurface;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v217 = 0;
  if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  matchedPeopleRatio = self->_matchedPeopleRatio;
  if (matchedPeopleRatio < 0.0)
  {
    matchedPeopleRatio = -matchedPeopleRatio;
  }

  *v4.i64 = floor(matchedPeopleRatio + 0.5);
  v8 = (matchedPeopleRatio - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&has & 0x4000000) != 0)
  {
    matchedLocationRatio = self->_matchedLocationRatio;
    if (matchedLocationRatio < 0.0)
    {
      matchedLocationRatio = -matchedLocationRatio;
    }

    *v4.i64 = floor(matchedLocationRatio + 0.5);
    v13 = (matchedLocationRatio - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v14), v5, v4);
    v11 = 2654435761u * *v4.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&has & 0x100000000) != 0)
  {
    matchedSceneRatio = self->_matchedSceneRatio;
    if (matchedSceneRatio < 0.0)
    {
      matchedSceneRatio = -matchedSceneRatio;
    }

    *v4.i64 = floor(matchedSceneRatio + 0.5);
    v17 = (matchedSceneRatio - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v18), v5, v4);
    v15 = 2654435761u * *v4.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&has & 0x80000000) != 0)
  {
    matchedSceneConfidence = self->_matchedSceneConfidence;
    if (matchedSceneConfidence < 0.0)
    {
      matchedSceneConfidence = -matchedSceneConfidence;
    }

    *v4.i64 = floor(matchedSceneConfidence + 0.5);
    v21 = (matchedSceneConfidence - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v22), v5, v4);
    v19 = 2654435761u * *v4.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&has & 0x40000000) != 0)
  {
    matchedSceneBoundingBox = self->_matchedSceneBoundingBox;
    if (matchedSceneBoundingBox < 0.0)
    {
      matchedSceneBoundingBox = -matchedSceneBoundingBox;
    }

    *v4.i64 = floor(matchedSceneBoundingBox + 0.5);
    v25 = (matchedSceneBoundingBox - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v26), v5, v4);
    v23 = 2654435761u * *v4.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&has & 0x8000000) != 0)
  {
    matchedOCRCharacterRatio = self->_matchedOCRCharacterRatio;
    if (matchedOCRCharacterRatio < 0.0)
    {
      matchedOCRCharacterRatio = -matchedOCRCharacterRatio;
    }

    *v4.i64 = floor(matchedOCRCharacterRatio + 0.5);
    v29 = (matchedOCRCharacterRatio - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v30), v5, v4);
    v27 = 2654435761u * *v4.i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&has & 0x10000000) != 0)
  {
    matchedOCRImportance = self->_matchedOCRImportance;
    if (matchedOCRImportance < 0.0)
    {
      matchedOCRImportance = -matchedOCRImportance;
    }

    *v4.i64 = floor(matchedOCRImportance + 0.5);
    v33 = (matchedOCRImportance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v34), v5, v4);
    v31 = 2654435761u * *v4.i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    v226 = 2654435761 * self->_matchedFieldsCount;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_61;
    }

LABEL_66:
    v38 = 0;
    goto LABEL_67;
  }

  v226 = 0;
  if ((*&has & 0x1000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_61:
  l1Score = self->_l1Score;
  if (l1Score < 0.0)
  {
    l1Score = -l1Score;
  }

  *v4.i64 = floor(l1Score + 0.5);
  v36 = (l1Score - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v37), v5, v4);
  v38 = 2654435761u * *v4.i64;
  if (v36 >= 0.0)
  {
    if (v36 > 0.0)
    {
      v38 += v36;
    }
  }

  else
  {
    v38 -= fabs(v36);
  }

LABEL_67:
  if ((*&has & 0x20000) != 0)
  {
    freshness = self->_freshness;
    if (freshness < 0.0)
    {
      freshness = -freshness;
    }

    *v4.i64 = floor(freshness + 0.5);
    v41 = (freshness - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v42), v5, v4);
    v39 = 2654435761u * *v4.i64;
    if (v41 >= 0.0)
    {
      if (v41 > 0.0)
      {
        v39 += v41;
      }
    }

    else
    {
      v39 -= fabs(v41);
    }
  }

  else
  {
    v39 = 0;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    v223 = 2654435761 * self->_favorited;
    if (*&has)
    {
      goto LABEL_79;
    }

LABEL_84:
    v46 = 0;
    goto LABEL_85;
  }

  v223 = 0;
  if ((*&has & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_79:
  aestheticScore = self->_aestheticScore;
  if (aestheticScore < 0.0)
  {
    aestheticScore = -aestheticScore;
  }

  *v4.i64 = floor(aestheticScore + 0.5);
  v44 = (aestheticScore - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v45.f64[0] = NAN;
  v45.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v45), v5, v4);
  v46 = 2654435761u * *v4.i64;
  if (v44 >= 0.0)
  {
    if (v44 > 0.0)
    {
      v46 += v44;
    }
  }

  else
  {
    v46 -= fabs(v44);
  }

LABEL_85:
  if ((*&has & 0x10000) != 0)
  {
    curationScore = self->_curationScore;
    if (curationScore < 0.0)
    {
      curationScore = -curationScore;
    }

    *v4.i64 = floor(curationScore + 0.5);
    v49 = (curationScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v50), v5, v4);
    v47 = 2654435761u * *v4.i64;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v47 += v49;
      }
    }

    else
    {
      v47 -= fabs(v49);
    }
  }

  else
  {
    v47 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    hasEverClickInLastWeek = self->_hasEverClickInLastWeek;
    if (hasEverClickInLastWeek < 0.0)
    {
      hasEverClickInLastWeek = -hasEverClickInLastWeek;
    }

    *v4.i64 = floor(hasEverClickInLastWeek + 0.5);
    v53 = (hasEverClickInLastWeek - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v54), v5, v4);
    v51 = 2654435761u * *v4.i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabs(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((*&has & 0x40000) != 0)
  {
    hasEverClickInLastMonth = self->_hasEverClickInLastMonth;
    if (hasEverClickInLastMonth < 0.0)
    {
      hasEverClickInLastMonth = -hasEverClickInLastMonth;
    }

    *v4.i64 = floor(hasEverClickInLastMonth + 0.5);
    v57 = (hasEverClickInLastMonth - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v58.f64[0] = NAN;
    v58.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v58), v5, v4);
    v55 = 2654435761u * *v4.i64;
    if (v57 >= 0.0)
    {
      if (v57 > 0.0)
      {
        v55 += v57;
      }
    }

    else
    {
      v55 -= fabs(v57);
    }
  }

  else
  {
    v55 = 0;
  }

  if ((*&has & 0x200000) != 0)
  {
    hasEverShareInLastWeek = self->_hasEverShareInLastWeek;
    if (hasEverShareInLastWeek < 0.0)
    {
      hasEverShareInLastWeek = -hasEverShareInLastWeek;
    }

    *v4.i64 = floor(hasEverShareInLastWeek + 0.5);
    v61 = (hasEverShareInLastWeek - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v62), v5, v4);
    v59 = 2654435761u * *v4.i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  if ((*&has & 0x100000) != 0)
  {
    hasEverShareInLastMonth = self->_hasEverShareInLastMonth;
    if (hasEverShareInLastMonth < 0.0)
    {
      hasEverShareInLastMonth = -hasEverShareInLastMonth;
    }

    *v4.i64 = floor(hasEverShareInLastMonth + 0.5);
    v65 = (hasEverShareInLastMonth - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v66.f64[0] = NAN;
    v66.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v66), v5, v4);
    v63 = 2654435761u * *v4.i64;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v63 += v65;
      }
    }

    else
    {
      v63 -= fabs(v65);
    }
  }

  else
  {
    v63 = 0;
  }

  if ((*&has & 0x4000) != 0)
  {
    clickCountInLastWeekNormalizedAcrossItems = self->_clickCountInLastWeekNormalizedAcrossItems;
    if (clickCountInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountInLastWeekNormalizedAcrossItems = -clickCountInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountInLastWeekNormalizedAcrossItems + 0.5);
    v69 = (clickCountInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v70.f64[0] = NAN;
    v70.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v70), v5, v4);
    v67 = 2654435761u * *v4.i64;
    if (v69 >= 0.0)
    {
      if (v69 > 0.0)
      {
        v67 += v69;
      }
    }

    else
    {
      v67 -= fabs(v69);
    }
  }

  else
  {
    v67 = 0;
  }

  if ((*&has & 0x2000) != 0)
  {
    clickCountInLastMonthNormalizedAcrossItems = self->_clickCountInLastMonthNormalizedAcrossItems;
    if (clickCountInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountInLastMonthNormalizedAcrossItems = -clickCountInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountInLastMonthNormalizedAcrossItems + 0.5);
    v73 = (clickCountInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v74.f64[0] = NAN;
    v74.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v74), v5, v4);
    v71 = 2654435761u * *v4.i64;
    if (v73 >= 0.0)
    {
      if (v73 > 0.0)
      {
        v71 += v73;
      }
    }

    else
    {
      v71 -= fabs(v73);
    }
  }

  else
  {
    v71 = 0;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    shareCountInLastWeekNormalizedAcrossItems = self->_shareCountInLastWeekNormalizedAcrossItems;
    if (shareCountInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountInLastWeekNormalizedAcrossItems = -shareCountInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountInLastWeekNormalizedAcrossItems + 0.5);
    v77 = (shareCountInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v78.f64[0] = NAN;
    v78.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v78), v5, v4);
    v75 = 2654435761u * *v4.i64;
    if (v77 >= 0.0)
    {
      if (v77 > 0.0)
      {
        v75 += v77;
      }
    }

    else
    {
      v75 -= fabs(v77);
    }
  }

  else
  {
    v75 = 0;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    shareCountInLastMonthNormalizedAcrossItems = self->_shareCountInLastMonthNormalizedAcrossItems;
    if (shareCountInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountInLastMonthNormalizedAcrossItems = -shareCountInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountInLastMonthNormalizedAcrossItems + 0.5);
    v81 = (shareCountInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v82.f64[0] = NAN;
    v82.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v82), v5, v4);
    v79 = 2654435761u * *v4.i64;
    if (v81 >= 0.0)
    {
      if (v81 > 0.0)
      {
        v79 += v81;
      }
    }

    else
    {
      v79 -= fabs(v81);
    }
  }

  else
  {
    v79 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    if (clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = -clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems + 0.5);
    v85 = (clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v86.f64[0] = NAN;
    v86.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v86), v5, v4);
    v83 = 2654435761u * *v4.i64;
    if (v85 >= 0.0)
    {
      if (v85 > 0.0)
      {
        v83 += v85;
      }
    }

    else
    {
      v83 -= fabs(v85);
    }
  }

  else
  {
    v83 = 0;
  }

  if ((*&has & 0x800) != 0)
  {
    clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    if (clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = -clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems + 0.5);
    v89 = (clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v90.f64[0] = NAN;
    v90.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v90), v5, v4);
    v87 = 2654435761u * *v4.i64;
    if (v89 >= 0.0)
    {
      if (v89 > 0.0)
      {
        v87 += v89;
      }
    }

    else
    {
      v87 -= fabs(v89);
    }
  }

  else
  {
    v87 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    clickCountGivenLocationInLastWeekNormalizedAcrossItems = self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
    if (clickCountGivenLocationInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenLocationInLastWeekNormalizedAcrossItems = -clickCountGivenLocationInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenLocationInLastWeekNormalizedAcrossItems + 0.5);
    v93 = (clickCountGivenLocationInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v94.f64[0] = NAN;
    v94.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v94), v5, v4);
    v91 = 2654435761u * *v4.i64;
    if (v93 >= 0.0)
    {
      if (v93 > 0.0)
      {
        v91 += v93;
      }
    }

    else
    {
      v91 -= fabs(v93);
    }
  }

  else
  {
    v91 = 0;
  }

  if ((*&has & 0x20) != 0)
  {
    clickCountGivenLocationInLastMonthNormalizedAcrossItems = self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
    if (clickCountGivenLocationInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenLocationInLastMonthNormalizedAcrossItems = -clickCountGivenLocationInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenLocationInLastMonthNormalizedAcrossItems + 0.5);
    v97 = (clickCountGivenLocationInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v98.f64[0] = NAN;
    v98.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v98), v5, v4);
    v95 = 2654435761u * *v4.i64;
    if (v97 >= 0.0)
    {
      if (v97 > 0.0)
      {
        v95 += v97;
      }
    }

    else
    {
      v95 -= fabs(v97);
    }
  }

  else
  {
    v95 = 0;
  }

  if ((*&has & 4) != 0)
  {
    clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    if (clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = -clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v101 = (clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v102.f64[0] = NAN;
    v102.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v102), v5, v4);
    v99 = 2654435761u * *v4.i64;
    if (v101 >= 0.0)
    {
      if (v101 > 0.0)
      {
        v99 += v101;
      }
    }

    else
    {
      v99 -= fabs(v101);
    }
  }

  else
  {
    v99 = 0;
  }

  v218 = v99;
  v227 = v31;
  v228 = v27;
  v229 = v23;
  v230 = v19;
  v231 = v15;
  v232 = v11;
  v233 = v10;
  if ((*&has & 2) != 0)
  {
    clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    if (clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = -clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v105 = (clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v106.f64[0] = NAN;
    v106.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v106), v5, v4);
    v103 = 2654435761u * *v4.i64;
    if (v105 >= 0.0)
    {
      if (v105 > 0.0)
      {
        v103 += v105;
      }
    }

    else
    {
      v103 -= fabs(v105);
    }
  }

  else
  {
    v103 = 0;
  }

  v222 = v46;
  v224 = v39;
  v225 = v38;
  if ((*&has & 0x100) != 0)
  {
    clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    if (clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = -clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v109 = (clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v110.f64[0] = NAN;
    v110.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v110), v5, v4);
    v107 = 2654435761u * *v4.i64;
    if (v109 >= 0.0)
    {
      if (v109 > 0.0)
      {
        v107 += v109;
      }
    }

    else
    {
      v107 -= fabs(v109);
    }
  }

  else
  {
    v107 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    if (clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = -clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v113 = (clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v114.f64[0] = NAN;
    v114.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v114), v5, v4);
    v111 = 2654435761u * *v4.i64;
    if (v113 >= 0.0)
    {
      if (v113 > 0.0)
      {
        v111 += v113;
      }
    }

    else
    {
      v111 -= fabs(v113);
    }
  }

  else
  {
    v111 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    if (clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = -clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v117 = (clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v118.f64[0] = NAN;
    v118.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v118), v5, v4);
    v115 = 2654435761u * *v4.i64;
    if (v117 >= 0.0)
    {
      if (v117 > 0.0)
      {
        v115 += v117;
      }
    }

    else
    {
      v115 -= fabs(v117);
    }
  }

  else
  {
    v115 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    if (clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = -clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v121 = (clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v122.f64[0] = NAN;
    v122.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v122), v5, v4);
    v119 = 2654435761u * *v4.i64;
    if (v121 >= 0.0)
    {
      if (v121 > 0.0)
      {
        v119 += v121;
      }
    }

    else
    {
      v119 -= fabs(v121);
    }
  }

  else
  {
    v119 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    if (clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = -clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v125 = (clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v126.f64[0] = NAN;
    v126.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v126), v5, v4);
    v123 = 2654435761u * *v4.i64;
    if (v125 >= 0.0)
    {
      if (v125 > 0.0)
      {
        v123 += v125;
      }
    }

    else
    {
      v123 -= fabs(v125);
    }
  }

  else
  {
    v123 = 0;
  }

  if ((*&has & 8) != 0)
  {
    clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    if (clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = -clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v129 = (clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v130.f64[0] = NAN;
    v130.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v130), v5, v4);
    v127 = 2654435761u * *v4.i64;
    if (v129 >= 0.0)
    {
      if (v129 > 0.0)
      {
        v127 += v129;
      }
    }

    else
    {
      v127 -= fabs(v129);
    }
  }

  else
  {
    v127 = 0;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    if (shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = -shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems + 0.5);
    v133 = (shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v134.f64[0] = NAN;
    v134.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v134), v5, v4);
    v131 = 2654435761u * *v4.i64;
    if (v133 >= 0.0)
    {
      if (v133 > 0.0)
      {
        v131 += v133;
      }
    }

    else
    {
      v131 -= fabs(v133);
    }
  }

  else
  {
    v131 = 0;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    if (shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = -shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems + 0.5);
    v137 = (shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v138.f64[0] = NAN;
    v138.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v138), v5, v4);
    v135 = 2654435761u * *v4.i64;
    if (v137 >= 0.0)
    {
      if (v137 > 0.0)
      {
        v135 += v137;
      }
    }

    else
    {
      v135 -= fabs(v137);
    }
  }

  else
  {
    v135 = 0;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    shareCountGivenLocationInLastWeekNormalizedAcrossItems = self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
    if (shareCountGivenLocationInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountGivenLocationInLastWeekNormalizedAcrossItems = -shareCountGivenLocationInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenLocationInLastWeekNormalizedAcrossItems + 0.5);
    v141 = (shareCountGivenLocationInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v142.f64[0] = NAN;
    v142.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v142), v5, v4);
    v139 = 2654435761u * *v4.i64;
    if (v141 >= 0.0)
    {
      if (v141 > 0.0)
      {
        v139 += v141;
      }
    }

    else
    {
      v139 -= fabs(v141);
    }
  }

  else
  {
    v139 = 0;
  }

  v221 = v59;
  if ((*&has & 0x2000000000) != 0)
  {
    shareCountGivenLocationInLastMonthNormalizedAcrossItems = self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
    if (shareCountGivenLocationInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountGivenLocationInLastMonthNormalizedAcrossItems = -shareCountGivenLocationInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenLocationInLastMonthNormalizedAcrossItems + 0.5);
    v145 = (shareCountGivenLocationInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v146.f64[0] = NAN;
    v146.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v146), v5, v4);
    v143 = 2654435761u * *v4.i64;
    if (v145 >= 0.0)
    {
      if (v145 > 0.0)
      {
        v143 += v145;
      }
    }

    else
    {
      v143 -= fabs(v145);
    }
  }

  else
  {
    v143 = 0;
  }

  v220 = v63;
  if ((*&has & 0x400000000) != 0)
  {
    shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    if (shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = -shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v149 = (shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v150.f64[0] = NAN;
    v150.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v150), v5, v4);
    v147 = 2654435761u * *v4.i64;
    if (v149 >= 0.0)
    {
      if (v149 > 0.0)
      {
        v147 += v149;
      }
    }

    else
    {
      v147 -= fabs(v149);
    }
  }

  else
  {
    v147 = 0;
  }

  v219 = v67;
  if ((*&has & 0x200000000) != 0)
  {
    shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    if (shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = -shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v153 = (shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v154.f64[0] = NAN;
    v154.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v154), v5, v4);
    v151 = 2654435761u * *v4.i64;
    if (v153 >= 0.0)
    {
      if (v153 > 0.0)
      {
        v151 += v153;
      }
    }

    else
    {
      v151 -= fabs(v153);
    }
  }

  else
  {
    v151 = 0;
  }

  v216 = v71;
  if ((*&has & 0x10000000000) != 0)
  {
    shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    if (shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = -shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v157 = (shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v158.f64[0] = NAN;
    v158.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v158), v5, v4);
    v155 = 2654435761u * *v4.i64;
    if (v157 >= 0.0)
    {
      if (v157 > 0.0)
      {
        v155 += v157;
      }
    }

    else
    {
      v155 -= fabs(v157);
    }
  }

  else
  {
    v155 = 0;
  }

  v214 = v119;
  v215 = v75;
  if ((*&has & 0x8000000000) != 0)
  {
    shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    if (shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = -shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v161 = (shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v162.f64[0] = NAN;
    v162.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v162), v5, v4);
    v159 = 2654435761u * *v4.i64;
    if (v161 >= 0.0)
    {
      if (v161 > 0.0)
      {
        v159 += v161;
      }
    }

    else
    {
      v159 -= fabs(v161);
    }
  }

  else
  {
    v159 = 0;
  }

  v212 = v131;
  v213 = v79;
  if ((*&has & 0x1000000000) != 0)
  {
    shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    if (shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems < 0.0)
    {
      shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = -shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems + 0.5);
    v165 = (shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v166.f64[0] = NAN;
    v166.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v166), v5, v4);
    v163 = 2654435761u * *v4.i64;
    if (v165 >= 0.0)
    {
      if (v165 > 0.0)
      {
        v163 += v165;
      }
    }

    else
    {
      v163 -= fabs(v165);
    }
  }

  else
  {
    v163 = 0;
  }

  v210 = v123;
  v211 = v83;
  if ((*&has & 0x800000000) != 0)
  {
    shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    if (shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems < 0.0)
    {
      shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = -shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    }

    *v4.i64 = floor(shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems + 0.5);
    v169 = (shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v170.f64[0] = NAN;
    v170.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v170), v5, v4);
    v167 = 2654435761u * *v4.i64;
    if (v169 >= 0.0)
    {
      if (v169 > 0.0)
      {
        v167 += v169;
      }
    }

    else
    {
      v167 -= fabs(v169);
    }
  }

  else
  {
    v167 = 0;
  }

  v208 = v163;
  v209 = v87;
  if ((*&has & 0x8000) != 0)
  {
    clipScore = self->_clipScore;
    if (clipScore < 0.0)
    {
      clipScore = -clipScore;
    }

    *v4.i64 = floor(clipScore + 0.5);
    v174 = (clipScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v175.f64[0] = NAN;
    v175.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v175), v5, v4);
    v172 = 2654435761u * *v4.i64;
    v171 = v127;
    if (v174 >= 0.0)
    {
      if (v174 > 0.0)
      {
        v172 += v174;
      }
    }

    else
    {
      v172 -= fabs(v174);
    }
  }

  else
  {
    v171 = v127;
    v172 = 0;
  }

  v176 = v115;
  v177 = v107;
  if ((*&has & 0x2000000000000) != 0)
  {
    v178 = 2654435761 * self->_clicked;
  }

  else
  {
    v178 = 0;
  }

  v179 = v151;
  v180 = v47;
  v181 = v147;
  if ((*&has & 0x200000000000) != 0)
  {
    v182 = 2654435761 * self->_clickOrder;
  }

  else
  {
    v182 = 0;
  }

  v183 = v155;
  v184 = v143;
  v185 = v51;
  v186 = v135;
  v187 = v111;
  if ((*&has & 0x400000000000) != 0)
  {
    v188 = 2654435761 * self->_itemPosition;
  }

  else
  {
    v188 = 0;
  }

  v189 = v55;
  v190 = v91;
  v191 = v159;
  if ((*&has & 0x2000000) != 0)
  {
    l2ModelScore = self->_l2ModelScore;
    if (l2ModelScore < 0.0)
    {
      l2ModelScore = -l2ModelScore;
    }

    *v4.i64 = floor(l2ModelScore + 0.5);
    v195 = (l2ModelScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v196.f64[0] = NAN;
    v196.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v196), v5, v4);
    v193 = 2654435761u * *v4.i64;
    v192 = v139;
    if (v195 >= 0.0)
    {
      if (v195 > 0.0)
      {
        v193 += v195;
      }
    }

    else
    {
      v193 -= fabs(v195);
    }
  }

  else
  {
    v192 = v139;
    v193 = 0;
  }

  v197 = v95;
  if ((*&has & 0x800000) == 0)
  {
    v198 = 0;
    goto LABEL_369;
  }

  isDuplicate = self->_isDuplicate;
  if (isDuplicate < 0.0)
  {
    isDuplicate = -isDuplicate;
  }

  *v4.i64 = floor(isDuplicate + 0.5);
  v200 = (isDuplicate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v201.f64[0] = NAN;
  v201.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v201), v5, v4);
  v198 = 2654435761u * *v4.i64;
  if (v200 >= 0.0)
  {
    if (v200 <= 0.0)
    {
      goto LABEL_369;
    }

    v202 = v103;
    v198 += v200;
  }

  else
  {
    v202 = v103;
    v198 -= fabs(v200);
  }

  v103 = v202;
LABEL_369:
  if ((*&has & 0x400000) != 0)
  {
    isCompleteMatch = self->_isCompleteMatch;
    if (isCompleteMatch < 0.0)
    {
      isCompleteMatch = -isCompleteMatch;
    }

    *v4.i64 = floor(isCompleteMatch + 0.5);
    v205 = (isCompleteMatch - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v206.f64[0] = NAN;
    v206.f64[1] = NAN;
    v203 = 2654435761u * *vbslq_s8(vnegq_f64(v206), v5, v4).i64;
    if (v205 >= 0.0)
    {
      if (v205 > 0.0)
      {
        v203 += v205;
      }
    }

    else
    {
      v203 -= fabs(v205);
    }
  }

  else
  {
    v203 = 0;
  }

  return v217 ^ v3 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v223 ^ v222 ^ v180 ^ v185 ^ v189 ^ v221 ^ v220 ^ v219 ^ v216 ^ v215 ^ v213 ^ v211 ^ v209 ^ v190 ^ v197 ^ v218 ^ v103 ^ v177 ^ v187 ^ v176 ^ v214 ^ v210 ^ v171 ^ v212 ^ v186 ^ v192 ^ v184 ^ v181 ^ v179 ^ v183 ^ v191 ^ v208 ^ v167 ^ v172 ^ v178 ^ v182 ^ v188 ^ v193 ^ v198 ^ v203;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 48))
  {
    v6 = v4;
    [(AMLPhotosSearchLabeledData *)self setSearchSessionUUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 50);
  if ((v5 & 0x1000000000000) != 0)
  {
    self->_uiSurface = *(v4 + 98);
    *&self->_has |= 0x1000000000000uLL;
    v5 = *(v4 + 50);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_5:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  self->_matchedPeopleRatio = *(v4 + 30);
  *&self->_has |= 0x20000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_matchedLocationRatio = *(v4 + 27);
  *&self->_has |= 0x4000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_matchedSceneRatio = *(v4 + 33);
  *&self->_has |= 0x100000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_matchedSceneConfidence = *(v4 + 32);
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_matchedSceneBoundingBox = *(v4 + 31);
  *&self->_has |= 0x40000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_matchedOCRCharacterRatio = *(v4 + 28);
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_matchedOCRImportance = *(v4 + 29);
  *&self->_has |= 0x10000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_matchedFieldsCount = *(v4 + 94);
  *&self->_has |= 0x800000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_l1Score = *(v4 + 25);
  *&self->_has |= 0x1000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_freshness = *(v4 + 18);
  *&self->_has |= 0x20000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x4000000000000) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_favorited = *(v4 + 397);
  *&self->_has |= 0x4000000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_aestheticScore = *(v4 + 1);
  *&self->_has |= 1uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_curationScore = *(v4 + 17);
  *&self->_has |= 0x10000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x80000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_hasEverClickInLastWeek = *(v4 + 20);
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_hasEverClickInLastMonth = *(v4 + 19);
  *&self->_has |= 0x40000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x200000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_hasEverShareInLastWeek = *(v4 + 22);
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_hasEverShareInLastMonth = *(v4 + 21);
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_clickCountInLastWeekNormalizedAcrossItems = *(v4 + 15);
  *&self->_has |= 0x4000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_clickCountInLastMonthNormalizedAcrossItems = *(v4 + 14);
  *&self->_has |= 0x2000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_shareCountInLastWeekNormalizedAcrossItems = *(v4 + 45);
  *&self->_has |= 0x100000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_shareCountInLastMonthNormalizedAcrossItems = *(v4 + 44);
  *&self->_has |= 0x80000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x1000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = *(v4 + 13);
  *&self->_has |= 0x1000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x800) == 0)
  {
LABEL_27:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = *(v4 + 12);
  *&self->_has |= 0x800uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_28:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems = *(v4 + 7);
  *&self->_has |= 0x40uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x20) == 0)
  {
LABEL_29:
    if ((v5 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems = *(v4 + 6);
  *&self->_has |= 0x20uLL;
  v5 = *(v4 + 50);
  if ((v5 & 4) == 0)
  {
LABEL_30:
    if ((v5 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = *(v4 + 3);
  *&self->_has |= 4uLL;
  v5 = *(v4 + 50);
  if ((v5 & 2) == 0)
  {
LABEL_31:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = *(v4 + 2);
  *&self->_has |= 2uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x100) == 0)
  {
LABEL_32:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = *(v4 + 9);
  *&self->_has |= 0x100uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x80) == 0)
  {
LABEL_33:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = *(v4 + 8);
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x400) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = *(v4 + 11);
  *&self->_has |= 0x400uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x200) == 0)
  {
LABEL_35:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = *(v4 + 10);
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x10) == 0)
  {
LABEL_36:
    if ((v5 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = *(v4 + 5);
  *&self->_has |= 0x10uLL;
  v5 = *(v4 + 50);
  if ((v5 & 8) == 0)
  {
LABEL_37:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = *(v4 + 4);
  *&self->_has |= 8uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = *(v4 + 43);
  *&self->_has |= 0x40000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = *(v4 + 42);
  *&self->_has |= 0x20000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems = *(v4 + 39);
  *&self->_has |= 0x4000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems = *(v4 + 38);
  *&self->_has |= 0x2000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = *(v4 + 35);
  *&self->_has |= 0x400000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = *(v4 + 34);
  *&self->_has |= 0x200000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = *(v4 + 41);
  *&self->_has |= 0x10000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = *(v4 + 40);
  *&self->_has |= 0x8000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_46:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = *(v4 + 37);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = *(v4 + 36);
  *&self->_has |= 0x800000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x8000) == 0)
  {
LABEL_48:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_clipScore = *(v4 + 16);
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x2000000000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_clicked = *(v4 + 396);
  *&self->_has |= 0x2000000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_clickOrder = *(v4 + 92);
  *&self->_has |= 0x200000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_51:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_itemPosition = *(v4 + 93);
  *&self->_has |= 0x400000000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_l2ModelScore = *(v4 + 26);
  *&self->_has |= 0x2000000uLL;
  v5 = *(v4 + 50);
  if ((v5 & 0x800000) == 0)
  {
LABEL_53:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_107:
  self->_isDuplicate = *(v4 + 24);
  *&self->_has |= 0x800000uLL;
  if ((*(v4 + 50) & 0x400000) != 0)
  {
LABEL_54:
    self->_isCompleteMatch = *(v4 + 23);
    *&self->_has |= 0x400000uLL;
  }

LABEL_55:
}

@end