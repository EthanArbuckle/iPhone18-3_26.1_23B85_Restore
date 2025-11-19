@interface RAPCuratedCollectionCategoryItem
- (RAPCuratedCollectionCategoryItem)initWithType:(unint64_t)a3;
- (id)titleForQuestionType:(unint64_t)a3;
@end

@implementation RAPCuratedCollectionCategoryItem

- (id)titleForQuestionType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = off_101625DD0[a3 - 1];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (RAPCuratedCollectionCategoryItem)initWithType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = RAPCuratedCollectionCategoryItem;
  v4 = [(RAPCuratedCollectionCategoryItem *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [(RAPCuratedCollectionCategoryItem *)v4 titleForQuestionType:a3];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

@end