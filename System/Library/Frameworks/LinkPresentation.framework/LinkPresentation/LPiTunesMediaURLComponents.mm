@interface LPiTunesMediaURLComponents
+ (id)identifierFromQueryItems:(id)items pathComponent:(id)component;
+ (id)storefrontCountryCodeFromPathComponent:(id)component;
- (LPiTunesMediaURLComponents)initWithURL:(id)l;
@end

@implementation LPiTunesMediaURLComponents

- (LPiTunesMediaURLComponents)initWithURL:(id)l
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = LPiTunesMediaURLComponents;
  v5 = [(LPiTunesMediaURLComponents *)&v18 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    path = [v6 path];
    pathComponents = [path pathComponents];

    if ([pathComponents count] >= 3 && (objc_msgSend(v6, "queryItems"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(pathComponents, "lastObject"), v10 = objc_claimAutoreleasedReturnValue(), +[LPiTunesMediaURLComponents identifierFromQueryItems:pathComponent:](LPiTunesMediaURLComponents, "identifierFromQueryItems:pathComponent:", v9, v10), v11 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v11, identifier, v10, v9, v5->_identifier) && (objc_msgSend(pathComponents, "objectAtIndexedSubscript:", 1), v13 = objc_claimAutoreleasedReturnValue(), +[LPiTunesMediaURLComponents storefrontCountryCodeFromPathComponent:](LPiTunesMediaURLComponents, "storefrontCountryCodeFromPathComponent:", v13), v14 = objc_claimAutoreleasedReturnValue(), storefrontCountryCode = v5->_storefrontCountryCode, v5->_storefrontCountryCode = v14, storefrontCountryCode, v13, v5->_storefrontCountryCode))
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)identifierFromQueryItems:(id)items pathComponent:(id)component
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  componentCopy = component;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        name = [*(*(&v27 + 1) + 8 * i) name];
        v12 = [name isEqualToString:@"a"];

        if (v12)
        {
          value = componentCopy;

          goto LABEL_25;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = *v24;
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        name2 = [v17 name];
        v19 = [name2 isEqualToString:@"i"];

        if (v19)
        {
          value = [v17 value];

          goto LABEL_25;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if ([componentCopy hasPrefix:@"id"])
  {
    v20 = [componentCopy substringFromIndex:2];
LABEL_23:
    value = v20;
    goto LABEL_25;
  }

  if ([componentCopy hasPrefix:@"ra"])
  {
    v20 = componentCopy;
    goto LABEL_23;
  }

  value = 0;
LABEL_25:

  return value;
}

+ (id)storefrontCountryCodeFromPathComponent:(id)component
{
  componentCopy = component;
  if ([LPiTunesMediaStorefrontMappings isValidStorefrontCountryCode:componentCopy])
  {
    v4 = componentCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end