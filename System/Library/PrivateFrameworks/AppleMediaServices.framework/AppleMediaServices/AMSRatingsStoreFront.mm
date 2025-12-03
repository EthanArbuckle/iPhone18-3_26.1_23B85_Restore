@interface AMSRatingsStoreFront
+ (id)storeFrontWithDictionary:(id)dictionary mediaType:(unint64_t)type;
+ (id)storeFrontWithDictionary:(id)dictionary mediaType:(unint64_t)type andStoreFront:(id)front;
- (AMSRatingsStoreFront)initWithDictionary:(id)dictionary mediaType:(unint64_t)type;
- (AMSRatingsStoreFront)initWithDictionary:(id)dictionary mediaType:(unint64_t)type andStoreFront:(id)front;
- (id)description;
@end

@implementation AMSRatingsStoreFront

- (AMSRatingsStoreFront)initWithDictionary:(id)dictionary mediaType:(unint64_t)type andStoreFront:(id)front
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = AMSRatingsStoreFront;
  v7 = [(AMSRatingsStoreFront *)&v20 init];
  if (v7)
  {
    v8 = [dictionaryCopy valueForKeyPath:@"attributes.defaultLanguageTag"];
    defaultLanguage = v7->_defaultLanguage;
    v7->_defaultLanguage = v8;

    v10 = [dictionaryCopy valueForKeyPath:@"attributes.name"];
    name = v7->_name;
    v7->_name = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    storeFrontID = v7->_storeFrontID;
    v7->_storeFrontID = v12;

    v14 = [dictionaryCopy valueForKeyPath:@"attributes.supportedLanguageTags"];
    supportedLanguages = v7->_supportedLanguages;
    v7->_supportedLanguages = v14;

    v16 = [dictionaryCopy valueForKeyPath:@"relationships.rating-systems.data"];
    v17 = [v16 ams_mapWithTransformIgnoresNil:&__block_literal_global_122];
    ratingSystems = v7->_ratingSystems;
    v7->_ratingSystems = v17;
  }

  return v7;
}

- (AMSRatingsStoreFront)initWithDictionary:(id)dictionary mediaType:(unint64_t)type
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = AMSRatingsStoreFront;
  v6 = [(AMSRatingsStoreFront *)&v19 init];
  if (v6)
  {
    v7 = [dictionaryCopy valueForKeyPath:@"attributes.defaultLanguageTag"];
    defaultLanguage = v6->_defaultLanguage;
    v6->_defaultLanguage = v7;

    v9 = [dictionaryCopy valueForKeyPath:@"attributes.name"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    storeFrontID = v6->_storeFrontID;
    v6->_storeFrontID = v11;

    v13 = [dictionaryCopy valueForKeyPath:@"attributes.supportedLanguageTags"];
    supportedLanguages = v6->_supportedLanguages;
    v6->_supportedLanguages = v13;

    v15 = [dictionaryCopy valueForKeyPath:@"relationships.rating-systems.data"];
    v16 = [v15 ams_mapWithTransformIgnoresNil:&__block_literal_global_15_2];
    ratingSystems = v6->_ratingSystems;
    v6->_ratingSystems = v16;
  }

  return v6;
}

+ (id)storeFrontWithDictionary:(id)dictionary mediaType:(unint64_t)type andStoreFront:(id)front
{
  frontCopy = front;
  dictionaryCopy = dictionary;
  v9 = [[AMSRatingsStoreFront alloc] initWithDictionary:dictionaryCopy mediaType:type andStoreFront:frontCopy];

  return v9;
}

+ (id)storeFrontWithDictionary:(id)dictionary mediaType:(unint64_t)type
{
  dictionaryCopy = dictionary;
  v6 = [[AMSRatingsStoreFront alloc] initWithDictionary:dictionaryCopy mediaType:type];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  name = [(AMSRatingsStoreFront *)self name];
  [v3 ams_setNullableObject:name forKey:@"name"];

  storeFrontID = [(AMSRatingsStoreFront *)self storeFrontID];
  [v3 ams_setNullableObject:storeFrontID forKey:@"id"];

  supportedLanguages = [(AMSRatingsStoreFront *)self supportedLanguages];
  [v3 ams_setNullableObject:supportedLanguages forKey:@"supportedLanguages"];

  defaultLanguage = [(AMSRatingsStoreFront *)self defaultLanguage];
  [v3 ams_setNullableObject:defaultLanguage forKey:@"defaultLanguages"];

  ratingSystems = [(AMSRatingsStoreFront *)self ratingSystems];
  [v3 ams_setNullableObject:ratingSystems forKey:@"ratingSystems"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end