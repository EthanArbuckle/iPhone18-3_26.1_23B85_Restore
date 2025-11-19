@interface DirectionIntentCellViewModel
- (DirectionIntentCellViewModel)initWithLocalSearchCompletion:(id)a3;
- (id)_titleOfResolvedItem:(id)a3 withSearchCompletion:(id)a4;
- (void)_calculateStrings;
@end

@implementation DirectionIntentCellViewModel

- (id)_titleOfResolvedItem:(id)a3 withSearchCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 hasResultIndex];
  if (v6 && (v7 & 1) != 0)
  {
    v8 = [v6 title];
  }

  else
  {
    v8 = [v5 extractedTerm];
  }

  v9 = v8;

  return v9;
}

- (void)_calculateStrings
{
  v3 = [(DirectionIntentCellViewModel *)self localSearchCompletion];
  v4 = [v3 title];

  v5 = [(DirectionIntentCellViewModel *)self localSearchCompletion];
  v6 = [v5 subtitle];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10081C690;
  v10[3] = &unk_10162B538;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = (v7[2])(v7, v4);
  [(DirectionIntentCellViewModel *)self setTitleCellString:v8];

  v9 = (v7[2])(v7, v6);
  [(DirectionIntentCellViewModel *)self setSubtitleCellString:v9];
}

- (DirectionIntentCellViewModel)initWithLocalSearchCompletion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DirectionIntentCellViewModel;
  v6 = [(DirectionIntentCellViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localSearchCompletion, a3);
    [(DirectionIntentCellViewModel *)v7 _calculateStrings];
  }

  return v7;
}

@end