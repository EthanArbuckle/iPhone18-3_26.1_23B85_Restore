@interface PHSearchSuggestion
+ (id)indexCategoriesWithApproximateCounts;
- (BOOL)hasApproximateCount;
- (BOOL)isEqual:(id)equal;
- (NSArray)personUUIDs;
- (PHSearchSuggestion)initWithCoder:(id)coder;
- (PHSearchSuggestion)initWithType:(unint64_t)type categoriesType:(unint64_t)categoriesType text:(id)text matchRangeOfSearchText:(_NSRange)searchText count:(unint64_t)count suggestionComponents:(id)components nextTokenSuggestions:(id)suggestions;
- (_NSRange)matchRangeOfSearchText;
- (float)score;
- (id)description;
- (id)initForDateFilterWithStartDate:(id)date endDate:(id)endDate;
- (id)initForDateFilterWithStartDateComponents:(id)components endDateComponents:(id)dateComponents;
- (id)initForGenericLocationFilterWithText:(id)text genericLocationTuples:(id)tuples allowedIndexCategories:(id)categories;
- (id)initForLocationFilterWithAssetUUIDs:(id)ds locationText:(id)text;
- (id)initForMeaningFilterWithMeaningfulEvent:(id)event;
- (id)initForPartOfDayFilterWithPartOfDayLocalizedText:(id)text;
- (id)initForPartOfWeekFilterWithPartOfWeekLocalizedText:(id)text;
- (id)initForPersonFilterWithPersonUUIDs:(id)ds;
- (id)initForPersonalEventFilterWithMomentUUIDs:(id)ds;
- (id)initForSeasonFilterWithSeasonLocalizedText:(id)text;
- (id)initForTripFilterWithLocationName:(id)name;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchSuggestion

- (_NSRange)matchRangeOfSearchText
{
  length = self->_matchRangeOfSearchText.length;
  location = self->_matchRangeOfSearchText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)redactedJSONDictionary
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v26[0] = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion type](self, "type")}];
  v27[0] = v4;
  v26[1] = @"categories_type";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion categoriesType](self, "categoriesType")}];
  v27[1] = v5;
  v26[2] = @"text";
  text = [(PHSearchSuggestion *)self text];
  v27[2] = text;
  v26[3] = @"match_range";
  location = self->_matchRangeOfSearchText.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &stru_1F0FC60C8;
  }

  else
  {
    v29.location = [(PHSearchSuggestion *)self matchRangeOfSearchText];
    v8 = NSStringFromRange(v29);
  }

  v27[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v10 = [v3 initWithDictionary:v9];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  if (self->_type - 1 <= 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion count](self, "count")}];
    [v10 setObject:v11 forKeyedSubscript:@"count"];

    if ([(PHSearchSuggestion *)self hasApproximateCount])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v10 setObject:v12 forKeyedSubscript:@"has_approximate_count"];
  }

  categoriesType = self->_categoriesType;
  if (categoriesType == 9 || categoriesType == 7)
  {
    personUUIDs = [(PHSearchSuggestion *)self personUUIDs];
    [v10 setObject:personUUIDs forKeyedSubscript:@"personUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 1)
  {
    locationAssetUUIDs = [(PHSearchSuggestion *)self locationAssetUUIDs];
    [v10 setObject:locationAssetUUIDs forKeyedSubscript:@"location_assetUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 4)
  {
    startDate = [(PHSearchSuggestion *)self startDate];
    if (startDate && (v17 = startDate, [(PHSearchSuggestion *)self endDate], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      startDate2 = [(PHSearchSuggestion *)self startDate];
      [v10 setObject:startDate2 forKeyedSubscript:@"start_date"];

      endDate = [(PHSearchSuggestion *)self endDate];
      v21 = @"end_date";
    }

    else
    {
      startDateComponents = [(PHSearchSuggestion *)self startDateComponents];
      [v10 setObject:startDateComponents forKeyedSubscript:@"start_date_components"];

      endDateComponents = [(PHSearchSuggestion *)self endDateComponents];

      if (!endDateComponents)
      {
        goto LABEL_23;
      }

      endDate = [(PHSearchSuggestion *)self endDateComponents];
      v21 = @"end_date_components";
    }

    [v10 setObject:endDate forKeyedSubscript:v21];
  }

LABEL_23:
  v24 = [v10 copy];

  return v24;
}

- (id)jsonDictionary
{
  v44[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v43[0] = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion type](self, "type")}];
  v44[0] = v4;
  v43[1] = @"categories_type";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion categoriesType](self, "categoriesType")}];
  v44[1] = v5;
  v43[2] = @"text";
  text = [(PHSearchSuggestion *)self text];
  v44[2] = text;
  v43[3] = @"match_range";
  location = self->_matchRangeOfSearchText.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &stru_1F0FC60C8;
  }

  else
  {
    v46.location = [(PHSearchSuggestion *)self matchRangeOfSearchText];
    v8 = NSStringFromRange(v46);
  }

  v44[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v10 = [v3 initWithDictionary:v9];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  if (self->_type - 1 <= 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestion count](self, "count")}];
    [v10 setObject:v11 forKeyedSubscript:@"count"];

    if ([(PHSearchSuggestion *)self hasApproximateCount])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v10 setObject:v12 forKeyedSubscript:@"has_approximate_count"];
  }

  categoriesType = self->_categoriesType;
  if (categoriesType == 9 || categoriesType == 7)
  {
    personUUIDs = [(PHSearchSuggestion *)self personUUIDs];
    [v10 setObject:personUUIDs forKeyedSubscript:@"personUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 1)
  {
    locationAssetUUIDs = [(PHSearchSuggestion *)self locationAssetUUIDs];
    [v10 setObject:locationAssetUUIDs forKeyedSubscript:@"location_assetUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 4)
  {
    startDate = [(PHSearchSuggestion *)self startDate];
    if (startDate && (v17 = startDate, [(PHSearchSuggestion *)self endDate], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      startDate2 = [(PHSearchSuggestion *)self startDate];
      [v10 setObject:startDate2 forKeyedSubscript:@"start_date"];

      endDate = [(PHSearchSuggestion *)self endDate];
      v21 = @"end_date";
    }

    else
    {
      startDateComponents = [(PHSearchSuggestion *)self startDateComponents];
      [v10 setObject:startDateComponents forKeyedSubscript:@"start_date_components"];

      endDateComponents = [(PHSearchSuggestion *)self endDateComponents];

      if (!endDateComponents)
      {
        goto LABEL_23;
      }

      endDate = [(PHSearchSuggestion *)self endDateComponents];
      v21 = @"end_date_components";
    }

    [v10 setObject:endDate forKeyedSubscript:v21];
  }

LABEL_23:
  nextTokenSuggestions = [(PHSearchSuggestion *)self nextTokenSuggestions];
  v25 = [nextTokenSuggestions count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    nextTokenSuggestions2 = [(PHSearchSuggestion *)self nextTokenSuggestions];
    v28 = [v26 initWithCapacity:{objc_msgSend(nextTokenSuggestions2, "count")}];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    nextTokenSuggestions3 = [(PHSearchSuggestion *)self nextTokenSuggestions];
    v30 = [nextTokenSuggestions3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v39;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(nextTokenSuggestions3);
          }

          jsonDictionary = [*(*(&v38 + 1) + 8 * i) jsonDictionary];
          [v28 addObject:jsonDictionary];
        }

        v31 = [nextTokenSuggestions3 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v31);
    }

    [v10 setObject:v28 forKeyedSubscript:@"next_tokens"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [v10 setObject:v35 forKeyedSubscript:@"version"];

  v36 = [v10 copy];

  return v36;
}

- (id)description
{
  hasApproximateCount = [(PHSearchSuggestion *)self hasApproximateCount];
  v4 = @"NO";
  if (hasApproximateCount)
  {
    v4 = @"YES";
  }

  v19 = MEMORY[0x1E696AEC0];
  v5 = v4;
  v18 = objc_opt_class();
  type = self->_type;
  if (type - 1 > 3)
  {
    v7 = @"PHSearchSuggestionTypeUndefined";
  }

  else
  {
    v7 = off_1E75A38F0[type - 1];
  }

  v8 = v7;
  categoriesType = self->_categoriesType;
  if (categoriesType > 0x2C)
  {
    v10 = @"undefined";
  }

  else
  {
    v10 = off_1E75A60F8[categoriesType];
  }

  v11 = v10;
  text = self->_text;
  location = self->_matchRangeOfSearchText.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @"NSNotFound";
  }

  else
  {
    v14 = NSStringFromRange(self->_matchRangeOfSearchText);
  }

  personUUIDs = [(PHSearchSuggestion *)self personUUIDs];
  v16 = [v19 stringWithFormat:@"%@: %p, type: %ld (%@), categories type: %ld (%@) text: '%@', match range: %@, personUUIDs: %@, count: %tu, hasApproximateCount: %@, start date: %@, end date: %@, start date components: %@, end date components: %@, location asset UUIDs: %@, momentUUIDs: %@, version: %tu", v18, self, type, v8, categoriesType, v11, text, v14, personUUIDs, self->_count, v5, self->_startDate, self->_endDate, self->_startDateComponents, self->_endDateComponents, self->_locationAssetUUIDs, self->_momentUUIDs, self->_version];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v7 forKey:@"PHSearchSuggestionPropertyType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_categoriesType];
  [coderCopy encodeObject:v8 forKey:@"PHSearchSuggestionPropertyCategoriesType"];

  [coderCopy encodeObject:self->_text forKey:@"PHSearchSuggestionPropertyText"];
  v9 = [MEMORY[0x1E696B098] valueWithRange:{self->_matchRangeOfSearchText.location, self->_matchRangeOfSearchText.length}];
  [coderCopy encodeObject:v9 forKey:@"PHSearchSuggestionPropertyMatchRangeOfSearchText"];

  [coderCopy encodeObject:self->_personUUIDs forKey:@"PHSearchSuggestionPropertyPersonUUIDs"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  [coderCopy encodeObject:v10 forKey:@"PHSearchSuggestionPropertyCount"];

  [coderCopy encodeObject:self->_startDate forKey:@"PHSearchSuggestionPropertyStartDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"PHSearchSuggestionPropertyEndDate"];
  [coderCopy encodeObject:self->_startDateComponents forKey:@"PHSearchSuggestionPropertyStartDateComponents"];
  [coderCopy encodeObject:self->_endDateComponents forKey:@"PHSearchSuggestionPropertyEndDateComponents"];
  allObjects = [(NSSet *)self->_locationAssetUUIDs allObjects];
  [coderCopy encodeObject:allObjects forKey:@"PHSearchSuggestionPropertyLocationAssetUUIDs"];

  [coderCopy encodeObject:self->_suggestionComponents forKey:@"PHSearchSuggestionPropertySuggestionComponents"];
  [coderCopy encodeObject:self->_nextTokenSuggestions forKey:@"PHSearchSuggestionPropertyNextTokenSuggestions"];
  [coderCopy encodeObject:self->_momentUUIDs forKey:@"PHSearchSuggestionPropertyHighlightUUIDs"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v12 forKey:@"PHSearchSuggestionPropertyVersion"];
}

- (PHSearchSuggestion)initWithCoder:(id)coder
{
  v60 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyVersion"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyType"];
    unsignedIntegerValue2 = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyCategoriesType"];
    unsignedIntegerValue3 = [v10 unsignedIntegerValue];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyText"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyMatchRangeOfSearchText"];
    rangeValue = [v11 rangeValue];
    v44 = v12;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v15 forKey:@"PHSearchSuggestionPropertyPersonUUIDs"];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyCount"];
    unsignedIntegerValue4 = [v16 unsignedIntegerValue];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyStartDate"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyEndDate"];
    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyStartDateComponents"];
    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyEndDateComponents"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v20 forKey:@"PHSearchSuggestionPropertyLocationAssetUUIDs"];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v23 forKey:@"PHSearchSuggestionPropertySuggestionComponents"];

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"PHSearchSuggestionPropertyNextTokenSuggestions"];

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = unsignedIntegerValue3;
    v31 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"PHSearchSuggestionPropertyHighlightUUIDs"];

    v33 = unsignedIntegerValue4;
    v34 = v44;
    v35 = rangeValue;
    if (unsignedIntegerValue2 == 3)
    {
      if (![objc_opt_class() _suggestionsCategoryTypeIsSupportedForDisambiguation:unsignedIntegerValue3])
      {
        selfCopy6 = 0;
LABEL_23:
        v38 = v50;
        v37 = v51;
        goto LABEL_24;
      }

      if (unsignedIntegerValue3 > 6)
      {
        if (unsignedIntegerValue3 == 44)
        {
          v41 = [(PHSearchSuggestion *)self initForPersonalEventFilterWithMomentUUIDs:v32];
LABEL_22:
          self = v41;
          selfCopy6 = self;
          goto LABEL_23;
        }

        v35 = rangeValue;
        v34 = v44;
        v33 = unsignedIntegerValue4;
        if (unsignedIntegerValue3 == 7)
        {
          v38 = v50;
          self = [(PHSearchSuggestion *)self initForPersonFilterWithPersonUUIDs:v50];
          selfCopy6 = self;
          v37 = v51;
LABEL_24:
          v36 = v53;
          goto LABEL_25;
        }
      }

      else
      {
        if (unsignedIntegerValue3 == 1)
        {
          v39 = v48;
          if ([v48 count])
          {
            v40 = [MEMORY[0x1E695DFD8] setWithArray:v48];
            self = [(PHSearchSuggestion *)self initForLocationFilterWithAssetUUIDs:v40 locationText:0];

            selfCopy6 = self;
            v37 = v51;
          }

          else
          {
            v37 = v51;
            self = [(PHSearchSuggestion *)self initForLocationFilterWithAssetUUIDs:0 locationText:v51];
            selfCopy6 = self;
          }

          v38 = v50;
          v36 = v53;
          goto LABEL_26;
        }

        v35 = rangeValue;
        v34 = v44;
        v33 = unsignedIntegerValue4;
        if (unsignedIntegerValue3 == 4)
        {
          v36 = v53;
          if (v53 && v55)
          {
            self = [(PHSearchSuggestion *)self initForDateFilterWithStartDate:v53 endDate:v55];
            selfCopy6 = self;
            v38 = v50;
            v37 = v51;
LABEL_25:
            v39 = v48;
LABEL_26:
            v42 = v45;
LABEL_28:

            goto LABEL_29;
          }

          v30 = 4;
          v35 = rangeValue;
          v34 = v44;
          v33 = unsignedIntegerValue4;
          if (v54)
          {
            v41 = [(PHSearchSuggestion *)self initForDateFilterWithStartDateComponents:v54 endDateComponents:v52];
            goto LABEL_22;
          }
        }
      }
    }

    v42 = v45;
    v37 = v51;
    self = [(PHSearchSuggestion *)self initWithType:unsignedIntegerValue2 categoriesType:v30 text:v51 matchRangeOfSearchText:v35 count:v34 suggestionComponents:v33 nextTokenSuggestions:v45, v27];
    selfCopy6 = self;
    v38 = v50;
    v36 = v53;
    v39 = v48;
    goto LABEL_28;
  }

  v7 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v57 = unsignedIntegerValue;
    v58 = 1024;
    v59 = 0;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Version of encoded PHSearchSuggestion: %tu does not match the current search suggestion SPI version: %d, cannot instantiate suggestion", buf, 0x12u);
  }

  selfCopy6 = 0;
LABEL_29:

  return selfCopy6;
}

- (unint64_t)hash
{
  type = [(PHSearchSuggestion *)self type];
  text = [(PHSearchSuggestion *)self text];
  localizedLowercaseString = [text localizedLowercaseString];
  v4 = [localizedLowercaseString hash];
  personUUIDs = [(PHSearchSuggestion *)self personUUIDs];
  v5 = v4 ^ type ^ [personUUIDs hash];
  matchRangeOfSearchText = [(PHSearchSuggestion *)self matchRangeOfSearchText];
  startDate = [(PHSearchSuggestion *)self startDate];
  v7 = matchRangeOfSearchText ^ [startDate hash];
  endDate = [(PHSearchSuggestion *)self endDate];
  v8 = v5 ^ v7 ^ [endDate hash];
  startDateComponents = [(PHSearchSuggestion *)self startDateComponents];
  date = [startDateComponents date];
  v11 = [date hash];
  endDateComponents = [(PHSearchSuggestion *)self endDateComponents];
  date2 = [endDateComponents date];
  v14 = v11 ^ [date2 hash];
  locationAssetUUIDs = [(PHSearchSuggestion *)self locationAssetUUIDs];
  v16 = v8 ^ v14 ^ [locationAssetUUIDs hash];
  v17 = [(PHSearchSuggestion *)self count];
  v18 = v17 ^ [(PHSearchSuggestion *)self hasApproximateCount];
  v19 = v18 ^ [(PHSearchSuggestion *)self categoriesType];
  suggestionComponents = [(PHSearchSuggestion *)self suggestionComponents];
  v27 = v16 ^ v19 ^ [suggestionComponents hash];
  momentUUIDs = [(PHSearchSuggestion *)self momentUUIDs];
  v22 = [momentUUIDs hash];
  nextTokenSuggestions = [(PHSearchSuggestion *)self nextTokenSuggestions];
  v24 = v22 ^ [nextTokenSuggestions hash];
  v25 = v24 ^ [(PHSearchSuggestion *)self version];

  return v27 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(PHSearchSuggestion *)self type];
      if (type != [(PHSearchSuggestion *)v5 type])
      {
        goto LABEL_5;
      }

      text = [(PHSearchSuggestion *)self text];
      text2 = [(PHSearchSuggestion *)v5 text];
      v9 = [text localizedCaseInsensitiveCompare:text2];

      if (v9)
      {
        goto LABEL_5;
      }

      personUUIDs = [(PHSearchSuggestion *)self personUUIDs];
      if (personUUIDs && ([(PHSearchSuggestion *)v5 personUUIDs], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v46 = v45;
        v47 = MEMORY[0x1E695DFD8];
        personUUIDs2 = [(PHSearchSuggestion *)self personUUIDs];
        v49 = [v47 setWithArray:personUUIDs2];
        v50 = MEMORY[0x1E695DFD8];
        personUUIDs3 = [(PHSearchSuggestion *)v5 personUUIDs];
        v52 = [v50 setWithArray:personUUIDs3];
        v53 = [v49 isEqualToSet:v52];

        if ((v53 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        personUUIDs4 = [(PHSearchSuggestion *)self personUUIDs];
        personUUIDs5 = [(PHSearchSuggestion *)v5 personUUIDs];

        if (personUUIDs)
        {
        }

        if (personUUIDs4 != personUUIDs5)
        {
          goto LABEL_5;
        }
      }

      v58 = [(PHSearchSuggestion *)self count];
      if (v58 == [(PHSearchSuggestion *)v5 count])
      {
        hasApproximateCount = [(PHSearchSuggestion *)self hasApproximateCount];
        if (hasApproximateCount == [(PHSearchSuggestion *)v5 hasApproximateCount])
        {
          startDate = [(PHSearchSuggestion *)self startDate];
          if (!startDate || ([(PHSearchSuggestion *)v5 startDate], (v61 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            startDate2 = [(PHSearchSuggestion *)self startDate];
            startDate3 = [(PHSearchSuggestion *)v5 startDate];

            if (startDate)
            {
            }

            if (startDate2 != startDate3)
            {
              goto LABEL_5;
            }

LABEL_77:
            endDate = [(PHSearchSuggestion *)self endDate];
            if (endDate && ([(PHSearchSuggestion *)v5 endDate], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              endDate4 = v89;
              endDate2 = [(PHSearchSuggestion *)self endDate];
              endDate3 = [(PHSearchSuggestion *)v5 endDate];
              v10 = [endDate2 isEqualToDate:endDate3];
            }

            else
            {
              endDate4 = [(PHSearchSuggestion *)self endDate];
              endDate2 = [(PHSearchSuggestion *)v5 endDate];
              v10 = endDate4 == endDate2;
            }

            goto LABEL_6;
          }

          v62 = v61;
          startDate4 = [(PHSearchSuggestion *)self startDate];
          startDate5 = [(PHSearchSuggestion *)v5 startDate];
          v65 = [startDate4 isEqualToDate:startDate5];

          if (v65)
          {
            goto LABEL_77;
          }
        }
      }

LABEL_5:
      v10 = 0;
LABEL_6:
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      startDateComponents = [(PHSearchSuggestion *)self startDateComponents];
      if (startDateComponents)
      {
        startDateComponents2 = [(PHSearchSuggestion *)self startDateComponents];
        v14 = [currentCalendar dateFromComponents:startDateComponents2];
      }

      else
      {
        v14 = 0;
      }

      startDateComponents3 = [(PHSearchSuggestion *)v5 startDateComponents];
      if (startDateComponents3)
      {
        startDateComponents4 = [(PHSearchSuggestion *)v5 startDateComponents];
        v18 = [currentCalendar dateFromComponents:startDateComponents4];
      }

      else
      {
        v18 = 0;
      }

      if (v10)
      {
        startDateComponents5 = [(PHSearchSuggestion *)self startDateComponents];
        if (startDateComponents5 && ([(PHSearchSuggestion *)v5 startDateComponents], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          startDateComponents6 = v20;
          v22 = [v14 isEqualToDate:v18];
        }

        else
        {
          startDateComponents6 = [(PHSearchSuggestion *)self startDateComponents];
          startDateComponents7 = [(PHSearchSuggestion *)v5 startDateComponents];
          v22 = startDateComponents6 == startDateComponents7;
        }
      }

      else
      {
        v22 = 0;
      }

      endDateComponents = [(PHSearchSuggestion *)self endDateComponents];
      v112 = v14;
      if (endDateComponents)
      {
        endDateComponents2 = [(PHSearchSuggestion *)self endDateComponents];
        v26 = [currentCalendar dateFromComponents:endDateComponents2];
      }

      else
      {
        v26 = 0;
      }

      endDateComponents3 = [(PHSearchSuggestion *)v5 endDateComponents];
      if (endDateComponents3)
      {
        endDateComponents4 = [(PHSearchSuggestion *)v5 endDateComponents];
        v29 = [currentCalendar dateFromComponents:endDateComponents4];
      }

      else
      {
        v29 = 0;
      }

      if (!v22)
      {
        goto LABEL_35;
      }

      endDateComponents5 = [(PHSearchSuggestion *)self endDateComponents];
      if (endDateComponents5 && ([(PHSearchSuggestion *)v5 endDateComponents], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v32 = v31;
        v33 = [v26 isEqualToDate:v29];

        if ((v33 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        endDateComponents6 = [(PHSearchSuggestion *)self endDateComponents];
        endDateComponents7 = [(PHSearchSuggestion *)v5 endDateComponents];

        if (endDateComponents5)
        {
        }

        if (endDateComponents6 != endDateComponents7)
        {
          goto LABEL_35;
        }
      }

      locationAssetUUIDs = [(PHSearchSuggestion *)self locationAssetUUIDs];
      v111 = v26;
      if (locationAssetUUIDs && ([(PHSearchSuggestion *)v5 locationAssetUUIDs], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v39 = v38;
        locationAssetUUIDs2 = [(PHSearchSuggestion *)self locationAssetUUIDs];
        [(PHSearchSuggestion *)v5 locationAssetUUIDs];
        v41 = v29;
        v43 = v42 = v18;
        v107 = [locationAssetUUIDs2 isEqualToSet:v43];

        v18 = v42;
        v29 = v41;

        if ((v107 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        locationAssetUUIDs3 = [(PHSearchSuggestion *)self locationAssetUUIDs];
        locationAssetUUIDs4 = [(PHSearchSuggestion *)v5 locationAssetUUIDs];

        if (locationAssetUUIDs)
        {
        }

        if (locationAssetUUIDs3 != locationAssetUUIDs4)
        {
          goto LABEL_47;
        }
      }

      categoriesType = [(PHSearchSuggestion *)self categoriesType];
      v67 = categoriesType == [(PHSearchSuggestion *)v5 categoriesType];
      v36 = v112;
      if (!v67)
      {
        v15 = 0;
        goto LABEL_64;
      }

      suggestionComponents = [(PHSearchSuggestion *)self suggestionComponents];
      if (suggestionComponents && ([(PHSearchSuggestion *)v5 suggestionComponents], (v69 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v70 = v69;
        suggestionComponents2 = [(PHSearchSuggestion *)self suggestionComponents];
        [(PHSearchSuggestion *)v5 suggestionComponents];
        v72 = v29;
        v74 = v73 = v18;
        v108 = [suggestionComponents2 isEqualToArray:v74];

        v18 = v73;
        v29 = v72;

        if ((v108 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        suggestionComponents3 = [(PHSearchSuggestion *)self suggestionComponents];
        suggestionComponents4 = [(PHSearchSuggestion *)v5 suggestionComponents];

        if (suggestionComponents)
        {
        }

        if (suggestionComponents3 != suggestionComponents4)
        {
          goto LABEL_47;
        }
      }

      momentUUIDs = [(PHSearchSuggestion *)self momentUUIDs];
      if (momentUUIDs && ([(PHSearchSuggestion *)v5 momentUUIDs], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v80 = v79;
        v109 = v18;
        v81 = MEMORY[0x1E695DFD8];
        momentUUIDs2 = [(PHSearchSuggestion *)self momentUUIDs];
        v82 = [v81 setWithArray:momentUUIDs2];
        v83 = MEMORY[0x1E695DFD8];
        momentUUIDs3 = [(PHSearchSuggestion *)v5 momentUUIDs];
        v85 = [v83 setWithArray:momentUUIDs3];
        v105 = [v82 isEqualToSet:v85];

        v18 = v109;
        v26 = v111;
        if (v105)
        {
          goto LABEL_83;
        }
      }

      else
      {
        momentUUIDs4 = [(PHSearchSuggestion *)self momentUUIDs];
        momentUUIDs5 = [(PHSearchSuggestion *)v5 momentUUIDs];

        if (momentUUIDs)
        {
        }

        v26 = v111;
        if (momentUUIDs4 == momentUUIDs5)
        {
LABEL_83:
          nextTokenSuggestions = [(PHSearchSuggestion *)self nextTokenSuggestions];
          if (nextTokenSuggestions && ([(PHSearchSuggestion *)v5 nextTokenSuggestions], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v97 = v96;
            nextTokenSuggestions2 = [(PHSearchSuggestion *)self nextTokenSuggestions];
            [(PHSearchSuggestion *)v5 nextTokenSuggestions];
            v99 = v29;
            v101 = v100 = v18;
            v110 = [nextTokenSuggestions2 isEqualToArray:v101];

            v18 = v100;
            v29 = v99;

            if (v110)
            {
LABEL_92:
              version = [(PHSearchSuggestion *)self version];
              v15 = version == [(PHSearchSuggestion *)v5 version];
              goto LABEL_48;
            }
          }

          else
          {
            nextTokenSuggestions3 = [(PHSearchSuggestion *)self nextTokenSuggestions];
            nextTokenSuggestions4 = [(PHSearchSuggestion *)v5 nextTokenSuggestions];

            if (nextTokenSuggestions)
            {
            }

            if (nextTokenSuggestions3 == nextTokenSuggestions4)
            {
              goto LABEL_92;
            }
          }

LABEL_47:
          v15 = 0;
LABEL_48:
          v36 = v112;
LABEL_64:
          v26 = v111;
          goto LABEL_65;
        }
      }

LABEL_35:
      v15 = 0;
      v36 = v112;
LABEL_65:

      goto LABEL_66;
    }

    v15 = 0;
  }

LABEL_66:

  return v15;
}

- (NSArray)personUUIDs
{
  v20 = *MEMORY[0x1E69E9840];
  personUUIDs = self->_personUUIDs;
  if (!personUUIDs)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    suggestionComponents = [(PHSearchSuggestion *)self suggestionComponents];
    v6 = [suggestionComponents countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(suggestionComponents);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 indexCategory] == 1300 || objc_msgSend(v10, "indexCategory") == 1301 || objc_msgSend(v10, "indexCategory") == 1330 || objc_msgSend(v10, "indexCategory") == 1331)
          {
            lookupIdentifier = [v10 lookupIdentifier];
            [v4 addObject:lookupIdentifier];
          }
        }

        v7 = [suggestionComponents countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
    v13 = self->_personUUIDs;
    self->_personUUIDs = v12;

    personUUIDs = self->_personUUIDs;
  }

  return personUUIDs;
}

- (float)score
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionComponents = [(PHSearchSuggestion *)self suggestionComponents];
  v4 = [suggestionComponents count];

  if (!v4)
  {
    return 0.0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  suggestionComponents2 = [(PHSearchSuggestion *)self suggestionComponents];
  v6 = [suggestionComponents2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(suggestionComponents2);
        }

        [*(*(&v15 + 1) + 8 * i) score];
        v9 = v9 + v11;
      }

      v7 = [suggestionComponents2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  suggestionComponents3 = [(PHSearchSuggestion *)self suggestionComponents];
  v12 = v9 / [suggestionComponents3 count];

  return v12;
}

- (BOOL)hasApproximateCount
{
  v14 = *MEMORY[0x1E69E9840];
  indexCategoriesWithApproximateCounts = [objc_opt_class() indexCategoriesWithApproximateCounts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  suggestionComponents = [(PHSearchSuggestion *)self suggestionComponents];
  v5 = [suggestionComponents countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(suggestionComponents);
        }

        if ([indexCategoriesWithApproximateCounts containsIndex:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "indexCategory")}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [suggestionComponents countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (PHSearchSuggestion)initWithType:(unint64_t)type categoriesType:(unint64_t)categoriesType text:(id)text matchRangeOfSearchText:(_NSRange)searchText count:(unint64_t)count suggestionComponents:(id)components nextTokenSuggestions:(id)suggestions
{
  length = searchText.length;
  location = searchText.location;
  suggestionsCopy = suggestions;
  v49 = *MEMORY[0x1E69E9840];
  textCopy = text;
  componentsCopy = components;
  suggestionsCopy2 = suggestions;
  if (type)
  {
    if (categoriesType)
    {
      goto LABEL_3;
    }

LABEL_26:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"categoriesType != PHSearchSuggestionCategoriesTypeUndefined"}];

    if (textCopy)
    {
      goto LABEL_4;
    }

LABEL_27:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"text"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"type != PHSearchSuggestionTypeUndefined"}];

  if (!categoriesType)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!textCopy)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (type - 1 <= 1)
  {
    if (![componentsCopy count])
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"suggestionComponents.count > 0"}];
    }

    if (type == 1 && location == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"matchRangeOfSearchText.location != NSNotFound"}];

      goto LABEL_10;
    }
  }

  if ((type | 2) == 3)
  {
LABEL_10:
    categoriesTypeCopy = categoriesType;
    v39 = location;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = suggestionsCopy2;
    v18 = suggestionsCopy2;
    v19 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(*(&v44 + 1) + 8 * i) type] != 2)
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v37 = textCopy;
            v24 = v23 = suggestionsCopy;
            [v24 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"nextToken.type == PHSearchSuggestionTypeNextToken"}];

            suggestionsCopy = v23;
            textCopy = v37;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    location = v39;
    suggestionsCopy2 = v40;
    categoriesType = categoriesTypeCopy;
    goto LABEL_22;
  }

  if ([suggestionsCopy2 count])
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"nextTokenSuggestions.count == 0"}];
  }

LABEL_22:
  v43.receiver = self;
  v43.super_class = PHSearchSuggestion;
  v25 = [(PHSearchSuggestion *)&v43 init];
  if (v25)
  {
    v26 = [textCopy copy];
    text = v25->_text;
    v25->_text = v26;

    v25->_type = type;
    v25->_matchRangeOfSearchText.location = location;
    v25->_matchRangeOfSearchText.length = length;
    v25->_categoriesType = categoriesType;
    v25->_count = count;
    v28 = [componentsCopy copy];
    suggestionComponents = v25->_suggestionComponents;
    v25->_suggestionComponents = v28;

    objc_storeStrong(&v25->_nextTokenSuggestions, suggestionsCopy);
    v25->_version = 0;
  }

  return v25;
}

+ (id)indexCategoriesWithApproximateCounts
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1500];
  [v2 addIndex:1501];
  [v2 addIndex:2600];
  [v2 addIndex:2601];
  [v2 addIndex:2500];
  [v2 addIndex:2501];
  [v2 addIndex:1104];
  [v2 addIndex:1510];
  [v2 addIndex:1520];
  [v2 addIndex:1530];
  [v2 addIndex:1540];
  v3 = [v2 copy];

  return v3;
}

- (id)initForPersonalEventFilterWithMomentUUIDs:(id)ds
{
  dsCopy = ds;
  if (![dsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:633 description:{@"Invalid parameter not satisfying: %@", @"momentUUIDs.count > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    text = v7->_text;
    v7->_text = &stru_1F0FC60C8;

    v8->_type = 3;
    v8->_categoriesType = 44;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    objc_storeStrong(&v8->_momentUUIDs, ds);
    v8->_version = 0;
  }

  return v8;
}

- (id)initForMeaningFilterWithMeaningfulEvent:(id)event
{
  v16[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (![eventCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:609 description:{@"Invalid parameter not satisfying: %@", @"meaningfulEvent.length > 0"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, event);
    v8->_type = 3;
    v8->_categoriesType = 12;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:eventCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1600 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];
    v10 = v9;
    if (v9)
    {
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      suggestionComponents = v8->_suggestionComponents;
      v8->_suggestionComponents = v11;
    }

    v8->_version = 0;
  }

  return v8;
}

- (id)initForTripFilterWithLocationName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"locationName.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, name);
    v8->_categoriesType = 42;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    *&v8->_version = xmmword_19CB295C0;
  }

  return v8;
}

- (id)initForGenericLocationFilterWithText:(id)text genericLocationTuples:(id)tuples allowedIndexCategories:(id)categories
{
  v38 = *MEMORY[0x1E69E9840];
  textCopy = text;
  tuplesCopy = tuples;
  categoriesCopy = categories;
  v36.receiver = self;
  v36.super_class = PHSearchSuggestion;
  v12 = [(PHSearchSuggestion *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, text);
    v13->_type = 3;
    v13->_categoriesType = 12;
    v30 = v13;
    v13->_matchRangeOfSearchText = xmmword_19CB29550;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = tuplesCopy;
    v15 = tuplesCopy;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = v16;
    v18 = *v33;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        indexCategory = [v20 indexCategory];
        if (![categoriesCopy count] || objc_msgSend(categoriesCopy, "containsIndex:", indexCategory))
        {
          if (indexCategory > 1599)
          {
            v26 = (indexCategory - 1800) > 3 || indexCategory == 1801;
            if (!v26 || (indexCategory - 1600) < 2 || (indexCategory - 1700) < 2)
            {
              v25 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:textCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:indexCategory lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];
              if (v25)
              {
LABEL_24:
                [v14 addObject:v25];

                continue;
              }
            }
          }

          else if ((indexCategory - 1500) <= 0x1F && ((1 << (indexCategory + 36)) & 0xC0300C03) != 0)
          {
            v23 = objc_alloc(MEMORY[0x1E69BE7C0]);
            lookupIdentifier = [v20 lookupIdentifier];
            v25 = [v23 initWithContentString:textCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:indexCategory lookupIdentifier:0.0 score:lookupIdentifier suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];

            if (v25)
            {
              goto LABEL_24;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v17)
      {
LABEL_27:

        v27 = [v14 copy];
        v13 = v30;
        suggestionComponents = v30->_suggestionComponents;
        v30->_suggestionComponents = v27;

        v30->_version = 0;
        tuplesCopy = v31;
        break;
      }
    }
  }

  return v13;
}

- (id)initForSeasonFilterWithSeasonLocalizedText:(id)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:512 description:{@"Invalid parameter not satisfying: %@", @"seasonLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, text);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:textCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1104 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
    v10 = v9;
    if (v9)
    {
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      suggestionComponents = v8->_suggestionComponents;
      v8->_suggestionComponents = v11;
    }

    v8->_version = 0;
  }

  return v8;
}

- (id)initForPartOfWeekFilterWithPartOfWeekLocalizedText:(id)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"partOfWeekLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, text);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:textCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1107 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
    v10 = v9;
    if (v9)
    {
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      suggestionComponents = v8->_suggestionComponents;
      v8->_suggestionComponents = v11;
    }

    v8->_version = 0;
  }

  return v8;
}

- (id)initForPartOfDayFilterWithPartOfDayLocalizedText:(id)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"partOfDayLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, text);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:textCopy groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1106 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
    v10 = v9;
    if (v9)
    {
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      suggestionComponents = v8->_suggestionComponents;
      v8->_suggestionComponents = v11;
    }

    v8->_version = 0;
  }

  return v8;
}

- (id)initForDateFilterWithStartDateComponents:(id)components endDateComponents:(id)dateComponents
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"startDateComponents"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v10 = [(PHSearchSuggestion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    text = v10->_text;
    v10->_text = &stru_1F0FC60C8;

    v11->_type = 3;
    v11->_categoriesType = 4;
    v11->_matchRangeOfSearchText = xmmword_19CB29550;
    objc_storeStrong(&v11->_startDateComponents, components);
    objc_storeStrong(&v11->_endDateComponents, dateComponents);
    v11->_version = 0;
  }

  return v11;
}

- (id)initForDateFilterWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PHSearchSuggestion;
  v11 = [(PHSearchSuggestion *)&v17 init];
  v12 = v11;
  if (v11)
  {
    text = v11->_text;
    v11->_text = &stru_1F0FC60C8;

    v12->_type = 3;
    v12->_categoriesType = 4;
    v12->_matchRangeOfSearchText = xmmword_19CB29550;
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
    v12->_version = 0;
  }

  return v12;
}

- (id)initForPersonFilterWithPersonUUIDs:(id)ds
{
  dsCopy = ds;
  if (![dsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs.count > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    text = v7->_text;
    v7->_text = &stru_1F0FC60C8;

    v8->_type = 3;
    v8->_categoriesType = 7;
    objc_storeStrong(&v8->_personUUIDs, ds);
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v8->_version = 0;
  }

  return v8;
}

- (id)initForLocationFilterWithAssetUUIDs:(id)ds locationText:(id)text
{
  dsCopy = ds;
  textCopy = text;
  if (![dsCopy count] && !-[__CFString length](textCopy, "length"))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"assetUUIDs.count > 0 || locationText.length > 0"}];
  }

  v16.receiver = self;
  v16.super_class = PHSearchSuggestion;
  v10 = [(PHSearchSuggestion *)&v16 init];
  if (v10)
  {
    if ([dsCopy count])
    {
      v11 = *(v10 + 2);
      *(v10 + 2) = &stru_1F0FC60C8;
    }

    else
    {
      v12 = &stru_1F0FC60C8;
      if (textCopy)
      {
        v12 = textCopy;
      }

      v13 = v12;
      v11 = *(v10 + 2);
      *(v10 + 2) = v13;
    }

    objc_storeStrong(v10 + 11, ds);
    *(v10 + 3) = 1;
    *(v10 + 120) = xmmword_19CB29550;
    *(v10 + 40) = xmmword_19CB295C0;
  }

  return v10;
}

@end