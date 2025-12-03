@interface UGCRatingsForm
+ (id)addRatingFormWithPlaceQuestionnaire:(id)questionnaire;
+ (id)editRatingFormWithPlaceQuestionnaire:(id)questionnaire existingScorecard:(id)scorecard;
+ (id)emptyRatingForm;
- (BOOL)_isCompleteForDelete;
- (BOOL)_isCompleteForEdit;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)passesMinimumRequirementsToBeSubmittable;
- (NSArray)allRatingCategories;
- (UGCRatingsForm)initWithActionType:(int64_t)type overallCategory:(id)category categoryList:(id)list versionNumber:(id)number;
- (id)categoryForKey:(id)key;
- (int64_t)actionType;
- (void)_fillInScorecard:(id)scorecard hasBeenEdited:(BOOL *)edited;
- (void)_fillScorecardUpdateWithAddType:(id)type;
- (void)_fillScorecardUpdateWithDeleteType:(id)type;
- (void)_fillScorecardUpdateWithEditType:(id)type;
- (void)_startObservingRatingCategories;
- (void)fillSubmissionFields:(id)fields;
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
  allRatingCategories = [(UGCRatingsForm *)self allRatingCategories];
  v3 = [allRatingCategories countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allRatingCategories);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEdited])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allRatingCategories countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  allRatingCategories = [(UGCRatingsForm *)self allRatingCategories];
  v3 = [allRatingCategories countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allRatingCategories);
        }

        if ([*(*(&v9 + 1) + 8 * i) currentState])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [allRatingCategories countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_fillScorecardUpdateWithAddType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(GEORPScorecard);
  [typeCopy setScorecard:v5];

  v7 = 0;
  scorecard = [typeCopy scorecard];
  [(UGCRatingsForm *)self _fillInScorecard:scorecard hasBeenEdited:&v7];

  if ((v7 & 1) == 0)
  {
    [typeCopy setScorecard:0];
  }

  [typeCopy setAction:1];
}

- (void)_fillScorecardUpdateWithEditType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(GEORPScorecard);
  [typeCopy setScorecard:v5];

  v8 = 0;
  scorecard = [typeCopy scorecard];
  [(UGCRatingsForm *)self _fillInScorecard:scorecard hasBeenEdited:&v8];

  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [typeCopy setAction:v7];
}

- (void)_fillScorecardUpdateWithDeleteType:(id)type
{
  typeCopy = type;
  [typeCopy setAction:2];
  [typeCopy setScorecard:0];
}

- (void)_fillInScorecard:(id)scorecard hasBeenEdited:(BOOL *)edited
{
  scorecardCopy = scorecard;
  [scorecardCopy setVersion:self->_questionnaireVersion];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allRatingCategories = [(UGCRatingsForm *)self allRatingCategories];
  v8 = [allRatingCategories countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allRatingCategories);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 ratingType] == 1)
        {
          if ([v13 currentState])
          {
            [scorecardCopy setRecommended:{objc_msgSend(v13, "currentState") == 2}];
          }
        }

        else
        {
          geoCategoryRating = [v13 geoCategoryRating];
          [scorecardCopy addCategoryRatings:geoCategoryRating];
        }

        v10 |= [v13 isEdited];
      }

      v9 = [allRatingCategories countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  *edited = v10 & 1;
}

- (void)fillSubmissionFields:(id)fields
{
  poiEnrichment = [fields poiEnrichment];
  scorecardUpdate = [poiEnrichment scorecardUpdate];
  if (!scorecardUpdate)
  {
    scorecardUpdate = objc_alloc_init(GEORPScorecardUpdate);
    [poiEnrichment setScorecardUpdate:scorecardUpdate];
  }

  actionType = [(UGCRatingsForm *)self actionType];
  switch(actionType)
  {
    case 2:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithDeleteType:scorecardUpdate];
      break;
    case 1:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithEditType:scorecardUpdate];
      break;
    case 0:
      [(UGCRatingsForm *)self _fillScorecardUpdateWithAddType:scorecardUpdate];
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
  isEdited = [(UGCRatingsForm *)self isEdited];
  if (isEdited)
  {

    LOBYTE(isEdited) = [(UGCRatingsForm *)self _isCompleteForAdd];
  }

  return isEdited;
}

- (BOOL)_isCompleteForDelete
{
  isEdited = [(UGCRatingsForm *)self isEdited];
  if (isEdited)
  {

    LOBYTE(isEdited) = [(UGCRatingsForm *)self isEmpty];
  }

  return isEdited;
}

- (BOOL)isComplete
{
  if (![(UGCRatingsForm *)self passesMinimumRequirementsToBeSubmittable])
  {
    return 0;
  }

  actionType = [(UGCRatingsForm *)self actionType];
  switch(actionType)
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

- (id)categoryForKey:(id)key
{
  keyCopy = key;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allRatingCategories = [(UGCRatingsForm *)self allRatingCategories];
  v6 = [allRatingCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allRatingCategories);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqualToString:keyCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allRatingCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  allRatingCategories = [(UGCRatingsForm *)self allRatingCategories];
  v4 = [allRatingCategories countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allRatingCategories);
        }

        [*(*(&v8 + 1) + 8 * v7) addObserver:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allRatingCategories countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (UGCRatingsForm)initWithActionType:(int64_t)type overallCategory:(id)category categoryList:(id)list versionNumber:(id)number
{
  categoryCopy = category;
  listCopy = list;
  numberCopy = number;
  v17.receiver = self;
  v17.super_class = UGCRatingsForm;
  v14 = [(UGCForm *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionType = type;
    objc_storeStrong(&v14->_overallCategory, category);
    objc_storeStrong(&v15->_categoryList, list);
    objc_storeStrong(&v15->_questionnaireVersion, number);
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

+ (id)editRatingFormWithPlaceQuestionnaire:(id)questionnaire existingScorecard:(id)scorecard
{
  scorecardCopy = scorecard;
  if (scorecardCopy)
  {
    v7 = [UGCRatingCategory overallRatingCategoryFromScorecard:scorecardCopy];
    v8 = [UGCRatingCategory ratingCategoryListForScorecard:scorecardCopy];
    v9 = [UGCRatingsForm alloc];
    version = [scorecardCopy version];
    v11 = [(UGCRatingsForm *)v9 initWithActionType:1 overallCategory:v7 categoryList:v8 versionNumber:version];
  }

  else
  {
    v11 = [self addRatingFormWithPlaceQuestionnaire:questionnaire];
  }

  return v11;
}

+ (id)addRatingFormWithPlaceQuestionnaire:(id)questionnaire
{
  questionnaireCopy = questionnaire;
  if ([questionnaireCopy canCollectRatings])
  {
    v4 = [UGCRatingCategory overallRatingCategoryWithInitialState:0];
    ratingCategories = [questionnaireCopy ratingCategories];
    v6 = [UGCRatingCategory ratingCategoryListForQuestionnaireCategories:ratingCategories];

    v7 = [UGCRatingsForm alloc];
    version = [questionnaireCopy version];
    v9 = [(UGCRatingsForm *)v7 initWithActionType:0 overallCategory:v4 categoryList:v6 versionNumber:version];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end