@interface RAPLookAroundCategoryItem
+ (id)_titleForQuestionType:(unint64_t)a3;
- (RAPLookAroundCategoryItem)initWithType:(unint64_t)a3;
- (int)analyticAction;
@end

@implementation RAPLookAroundCategoryItem

- (int)analyticAction
{
  type = self->_type;
  if (type > 6)
  {
    return 17099;
  }

  else
  {
    return dword_101215B80[type];
  }
}

- (RAPLookAroundCategoryItem)initWithType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = RAPLookAroundCategoryItem;
  v4 = [(RAPLookAroundCategoryItem *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [RAPLookAroundCategoryItem _titleForQuestionType:a3];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

+ (id)_titleForQuestionType:(unint64_t)a3
{
  if (a3 <= 6)
  {
    v4 = *(&off_101651168 + a3);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

@end