@interface RAPCuratedCollectionCategoryItem
- (RAPCuratedCollectionCategoryItem)initWithType:(unint64_t)type;
- (id)titleForQuestionType:(unint64_t)type;
@end

@implementation RAPCuratedCollectionCategoryItem

- (id)titleForQuestionType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = off_101625DD0[type - 1];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (RAPCuratedCollectionCategoryItem)initWithType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = RAPCuratedCollectionCategoryItem;
  v4 = [(RAPCuratedCollectionCategoryItem *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = [(RAPCuratedCollectionCategoryItem *)v4 titleForQuestionType:type];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

@end