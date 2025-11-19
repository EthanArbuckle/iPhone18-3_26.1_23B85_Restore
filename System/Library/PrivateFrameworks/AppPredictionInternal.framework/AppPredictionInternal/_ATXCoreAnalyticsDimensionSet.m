@interface _ATXCoreAnalyticsDimensionSet
- (BOOL)isEqual:(id)a3;
- (id)_dictionaryKeys;
- (id)copyWithZone:(_NSZone *)a3;
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
  v2 = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_124];

  return v4;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(_ATXCoreAnalyticsDimensionSet *)self _dictionaryKeys];
  v4 = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

        v11 = [v4 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_ATXCoreAnalyticsDimensionSet *)self coreAnalyticsDictionary];
    v8 = [(_ATXCoreAnalyticsDimensionSet *)v6 coreAnalyticsDictionary];

    v9 = [v7 isEqualToDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [_ATXCoreAnalyticsDimensionSet allocWithZone:a3];

  return [(_ATXCoreAnalyticsDimensionSet *)v3 init];
}

@end