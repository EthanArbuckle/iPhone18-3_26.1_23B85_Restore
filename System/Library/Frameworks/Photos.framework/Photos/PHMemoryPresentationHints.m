@interface PHMemoryPresentationHints
+ (int64_t)tripTypeFromMemory:(id)a3;
- (NSString)description;
- (PHMemoryPresentationHints)initWithMemory:(id)a3;
@end

@implementation PHMemoryPresentationHints

- (NSString)description
{
  v3 = PHCollectionPresentationHintsStringsFromSocialRelationships([(PHMemoryPresentationHints *)self socialRelationships]);
  v4 = [v3 componentsJoinedByString:{@", "}];

  v10.receiver = self;
  v10.super_class = PHMemoryPresentationHints;
  v5 = [(PHMemoryPresentationHints *)&v10 description];
  v6 = PHCollectionPresentationHintsStringFromTripType([(PHMemoryPresentationHints *)self tripType]);
  v7 = PHCollectionPresentationHintsStringFromQualityCategory([(PHMemoryPresentationHints *)self qualityCategory]);
  v8 = [v5 stringByAppendingFormat:@"%@|%@|%@", v6, v7, v4];

  return v8;
}

- (PHMemoryPresentationHints)initWithMemory:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PHMemoryPresentationHints;
  v5 = [(PHMemoryPresentationHints *)&v13 init];
  if (v5)
  {
    v5->_tripType = [objc_opt_class() tripTypeFromMemory:v4];
    v5->_socialRelationships = [objc_opt_class() socialRelationshipsFromMemory:v4];
    v6 = [v4 photosGraphProperties];
    v5->_recommendedMoods = 0;
    v7 = [v6 objectForKeyedSubscript:@"recommendedMoods"];
    v8 = v7;
    if (v7)
    {
      v5->_recommendedMoods = PHMemoryMoodForString(v7);
    }

    v5->_forbiddenMoods = 0;
    v9 = [v6 objectForKeyedSubscript:@"forbiddenMoods"];
    v10 = v9;
    if (v9)
    {
      v5->_forbiddenMoods = PHMemoryMoodForString(v9);
    }

    v5->_qualityCategory = 0;
    if ([v4 isMustSee])
    {
      v11 = 3;
    }

    else if ([v4 isStellar])
    {
      v11 = 2;
    }

    else
    {
      if (![v4 isGreat])
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = 1;
    }

    v5->_qualityCategory = v11;
    goto LABEL_13;
  }

LABEL_14:

  return v5;
}

+ (int64_t)tripTypeFromMemory:(id)a3
{
  v3 = a3;
  if ([v3 category] == 301)
  {
    v4 = [v3 subcategory];
    if (v4 == 215)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 205;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end