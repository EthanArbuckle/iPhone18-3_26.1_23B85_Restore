@interface TwoLinesSearchResultOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesSearchResultOutlineCellModel)initWithSearchResult:(id)a3 backgroundModel:(id)a4;
@end

@implementation TwoLinesSearchResultOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = TwoLinesSearchResultOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      v7 = [(TwoLinesSearchResultOutlineCellModel *)v6 searchResult];
      v8 = v7;
      if (v7 == self->_searchResult)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(SearchResult *)v7 isEqual:?];
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

- (TwoLinesSearchResultOutlineCellModel)initWithSearchResult:(id)a3 backgroundModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F9452C;
  v13[3] = &unk_10165F728;
  objc_copyWeak(&v14, &location);
  v12.receiver = self;
  v12.super_class = TwoLinesSearchResultOutlineCellModel;
  v9 = [(TwoLinesBasicOutlineCellModel *)&v12 initWithBackgroundModel:v8 contentModelBlock:v13];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchResult, a3);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

@end