@interface _LTPreflightConfiguration
- (NSArray)supportedLocales;
- (NSLocale)effectiveSourceLocale;
- (NSLocale)effectiveTargetLocale;
- (_LTPreflightConfiguration)initWithCoder:(id)a3;
- (_LTPreflightConfiguration)initWithSession:(id)a3 request:(id)a4 supportedLocalePairs:(id)a5;
- (_LTPreflightConfiguration)initWithSourceStrings:(id)a3 supportedLocalePairs:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)nextStep;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTPreflightConfiguration

- (_LTPreflightConfiguration)initWithSourceStrings:(id)a3 supportedLocalePairs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _LTPreflightConfiguration;
  v8 = [(_LTPreflightConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    sourceStrings = v8->_sourceStrings;
    v8->_sourceStrings = v9;

    v11 = [v7 copy];
    supportedLocalePairs = v8->_supportedLocalePairs;
    v8->_supportedLocalePairs = v11;

    v8->_deviceSupportsTranslation = 1;
    v13 = v8;
  }

  return v8;
}

- (int64_t)nextStep
{
  if (![(_LTPreflightConfiguration *)self deviceSupportsTranslation])
  {
    return 2;
  }

  v3 = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  v6 = v5 != 0;

  return v6;
}

- (NSArray)supportedLocales
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_supportedLocalePairs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 sourceLocale];
        [v3 addObject:v10];

        v11 = [v9 targetLocale];
        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 allObjects];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSLocale)effectiveSourceLocale
{
  v3 = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  }

  v6 = v5;

  return v6;
}

- (NSLocale)effectiveTargetLocale
{
  v3 = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v3 = [(_LTPreflightConfiguration *)self lowConfidenceLocales];
  v28 = [v3 _ltCompactMap:&__block_literal_global_8];

  v24 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v22 = NSStringFromClass(v4);
  v27 = [(_LTPreflightConfiguration *)self sourceStrings];
  v20 = [v27 count];
  v26 = [(_LTPreflightConfiguration *)self supportedLocales];
  v19 = [v26 count];
  v25 = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  v17 = [v25 _ltLocaleIdentifier];
  v23 = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  v16 = [v23 _ltLocaleIdentifier];
  v21 = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  v15 = [v21 _ltLocaleIdentifier];
  v18 = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  v5 = [v18 _ltLocaleIdentifier];
  v6 = [(_LTPreflightConfiguration *)self lidUnsupportedLocale];
  v7 = [v6 _ltLocaleIdentifier];
  v8 = [(_LTPreflightConfiguration *)self systemLocale];
  v9 = [v8 _ltLocaleIdentifier];
  if ([(_LTPreflightConfiguration *)self isForDownloadApprovalOnly])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(_LTPreflightConfiguration *)self isHeadless])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(_LTPreflightConfiguration *)self deviceSupportsTranslation])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v24 stringWithFormat:@"<%@: %p number of sourceStrings: %zu; number of supportedLocales: %zu; requestedSource: %@; requestedTarget: %@; resolvedSource: %@; resolvedTarget: %@; lidUnsupportedLocale: %@; systemLocale: %@; lowConfidenceLocales: %@; isForDownloadApprovalOnly: %@; isHeadless: %@; deviceSupportsTranslation: %@>", v22, self, v20, v19, v17, v16, v15, v5, v7, v9, v28, v10, v11, v12];;

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTPreflightConfiguration alloc];
  v5 = [(_LTPreflightConfiguration *)self sourceStrings];
  v6 = [(_LTPreflightConfiguration *)self supportedLocalePairs];
  v7 = [(_LTPreflightConfiguration *)v4 initWithSourceStrings:v5 supportedLocalePairs:v6];

  v8 = [(_LTPreflightConfiguration *)self systemLocale];
  [(_LTPreflightConfiguration *)v7 setSystemLocale:v8];

  v9 = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  [(_LTPreflightConfiguration *)v7 setRequestedSourceLocale:v9];

  v10 = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  [(_LTPreflightConfiguration *)v7 setRequestedTargetLocale:v10];

  v11 = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  [(_LTPreflightConfiguration *)v7 setResolvedSourceLocale:v11];

  v12 = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  [(_LTPreflightConfiguration *)v7 setResolvedTargetLocale:v12];

  v13 = [(_LTPreflightConfiguration *)self lidUnsupportedLocale];
  [(_LTPreflightConfiguration *)v7 setLidUnsupportedLocale:v13];

  v14 = [(_LTPreflightConfiguration *)self lowConfidenceLocales];
  v15 = [v14 copy];
  [(_LTPreflightConfiguration *)v7 setLowConfidenceLocales:v15];

  [(_LTPreflightConfiguration *)v7 setIsForDownloadApprovalOnly:[(_LTPreflightConfiguration *)self isForDownloadApprovalOnly]];
  [(_LTPreflightConfiguration *)v7 setIsHeadless:[(_LTPreflightConfiguration *)self isHeadless]];
  [(_LTPreflightConfiguration *)v7 setDeviceSupportsTranslation:[(_LTPreflightConfiguration *)self deviceSupportsTranslation]];
  v16 = [(_LTPreflightConfiguration *)self selfLoggingID];
  [(_LTPreflightConfiguration *)v7 setSelfLoggingID:v16];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  sourceStrings = self->_sourceStrings;
  v5 = a3;
  [v5 encodeObject:sourceStrings forKey:@"sourceStrings"];
  [v5 encodeObject:self->_supportedLocalePairs forKey:@"supportedLocalePairs"];
  [v5 encodeObject:self->_systemLocale forKey:@"systemLocale"];
  [v5 encodeObject:self->_requestedSourceLocale forKey:@"requestedSourceLocale"];
  [v5 encodeObject:self->_requestedTargetLocale forKey:@"requestedTargetLocale"];
  [v5 encodeObject:self->_resolvedSourceLocale forKey:@"resolvedSourceLocale"];
  [v5 encodeObject:self->_resolvedTargetLocale forKey:@"resolvedTargetLocale"];
  [v5 encodeObject:self->_lidUnsupportedLocale forKey:@"lidUnsupportedLocale"];
  [v5 encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
  [v5 encodeBool:self->_isForDownloadApprovalOnly forKey:@"isForDownloadApprovalOnly"];
  [v5 encodeBool:self->_isHeadless forKey:@"isHeadless"];
  [v5 encodeBool:self->_deviceSupportsTranslation forKey:@"deviceSupportsTranslation"];
  [v5 encodeObject:self->_selfLoggingID forKey:@"selfLoggingID"];
}

- (_LTPreflightConfiguration)initWithCoder:(id)a3
{
  v41[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = _LTPreflightConfiguration;
  v5 = [(_LTPreflightConfiguration *)&v38 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sourceStrings"];
    sourceStrings = v5->_sourceStrings;
    v5->_sourceStrings = v9;

    if (v5->_sourceStrings)
    {
      v11 = MEMORY[0x277CBEB98];
      v40[0] = objc_opt_class();
      v40[1] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v13 = [v11 setWithArray:v12];

      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"supportedLocalePairs"];
      supportedLocalePairs = v5->_supportedLocalePairs;
      v5->_supportedLocalePairs = v14;

      if (v5->_supportedLocalePairs)
      {
        v16 = MEMORY[0x277CBEB98];
        v39[0] = objc_opt_class();
        v39[1] = objc_opt_class();
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        v18 = [v16 setWithArray:v17];

        v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemLocale"];
        systemLocale = v5->_systemLocale;
        v5->_systemLocale = v19;

        v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedSourceLocale"];
        requestedSourceLocale = v5->_requestedSourceLocale;
        v5->_requestedSourceLocale = v21;

        v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedTargetLocale"];
        requestedTargetLocale = v5->_requestedTargetLocale;
        v5->_requestedTargetLocale = v23;

        v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedSourceLocale"];
        resolvedSourceLocale = v5->_resolvedSourceLocale;
        v5->_resolvedSourceLocale = v25;

        v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedTargetLocale"];
        resolvedTargetLocale = v5->_resolvedTargetLocale;
        v5->_resolvedTargetLocale = v27;

        v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lidUnsupportedLocale"];
        lidUnsupportedLocale = v5->_lidUnsupportedLocale;
        v5->_lidUnsupportedLocale = v29;

        v31 = [v4 decodeObjectOfClasses:v18 forKey:@"lowConfidenceLocales"];
        lowConfidenceLocales = v5->_lowConfidenceLocales;
        v5->_lowConfidenceLocales = v31;

        v5->_isForDownloadApprovalOnly = [v4 decodeBoolForKey:@"isForDownloadApprovalOnly"];
        v5->_isHeadless = [v4 decodeBoolForKey:@"isHeadless"];
        v5->_deviceSupportsTranslation = [v4 decodeBoolForKey:@"deviceSupportsTranslation"];
        v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfLoggingID"];
        selfLoggingID = v5->_selfLoggingID;
        v5->_selfLoggingID = v33;

        v35 = v5;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (_LTPreflightConfiguration)initWithSession:(id)a3 request:(id)a4 supportedLocalePairs:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 batch];
  v12 = [v11 _ltCompactMap:&__block_literal_global_11];

  v13 = [(_LTPreflightConfiguration *)self initWithSourceStrings:v12 supportedLocalePairs:v8];
  v14 = v13;
  v15 = [v10 sourceLocale];
  [(_LTPreflightConfiguration *)v14 setRequestedSourceLocale:v15];

  v16 = [v10 targetLocale];

  [(_LTPreflightConfiguration *)v14 setRequestedTargetLocale:v16];
  -[_LTPreflightConfiguration setIsForDownloadApprovalOnly:](v14, "setIsForDownloadApprovalOnly:", [v9 isForDownloadRequest]);
  v17 = [v9 isHeadless];

  [(_LTPreflightConfiguration *)v14 setIsHeadless:v17];
  v18 = [MEMORY[0x277CBEAF8] currentLocale];
  [(_LTPreflightConfiguration *)v14 setSystemLocale:v18];

  return v14;
}

@end