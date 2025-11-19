@interface AMSRatingSystem
+ (id)ratingSystemWithDictionary:(id)a3;
- (AMSRatingSystem)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation AMSRatingSystem

- (AMSRatingSystem)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AMSRatingSystem;
  v5 = [(AMSRatingSystem *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    ratingSystemID = v5->_ratingSystemID;
    v5->_ratingSystemID = v6;

    v8 = [v4 valueForKeyPath:@"attributes.kind"];
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = [v4 valueForKeyPath:@"attributes.label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [v4 valueForKeyPath:@"attributes.types"];
    types = v5->_types;
    v5->_types = v12;

    v14 = [v4 valueForKeyPath:@"relationships.ratings.data"];
    v15 = [v14 ams_mapWithTransformIgnoresNil:&__block_literal_global_123];
    contentRatings = v5->_contentRatings;
    v5->_contentRatings = v15;
  }

  return v5;
}

+ (id)ratingSystemWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[AMSRatingSystem alloc] initWithDictionary:v3];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSRatingSystem *)self kind];
  [v3 ams_setNullableObject:v4 forKey:@"kind"];

  v5 = [(AMSRatingSystem *)self ratingSystemID];
  [v3 ams_setNullableObject:v5 forKey:@"id"];

  v6 = [(AMSRatingSystem *)self label];
  [v3 ams_setNullableObject:v6 forKey:@"label"];

  v7 = [(AMSRatingSystem *)self types];
  [v3 ams_setNullableObject:v7 forKey:@"types"];

  v8 = [(AMSRatingSystem *)self contentRatings];
  [v3 ams_setNullableObject:v8 forKey:@"contentRatings"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end