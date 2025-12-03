@interface FPImportCookie
- (BOOL)hasExpired;
- (FPImportCookie)initWithCoder:(id)coder;
- (FPImportCookie)initWithURL:(id)l error:(id *)error;
- (id)description;
- (id)providersWithOngoingImport;
- (void)addEntry:(id)entry;
@end

@implementation FPImportCookie

- (FPImportCookie)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v7 = FPGetImportCookieForURL(lCopy, &v19);
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      if (error)
      {
        v13 = v8;
        v11 = 0;
        *error = v9;
        goto LABEL_4;
      }

LABEL_14:
      v11 = 0;
      goto LABEL_4;
    }

    v18.receiver = self;
    v18.super_class = FPImportCookie;
    self = [(FPImportCookie *)&v18 init];
    if (self)
    {
      path = [lCopy path];
      v15 = access([path fileSystemRepresentation], 0);

      if (v15 < 0)
      {
        if (error)
        {
          [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:lCopy debugDescription:@"FPImportCookie passed non-existent url"];
          *error = v11 = 0;
          goto LABEL_4;
        }

        goto LABEL_14;
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      entries = self->_entries;
      self->_entries = v16;
    }

    selfCopy = self;
    self = selfCopy;
    goto LABEL_3;
  }

  selfCopy = v7;
LABEL_3:
  v11 = selfCopy;
LABEL_4:

  return v11;
}

- (FPImportCookie)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FPImportCookie;
  v5 = [(FPImportCookie *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_entries"];
    entries = v5->_entries;
    v5->_entries = v10;
  }

  return v5;
}

- (void)addEntry:(id)entry
{
  entries = self->_entries;
  entryCopy = entry;
  domainPathRelativeToVolumeRoot = [entryCopy domainPathRelativeToVolumeRoot];
  [(NSMutableDictionary *)entries setObject:entryCopy forKeyedSubscript:domainPathRelativeToVolumeRoot];
}

- (BOOL)hasExpired
{
  v23 = *MEMORY[0x1E69E9840];
  ExpirationInterval();
  v4 = v3;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v7 = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_entries allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v18 + 1) + 8 * i) creationTime];
        v15 = v7 - v14;
        if (v12 >= v15)
        {
          v12 = v15;
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  result = v12 > v4;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)providersWithOngoingImport
{
  v26 = *MEMORY[0x1E69E9840];
  ExpirationInterval();
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v8 = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [(NSMutableDictionary *)self->_entries allValues];
  v10 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        displayName = [v14 displayName];
        v16 = [displayName length];

        if (v16)
        {
          [v14 creationTime];
          if (v8 - v17 < v4)
          {
            displayName2 = [v14 displayName];
            [v5 addObject:displayName2];
          }
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  entries = [(FPImportCookie *)self entries];
  allValues = [entries allValues];
  v4 = [allValues fp_map:&__block_literal_global_16];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %@>", objc_opt_class(), v5];

  return v6;
}

@end