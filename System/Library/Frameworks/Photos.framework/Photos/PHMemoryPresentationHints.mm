@interface PHMemoryPresentationHints
+ (int64_t)tripTypeFromMemory:(id)memory;
- (NSString)description;
- (PHMemoryPresentationHints)initWithMemory:(id)memory;
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

- (PHMemoryPresentationHints)initWithMemory:(id)memory
{
  memoryCopy = memory;
  v13.receiver = self;
  v13.super_class = PHMemoryPresentationHints;
  v5 = [(PHMemoryPresentationHints *)&v13 init];
  if (v5)
  {
    v5->_tripType = [objc_opt_class() tripTypeFromMemory:memoryCopy];
    v5->_socialRelationships = [objc_opt_class() socialRelationshipsFromMemory:memoryCopy];
    photosGraphProperties = [memoryCopy photosGraphProperties];
    v5->_recommendedMoods = 0;
    v7 = [photosGraphProperties objectForKeyedSubscript:@"recommendedMoods"];
    v8 = v7;
    if (v7)
    {
      v5->_recommendedMoods = PHMemoryMoodForString(v7);
    }

    v5->_forbiddenMoods = 0;
    v9 = [photosGraphProperties objectForKeyedSubscript:@"forbiddenMoods"];
    v10 = v9;
    if (v9)
    {
      v5->_forbiddenMoods = PHMemoryMoodForString(v9);
    }

    v5->_qualityCategory = 0;
    if ([memoryCopy isMustSee])
    {
      v11 = 3;
    }

    else if ([memoryCopy isStellar])
    {
      v11 = 2;
    }

    else
    {
      if (![memoryCopy isGreat])
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

+ (int64_t)tripTypeFromMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy category] == 301)
  {
    subcategory = [memoryCopy subcategory];
    if (subcategory == 215)
    {
      v5 = 2;
    }

    else
    {
      v5 = subcategory == 205;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end