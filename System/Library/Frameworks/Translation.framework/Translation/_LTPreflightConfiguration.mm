@interface _LTPreflightConfiguration
- (NSArray)supportedLocales;
- (NSLocale)effectiveSourceLocale;
- (NSLocale)effectiveTargetLocale;
- (_LTPreflightConfiguration)initWithCoder:(id)coder;
- (_LTPreflightConfiguration)initWithSession:(id)session request:(id)request supportedLocalePairs:(id)pairs;
- (_LTPreflightConfiguration)initWithSourceStrings:(id)strings supportedLocalePairs:(id)pairs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)nextStep;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTPreflightConfiguration

- (_LTPreflightConfiguration)initWithSourceStrings:(id)strings supportedLocalePairs:(id)pairs
{
  stringsCopy = strings;
  pairsCopy = pairs;
  v15.receiver = self;
  v15.super_class = _LTPreflightConfiguration;
  v8 = [(_LTPreflightConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [stringsCopy copy];
    sourceStrings = v8->_sourceStrings;
    v8->_sourceStrings = v9;

    v11 = [pairsCopy copy];
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

  resolvedSourceLocale = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  if (!resolvedSourceLocale)
  {
    return 0;
  }

  v4 = resolvedSourceLocale;
  resolvedTargetLocale = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  v6 = resolvedTargetLocale != 0;

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
        sourceLocale = [v9 sourceLocale];
        [v3 addObject:sourceLocale];

        targetLocale = [v9 targetLocale];
        [v3 addObject:targetLocale];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v13 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (NSLocale)effectiveSourceLocale
{
  resolvedSourceLocale = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  v4 = resolvedSourceLocale;
  if (resolvedSourceLocale)
  {
    requestedSourceLocale = resolvedSourceLocale;
  }

  else
  {
    requestedSourceLocale = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  }

  v6 = requestedSourceLocale;

  return v6;
}

- (NSLocale)effectiveTargetLocale
{
  resolvedTargetLocale = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  v4 = resolvedTargetLocale;
  if (resolvedTargetLocale)
  {
    requestedTargetLocale = resolvedTargetLocale;
  }

  else
  {
    requestedTargetLocale = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  }

  v6 = requestedTargetLocale;

  return v6;
}

- (id)description
{
  lowConfidenceLocales = [(_LTPreflightConfiguration *)self lowConfidenceLocales];
  v28 = [lowConfidenceLocales _ltCompactMap:&__block_literal_global_8];

  v24 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v22 = NSStringFromClass(v4);
  sourceStrings = [(_LTPreflightConfiguration *)self sourceStrings];
  v20 = [sourceStrings count];
  supportedLocales = [(_LTPreflightConfiguration *)self supportedLocales];
  v19 = [supportedLocales count];
  requestedSourceLocale = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  _ltLocaleIdentifier = [requestedSourceLocale _ltLocaleIdentifier];
  requestedTargetLocale = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  _ltLocaleIdentifier2 = [requestedTargetLocale _ltLocaleIdentifier];
  resolvedSourceLocale = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  _ltLocaleIdentifier3 = [resolvedSourceLocale _ltLocaleIdentifier];
  resolvedTargetLocale = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  _ltLocaleIdentifier4 = [resolvedTargetLocale _ltLocaleIdentifier];
  lidUnsupportedLocale = [(_LTPreflightConfiguration *)self lidUnsupportedLocale];
  _ltLocaleIdentifier5 = [lidUnsupportedLocale _ltLocaleIdentifier];
  systemLocale = [(_LTPreflightConfiguration *)self systemLocale];
  _ltLocaleIdentifier6 = [systemLocale _ltLocaleIdentifier];
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

  v13 = [v24 stringWithFormat:@"<%@: %p number of sourceStrings: %zu; number of supportedLocales: %zu; requestedSource: %@; requestedTarget: %@; resolvedSource: %@; resolvedTarget: %@; lidUnsupportedLocale: %@; systemLocale: %@; lowConfidenceLocales: %@; isForDownloadApprovalOnly: %@; isHeadless: %@; deviceSupportsTranslation: %@>", v22, self, v20, v19, _ltLocaleIdentifier, _ltLocaleIdentifier2, _ltLocaleIdentifier3, _ltLocaleIdentifier4, _ltLocaleIdentifier5, _ltLocaleIdentifier6, v28, v10, v11, v12];;

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTPreflightConfiguration alloc];
  sourceStrings = [(_LTPreflightConfiguration *)self sourceStrings];
  supportedLocalePairs = [(_LTPreflightConfiguration *)self supportedLocalePairs];
  v7 = [(_LTPreflightConfiguration *)v4 initWithSourceStrings:sourceStrings supportedLocalePairs:supportedLocalePairs];

  systemLocale = [(_LTPreflightConfiguration *)self systemLocale];
  [(_LTPreflightConfiguration *)v7 setSystemLocale:systemLocale];

  requestedSourceLocale = [(_LTPreflightConfiguration *)self requestedSourceLocale];
  [(_LTPreflightConfiguration *)v7 setRequestedSourceLocale:requestedSourceLocale];

  requestedTargetLocale = [(_LTPreflightConfiguration *)self requestedTargetLocale];
  [(_LTPreflightConfiguration *)v7 setRequestedTargetLocale:requestedTargetLocale];

  resolvedSourceLocale = [(_LTPreflightConfiguration *)self resolvedSourceLocale];
  [(_LTPreflightConfiguration *)v7 setResolvedSourceLocale:resolvedSourceLocale];

  resolvedTargetLocale = [(_LTPreflightConfiguration *)self resolvedTargetLocale];
  [(_LTPreflightConfiguration *)v7 setResolvedTargetLocale:resolvedTargetLocale];

  lidUnsupportedLocale = [(_LTPreflightConfiguration *)self lidUnsupportedLocale];
  [(_LTPreflightConfiguration *)v7 setLidUnsupportedLocale:lidUnsupportedLocale];

  lowConfidenceLocales = [(_LTPreflightConfiguration *)self lowConfidenceLocales];
  v15 = [lowConfidenceLocales copy];
  [(_LTPreflightConfiguration *)v7 setLowConfidenceLocales:v15];

  [(_LTPreflightConfiguration *)v7 setIsForDownloadApprovalOnly:[(_LTPreflightConfiguration *)self isForDownloadApprovalOnly]];
  [(_LTPreflightConfiguration *)v7 setIsHeadless:[(_LTPreflightConfiguration *)self isHeadless]];
  [(_LTPreflightConfiguration *)v7 setDeviceSupportsTranslation:[(_LTPreflightConfiguration *)self deviceSupportsTranslation]];
  selfLoggingID = [(_LTPreflightConfiguration *)self selfLoggingID];
  [(_LTPreflightConfiguration *)v7 setSelfLoggingID:selfLoggingID];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  sourceStrings = self->_sourceStrings;
  coderCopy = coder;
  [coderCopy encodeObject:sourceStrings forKey:@"sourceStrings"];
  [coderCopy encodeObject:self->_supportedLocalePairs forKey:@"supportedLocalePairs"];
  [coderCopy encodeObject:self->_systemLocale forKey:@"systemLocale"];
  [coderCopy encodeObject:self->_requestedSourceLocale forKey:@"requestedSourceLocale"];
  [coderCopy encodeObject:self->_requestedTargetLocale forKey:@"requestedTargetLocale"];
  [coderCopy encodeObject:self->_resolvedSourceLocale forKey:@"resolvedSourceLocale"];
  [coderCopy encodeObject:self->_resolvedTargetLocale forKey:@"resolvedTargetLocale"];
  [coderCopy encodeObject:self->_lidUnsupportedLocale forKey:@"lidUnsupportedLocale"];
  [coderCopy encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
  [coderCopy encodeBool:self->_isForDownloadApprovalOnly forKey:@"isForDownloadApprovalOnly"];
  [coderCopy encodeBool:self->_isHeadless forKey:@"isHeadless"];
  [coderCopy encodeBool:self->_deviceSupportsTranslation forKey:@"deviceSupportsTranslation"];
  [coderCopy encodeObject:self->_selfLoggingID forKey:@"selfLoggingID"];
}

- (_LTPreflightConfiguration)initWithCoder:(id)coder
{
  v41[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sourceStrings"];
    sourceStrings = v5->_sourceStrings;
    v5->_sourceStrings = v9;

    if (v5->_sourceStrings)
    {
      v11 = MEMORY[0x277CBEB98];
      v40[0] = objc_opt_class();
      v40[1] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v13 = [v11 setWithArray:v12];

      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"supportedLocalePairs"];
      supportedLocalePairs = v5->_supportedLocalePairs;
      v5->_supportedLocalePairs = v14;

      if (v5->_supportedLocalePairs)
      {
        v16 = MEMORY[0x277CBEB98];
        v39[0] = objc_opt_class();
        v39[1] = objc_opt_class();
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        v18 = [v16 setWithArray:v17];

        v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemLocale"];
        systemLocale = v5->_systemLocale;
        v5->_systemLocale = v19;

        v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedSourceLocale"];
        requestedSourceLocale = v5->_requestedSourceLocale;
        v5->_requestedSourceLocale = v21;

        v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedTargetLocale"];
        requestedTargetLocale = v5->_requestedTargetLocale;
        v5->_requestedTargetLocale = v23;

        v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedSourceLocale"];
        resolvedSourceLocale = v5->_resolvedSourceLocale;
        v5->_resolvedSourceLocale = v25;

        v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedTargetLocale"];
        resolvedTargetLocale = v5->_resolvedTargetLocale;
        v5->_resolvedTargetLocale = v27;

        v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lidUnsupportedLocale"];
        lidUnsupportedLocale = v5->_lidUnsupportedLocale;
        v5->_lidUnsupportedLocale = v29;

        v31 = [coderCopy decodeObjectOfClasses:v18 forKey:@"lowConfidenceLocales"];
        lowConfidenceLocales = v5->_lowConfidenceLocales;
        v5->_lowConfidenceLocales = v31;

        v5->_isForDownloadApprovalOnly = [coderCopy decodeBoolForKey:@"isForDownloadApprovalOnly"];
        v5->_isHeadless = [coderCopy decodeBoolForKey:@"isHeadless"];
        v5->_deviceSupportsTranslation = [coderCopy decodeBoolForKey:@"deviceSupportsTranslation"];
        v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfLoggingID"];
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

- (_LTPreflightConfiguration)initWithSession:(id)session request:(id)request supportedLocalePairs:(id)pairs
{
  pairsCopy = pairs;
  requestCopy = request;
  sessionCopy = session;
  batch = [requestCopy batch];
  v12 = [batch _ltCompactMap:&__block_literal_global_11];

  v13 = [(_LTPreflightConfiguration *)self initWithSourceStrings:v12 supportedLocalePairs:pairsCopy];
  v14 = v13;
  sourceLocale = [sessionCopy sourceLocale];
  [(_LTPreflightConfiguration *)v14 setRequestedSourceLocale:sourceLocale];

  targetLocale = [sessionCopy targetLocale];

  [(_LTPreflightConfiguration *)v14 setRequestedTargetLocale:targetLocale];
  -[_LTPreflightConfiguration setIsForDownloadApprovalOnly:](v14, "setIsForDownloadApprovalOnly:", [requestCopy isForDownloadRequest]);
  isHeadless = [requestCopy isHeadless];

  [(_LTPreflightConfiguration *)v14 setIsHeadless:isHeadless];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [(_LTPreflightConfiguration *)v14 setSystemLocale:currentLocale];

  return v14;
}

@end