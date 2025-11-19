@interface _FPItemDecorationFallbackLookup
- (_FPItemDecorationFallbackLookup)initWithItems:(id)a3;
- (id)fp_valueForKeyPath:(id)a3;
@end

@implementation _FPItemDecorationFallbackLookup

- (_FPItemDecorationFallbackLookup)initWithItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _FPItemDecorationFallbackLookup;
  v6 = [(_FPItemDecorationFallbackLookup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
  }

  return v7;
}

- (id)fp_valueForKeyPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) fp_valueForKeyPath:{v4, v12}];
        if (v9)
        {

          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end