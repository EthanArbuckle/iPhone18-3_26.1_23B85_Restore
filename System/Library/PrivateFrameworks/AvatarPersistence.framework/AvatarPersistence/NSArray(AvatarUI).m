@interface NSArray(AvatarUI)
- (id)avt_description;
- (id)avt_firstObjectPassingTest:()AvatarUI;
- (id)avt_map:()AvatarUI;
@end

@implementation NSArray(AvatarUI)

- (id)avt_description
{
  v1 = [a1 description];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

  return v2;
}

- (id)avt_map:()AvatarUI
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277CBE658];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = v4[2](v4, v12);
        if (!v13)
        {
          [MEMORY[0x277CBEAD8] raise:v10 format:{@"Got nil transformed object for %@", v12}];
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)avt_firstObjectPassingTest:()AvatarUI
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

@end