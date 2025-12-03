@interface SFContextualNamedEntity
- (SFContextualNamedEntity)initWithPersonalizationPortraitName:(id)name score:(double)score category:(unint64_t)category language:(id)language;
@end

@implementation SFContextualNamedEntity

- (SFContextualNamedEntity)initWithPersonalizationPortraitName:(id)name score:(double)score category:(unint64_t)category language:(id)language
{
  v8 = sub_1AC79FF68();
  v10 = v9;
  v11 = sub_1AC79FF68();
  return sub_1AC753950(v8, v10, category, v11, v12, score);
}

@end