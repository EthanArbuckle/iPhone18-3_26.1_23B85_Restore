@interface _LTLocalePair
+ (_LTLocalePair)pairWithIdentifiers:(id)a3;
+ (id)pairNamesForLocaleIdentifiers:(id)a3;
+ (id)pairNamesForLocales:(id)a3;
- (BOOL)isBidirectionalEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPassthrough;
- (BOOL)isVariantPair;
- (_LTLocalePair)initWithCoder:(id)a3;
- (_LTLocalePair)initWithSourceLocale:(id)a3 targetLocale:(id)a4;
- (id)canonicalIdentifier;
- (id)canonicalLocalePair;
- (id)combinedLocaleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identifier;
- (id)oppositeToLocale:(id)a3;
- (id)reversedPair;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLocalePair

- (_LTLocalePair)initWithSourceLocale:(id)a3 targetLocale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _LTLocalePair;
  v9 = [(_LTLocalePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLocale, a3);
    objc_storeStrong(&v10->_targetLocale, a4);
    v11 = v10;
  }

  return v10;
}

- (_LTLocalePair)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTLocalePair;
  v5 = [(_LTLocalePair *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEAF8];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceLocaleIdentifier"];
    v8 = [v6 localeWithLocaleIdentifier:v7];
    sourceLocale = v5->_sourceLocale;
    v5->_sourceLocale = v8;

    v10 = MEMORY[0x277CBEAF8];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetLocaleIdentifier"];
    v12 = [v10 localeWithLocaleIdentifier:v11];
    targetLocale = v5->_targetLocale;
    v5->_targetLocale = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceLocale = self->_sourceLocale;
  v5 = a3;
  v6 = [(NSLocale *)sourceLocale localeIdentifier];
  [v5 encodeObject:v6 forKey:@"sourceLocaleIdentifier"];

  v7 = [(NSLocale *)self->_targetLocale localeIdentifier];
  [v5 encodeObject:v7 forKey:@"targetLocaleIdentifier"];
}

+ (_LTLocalePair)pairWithIdentifiers:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"-"];
  if ([v4 count] == 2)
  {
    v5 = MEMORY[0x277CBEAF8];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 localeWithLocaleIdentifier:v6];

    v8 = MEMORY[0x277CBEAF8];
    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [v8 localeWithLocaleIdentifier:v9];

    v11 = 0;
    if (v7 && v10)
    {
      v11 = [[a1 alloc] initWithSourceLocale:v7 targetLocale:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTLocalePair alloc];
  sourceLocale = self->_sourceLocale;
  targetLocale = self->_targetLocale;

  return [(_LTLocalePair *)v4 initWithSourceLocale:sourceLocale targetLocale:targetLocale];
}

- (id)combinedLocaleIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_LTLocalePair *)self sourceLocale];
  v5 = [v4 _ltLocaleIdentifier];
  v6 = [(_LTLocalePair *)self targetLocale];
  v7 = [v6 _ltLocaleIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (id)reversedPair
{
  v3 = [_LTLocalePair alloc];
  v4 = [(_LTLocalePair *)self targetLocale];
  v5 = [(_LTLocalePair *)self sourceLocale];
  v6 = [(_LTLocalePair *)v3 initWithSourceLocale:v4 targetLocale:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_LTLocalePair *)self sourceLocale];
      v7 = [(_LTLocalePair *)v5 sourceLocale];
      if ([v6 _ltEqual:v7])
      {
        v8 = [(_LTLocalePair *)self targetLocale];
        v9 = [(_LTLocalePair *)v5 targetLocale];
        v10 = [v8 _ltEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isBidirectionalEqual:(id)a3
{
  v4 = a3;
  if ([(_LTLocalePair *)self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_LTLocalePair *)self reversedPair];
    v5 = [v6 isEqual:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(_LTLocalePair *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)oppositeToLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 _ltLocaleIdentifier];
  v6 = [(_LTLocalePair *)self sourceLocale];
  v7 = [v6 _ltLocaleIdentifier];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [(_LTLocalePair *)self targetLocale];
LABEL_5:
    v14 = v9;
    goto LABEL_7;
  }

  v10 = [v4 _ltLocaleIdentifier];
  v11 = [(_LTLocalePair *)self targetLocale];
  v12 = [v11 _ltLocaleIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    v9 = [(_LTLocalePair *)self sourceLocale];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_LTLocalePair *)self sourceLocale];
  v5 = [v4 localeIdentifier];
  v6 = [(_LTLocalePair *)self targetLocale];
  v7 = [v6 localeIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (id)canonicalIdentifier
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(_LTLocalePair *)self sourceLocale];
  v4 = [v3 _ltLocaleIdentifier];
  v15[0] = v4;
  v5 = [(_LTLocalePair *)self targetLocale];
  v6 = [v5 _ltLocaleIdentifier];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [v8 objectAtIndexedSubscript:1];
  v12 = [v9 stringWithFormat:@"%@-%@", v10, v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)canonicalLocalePair
{
  v2 = [(_LTLocalePair *)self canonicalIdentifier];
  v3 = [_LTLocalePair pairWithIdentifiers:v2];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_LTLocalePair *)self sourceLocale];
  v7 = [v6 localeIdentifier];
  v8 = [(_LTLocalePair *)self targetLocale];
  v9 = [v8 localeIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: source:%@ target:%@>", v5, v7, v9];

  return v10;
}

- (BOOL)isPassthrough
{
  v3 = [(_LTLocalePair *)self sourceLocale];
  v4 = [(_LTLocalePair *)self targetLocale];
  v5 = [v3 _ltEqual:v4];

  return v5;
}

- (BOOL)isVariantPair
{
  if ([(_LTLocalePair *)self isPassthrough])
  {
    return 0;
  }

  v4 = [(_LTLocalePair *)self sourceLocale];
  v5 = [v4 languageCode];
  v6 = [(_LTLocalePair *)self targetLocale];
  v7 = [v6 languageCode];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

+ (id)pairNamesForLocales:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) _ltLocaleIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [a1 pairNamesForLocaleIdentifiers:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)pairNamesForLocaleIdentifiers:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [a3 sortedArrayUsingSelector:sel_compare_];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v6 = 0;
    v17 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v20 = v6;
        v21 = v5;
        v9 = [obj subarrayWithRange:{v6, v5}];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, *(*(&v22 + 1) + 8 * j)];
              [v4 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        v6 = v20 + 1;
        v5 = v21 - 1;
      }

      v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

@end