@interface NSArray
- (id)copyGroupIntoDictionary:(id)a3;
@end

@implementation NSArray

- (id)copyGroupIntoDictionary:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:{v12, v16}];
          if (!v13)
          {
            v13 = +[NSMutableArray array];
            [v5 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  return v14;
}

@end