@interface NSFileProviderSearchQuery
+ (id)newSearchContainerItemIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFileProviderSearchQuery:(id)query;
- (NSArray)csQueryScopes;
- (NSFileProviderSearchQuery)initWithCoder:(id)coder;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)d;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)d alternateItemID:(id)iD;
- (NSFileProviderSearchQuery)initWithSearchScopedToItemIdentifier:(id)identifier alternateItemIdentifier:(id)itemIdentifier providerDomainID:(id)d searchContainerItemIdentifier:(id)containerItemIdentifier;
- (NSFileProviderSearchQuery)initWithSpotlightQueryString:(id)string searchScope:(id)scope searchContainerItemIdentifier:(id)identifier;
- (NSSet)allowedPathExtensions;
- (id)allowedContentTypesPredicate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)filenamePredicate;
- (id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAllowedContentTypes:(id)types;
- (void)setContent:(id)content;
- (void)setFilename:(id)filename;
- (void)setKeyboardLanguage:(id)language;
- (void)setProviderDomainID:(id)d;
- (void)setScopeFragment:(id)fragment;
- (void)setSearchString:(id)string;
- (void)setSpotlightQueryString:(id)string;
- (void)setUserQueryString:(id)string;
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
    selfCopy = self;
    allowedContentTypes = [(NSFileProviderSearchQuery *)self allowedContentTypes];
    v7 = [v5 setWithSet:allowedContentTypes];

    v30 = [MEMORY[0x1E695DFA8] set];
    anyObject = [v7 anyObject];
    if (anyObject)
    {
      v9 = anyObject;
      v29 = *MEMORY[0x1E6982C48];
      do
      {
        [v7 removeObject:v9];
        [v4 addObject:v9];
        v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:v9];
        if (v10)
        {
          [(NSSet *)v30 addObject:v10];
          tags = [v10 tags];
          v12 = [tags objectForKey:v29];
          [v31 addObjectsFromArray:v12];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = v10;
          _childTypes = [v10 _childTypes];
          v14 = [_childTypes countByEnumeratingWithState:&v33 objects:v37 count:16];
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
                  objc_enumerationMutation(_childTypes);
                }

                v18 = *(*(&v33 + 1) + 8 * i);
                identifier = [v18 identifier];
                v20 = [v4 containsObject:identifier];

                if ((v20 & 1) == 0)
                {
                  identifier2 = [v18 identifier];
                  [v7 addObject:identifier2];
                }
              }

              v15 = [_childTypes countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v15);
          }

          v10 = v32;
        }

        anyObject2 = [v7 anyObject];

        v9 = anyObject2;
      }

      while (anyObject2);
    }

    v23 = [v31 copy];
    v24 = selfCopy->_cachedExtensions;
    selfCopy->_cachedExtensions = v23;

    allowedUTTypes = selfCopy->_allowedUTTypes;
    selfCopy->_allowedUTTypes = v30;

    cachedExtensions = selfCopy->_cachedExtensions;
  }

  v26 = *MEMORY[0x1E69E9840];

  return cachedExtensions;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)d
{
  dCopy = d;
  identifier = [dCopy identifier];
  providerDomainID = [dCopy providerDomainID];

  v7 = [(NSFileProviderSearchQuery *)self initWithSearchScopedToItemIdentifier:identifier alternateItemIdentifier:0 providerDomainID:providerDomainID searchContainerItemIdentifier:0];
  return v7;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemID:(id)d alternateItemID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    if (!dCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderSearchQuery.m" lineNumber:130 description:@"alternate item id defined without a main id"];
    }

    providerDomainID = [dCopy providerDomainID];
    providerDomainID2 = [iDCopy providerDomainID];
    v12 = [providerDomainID isEqual:providerDomainID2];

    if ((v12 & 1) == 0)
    {
      providerDomainID3 = [dCopy providerDomainID];
      providerDomainID4 = [iDCopy providerDomainID];
      v15 = [providerDomainID3 isEqual:providerDomainID4];

      if ((v15 & 1) == 0)
      {
        [(NSFileProviderSearchQuery(NSFileProviderSearch_Private) *)dCopy initWithSearchScopedToItemID:iDCopy alternateItemID:a2, self];
      }
    }
  }

  identifier = [dCopy identifier];
  identifier2 = [iDCopy identifier];
  providerDomainID5 = [dCopy providerDomainID];
  v19 = [(NSFileProviderSearchQuery *)self initWithSearchScopedToItemIdentifier:identifier alternateItemIdentifier:identifier2 providerDomainID:providerDomainID5 searchContainerItemIdentifier:0];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSFileProviderSearchQuery *)self isEqualToFileProviderSearchQuery:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFileProviderSearchQuery:(id)query
{
  queryCopy = query;
  shouldPerformServerSearch = [(NSFileProviderSearchQuery *)self shouldPerformServerSearch];
  if (shouldPerformServerSearch == [queryCopy shouldPerformServerSearch])
  {
    shouldPerformThirdPartyServerSearch = [(NSFileProviderSearchQuery *)self shouldPerformThirdPartyServerSearch];
    if (shouldPerformThirdPartyServerSearch == [queryCopy shouldPerformThirdPartyServerSearch])
    {
      shouldPerformSemanticSearch = [(NSFileProviderSearchQuery *)self shouldPerformSemanticSearch];
      if (shouldPerformSemanticSearch == [queryCopy shouldPerformSemanticSearch])
      {
        avoidCoreSpotlightSearch = [(NSFileProviderSearchQuery *)self avoidCoreSpotlightSearch];
        if (avoidCoreSpotlightSearch == [queryCopy avoidCoreSpotlightSearch])
        {
          trashedItemsMembership = [(NSFileProviderSearchQuery *)self trashedItemsMembership];
          if (trashedItemsMembership == [queryCopy trashedItemsMembership])
          {
            filename = [(NSFileProviderSearchQuery *)self filename];
            filename2 = [queryCopy filename];
            if (filename != filename2)
            {
              filename3 = [(NSFileProviderSearchQuery *)self filename];
              filename4 = [queryCopy filename];
              v64 = filename3;
              if (![filename3 isEqual:?])
              {
                v13 = 0;
                goto LABEL_44;
              }
            }

            userQueryString = [(NSFileProviderSearchQuery *)self userQueryString];
            userQueryString2 = [queryCopy userQueryString];
            if (userQueryString != userQueryString2)
            {
              userQueryString3 = [(NSFileProviderSearchQuery *)self userQueryString];
              userQueryString4 = [queryCopy userQueryString];
              if (![userQueryString3 isEqual:userQueryString4])
              {
                v13 = 0;
LABEL_42:

LABEL_43:
                if (filename == filename2)
                {
LABEL_45:

                  goto LABEL_10;
                }

LABEL_44:

                goto LABEL_45;
              }

              v60 = userQueryString4;
              v61 = userQueryString3;
            }

            allowedContentTypes = [(NSFileProviderSearchQuery *)self allowedContentTypes];
            allowedContentTypes2 = [queryCopy allowedContentTypes];
            v62 = allowedContentTypes;
            v21 = allowedContentTypes == allowedContentTypes2;
            v22 = allowedContentTypes2;
            if (!v21)
            {
              allowedContentTypes3 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
              allowedContentTypes4 = [queryCopy allowedContentTypes];
              v58 = allowedContentTypes3;
              if (![allowedContentTypes3 isEqual:?])
              {
                v13 = 0;
                v24 = v22;
                v25 = v62;
LABEL_40:

LABEL_41:
                userQueryString3 = v61;
                userQueryString4 = v60;
                if (userQueryString == userQueryString2)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            scopeFragment = [(NSFileProviderSearchQuery *)self scopeFragment];
            scopeFragment2 = [queryCopy scopeFragment];
            v59 = scopeFragment;
            v21 = scopeFragment == scopeFragment2;
            v28 = scopeFragment2;
            if (!v21)
            {
              scopeFragment3 = [(NSFileProviderSearchQuery *)self scopeFragment];
              scopeFragment4 = [queryCopy scopeFragment];
              v54 = scopeFragment3;
              if (![scopeFragment3 isEqual:?])
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

            providerDomainID = [(NSFileProviderSearchQuery *)self providerDomainID];
            providerDomainID2 = [queryCopy providerDomainID];
            v55 = providerDomainID;
            v56 = v28;
            v21 = providerDomainID == providerDomainID2;
            v33 = providerDomainID2;
            if (!v21)
            {
              providerDomainID3 = [(NSFileProviderSearchQuery *)self providerDomainID];
              providerDomainID4 = [queryCopy providerDomainID];
              v50 = providerDomainID3;
              if (![providerDomainID3 isEqual:?])
              {
                v13 = 0;
                v35 = v55;
                goto LABEL_35;
              }
            }

            keyboardLanguage = [(NSFileProviderSearchQuery *)self keyboardLanguage];
            keyboardLanguage2 = [queryCopy keyboardLanguage];
            v52 = v33;
            if (keyboardLanguage == keyboardLanguage2)
            {
              v48 = keyboardLanguage;
            }

            else
            {
              v37 = v22;
              keyboardLanguage3 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
              keyboardLanguage4 = [queryCopy keyboardLanguage];
              v47 = keyboardLanguage3;
              if (![keyboardLanguage3 isEqual:?])
              {
                v13 = 0;
                v22 = v37;
                v44 = keyboardLanguage2;
                v33 = v52;
                goto LABEL_33;
              }

              v48 = keyboardLanguage;
              v22 = v37;
              v33 = v52;
            }

            scopedToItemIdentifier = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
            scopedToItemIdentifier2 = [queryCopy scopedToItemIdentifier];
            v41 = scopedToItemIdentifier2;
            if (scopedToItemIdentifier == scopedToItemIdentifier2)
            {

              v13 = 1;
            }

            else
            {
              scopedToItemIdentifier3 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
              [queryCopy scopedToItemIdentifier];
              v43 = v45 = v22;
              v13 = [scopedToItemIdentifier3 isEqual:v43];

              v22 = v45;
              v33 = v52;
            }

            keyboardLanguage = v48;
            v44 = keyboardLanguage2;
            if (v48 == keyboardLanguage2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  keyboardLanguage = [(NSFileProviderSearchQuery *)self keyboardLanguage];
  v6 = v4[5];
  v4[5] = keyboardLanguage;

  scopedToItemIdentifier = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v8 = v4[15];
  v4[15] = scopedToItemIdentifier;

  alternateScopeToItemIdentifier = [(NSFileProviderSearchQuery *)self alternateScopeToItemIdentifier];
  v10 = v4[6];
  v4[6] = alternateScopeToItemIdentifier;

  searchContainerItemIdentifier = [(NSFileProviderSearchQuery *)self searchContainerItemIdentifier];
  v12 = v4[16];
  v4[16] = searchContainerItemIdentifier;

  filename = [(NSFileProviderSearchQuery *)self filename];
  [v4 setFilename:filename];

  userQueryString = [(NSFileProviderSearchQuery *)self userQueryString];
  [v4 setUserQueryString:userQueryString];

  allowedContentTypes = [(NSFileProviderSearchQuery *)self allowedContentTypes];
  [v4 setAllowedContentTypes:allowedContentTypes];

  [v4 setShouldPerformServerSearch:{-[NSFileProviderSearchQuery shouldPerformServerSearch](self, "shouldPerformServerSearch")}];
  [v4 setShouldPerformThirdPartyServerSearch:{-[NSFileProviderSearchQuery shouldPerformThirdPartyServerSearch](self, "shouldPerformThirdPartyServerSearch")}];
  [v4 setShouldPerformSemanticSearch:{-[NSFileProviderSearchQuery shouldPerformSemanticSearch](self, "shouldPerformSemanticSearch")}];
  [v4 setAvoidCoreSpotlightSearch:{-[NSFileProviderSearchQuery avoidCoreSpotlightSearch](self, "avoidCoreSpotlightSearch")}];
  [v4 setTrashedItemsMembership:{-[NSFileProviderSearchQuery trashedItemsMembership](self, "trashedItemsMembership")}];
  scopeFragment = [(NSFileProviderSearchQuery *)self scopeFragment];
  [v4 setScopeFragment:scopeFragment];

  providerDomainID = [(NSFileProviderSearchQuery *)self providerDomainID];
  [v4 setProviderDomainID:providerDomainID];

  spotlightQueryString = [(NSFileProviderSearchQuery *)self spotlightQueryString];
  [v4 setSpotlightQueryString:spotlightQueryString];

  return v4;
}

- (NSFileProviderSearchQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = NSFileProviderSearchQuery;
  v5 = [(NSFileProviderSearchQuery *)&v41 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
  v7 = *(v5 + 13);
  *(v5 + 13) = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userQueryString"];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v40 = objc_opt_class();
  v12 = [v10 setWithObjects:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_allowedContentTypes"];
  v14 = *(v5 + 14);
  *(v5 + 14) = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardLanguage"];
  v16 = *(v5 + 5);
  *(v5 + 5) = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scopedToItemIdentifier"];
  v18 = *(v5 + 15);
  *(v5 + 15) = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alternateScopeToItemIdentifier"];
  v20 = *(v5 + 6);
  *(v5 + 6) = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_searchContainerItemIdentifier"];
  v22 = *(v5 + 16);
  *(v5 + 16) = v21;

  if (*(v5 + 15) && *(v5 + 16))
  {
    *(v5 + 8) = [coderCopy decodeBoolForKey:@"_shouldPerformServerSearch"];
    *(v5 + 9) = [coderCopy decodeBoolForKey:@"_shouldPerformThirdPartyServerSearch"];
    *(v5 + 10) = [coderCopy decodeBoolForKey:@"_shouldPerformSemanticSearch"];
    *(v5 + 11) = [coderCopy decodeBoolForKey:@"_avoidCoreSpotlightSearch"];
    *(v5 + 11) = [coderCopy decodeIntegerForKey:@"_trashedItemsMembership"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scopeFragment"];
    v24 = *(v5 + 2);
    *(v5 + 2) = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_providerDomainID"];
    v26 = *(v5 + 7);
    *(v5 + 7) = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_spotlightQueryString"];
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

- (void)encodeWithCoder:(id)coder
{
  filename = self->_filename;
  coderCopy = coder;
  [coderCopy encodeObject:filename forKey:@"_filename"];
  [coderCopy encodeObject:self->_userQueryString forKey:@"_userQueryString"];
  [coderCopy encodeObject:self->_allowedContentTypes forKey:@"_allowedContentTypes"];
  [coderCopy encodeObject:self->_keyboardLanguage forKey:@"_keyboardLanguage"];
  [coderCopy encodeObject:self->_scopedToItemIdentifier forKey:@"_scopedToItemIdentifier"];
  [coderCopy encodeObject:self->_alternateScopeToItemIdentifier forKey:@"_alternateScopeToItemIdentifier"];
  [coderCopy encodeObject:self->_searchContainerItemIdentifier forKey:@"_searchContainerItemIdentifier"];
  [coderCopy encodeBool:self->_shouldPerformServerSearch forKey:@"_shouldPerformServerSearch"];
  [coderCopy encodeBool:self->_shouldPerformThirdPartyServerSearch forKey:@"_shouldPerformThirdPartyServerSearch"];
  [coderCopy encodeBool:self->_shouldPerformSemanticSearch forKey:@"_shouldPerformSemanticSearch"];
  [coderCopy encodeBool:self->_avoidCoreSpotlightSearch forKey:@"_avoidCoreSpotlightSearch"];
  [coderCopy encodeInteger:self->_trashedItemsMembership forKey:@"_trashedItemsMembership"];
  [coderCopy encodeObject:self->_scopeFragment forKey:@"_scopeFragment"];
  [coderCopy encodeObject:self->_providerDomainID forKey:@"_providerDomainID"];
  [coderCopy encodeObject:self->_spotlightQueryString forKey:@"_spotlightQueryString"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  searchContainerItemIdentifier = [(NSFileProviderSearchQuery *)self searchContainerItemIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p id:%@", v4, self, searchContainerItemIdentifier];

  filename = [(NSFileProviderSearchQuery *)self filename];

  if (filename)
  {
    filename2 = [(NSFileProviderSearchQuery *)self filename];
    [v6 appendFormat:@" filename:'%@'", filename2];
  }

  allowedContentTypes = [(NSFileProviderSearchQuery *)self allowedContentTypes];

  if (allowedContentTypes)
  {
    allowedContentTypes2 = [(NSFileProviderSearchQuery *)self allowedContentTypes];
    [v6 appendFormat:@" uti(s):'%@'", allowedContentTypes2];
  }

  keyboardLanguage = [(NSFileProviderSearchQuery *)self keyboardLanguage];

  if (keyboardLanguage)
  {
    keyboardLanguage2 = [(NSFileProviderSearchQuery *)self keyboardLanguage];
    [v6 appendFormat:@" kb language:'%@'", keyboardLanguage2];
  }

  scopedToItemIdentifier = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v14 = [scopedToItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

  if (v14)
  {
    [v6 appendString:@" scope:root"];
  }

  else
  {
    scopedToItemIdentifier2 = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
    [v6 appendFormat:@" scope:%@", scopedToItemIdentifier2];
  }

  providerDomainID = [(NSFileProviderSearchQuery *)self providerDomainID];

  if (providerDomainID)
  {
    providerDomainID2 = [(NSFileProviderSearchQuery *)self providerDomainID];
    fp_obfuscatedFilename = [providerDomainID2 fp_obfuscatedFilename];
    [v6 appendFormat:@" provider:%@", fp_obfuscatedFilename];
  }

  [v6 appendFormat:@" trashedItemsMembership:%ld", self->_trashedItemsMembership];
  [v6 appendString:@">"];

  return v6;
}

- (void)setSearchString:(id)string
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

- (void)setUserQueryString:(id)string
{
  v4 = [string copy];
  userQueryString = self->_userQueryString;
  self->_userQueryString = v4;

  MEMORY[0x1EEE66BB8](v4, userQueryString);
}

- (void)setFilename:(id)filename
{
  v4 = [filename copy];
  filename = self->_filename;
  self->_filename = v4;

  MEMORY[0x1EEE66BB8](v4, filename);
}

- (void)setContent:(id)content
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

- (void)setAllowedContentTypes:(id)types
{
  v4 = [types copy];
  allowedContentTypes = self->_allowedContentTypes;
  self->_allowedContentTypes = v4;

  cachedExtensions = self->_cachedExtensions;
  self->_cachedExtensions = 0;
}

- (void)setKeyboardLanguage:(id)language
{
  v4 = [language copy];
  keyboardLanguage = self->_keyboardLanguage;
  self->_keyboardLanguage = v4;

  MEMORY[0x1EEE66BB8](v4, keyboardLanguage);
}

- (void)setScopeFragment:(id)fragment
{
  v4 = [fragment copy];
  scopeFragment = self->_scopeFragment;
  self->_scopeFragment = v4;

  MEMORY[0x1EEE66BB8](v4, scopeFragment);
}

- (void)setProviderDomainID:(id)d
{
  v4 = [d copy];
  providerDomainID = self->_providerDomainID;
  self->_providerDomainID = v4;

  MEMORY[0x1EEE66BB8](v4, providerDomainID);
}

- (void)setSpotlightQueryString:(id)string
{
  v4 = [string copy];
  spotlightQueryString = self->_spotlightQueryString;
  self->_spotlightQueryString = v4;

  MEMORY[0x1EEE66BB8](v4, spotlightQueryString);
}

- (id)filenamePredicate
{
  filename = [(NSFileProviderSearchQuery *)self filename];
  v5 = filename;
  if (filename && [filename length])
  {
    keyboardLanguage = [(NSFileProviderSearchQuery *)self keyboardLanguage];
    v7 = FPSpotlightQueryStringForFilename(v5, keyboardLanguage);
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
  allowedPathExtensions = [(NSFileProviderSearchQuery *)self allowedPathExtensions];
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
  filenamePredicate = [(NSFileProviderSearchQuery *)self filenamePredicate];
  allowedContentTypesPredicate = [(NSFileProviderSearchQuery *)self allowedContentTypesPredicate];
  scopedToItemIdentifier = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  trashedItemsMembership = [(NSFileProviderSearchQuery *)self trashedItemsMembership];
  scopeFragment = [(NSFileProviderSearchQuery *)self scopeFragment];
  providerDomainID = [(NSFileProviderSearchQuery *)self providerDomainID];
  v10 = MEMORY[0x1E696AE18];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__NSFileProviderSearchQuery_Predicates__predicate__block_invoke;
  v18[3] = &unk_1E793DA28;
  v18[4] = self;
  v19 = filenamePredicate;
  v20 = allowedContentTypesPredicate;
  v21 = scopedToItemIdentifier;
  v24 = a2;
  v25 = trashedItemsMembership;
  v22 = scopeFragment;
  v23 = providerDomainID;
  v11 = providerDomainID;
  v12 = scopeFragment;
  v13 = scopedToItemIdentifier;
  v14 = allowedContentTypesPredicate;
  v15 = filenamePredicate;
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v4 = [@"NSFileProviderSearchContainerItemIdentifier" stringByAppendingPathComponent:uUIDString];

  return v4;
}

- (NSFileProviderSearchQuery)initWithSpotlightQueryString:(id)string searchScope:(id)scope searchContainerItemIdentifier:(id)identifier
{
  stringCopy = string;
  scopeCopy = scope;
  identifierCopy = identifier;
  v12 = [(NSFileProviderSearchQuery *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_spotlightQueryString, string);
    if (scopeCopy)
    {
      v14 = scopeCopy;
    }

    else
    {
      v14 = @"NSFileProviderRootContainerItemIdentifier";
    }

    objc_storeStrong(&v13->_scopedToItemIdentifier, v14);
    if (identifierCopy)
    {
      newSearchContainerItemIdentifier = identifierCopy;
    }

    else
    {
      newSearchContainerItemIdentifier = [objc_opt_class() newSearchContainerItemIdentifier];
    }

    searchContainerItemIdentifier = v13->_searchContainerItemIdentifier;
    v13->_searchContainerItemIdentifier = newSearchContainerItemIdentifier;
  }

  return v13;
}

- (NSFileProviderSearchQuery)initWithSearchScopedToItemIdentifier:(id)identifier alternateItemIdentifier:(id)itemIdentifier providerDomainID:(id)d searchContainerItemIdentifier:(id)containerItemIdentifier
{
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  dCopy = d;
  containerItemIdentifierCopy = containerItemIdentifier;
  v14 = [(NSFileProviderSearchQuery *)self init];
  v15 = v14;
  if (v14)
  {
    if (identifierCopy)
    {
      v16 = identifierCopy;
    }

    else
    {
      v16 = @"NSFileProviderRootContainerItemIdentifier";
    }

    objc_storeStrong(&v14->_scopedToItemIdentifier, v16);
    objc_storeStrong(&v15->_alternateScopeToItemIdentifier, itemIdentifier);
    if (containerItemIdentifierCopy)
    {
      newSearchContainerItemIdentifier = containerItemIdentifierCopy;
    }

    else
    {
      newSearchContainerItemIdentifier = [objc_opt_class() newSearchContainerItemIdentifier];
    }

    searchContainerItemIdentifier = v15->_searchContainerItemIdentifier;
    v15->_searchContainerItemIdentifier = newSearchContainerItemIdentifier;

    objc_storeStrong(&v15->_providerDomainID, d);
  }

  return v15;
}

- (NSArray)csQueryScopes
{
  scopedToItemIdentifier = [(NSFileProviderSearchQuery *)self scopedToItemIdentifier];
  v5 = scopedToItemIdentifier;
  if (scopedToItemIdentifier && ([scopedToItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) == 0)
  {
    providerDomainID = [(NSFileProviderSearchQuery *)self providerDomainID];
    if (!providerDomainID)
    {
      [(NSFileProviderSearchQuery(NSFileProviderSearch_Internal) *)a2 csQueryScopes];
    }

    alternateScopeToItemIdentifier = [(NSFileProviderSearchQuery *)self alternateScopeToItemIdentifier];
    if ([alternateScopeToItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
    {
      v6 = 0;
    }

    else
    {
      if (!self->_bundleIdentifier)
      {
        v19 = 0;
        v9 = [FPProviderDomain providerDomainWithID:providerDomainID cachePolicy:1 error:&v19];
        v10 = v19;
        selfCopy = self;
        objc_sync_enter(selfCopy);
        topLevelBundleIdentifier = [v9 topLevelBundleIdentifier];
        v13 = topLevelBundleIdentifier;
        if (topLevelBundleIdentifier)
        {
          fp_toProviderID = topLevelBundleIdentifier;
        }

        else
        {
          fp_toProviderID = [providerDomainID fp_toProviderID];
        }

        bundleIdentifier = self->_bundleIdentifier;
        self->_bundleIdentifier = fp_toProviderID;

        objc_sync_exit(selfCopy);
      }

      v6 = objc_opt_new();
      v16 = FPScopedToIdentifierFragment(self->_bundleIdentifier, providerDomainID, v5);
      [v6 addObject:v16];

      if (alternateScopeToItemIdentifier)
      {
        v17 = FPScopedToIdentifierFragment(self->_bundleIdentifier, providerDomainID, alternateScopeToItemIdentifier);
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