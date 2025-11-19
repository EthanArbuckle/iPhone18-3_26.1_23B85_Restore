@interface NSFileProviderSearchQuery
+ (id)newSearchContainerItemIdentifier;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFileProviderSearchQuery:(id)a3;
- (NSArray)csQueryScopes;
- (NSFileProviderSearchQuery)initWithCoder:(id)a3;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)a3;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)a3 alternateItemID:(id)a4;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemIdentifier:(id)a3 alternateItemIdentifier:(id)a4 providerDomainID:(id)a5 searchContainerItemIdentifier:(id)a6;
- (NSFileProviderSearchQuery)initWithSpotlightQueryString:(id)a3 searchScope:(id)a4 searchContainerItemIdentifier:(id)a5;
- (NSSet)allowedPathExtensions;
- (id)allowedContentTypesPredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)filenamePredicate;
- (id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAllowedContentTypes:(id)a3;
- (void)setContent:(id)a3;
- (void)setFilename:(id)a3;
- (void)setKeyboardLanguage:(id)a3;
- (void)setProviderDomainID:(id)a3;
- (void)setScopeFragment:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setSpotlightQueryString:(id)a3;
- (void)setUserQueryString:(id)a3;
@end

@implementation NSFileProviderSearchQuery

- (NSSet)allowedPathExtensions
{
  v38 = *MEMORY[0x1E69E9840];
  cachedExtensions = self->_cachedExtensions;
  if (!cachedExtensions)
  {
    v31 = [MEMORY[0x1E695DFA8] set];
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = MEMORY[0x1E695DFA8];
    v28 = self;
    v6 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
    v7 = [v5 setWithSet:v6];

    v30 = [MEMORY[0x1E695DFA8] set];
    v8 = [v7 anyObject];
    if (v8)
    {
      v9 = v8;
      v29 = *MEMORY[0x1E6982C48];
      do
      {
        [v7 removeObject:v9];
        [v4 addObject:v9];
        v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:v9];
        if (v10)
        {
          [(NSSet *)v30 addObject:v10];
          v11 = [v10 tags];
          v12 = [v11 objectForKey:v29];
          [v31 addObjectsFromArray:v12];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = v10;
          v13 = [v10 _childTypes];
          v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v34;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v33 + 1) + 8 * i);
                v19 = [v18 identifier];
                v20 = [v4 containsObject:v19];

                if ((v20 & 1) == 0)
                {
                  v21 = [v18 identifier];
                  [v7 addObject:v21];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v15);
          }

          v10 = v32;
        }

        v22 = [v7 anyObject];

        v9 = v22;
      }

      while (v22);
    }

    v23 = [v31 copy];
    v24 = v28->_cachedExtensions;
    v28->_cachedExtensions = v23;

    allowedUTTypes = v28->_allowedUTTypes;
    v28->_allowedUTTypes = v30;

    cachedExtensions = v28->_cachedExtensions;
  }

  v26 = *MEMORY[0x1E69E9840];

  return cachedExtensions;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 providerDomainID];

  v7 = [(NSFileProviderSearchQuery *)self initWithSearchScopedToItemIdentifier:v5 alternateItemIdentifier:0 providerDomainID:v6 searchContainerItemIdentifier:0];
  return v7;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)a3 alternateItemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"NSFileProviderSearchQuery.m" lineNumber:130 description:@"alternate item id defined without a main id"];
    }

    v10 = [v7 providerDomainID];
    v11 = [v8 providerDomainID];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [v7 providerDomainID];
      v14 = [v8 providerDomainID];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        [(NSFileProviderSearchQuery(NSFileProviderSearch_Private) *)v7 initWithSearchScopedToItemID:v8 alternateItemID:a2, self];
      }
    }
  }

  v16 = [v7 identifier];
  v17 = [v8 identifier];
  v18 = [v7 providerDomainID];
  v19 = [(NSFileProviderSearchQuery *)self initWithSearchScopedToItemIdentifier:v16 alternateItemIdentifier:v17 providerDomainID:v18 searchContainerItemIdentifier:0];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSFileProviderSearchQuery *)self isEqualToFileProviderSearchQuery:v4];
  }

  return v5;
}

- (BOOL)isEqualToFileProviderSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(NSFileProviderSearchQuery *)self shouldPerformServerSearch];
  if (v5 == [v4 shouldPerformServerSearch])
  {
    v6 = [(NSFileProviderSearchQuery *)self shouldPerformThirdPartyServerSearch];
    if (v6 == [v4 shouldPerformThirdPartyServerSearch])
    {
      v7 = [(NSFileProviderSearchQuery *)self shouldPerformSemanticSearch];
      if (v7 == [v4 shouldPerformSemanticSearch])
      {
        v8 = [(NSFileProviderSearchQuery *)self avoidCoreSpotlightSearch];
        if (v8 == [v4 avoidCoreSpotlightSearch])
        {
          v9 = [(NSFileProviderSearchQuery *)self trashedItemsMembership];
          if (v9 == [v4 trashedItemsMembership])
          {
            v10 = [(NSFileProviderSearchQuery *)self filename];
            v11 = [v4 filename];
            if (v10 != v11)
            {
              v12 = [(NSFileProviderSearchQuery *)self filename];
              v63 = [v4 filename];
              v64 = v12;
              if (![v12 isEqual:?])
              {
                v13 = 0;
                goto LABEL_44;
              }
            }

            v15 = [(NSFileProviderSearchQuery *)self userQueryString];
            v16 = [v4 userQueryString];
            if (v15 != v16)
            {
              v17 = [(NSFileProviderSearchQuery *)self userQueryString];
              v18 = [v4 userQueryString];
              if (![v17 isEqual:v18])
              {
                v13 = 0;
LABEL_42:

LABEL_43:
                if (v10 == v11)
                {
LABEL_45:

                  goto LABEL_10;
                }

LABEL_44:

                goto LABEL_45;
              }

              v60 = v18;
              v61 = v17;
            }

            v19 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
            v20 = [v4 allowedContentTypes];
            v62 = v19;
            v21 = v19 == v20;
            v22 = v20;
            if (!v21)
            {
              v23 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
              v57 = [v4 allowedContentTypes];
              v58 = v23;
              if (![v23 isEqual:?])
              {
                v13 = 0;
                v24 = v22;
                v25 = v62;
LABEL_40:

LABEL_41:
                v17 = v61;
                v18 = v60;
                if (v15 == v16)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            v26 = [(NSFileProviderSearchQuery *)self scopeFragment];
            v27 = [v4 scopeFragment];
            v59 = v26;
            v21 = v26 == v27;
            v28 = v27;
            if (!v21)
            {
              v29 = [(NSFileProviderSearchQuery *)self scopeFragment];
              v53 = [v4 scopeFragment];
              v54 = v29;
              if (![v29 isEqual:?])
              {
                v24 = v22;
                v13 = 0;
                v30 = v59;
LABEL_38:

LABEL_39:
                v25 = v62;
                if (v62 == v24)
                {
                  goto LABEL_41;
                }

                goto LABEL_40;
              }
            }

            v31 = [(NSFileProviderSearchQuery *)self providerDomainID];
            v32 = [v4 providerDomainID];
            v55 = v31;
            v56 = v28;
            v21 = v31 == v32;
            v33 = v32;
            if (!v21)
            {
              v34 = [(NSFileProviderSearchQuery *)self providerDomainID];
              v49 = [v4 providerDomainID];
              v50 = v34;
              if (![v34 isEqual:?])
              {
                v13 = 0;
                v35 = v55;
                goto LABEL_35;
              }
            }

            v36 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
            v51 = [v4 keyboardLanguage];
            v52 = v33;
            if (v36 == v51)
            {
              v48 = v36;
            }

            else
            {
              v37 = v22;
              v38 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
              v46 = [v4 keyboardLanguage];
              v47 = v38;
              if (![v38 isEqual:?])
              {
                v13 = 0;
                v22 = v37;
                v44 = v51;
                v33 = v52;
                goto LABEL_33;
              }

              v48 = v36;
              v22 = v37;
              v33 = v52;
            }

            v39 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
            v40 = [v4 scopedToItemIdentifier];
            v41 = v40;
            if (v39 == v40)
            {

              v13 = 1;
            }

            else
            {
              v42 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
              [v4 scopedToItemIdentifier];
              v43 = v45 = v22;
              v13 = [v42 isEqual:v43];

              v22 = v45;
              v33 = v52;
            }

            v36 = v48;
            v44 = v51;
            if (v48 == v51)
            {
LABEL_34:

              v35 = v55;
              if (v55 == v33)
              {
                v24 = v22;
LABEL_37:

                v30 = v59;
                v28 = v56;
                if (v59 == v56)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }

LABEL_35:
              v24 = v22;

              goto LABEL_37;
            }

LABEL_33:

            goto LABEL_34;
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (unint64_t)hash
{
  if (self->_shouldPerformServerSearch)
  {
    v3 = 31;
  }

  else
  {
    v3 = 13;
  }

  if (self->_shouldPerformThirdPartyServerSearch)
  {
    v4 = 31;
  }

  else
  {
    v4 = 13;
  }

  v17 = v4 ^ v3;
  if (self->_shouldPerformSemanticSearch)
  {
    v5 = 31;
  }

  else
  {
    v5 = 13;
  }

  if (self->_avoidCoreSpotlightSearch)
  {
    v6 = 31;
  }

  else
  {
    v6 = 13;
  }

  trashedItemsMembership = self->_trashedItemsMembership;
  v8 = [(NSString *)self->_filename hash];
  v9 = [(NSString *)self->_userQueryString hash];
  v10 = [(NSSet *)self->_allowedContentTypes hash];
  v11 = [(NSString *)self->_scopeFragment hash];
  v12 = [(NSString *)self->_providerDomainID hash];
  v13 = [(NSString *)self->_keyboardLanguage hash];
  v14 = [(NSString *)self->_scopedToItemIdentifier hash];
  return v17 ^ v16 ^ trashedItemsMembership ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ [(NSString *)self->_alternateScopeToItemIdentifier hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v8 = v4[15];
  v4[15] = v7;

  v9 = [(NSFileProviderSearchQuery *)self alternateScopeToItemIdentifier];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSFileProviderSearchQuery *)self searchContainerItemIdentifier];
  v12 = v4[16];
  v4[16] = v11;

  v13 = [(NSFileProviderSearchQuery *)self filename];
  [v4 setFilename:v13];

  v14 = [(NSFileProviderSearchQuery *)self userQueryString];
  [v4 setUserQueryString:v14];

  v15 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
  [v4 setAllowedContentTypes:v15];

  [v4 setShouldPerformServerSearch:{-[NSFileProviderSearchQuery shouldPerformServerSearch](self, "shouldPerformServerSearch")}];
  [v4 setShouldPerformThirdPartyServerSearch:{-[NSFileProviderSearchQuery shouldPerformThirdPartyServerSearch](self, "shouldPerformThirdPartyServerSearch")}];
  [v4 setShouldPerformSemanticSearch:{-[NSFileProviderSearchQuery shouldPerformSemanticSearch](self, "shouldPerformSemanticSearch")}];
  [v4 setAvoidCoreSpotlightSearch:{-[NSFileProviderSearchQuery avoidCoreSpotlightSearch](self, "avoidCoreSpotlightSearch")}];
  [v4 setTrashedItemsMembership:{-[NSFileProviderSearchQuery trashedItemsMembership](self, "trashedItemsMembership")}];
  v16 = [(NSFileProviderSearchQuery *)self scopeFragment];
  [v4 setScopeFragment:v16];

  v17 = [(NSFileProviderSearchQuery *)self providerDomainID];
  [v4 setProviderDomainID:v17];

  v18 = [(NSFileProviderSearchQuery *)self spotlightQueryString];
  [v4 setSpotlightQueryString:v18];

  return v4;
}

- (NSFileProviderSearchQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = NSFileProviderSearchQuery;
  v5 = [(NSFileProviderSearchQuery *)&v41 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
  v7 = *(v5 + 13);
  *(v5 + 13) = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userQueryString"];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v40 = objc_opt_class();
  v12 = [v10 setWithObjects:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_allowedContentTypes"];
  v14 = *(v5 + 14);
  *(v5 + 14) = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardLanguage"];
  v16 = *(v5 + 5);
  *(v5 + 5) = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scopedToItemIdentifier"];
  v18 = *(v5 + 15);
  *(v5 + 15) = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alternateScopeToItemIdentifier"];
  v20 = *(v5 + 6);
  *(v5 + 6) = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_searchContainerItemIdentifier"];
  v22 = *(v5 + 16);
  *(v5 + 16) = v21;

  if (*(v5 + 15) && *(v5 + 16))
  {
    *(v5 + 8) = [v4 decodeBoolForKey:@"_shouldPerformServerSearch"];
    *(v5 + 9) = [v4 decodeBoolForKey:@"_shouldPerformThirdPartyServerSearch"];
    *(v5 + 10) = [v4 decodeBoolForKey:@"_shouldPerformSemanticSearch"];
    *(v5 + 11) = [v4 decodeBoolForKey:@"_avoidCoreSpotlightSearch"];
    *(v5 + 11) = [v4 decodeIntegerForKey:@"_trashedItemsMembership"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scopeFragment"];
    v24 = *(v5 + 2);
    *(v5 + 2) = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_providerDomainID"];
    v26 = *(v5 + 7);
    *(v5 + 7) = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_spotlightQueryString"];
    v28 = *(v5 + 10);
    *(v5 + 10) = v27;

LABEL_5:
    v29 = v5;
    goto LABEL_11;
  }

  v30 = fp_current_or_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(NSFileProviderSearchQuery(NSFileProviderSearch_Private) *)v5 + 15 initWithCoder:v30];
  }

  fp_simulate_crash(@"can't create instance from coder, required nonnull properties missing", v31, v32, v33, v34, v35, v36, v37, v40);
  v38 = fp_current_or_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    [NSFileProviderSearchQuery(NSFileProviderSearch_Private) initWithCoder:v38];
  }

  v29 = 0;
LABEL_11:

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  filename = self->_filename;
  v5 = a3;
  [v5 encodeObject:filename forKey:@"_filename"];
  [v5 encodeObject:self->_userQueryString forKey:@"_userQueryString"];
  [v5 encodeObject:self->_allowedContentTypes forKey:@"_allowedContentTypes"];
  [v5 encodeObject:self->_keyboardLanguage forKey:@"_keyboardLanguage"];
  [v5 encodeObject:self->_scopedToItemIdentifier forKey:@"_scopedToItemIdentifier"];
  [v5 encodeObject:self->_alternateScopeToItemIdentifier forKey:@"_alternateScopeToItemIdentifier"];
  [v5 encodeObject:self->_searchContainerItemIdentifier forKey:@"_searchContainerItemIdentifier"];
  [v5 encodeBool:self->_shouldPerformServerSearch forKey:@"_shouldPerformServerSearch"];
  [v5 encodeBool:self->_shouldPerformThirdPartyServerSearch forKey:@"_shouldPerformThirdPartyServerSearch"];
  [v5 encodeBool:self->_shouldPerformSemanticSearch forKey:@"_shouldPerformSemanticSearch"];
  [v5 encodeBool:self->_avoidCoreSpotlightSearch forKey:@"_avoidCoreSpotlightSearch"];
  [v5 encodeInteger:self->_trashedItemsMembership forKey:@"_trashedItemsMembership"];
  [v5 encodeObject:self->_scopeFragment forKey:@"_scopeFragment"];
  [v5 encodeObject:self->_providerDomainID forKey:@"_providerDomainID"];
  [v5 encodeObject:self->_spotlightQueryString forKey:@"_spotlightQueryString"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(NSFileProviderSearchQuery *)self searchContainerItemIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p id:%@", v4, self, v5];

  v7 = [(NSFileProviderSearchQuery *)self filename];

  if (v7)
  {
    v8 = [(NSFileProviderSearchQuery *)self filename];
    [v6 appendFormat:@" filename:'%@'", v8];
  }

  v9 = [(NSFileProviderSearchQuery *)self allowedContentTypes];

  if (v9)
  {
    v10 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
    [v6 appendFormat:@" uti(s):'%@'", v10];
  }

  v11 = [(NSFileProviderSearchQuery *)self keyboardLanguage];

  if (v11)
  {
    v12 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
    [v6 appendFormat:@" kb language:'%@'", v12];
  }

  v13 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v14 = [v13 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

  if (v14)
  {
    [v6 appendString:@" scope:root"];
  }

  else
  {
    v15 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
    [v6 appendFormat:@" scope:%@", v15];
  }

  v16 = [(NSFileProviderSearchQuery *)self providerDomainID];

  if (v16)
  {
    v17 = [(NSFileProviderSearchQuery *)self providerDomainID];
    v18 = [v17 fp_obfuscatedFilename];
    [v6 appendFormat:@" provider:%@", v18];
  }

  [v6 appendFormat:@" trashedItemsMembership:%ld", self->_trashedItemsMembership];
  [v6 appendString:@">"];

  return v6;
}

- (void)setSearchString:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Deprecated %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setUserQueryString:(id)a3
{
  v4 = [a3 copy];
  userQueryString = self->_userQueryString;
  self->_userQueryString = v4;

  MEMORY[0x1EEE66BB8](v4, userQueryString);
}

- (void)setFilename:(id)a3
{
  v4 = [a3 copy];
  filename = self->_filename;
  self->_filename = v4;

  MEMORY[0x1EEE66BB8](v4, filename);
}

- (void)setContent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Deprecated %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setAllowedContentTypes:(id)a3
{
  v4 = [a3 copy];
  allowedContentTypes = self->_allowedContentTypes;
  self->_allowedContentTypes = v4;

  cachedExtensions = self->_cachedExtensions;
  self->_cachedExtensions = 0;
}

- (void)setKeyboardLanguage:(id)a3
{
  v4 = [a3 copy];
  keyboardLanguage = self->_keyboardLanguage;
  self->_keyboardLanguage = v4;

  MEMORY[0x1EEE66BB8](v4, keyboardLanguage);
}

- (void)setScopeFragment:(id)a3
{
  v4 = [a3 copy];
  scopeFragment = self->_scopeFragment;
  self->_scopeFragment = v4;

  MEMORY[0x1EEE66BB8](v4, scopeFragment);
}

- (void)setProviderDomainID:(id)a3
{
  v4 = [a3 copy];
  providerDomainID = self->_providerDomainID;
  self->_providerDomainID = v4;

  MEMORY[0x1EEE66BB8](v4, providerDomainID);
}

- (void)setSpotlightQueryString:(id)a3
{
  v4 = [a3 copy];
  spotlightQueryString = self->_spotlightQueryString;
  self->_spotlightQueryString = v4;

  MEMORY[0x1EEE66BB8](v4, spotlightQueryString);
}

- (id)filenamePredicate
{
  v4 = [(NSFileProviderSearchQuery *)self filename];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
    v7 = FPSpotlightQueryStringForFilename(v5, v6);
    v8 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke;
    v12[3] = &unk_1E793D9D8;
    v13 = v7;
    v14 = a2;
    v12[4] = self;
    v9 = v7;
    v10 = [v8 predicateWithBlock:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v10;
}

uint64_t __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_1(a1);
    }
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v9 = get_MDCreateSimpleQueryEvaluatorSymbolLoc_ptr;
  v19 = get_MDCreateSimpleQueryEvaluatorSymbolLoc_ptr;
  if (!get_MDCreateSimpleQueryEvaluatorSymbolLoc_ptr)
  {
    v10 = MobileSpotlightIndexLibrary();
    v17[3] = dlsym(v10, "_MDCreateSimpleQueryEvaluator");
    get_MDCreateSimpleQueryEvaluatorSymbolLoc_ptr = v17[3];
    v9 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v9)
  {
    __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_3();
  }

  v11 = v9(v8, _FPItemAttributeValueFunction);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v12 = get_MDSimpleQueryObjectMatchesSymbolLoc_ptr;
  v19 = get_MDSimpleQueryObjectMatchesSymbolLoc_ptr;
  if (!get_MDSimpleQueryObjectMatchesSymbolLoc_ptr)
  {
    v13 = MobileSpotlightIndexLibrary();
    v17[3] = dlsym(v13, "_MDSimpleQueryObjectMatches");
    get_MDSimpleQueryObjectMatchesSymbolLoc_ptr = v17[3];
    v12 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v12)
  {
    __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_2();
  }

  v14 = v12(v11, v5);
  objc_autoreleasePoolPop(v7);

  return v14;
}

- (id)allowedContentTypesPredicate
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = [(NSFileProviderSearchQuery *)self allowedPathExtensions];
  v5 = self->_allowedUTTypes;
  if ([(NSSet *)v5 count])
  {
    v6 = *MEMORY[0x1E69830B0];
    v17[0] = *MEMORY[0x1E69830D0];
    v17[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = MEMORY[0x1E696AE18];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__NSFileProviderSearchQuery_Predicates__allowedContentTypesPredicate__block_invoke;
    v13[3] = &unk_1E793DA00;
    v16 = a2;
    v13[4] = self;
    v14 = v5;
    v15 = v7;
    v9 = v7;
    v10 = [v8 predicateWithBlock:v13];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __69__NSFileProviderSearchQuery_Predicates__allowedContentTypesPredicate__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __69__NSFileProviderSearchQuery_Predicates__allowedContentTypesPredicate__block_invoke_cold_1(a1);
    }
  }

  v4 = [v3 contentType];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [*(a1 + 48) containsObject:{v10, v14}];
        if ([v4 conformsToType:v10])
        {
          v11 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)predicate
{
  v4 = [(NSFileProviderSearchQuery *)self filenamePredicate];
  v5 = [(NSFileProviderSearchQuery *)self allowedContentTypesPredicate];
  v6 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v7 = [(NSFileProviderSearchQuery *)self trashedItemsMembership];
  v8 = [(NSFileProviderSearchQuery *)self scopeFragment];
  v9 = [(NSFileProviderSearchQuery *)self providerDomainID];
  v10 = MEMORY[0x1E696AE18];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke;
  v18[3] = &unk_1E793DA28;
  v18[4] = self;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v24 = a2;
  v25 = v7;
  v22 = v8;
  v23 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v6;
  v14 = v5;
  v15 = v4;
  v16 = [v10 predicateWithBlock:v18];

  return v16;
}

uint64_t __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke_cold_1(a1);
    }
  }

  if ([*(a1 + 40) evaluateWithObject:v3])
  {
    v4 = [*(a1 + 48) evaluateWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    if (([v5 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) == 0)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        if (([v6 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) == 0)
        {
          __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke_cold_2(a1);
        }
      }
    }
  }

  v7 = *(a1 + 88);
  if (v7 == 2)
  {
    if (v4)
    {
      v4 = [v3 isTrashed];
    }
  }

  else if (v7 == 1 && v4)
  {
    v4 = [v3 isTrashed] ^ 1;
  }

  if (*(a1 + 64))
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"NSFileProviderSearchQuery.m" lineNumber:579 description:@"scopeFragment is not supported in the NSFileProviderSearchQuery predicate."];
  }

  if (v4)
  {
    if (*(a1 + 72))
    {
      v9 = [v3 providerDomainID];
      v10 = [v9 isEqualToString:*(a1 + 72)];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newSearchContainerItemIdentifier
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = [@"NSFileProviderSearchContainerItemIdentifier" stringByAppendingPathComponent:v3];

  return v4;
}

- (NSFileProviderSearchQuery)initWithSpotlightQueryString:(id)a3 searchScope:(id)a4 searchContainerItemIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(NSFileProviderSearchQuery *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_spotlightQueryString, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = @"NSFileProviderRootContainerItemIdentifier";
    }

    objc_storeStrong(&v13->_scopedToItemIdentifier, v14);
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [objc_opt_class() newSearchContainerItemIdentifier];
    }

    searchContainerItemIdentifier = v13->_searchContainerItemIdentifier;
    v13->_searchContainerItemIdentifier = v15;
  }

  return v13;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemIdentifier:(id)a3 alternateItemIdentifier:(id)a4 providerDomainID:(id)a5 searchContainerItemIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSFileProviderSearchQuery *)self init];
  v15 = v14;
  if (v14)
  {
    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = @"NSFileProviderRootContainerItemIdentifier";
    }

    objc_storeStrong(&v14->_scopedToItemIdentifier, v16);
    objc_storeStrong(&v15->_alternateScopeToItemIdentifier, a4);
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = [objc_opt_class() newSearchContainerItemIdentifier];
    }

    searchContainerItemIdentifier = v15->_searchContainerItemIdentifier;
    v15->_searchContainerItemIdentifier = v17;

    objc_storeStrong(&v15->_providerDomainID, a5);
  }

  return v15;
}

- (NSArray)csQueryScopes
{
  v4 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) == 0)
  {
    v7 = [(NSFileProviderSearchQuery *)self providerDomainID];
    if (!v7)
    {
      [(NSFileProviderSearchQuery(NSFileProviderSearch_Internal) *)a2 csQueryScopes];
    }

    v8 = [(NSFileProviderSearchQuery *)self alternateScopeToItemIdentifier];
    if ([v8 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
    {
      v6 = 0;
    }

    else
    {
      if (!self->_bundleIdentifier)
      {
        v19 = 0;
        v9 = [FPProviderDomain providerDomainWithID:v7 cachePolicy:1 error:&v19];
        v10 = v19;
        v11 = self;
        objc_sync_enter(v11);
        v12 = [v9 topLevelBundleIdentifier];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v7 fp_toProviderID];
        }

        bundleIdentifier = self->_bundleIdentifier;
        self->_bundleIdentifier = v14;

        objc_sync_exit(v11);
      }

      v6 = objc_opt_new();
      v16 = FPScopedToIdentifierFragment(self->_bundleIdentifier, v7, v5);
      [v6 addObject:v16];

      if (v8)
      {
        v17 = FPScopedToIdentifierFragment(self->_bundleIdentifier, v7, v8);
        [v6 addObject:v17];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"NSFileProviderSearchQuery.m" lineNumber:488 description:@"Unexpected kind of evaluated object."];
}

void __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __MDSimpleQueryObjectMatches(MDSimpleQueryEvaluator *, void *)"}];
  [v0 handleFailureInFunction:v1 file:@"NSFileProviderSearchQuery.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void __58__NSFileProviderSearchQuery_Predicates__filenamePredicate__block_invoke_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MDSimpleQueryEvaluator *__MDCreateSimpleQueryEvaluator(CFStringRef, MDSimpleQueryEvaluatorGetValueFunction)"}];
  [v0 handleFailureInFunction:v1 file:@"NSFileProviderSearchQuery.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void __69__NSFileProviderSearchQuery_Predicates__allowedContentTypesPredicate__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"NSFileProviderSearchQuery.m" lineNumber:517 description:@"Unexpected kind of evaluated object."];
}

void __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"NSFileProviderSearchQuery.m" lineNumber:547 description:@"Unexpected kind of evaluated object."];
}

void __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke_cold_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"NSFileProviderSearchQuery.m" lineNumber:559 description:@"scopedToItemIdentifier is not supported in the NSFileProviderSearchQuery predicate."];
}

@end