@interface TUISingleContentBoxBuilder
- (unint64_t)checkContents:(id)a3;
@end

@implementation TUISingleContentBoxBuilder

- (unint64_t)checkContents:(id)a3
{
  v3 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_38708;
  v19[3] = &unk_25DF80;
  v4 = objc_opt_new();
  v20 = v4;
  [v3 enumerateObjectsUsingBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    v10 = 1021;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 role] == 0;
          if (v13 & v8)
          {
            goto LABEL_14;
          }

          v8 |= v13;
        }

        else
        {
          if (v8)
          {
            goto LABEL_14;
          }

          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v10 = 0;
LABEL_14:

  return v10;
}

@end