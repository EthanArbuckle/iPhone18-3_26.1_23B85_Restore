@interface PersonalizedItemSignalPack
- (BOOL)hasValueForFeatureType:(int64_t)a3;
- (PersonalizedItemSignalPack)init;
- (PersonalizedItemSignalPack)initWithItem:(id)a3 suggestionEntry:(id)a4;
- (double)valueForFeatureType:(int64_t)a3;
- (void)setBooleanValue:(BOOL)a3 forFeatureType:(int64_t)a4;
- (void)setScalarValue:(double)a3 forFeatureType:(int64_t)a4;
@end

@implementation PersonalizedItemSignalPack

- (double)valueForFeatureType:(int64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (BOOL)hasValueForFeatureType:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
    v5 = [NSNumber numberWithInteger:v3];
    v6 = [v4 objectForKeyedSubscript:v5];
    LOBYTE(v3) = v6 != 0;
  }

  return v3;
}

- (void)setBooleanValue:(BOOL)a3 forFeatureType:(int64_t)a4
{
  v4 = 0.0;
  if (a3)
  {
    v4 = 1.0;
  }

  [(PersonalizedItemSignalPack *)self setScalarValue:a4 forFeatureType:v4];
}

- (void)setScalarValue:(double)a3 forFeatureType:(int64_t)a4
{
  if (a4)
  {
    v8 = [NSNumber numberWithDouble:a3];
    v6 = [(PersonalizedItemSignalPack *)self signalScalarValuesByFeatureType];
    v7 = [NSNumber numberWithInteger:a4];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

- (PersonalizedItemSignalPack)initWithItem:(id)a3 suggestionEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PersonalizedItemSignalPack *)self init];

  if (v8)
  {
    -[PersonalizedItemSignalPack setItemSuggestionTypeSource:](v8, "setItemSuggestionTypeSource:", [v7 suggestionType]);
    -[PersonalizedItemSignalPack setItemServerEntryTypeSource:](v8, "setItemServerEntryTypeSource:", [v7 serverEntryType]);
    if ([v7 hasShownToUser])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 shownToUser], 1);
    }

    if ([v7 hasFractionOfMatch])
    {
      [v7 fractionOfMatch];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:2 forFeatureType:?];
    }

    if ([v7 hasDistanceToSuggestion])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 3, [v7 distanceToSuggestion]);
    }

    if ([v7 hasContactRelevanceScore])
    {
      [v7 contactRelevanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:4 forFeatureType:?];
    }

    if ([v7 hasMatchedUsingName])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 matchedUsingName], 5);
    }

    if ([v7 hasMatchedUsingOrganization])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 matchedUsingOrganization], 6);
    }

    if ([v7 hasMatchedUsingAddress])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 matchedUsingAddress], 7);
    }

    if ([v7 hasMatchedUsingLabel])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 matchedUsingLabel], 8);
    }

    if ([v7 hasMatchedUsingEventName])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 matchedUsingEventName], 9);
    }

    if ([v7 hasPeopleSuggesterRank])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 10, [v7 peopleSuggesterRank]);
    }

    if ([v7 hasAge])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 11, [v7 age]);
    }

    if ([v7 hasIsFavorite])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isFavorite], 12);
    }

    if ([v7 hasPoiOpenState])
    {
      v9 = [v7 poiOpenState];
      if (v9 <= 4 && ((0x1Bu >> v9) & 1) != 0)
      {
        [(PersonalizedItemSignalPack *)v8 setBooleanValue:1 forFeatureType:qword_101213240[v9]];
      }
    }

    if ([v7 hasMapsSuggestionsContactRevelanceScore])
    {
      [v7 mapsSuggestionsContactRevelanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:17 forFeatureType:?];
    }

    if ([v7 hasMapsSuggestionsPoiRevelanceScore])
    {
      [v7 mapsSuggestionsPoiRevelanceScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:18 forFeatureType:?];
    }

    if ([v7 hasMapsSuggestionsIsTouristScore])
    {
      [v7 mapsSuggestionsIsTouristScore];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:19 forFeatureType:?];
    }

    if ([v7 hasTimeSinceLastInteractedSeconds])
    {
      [v7 timeSinceLastInteractedSeconds];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:20 forFeatureType:?];
    }

    if ([v7 hasDistanceToSuggestionFromViewportCenter])
    {
      [v7 distanceToSuggestionFromViewportCenter];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:21 forFeatureType:?];
    }

    if ([v7 hasIsContainedInViewport])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContainedInViewport], 22);
    }

    if ([v7 hasTimeSinceMapViewportChangedSeconds])
    {
      [v7 timeSinceMapViewportChangedSeconds];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:23 forFeatureType:?];
    }

    if ([v7 hasIsContactWithHomeLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContactWithHomeLocation], 24);
    }

    if ([v7 hasIsContactWithWorkLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContactWithWorkLocation], 25);
    }

    if ([v7 hasIsContactWithSchoolLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContactWithSchoolLocation], 26);
    }

    if ([v7 hasIsContactWithOtherLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContactWithOtherLocation], 27);
    }

    if ([v7 hasIsContactWithLiveLocation])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 isContactWithLiveLocation], 28);
    }

    if ([v7 hasPrefixLastTokenMatchCover])
    {
      [v7 prefixLastTokenMatchCover];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:30 forFeatureType:v10];
    }

    if ([v7 hasPrefixMatchCover])
    {
      [v7 prefixMatchCover];
      [(PersonalizedItemSignalPack *)v8 setScalarValue:31 forFeatureType:v11];
    }

    if ([v7 hasPrefixMatchPosition])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 32, [v7 prefixMatchPosition]);
    }

    if ([v7 hasPrefixMatchWordBoundary])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 33, [v7 prefixMatchWordBoundary]);
    }

    if ([v7 hasPrefixTokenMatchLengthFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 34, [v7 prefixTokenMatchLengthFirstQueryToken]);
    }

    if ([v7 hasPrefixTokenMatchPositionFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 35, [v7 prefixTokenMatchPositionFirstQueryToken]);
    }

    if ([v7 hasPrefixTokenIsNumberFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 prefixTokenIsNumberFirstQueryToken], 36);
    }

    if ([v7 hasPrefixTokenMatchLocationFirstQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 37, [v7 prefixTokenMatchLocationFirstQueryToken]);
    }

    if ([v7 hasPrefixTokenMatchLengthSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 38, [v7 prefixTokenMatchLengthSecondQueryToken]);
    }

    if ([v7 hasPrefixTokenMatchPositionSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 39, [v7 prefixTokenMatchPositionSecondQueryToken]);
    }

    if ([v7 hasPrefixTokenIsNumberSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setBooleanValue:forFeatureType:](v8, "setBooleanValue:forFeatureType:", [v7 hasPrefixTokenIsNumberSecondQueryToken], 40);
    }

    if ([v7 hasPrefixTokenMatchLocationSecondQueryToken])
    {
      -[PersonalizedItemSignalPack setScalarValue:forFeatureType:](v8, "setScalarValue:forFeatureType:", 41, [v7 prefixTokenMatchLocationSecondQueryToken]);
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