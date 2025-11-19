@interface UGCRatingsForm
+ (id)addRatingFormWithPlaceQuestionnaire:(id)a3;
+ (id)editRatingFormWithPlaceQuestionnaire:(id)a3 existingScorecard:(id)a4;
+ (id)emptyRatingForm;
- (BOOL)_isCompleteForDelete;
- (BOOL)_isCompleteForEdit;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)passesMinimumRequirementsToBeSubmittable;
- (NSArray)allRatingCategories;
- (UGCRatingsForm)initWithActionType:(int64_t)a3 overallCategory:(id)a4 categoryList:(id)a5 versionNumber:(id)a6;
- (id)categoryForKey:(id)a3;
- (int64_t)actionType;
- (void)_fillInScorecard:(id)a3 hasBeenEdited:(BOOL *)a4;
- (void)_fillScorecardUpdateWithAddType:(id)a3;
- (void)_fillScorecardUpdateWithDeleteType:(id)a3;
- (void)_fillScorecardUpdateWithEditType:(id)a3;
- (void)_startObservingRatingCategories;
- (void)fillSubmissionFields:(id)a3;
@end

@implementation UGCRatingsForm

- (int64_t)actionType
{
  if ([(UGCRatingsForm *)self isEmpty])
  {
    return 2;
  }

  else
  {
    return self->_actionType;
  }
}

- (BOOL)isEdited
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UGCRatingsForm *)self allRatingCategories];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEdited])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isEmpty
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(UGCRatingsForm *)self allRatingCategories];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) currentState])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)_fillScorecardUpdateWithAddType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GEORPScorecard);
  [v4 setScorecard:v5];

  v7 = 0;
  v6 = [v4 scorecard];
  [(UGCRatingsForm *)self _fillInScorecard:v6 hasBeenEdited:&v7];

  if ((v7 & 1) == 0)
  {
    [v4 setScorecard:0];
  }

  [v4 setAction:1];
}

- (void)_fillScorecardUpdateWithEditType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GEORPScorecard);
  [v4 setScorecard:v5];

  v8 = 0;
  v6 = [v4 scorecard];
  [(UGCRatingsForm *)self _fillInScorecard:v6 hasBeenEdited:&v8];

  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [v4 setAction:v7];
}

- (void)_fillScorecardUpdateWithDeleteType:(id)a3
{
  v3 = a3;
  [v3 setAction:2];
  [v3 setScorecard:0];
}

- (void)_fillInScorecard:(id)a3 hasBeenEdited:(BOOL *)a4
{
  v6 = a3;
  [v6 setVersion:self->_questionnaireVersion];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(UGCRatingsForm *)self allRatingCategories];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 ratingType] == 1)
        {
          if ([v13 currentState])
          {
            [v6 setRecommended:{objc_msgSend(v13, "currentState") == 2}];
          }
        }

        else
        {
          v14 = [v13 geoCategoryRating];
          [v6 addCategoryRatings:v14];
        }

        v10 |= [v13 isEdited];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  *a4 = v10 & 1;
}

- (void)fillSubmissionFields:(id)a3
{
  v6 = [a3 poiEnrichment];
  v4 = [v6 scorecardUpdate];
  if (!v4)
  {
    v4 = objc_alloc_init(GEORPScorecardUpdate);
    [v6 setScorecardUpdate:v4];
  }

  v5 = [(UGCRatingsForm *)self actionType];
  switch(v5)
  {
    case 2:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithDeleteType:v4];
      break;
    case 1:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithEditType:v4];
      break;
    case 0:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithAddType:v4];
      break;
  }
}

- (BOOL)passesMinimumRequirementsToBeSubmittable
{
  if ([(UGCRatingsForm *)self isEmpty])
  {
    return 1;
  }

  return [(UGCRatingsForm *)self _isCompleteForAdd];
}

- (BOOL)_isCompleteForEdit
{
  v3 = [(UGCRatingsForm *)self isEdited];
  if (v3)
  {

    LOBYTE(v3) = [(UGCRatingsForm *)self _isCompleteForAdd];
  }

  return v3;
}

- (BOOL)_isCompleteForDelete
{
  v3 = [(UGCRatingsForm *)self isEdited];
  if (v3)
  {

    LOBYTE(v3) = [(UGCRatingsForm *)self isEmpty];
  }

  return v3;
}

- (BOOL)isComplete
{
  if (![(UGCRatingsForm *)self passesMinimumRequirementsToBeSubmittable])
  {
    return 0;
  }

  v3 = [(UGCRatingsForm *)self actionType];
  switch(v3)
  {
    case 2:

      return [(UGCRatingsForm *)self _isCompleteForDelete];
    case 1:

      return [(UGCRatingsForm *)self _isCompleteForEdit];
    case 0:

      return [(UGCRatingsForm *)self _isCompleteForAdd];
    default:
      return 0;
  }
}

- (id)categoryForKey:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UGCRatingsForm *)self allRatingCategories];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)allRatingCategories
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:self->_overallCategory];
  [v3 addObjectsFromArray:self->_categoryList];
  v4 = [v3 copy];

  return v4;
}

- (void)_startObservingRatingCategories
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UGCRatingsForm *)self allRatingCategories];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) addObserver:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (UGCRatingsForm)initWithActionType:(int64_t)a3 overallCategory:(id)a4 categoryList:(id)a5 versionNumber:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = UGCRatingsForm;
  v14 = [(UGCForm *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionType = a3;
    objc_storeStrong(&v14->_overallCategory, a4);
    objc_storeStrong(&v15->_categoryList, a5);
    objc_storeStrong(&v15->_questionnaireVersion, a6);
    [(UGCRatingsForm *)v15 _startObservingRatingCategories];
  }

  return v15;
}

+ (id)emptyRatingForm
{
  v2 = [UGCRatingCategory overallRatingCategoryWithInitialState:0];
  v3 = [UGCRatingsForm alloc];
  v4 = +[NSArray array];
  v5 = [(UGCRatingsForm *)v3 initWithActionType:0 overallCategory:v2 categoryList:v4 versionNumber:&stru_1016631F0];

  return v5;
}

+ (id)editRatingFormWithPlaceQuestionnaire:(id)a3 existingScorecard:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [UGCRatingCategory overallRatingCategoryFromScorecard:v6];
    v8 = [UGCRatingCategory ratingCategoryListForScorecard:v6];
    v9 = [UGCRatingsForm alloc];
    v10 = [v6 version];
    v11 = [(UGCRatingsForm *)v9 initWithActionType:1 overallCategory:v7 categoryList:v8 versionNumber:v10];
  }

  else
  {
    v11 = [a1 addRatingFormWithPlaceQuestionnaire:a3];
  }

  return v11;
}

+ (id)addRatingFormWithPlaceQuestionnaire:(id)a3
{
  v3 = a3;
  if ([v3 canCollectRatings])
  {
    v4 = [UGCRatingCategory overallRatingCategoryWithInitialState:0];
    v5 = [v3 ratingCategories];
    v6 = [UGCRatingCategory ratingCategoryListForQuestionnaireCategories:v5];

    v7 = [UGCRatingsForm alloc];
    v8 = [v3 version];
    v9 = [(UGCRatingsForm *)v7 initWithActionType:0 overallCategory:v4 categoryList:v6 versionNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end