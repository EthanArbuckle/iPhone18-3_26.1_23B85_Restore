@interface RAPCuratedCollectionQuestion
- (BOOL)isComplete;
- (NSArray)categoryItems;
- (RAPCuratedCollectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (id)placeCollection;
- (int)_selectedCorrectionType;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setSelectedQuestionType:(unint64_t)a3;
@end

@implementation RAPCuratedCollectionQuestion

- (void)_fillSubmissionParameters:(id)a3
{
  v20 = a3;
  v4 = [v20 details];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackDetails);
    [v20 setDetails:v5];
  }

  if ([(RAPCuratedCollectionQuestion *)self selectedQuestionType]== 3)
  {
    v6 = [v20 details];
    v7 = [v6 poiFeedback];

    if (!v7)
    {
      v8 = objc_alloc_init(GEORPPoiFeedback);
      v9 = [v20 details];
      [v9 setPoiFeedback:v8];
    }

    v10 = [(RAPQuestion *)self _context];
    v11 = [v10 curatedCollectionContext];
    v12 = [v11 geoContext];
    v13 = [v20 details];
    v14 = [v13 poiFeedback];
    [v14 setPoiCuratedCollectionContext:v12];
  }

  else
  {
    [v20 setType:12];
    v15 = [v20 details];
    v10 = [v15 curatedCollectionFeedback];

    if (!v10)
    {
      v10 = objc_alloc_init(GEORPCuratedCollectionFeedback);
      v16 = [v20 details];
      [v16 setCuratedCollectionFeedback:v10];
    }

    v11 = [v10 curatedCollectionCorrections];
    if (!v11)
    {
      v11 = objc_alloc_init(GEORPCuratedCollectionCorrections);
      [v10 setCuratedCollectionCorrections:v11];
    }

    v17 = [(RAPQuestion *)self _context];
    v18 = [v17 curatedCollectionContext];
    v19 = [v18 geoContext];
    [v10 setCuratedCollectionContext:v19];

    [v11 setCorrectionType:{-[RAPCuratedCollectionQuestion _selectedCorrectionType](self, "_selectedCorrectionType")}];
    v12 = [(RAPCuratedCollectionQuestion *)self commentQuestion];
    [v12 _fillSubmissionParameters:v20];
  }
}

- (int)_selectedCorrectionType
{
  v2 = [(RAPCuratedCollectionQuestion *)self selectedQuestionType];
  if (v2 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_101212CB0[v2 - 1];
  }
}

- (void)setSelectedQuestionType:(unint64_t)a3
{
  if (self->_selectedQuestionType != a3)
  {
    self->_selectedQuestionType = a3;
    if (a3 - 1 > 3)
    {
      v7 = &stru_1016631F0;
    }

    else
    {
      v5 = off_10165D4D8[a3 - 1];
      v6 = +[NSBundle mainBundle];
      v11 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

      v7 = v11;
    }

    v12 = v7;
    [(RAPCommentQuestion *)self->_commentQuestion _setPlaceholderText:?];
    [(RAPCommentQuestion *)self->_commentQuestion setComment:&stru_1016631F0];
    if ([(RAPCuratedCollectionQuestion *)self _selectedCorrectionType])
    {
      v8 = [(RAPCuratedCollectionQuestion *)self analyticTarget];
      v9 = [(RAPCuratedCollectionQuestion *)self _selectedCorrectionType];
      if (v9 >= 4)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", v9];
      }

      else
      {
        v10 = off_10165D4F8[v9];
      }

      [GEOAPPortal captureUserAction:232 target:v8 value:v10];
    }
  }
}

- (BOOL)isComplete
{
  selectedQuestionType = self->_selectedQuestionType;
  v3 = selectedQuestionType > 4;
  v4 = (1 << selectedQuestionType) & 0x16;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  else
  {
    return [(RAPQuestion *)self->_commentQuestion isComplete];
  }
}

- (NSArray)categoryItems
{
  categoryItems = self->_categoryItems;
  if (categoryItems)
  {
    v3 = categoryItems;
  }

  else
  {
    v5 = +[NSMutableArray array];
    v6 = [[RAPCuratedCollectionCategoryItem alloc] initWithType:1];
    [v5 addObject:v6];

    v7 = [[RAPCuratedCollectionCategoryItem alloc] initWithType:2];
    [v5 addObject:v7];

    v8 = [[RAPCuratedCollectionCategoryItem alloc] initWithType:3];
    [v5 addObject:v8];

    v9 = [[RAPCuratedCollectionCategoryItem alloc] initWithType:4];
    [v5 addObject:v9];

    v10 = [v5 copy];
    v11 = self->_categoryItems;
    self->_categoryItems = v10;

    v3 = self->_categoryItems;
  }

  return v3;
}

- (id)placeCollection
{
  v2 = [(RAPQuestion *)self _context];
  v3 = [v2 curatedCollectionContext];
  v4 = [v3 curatedCollection];

  return v4;
}

- (RAPCuratedCollectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RAPCuratedCollectionQuestion;
  v7 = [(RAPQuestion *)&v11 initWithReport:v6 parentQuestion:a4];
  if (v7)
  {
    v8 = [[RAPCommentQuestion alloc] initWithReport:v6 parentQuestion:v7];
    commentQuestion = v7->_commentQuestion;
    v7->_commentQuestion = v8;

    [(RAPCommentQuestion *)v7->_commentQuestion setEmphasis:3];
    [(RAPQuestion *)v7->_commentQuestion addObserver:v7 changeHandler:&stru_10165D4B8];
  }

  return v7;
}

@end