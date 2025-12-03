@interface FPSearchQueryDescriptor
- (BOOL)isEqualToItemQueryDescriptor:(id)descriptor;
- (id)_scopes;
- (id)queryStringForMountPoint:(id)point;
- (unint64_t)hash;
- (void)augmentQueryContext:(id)context;
@end

@implementation FPSearchQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  searchQueryString = [(FPSearchQueryDescriptor *)self searchQueryString];
  if (searchQueryString && (v5 = searchQueryString, -[FPSearchQueryDescriptor searchQueryString](self, "searchQueryString"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:&stru_1F1F94B20], v6, v5, (v7 & 1) == 0))
  {
    settings = [(FPSpotlightQueryDescriptor *)self settings];
    allowedFileTypes = [settings allowedFileTypes];

    settings2 = [(FPSpotlightQueryDescriptor *)self settings];
    excludedFileTypes = [settings2 excludedFileTypes];
    v13 = excludedFileTypes;
    v14 = MEMORY[0x1E695E0F0];
    if (excludedFileTypes)
    {
      v14 = excludedFileTypes;
    }

    v15 = v14;

    v16 = *MEMORY[0x1E6982DC8];
    identifier = [*MEMORY[0x1E6982DC8] identifier];
    v18 = [allowedFileTypes containsObject:identifier];

    if ((v18 & 1) == 0)
    {
      identifier2 = [v16 identifier];
      v20 = [allowedFileTypes arrayByAddingObject:identifier2];

      allowedFileTypes = v20;
    }

    v21 = MEMORY[0x1E696AEC0];
    searchQueryString2 = [(FPSearchQueryDescriptor *)self searchQueryString];
    settings3 = [(FPSpotlightQueryDescriptor *)self settings];
    allowedProviders = [settings3 allowedProviders];
    v25 = FPFileProviderOriginatedItemsQueryStringFragment(allowedProviders);
    v26 = FPContentTypeQueryStringForFileTypes(allowedFileTypes, v15);

    v8 = [v21 stringWithFormat:@"((%@) && %@ && %@)", searchQueryString2, v25, v26];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)augmentQueryContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = FPSearchQueryDescriptor;
  [(FPSpotlightQueryDescriptor *)&v12 augmentQueryContext:contextCopy];
  _scopes = [(FPSearchQueryDescriptor *)self _scopes];
  [contextCopy setScopes:_scopes];

  settings = [(FPSpotlightQueryDescriptor *)self settings];
  searchQuery = [settings searchQuery];
  keyboardLanguage = [searchQuery keyboardLanguage];

  if (keyboardLanguage)
  {
    settings2 = [(FPSpotlightQueryDescriptor *)self settings];
    searchQuery2 = [settings2 searchQuery];
    keyboardLanguage2 = [searchQuery2 keyboardLanguage];
    [contextCopy setKeyboardLanguage:keyboardLanguage2];
  }
}

- (id)_scopes
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  searchQuery = [settings searchQuery];
  csQueryScopes = [searchQuery csQueryScopes];

  return csQueryScopes;
}

- (BOOL)isEqualToItemQueryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = FPSearchQueryDescriptor;
  if ([(FPSpotlightQueryDescriptor *)&v11 isEqualToItemQueryDescriptor:descriptorCopy])
  {
    _scopes = [(FPSearchQueryDescriptor *)self _scopes];
    _scopes2 = [descriptorCopy _scopes];
    if (_scopes == _scopes2)
    {
      v9 = 1;
    }

    else
    {
      _scopes3 = [(FPSearchQueryDescriptor *)self _scopes];
      _scopes4 = [descriptorCopy _scopes];
      v9 = [_scopes3 isEqual:_scopes4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(FPSearchQueryDescriptor *)self queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  v4 = [v3 hash];

  desiredCount = [(FPSpotlightQueryDescriptor *)self desiredCount];
  _scopes = [(FPSearchQueryDescriptor *)self _scopes];
  v7 = desiredCount ^ [_scopes hash];

  return v7 ^ v4;
}

@end