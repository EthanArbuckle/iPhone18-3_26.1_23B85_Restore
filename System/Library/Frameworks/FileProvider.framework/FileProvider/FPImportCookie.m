@interface FPImportCookie
- (BOOL)hasExpired;
- (FPImportCookie)initWithCoder:(id)a3;
- (FPImportCookie)initWithURL:(id)a3 error:(id *)a4;
- (id)description;
- (id)providersWithOngoingImport;
- (void)addEntry:(id)a3;
@end

@implementation FPImportCookie

- (FPImportCookie)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v7 = FPGetImportCookieForURL(v6, &v19);
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      if (a4)
      {
        v13 = v8;
        v11 = 0;
        *a4 = v9;
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
      v14 = [v6 path];
      v15 = access([v14 fileSystemRepresentation], 0);

      if (v15 < 0)
      {
        if (a4)
        {
          [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:v6 debugDescription:@"FPImportCookie passed non-existent url"];
          *a4 = v11 = 0;
          goto LABEL_4;
        }

        goto LABEL_14;
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      entries = self->_entries;
      self->_entries = v16;
    }

    v10 = self;
    self = v10;
    goto LABEL_3;
  }

  v10 = v7;
LABEL_3:
  v11 = v10;
LABEL_4:

  return v11;
}

- (FPImportCookie)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FPImportCookie;
  v5 = [(FPImportCookie *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_entries"];
    entries = v5->_entries;
    v5->_entries = v10;
  }

  return v5;
}

- (void)addEntry:(id)a3
{
  entries = self->_entries;
  v4 = a3;
  v5 = [v4 domainPathRelativeToVolumeRoot];
  [(NSMutableDictionary *)entries setObject:v4 forKeyedSubscript:v5];
}

- (BOOL)hasExpired
{
  v23 = *MEMORY[0x1E69E9840];
  ExpirationInterval();
  v4 = v3;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(NSMutableDictionary *)self->_entries allValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * i) creationTime];
        v15 = v7 - v14;
        if (v12 >= v15)
        {
          v12 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableDictionary *)self->_entries allValues];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 displayName];
        v16 = [v15 length];

        if (v16)
        {
          [v14 creationTime];
          if (v8 - v17 < v4)
          {
            v18 = [v14 displayName];
            [v5 addObject:v18];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  v2 = [(FPImportCookie *)self entries];
  v3 = [v2 allValues];
  v4 = [v3 fp_map:&__block_literal_global_16];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %@>", objc_opt_class(), v5];

  return v6;
}

@end