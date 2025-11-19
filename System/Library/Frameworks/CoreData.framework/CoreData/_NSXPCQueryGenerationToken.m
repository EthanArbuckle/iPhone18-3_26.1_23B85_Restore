@interface _NSXPCQueryGenerationToken
- (_NSXPCQueryGenerationToken)initWithCoder:(id)a3;
@end

@implementation _NSXPCQueryGenerationToken

- (_NSXPCQueryGenerationToken)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = _NSXPCQueryGenerationToken;
  v4 = [(_NSQueryGenerationToken *)&v29 initWithCoder:?];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_38;
  }

  generationIdentifier = v4->super._generationIdentifier;
  storeIdentifier = v4->super._storeIdentifier;
  v8 = [a3 delegate];
  if (![a3 requiresSecureCoding])
  {
    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [a3 userInfo];
    if (v9)
    {
      v10 = v9;
      v9 = [objc_msgSend(objc_msgSend(v9 valueForKey:{@"NSConnectionContext", "managedObjectContext"), "persistentStoreCoordinator"}];
      if (v9)
      {
        goto LABEL_16;
      }

      v9 = [v10 valueForKey:@"PSCKey"];
    }
  }

  else
  {
    v9 = 0;
  }

  if (!v9 && v8)
  {
LABEL_12:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_34;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_34;
    }

    v9 = [v8 _persistentStoreCoordinator];
  }

  if (v9)
  {
LABEL_16:
    if (generationIdentifier)
    {
      v11 = storeIdentifier == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = [v9 persistentStores];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            if ([objc_msgSend(v17 "identifier")])
            {
              v18 = v17;
              if (v18)
              {
                v19 = [[_PFWeakReference alloc] initWithObject:v18];
                store = v5->super._store;
                if (store != v19)
                {

                  v5->super._store = v19;
                }

                *&v5->super._flags &= ~8u;
                *&v5->super._flags |= 4u;
              }

              goto LABEL_33;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v18 = 0;
LABEL_33:
    }
  }

LABEL_34:
  v21 = v5->super._store;
  if (!v21 || (WeakRetained = objc_loadWeakRetained(&v21->_object)) == 0)
  {
    WeakRetained = 0;
    *&v5->super._flags |= 8u;
  }

LABEL_38:
  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end