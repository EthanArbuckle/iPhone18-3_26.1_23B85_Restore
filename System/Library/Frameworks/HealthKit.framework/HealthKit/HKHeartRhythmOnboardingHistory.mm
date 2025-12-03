@interface HKHeartRhythmOnboardingHistory
- (BOOL)containsOnboardedVersion:(int64_t)version;
- (HKHeartRhythmOnboardingHistory)initWithDictionary:(id)dictionary;
- (id)_emptyHistory;
- (id)_filterLessThanOrEqualToVersion:(int64_t)version;
- (id)_filterOnlyLessThanVersion:(int64_t)version;
- (id)description;
- (id)filteredHistoryByVersion:(int64_t)version filterType:(int64_t)type;
- (int64_t)maxOnboardedVersion;
@end

@implementation HKHeartRhythmOnboardingHistory

- (HKHeartRhythmOnboardingHistory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = HKHeartRhythmOnboardingHistory;
  v6 = [(HKHeartRhythmOnboardingHistory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, dictionary);
    v7->_count = [dictionaryCopy count];
  }

  return v7;
}

- (id)filteredHistoryByVersion:(int64_t)version filterType:(int64_t)type
{
  if (type == 2)
  {
    v4 = [(HKHeartRhythmOnboardingHistory *)self _filterOnlyLessThanVersion:version];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v4 = [(HKHeartRhythmOnboardingHistory *)self _filterLessThanOrEqualToVersion:version];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (id)_filterLessThanOrEqualToVersion:(int64_t)version
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  dataSource = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(dataSource, "count")}];

  dataSource2 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  allKeys = [dataSource2 allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = allKeys;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if ([v15 integerValue] <= version)
        {
          dataSource3 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
          v17 = [dataSource3 objectForKeyedSubscript:v15];
          [v7 setObject:v17 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = [[HKHeartRhythmOnboardingHistory alloc] initWithDictionary:v7];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_filterOnlyLessThanVersion:(int64_t)version
{
  v27 = *MEMORY[0x1E69E9840];
  dataSource = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  allKeys = [dataSource allKeys];

  if ([allKeys count])
  {
    v7 = MEMORY[0x1E695DF90];
    dataSource2 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
    v9 = [v7 dictionaryWithCapacity:{objc_msgSend(dataSource2, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = allKeys;
    v10 = allKeys;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 integerValue] >= version)
          {
            _emptyHistory = [(HKHeartRhythmOnboardingHistory *)self _emptyHistory];

            goto LABEL_12;
          }

          dataSource3 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
          v17 = [dataSource3 objectForKeyedSubscript:v15];
          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    _emptyHistory = [[HKHeartRhythmOnboardingHistory alloc] initWithDictionary:v9];
LABEL_12:

    allKeys = v21;
  }

  else
  {
    _emptyHistory = [(HKHeartRhythmOnboardingHistory *)self _emptyHistory];
  }

  v19 = *MEMORY[0x1E69E9840];

  return _emptyHistory;
}

- (id)_emptyHistory
{
  v2 = [HKHeartRhythmOnboardingHistory alloc];
  v3 = [(HKHeartRhythmOnboardingHistory *)v2 initWithDictionary:MEMORY[0x1E695E0F8]];

  return v3;
}

- (int64_t)maxOnboardedVersion
{
  v18 = *MEMORY[0x1E69E9840];
  dataSource = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  allKeys = [dataSource allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = allKeys;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    integerValue = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 integerValue] > integerValue)
        {
          integerValue = [v10 integerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    integerValue = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (BOOL)containsOnboardedVersion:(int64_t)version
{
  dataSource = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  allKeys = [dataSource allKeys];

  version = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", version];
  LOBYTE(dataSource) = [allKeys containsObject:version];

  return dataSource;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  dataSource = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v4 = [v2 stringWithFormat:@"%@", dataSource];

  return v4;
}

@end