@interface RUISetupBridgeTermsStyle
- (void)applyToObjectModel:(id)a3;
@end

@implementation RUISetupBridgeTermsStyle

- (void)applyToObjectModel:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = RUISetupBridgeTermsStyle;
  [(RUISetupBridgeTermsStyle *)&v41 applyToObjectModel:v4];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v4 allPages];
  v5 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v24 = *v38;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        if ([v9 hasTableView])
        {
          v27 = v8;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v10 = [v9 tableViewOM];
          v11 = [v10 sections];

          v28 = v11;
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v28);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                v29 = 0u;
                v30 = 0u;
                v31 = 0u;
                v32 = 0u;
                v17 = [v16 rows];
                v18 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v30;
                  do
                  {
                    for (j = 0; j != v19; j = j + 1)
                    {
                      if (*v30 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = [*(*(&v29 + 1) + 8 * j) tableCell];
                      v23 = +[UIColor blackColor];
                      [v22 setBackgroundColor:v23];
                    }

                    v19 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
                  }

                  while (v19);
                }
              }

              v13 = [v28 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v13);
          }

          v7 = v24;
          v6 = v25;
          v8 = v27;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v6);
  }
}

@end