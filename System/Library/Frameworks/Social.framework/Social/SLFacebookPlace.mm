@interface SLFacebookPlace
+ (id)placeWithResponseDictionary:(id)dictionary;
@end

@implementation SLFacebookPlace

+ (id)placeWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SLFacebookPlace);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  [(SLPlace *)v4 setIdentifier:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  [(SLPlace *)v4 setName:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"category"];
  [(SLPlace *)v4 setCategory:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"picture"];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"picture"];
    v11 = [v10 objectForKeyedSubscript:@"data"];
    v12 = [v11 objectForKeyedSubscript:@"url"];
    v13 = [v9 URLWithString:v12];
    [(SLPlace *)v4 setPictureURL:v13];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"location"];

  if (v14)
  {
    v15 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    v16 = [v15 objectForKeyedSubscript:@"latitude"];
    [v16 doubleValue];
    [(SLPlace *)v4 setLatitude:?];

    v17 = [v15 objectForKeyedSubscript:@"longitude"];
    [v17 doubleValue];
    [(SLPlace *)v4 setLongitude:?];
  }

  return v4;
}

@end