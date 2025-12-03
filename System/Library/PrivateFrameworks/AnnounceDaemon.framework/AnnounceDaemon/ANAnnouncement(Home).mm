@interface ANAnnouncement(Home)
+ (id)uniqueAnnouncersInAnnouncements:()Home;
- (id)announcerNameInHome:()Home;
@end

@implementation ANAnnouncement(Home)

- (id)announcerNameInHome:()Home
{
  v4 = a3;
  announcer = [self announcer];
  v6 = [announcer nameInHome:v4];

  return v6;
}

+ (id)uniqueAnnouncersInAnnouncements:()Home
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          announcer = [*(*(&v14 + 1) + 8 * i) announcer];
          if ([v4 containsObject:announcer])
          {
            [v4 removeObject:announcer];
          }

          [v4 addObject:announcer];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    array = [v4 array];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

@end