@interface PHPhotosHighlight
+ (BOOL)cleanupEmptyHighlights;
+ (BOOL)invalidateHighlightSubtitlesAndRegenerateHighlightTitles;
+ (BOOL)locationOfInterestUpdate;
+ (BOOL)processRecentHighlights;
+ (BOOL)processUnprocessedMomentLocations;
+ (BOOL)updateHighlightTitles;
+ (Class)propertySetClassForPropertySet:(id)set;
+ (id)_choosePrivateOrSharedRelationshipForHighlight:(id)highlight givenFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler;
+ (id)_fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds photoLibrary:(id)library;
+ (id)_fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds photoLibrary:(id)library;
+ (id)collageAssetsInverseRelationshipPredicateForDayHighlight:(id)highlight forHighlightFilter:(unsigned __int16)filter;
+ (id)dateRangeTitleGenerator;
+ (id)entityKeyMap;
+ (id)fetchAllSharedLibrarySharingSuggestionHighlightsWithOptions:(id)options;
+ (id)fetchChildDayGroupHighlightsForHighlight:(id)highlight options:(id)options;
+ (id)fetchChildHighlightsForHighlight:(id)highlight options:(id)options;
+ (id)fetchHighlightsInSharedLibrarySharingSuggestions:(id)suggestions;
+ (id)fetchParentDayGroupHighlightForHighlight:(id)highlight options:(id)options;
+ (id)fetchParentHighlightForHighlight:(id)highlight options:(id)options;
+ (id)fetchParentHighlightsForHighlights:(id)highlights options:(id)options;
+ (id)fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds options:(id)options;
+ (id)fetchPhotosHighlightUUIDByAssetUUIDForAssets:(id)assets options:(id)options;
+ (id)fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:(id)ds options:(id)options;
+ (id)fetchPredicateForSharingFilter:(unsigned __int16)filter;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
+ (id)fetchSharedLibrarySharingSuggestionsWithOptions:(id)options;
+ (id)fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds options:(id)options;
+ (id)keyAssetInverseRelationshipPredicateForHighlight:(id)highlight forHighlightFilter:(unsigned __int16)filter;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets;
- (BOOL)isEqual:(id)equal;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSString)shortDateDescription;
- (NSString)subtitle;
- (NSString)verboseSmartDescription;
- (PHPhotosHighlight)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)dateDescriptionWithOptions:(unint64_t)options;
- (id)description;
- (id)keyAssetObjectIDForKindWithFilter:(unsigned __int16)filter;
- (id)localizedSubtitle;
- (id)localizedTitle;
- (id)title;
- (int64_t)assetCollectionSubtype;
- (unint64_t)assetsCount;
- (unint64_t)countForCurationType:(unsigned __int16)type;
- (unint64_t)estimatedPhotosCount;
- (unint64_t)estimatedVideosCount;
- (unint64_t)extendedCount;
- (unint64_t)summaryCount;
- (unsigned)preferredCurationType;
- (unsigned)visibilityState;
@end

@implementation PHPhotosHighlight

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_11235;

  return v2;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = PHPhotosHighlight;
  v3 = [(PHAssetCollection *)&v15 description];
  dateDescription = [(PHPhotosHighlight *)self dateDescription];
  smartDescription = [(PHPhotosHighlight *)self smartDescription];
  verboseSmartDescription = [(PHPhotosHighlight *)self verboseSmartDescription];
  startDate = [(PHAssetCollection *)self startDate];
  endDate = [(PHAssetCollection *)self endDate];
  [(PHPhotosHighlight *)self kind];
  v9 = PLDescriptionForPhotosHighlightKind();
  [(PHPhotosHighlight *)self type];
  v10 = PLDescriptionForPhotosHighlightType();
  isRecent = [(PHPhotosHighlight *)self isRecent];
  v12 = @"NO";
  if (isRecent)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringByAppendingFormat:@"%@ - %@, verboseSmartDescription: %@, [%@ - %@], kind: %@, type: %@, isRecent: %@", dateDescription, smartDescription, verboseSmartDescription, startDate, endDate, v9, v10, v12];

  return v13;
}

- (unsigned)preferredCurationType
{
  if (self->_kind)
  {
    v2 = self->_kind == 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)keyAssetObjectIDForKindWithFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v5 = objc_opt_class();

  return [v5 _keyAssetObjectIDForHighlight:self filter:filterCopy];
}

- (NSDate)localEndDate
{
  localEndDate = self->_localEndDate;
  if (!localEndDate)
  {
    v4 = [(NSDate *)self->super._endDate dateByAddingTimeInterval:self->_endTimeZoneOffset];
    v5 = self->_localEndDate;
    self->_localEndDate = v4;

    localEndDate = self->_localEndDate;
  }

  return localEndDate;
}

- (NSDate)localStartDate
{
  localStartDate = self->_localStartDate;
  if (!localStartDate)
  {
    v4 = [(NSDate *)self->super._startDate dateByAddingTimeInterval:self->_startTimeZoneOffset];
    v5 = self->_localStartDate;
    self->_localStartDate = v4;

    localStartDate = self->_localStartDate;
  }

  return localStartDate;
}

- (id)dateDescriptionWithOptions:(unint64_t)options
{
  optionsCopy = options;
  localStartDate = [(PHPhotosHighlight *)self localStartDate];
  localEndDate = [(PHPhotosHighlight *)self localEndDate];
  if ([(PHPhotosHighlight *)self kind]== 1)
  {
    [localEndDate timeIntervalSinceDate:localStartDate];
    v8 = [localStartDate dateByAddingTimeInterval:v7 * 0.5];

    localEndDate = v8;
    localStartDate = v8;
  }

  dateRangeTitleGenerator = [objc_opt_class() dateRangeTitleGenerator];
  v10 = [dateRangeTitleGenerator dateRangeTitleWithStartDate:localStartDate endDate:localEndDate category:-[PHPhotosHighlight category](self kind:"category") type:-[PHPhotosHighlight kind](self options:{"kind"), -[PHPhotosHighlight type](self, "type"), 2 * (optionsCopy & 3)}];

  return v10;
}

- (id)title
{
  category = [(PHPhotosHighlight *)self category];
  if ([(PHPhotosHighlight *)self kind]&& [(PHPhotosHighlight *)self kind]!= 3)
  {
    v8 = 0;
  }

  else
  {
    startDate = [(PHAssetCollection *)self startDate];
    [startDate timeIntervalSinceNow];
    v6 = v5;

    v7 = -v6;
    if (v6 >= 0.0)
    {
      v7 = v6;
    }

    v8 = v7 < 604800.0;
  }

  if (category == 1 || v8)
  {
    if (_os_feature_enabled_impl())
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    dateRangeTitleGenerator = [objc_opt_class() dateRangeTitleGenerator];
    localStartDate = [(PHPhotosHighlight *)self localStartDate];
    localEndDate = [(PHPhotosHighlight *)self localEndDate];
    localizedTitle = [dateRangeTitleGenerator dateRangeTitleWithStartDate:localStartDate endDate:localEndDate category:-[PHPhotosHighlight category](self kind:"category") type:-[PHPhotosHighlight kind](self options:{"kind"), -[PHPhotosHighlight type](self, "type"), v10}];
  }

  else
  {
    localizedTitle = [(PHPhotosHighlight *)self localizedTitle];
  }

  return localizedTitle;
}

- (NSString)subtitle
{
  verboseSmartDescriptionUserEdited = [(PHPhotosHighlight *)self verboseSmartDescriptionUserEdited];
  subtitle = verboseSmartDescriptionUserEdited;
  if (!verboseSmartDescriptionUserEdited)
  {
    subtitle = self->_subtitle;
  }

  v5 = subtitle;

  return subtitle;
}

- (NSString)shortDateDescription
{
  kind = [(PHPhotosHighlight *)self kind];
  if (kind != 3 && kind)
  {
    v5 = &OBJC_IVAR___PHPhotosHighlight__shortDateDescriptionPrivate;
  }

  else
  {
    sharingComposition = self->_sharingComposition;
    v5 = &OBJC_IVAR___PHPhotosHighlight__shortDateDescriptionPrivate;
    if (sharingComposition == 2)
    {
      sharingFilter = self->_sharingFilter;
      if (sharingFilter == 1)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__shortDateDescriptionShared;
      }

      if (sharingFilter == 2)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__shortDateDescriptionMixed;
      }
    }

    else if (sharingComposition == 1)
    {
      v5 = &OBJC_IVAR___PHPhotosHighlight__shortDateDescriptionShared;
    }
  }

  v7 = *(&self->super.super.super.super.isa + *v5);

  return v7;
}

- (unint64_t)countForCurationType:(unsigned __int16)type
{
  if (type == 2)
  {
    return [(PHPhotosHighlight *)self extendedCount];
  }

  if (type == 1)
  {
    return [(PHPhotosHighlight *)self summaryCount];
  }

  return 0;
}

- (unsigned)visibilityState
{
  sharingComposition = self->_sharingComposition;
  if (sharingComposition != 2)
  {
    if (sharingComposition != 1)
    {
      if (!self->_sharingComposition)
      {
        return [(PHPhotosHighlight *)self visibilityStatePrivate];
      }

      return 0;
    }

    return [(PHPhotosHighlight *)self visibilityStateShared];
  }

  sharingFilter = self->_sharingFilter;
  if (sharingFilter != 2)
  {
    if (sharingFilter != 1)
    {
      if (!self->_sharingFilter)
      {
        return [(PHPhotosHighlight *)self visibilityStatePrivate];
      }

      return 0;
    }

    return [(PHPhotosHighlight *)self visibilityStateShared];
  }

  return [(PHPhotosHighlight *)self visibilityStateMixed];
}

- (unint64_t)summaryCount
{
  if (!self->_kind)
  {
    sharingComposition = self->_sharingComposition;
    if (sharingComposition == 2)
    {
      sharingFilter = self->_sharingFilter;
      if (sharingFilter == 2)
      {
        return [(PHPhotosHighlight *)self summaryCountMixed];
      }

      if (sharingFilter != 1)
      {
        if (self->_sharingFilter)
        {
          goto LABEL_8;
        }

        return [(PHPhotosHighlight *)self summaryCountPrivate];
      }
    }

    else if (sharingComposition != 1)
    {
      if (self->_sharingComposition)
      {
        goto LABEL_4;
      }

      return [(PHPhotosHighlight *)self summaryCountPrivate];
    }

    return [(PHPhotosHighlight *)self summaryCountShared];
  }

  if (self->_kind != 3)
  {
    return 0;
  }

  sharingComposition = self->_sharingComposition;
LABEL_4:
  if (!sharingComposition)
  {
    return [(PHPhotosHighlight *)self dayGroupSummaryAssetsCountPrivate];
  }

  if (sharingComposition == 1)
  {
    return [(PHPhotosHighlight *)self dayGroupSummaryAssetsCountShared];
  }

  if (sharingComposition != 2)
  {
    return 0;
  }

  sharingFilter = self->_sharingFilter;
LABEL_8:
  if (sharingFilter != 2)
  {
    if (sharingFilter != 1)
    {
      if (!sharingFilter)
      {
        return [(PHPhotosHighlight *)self dayGroupSummaryAssetsCountPrivate];
      }

      return 0;
    }

    return [(PHPhotosHighlight *)self dayGroupSummaryAssetsCountShared];
  }

  return [(PHPhotosHighlight *)self dayGroupSummaryAssetsCountMixed];
}

- (unint64_t)extendedCount
{
  v2 = *(self + 384);
  if (v2 >= 3)
  {
    if (v2 != 3)
    {
      return self;
    }

    v3 = *(self + 382);
    goto LABEL_8;
  }

  v3 = *(self + 382);
  if (v3 == 2)
  {
    v4 = *(self + 400);
    if (v4 == 2)
    {
      return [self extendedCountMixed];
    }

    if (v4 != 1)
    {
      if (!*(self + 400))
      {
        return [self extendedCountPrivate];
      }

      goto LABEL_15;
    }

    return [self extendedCountShared];
  }

  if (v3 == 1)
  {
    return [self extendedCountShared];
  }

  if (!*(self + 382))
  {
    return [self extendedCountPrivate];
  }

LABEL_8:
  if (!v3)
  {
    return [self dayGroupExtendedAssetsCountPrivate];
  }

  if (v3 == 1)
  {
    return [self dayGroupExtendedAssetsCountShared];
  }

  if (v3 != 2)
  {
    return self;
  }

  v4 = *(self + 400);
LABEL_15:
  switch(v4)
  {
    case 2:
      return [self dayGroupExtendedAssetsCountMixed];
    case 1:
      return [self dayGroupExtendedAssetsCountShared];
    case 0:
      return [self dayGroupExtendedAssetsCountPrivate];
  }

  return self;
}

- (unint64_t)assetsCount
{
  result = [(PHPhotosHighlight *)self isSharingSuggestion];
  if (result)
  {
    photoAssetsSuggestedByPhotosCount = [(PHPhotosHighlight *)self photoAssetsSuggestedByPhotosCount];
    videoAssetsSuggestedByPhotosCount = [(PHPhotosHighlight *)self videoAssetsSuggestedByPhotosCount];
    if (videoAssetsSuggestedByPhotosCount == 0x7FFFFFFFFFFFFFFFLL || photoAssetsSuggestedByPhotosCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return videoAssetsSuggestedByPhotosCount + photoAssetsSuggestedByPhotosCount;
    }
  }

  kind = self->_kind;
  if (kind >= 3)
  {
    if (kind != 3)
    {
      return result;
    }

    sharingComposition = self->_sharingComposition;
LABEL_18:
    if (!sharingComposition)
    {
LABEL_28:

      return [(PHPhotosHighlight *)self dayGroupAssetsCountPrivate];
    }

    if (sharingComposition == 1)
    {
      goto LABEL_34;
    }

    if (sharingComposition != 2)
    {
      return result;
    }

    sharingFilter = self->_sharingFilter;
    goto LABEL_25;
  }

  sharingComposition = self->_sharingComposition;
  if (sharingComposition != 2)
  {
    if (sharingComposition != 1)
    {
      if (!self->_sharingComposition)
      {
LABEL_13:

        return [(PHPhotosHighlight *)self assetsCountPrivate];
      }

      goto LABEL_18;
    }

LABEL_31:

    return [(PHPhotosHighlight *)self assetsCountShared];
  }

  sharingFilter = self->_sharingFilter;
  if (sharingFilter == 2)
  {

    return [(PHPhotosHighlight *)self assetsCountMixed];
  }

  if (sharingFilter == 1)
  {
    goto LABEL_31;
  }

  if (!self->_sharingFilter)
  {
    goto LABEL_13;
  }

LABEL_25:
  if (sharingFilter != 2)
  {
    if (sharingFilter != 1)
    {
      if (sharingFilter)
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_34:

    return [(PHPhotosHighlight *)self dayGroupAssetsCountShared];
  }

  return [(PHPhotosHighlight *)self dayGroupAssetsCountMixed];
}

- (unint64_t)estimatedVideosCount
{
  if ([(PHPhotosHighlight *)self isSharingSuggestion])
  {

    return [(PHPhotosHighlight *)self videoAssetsSuggestedByPhotosCount];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PHPhotosHighlight;
    return [(PHAssetCollection *)&v4 estimatedVideosCount];
  }
}

- (unint64_t)estimatedPhotosCount
{
  if ([(PHPhotosHighlight *)self isSharingSuggestion])
  {

    return [(PHPhotosHighlight *)self photoAssetsSuggestedByPhotosCount];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PHPhotosHighlight;
    return [(PHAssetCollection *)&v4 estimatedPhotosCount];
  }
}

- (NSString)verboseSmartDescription
{
  sharingComposition = self->_sharingComposition;
  if (self->_sharingComposition)
  {
    if (sharingComposition == 2)
    {
      sharingFilter = self->_sharingFilter;
      if (sharingFilter > 2)
      {
        goto LABEL_9;
      }

      v4 = off_1E75A4FB0[sharingFilter];
    }

    else
    {
      if (sharingComposition != 1)
      {
        goto LABEL_9;
      }

      v4 = &OBJC_IVAR___PHPhotosHighlight__verboseSmartDescriptionShared;
    }
  }

  else
  {
    v4 = &OBJC_IVAR___PHPhotosHighlight__verboseSmartDescription;
  }

  a2 = *(&self->super.super.super.super.isa + *v4);
LABEL_9:

  return a2;
}

- (id)localizedSubtitle
{
  kind = [(PHPhotosHighlight *)self kind];
  if (kind != 3 && kind)
  {
    v5 = &OBJC_IVAR___PHPhotosHighlight__subtitle;
  }

  else
  {
    sharingComposition = self->_sharingComposition;
    v5 = &OBJC_IVAR___PHPhotosHighlight__subtitle;
    if (sharingComposition == 2)
    {
      sharingFilter = self->_sharingFilter;
      if (sharingFilter == 1)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__subtitleShared;
      }

      if (sharingFilter == 2)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__subtitleMixed;
      }
    }

    else if (sharingComposition == 1)
    {
      v5 = &OBJC_IVAR___PHPhotosHighlight__subtitleShared;
    }
  }

  v7 = *(&self->super.super.super.super.isa + *v5);

  return v7;
}

- (id)localizedTitle
{
  kind = [(PHPhotosHighlight *)self kind];
  if (kind != 3 && kind)
  {
    v5 = &OBJC_IVAR___PHAssetCollection__localizedTitle;
  }

  else
  {
    sharingComposition = self->_sharingComposition;
    v5 = &OBJC_IVAR___PHAssetCollection__localizedTitle;
    if (sharingComposition == 2)
    {
      sharingFilter = self->_sharingFilter;
      if (sharingFilter == 1)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__titleShared;
      }

      if (sharingFilter == 2)
      {
        v5 = &OBJC_IVAR___PHPhotosHighlight__titleMixed;
      }
    }

    else if (sharingComposition == 1)
    {
      v5 = &OBJC_IVAR___PHPhotosHighlight__titleShared;
    }
  }

  v7 = *(&self->super.super.super.super.isa + *v5);

  return v7;
}

- (int64_t)assetCollectionSubtype
{
  kind = [(PHPhotosHighlight *)self kind];
  if (kind < 4)
  {
    return kind + 1000000301;
  }

  v5.receiver = self;
  v5.super_class = PHPhotosHighlight;
  return [(PHAssetCollection *)&v5 assetCollectionSubtype];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = PHPhotosHighlight;
  if ([(PHObject *)&v8 isEqual:equalCopy])
  {
    isSharingSuggestion = [equalCopy isSharingSuggestion];
    v6 = isSharingSuggestion ^ [(PHPhotosHighlight *)self isSharingSuggestion]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (PHPhotosHighlight)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v101.receiver = self;
  v101.super_class = PHPhotosHighlight;
  v10 = [(PHAssetCollection *)&v101 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    startDate = v10->super._startDate;
    v10->super._startDate = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    endDate = v10->super._endDate;
    v10->super._endDate = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    subtitle = v10->_subtitle;
    v10->_subtitle = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"verboseSmartDescription"];
    verboseSmartDescription = v10->_verboseSmartDescription;
    v10->_verboseSmartDescription = v17;

    v10->super._assetCollectionType = 6;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"visibilityState"];
    v10->_visibilityState = [v19 unsignedShortValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
    v10->_kind = [v20 integerValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v10->_type = [v21 integerValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    v10->_category = [v22 integerValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"promotionScore"];
    [v23 doubleValue];
    v10->_promotionScore = v24;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"startTimeZoneOffset"];
    v10->_startTimeZoneOffset = [v25 integerValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"endTimeZoneOffset"];
    v10->_endTimeZoneOffset = [v26 integerValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    LOWORD(v26) = [v27 integerValue];

    v10->_recent = v26 == 1;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"enrichmentState"];
    v10->_enrichmentState = [v28 shortValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"lastEnrichmentDate"];
    lastEnrichmentDate = v10->_lastEnrichmentDate;
    v10->_lastEnrichmentDate = v29;

    v10->_enriched = v10->_enrichmentState != 0;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"mood"];
    v10->_mood = [v31 integerValue];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"assetsCount"];
    v10->_assetsCount = [v32 integerValue];

    v33 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupAssetsCount"];
    v10->_dayGroupAssetsCount = [v33 integerValue];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupExtendedAssetsCount"];
    v10->_dayGroupExtendedAssetsCount = [v34 integerValue];

    v35 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupSummaryAssetsCount"];
    v10->_dayGroupSummaryAssetsCount = [v35 integerValue];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"extendedCount"];
    v10->_extendedCount = [v36 integerValue];

    v37 = [dictionaryCopy objectForKeyedSubscript:@"summaryCount"];
    v10->_summaryCount = [v37 integerValue];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"highlightVersion"];
    v10->_highlightVersion = [v38 intValue];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"enrichmentVersion"];
    v10->_enrichmentVersion = [v39 intValue];

    v40 = [dictionaryCopy objectForKeyedSubscript:@"keyAssetPrivate"];
    keyAssetPrivate = v10->_keyAssetPrivate;
    v10->_keyAssetPrivate = v40;

    v42 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupKeyAssetPrivate"];
    dayGroupKeyAssetPrivate = v10->_dayGroupKeyAssetPrivate;
    v10->_dayGroupKeyAssetPrivate = v42;

    v44 = [dictionaryCopy objectForKeyedSubscript:@"monthKeyAssetPrivate"];
    monthKeyAssetPrivate = v10->_monthKeyAssetPrivate;
    v10->_monthKeyAssetPrivate = v44;

    v46 = [dictionaryCopy objectForKeyedSubscript:@"yearKeyAssetPrivate"];
    yearKeyAssetPrivate = v10->_yearKeyAssetPrivate;
    v10->_yearKeyAssetPrivate = v46;

    v48 = [dictionaryCopy objectForKeyedSubscript:@"parentPhotosHighlight"];
    parentPhotosHighlight = v10->_parentPhotosHighlight;
    v10->_parentPhotosHighlight = v48;

    if (hint & 0x1C) < 0x14 && ((0x17u >> ((hint & 0x1C) >> 2)))
    {
      v50 = word_19CB29740[(hint >> 2) & 7];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PHPhotosHighlight.m" lineNumber:557 description:{@"Private/Shared property hints are mutually exclusive %lu", hint & 0x1C}];

      v50 = 0;
    }

    v10->_sharingFilter = v50;
    v10->_isSharingSuggestion = (hint & 0x20) != 0;
    v52 = [dictionaryCopy objectForKeyedSubscript:@"subtitleShared"];
    subtitleShared = v10->_subtitleShared;
    v10->_subtitleShared = v52;

    v54 = [dictionaryCopy objectForKeyedSubscript:@"subtitleMixed"];
    subtitleMixed = v10->_subtitleMixed;
    v10->_subtitleMixed = v54;

    v56 = [dictionaryCopy objectForKeyedSubscript:@"verboseSmartDescriptionShared"];
    verboseSmartDescriptionShared = v10->_verboseSmartDescriptionShared;
    v10->_verboseSmartDescriptionShared = v56;

    v58 = [dictionaryCopy objectForKeyedSubscript:@"verboseSmartDescriptionMixed"];
    verboseSmartDescriptionMixed = v10->_verboseSmartDescriptionMixed;
    v10->_verboseSmartDescriptionMixed = v58;

    v60 = [dictionaryCopy objectForKeyedSubscript:@"keyAssetShared"];
    keyAssetShared = v10->_keyAssetShared;
    v10->_keyAssetShared = v60;

    v62 = [dictionaryCopy objectForKeyedSubscript:@"monthKeyAssetShared"];
    monthKeyAssetShared = v10->_monthKeyAssetShared;
    v10->_monthKeyAssetShared = v62;

    v64 = [dictionaryCopy objectForKeyedSubscript:@"yearKeyAssetShared"];
    yearKeyAssetShared = v10->_yearKeyAssetShared;
    v10->_yearKeyAssetShared = v64;

    v66 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupKeyAssetShared"];
    dayGroupKeyAssetShared = v10->_dayGroupKeyAssetShared;
    v10->_dayGroupKeyAssetShared = v66;

    v68 = [dictionaryCopy objectForKeyedSubscript:@"sharingComposition"];
    v10->_sharingComposition = [v68 integerValue];

    v69 = [dictionaryCopy objectForKeyedSubscript:@"mixedSharingCompositionKeyAssetRelationship"];
    v10->_mixedSharingCompositionKeyAssetRelationship = [v69 unsignedShortValue];

    v70 = [dictionaryCopy objectForKeyedSubscript:@"assetsCountShared"];
    v10->_assetsCountShared = [v70 integerValue];

    v71 = [dictionaryCopy objectForKeyedSubscript:@"extendedCountShared"];
    v10->_extendedCountShared = [v71 integerValue];

    v72 = [dictionaryCopy objectForKeyedSubscript:@"summaryCountShared"];
    v10->_summaryCountShared = [v72 integerValue];

    v73 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupAssetsCountShared"];
    v10->_dayGroupAssetsCountShared = [v73 integerValue];

    v74 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupExtendedAssetsCountShared"];
    v10->_dayGroupExtendedAssetsCountShared = [v74 integerValue];

    v75 = [dictionaryCopy objectForKeyedSubscript:@"dayGroupSummaryAssetsCountShared"];
    v10->_dayGroupSummaryAssetsCountShared = [v75 integerValue];

    v76 = [dictionaryCopy objectForKeyedSubscript:@"visibilityStateShared"];
    v10->_visibilityStateShared = [v76 unsignedShortValue];

    v77 = [dictionaryCopy objectForKeyedSubscript:@"visibilityStateMixed"];
    v10->_visibilityStateMixed = [v77 unsignedShortValue];

    v78 = [dictionaryCopy objectForKeyedSubscript:@"photoAssetsSuggestedByPhotosCount"];
    v10->_photoAssetsSuggestedByPhotosCount = [v78 integerValue];

    v79 = [dictionaryCopy objectForKeyedSubscript:@"videoAssetsSuggestedByPhotosCount"];
    v10->_videoAssetsSuggestedByPhotosCount = [v79 integerValue];

    v80 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v81 = [dictionaryCopy objectForKeyedSubscript:@"titleShared"];
    v82 = [dictionaryCopy objectForKeyedSubscript:@"titleMixed"];
    if (_os_feature_enabled_impl() && PLPhotosHighlightTypeIsConsideredTrip())
    {
      v83 = *MEMORY[0x1E69BECD0];
      v84 = [v80 componentsSeparatedByString:*MEMORY[0x1E69BECD0]];
      v85 = [v81 componentsSeparatedByString:v83];
      v86 = [v82 componentsSeparatedByString:v83];
      if ([v84 count])
      {
        v87 = [v84 objectAtIndexedSubscript:0];
        localizedTitle = v10->super._localizedTitle;
        v10->super._localizedTitle = v87;

        if ([v84 count] == 2)
        {
          v89 = [v84 objectAtIndexedSubscript:1];
          shortDateDescriptionPrivate = v10->_shortDateDescriptionPrivate;
          v10->_shortDateDescriptionPrivate = v89;
        }
      }

      if ([v85 count])
      {
        v91 = [v85 objectAtIndexedSubscript:0];
        titleShared = v10->_titleShared;
        v10->_titleShared = v91;

        if ([v85 count] == 2)
        {
          v93 = [v85 objectAtIndexedSubscript:1];
          shortDateDescriptionShared = v10->_shortDateDescriptionShared;
          v10->_shortDateDescriptionShared = v93;
        }
      }

      if ([v86 count])
      {
        v95 = [v86 objectAtIndexedSubscript:0];
        titleMixed = v10->_titleMixed;
        v10->_titleMixed = v95;

        if ([v86 count] == 2)
        {
          v97 = [v86 objectAtIndexedSubscript:1];
          shortDateDescriptionMixed = v10->_shortDateDescriptionMixed;
          v10->_shortDateDescriptionMixed = v97;
        }
      }
    }

    else
    {
      objc_storeStrong(&v10->super._localizedTitle, v80);
      objc_storeStrong(&v10->_titleShared, v81);
      v99 = v82;
      v84 = v10->_titleMixed;
      v10->_titleMixed = v99;
    }
  }

  return v10;
}

+ (BOOL)locationOfInterestUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient locationOfInterestUpdateWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to update location of interests with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)invalidateHighlightSubtitlesAndRegenerateHighlightTitles
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to regenerate highlight titles with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)cleanupEmptyHighlights
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient cleanupEmptyHighlightsWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to clean up empty highlights with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)updateHighlightTitles
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient updateHighlightTitlesWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to update highlight titles with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)processUnprocessedMomentLocations
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient processUnprocessedMomentLocationsWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to process moments with unprocessed location with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)processRecentHighlights
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE688];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [v2 sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];

  debugClient = [v4 debugClient];
  v10 = 0;
  v6 = [debugClient processRecentHighlightsWithError:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Failed to process recent highlights with Error %@.", buf, 0xCu);
    }
  }

  return v6;
}

+ (id)fetchAllSharedLibrarySharingSuggestionHighlightsWithOptions:(id)options
{
  v21[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v4];

  array = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
  [array addObject:v7];

  v8 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0 || %K > 0", @"photoAssetsSuggestedByPhotosCount", @"videoAssetsSuggestedByPhotosCount"];
  v10 = MEMORY[0x1E696AB28];
  v21[0] = v8;
  v21[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setInternalPredicate:v12];

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v20[0] = v13;
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v20[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v5 setInternalSortDescriptors:v15];

  [v5 setSharingFilter:0];
  v19 = @"PHPhotosHighlightPropertySetSharingSuggestions";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v5 addFetchPropertySets:v16];

  v17 = [PHPhotosHighlight fetchHighlightsWithOptions:v5];

  return v17;
}

+ (id)fetchHighlightsInSharedLibrarySharingSuggestions:(id)suggestions
{
  v27[2] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if (!suggestionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotosHighlight.m" lineNumber:1208 description:{@"Invalid parameter not satisfying: %@", @"sharingSuggestions != nil"}];
  }

  firstObject = [suggestionsCopy firstObject];
  v24 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:0 object:firstObject];

  v7 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v24];
  v8 = [suggestionsCopy valueForKeyPath:@"objectID"];
  array = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentPhotosHighlight IN (%@)", v8];
  [array addObject:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
  [array addObject:v11];

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0 || %K > 0", @"photoAssetsSuggestedByPhotosCount", @"videoAssetsSuggestedByPhotosCount"];
  v14 = MEMORY[0x1E696AB28];
  v27[0] = v12;
  v27[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];
  [v7 setInternalPredicate:v16];

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v26[0] = v17;
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v7 setInternalSortDescriptors:v19];

  [v7 setSharingFilter:0];
  v25 = @"PHPhotosHighlightPropertySetSharingSuggestions";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v7 addFetchPropertySets:v20];

  v21 = [PHPhotosHighlight fetchHighlightsWithOptions:v7];

  return v21;
}

+ (id)fetchSharedLibrarySharingSuggestionsWithOptions:(id)options
{
  v24[5] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v22 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v4 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:?];

  v21 = v4;
  v5 = [v4 copy];
  [v5 setSharingFilter:0];
  array = [MEMORY[0x1E695DF70] array];
  internalPredicate = [v5 internalPredicate];

  if (internalPredicate)
  {
    internalPredicate2 = [v5 internalPredicate];
    [array addObject:internalPredicate2];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  [array addObject:v9];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0 || %K > 0", @"photoAssetsSuggestedByPhotosCount", @"videoAssetsSuggestedByPhotosCount"];
  [array addObject:v10];
  v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  [v5 setInternalPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v24[0] = v12;
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
  v24[1] = v13;
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:0];
  v24[2] = v14;
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"kind" ascending:1];
  v24[3] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
  v24[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  [v5 setInternalSortDescriptors:v17];

  v23 = @"PHPhotosHighlightPropertySetSharingSuggestions";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v5 addFetchPropertySets:v18];

  v19 = [PHPhotosHighlight fetchHighlightsWithOptions:v5];

  return v19;
}

+ (id)fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  v8 = photoLibrary;
  if (photoLibrary)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__11159;
    v21 = __Block_byref_object_dispose__11160;
    v22 = 0;
    photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PHPhotosHighlight_fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs_options___block_invoke;
    v13[3] = &unk_1E75AA3F8;
    v14 = dsCopy;
    v15 = v8;
    v16 = buf;
    [photoLibraryForCurrentQueueQoS performBlockAndWait:v13];
    v10 = *(v18 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_FAULT, "Can't fetch PhotosHighlight using moment uuids because no PHPhotoLibrary specified", buf, 2u);
    }

    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

void __80__PHPhotosHighlight_fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs_options___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE6B8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) photoLibraryForCurrentQueueQoS];
  v10 = 0;
  v5 = [v2 batchFetchPhotosHighlightUUIDsByMomentUUIDsWithMomentUUIDs:v3 library:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error batch fetching highlight uuid by moment uuid: %@", buf, 0xCu);
    }
  }
}

+ (id)_fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds photoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v7 = libraryCopy;
  if (libraryCopy)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__11159;
    v21 = __Block_byref_object_dispose__11160;
    v22 = 0;
    photoLibraryForCurrentQueueQoS = [libraryCopy photoLibraryForCurrentQueueQoS];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__PHPhotosHighlight__fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke;
    v13[3] = &unk_1E75AA3F8;
    v14 = dsCopy;
    v9 = photoLibraryForCurrentQueueQoS;
    v15 = v9;
    v16 = buf;
    [v9 performBlockAndWait:v13];
    v10 = *(v18 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_FAULT, "Can't fetch trip highlights using assets uuids because no PHPhotoLibrary specified", buf, 2u);
    }

    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

void __82__PHPhotosHighlight__fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [MEMORY[0x1E69BE6B8] batchFetchTripHighlightUUIDsByAssetUUIDsWithAssetUUIDs:v2 library:v3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = *(a1[6] + 8);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error batch fetching trip highlights by asset: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  photoLibrary = [options photoLibrary];
  v8 = [self _fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:dsCopy photoLibrary:photoLibrary];

  return v8;
}

+ (id)_fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds photoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v7 = libraryCopy;
  if (libraryCopy)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__11159;
    v20 = __Block_byref_object_dispose__11160;
    v21 = 0;
    photoLibraryForCurrentQueueQoS = [libraryCopy photoLibraryForCurrentQueueQoS];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__PHPhotosHighlight__fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke;
    v12[3] = &unk_1E75AA3F8;
    v13 = dsCopy;
    v14 = v7;
    v15 = buf;
    [photoLibraryForCurrentQueueQoS performBlockAndWait:v12];
    v9 = *(v17 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_FAULT, "Can't fetch PhotosHighlight using assets uuids because no PHPhotoLibrary specified", buf, 2u);
    }

    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

void __84__PHPhotosHighlight__fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE6B8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) photoLibraryForCurrentQueueQoS];
  v10 = 0;
  v5 = [v2 batchFetchPhotosHighlightUUIDsByAssetUUIDsWithAssetUUIDs:v3 library:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error batch fetching person groups by asset: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  photoLibrary = [options photoLibrary];
  v8 = [self _fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:dsCopy photoLibrary:photoLibrary];

  return v8;
}

+ (id)fetchPhotosHighlightUUIDByAssetUUIDForAssets:(id)assets options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        uuid = [v15 uuid];
        [array addObject:uuid];

        if (!photoLibrary)
        {
          photoLibrary = [v15 photoLibrary];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if (photoLibrary)
  {
    v17 = [self _fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:array photoLibrary:photoLibrary];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  return v17;
}

+ (id)fetchChildDayGroupHighlightsForHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PHPhotosHighlight_fetchChildDayGroupHighlightsForHighlight_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = highlightCopy;
  v6 = highlightCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __70__PHPhotosHighlight_fetchChildDayGroupHighlightsForHighlight_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForChildrenDayGroupHighlightsForPhotosHighlight:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchParentDayGroupHighlightForHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PHPhotosHighlight_fetchParentDayGroupHighlightForHighlight_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = highlightCopy;
  v6 = highlightCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __70__PHPhotosHighlight_fetchParentDayGroupHighlightForHighlight_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForParentDayGroupHighlightForPhotosHighlight:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchChildHighlightsForHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PHPhotosHighlight_fetchChildHighlightsForHighlight_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = highlightCopy;
  v6 = highlightCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __62__PHPhotosHighlight_fetchChildHighlightsForHighlight_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForChildrenHighlightsForPhotosHighlight:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchParentHighlightsForHighlights:(id)highlights options:(id)options
{
  highlightsCopy = highlights;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PHPhotosHighlight_fetchParentHighlightsForHighlights_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = highlightsCopy;
  v6 = highlightsCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __64__PHPhotosHighlight_fetchParentHighlightsForHighlights_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForParentHighlightsForPhotosHighlights:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchParentHighlightForHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PHPhotosHighlight_fetchParentHighlightForHighlight_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = highlightCopy;
  v6 = highlightCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __62__PHPhotosHighlight_fetchParentHighlightForHighlight_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForParentHighlightForPhotosHighlight:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)collageAssetsInverseRelationshipPredicateForDayHighlight:(id)highlight forHighlightFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  highlightCopy = highlight;
  v7 = highlightCopy;
  if (filterCopy <= 2)
  {
    v8 = off_1E75A4FC8[filterCopy];
    v9 = MEMORY[0x1E696AE18];
    objectID = [highlightCopy objectID];
    v4 = [v9 predicateWithFormat:@"%K = %@", v8, objectID];
  }

  return v4;
}

+ (id)keyAssetInverseRelationshipPredicateForHighlight:(id)highlight forHighlightFilter:(unsigned __int16)filter
{
  v4 = [self _choosePrivateOrSharedRelationshipForHighlight:highlight givenFilter:filter privateHandler:&__block_literal_global_285 sharedHandler:&__block_literal_global_303];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v4;
}

id __89__PHPhotosHighlight_keyAssetInverseRelationshipPredicateForHighlight_forHighlightFilter___block_invoke_301(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 kind];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"yearHighlightBeingKeyAssetShared";
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"dayGroupHighlightBeingKeyAssetShared";
      goto LABEL_13;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"highlightBeingKeyAssetShared";
      goto LABEL_13;
    }

    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"monthHighlightBeingKeyAssetShared";
LABEL_13:
      v9 = [v4 predicateWithFormat:@"%K = %@", v7, v5];

      goto LABEL_14;
    }
  }

  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v12 = [v2 kind];
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "keyAssetInverseRelationshipPredicateForHighlight (sharedHandler): Unhandled highlight kind: %ld", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithValue:0];
LABEL_14:

  return v9;
}

id __89__PHPhotosHighlight_keyAssetInverseRelationshipPredicateForHighlight_forHighlightFilter___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 kind];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"yearHighlightBeingKeyAssetPrivate";
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"dayGroupHighlightBeingKeyAssetPrivate";
      goto LABEL_13;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"highlightBeingKeyAssetPrivate";
      goto LABEL_13;
    }

    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = [v2 objectID];
      v6 = v5;
      v7 = @"monthHighlightBeingKeyAssetPrivate";
LABEL_13:
      v9 = [v4 predicateWithFormat:@"%K = %@", v7, v5];

      goto LABEL_14;
    }
  }

  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v12 = [v2 kind];
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "keyAssetInverseRelationshipPredicateForHighlight (privateHandler): Unhandled highlight kind: %ld", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithValue:0];
LABEL_14:

  return v9;
}

+ (id)dateRangeTitleGenerator
{
  pl_dispatch_once();
  v2 = dateRangeTitleGenerator_pl_once_object_17;

  return v2;
}

uint64_t __44__PHPhotosHighlight_dateRangeTitleGenerator__block_invoke()
{
  dateRangeTitleGenerator_pl_once_object_17 = objc_alloc_init(MEMORY[0x1E69BE3C0]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___PHPhotosHighlight;
  v7 = objc_msgSendSuper2(&v14, sel_fetchPredicateFromComparisonPredicate_options_, predicateCopy, options);
  if (!v7)
  {
    leftExpression = [predicateCopy leftExpression];
    rightExpression = [predicateCopy rightExpression];
    if ([leftExpression expressionType] == 3)
    {
      keyPath = [leftExpression keyPath];
    }

    else
    {
      keyPath = 0;
    }

    if ([keyPath isEqualToString:@"enriched"] && !objc_msgSend(rightExpression, "expressionType"))
    {
      constantValue = [rightExpression constantValue];
      if ([constantValue BOOLValue])
      {
        v13 = @"enrichmentState > %d";
      }

      else
      {
        v13 = @"enrichmentState == %d";
      }

      v7 = [MEMORY[0x1E696AE18] predicateWithFormat:v13, 0];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHPhotosHighlight_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_11207 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_11207, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_11208 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __57__PHPhotosHighlight_transformValueExpression_forKeyPath___block_invoke()
{
  v4[47] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"localizedTitle";
  v4[1] = @"title";
  v4[2] = @"subtitle";
  v4[3] = @"dateDescription";
  v4[4] = @"smartDescription";
  v4[5] = @"verboseSmartDescription";
  v4[6] = @"endDate";
  v4[7] = @"startDate";
  v4[8] = @"visibilityState";
  v4[9] = @"kind";
  v4[10] = @"type";
  v4[11] = @"category";
  v4[12] = @"startTimeZoneOffset";
  v4[13] = @"endTimeZoneOffset";
  v4[14] = @"promotionScore";
  v4[15] = @"mood";
  v4[16] = @"estimatedAssetCount";
  v4[17] = @"assetsCount";
  v4[18] = @"extendedCount";
  v4[19] = @"summaryCount";
  v4[20] = @"enrichmentState";
  v4[21] = @"keyAssetPrivate";
  v4[22] = @"dayGroupKeyAssetPrivate";
  v4[23] = @"monthKeyAssetPrivate";
  v4[24] = @"yearKeyAssetPrivate";
  v4[25] = @"parentPhotosHighlight";
  v4[26] = @"titleShared";
  v4[27] = @"titleMixed";
  v4[28] = @"subtitleShared";
  v4[29] = @"subtitleMixed";
  v4[30] = @"dateDescriptionShared";
  v4[31] = @"dateDescriptionMixed";
  v4[32] = @"smartDescriptionShared";
  v4[33] = @"smartDescriptionMixed";
  v4[34] = @"assetsCountShared";
  v4[35] = @"extendedCountShared";
  v4[36] = @"summaryCountShared";
  v4[37] = @"keyAssetShared";
  v4[38] = @"dayGroupKeyAssetShared";
  v4[39] = @"monthKeyAssetShared";
  v4[40] = @"yearKeyAssetShared";
  v4[41] = @"verboseSmartDescriptionShared";
  v4[42] = @"verboseSmartDescriptionMixed";
  v4[43] = @"mixedSharingCompositionKeyAssetRelationship";
  v4[44] = @"sharingComposition";
  v4[45] = @"photoAssetsSuggestedByPhotosCount";
  v4[46] = @"videoAssetsSuggestedByPhotosCount";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:47];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_11208;
  transformValueExpression_forKeyPath___passThroughSet_11208 = v2;
}

void __33__PHPhotosHighlight_entityKeyMap__block_invoke()
{
  v109[52] = *MEMORY[0x1E69E9840];
  v44 = [PHEntityKeyMap alloc];
  v108[0] = @"objectID";
  v107 = @"objectID";
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v109[0] = v55;
  v108[1] = @"uuid";
  v106 = @"uuid";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v109[1] = v54;
  v108[2] = @"title";
  v105[0] = @"localizedTitle";
  v105[1] = @"title";
  v105[2] = @"dateDescription";
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:3];
  v109[2] = v53;
  v108[3] = @"subtitle";
  v104[0] = @"subtitle";
  v104[1] = @"smartDescription";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
  v109[3] = v52;
  v108[4] = @"verboseSmartDescription";
  v103 = @"verboseSmartDescription";
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v109[4] = v51;
  v108[5] = @"endDate";
  v102 = @"endDate";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v109[5] = v50;
  v108[6] = @"startDate";
  v101 = @"startDate";
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
  v109[6] = v49;
  v108[7] = @"visibilityState";
  v100 = @"visibilityState";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v109[7] = v48;
  v108[8] = @"kind";
  v99 = @"kind";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
  v109[8] = v47;
  v108[9] = @"type";
  v98 = @"type";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  v109[9] = v46;
  v108[10] = @"category";
  v97 = @"category";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v109[10] = v45;
  v108[11] = @"startTimeZoneOffset";
  v96 = @"startTimeZoneOffset";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
  v109[11] = v43;
  v108[12] = @"endTimeZoneOffset";
  v95 = @"endTimeZoneOffset";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v109[12] = v42;
  v108[13] = @"promotionScore";
  v94 = @"promotionScore";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  v109[13] = v41;
  v108[14] = @"mood";
  v93 = @"mood";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  v109[14] = v40;
  v108[15] = @"assetsCount";
  v92[0] = @"estimatedAssetCount";
  v92[1] = @"assetsCount";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v109[15] = v39;
  v108[16] = @"dayGroupAssetsCount";
  v91 = @"dayGroupAssetsCount";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v109[16] = v38;
  v108[17] = @"dayGroupExtendedAssetsCount";
  v90 = @"dayGroupExtendedAssetsCount";
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v109[17] = v37;
  v108[18] = @"dayGroupSummaryAssetsCount";
  v89 = @"dayGroupSummaryAssetsCount";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v109[18] = v36;
  v108[19] = @"extendedCount";
  v88 = @"extendedCount";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v109[19] = v35;
  v108[20] = @"enrichmentState";
  v87 = @"enrichmentState";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v109[20] = v34;
  v108[21] = @"lastEnrichmentDate";
  v86 = @"lastEnrichmentDate";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v109[21] = v33;
  v108[22] = @"highlightVersion";
  v85 = @"highlightVersion";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v109[22] = v32;
  v108[23] = @"enrichmentVersion";
  v84 = @"enrichmentVersion";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v109[23] = v31;
  v108[24] = @"keyAssetPrivate";
  v83 = @"keyAssetPrivate";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  v109[24] = v30;
  v108[25] = @"dayGroupKeyAssetPrivate";
  v82 = @"dayGroupKeyAssetPrivate";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v109[25] = v29;
  v108[26] = @"monthKeyAssetPrivate";
  v81 = @"monthKeyAssetPrivate";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v109[26] = v28;
  v108[27] = @"yearKeyAssetPrivate";
  v80 = @"yearKeyAssetPrivate";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v109[27] = v27;
  v108[28] = @"parentPhotosHighlight";
  v79 = @"parentPhotosHighlight";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v109[28] = v26;
  v108[29] = @"verboseSmartDescriptionShared";
  v78 = @"verboseSmartDescriptionShared";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v109[29] = v25;
  v108[30] = @"verboseSmartDescriptionMixed";
  v77 = @"verboseSmartDescriptionMixed";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v109[30] = v24;
  v108[31] = @"subtitleShared";
  v76[0] = @"subtitleShared";
  v76[1] = @"smartDescriptionShared";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v109[31] = v23;
  v108[32] = @"subtitleMixed";
  v75[0] = @"subtitleMixed";
  v75[1] = @"smartDescriptionMixed";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v109[32] = v22;
  v108[33] = @"titleShared";
  v74[0] = @"titleShared";
  v74[1] = @"dateDescriptionShared";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v109[33] = v21;
  v108[34] = @"titleMixed";
  v73[0] = @"titleMixed";
  v73[1] = @"dateDescriptionMixed";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  v109[34] = v20;
  v108[35] = @"dayGroupAssetsCountShared";
  v72 = @"dayGroupAssetsCountShared";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v109[35] = v19;
  v108[36] = @"dayGroupExtendedAssetsCountShared";
  v71 = @"dayGroupExtendedAssetsCountShared";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v109[36] = v18;
  v108[37] = @"dayGroupSummaryAssetsCountShared";
  v70 = @"dayGroupSummaryAssetsCountShared";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v109[37] = v17;
  v108[38] = @"extendedCountShared";
  v69 = @"extendedCountShared";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v109[38] = v16;
  v108[39] = @"summaryCount";
  v68 = @"summaryCount";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v109[39] = v15;
  v108[40] = @"summaryCountShared";
  v67 = @"summaryCountShared";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v109[40] = v14;
  v108[41] = @"keyAssetShared";
  v66 = @"keyAssetShared";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v109[41] = v13;
  v108[42] = @"dayGroupKeyAssetShared";
  v65 = @"dayGroupKeyAssetShared";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v109[42] = v12;
  v108[43] = @"monthKeyAssetShared";
  v64 = @"monthKeyAssetShared";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v109[43] = v0;
  v108[44] = @"yearKeyAssetShared";
  v63 = @"yearKeyAssetShared";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v109[44] = v1;
  v108[45] = @"mixedSharingCompositionKeyAssetRelationship";
  v62 = @"mixedSharingCompositionKeyAssetRelationship";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v109[45] = v2;
  v108[46] = @"assetsCountShared";
  v61 = @"assetsCountShared";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v109[46] = v3;
  v108[47] = @"sharingComposition";
  v60 = @"sharingComposition";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v109[47] = v4;
  v108[48] = @"visibilityStateShared";
  v59 = @"visibilityStateShared";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v109[48] = v5;
  v108[49] = @"visibilityStateMixed";
  v58 = @"visibilityStateMixed";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v109[49] = v6;
  v108[50] = @"photoAssetsSuggestedByPhotosCount";
  v57 = @"photoAssetsSuggestedByPhotosCount";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v109[50] = v7;
  v108[51] = @"videoAssetsSuggestedByPhotosCount";
  v56 = @"videoAssetsSuggestedByPhotosCount";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v109[51] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:52];
  v10 = [(PHEntityKeyMap *)v44 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_11235;
  entityKeyMap_pl_once_object_15_11235 = v10;
}

+ (id)fetchPredicateForSharingFilter:(unsigned __int16)filter
{
  if (!filter)
  {
    v5 = 1;
LABEL_5:
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"sharingComposition", v5, v3];

    return v6;
  }

  if (filter == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PHPhotosHighlight_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (propertiesToFetchWithHint__onceToken_11249 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_11249, block);
  }

  v3 = propertiesToFetchWithHint__array_11250;

  return v3;
}

void __47__PHPhotosHighlight_propertiesToFetchWithHint___block_invoke()
{
  v4[53] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"title";
  v4[3] = @"subtitle";
  v4[4] = @"verboseSmartDescription";
  v4[5] = @"startDate";
  v4[6] = @"endDate";
  v4[7] = @"visibilityState";
  v4[8] = @"kind";
  v4[9] = @"type";
  v4[10] = @"category";
  v4[11] = @"startTimeZoneOffset";
  v4[12] = @"endTimeZoneOffset";
  v4[13] = @"promotionScore";
  v4[14] = @"enrichmentState";
  v4[15] = @"lastEnrichmentDate";
  v4[16] = @"mood";
  v4[17] = @"assetsCount";
  v4[18] = @"assetsCountShared";
  v4[19] = @"dayGroupAssetsCount";
  v4[20] = @"dayGroupExtendedAssetsCount";
  v4[21] = @"dayGroupSummaryAssetsCount";
  v4[22] = @"extendedCount";
  v4[23] = @"summaryCount";
  v4[24] = @"highlightVersion";
  v4[25] = @"enrichmentVersion";
  v4[26] = @"keyAssetPrivate";
  v4[27] = @"dayGroupKeyAssetPrivate";
  v4[28] = @"monthKeyAssetPrivate";
  v4[29] = @"yearKeyAssetPrivate";
  v4[30] = @"parentPhotosHighlight";
  v4[31] = @"assetsCountShared";
  v4[32] = @"dayGroupAssetsCountShared";
  v4[33] = @"dayGroupExtendedAssetsCountShared";
  v4[34] = @"dayGroupSummaryAssetsCountShared";
  v4[35] = @"extendedCountShared";
  v4[36] = @"summaryCountShared";
  v4[37] = @"keyAssetShared";
  v4[38] = @"dayGroupKeyAssetShared";
  v4[39] = @"monthKeyAssetShared";
  v4[40] = @"yearKeyAssetShared";
  v4[41] = @"titleShared";
  v4[42] = @"titleMixed";
  v4[43] = @"subtitleShared";
  v4[44] = @"subtitleMixed";
  v4[45] = @"verboseSmartDescriptionShared";
  v4[46] = @"verboseSmartDescriptionMixed";
  v4[47] = @"mixedSharingCompositionKeyAssetRelationship";
  v4[48] = @"sharingComposition";
  v4[49] = @"visibilityStateShared";
  v4[50] = @"visibilityStateMixed";
  v4[51] = @"photoAssetsSuggestedByPhotosCount";
  v4[52] = @"videoAssetsSuggestedByPhotosCount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:53];
  v3 = propertiesToFetchWithHint__array_11250;
  propertiesToFetchWithHint__array_11250 = v2;
}

+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints
{
  hintsCopy = hints;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHPhotosHighlightPropertySetIdentifier" length];
  if ((hintsCopy & 1) != 0 && v5)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetIdentifier"];
  }

  v6 = [@"PHPhotosHighlightPropertySetCore" length];
  if ((hintsCopy & 2) != 0 && v6)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetCore"];
  }

  v7 = [@"PHPhotosHighlightPropertySetOnlyPrivate" length];
  if ((hintsCopy & 4) != 0 && v7)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetOnlyPrivate"];
  }

  v8 = [@"PHPhotosHighlightPropertySetOnlyShared" length];
  if ((hintsCopy & 8) != 0 && v8)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetOnlyShared"];
  }

  v9 = [@"PHPhotosHighlightPropertySetPrivateOrShared" length];
  if ((hintsCopy & 0x10) != 0 && v9)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetPrivateOrShared"];
  }

  v10 = [@"PHPhotosHighlightPropertySetSharingSuggestions" length];
  if ((hintsCopy & 0x20) != 0 && v10)
  {
    [v4 addObject:@"PHPhotosHighlightPropertySetSharingSuggestions"];
  }

  v11 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v11;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets
{
  setsCopy = sets;
  if ([@"PHPhotosHighlightPropertySetIdentifier" length])
  {
    v4 = [setsCopy containsObject:@"PHPhotosHighlightPropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHPhotosHighlightPropertySetCore" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPhotosHighlightPropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHPhotosHighlightPropertySetOnlyPrivate" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPhotosHighlightPropertySetOnlyPrivate"))
  {
    v4 |= 4uLL;
  }

  if ([@"PHPhotosHighlightPropertySetOnlyShared" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPhotosHighlightPropertySetOnlyShared"))
  {
    v4 |= 8uLL;
  }

  if ([@"PHPhotosHighlightPropertySetPrivateOrShared" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPhotosHighlightPropertySetPrivateOrShared"))
  {
    v4 |= 0x10uLL;
  }

  if ([@"PHPhotosHighlightPropertySetSharingSuggestions" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPhotosHighlightPropertySetSharingSuggestions"))
  {
    v4 |= 0x20uLL;
  }

  if (![setsCopy containsObject:@"PHPhotosHighlightPropertySetIdentifier"])
  {
    v4 |= 2uLL;
  }

  return v4;
}

+ (id)propertySetAccessorsByPropertySet
{
  if (propertySetAccessorsByPropertySet_onceToken != -1)
  {
    dispatch_once(&propertySetAccessorsByPropertySet_onceToken, &__block_literal_global_51);
  }

  v3 = propertySetAccessorsByPropertySet_accessorByPropertySetName;

  return v3;
}

void __54__PHPhotosHighlight_propertySetAccessorsByPropertySet__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHPhotosHighlightPropertySetIdentifier";
  v2[1] = @"PHPhotosHighlightPropertySetCore";
  v3[0] = @"self";
  v3[1] = @"self";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = propertySetAccessorsByPropertySet_accessorByPropertySetName;
  propertySetAccessorsByPropertySet_accessorByPropertySetName = v0;
}

+ (Class)propertySetClassForPropertySet:(id)set
{
  v3 = propertySetClassForPropertySet__onceToken;
  setCopy = set;
  if (v3 != -1)
  {
    dispatch_once(&propertySetClassForPropertySet__onceToken, &__block_literal_global_48);
  }

  v5 = [propertySetClassForPropertySet__propertySetClassByPropertySetName objectForKey:setCopy];

  return v5;
}

void __52__PHPhotosHighlight_propertySetClassForPropertySet___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHPhotosHighlightPropertySetIdentifier";
  v2[1] = @"PHPhotosHighlightPropertySetCore";
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = propertySetClassForPropertySet__propertySetClassByPropertySetName;
  propertySetClassForPropertySet__propertySetClassByPropertySetName = v0;
}

id __58__PHPhotosHighlight__keyAssetObjectIDForHighlight_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = [v3 yearKeyAssetShared];
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_11;
      }

      v5 = [v3 dayGroupKeyAssetShared];
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = [v3 monthKeyAssetShared];
  }

  else
  {
    v5 = [v3 keyAssetShared];
  }

  v2 = v5;
LABEL_11:

  return v2;
}

id __58__PHPhotosHighlight__keyAssetObjectIDForHighlight_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = [v3 yearKeyAssetPrivate];
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_11;
      }

      v5 = [v3 dayGroupKeyAssetPrivate];
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = [v3 monthKeyAssetPrivate];
  }

  else
  {
    v5 = [v3 keyAssetPrivate];
  }

  v2 = v5;
LABEL_11:

  return v2;
}

+ (id)_choosePrivateOrSharedRelationshipForHighlight:(id)highlight givenFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler
{
  filterCopy = filter;
  highlightCopy = highlight;
  handlerCopy = handler;
  sharedHandlerCopy = sharedHandler;
  sharingComposition = [highlightCopy sharingComposition];
  if (sharingComposition == 2)
  {
    v13 = handlerCopy;
    if (filterCopy)
    {
      if (filterCopy == 2)
      {
        mixedSharingCompositionKeyAssetRelationship = [highlightCopy mixedSharingCompositionKeyAssetRelationship];
        v13 = handlerCopy;
        if (mixedSharingCompositionKeyAssetRelationship >= 2)
        {
          if (mixedSharingCompositionKeyAssetRelationship != 2)
          {
            goto LABEL_11;
          }

          v13 = sharedHandlerCopy;
        }
      }

      else
      {
        v13 = sharedHandlerCopy;
        if (filterCopy != 1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    if (sharingComposition != 1)
    {
      if (!sharingComposition)
      {
        v13 = handlerCopy;
        if ((filterCopy & 0xFFFFFFFD) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_11:
      v14 = 0;
      goto LABEL_16;
    }

    v13 = sharedHandlerCopy;
    if ((filterCopy - 1) >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = v13[2](v13, highlightCopy);
LABEL_16:

  return v14;
}

@end