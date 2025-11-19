@interface AMSContentRating
+ (id)contentRatingWithDictionary:(id)a3;
- (AMSContentRating)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation AMSContentRating

- (AMSContentRating)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = AMSContentRating;
  v5 = [(AMSContentRating *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    contentRatingID = v5->_contentRatingID;
    v5->_contentRatingID = v6;

    v29 = [v4 valueForKeyPath:@"attributes.glyph.url"];
    v8 = [v4 valueForKeyPath:@"attributes.glyph.height"];
    v9 = [v4 valueForKeyPath:@"attributes.glyph.width"];
    v10 = [v29 stringByReplacingOccurrencesOfString:@"{c}" withString:&stru_1F071BA78];
    v11 = [v8 stringValue];
    v12 = [v10 stringByReplacingOccurrencesOfString:@"{h}" withString:v11];
    v13 = [v9 stringValue];
    v14 = [v12 stringByReplacingOccurrencesOfString:@"{w}" withString:v13];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"{f}" withString:@"png"];

    v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
    imageURL = v5->_imageURL;
    v5->_imageURL = v16;

    v18 = [v4 valueForKeyPath:@"attributes.kind"];
    kind = v5->_kind;
    v5->_kind = v18;

    v20 = [v4 valueForKeyPath:@"attributes.label"];
    label = v5->_label;
    v5->_label = v20;

    v22 = [v4 valueForKeyPath:@"attributes.name"];
    name = v5->_name;
    v5->_name = v22;

    v24 = [v4 valueForKeyPath:@"attributes.description"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v24;

    v26 = [v4 valueForKeyPath:@"attributes.value"];
    value = v5->_value;
    v5->_value = v26;
  }

  return v5;
}

+ (id)contentRatingWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[AMSContentRating alloc] initWithDictionary:v3];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSContentRating *)self kind];
  [v3 ams_setNullableObject:v4 forKey:@"kind"];

  v5 = [(AMSContentRating *)self label];
  [v3 ams_setNullableObject:v5 forKey:@"label"];

  v6 = [(AMSContentRating *)self name];
  [v3 ams_setNullableObject:v6 forKey:@"name"];

  v7 = [(AMSContentRating *)self imageURL];
  [v3 ams_setNullableObject:v7 forKey:@"imageURL"];

  v8 = [(AMSContentRating *)self contentRatingID];
  [v3 ams_setNullableObject:v8 forKey:@"id"];

  v9 = [(AMSContentRating *)self value];
  [v3 ams_setNullableObject:v9 forKey:@"value"];

  v10 = [(AMSContentRating *)self ratingDescription];
  [v3 ams_setNullableObject:v10 forKey:@"description"];

  v11 = [self ams_generateDescriptionWithSubObjects:v3];

  return v11;
}

@end