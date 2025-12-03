@interface TwoLinesSearchResultOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesSearchResultOutlineCellModel)initWithSearchResult:(id)result backgroundModel:(id)model;
@end

@implementation TwoLinesSearchResultOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = TwoLinesSearchResultOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      searchResult = [(TwoLinesSearchResultOutlineCellModel *)v6 searchResult];
      v8 = searchResult;
      if (searchResult == self->_searchResult)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(SearchResult *)searchResult isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TwoLinesSearchResultOutlineCellModel)initWithSearchResult:(id)result backgroundModel:(id)model
{
  resultCopy = result;
  modelCopy = model;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F9452C;
  v13[3] = &unk_10165F728;
  objc_copyWeak(&v14, &location);
  v12.receiver = self;
  v12.super_class = TwoLinesSearchResultOutlineCellModel;
  v9 = [(TwoLinesBasicOutlineCellModel *)&v12 initWithBackgroundModel:modelCopy contentModelBlock:v13];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchResult, result);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

@end