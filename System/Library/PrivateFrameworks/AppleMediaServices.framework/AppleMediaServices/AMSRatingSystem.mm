@interface AMSRatingSystem
+ (id)ratingSystemWithDictionary:(id)dictionary;
- (AMSRatingSystem)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation AMSRatingSystem

- (AMSRatingSystem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = AMSRatingSystem;
  v5 = [(AMSRatingSystem *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    ratingSystemID = v5->_ratingSystemID;
    v5->_ratingSystemID = v6;

    v8 = [dictionaryCopy valueForKeyPath:@"attributes.kind"];
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = [dictionaryCopy valueForKeyPath:@"attributes.label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [dictionaryCopy valueForKeyPath:@"attributes.types"];
    types = v5->_types;
    v5->_types = v12;

    v14 = [dictionaryCopy valueForKeyPath:@"relationships.ratings.data"];
    v15 = [v14 ams_mapWithTransformIgnoresNil:&__block_literal_global_123];
    contentRatings = v5->_contentRatings;
    v5->_contentRatings = v15;
  }

  return v5;
}

+ (id)ratingSystemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[AMSRatingSystem alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  kind = [(AMSRatingSystem *)self kind];
  [v3 ams_setNullableObject:kind forKey:@"kind"];

  ratingSystemID = [(AMSRatingSystem *)self ratingSystemID];
  [v3 ams_setNullableObject:ratingSystemID forKey:@"id"];

  label = [(AMSRatingSystem *)self label];
  [v3 ams_setNullableObject:label forKey:@"label"];

  types = [(AMSRatingSystem *)self types];
  [v3 ams_setNullableObject:types forKey:@"types"];

  contentRatings = [(AMSRatingSystem *)self contentRatings];
  [v3 ams_setNullableObject:contentRatings forKey:@"contentRatings"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end