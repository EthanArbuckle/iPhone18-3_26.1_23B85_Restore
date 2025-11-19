@interface HKHeartRhythmOnboardingHistory
- (BOOL)containsOnboardedVersion:(int64_t)a3;
- (HKHeartRhythmOnboardingHistory)initWithDictionary:(id)a3;
- (id)_emptyHistory;
- (id)_filterLessThanOrEqualToVersion:(int64_t)a3;
- (id)_filterOnlyLessThanVersion:(int64_t)a3;
- (id)description;
- (id)filteredHistoryByVersion:(int64_t)a3 filterType:(int64_t)a4;
- (int64_t)maxOnboardedVersion;
@end

@implementation HKHeartRhythmOnboardingHistory

- (HKHeartRhythmOnboardingHistory)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHeartRhythmOnboardingHistory;
  v6 = [(HKHeartRhythmOnboardingHistory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v7->_count = [v5 count];
  }

  return v7;
}

- (id)filteredHistoryByVersion:(int64_t)a3 filterType:(int64_t)a4
{
  if (a4 == 2)
  {
    v4 = [(HKHeartRhythmOnboardingHistory *)self _filterOnlyLessThanVersion:a3];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v4 = [(HKHeartRhythmOnboardingHistory *)self _filterLessThanOrEqualToVersion:a3];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (id)_filterLessThanOrEqualToVersion:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v9 = [v8 allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
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
        if ([v15 integerValue] <= a3)
        {
          v16 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
          v17 = [v16 objectForKeyedSubscript:v15];
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

- (id)_filterOnlyLessThanVersion:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v6 = [v5 allKeys];

  if ([v6 count])
  {
    v7 = MEMORY[0x1E695DF90];
    v8 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
    v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v6;
    v10 = v6;
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
          if ([v15 integerValue] >= a3)
          {
            v18 = [(HKHeartRhythmOnboardingHistory *)self _emptyHistory];

            goto LABEL_12;
          }

          v16 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
          v17 = [v16 objectForKeyedSubscript:v15];
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

    v18 = [[HKHeartRhythmOnboardingHistory alloc] initWithDictionary:v9];
LABEL_12:

    v6 = v21;
  }

  else
  {
    v18 = [(HKHeartRhythmOnboardingHistory *)self _emptyHistory];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
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
  v2 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v3 = [v2 allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
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
        if ([v10 integerValue] > v7)
        {
          v7 = [v10 integerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)containsOnboardedVersion:(int64_t)a3
{
  v4 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v5 = [v4 allKeys];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a3];
  LOBYTE(v4) = [v5 containsObject:v6];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKHeartRhythmOnboardingHistory *)self dataSource];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end