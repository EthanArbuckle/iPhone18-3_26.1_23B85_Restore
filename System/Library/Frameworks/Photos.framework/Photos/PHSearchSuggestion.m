@interface PHSearchSuggestion
+ (id)indexCategoriesWithApproximateCounts;
- (BOOL)hasApproximateCount;
- (BOOL)isEqual:(id)a3;
- (NSArray)personUUIDs;
- (PHSearchSuggestion)initWithCoder:(id)a3;
- (PHSearchSuggestion)initWithType:(unint64_t)a3 categoriesType:(unint64_t)a4 text:(id)a5 matchRangeOfSearchText:(_NSRange)a6 count:(unint64_t)a7 suggestionComponents:(id)a8 nextTokenSuggestions:(id)a9;
- (_NSRange)matchRangeOfSearchText;
- (float)score;
- (id)description;
- (id)initForDateFilterWithStartDate:(id)a3 endDate:(id)a4;
- (id)initForDateFilterWithStartDateComponents:(id)a3 endDateComponents:(id)a4;
- (id)initForGenericLocationFilterWithText:(id)a3 genericLocationTuples:(id)a4 allowedIndexCategories:(id)a5;
- (id)initForLocationFilterWithAssetUUIDs:(id)a3 locationText:(id)a4;
- (id)initForMeaningFilterWithMeaningfulEvent:(id)a3;
- (id)initForPartOfDayFilterWithPartOfDayLocalizedText:(id)a3;
- (id)initForPartOfWeekFilterWithPartOfWeekLocalizedText:(id)a3;
- (id)initForPersonFilterWithPersonUUIDs:(id)a3;
- (id)initForPersonalEventFilterWithMomentUUIDs:(id)a3;
- (id)initForSeasonFilterWithSeasonLocalizedText:(id)a3;
- (id)initForTripFilterWithLocationName:(id)a3;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v6 = [(PHSearchSuggestion *)self text];
  v27[2] = v6;
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
    v14 = [(PHSearchSuggestion *)self personUUIDs];
    [v10 setObject:v14 forKeyedSubscript:@"personUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 1)
  {
    v15 = [(PHSearchSuggestion *)self locationAssetUUIDs];
    [v10 setObject:v15 forKeyedSubscript:@"location_assetUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 4)
  {
    v16 = [(PHSearchSuggestion *)self startDate];
    if (v16 && (v17 = v16, [(PHSearchSuggestion *)self endDate], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v19 = [(PHSearchSuggestion *)self startDate];
      [v10 setObject:v19 forKeyedSubscript:@"start_date"];

      v20 = [(PHSearchSuggestion *)self endDate];
      v21 = @"end_date";
    }

    else
    {
      v22 = [(PHSearchSuggestion *)self startDateComponents];
      [v10 setObject:v22 forKeyedSubscript:@"start_date_components"];

      v23 = [(PHSearchSuggestion *)self endDateComponents];

      if (!v23)
      {
        goto LABEL_23;
      }

      v20 = [(PHSearchSuggestion *)self endDateComponents];
      v21 = @"end_date_components";
    }

    [v10 setObject:v20 forKeyedSubscript:v21];
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
  v6 = [(PHSearchSuggestion *)self text];
  v44[2] = v6;
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
    v14 = [(PHSearchSuggestion *)self personUUIDs];
    [v10 setObject:v14 forKeyedSubscript:@"personUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 1)
  {
    v15 = [(PHSearchSuggestion *)self locationAssetUUIDs];
    [v10 setObject:v15 forKeyedSubscript:@"location_assetUUIDs"];

    categoriesType = self->_categoriesType;
  }

  if (categoriesType == 4)
  {
    v16 = [(PHSearchSuggestion *)self startDate];
    if (v16 && (v17 = v16, [(PHSearchSuggestion *)self endDate], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v19 = [(PHSearchSuggestion *)self startDate];
      [v10 setObject:v19 forKeyedSubscript:@"start_date"];

      v20 = [(PHSearchSuggestion *)self endDate];
      v21 = @"end_date";
    }

    else
    {
      v22 = [(PHSearchSuggestion *)self startDateComponents];
      [v10 setObject:v22 forKeyedSubscript:@"start_date_components"];

      v23 = [(PHSearchSuggestion *)self endDateComponents];

      if (!v23)
      {
        goto LABEL_23;
      }

      v20 = [(PHSearchSuggestion *)self endDateComponents];
      v21 = @"end_date_components";
    }

    [v10 setObject:v20 forKeyedSubscript:v21];
  }

LABEL_23:
  v24 = [(PHSearchSuggestion *)self nextTokenSuggestions];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v27 = [(PHSearchSuggestion *)self nextTokenSuggestions];
    v28 = [v26 initWithCapacity:{objc_msgSend(v27, "count")}];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = [(PHSearchSuggestion *)self nextTokenSuggestions];
    v30 = [v29 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v38 + 1) + 8 * i) jsonDictionary];
          [v28 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
  v3 = [(PHSearchSuggestion *)self hasApproximateCount];
  v4 = @"NO";
  if (v3)
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

  v15 = [(PHSearchSuggestion *)self personUUIDs];
  v16 = [v19 stringWithFormat:@"%@: %p, type: %ld (%@), categories type: %ld (%@) text: '%@', match range: %@, personUUIDs: %@, count: %tu, hasApproximateCount: %@, start date: %@, end date: %@, start date components: %@, end date components: %@, location asset UUIDs: %@, momentUUIDs: %@, version: %tu", v18, self, type, v8, categoriesType, v11, text, v14, v15, self->_count, v5, self->_startDate, self->_endDate, self->_startDateComponents, self->_endDateComponents, self->_locationAssetUUIDs, self->_momentUUIDs, self->_version];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:type];
  [v6 encodeObject:v7 forKey:@"PHSearchSuggestionPropertyType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_categoriesType];
  [v6 encodeObject:v8 forKey:@"PHSearchSuggestionPropertyCategoriesType"];

  [v6 encodeObject:self->_text forKey:@"PHSearchSuggestionPropertyText"];
  v9 = [MEMORY[0x1E696B098] valueWithRange:{self->_matchRangeOfSearchText.location, self->_matchRangeOfSearchText.length}];
  [v6 encodeObject:v9 forKey:@"PHSearchSuggestionPropertyMatchRangeOfSearchText"];

  [v6 encodeObject:self->_personUUIDs forKey:@"PHSearchSuggestionPropertyPersonUUIDs"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  [v6 encodeObject:v10 forKey:@"PHSearchSuggestionPropertyCount"];

  [v6 encodeObject:self->_startDate forKey:@"PHSearchSuggestionPropertyStartDate"];
  [v6 encodeObject:self->_endDate forKey:@"PHSearchSuggestionPropertyEndDate"];
  [v6 encodeObject:self->_startDateComponents forKey:@"PHSearchSuggestionPropertyStartDateComponents"];
  [v6 encodeObject:self->_endDateComponents forKey:@"PHSearchSuggestionPropertyEndDateComponents"];
  v11 = [(NSSet *)self->_locationAssetUUIDs allObjects];
  [v6 encodeObject:v11 forKey:@"PHSearchSuggestionPropertyLocationAssetUUIDs"];

  [v6 encodeObject:self->_suggestionComponents forKey:@"PHSearchSuggestionPropertySuggestionComponents"];
  [v6 encodeObject:self->_nextTokenSuggestions forKey:@"PHSearchSuggestionPropertyNextTokenSuggestions"];
  [v6 encodeObject:self->_momentUUIDs forKey:@"PHSearchSuggestionPropertyHighlightUUIDs"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [v6 encodeObject:v12 forKey:@"PHSearchSuggestionPropertyVersion"];
}

- (PHSearchSuggestion)initWithCoder:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyVersion"];
  v6 = [v5 unsignedIntegerValue];

  if (!v6)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyType"];
    v49 = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyCategoriesType"];
    v47 = [v10 unsignedIntegerValue];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyText"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyMatchRangeOfSearchText"];
    v46 = [v11 rangeValue];
    v44 = v12;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v15 forKey:@"PHSearchSuggestionPropertyPersonUUIDs"];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyCount"];
    v17 = [v16 unsignedIntegerValue];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyStartDate"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyEndDate"];
    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyStartDateComponents"];
    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchSuggestionPropertyEndDateComponents"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v20 forKey:@"PHSearchSuggestionPropertyLocationAssetUUIDs"];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v23 forKey:@"PHSearchSuggestionPropertySuggestionComponents"];

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"PHSearchSuggestionPropertyNextTokenSuggestions"];

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = v47;
    v31 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"PHSearchSuggestionPropertyHighlightUUIDs"];

    v33 = v17;
    v34 = v44;
    v35 = v46;
    if (v49 == 3)
    {
      if (![objc_opt_class() _suggestionsCategoryTypeIsSupportedForDisambiguation:v47])
      {
        v8 = 0;
LABEL_23:
        v38 = v50;
        v37 = v51;
        goto LABEL_24;
      }

      if (v47 > 6)
      {
        if (v47 == 44)
        {
          v41 = [(PHSearchSuggestion *)self initForPersonalEventFilterWithMomentUUIDs:v32];
LABEL_22:
          self = v41;
          v8 = self;
          goto LABEL_23;
        }

        v35 = v46;
        v34 = v44;
        v33 = v17;
        if (v47 == 7)
        {
          v38 = v50;
          self = [(PHSearchSuggestion *)self initForPersonFilterWithPersonUUIDs:v50];
          v8 = self;
          v37 = v51;
LABEL_24:
          v36 = v53;
          goto LABEL_25;
        }
      }

      else
      {
        if (v47 == 1)
        {
          v39 = v48;
          if ([v48 count])
          {
            v40 = [MEMORY[0x1E695DFD8] setWithArray:v48];
            self = [(PHSearchSuggestion *)self initForLocationFilterWithAssetUUIDs:v40 locationText:0];

            v8 = self;
            v37 = v51;
          }

          else
          {
            v37 = v51;
            self = [(PHSearchSuggestion *)self initForLocationFilterWithAssetUUIDs:0 locationText:v51];
            v8 = self;
          }

          v38 = v50;
          v36 = v53;
          goto LABEL_26;
        }

        v35 = v46;
        v34 = v44;
        v33 = v17;
        if (v47 == 4)
        {
          v36 = v53;
          if (v53 && v55)
          {
            self = [(PHSearchSuggestion *)self initForDateFilterWithStartDate:v53 endDate:v55];
            v8 = self;
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
          v35 = v46;
          v34 = v44;
          v33 = v17;
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
    self = [(PHSearchSuggestion *)self initWithType:v49 categoriesType:v30 text:v51 matchRangeOfSearchText:v35 count:v34 suggestionComponents:v33 nextTokenSuggestions:v45, v27];
    v8 = self;
    v38 = v50;
    v36 = v53;
    v39 = v48;
    goto LABEL_28;
  }

  v7 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v57 = v6;
    v58 = 1024;
    v59 = 0;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Version of encoded PHSearchSuggestion: %tu does not match the current search suggestion SPI version: %d, cannot instantiate suggestion", buf, 0x12u);
  }

  v8 = 0;
LABEL_29:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PHSearchSuggestion *)self type];
  v32 = [(PHSearchSuggestion *)self text];
  v31 = [v32 localizedLowercaseString];
  v4 = [v31 hash];
  v30 = [(PHSearchSuggestion *)self personUUIDs];
  v5 = v4 ^ v3 ^ [v30 hash];
  v6 = [(PHSearchSuggestion *)self matchRangeOfSearchText];
  v29 = [(PHSearchSuggestion *)self startDate];
  v7 = v6 ^ [v29 hash];
  v28 = [(PHSearchSuggestion *)self endDate];
  v8 = v5 ^ v7 ^ [v28 hash];
  v9 = [(PHSearchSuggestion *)self startDateComponents];
  v10 = [v9 date];
  v11 = [v10 hash];
  v12 = [(PHSearchSuggestion *)self endDateComponents];
  v13 = [v12 date];
  v14 = v11 ^ [v13 hash];
  v15 = [(PHSearchSuggestion *)self locationAssetUUIDs];
  v16 = v8 ^ v14 ^ [v15 hash];
  v17 = [(PHSearchSuggestion *)self count];
  v18 = v17 ^ [(PHSearchSuggestion *)self hasApproximateCount];
  v19 = v18 ^ [(PHSearchSuggestion *)self categoriesType];
  v20 = [(PHSearchSuggestion *)self suggestionComponents];
  v27 = v16 ^ v19 ^ [v20 hash];
  v21 = [(PHSearchSuggestion *)self momentUUIDs];
  v22 = [v21 hash];
  v23 = [(PHSearchSuggestion *)self nextTokenSuggestions];
  v24 = v22 ^ [v23 hash];
  v25 = v24 ^ [(PHSearchSuggestion *)self version];

  return v27 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHSearchSuggestion *)self type];
      if (v6 != [(PHSearchSuggestion *)v5 type])
      {
        goto LABEL_5;
      }

      v7 = [(PHSearchSuggestion *)self text];
      v8 = [(PHSearchSuggestion *)v5 text];
      v9 = [v7 localizedCaseInsensitiveCompare:v8];

      if (v9)
      {
        goto LABEL_5;
      }

      v44 = [(PHSearchSuggestion *)self personUUIDs];
      if (v44 && ([(PHSearchSuggestion *)v5 personUUIDs], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v46 = v45;
        v47 = MEMORY[0x1E695DFD8];
        v48 = [(PHSearchSuggestion *)self personUUIDs];
        v49 = [v47 setWithArray:v48];
        v50 = MEMORY[0x1E695DFD8];
        v51 = [(PHSearchSuggestion *)v5 personUUIDs];
        v52 = [v50 setWithArray:v51];
        v53 = [v49 isEqualToSet:v52];

        if ((v53 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v56 = [(PHSearchSuggestion *)self personUUIDs];
        v57 = [(PHSearchSuggestion *)v5 personUUIDs];

        if (v44)
        {
        }

        if (v56 != v57)
        {
          goto LABEL_5;
        }
      }

      v58 = [(PHSearchSuggestion *)self count];
      if (v58 == [(PHSearchSuggestion *)v5 count])
      {
        v59 = [(PHSearchSuggestion *)self hasApproximateCount];
        if (v59 == [(PHSearchSuggestion *)v5 hasApproximateCount])
        {
          v60 = [(PHSearchSuggestion *)self startDate];
          if (!v60 || ([(PHSearchSuggestion *)v5 startDate], (v61 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v86 = [(PHSearchSuggestion *)self startDate];
            v87 = [(PHSearchSuggestion *)v5 startDate];

            if (v60)
            {
            }

            if (v86 != v87)
            {
              goto LABEL_5;
            }

LABEL_77:
            v88 = [(PHSearchSuggestion *)self endDate];
            if (v88 && ([(PHSearchSuggestion *)v5 endDate], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v90 = v89;
              v91 = [(PHSearchSuggestion *)self endDate];
              v92 = [(PHSearchSuggestion *)v5 endDate];
              v10 = [v91 isEqualToDate:v92];
            }

            else
            {
              v90 = [(PHSearchSuggestion *)self endDate];
              v91 = [(PHSearchSuggestion *)v5 endDate];
              v10 = v90 == v91;
            }

            goto LABEL_6;
          }

          v62 = v61;
          v63 = [(PHSearchSuggestion *)self startDate];
          v64 = [(PHSearchSuggestion *)v5 startDate];
          v65 = [v63 isEqualToDate:v64];

          if (v65)
          {
            goto LABEL_77;
          }
        }
      }

LABEL_5:
      v10 = 0;
LABEL_6:
      v11 = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [(PHSearchSuggestion *)self startDateComponents];
      if (v12)
      {
        v13 = [(PHSearchSuggestion *)self startDateComponents];
        v14 = [v11 dateFromComponents:v13];
      }

      else
      {
        v14 = 0;
      }

      v16 = [(PHSearchSuggestion *)v5 startDateComponents];
      if (v16)
      {
        v17 = [(PHSearchSuggestion *)v5 startDateComponents];
        v18 = [v11 dateFromComponents:v17];
      }

      else
      {
        v18 = 0;
      }

      if (v10)
      {
        v19 = [(PHSearchSuggestion *)self startDateComponents];
        if (v19 && ([(PHSearchSuggestion *)v5 startDateComponents], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = v20;
          v22 = [v14 isEqualToDate:v18];
        }

        else
        {
          v21 = [(PHSearchSuggestion *)self startDateComponents];
          v23 = [(PHSearchSuggestion *)v5 startDateComponents];
          v22 = v21 == v23;
        }
      }

      else
      {
        v22 = 0;
      }

      v24 = [(PHSearchSuggestion *)self endDateComponents];
      v112 = v14;
      if (v24)
      {
        v25 = [(PHSearchSuggestion *)self endDateComponents];
        v26 = [v11 dateFromComponents:v25];
      }

      else
      {
        v26 = 0;
      }

      v27 = [(PHSearchSuggestion *)v5 endDateComponents];
      if (v27)
      {
        v28 = [(PHSearchSuggestion *)v5 endDateComponents];
        v29 = [v11 dateFromComponents:v28];
      }

      else
      {
        v29 = 0;
      }

      if (!v22)
      {
        goto LABEL_35;
      }

      v30 = [(PHSearchSuggestion *)self endDateComponents];
      if (v30 && ([(PHSearchSuggestion *)v5 endDateComponents], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
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
        v34 = [(PHSearchSuggestion *)self endDateComponents];
        v35 = [(PHSearchSuggestion *)v5 endDateComponents];

        if (v30)
        {
        }

        if (v34 != v35)
        {
          goto LABEL_35;
        }
      }

      v37 = [(PHSearchSuggestion *)self locationAssetUUIDs];
      v111 = v26;
      if (v37 && ([(PHSearchSuggestion *)v5 locationAssetUUIDs], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v39 = v38;
        v40 = [(PHSearchSuggestion *)self locationAssetUUIDs];
        [(PHSearchSuggestion *)v5 locationAssetUUIDs];
        v41 = v29;
        v43 = v42 = v18;
        v107 = [v40 isEqualToSet:v43];

        v18 = v42;
        v29 = v41;

        if ((v107 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v54 = [(PHSearchSuggestion *)self locationAssetUUIDs];
        v55 = [(PHSearchSuggestion *)v5 locationAssetUUIDs];

        if (v37)
        {
        }

        if (v54 != v55)
        {
          goto LABEL_47;
        }
      }

      v66 = [(PHSearchSuggestion *)self categoriesType];
      v67 = v66 == [(PHSearchSuggestion *)v5 categoriesType];
      v36 = v112;
      if (!v67)
      {
        v15 = 0;
        goto LABEL_64;
      }

      v68 = [(PHSearchSuggestion *)self suggestionComponents];
      if (v68 && ([(PHSearchSuggestion *)v5 suggestionComponents], (v69 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v70 = v69;
        v71 = [(PHSearchSuggestion *)self suggestionComponents];
        [(PHSearchSuggestion *)v5 suggestionComponents];
        v72 = v29;
        v74 = v73 = v18;
        v108 = [v71 isEqualToArray:v74];

        v18 = v73;
        v29 = v72;

        if ((v108 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v76 = [(PHSearchSuggestion *)self suggestionComponents];
        v77 = [(PHSearchSuggestion *)v5 suggestionComponents];

        if (v68)
        {
        }

        if (v76 != v77)
        {
          goto LABEL_47;
        }
      }

      v78 = [(PHSearchSuggestion *)self momentUUIDs];
      if (v78 && ([(PHSearchSuggestion *)v5 momentUUIDs], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v80 = v79;
        v109 = v18;
        v81 = MEMORY[0x1E695DFD8];
        v106 = [(PHSearchSuggestion *)self momentUUIDs];
        v82 = [v81 setWithArray:v106];
        v83 = MEMORY[0x1E695DFD8];
        v84 = [(PHSearchSuggestion *)v5 momentUUIDs];
        v85 = [v83 setWithArray:v84];
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
        v93 = [(PHSearchSuggestion *)self momentUUIDs];
        v94 = [(PHSearchSuggestion *)v5 momentUUIDs];

        if (v78)
        {
        }

        v26 = v111;
        if (v93 == v94)
        {
LABEL_83:
          v95 = [(PHSearchSuggestion *)self nextTokenSuggestions];
          if (v95 && ([(PHSearchSuggestion *)v5 nextTokenSuggestions], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v97 = v96;
            v98 = [(PHSearchSuggestion *)self nextTokenSuggestions];
            [(PHSearchSuggestion *)v5 nextTokenSuggestions];
            v99 = v29;
            v101 = v100 = v18;
            v110 = [v98 isEqualToArray:v101];

            v18 = v100;
            v29 = v99;

            if (v110)
            {
LABEL_92:
              v104 = [(PHSearchSuggestion *)self version];
              v15 = v104 == [(PHSearchSuggestion *)v5 version];
              goto LABEL_48;
            }
          }

          else
          {
            v102 = [(PHSearchSuggestion *)self nextTokenSuggestions];
            v103 = [(PHSearchSuggestion *)v5 nextTokenSuggestions];

            if (v95)
            {
            }

            if (v102 == v103)
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
    v5 = [(PHSearchSuggestion *)self suggestionComponents];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 indexCategory] == 1300 || objc_msgSend(v10, "indexCategory") == 1301 || objc_msgSend(v10, "indexCategory") == 1330 || objc_msgSend(v10, "indexCategory") == 1331)
          {
            v11 = [v10 lookupIdentifier];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(PHSearchSuggestion *)self suggestionComponents];
  v4 = [v3 count];

  if (!v4)
  {
    return 0.0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PHSearchSuggestion *)self suggestionComponents];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) score];
        v9 = v9 + v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v13 = [(PHSearchSuggestion *)self suggestionComponents];
  v12 = v9 / [v13 count];

  return v12;
}

- (BOOL)hasApproximateCount
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() indexCategoriesWithApproximateCounts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PHSearchSuggestion *)self suggestionComponents];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsIndex:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "indexCategory")}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (PHSearchSuggestion)initWithType:(unint64_t)a3 categoriesType:(unint64_t)a4 text:(id)a5 matchRangeOfSearchText:(_NSRange)a6 count:(unint64_t)a7 suggestionComponents:(id)a8 nextTokenSuggestions:(id)a9
{
  length = a6.length;
  location = a6.location;
  v14 = a9;
  v49 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a8;
  v17 = a9;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_26:
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"categoriesType != PHSearchSuggestionCategoriesTypeUndefined"}];

    if (v15)
    {
      goto LABEL_4;
    }

LABEL_27:
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"text"}];

    goto LABEL_4;
  }

  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"type != PHSearchSuggestionTypeUndefined"}];

  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (a3 - 1 <= 1)
  {
    if (![v16 count])
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"suggestionComponents.count > 0"}];
    }

    if (a3 == 1 && location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"matchRangeOfSearchText.location != NSNotFound"}];

      goto LABEL_10;
    }
  }

  if ((a3 | 2) == 3)
  {
LABEL_10:
    v38 = a4;
    v39 = location;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = v17;
    v18 = v17;
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
            v37 = v15;
            v24 = v23 = v14;
            [v24 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"nextToken.type == PHSearchSuggestionTypeNextToken"}];

            v14 = v23;
            v15 = v37;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    location = v39;
    v17 = v40;
    a4 = v38;
    goto LABEL_22;
  }

  if ([v17 count])
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"nextTokenSuggestions.count == 0"}];
  }

LABEL_22:
  v43.receiver = self;
  v43.super_class = PHSearchSuggestion;
  v25 = [(PHSearchSuggestion *)&v43 init];
  if (v25)
  {
    v26 = [v15 copy];
    text = v25->_text;
    v25->_text = v26;

    v25->_type = a3;
    v25->_matchRangeOfSearchText.location = location;
    v25->_matchRangeOfSearchText.length = length;
    v25->_categoriesType = a4;
    v25->_count = a7;
    v28 = [v16 copy];
    suggestionComponents = v25->_suggestionComponents;
    v25->_suggestionComponents = v28;

    objc_storeStrong(&v25->_nextTokenSuggestions, v14);
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

- (id)initForPersonalEventFilterWithMomentUUIDs:(id)a3
{
  v6 = a3;
  if (![v6 count])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:633 description:{@"Invalid parameter not satisfying: %@", @"momentUUIDs.count > 0"}];
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
    objc_storeStrong(&v8->_momentUUIDs, a3);
    v8->_version = 0;
  }

  return v8;
}

- (id)initForMeaningFilterWithMeaningfulEvent:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:609 description:{@"Invalid parameter not satisfying: %@", @"meaningfulEvent.length > 0"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, a3);
    v8->_type = 3;
    v8->_categoriesType = 12;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:v6 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1600 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];
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

- (id)initForTripFilterWithLocationName:(id)a3
{
  v6 = a3;
  if (![v6 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"locationName.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, a3);
    v8->_categoriesType = 42;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    *&v8->_version = xmmword_19CB295C0;
  }

  return v8;
}

- (id)initForGenericLocationFilterWithText:(id)a3 genericLocationTuples:(id)a4 allowedIndexCategories:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = PHSearchSuggestion;
  v12 = [(PHSearchSuggestion *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, a3);
    v13->_type = 3;
    v13->_categoriesType = 12;
    v30 = v13;
    v13->_matchRangeOfSearchText = xmmword_19CB29550;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v10;
    v15 = v10;
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
        v21 = [v20 indexCategory];
        if (![v11 count] || objc_msgSend(v11, "containsIndex:", v21))
        {
          if (v21 > 1599)
          {
            v26 = (v21 - 1800) > 3 || v21 == 1801;
            if (!v26 || (v21 - 1600) < 2 || (v21 - 1700) < 2)
            {
              v25 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:v9 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:v21 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];
              if (v25)
              {
LABEL_24:
                [v14 addObject:v25];

                continue;
              }
            }
          }

          else if ((v21 - 1500) <= 0x1F && ((1 << (v21 + 36)) & 0xC0300C03) != 0)
          {
            v23 = objc_alloc(MEMORY[0x1E69BE7C0]);
            v24 = [v20 lookupIdentifier];
            v25 = [v23 initWithContentString:v9 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:v21 lookupIdentifier:0.0 score:v24 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:{0, 0}];

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
        v10 = v31;
        break;
      }
    }
  }

  return v13;
}

- (id)initForSeasonFilterWithSeasonLocalizedText:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:512 description:{@"Invalid parameter not satisfying: %@", @"seasonLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, a3);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:v6 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1104 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
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

- (id)initForPartOfWeekFilterWithPartOfWeekLocalizedText:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"partOfWeekLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, a3);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:v6 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1107 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
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

- (id)initForPartOfDayFilterWithPartOfDayLocalizedText:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"partOfDayLocalizedText"}];
  }

  v15.receiver = self;
  v15.super_class = PHSearchSuggestion;
  v7 = [(PHSearchSuggestion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_text, a3);
    v8->_type = 3;
    v8->_categoriesType = 4;
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v9 = [objc_alloc(MEMORY[0x1E69BE7C0]) initWithContentString:v6 groupId:0 owningGroupId:0 matchedAssetsCount:0 matchedCollectionsCount:0 indexCategory:1106 lookupIdentifier:0.0 score:0 suggestionType:3 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:v8->_matchRangeOfSearchText.location matchType:{v8->_matchRangeOfSearchText.length, 0}];
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

- (id)initForDateFilterWithStartDateComponents:(id)a3 endDateComponents:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"startDateComponents"}];
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
    objc_storeStrong(&v11->_startDateComponents, a3);
    objc_storeStrong(&v11->_endDateComponents, a4);
    v11->_version = 0;
  }

  return v11;
}

- (id)initForDateFilterWithStartDate:(id)a3 endDate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];

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
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v12->_endDate, a4);
    v12->_version = 0;
  }

  return v12;
}

- (id)initForPersonFilterWithPersonUUIDs:(id)a3
{
  v6 = a3;
  if (![v6 count])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs.count > 0"}];
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
    objc_storeStrong(&v8->_personUUIDs, a3);
    v8->_matchRangeOfSearchText = xmmword_19CB29550;
    v8->_version = 0;
  }

  return v8;
}

- (id)initForLocationFilterWithAssetUUIDs:(id)a3 locationText:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (![v8 count] && !-[__CFString length](v9, "length"))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHSearchSuggestion.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"assetUUIDs.count > 0 || locationText.length > 0"}];
  }

  v16.receiver = self;
  v16.super_class = PHSearchSuggestion;
  v10 = [(PHSearchSuggestion *)&v16 init];
  if (v10)
  {
    if ([v8 count])
    {
      v11 = *(v10 + 2);
      *(v10 + 2) = &stru_1F0FC60C8;
    }

    else
    {
      v12 = &stru_1F0FC60C8;
      if (v9)
      {
        v12 = v9;
      }

      v13 = v12;
      v11 = *(v10 + 2);
      *(v10 + 2) = v13;
    }

    objc_storeStrong(v10 + 11, a3);
    *(v10 + 3) = 1;
    *(v10 + 120) = xmmword_19CB29550;
    *(v10 + 40) = xmmword_19CB295C0;
  }

  return v10;
}

@end