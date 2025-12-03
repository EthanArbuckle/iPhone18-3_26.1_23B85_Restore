@interface NEAppRule
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)overlapsWithRule:(id)rule;
- (BOOL)signingIdentifierAllowed:(id)allowed domainsOrAccountsRequired:(BOOL *)required;
- (NEAppRule)initWithCoder:(id)coder;
- (NEAppRule)initWithSigningIdentifier:(NSString *)signingIdentifier;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAppRule

- (BOOL)signingIdentifierAllowed:(id)allowed domainsOrAccountsRequired:(BOOL *)required
{
  allowedCopy = allowed;
  *required = 0;
  if ([allowedCopy hasPrefix:@"com.apple."])
  {
    v6 = 0;
    while (strcmp([allowedCopy UTF8String], (&signingIdentifierAllowed_domainsOrAccountsRequired__com_apple_exceptions)[v6]))
    {
      v6 += 2;
      if (v6 == 24)
      {
        goto LABEL_7;
      }
    }

    *required = 1;
  }

LABEL_7:

  return 1;
}

- (BOOL)overlapsWithRule:(id)rule
{
  v59 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];
  matchSigningIdentifier2 = [ruleCopy matchSigningIdentifier];
  v7 = [matchSigningIdentifier isEqualToString:matchSigningIdentifier2];

  if (!v7)
  {
    goto LABEL_46;
  }

  matchDomains = [(NEAppRule *)self matchDomains];
  if ([matchDomains count])
  {
  }

  else
  {
    matchDomains2 = [ruleCopy matchDomains];
    v10 = [matchDomains2 count];

    if (!v10)
    {
      v24 = 0;
      v29 = 1;
      goto LABEL_26;
    }
  }

  matchDomains3 = [(NEAppRule *)self matchDomains];
  if (![matchDomains3 count])
  {

    goto LABEL_23;
  }

  matchDomains4 = [ruleCopy matchDomains];
  v13 = [matchDomains4 count];

  if (!v13)
  {
LABEL_23:
    v29 = 0;
    v24 = 1;
    goto LABEL_26;
  }

  matchDomains5 = [(NEAppRule *)self matchDomains];
  v15 = [matchDomains5 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      matchDomains6 = [(NEAppRule *)self matchDomains];
      v18 = [matchDomains6 objectAtIndexedSubscript:v16];

      matchDomains7 = [ruleCopy matchDomains];
      v20 = [matchDomains7 count];

      if (v20)
      {
        v21 = 1;
        do
        {
          matchDomains8 = [ruleCopy matchDomains];
          v23 = [matchDomains8 objectAtIndexedSubscript:v21 - 1];

          v24 = ([v18 hasSuffix:v23] & 1) != 0 || objc_msgSend(v23, "hasSuffix:", v18);
          matchDomains9 = [ruleCopy matchDomains];
          v26 = [matchDomains9 count];

          if (v21 >= v26)
          {
            break;
          }

          ++v21;
        }

        while (!v24);
      }

      else
      {
        v24 = 0;
      }

      ++v16;
      matchDomains10 = [(NEAppRule *)self matchDomains];
      v28 = [matchDomains10 count];

      v29 = 0;
    }

    while (v16 < v28 && !v24);
  }

  else
  {
    v24 = 0;
    v29 = 0;
  }

LABEL_26:
  matchAccountIdentifiers = [(NEAppRule *)self matchAccountIdentifiers];
  if ([matchAccountIdentifiers count])
  {
  }

  else
  {
    matchAccountIdentifiers2 = [ruleCopy matchAccountIdentifiers];
    v32 = [matchAccountIdentifiers2 count];

    if (!v32)
    {
      LOBYTE(v44) = 0;
      v51 = 1;
      goto LABEL_44;
    }
  }

  matchAccountIdentifiers3 = [(NEAppRule *)self matchAccountIdentifiers];
  if (![matchAccountIdentifiers3 count])
  {

    goto LABEL_47;
  }

  matchAccountIdentifiers4 = [ruleCopy matchAccountIdentifiers];
  v35 = [matchAccountIdentifiers4 count];

  if (v35)
  {
    matchAccountIdentifiers5 = [(NEAppRule *)self matchAccountIdentifiers];
    v37 = [matchAccountIdentifiers5 count];

    if (v37)
    {
      v38 = 0;
      do
      {
        matchAccountIdentifiers6 = [(NEAppRule *)self matchAccountIdentifiers];
        v40 = [matchAccountIdentifiers6 objectAtIndexedSubscript:v38];

        matchAccountIdentifiers7 = [ruleCopy matchAccountIdentifiers];
        v42 = [matchAccountIdentifiers7 count];

        if (v42)
        {
          v43 = 0;
          v44 = 0;
          do
          {
            matchAccountIdentifiers8 = [ruleCopy matchAccountIdentifiers];
            v46 = [matchAccountIdentifiers8 objectAtIndexedSubscript:v43];

            v44 |= [v40 isEqualToString:v46];
            ++v43;
            matchAccountIdentifiers9 = [ruleCopy matchAccountIdentifiers];
            v48 = [matchAccountIdentifiers9 count];
          }

          while (v43 < v48);
        }

        else
        {
          LOBYTE(v44) = 0;
        }

        ++v38;
        matchAccountIdentifiers10 = [(NEAppRule *)self matchAccountIdentifiers];
        v50 = [matchAccountIdentifiers10 count];

        v51 = 0;
      }

      while (v38 < v50 && (v44 & 1) == 0);
    }

    else
    {
      LOBYTE(v44) = 0;
      v51 = 0;
    }

LABEL_44:
    if (((v29 & v51 | v24) & 1) == 0 && (v44 & 1) == 0)
    {
LABEL_46:
      v52 = 0;
      goto LABEL_50;
    }
  }

LABEL_47:
  v53 = ne_log_obj();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    matchSigningIdentifier3 = [(NEAppRule *)self matchSigningIdentifier];
    v57 = 138412290;
    v58 = matchSigningIdentifier3;
    _os_log_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_DEFAULT, "App Rule for %@ overlaps with an existing app rule", &v57, 0xCu);
  }

  v52 = 1;
LABEL_50:

  v55 = *MEMORY[0x1E69E9840];
  return v52;
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  v51 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = NEAppRule;
  v5 = [(NEAppRule *)&v48 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E6982938];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982938]];
    v8 = isa_nsarray(v7);

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:v6];
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = *MEMORY[0x1E6982940];
        v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6982940]];
        v13 = isa_nsstring(v12);

        if (v13)
        {
          v14 = [v10 objectForKeyedSubscript:v11];
          v15 = [v14 copy];
          matchSigningIdentifier = v5->_matchSigningIdentifier;
          v5->_matchSigningIdentifier = v15;
        }
      }
    }

    v17 = *MEMORY[0x1E6982930];
    v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982930]];
    v19 = isa_nsarray(v18);

    if (v19)
    {
      [dictionaryCopy objectForKeyedSubscript:v17];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v20 = v47 = 0u;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v45;
        while (2)
        {
          v24 = 0;
          do
          {
            if (*v45 != v23)
            {
              objc_enumerationMutation(v20);
            }

            if (!isa_nsstring(*(*(&v44 + 1) + 8 * v24)))
            {
              matchDomains = v20;
              goto LABEL_19;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v25 = [(NSArray *)v20 copy];
      matchDomains = v5->_matchDomains;
      v5->_matchDomains = v25;
LABEL_19:
    }

    v27 = *MEMORY[0x1E6982928];
    v28 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982928]];
    v29 = isa_nsarray(v28);

    if (v29)
    {
      [dictionaryCopy objectForKeyedSubscript:v27];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v30 = v43 = 0u;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v41;
        while (2)
        {
          v34 = 0;
          do
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(v30);
            }

            if (!isa_nsstring(*(*(&v40 + 1) + 8 * v34)))
            {
              matchAccountIdentifiers = v30;
              goto LABEL_31;
            }

            ++v34;
          }

          while (v32 != v34);
          v32 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v35 = [(NSArray *)v30 copy];
      matchAccountIdentifiers = v5->_matchAccountIdentifiers;
      v5->_matchAccountIdentifiers = v35;
LABEL_31:
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyLegacyDictionary
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];

  if (matchSigningIdentifier)
  {
    matchSigningIdentifier2 = [(NEAppRule *)self matchSigningIdentifier];
    [v3 setObject:matchSigningIdentifier2 forKeyedSubscript:*MEMORY[0x1E6982948]];

    matchSigningIdentifier3 = [(NEAppRule *)self matchSigningIdentifier];
    [v4 setObject:matchSigningIdentifier3 forKeyedSubscript:*MEMORY[0x1E6982940]];
  }

  v15[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982938]];

  matchDomains = [(NEAppRule *)self matchDomains];

  if (matchDomains)
  {
    matchDomains2 = [(NEAppRule *)self matchDomains];
    [v3 setObject:matchDomains2 forKeyedSubscript:*MEMORY[0x1E6982930]];
  }

  matchAccountIdentifiers = [(NEAppRule *)self matchAccountIdentifiers];

  if (matchAccountIdentifiers)
  {
    matchAccountIdentifiers2 = [(NEAppRule *)self matchAccountIdentifiers];
    [v3 setObject:matchAccountIdentifiers2 forKeyedSubscript:*MEMORY[0x1E6982928]];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v40 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v37 = 0;
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];

  if (matchSigningIdentifier)
  {
    matchSigningIdentifier2 = [(NEAppRule *)self matchSigningIdentifier];
    v7 = [(NEAppRule *)self signingIdentifierAllowed:matchSigningIdentifier2 domainsOrAccountsRequired:&v37];

    if (v7)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v9 = MEMORY[0x1E696AEC0];
    matchSigningIdentifier3 = [(NEAppRule *)self matchSigningIdentifier];
    v11 = [v9 stringWithFormat:@"Dis-allowed app rule signing identifier (starts with com.apple): %@", matchSigningIdentifier3];
    [NEConfiguration addError:v11 toList:errorsCopy];
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  v8 = 0;
LABEL_7:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  matchDomains = [(NEAppRule *)self matchDomains];
  v13 = [matchDomains countByEnumeratingWithState:&v33 objects:v39 count:16];
  v28 = v13;
  if (v13)
  {
    v14 = *v34;
    v15 = v13;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(matchDomains);
        }

        if ((isa_nsstring(*(*(&v33 + 1) + 8 * i)) & 1) == 0)
        {
          [NEConfiguration addError:errorsCopy toList:?];
          v8 = 0;
        }
      }

      v15 = [matchDomains countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  matchAccountIdentifiers = [(NEAppRule *)self matchAccountIdentifiers];
  v18 = [matchAccountIdentifiers countByEnumeratingWithState:&v29 objects:v38 count:16];
  v19 = v18;
  if (v18)
  {
    v20 = *v30;
    v21 = v18;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(matchAccountIdentifiers);
        }

        if ((isa_nsstring(*(*(&v29 + 1) + 8 * j)) & 1) == 0)
        {
          [NEConfiguration addError:errorsCopy toList:?];
          v8 = 0;
        }
      }

      v21 = [matchAccountIdentifiers countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v21);
  }

  if ((ne_session_disable_restrictions() & 1) == 0)
  {
    if (!(v19 | v28) && v37)
    {
      [NEConfiguration addError:errorsCopy toList:?];
LABEL_32:
      v8 = 0;
      goto LABEL_33;
    }

    if (v19 | v28 && (v37 & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      matchSigningIdentifier4 = [(NEAppRule *)self matchSigningIdentifier];
      v25 = [v23 stringWithFormat:@"App rule matching %@ cannot have matchDomains or matchAccountIdentifiers", matchSigningIdentifier4];
      [NEConfiguration addError:v25 toList:errorsCopy];

      goto LABEL_32;
    }
  }

LABEL_33:

  v26 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];
  v6 = [v4 initWithSigningIdentifier:matchSigningIdentifier];

  matchPath = [(NEAppRule *)self matchPath];
  [v6 setMatchPath:matchPath];

  matchDomains = [(NEAppRule *)self matchDomains];
  [v6 setMatchDomains:matchDomains];

  matchAccountIdentifiers = [(NEAppRule *)self matchAccountIdentifiers];
  [v6 setMatchAccountIdentifiers:matchAccountIdentifiers];

  [v6 setNoDivertDNS:{-[NEAppRule noDivertDNS](self, "noDivertDNS")}];
  [v6 setAllowEmptyDesignatedRequirement:{-[NEAppRule allowEmptyDesignatedRequirement](self, "allowEmptyDesignatedRequirement")}];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  matchDomains = [(NEAppRule *)self matchDomains];
  [coderCopy encodeObject:matchDomains forKey:@"MatchDomains"];

  matchAccountIdentifiers = [(NEAppRule *)self matchAccountIdentifiers];
  [coderCopy encodeObject:matchAccountIdentifiers forKey:@"MatchAccountIdentifiers"];

  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];
  [coderCopy encodeObject:matchSigningIdentifier forKey:@"SigningIdentifier"];

  [coderCopy encodeBool:-[NEAppRule allowEmptyDesignatedRequirement](self forKey:{"allowEmptyDesignatedRequirement"), @"AllowEmptyDesignatedRequirement"}];
  matchPath = [(NEAppRule *)self matchPath];
  [coderCopy encodeObject:matchPath forKey:@"Path"];

  [coderCopy encodeBool:-[NEAppRule noDivertDNS](self forKey:{"noDivertDNS"), @"NoDivertDNS"}];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NEAppRule;
  [(NEAppRule *)&v2 dealloc];
}

- (NEAppRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NEAppRule;
  v5 = [(NEAppRule *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MatchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MatchAccountIdentifiers"];
    matchAccountIdentifiers = v5->_matchAccountIdentifiers;
    v5->_matchAccountIdentifiers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SigningIdentifier"];
    matchSigningIdentifier = v5->_matchSigningIdentifier;
    v5->_matchSigningIdentifier = v16;

    v5->_allowEmptyDesignatedRequirement = [coderCopy decodeBoolForKey:@"AllowEmptyDesignatedRequirement"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    matchPath = v5->_matchPath;
    v5->_matchPath = v18;

    v5->_noDivertDNS = [coderCopy decodeBoolForKey:@"NoDivertDNS"];
  }

  return v5;
}

- (NEAppRule)initWithSigningIdentifier:(NSString *)signingIdentifier
{
  v4 = signingIdentifier;
  v9.receiver = self;
  v9.super_class = NEAppRule;
  v5 = [(NEAppRule *)&v9 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    matchSigningIdentifier = v5->_matchSigningIdentifier;
    v5->_matchSigningIdentifier = v6;

    v5->_noRestriction = 1;
  }

  return v5;
}

@end