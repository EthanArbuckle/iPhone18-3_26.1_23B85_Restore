@interface SFContextualNamedEntity
- (SFContextualNamedEntity)initWithPersonalizationPortraitName:(id)a3 score:(double)a4 category:(unint64_t)a5 language:(id)a6;
@end

@implementation SFContextualNamedEntity

- (SFContextualNamedEntity)initWithPersonalizationPortraitName:(id)a3 score:(double)a4 category:(unint64_t)a5 language:(id)a6
{
  v8 = sub_1AC79FF68();
  v10 = v9;
  v11 = sub_1AC79FF68();
  return sub_1AC753950(v8, v10, a5, v11, v12, a4);
}

@end