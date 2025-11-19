@interface _WKWebExtensionWebNavigationURLFilter
- (BOOL)matchesURL:(id)a3;
- (_WKWebExtensionWebNavigationURLFilter)initWithDictionary:(id)a3 outErrorMessage:(id *)a4;
@end

@implementation _WKWebExtensionWebNavigationURLFilter

- (_WKWebExtensionWebNavigationURLFilter)initWithDictionary:(id)a3 outErrorMessage:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v22 = a3;
  if ((byte_1ED6417BA & 1) == 0)
  {
    v44[0] = @"url";
    qword_1ED6417D0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    byte_1ED6417BA = 1;
  }

  if ((byte_1ED6417BB & 1) == 0)
  {
    v42 = @"url";
    v41 = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v43 = v17;
    qword_1ED6417D8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    byte_1ED6417BB = 1;
  }

  if (WebKit::validateDictionary(v22, @"filters", qword_1ED6417D0, qword_1ED6417D8, a4))
  {
    if ((byte_1ED6417BC & 1) == 0)
    {
      v39[0] = @"hostContains";
      v40[0] = objc_opt_class();
      v39[1] = @"hostEquals";
      v40[1] = objc_opt_class();
      v39[2] = @"hostPrefix";
      v40[2] = objc_opt_class();
      v39[3] = @"hostSuffix";
      v40[3] = objc_opt_class();
      v39[4] = @"pathContains";
      v40[4] = objc_opt_class();
      v39[5] = @"pathEquals";
      v40[5] = objc_opt_class();
      v39[6] = @"pathPrefix";
      v40[6] = objc_opt_class();
      v39[7] = @"pathSuffix";
      v40[7] = objc_opt_class();
      v39[8] = @"queryContains";
      v40[8] = objc_opt_class();
      v39[9] = @"queryEquals";
      v40[9] = objc_opt_class();
      v39[10] = @"queryPrefix";
      v40[10] = objc_opt_class();
      v39[11] = @"querySuffix";
      v40[11] = objc_opt_class();
      v39[12] = @"urlContains";
      v40[12] = objc_opt_class();
      v39[13] = @"urlEquals";
      v40[13] = objc_opt_class();
      v39[14] = @"urlMatches";
      v40[14] = objc_opt_class();
      v39[15] = @"originAndPathMatches";
      v40[15] = objc_opt_class();
      v39[16] = @"urlPrefix";
      v40[16] = objc_opt_class();
      v39[17] = @"urlSuffix";
      v40[17] = objc_opt_class();
      v39[18] = @"schemes";
      v38 = objc_opt_class();
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v40[18] = v18;
      v39[19] = @"ports";
      v40[19] = objc_opt_class();
      qword_1ED6417E0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:20];

      byte_1ED6417BC = 1;
    }

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = [v22 objectForKeyedSubscript:@"url"];
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = *v34;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          if (!WebKit::validateDictionary(v9, @"url", 0, qword_1ED6417E0, a4))
          {
            goto LABEL_26;
          }

          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v27 = 0;
          v28 = &v27;
          v29 = 0x3032000000;
          v30 = __Block_byref_object_copy_;
          v31 = __Block_byref_object_dispose_;
          v32 = 0;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __76___WKWebExtensionWebNavigationURLFilter_initWithDictionary_outErrorMessage___block_invoke;
          v24[3] = &unk_1E762FEB0;
          v26 = &v27;
          v11 = v10;
          v25 = v11;
          [v9 enumerateKeysAndObjectsUsingBlock:v24];
          v12 = v28[5];
          if (v12)
          {
            v13 = v12;
            *a4 = v12;
          }

          else
          {
            [v20 addObject:v11];
          }

          _Block_object_dispose(&v27, 8);
          if (v12)
          {
LABEL_26:

            v14 = 0;
            goto LABEL_27;
          }
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v23.receiver = self;
    v23.super_class = _WKWebExtensionWebNavigationURLFilter;
    v14 = [(_WKWebExtensionWebNavigationURLFilter *)&v23 init];
    if (v14)
    {
      if ([v20 count])
      {
        v15 = v20;
      }

      else
      {
        v15 = 0;
      }

      objc_storeStrong(&v14->_predicateGroups, v15);
      v14 = v14;
      self = v14;
    }

    else
    {
      self = 0;
    }

LABEL_27:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)matchesURL:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  predicateGroups = self->_predicateGroups;
  if (predicateGroups)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = predicateGroups;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = *v22;
      while (1)
      {
        v9 = 0;
LABEL_5:
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (!v12)
        {
          break;
        }

        v13 = *v18;
LABEL_9:
        v14 = 0;
        while (1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          if (([*(*(&v17 + 1) + 8 * v14) matchesURL:v4] & 1) == 0)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            goto LABEL_19;
          }
        }

        if (++v9 != v7)
        {
          goto LABEL_5;
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v15 = 0;
        if (!v7)
        {
          goto LABEL_22;
        }
      }

LABEL_19:

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

LABEL_22:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

@end