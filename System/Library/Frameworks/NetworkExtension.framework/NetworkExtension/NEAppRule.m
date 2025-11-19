@interface NEAppRule
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)overlapsWithRule:(id)a3;
- (BOOL)signingIdentifierAllowed:(id)a3 domainsOrAccountsRequired:(BOOL *)a4;
- (NEAppRule)initWithCoder:(id)a3;
- (NEAppRule)initWithSigningIdentifier:(NSString *)signingIdentifier;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEAppRule

- (BOOL)signingIdentifierAllowed:(id)a3 domainsOrAccountsRequired:(BOOL *)a4
{
  v5 = a3;
  *a4 = 0;
  if ([v5 hasPrefix:@"com.apple."])
  {
    v6 = 0;
    while (strcmp([v5 UTF8String], (&signingIdentifierAllowed_domainsOrAccountsRequired__com_apple_exceptions)[v6]))
    {
      v6 += 2;
      if (v6 == 24)
      {
        goto LABEL_7;
      }
    }

    *a4 = 1;
  }

LABEL_7:

  return 1;
}

- (BOOL)overlapsWithRule:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEAppRule *)self matchSigningIdentifier];
  v6 = [v4 matchSigningIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_46;
  }

  v8 = [(NEAppRule *)self matchDomains];
  if ([v8 count])
  {
  }

  else
  {
    v9 = [v4 matchDomains];
    v10 = [v9 count];

    if (!v10)
    {
      v24 = 0;
      v29 = 1;
      goto LABEL_26;
    }
  }

  v11 = [(NEAppRule *)self matchDomains];
  if (![v11 count])
  {

    goto LABEL_23;
  }

  v12 = [v4 matchDomains];
  v13 = [v12 count];

  if (!v13)
  {
LABEL_23:
    v29 = 0;
    v24 = 1;
    goto LABEL_26;
  }

  v14 = [(NEAppRule *)self matchDomains];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [(NEAppRule *)self matchDomains];
      v18 = [v17 objectAtIndexedSubscript:v16];

      v19 = [v4 matchDomains];
      v20 = [v19 count];

      if (v20)
      {
        v21 = 1;
        do
        {
          v22 = [v4 matchDomains];
          v23 = [v22 objectAtIndexedSubscript:v21 - 1];

          v24 = ([v18 hasSuffix:v23] & 1) != 0 || objc_msgSend(v23, "hasSuffix:", v18);
          v25 = [v4 matchDomains];
          v26 = [v25 count];

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
      v27 = [(NEAppRule *)self matchDomains];
      v28 = [v27 count];

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
  v30 = [(NEAppRule *)self matchAccountIdentifiers];
  if ([v30 count])
  {
  }

  else
  {
    v31 = [v4 matchAccountIdentifiers];
    v32 = [v31 count];

    if (!v32)
    {
      LOBYTE(v44) = 0;
      v51 = 1;
      goto LABEL_44;
    }
  }

  v33 = [(NEAppRule *)self matchAccountIdentifiers];
  if (![v33 count])
  {

    goto LABEL_47;
  }

  v34 = [v4 matchAccountIdentifiers];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [(NEAppRule *)self matchAccountIdentifiers];
    v37 = [v36 count];

    if (v37)
    {
      v38 = 0;
      do
      {
        v39 = [(NEAppRule *)self matchAccountIdentifiers];
        v40 = [v39 objectAtIndexedSubscript:v38];

        v41 = [v4 matchAccountIdentifiers];
        v42 = [v41 count];

        if (v42)
        {
          v43 = 0;
          v44 = 0;
          do
          {
            v45 = [v4 matchAccountIdentifiers];
            v46 = [v45 objectAtIndexedSubscript:v43];

            v44 |= [v40 isEqualToString:v46];
            ++v43;
            v47 = [v4 matchAccountIdentifiers];
            v48 = [v47 count];
          }

          while (v43 < v48);
        }

        else
        {
          LOBYTE(v44) = 0;
        }

        ++v38;
        v49 = [(NEAppRule *)self matchAccountIdentifiers];
        v50 = [v49 count];

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
    v54 = [(NEAppRule *)self matchSigningIdentifier];
    v57 = 138412290;
    v58 = v54;
    _os_log_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_DEFAULT, "App Rule for %@ overlaps with an existing app rule", &v57, 0xCu);
  }

  v52 = 1;
LABEL_50:

  v55 = *MEMORY[0x1E69E9840];
  return v52;
}

- (id)initFromLegacyDictionary:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = NEAppRule;
  v5 = [(NEAppRule *)&v48 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E6982938];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982938]];
    v8 = isa_nsarray(v7);

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:v6];
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
    v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982930]];
    v19 = isa_nsarray(v18);

    if (v19)
    {
      [v4 objectForKeyedSubscript:v17];
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
    v28 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982928]];
    v29 = isa_nsarray(v28);

    if (v29)
    {
      [v4 objectForKeyedSubscript:v27];
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
  v5 = [(NEAppRule *)self matchSigningIdentifier];

  if (v5)
  {
    v6 = [(NEAppRule *)self matchSigningIdentifier];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6982948]];

    v7 = [(NEAppRule *)self matchSigningIdentifier];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982940]];
  }

  v15[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982938]];

  v9 = [(NEAppRule *)self matchDomains];

  if (v9)
  {
    v10 = [(NEAppRule *)self matchDomains];
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6982930]];
  }

  v11 = [(NEAppRule *)self matchAccountIdentifiers];

  if (v11)
  {
    v12 = [(NEAppRule *)self matchAccountIdentifiers];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6982928]];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37 = 0;
  v5 = [(NEAppRule *)self matchSigningIdentifier];

  if (v5)
  {
    v6 = [(NEAppRule *)self matchSigningIdentifier];
    v7 = [(NEAppRule *)self signingIdentifierAllowed:v6 domainsOrAccountsRequired:&v37];

    if (v7)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [(NEAppRule *)self matchSigningIdentifier];
    v11 = [v9 stringWithFormat:@"Dis-allowed app rule signing identifier (starts with com.apple): %@", v10];
    [NEConfiguration addError:v11 toList:v4];
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v8 = 0;
LABEL_7:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [(NEAppRule *)self matchDomains];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
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
          objc_enumerationMutation(v12);
        }

        if ((isa_nsstring(*(*(&v33 + 1) + 8 * i)) & 1) == 0)
        {
          [NEConfiguration addError:v4 toList:?];
          v8 = 0;
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [(NEAppRule *)self matchAccountIdentifiers];
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(v17);
        }

        if ((isa_nsstring(*(*(&v29 + 1) + 8 * j)) & 1) == 0)
        {
          [NEConfiguration addError:v4 toList:?];
          v8 = 0;
        }
      }

      v21 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v21);
  }

  if ((ne_session_disable_restrictions() & 1) == 0)
  {
    if (!(v19 | v28) && v37)
    {
      [NEConfiguration addError:v4 toList:?];
LABEL_32:
      v8 = 0;
      goto LABEL_33;
    }

    if (v19 | v28 && (v37 & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = [(NEAppRule *)self matchSigningIdentifier];
      v25 = [v23 stringWithFormat:@"App rule matching %@ cannot have matchDomains or matchAccountIdentifiers", v24];
      [NEConfiguration addError:v25 toList:v4];

      goto LABEL_32;
    }
  }

LABEL_33:

  v26 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEAppRule *)self matchSigningIdentifier];
  v6 = [v4 initWithSigningIdentifier:v5];

  v7 = [(NEAppRule *)self matchPath];
  [v6 setMatchPath:v7];

  v8 = [(NEAppRule *)self matchDomains];
  [v6 setMatchDomains:v8];

  v9 = [(NEAppRule *)self matchAccountIdentifiers];
  [v6 setMatchAccountIdentifiers:v9];

  [v6 setNoDivertDNS:{-[NEAppRule noDivertDNS](self, "noDivertDNS")}];
  [v6 setAllowEmptyDesignatedRequirement:{-[NEAppRule allowEmptyDesignatedRequirement](self, "allowEmptyDesignatedRequirement")}];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(NEAppRule *)self matchDomains];
  [v8 encodeObject:v4 forKey:@"MatchDomains"];

  v5 = [(NEAppRule *)self matchAccountIdentifiers];
  [v8 encodeObject:v5 forKey:@"MatchAccountIdentifiers"];

  v6 = [(NEAppRule *)self matchSigningIdentifier];
  [v8 encodeObject:v6 forKey:@"SigningIdentifier"];

  [v8 encodeBool:-[NEAppRule allowEmptyDesignatedRequirement](self forKey:{"allowEmptyDesignatedRequirement"), @"AllowEmptyDesignatedRequirement"}];
  v7 = [(NEAppRule *)self matchPath];
  [v8 encodeObject:v7 forKey:@"Path"];

  [v8 encodeBool:-[NEAppRule noDivertDNS](self forKey:{"noDivertDNS"), @"NoDivertDNS"}];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NEAppRule;
  [(NEAppRule *)&v2 dealloc];
}

- (NEAppRule)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NEAppRule;
  v5 = [(NEAppRule *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MatchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"MatchAccountIdentifiers"];
    matchAccountIdentifiers = v5->_matchAccountIdentifiers;
    v5->_matchAccountIdentifiers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SigningIdentifier"];
    matchSigningIdentifier = v5->_matchSigningIdentifier;
    v5->_matchSigningIdentifier = v16;

    v5->_allowEmptyDesignatedRequirement = [v4 decodeBoolForKey:@"AllowEmptyDesignatedRequirement"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    matchPath = v5->_matchPath;
    v5->_matchPath = v18;

    v5->_noDivertDNS = [v4 decodeBoolForKey:@"NoDivertDNS"];
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