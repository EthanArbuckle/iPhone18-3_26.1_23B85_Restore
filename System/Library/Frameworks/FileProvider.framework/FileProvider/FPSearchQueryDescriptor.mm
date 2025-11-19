@interface FPSearchQueryDescriptor
- (BOOL)isEqualToItemQueryDescriptor:(id)a3;
- (id)_scopes;
- (id)queryStringForMountPoint:(id)a3;
- (unint64_t)hash;
- (void)augmentQueryContext:(id)a3;
@end

@implementation FPSearchQueryDescriptor

- (id)queryStringForMountPoint:(id)a3
{
  v4 = [(FPSearchQueryDescriptor *)self searchQueryString];
  if (v4 && (v5 = v4, -[FPSearchQueryDescriptor searchQueryString](self, "searchQueryString"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:&stru_1F1F94B20], v6, v5, (v7 & 1) == 0))
  {
    v9 = [(FPSpotlightQueryDescriptor *)self settings];
    v10 = [v9 allowedFileTypes];

    v11 = [(FPSpotlightQueryDescriptor *)self settings];
    v12 = [v11 excludedFileTypes];
    v13 = v12;
    v14 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = *MEMORY[0x1E6982DC8];
    v17 = [*MEMORY[0x1E6982DC8] identifier];
    v18 = [v10 containsObject:v17];

    if ((v18 & 1) == 0)
    {
      v19 = [v16 identifier];
      v20 = [v10 arrayByAddingObject:v19];

      v10 = v20;
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = [(FPSearchQueryDescriptor *)self searchQueryString];
    v23 = [(FPSpotlightQueryDescriptor *)self settings];
    v24 = [v23 allowedProviders];
    v25 = FPFileProviderOriginatedItemsQueryStringFragment(v24);
    v26 = FPContentTypeQueryStringForFileTypes(v10, v15);

    v8 = [v21 stringWithFormat:@"((%@) && %@ && %@)", v22, v25, v26];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)augmentQueryContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FPSearchQueryDescriptor;
  [(FPSpotlightQueryDescriptor *)&v12 augmentQueryContext:v4];
  v5 = [(FPSearchQueryDescriptor *)self _scopes];
  [v4 setScopes:v5];

  v6 = [(FPSpotlightQueryDescriptor *)self settings];
  v7 = [v6 searchQuery];
  v8 = [v7 keyboardLanguage];

  if (v8)
  {
    v9 = [(FPSpotlightQueryDescriptor *)self settings];
    v10 = [v9 searchQuery];
    v11 = [v10 keyboardLanguage];
    [v4 setKeyboardLanguage:v11];
  }
}

- (id)_scopes
{
  v2 = [(FPSpotlightQueryDescriptor *)self settings];
  v3 = [v2 searchQuery];
  v4 = [v3 csQueryScopes];

  return v4;
}

- (BOOL)isEqualToItemQueryDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPSearchQueryDescriptor;
  if ([(FPSpotlightQueryDescriptor *)&v11 isEqualToItemQueryDescriptor:v4])
  {
    v5 = [(FPSearchQueryDescriptor *)self _scopes];
    v6 = [v4 _scopes];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(FPSearchQueryDescriptor *)self _scopes];
      v8 = [v4 _scopes];
      v9 = [v7 isEqual:v8];
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

  v5 = [(FPSpotlightQueryDescriptor *)self desiredCount];
  v6 = [(FPSearchQueryDescriptor *)self _scopes];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v4;
}

@end