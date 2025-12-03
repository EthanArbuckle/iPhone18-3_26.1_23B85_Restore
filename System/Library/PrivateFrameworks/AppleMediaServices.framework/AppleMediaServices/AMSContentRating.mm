@interface AMSContentRating
+ (id)contentRatingWithDictionary:(id)dictionary;
- (AMSContentRating)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation AMSContentRating

- (AMSContentRating)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = AMSContentRating;
  v5 = [(AMSContentRating *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    contentRatingID = v5->_contentRatingID;
    v5->_contentRatingID = v6;

    v29 = [dictionaryCopy valueForKeyPath:@"attributes.glyph.url"];
    v8 = [dictionaryCopy valueForKeyPath:@"attributes.glyph.height"];
    v9 = [dictionaryCopy valueForKeyPath:@"attributes.glyph.width"];
    v10 = [v29 stringByReplacingOccurrencesOfString:@"{c}" withString:&stru_1F071BA78];
    stringValue = [v8 stringValue];
    v12 = [v10 stringByReplacingOccurrencesOfString:@"{h}" withString:stringValue];
    stringValue2 = [v9 stringValue];
    v14 = [v12 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue2];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"{f}" withString:@"png"];

    v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
    imageURL = v5->_imageURL;
    v5->_imageURL = v16;

    v18 = [dictionaryCopy valueForKeyPath:@"attributes.kind"];
    kind = v5->_kind;
    v5->_kind = v18;

    v20 = [dictionaryCopy valueForKeyPath:@"attributes.label"];
    label = v5->_label;
    v5->_label = v20;

    v22 = [dictionaryCopy valueForKeyPath:@"attributes.name"];
    name = v5->_name;
    v5->_name = v22;

    v24 = [dictionaryCopy valueForKeyPath:@"attributes.description"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v24;

    v26 = [dictionaryCopy valueForKeyPath:@"attributes.value"];
    value = v5->_value;
    v5->_value = v26;
  }

  return v5;
}

+ (id)contentRatingWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[AMSContentRating alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  kind = [(AMSContentRating *)self kind];
  [v3 ams_setNullableObject:kind forKey:@"kind"];

  label = [(AMSContentRating *)self label];
  [v3 ams_setNullableObject:label forKey:@"label"];

  name = [(AMSContentRating *)self name];
  [v3 ams_setNullableObject:name forKey:@"name"];

  imageURL = [(AMSContentRating *)self imageURL];
  [v3 ams_setNullableObject:imageURL forKey:@"imageURL"];

  contentRatingID = [(AMSContentRating *)self contentRatingID];
  [v3 ams_setNullableObject:contentRatingID forKey:@"id"];

  value = [(AMSContentRating *)self value];
  [v3 ams_setNullableObject:value forKey:@"value"];

  ratingDescription = [(AMSContentRating *)self ratingDescription];
  [v3 ams_setNullableObject:ratingDescription forKey:@"description"];

  v11 = [self ams_generateDescriptionWithSubObjects:v3];

  return v11;
}

@end