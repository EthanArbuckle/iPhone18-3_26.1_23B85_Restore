@interface AMSRatingsStoreFront
+ (id)storeFrontWithDictionary:(id)a3 mediaType:(unint64_t)a4;
+ (id)storeFrontWithDictionary:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5;
- (AMSRatingsStoreFront)initWithDictionary:(id)a3 mediaType:(unint64_t)a4;
- (AMSRatingsStoreFront)initWithDictionary:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5;
- (id)description;
@end

@implementation AMSRatingsStoreFront

- (AMSRatingsStoreFront)initWithDictionary:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = AMSRatingsStoreFront;
  v7 = [(AMSRatingsStoreFront *)&v20 init];
  if (v7)
  {
    v8 = [v6 valueForKeyPath:@"attributes.defaultLanguageTag"];
    defaultLanguage = v7->_defaultLanguage;
    v7->_defaultLanguage = v8;

    v10 = [v6 valueForKeyPath:@"attributes.name"];
    name = v7->_name;
    v7->_name = v10;

    v12 = [v6 objectForKeyedSubscript:@"id"];
    storeFrontID = v7->_storeFrontID;
    v7->_storeFrontID = v12;

    v14 = [v6 valueForKeyPath:@"attributes.supportedLanguageTags"];
    supportedLanguages = v7->_supportedLanguages;
    v7->_supportedLanguages = v14;

    v16 = [v6 valueForKeyPath:@"relationships.rating-systems.data"];
    v17 = [v16 ams_mapWithTransformIgnoresNil:&__block_literal_global_122];
    ratingSystems = v7->_ratingSystems;
    v7->_ratingSystems = v17;
  }

  return v7;
}

- (AMSRatingsStoreFront)initWithDictionary:(id)a3 mediaType:(unint64_t)a4
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = AMSRatingsStoreFront;
  v6 = [(AMSRatingsStoreFront *)&v19 init];
  if (v6)
  {
    v7 = [v5 valueForKeyPath:@"attributes.defaultLanguageTag"];
    defaultLanguage = v6->_defaultLanguage;
    v6->_defaultLanguage = v7;

    v9 = [v5 valueForKeyPath:@"attributes.name"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [v5 objectForKeyedSubscript:@"id"];
    storeFrontID = v6->_storeFrontID;
    v6->_storeFrontID = v11;

    v13 = [v5 valueForKeyPath:@"attributes.supportedLanguageTags"];
    supportedLanguages = v6->_supportedLanguages;
    v6->_supportedLanguages = v13;

    v15 = [v5 valueForKeyPath:@"relationships.rating-systems.data"];
    v16 = [v15 ams_mapWithTransformIgnoresNil:&__block_literal_global_15_2];
    ratingSystems = v6->_ratingSystems;
    v6->_ratingSystems = v16;
  }

  return v6;
}

+ (id)storeFrontWithDictionary:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[AMSRatingsStoreFront alloc] initWithDictionary:v8 mediaType:a4 andStoreFront:v7];

  return v9;
}

+ (id)storeFrontWithDictionary:(id)a3 mediaType:(unint64_t)a4
{
  v5 = a3;
  v6 = [[AMSRatingsStoreFront alloc] initWithDictionary:v5 mediaType:a4];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSRatingsStoreFront *)self name];
  [v3 ams_setNullableObject:v4 forKey:@"name"];

  v5 = [(AMSRatingsStoreFront *)self storeFrontID];
  [v3 ams_setNullableObject:v5 forKey:@"id"];

  v6 = [(AMSRatingsStoreFront *)self supportedLanguages];
  [v3 ams_setNullableObject:v6 forKey:@"supportedLanguages"];

  v7 = [(AMSRatingsStoreFront *)self defaultLanguage];
  [v3 ams_setNullableObject:v7 forKey:@"defaultLanguages"];

  v8 = [(AMSRatingsStoreFront *)self ratingSystems];
  [v3 ams_setNullableObject:v8 forKey:@"ratingSystems"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end