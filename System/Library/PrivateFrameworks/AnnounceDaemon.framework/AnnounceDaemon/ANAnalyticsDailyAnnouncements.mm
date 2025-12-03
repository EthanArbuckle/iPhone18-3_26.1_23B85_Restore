@interface ANAnalyticsDailyAnnouncements
- (ANAnalyticsDailyAnnouncements)initWithDictionary:(id)dictionary;
- (ANAnalyticsDailyAnnouncements)initWithLastAccess:(double)access;
- (BOOL)shouldReport;
- (id)dictionary;
- (unint64_t)announcementsCount;
- (unint64_t)homesCount;
- (void)incrementCountInHome:(id)home group:(id)group;
- (void)merge:(id)merge;
@end

@implementation ANAnalyticsDailyAnnouncements

- (ANAnalyticsDailyAnnouncements)initWithLastAccess:(double)access
{
  v9.receiver = self;
  v9.super_class = ANAnalyticsDailyAnnouncements;
  v4 = [(ANAnalyticsDailyAnnouncements *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lastAccess = access;
    v6 = objc_opt_new();
    homes = v5->_homes;
    v5->_homes = v6;
  }

  return v5;
}

- (ANAnalyticsDailyAnnouncements)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(ANAnalyticsDailyAnnouncements *)self init];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = dictionaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"lastAccess", v17}])
        {
          v12 = [v6 objectForKey:v11];
          [v12 doubleValue];
          v5->_lastAccess = v13;
        }

        else
        {
          homes = v5->_homes;
          v12 = [v6 objectForKey:v11];
          [(NSMutableDictionary *)homes setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(ANAnalyticsDailyAnnouncements *)self lastAccess];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"lastAccess"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  homes = [(ANAnalyticsDailyAnnouncements *)self homes];
  v7 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(homes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
        v13 = [homes2 objectForKey:v11];
        [v3 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)merge:(id)merge
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  mergeCopy = merge;
  obj = [mergeCopy homes];
  v4 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    v31 = *v43;
    do
    {
      v7 = 0;
      v32 = v5;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        homes = [(ANAnalyticsDailyAnnouncements *)self homes];
        v10 = [homes objectForKeyedSubscript:v8];

        if (v10)
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          homes2 = [mergeCopy homes];
          homes6 = [homes2 objectForKeyedSubscript:v8];

          v37 = [homes6 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v37)
          {
            v34 = v7;
            v35 = *v39;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v39 != v35)
                {
                  objc_enumerationMutation(homes6);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                selfCopy = self;
                homes3 = [(ANAnalyticsDailyAnnouncements *)self homes];
                v17 = [homes3 objectForKeyedSubscript:v8];
                v18 = [v17 mutableCopy];

                v19 = [v18 objectForKeyedSubscript:v14];
                homes4 = [mergeCopy homes];
                v21 = [homes4 objectForKeyedSubscript:v8];
                v22 = [v21 objectForKeyedSubscript:v14];

                if (v19)
                {
                  unsignedIntegerValue = [v19 unsignedIntegerValue];
                  unsignedIntegerValue2 = [v22 unsignedIntegerValue];
                  if (unsignedIntegerValue <= unsignedIntegerValue2)
                  {
                    v25 = unsignedIntegerValue2;
                  }

                  else
                  {
                    v25 = unsignedIntegerValue;
                  }

                  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
                  [v18 setObject:v26 forKey:v14];
                }

                else
                {
                  [v18 setObject:v22 forKey:v14];
                }

                homes5 = [(ANAnalyticsDailyAnnouncements *)selfCopy homes];
                [homes5 setObject:v18 forKeyedSubscript:v8];

                self = selfCopy;
              }

              v37 = [homes6 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v37);
            v6 = v31;
            v5 = v32;
            v7 = v34;
          }
        }

        else
        {
          homes6 = [mergeCopy homes];
          v28 = [homes6 objectForKeyedSubscript:v8];
          homes7 = [(ANAnalyticsDailyAnnouncements *)self homes];
          [homes7 setObject:v28 forKeyedSubscript:v8];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v5);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (unint64_t)announcementsCount
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(ANAnalyticsDailyAnnouncements *)self homes];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  v3 = 0;
  if (v20)
  {
    v19 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        homes = [(ANAnalyticsDailyAnnouncements *)self homes];
        v7 = [homes objectForKeyedSubscript:v5];

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            v11 = 0;
            do
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * v11);
              homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
              v14 = [homes2 objectForKeyedSubscript:v5];
              v15 = [v14 objectForKey:v12];

              v3 += [v15 unsignedIntegerValue];
              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v4 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)homesCount
{
  homes = [(ANAnalyticsDailyAnnouncements *)self homes];
  v3 = [homes count];

  return v3;
}

- (BOOL)shouldReport
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSince1970];
  v5 = v4 + -43200.0;

  [(ANAnalyticsDailyAnnouncements *)self lastAccess];
  return v6 < v5;
}

- (void)incrementCountInHome:(id)home group:(id)group
{
  v31 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  v8 = ANLogHandleANAnalyticsDailyAnnouncements();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = &stru_2851BDB18;
    v27 = 2112;
    v28 = homeCopy;
    v29 = 2112;
    v30 = groupCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Incrementing announcement count. HomeID=%@, GroupID=%@", buf, 0x20u);
  }

  uUIDString = [homeCopy UUIDString];
  v10 = uUIDString;
  if (groupCopy && uUIDString)
  {
    homes = [(ANAnalyticsDailyAnnouncements *)self homes];
    v12 = [homes objectForKeyedSubscript:v10];

    homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
    v14 = homes2;
    if (v12)
    {
      v15 = [homes2 objectForKeyedSubscript:v10];
      v16 = [v15 mutableCopy];

      v17 = [v16 objectForKeyedSubscript:groupCopy];
      v18 = v17;
      if (v17)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue") + 1}];
        [v16 setObject:v19 forKey:groupCopy];
      }

      else
      {
        [v16 setObject:&unk_2851C49B0 forKey:groupCopy];
      }

      homes3 = [(ANAnalyticsDailyAnnouncements *)self homes];
      [homes3 setObject:v16 forKeyedSubscript:v10];
    }

    else
    {
      v23 = groupCopy;
      v24 = &unk_2851C49B0;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v14 setObject:v20 forKey:v10];

      v16 = v14;
    }
  }

  else
  {
    v16 = ANLogHandleANAnalyticsDailyAnnouncements();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v26 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_FAULT, "%@Failed to increment count due to nil identifiers", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end