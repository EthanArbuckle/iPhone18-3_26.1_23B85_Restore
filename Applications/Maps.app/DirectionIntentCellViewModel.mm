@interface DirectionIntentCellViewModel
- (DirectionIntentCellViewModel)initWithLocalSearchCompletion:(id)completion;
- (id)_titleOfResolvedItem:(id)item withSearchCompletion:(id)completion;
- (void)_calculateStrings;
@end

@implementation DirectionIntentCellViewModel

- (id)_titleOfResolvedItem:(id)item withSearchCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  hasResultIndex = [itemCopy hasResultIndex];
  if (completionCopy && (hasResultIndex & 1) != 0)
  {
    title = [completionCopy title];
  }

  else
  {
    title = [itemCopy extractedTerm];
  }

  v9 = title;

  return v9;
}

- (void)_calculateStrings
{
  localSearchCompletion = [(DirectionIntentCellViewModel *)self localSearchCompletion];
  title = [localSearchCompletion title];

  localSearchCompletion2 = [(DirectionIntentCellViewModel *)self localSearchCompletion];
  subtitle = [localSearchCompletion2 subtitle];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10081C690;
  v10[3] = &unk_10162B538;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = (v7[2])(v7, title);
  [(DirectionIntentCellViewModel *)self setTitleCellString:v8];

  v9 = (v7[2])(v7, subtitle);
  [(DirectionIntentCellViewModel *)self setSubtitleCellString:v9];
}

- (DirectionIntentCellViewModel)initWithLocalSearchCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = DirectionIntentCellViewModel;
  v6 = [(DirectionIntentCellViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localSearchCompletion, completion);
    [(DirectionIntentCellViewModel *)v7 _calculateStrings];
  }

  return v7;
}

@end