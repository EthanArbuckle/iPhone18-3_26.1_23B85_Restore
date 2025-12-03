@interface UGCRatingCategory
+ (id)overallRatingCategoryFromScorecard:(id)scorecard;
+ (id)overallRatingCategoryWithInitialState:(int64_t)state;
+ (id)ratingCategoryListForQuestionnaireCategories:(id)categories;
+ (id)ratingCategoryListForScorecard:(id)scorecard;
- (GEORPCategoryRating)geoCategoryRating;
- (UGCRatingCategory)initWithKey:(id)key localizedTitle:(id)title initialState:(int64_t)state ratingType:(int64_t)type;
- (void)revertCorrections;
- (void)setCurrentState:(int64_t)state;
@end

@implementation UGCRatingCategory

- (GEORPCategoryRating)geoCategoryRating
{
  v3 = objc_alloc_init(GEORPCategoryRating);
  [v3 setKey:self->_key];
  v4 = objc_alloc_init(GEORPRatingValue);
  [v3 setValue:v4];
  v5 = objc_alloc_init(GEOLocalizedString);
  [v5 setStringValue:self->_localizedTitle];
  [v4 setCategoryName:v5];
  currentState = self->_currentState;
  if (currentState == 1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = currentState == 2;
  }

  [v4 setScore:v7];

  return v3;
}

- (void)setCurrentState:(int64_t)state
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    [(GEOObserverHashTable *)self->_observers ratingCategoryDidChange:self];
  }
}

- (void)revertCorrections
{
  initialState = [(UGCRatingCategory *)self initialState];

  [(UGCRatingCategory *)self setCurrentState:initialState];
}

- (UGCRatingCategory)initWithKey:(id)key localizedTitle:(id)title initialState:(int64_t)state ratingType:(int64_t)type
{
  keyCopy = key;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = UGCRatingCategory;
  v13 = [(UGCRatingCategory *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_currentState = state;
    v13->_initialState = state;
    objc_storeStrong(&v13->_key, key);
    v14->_ratingType = type;
    objc_storeStrong(&v14->_localizedTitle, title);
    v15 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UGCRatingCategoryObserver queue:&_dispatch_main_q];
    observers = v14->_observers;
    v14->_observers = v15;
  }

  return v14;
}

+ (id)ratingCategoryListForQuestionnaireCategories:(id)categories
{
  categoriesCopy = categories;
  v4 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = categoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [UGCRatingCategory alloc];
        v12 = [v10 key];
        localizedTitle = [v10 localizedTitle];
        v14 = [(UGCRatingCategory *)v11 initWithKey:v12 localizedTitle:localizedTitle initialState:0];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

+ (id)ratingCategoryListForScorecard:(id)scorecard
{
  scorecardCopy = scorecard;
  v4 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [scorecardCopy categoryRatings];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 key];
        value = [v9 value];
        score = [value score];

        value2 = [v9 value];
        categoryName = [value2 categoryName];
        stringValue = [categoryName stringValue];

        v16 = [UGCRatingCategory alloc];
        if (score == -1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2 * (score == 1);
        }

        v18 = [(UGCRatingCategory *)v16 initWithKey:v10 localizedTitle:stringValue initialState:v17];
        [v4 addObject:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = [v4 copy];

  return v19;
}

+ (id)overallRatingCategoryWithInitialState:(int64_t)state
{
  v4 = [UGCRatingCategory alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Overall [UGC]" value:@"localized string not found" table:0];
  v7 = [(UGCRatingCategory *)v4 initWithKey:@"com.apple.client.ugc-overall-category" localizedTitle:v6 initialState:state ratingType:1];

  return v7;
}

+ (id)overallRatingCategoryFromScorecard:(id)scorecard
{
  scorecardCopy = scorecard;
  if ([scorecardCopy hasRecommended])
  {
    if ([scorecardCopy recommended])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [UGCRatingCategory overallRatingCategoryWithInitialState:v4];

  return v5;
}

@end