@interface INStartCallIntentAccessibility
- (BOOL)_axIsContactSelectedInClarity:(id)a3;
- (void)setContacts:(id)a3;
@end

@implementation INStartCallIntentAccessibility

- (void)setContacts:(id)a3
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v20 = [v4 mutableCopy];
  v5 = objc_opt_new();
  v6 = [v5 isClarityBoardEnabled];

  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [v10 siriMatches];
          if ([v11 count])
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v24 + 1) + 8 * j) contactIdentifier];
                  if ([v17 length] && -[INStartCallIntentAccessibility _axIsContactSelectedInClarity:](self, "_axIsContactSelectedInClarity:", v17))
                  {

                    goto LABEL_19;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            [v20 removeObject:v10];
          }

LABEL_19:
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v4 = v19;
  }

  v23.receiver = self;
  v23.super_class = INStartCallIntentAccessibility;
  [(INStartCallIntentAccessibility *)&v23 setContacts:v20, v19];

  v18 = *MEMORY[0x29EDCA608];
}

- (BOOL)_axIsContactSelectedInClarity:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [MEMORY[0x29EDB8BB8] sharedInstance];
  v5 = [v4 entries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) contactProperty];
        v11 = [v10 contact];
        v12 = [v11 identifier];

        LOBYTE(v10) = [v12 isEqualToString:v3];
        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

@end