@interface NSURL
- (id)fragments;
@end

@implementation NSURL

- (id)fragments
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_opt_new();
    fragment = [self fragment];
    v4 = [fragment componentsSeparatedByString:@"&"];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:{@"=", v15}];
          if ([v10 count] >= 2)
          {
            v11 = [v10 objectAtIndexedSubscript:1];
            v12 = [v10 objectAtIndexedSubscript:0];
            [v2 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end