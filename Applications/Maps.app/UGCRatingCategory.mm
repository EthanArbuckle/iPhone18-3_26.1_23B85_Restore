@interface UGCRatingCategory
+ (id)overallRatingCategoryFromScorecard:(id)a3;
+ (id)overallRatingCategoryWithInitialState:(int64_t)a3;
+ (id)ratingCategoryListForQuestionnaireCategories:(id)a3;
+ (id)ratingCategoryListForScorecard:(id)a3;
- (GEORPCategoryRating)geoCategoryRating;
- (UGCRatingCategory)initWithKey:(id)a3 localizedTitle:(id)a4 initialState:(int64_t)a5 ratingType:(int64_t)a6;
- (void)revertCorrections;
- (void)setCurrentState:(int64_t)a3;
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

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    [(GEOObserverHashTable *)self->_observers ratingCategoryDidChange:self];
  }
}

- (void)revertCorrections
{
  v3 = [(UGCRatingCategory *)self initialState];

  [(UGCRatingCategory *)self setCurrentState:v3];
}

- (UGCRatingCategory)initWithKey:(id)a3 localizedTitle:(id)a4 initialState:(int64_t)a5 ratingType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = UGCRatingCategory;
  v13 = [(UGCRatingCategory *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_currentState = a5;
    v13->_initialState = a5;
    objc_storeStrong(&v13->_key, a3);
    v14->_ratingType = a6;
    objc_storeStrong(&v14->_localizedTitle, a4);
    v15 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UGCRatingCategoryObserver queue:&_dispatch_main_q];
    observers = v14->_observers;
    v14->_observers = v15;
  }

  return v14;
}

+ (id)ratingCategoryListForQuestionnaireCategories:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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
        v13 = [v10 localizedTitle];
        v14 = [(UGCRatingCategory *)v11 initWithKey:v12 localizedTitle:v13 initialState:0];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

+ (id)ratingCategoryListForScorecard:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 categoryRatings];
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
        v11 = [v9 value];
        v12 = [v11 score];

        v13 = [v9 value];
        v14 = [v13 categoryName];
        v15 = [v14 stringValue];

        v16 = [UGCRatingCategory alloc];
        if (v12 == -1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2 * (v12 == 1);
        }

        v18 = [(UGCRatingCategory *)v16 initWithKey:v10 localizedTitle:v15 initialState:v17];
        [v4 addObject:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = [v4 copy];

  return v19;
}

+ (id)overallRatingCategoryWithInitialState:(int64_t)a3
{
  v4 = [UGCRatingCategory alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Overall [UGC]" value:@"localized string not found" table:0];
  v7 = [(UGCRatingCategory *)v4 initWithKey:@"com.apple.client.ugc-overall-category" localizedTitle:v6 initialState:a3 ratingType:1];

  return v7;
}

+ (id)overallRatingCategoryFromScorecard:(id)a3
{
  v3 = a3;
  if ([v3 hasRecommended])
  {
    if ([v3 recommended])
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