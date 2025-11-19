@interface DDSearchResultDictionarySection
- (DDSearchResultDictionarySection)initWithSearchString:(id)a3 queryId:(unint64_t)a4;
@end

@implementation DDSearchResultDictionarySection

- (DDSearchResultDictionarySection)initWithSearchString:(id)a3 queryId:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = DDSearchResultDictionarySection;
  v7 = [(DDSearchResultDictionarySection *)&v20 init];
  if (v7)
  {
    v8 = DDLocalizedString();
    [(DDSearchResultDictionarySection *)v7 setTitle:v8];

    [(DDSearchResultDictionarySection *)v7 setBundleIdentifier:@"com.apple.lookup.dictionary"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = DCSSearchFoundationCopyResults();
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * v13) setQueryId:{a4, v16}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(DDSearchResultDictionarySection *)v7 setResults:v9];
    v14 = v7;
  }

  return v7;
}

@end