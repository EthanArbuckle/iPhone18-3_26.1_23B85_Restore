@interface EXExtensionPointCatalog
- (EXExtensionPointCatalog)init;
- (EXExtensionPointCatalog)initWithEnumerator:(id)enumerator;
- (id)extensionPointForIdentifier:(id)identifier;
@end

@implementation EXExtensionPointCatalog

- (EXExtensionPointCatalog)init
{
  v3 = +[EXExtensionPointEnumerator enumeratorIncludingPlaceHolders];
  v4 = [(EXExtensionPointCatalog *)self initWithEnumerator:v3];

  return v4;
}

- (EXExtensionPointCatalog)initWithEnumerator:(id)enumerator
{
  v29 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  v27.receiver = self;
  v27.super_class = EXExtensionPointCatalog;
  v5 = [(EXExtensionPointCatalog *)&v27 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = enumeratorCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = MEMORY[0x1E696AEC0];
          identifier = [v13 identifier];
          v16 = [v14 stringWithFormat:@"%@:%u", identifier, objc_msgSend(v13, "platform")];

          v17 = [v13 copy];
          [v7 setObject:v17 forKeyedSubscript:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v18 = [v7 copy];
    v6 = v22;
    extensionPointByIdentifierPlatform = v22->_extensionPointByIdentifierPlatform;
    v22->_extensionPointByIdentifierPlatform = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)extensionPointForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(EXExtensionPointCatalog *)self extensionPointForIdentifier:identifierCopy platform:dyld_get_active_platform()];

  return v5;
}

@end