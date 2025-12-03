@interface RAPCuratedCollectionQuestion
- (BOOL)isComplete;
- (NSArray)categoryItems;
- (RAPCuratedCollectionQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (id)placeCollection;
- (int)_selectedCorrectionType;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setSelectedQuestionType:(unint64_t)type;
@end

@implementation RAPCuratedCollectionQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  details = [parametersCopy details];

  if (!details)
  {
    v5 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v5];
  }

  if ([(RAPCuratedCollectionQuestion *)self selectedQuestionType]== 3)
  {
    details2 = [parametersCopy details];
    poiFeedback = [details2 poiFeedback];

    if (!poiFeedback)
    {
      v8 = objc_alloc_init(GEORPPoiFeedback);
      details3 = [parametersCopy details];
      [details3 setPoiFeedback:v8];
    }

    _context = [(RAPQuestion *)self _context];
    curatedCollectionContext = [_context curatedCollectionContext];
    geoContext = [curatedCollectionContext geoContext];
    details4 = [parametersCopy details];
    poiFeedback2 = [details4 poiFeedback];
    [poiFeedback2 setPoiCuratedCollectionContext:geoContext];
  }

  else
  {
    [parametersCopy setType:12];
    details5 = [parametersCopy details];
    _context = [details5 curatedCollectionFeedback];

    if (!_context)
    {
      _context = objc_alloc_init(GEORPCuratedCollectionFeedback);
      details6 = [parametersCopy details];
      [details6 setCuratedCollectionFeedback:_context];
    }

    curatedCollectionContext = [_context curatedCollectionCorrections];
    if (!curatedCollectionContext)
    {
      curatedCollectionContext = objc_alloc_init(GEORPCuratedCollectionCorrections);
      [_context setCuratedCollectionCorrections:curatedCollectionContext];
    }

    _context2 = [(RAPQuestion *)self _context];
    curatedCollectionContext2 = [_context2 curatedCollectionContext];
    geoContext2 = [curatedCollectionContext2 geoContext];
    [_context setCuratedCollectionContext:geoContext2];

    [curatedCollectionContext setCorrectionType:{-[RAPCuratedCollectionQuestion _selectedCorrectionType](self, "_selectedCorrectionType")}];
    geoContext = [(RAPCuratedCollectionQuestion *)self commentQuestion];
    [geoContext _fillSubmissionParameters:parametersCopy];
  }
}

- (int)_selectedCorrectionType
{
  selectedQuestionType = [(RAPCuratedCollectionQuestion *)self selectedQuestionType];
  if (selectedQuestionType - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_101212CB0[selectedQuestionType - 1];
  }
}

- (void)setSelectedQuestionType:(unint64_t)type
{
  if (self->_selectedQuestionType != type)
  {
    self->_selectedQuestionType = type;
    if (type - 1 > 3)
    {
      v7 = &stru_1016631F0;
    }

    else
    {
      v5 = off_10165D4D8[type - 1];
      v6 = +[NSBundle mainBundle];
      v11 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

      v7 = v11;
    }

    v12 = v7;
    [(RAPCommentQuestion *)self->_commentQuestion _setPlaceholderText:?];
    [(RAPCommentQuestion *)self->_commentQuestion setComment:&stru_1016631F0];
    if ([(RAPCuratedCollectionQuestion *)self _selectedCorrectionType])
    {
      analyticTarget = [(RAPCuratedCollectionQuestion *)self analyticTarget];
      _selectedCorrectionType = [(RAPCuratedCollectionQuestion *)self _selectedCorrectionType];
      if (_selectedCorrectionType >= 4)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", _selectedCorrectionType];
      }

      else
      {
        v10 = off_10165D4F8[_selectedCorrectionType];
      }

      [GEOAPPortal captureUserAction:232 target:analyticTarget value:v10];
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
  _context = [(RAPQuestion *)self _context];
  curatedCollectionContext = [_context curatedCollectionContext];
  curatedCollection = [curatedCollectionContext curatedCollection];

  return curatedCollection;
}

- (RAPCuratedCollectionQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  reportCopy = report;
  v11.receiver = self;
  v11.super_class = RAPCuratedCollectionQuestion;
  v7 = [(RAPQuestion *)&v11 initWithReport:reportCopy parentQuestion:question];
  if (v7)
  {
    v8 = [[RAPCommentQuestion alloc] initWithReport:reportCopy parentQuestion:v7];
    commentQuestion = v7->_commentQuestion;
    v7->_commentQuestion = v8;

    [(RAPCommentQuestion *)v7->_commentQuestion setEmphasis:3];
    [(RAPQuestion *)v7->_commentQuestion addObserver:v7 changeHandler:&stru_10165D4B8];
  }

  return v7;
}

@end