@interface _ATXCoreAnalyticsDimensionSet
- (BOOL)isEqual:(id)equal;
- (id)_dictionaryKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)powerset;
- (unint64_t)hash;
@end

@implementation _ATXCoreAnalyticsDimensionSet

- (id)powerset
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_dictionaryKeys
{
  coreAnalyticsDictionary = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
  allKeys = [coreAnalyticsDictionary allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&__block_literal_global_124];

  return v4;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x277D85DE8];
  _dictionaryKeys = [(_ATXCoreAnalyticsDimensionSet *)self _dictionaryKeys];
  coreAnalyticsDictionary = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = _dictionaryKeys;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [coreAnalyticsDictionary objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v8 = [v11 hash] - v8 + 32 * v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    coreAnalyticsDictionary = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
    coreAnalyticsDictionary2 = [(_ATXCoreAnalyticsDimensionSet *)v6 coreAnalyticsDictionary];

    v9 = [coreAnalyticsDictionary isEqualToDictionary:coreAnalyticsDictionary2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [_ATXCoreAnalyticsDimensionSet allocWithZone:zone];

  return [(_ATXCoreAnalyticsDimensionSet *)v3 init];
}

@end