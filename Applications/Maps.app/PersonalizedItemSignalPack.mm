@interface PersonalizedItemSignalPack
- (BOOL)hasValueForFeatureType:(int64_t)type;
- (PersonalizedItemSignalPack)init;
- (PersonalizedItemSignalPack)initWithItem:(id)item suggestionEntry:(id)entry;
- (double)valueForFeatureType:(int64_t)type;
- (void)setBooleanValue:(BOOL)value forFeatureType:(int64_t)type;
- (void)setScalarValue:(double)value forFeatureType:(int64_t)type;
@end

@implementation PersonalizedItemSignalPack

- (double)valueForFeatureType:(int64_t)type
{
  if (!type)
  {
    return 0.0;
  }

  signalScalarValuesByFeatureType = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
  v5 = [NSNumber numberWithInteger:type];
  v6 = [signalScalarValuesByFeatureType objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (BOOL)hasValueForFeatureType:(int64_t)type
{
  typeCopy = type;
  if (type)
  {
    signalScalarValuesByFeatureType = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
    v5 = [NSNumber numberWithInteger:typeCopy];
    v6 = [signalScalarValuesByFeatureType objectForKeyedSubscript:v5];
    LOBYTE(typeCopy) = v6 != 0;
  }

  return typeCopy;
}

- (void)setBooleanValue:(BOOL)value forFeatureType:(int64_t)type
{
  v4 = 0.0;
  if (value)
  {
    v4 = 1.0;
  }

  [(PersonalizedItemSignalPack *)self setScalarValue:type forFeatureType:v4];
}

- (void)setScalarValue:(double)value forFeatureType:(int64_t)type
{
  if (type)
  {
    v8 = [NSNumber numberWithDouble:value];
    signalScalarValuesByFeatureType = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
    v7 = [NSNumber numberWithInteger:type];
    [signalScalarValuesByFeatureType setObject:v8 forKeyedSubscript:v7];
  }
}

- (PersonalizedItemSignalPack)initWithItem:(id)item suggestionEntry:(id)entry
{
  itemCopy = item;
  entryCopy = entry;
  v8 = [(PersonalizedItemSignalPack *)self init];

  if (v8)
  {
    -[PersonalizedItemSignalPack setItemSuggestionTypeSource:](v8, "setItemSuggestionTypeSource:", [entryCopy suggestionType]);
    -[PersonalizedItemSignalPack setItemServerEntryTypeSource:](v8, "setItemServerEntryTypeSource:", [entryCopy serverEntryType]);
    if ([entryCopy hasShownToUser])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy shownToUser], 1);
    }

    if ([entryCopy hasFractionOfMatch])
    {
      [entryCopy fractionOfMatch];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:2 forFeatureType:?];
    }

    if ([entryCopy hasDistanceToSuggestion])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 3, [entryCopy distanceToSuggestion]);
    }

    if ([entryCopy hasContactRelevanceScore])
    {
      [entryCopy contactRelevanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:4 forFeatureType:?];
    }

    if ([entryCopy hasMatchedUsingName])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy matchedUsingName], 5);
    }

    if ([entryCopy hasMatchedUsingOrganization])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy matchedUsingOrganization], 6);
    }

    if ([entryCopy hasMatchedUsingAddress])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy matchedUsingAddress], 7);
    }

    if ([entryCopy hasMatchedUsingLabel])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy matchedUsingLabel], 8);
    }

    if ([entryCopy hasMatchedUsingEventName])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy matchedUsingEventName], 9);
    }

    if ([entryCopy hasPeopleSuggesterRank])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 10, [entryCopy peopleSuggesterRank]);
    }

    if ([entryCopy hasAge])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 11, [entryCopy age]);
    }

    if ([entryCopy hasIsFavorite])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isFavorite], 12);
    }

    if ([entryCopy hasPoiOpenState])
    {
      poiOpenState = [entryCopy poiOpenState];
      if (poiOpenState <= 4 && ((0x1Bu >> poiOpenState) & 1) != 0)
      {
        [(PersonalizedItemSignalPack *)v8 setBooleanValue:1 forFeatureType:qword_101213240[poiOpenState]];
      }
    }

    if ([entryCopy hasMapsSuggestionsContactRevelanceScore])
    {
      [entryCopy mapsSuggestionsContactRevelanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:17 forFeatureType:?];
    }

    if ([entryCopy hasMapsSuggestionsPoiRevelanceScore])
    {
      [entryCopy mapsSuggestionsPoiRevelanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:18 forFeatureType:?];
    }

    if ([entryCopy hasMapsSuggestionsIsTouristScore])
    {
      [entryCopy mapsSuggestionsIsTouristScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:19 forFeatureType:?];
    }

    if ([entryCopy hasTimeSinceLastInteractedSeconds])
    {
      [entryCopy timeSinceLastInteractedSeconds];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:20 forFeatureType:?];
    }

    if ([entryCopy hasDistanceToSuggestionFromViewportCenter])
    {
      [entryCopy distanceToSuggestionFromViewportCenter];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:21 forFeatureType:?];
    }

    if ([entryCopy hasIsContainedInViewport])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContainedInViewport], 22);
    }

    if ([entryCopy hasTimeSinceMapViewportChangedSeconds])
    {
      [entryCopy timeSinceMapViewportChangedSeconds];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:23 forFeatureType:?];
    }

    if ([entryCopy hasIsContactWithHomeLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContactWithHomeLocation], 24);
    }

    if ([entryCopy hasIsContactWithWorkLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContactWithWorkLocation], 25);
    }

    if ([entryCopy hasIsContactWithSchoolLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContactWithSchoolLocation], 26);
    }

    if ([entryCopy hasIsContactWithOtherLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContactWithOtherLocation], 27);
    }

    if ([entryCopy hasIsContactWithLiveLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy isContactWithLiveLocation], 28);
    }

    if ([entryCopy hasPrefixLastTokenMatchCover])
    {
      [entryCopy prefixLastTokenMatchCover];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:30 forFeatureType:v10];
    }

    if ([entryCopy hasPrefixMatchCover])
    {
      [entryCopy prefixMatchCover];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:31 forFeatureType:v11];
    }

    if ([entryCopy hasPrefixMatchPosition])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 32, [entryCopy prefixMatchPosition]);
    }

    if ([entryCopy hasPrefixMatchWordBoundary])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 33, [entryCopy prefixMatchWordBoundary]);
    }

    if ([entryCopy hasPrefixTokenMatchLengthFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 34, [entryCopy prefixTokenMatchLengthFirstQueryToken]);
    }

    if ([entryCopy hasPrefixTokenMatchPositionFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 35, [entryCopy prefixTokenMatchPositionFirstQueryToken]);
    }

    if ([entryCopy hasPrefixTokenIsNumberFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy prefixTokenIsNumberFirstQueryToken], 36);
    }

    if ([entryCopy hasPrefixTokenMatchLocationFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 37, [entryCopy prefixTokenMatchLocationFirstQueryToken]);
    }

    if ([entryCopy hasPrefixTokenMatchLengthSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 38, [entryCopy prefixTokenMatchLengthSecondQueryToken]);
    }

    if ([entryCopy hasPrefixTokenMatchPositionSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 39, [entryCopy prefixTokenMatchPositionSecondQueryToken]);
    }

    if ([entryCopy hasPrefixTokenIsNumberSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [entryCopy hasPrefixTokenIsNumberSecondQueryToken], 40);
    }

    if ([entryCopy hasPrefixTokenMatchLocationSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 41, [entryCopy prefixTokenMatchLocationSecondQueryToken]);
    }
  }

  v12 = v8;

  return v12;
}

- (PersonalizedItemSignalPack)init
{
  v6.receiver = self;
  v6.super_class = PersonalizedItemSignalPack;
  v2 = [(PersonalizedItemSignalPack *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    signalScalarValuesByFeatureType = v2->_signalScalarValuesByFeatureType;
    v2->_signalScalarValuesByFeatureType = v3;

    v2->_itemSuggestionTypeSource = 0;
  }

  return v2;
}

@end