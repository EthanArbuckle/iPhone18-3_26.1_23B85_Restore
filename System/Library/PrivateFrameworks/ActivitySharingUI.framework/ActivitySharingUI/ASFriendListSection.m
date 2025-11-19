@interface ASFriendListSection
- (ASFriendListSection)initWithDate:(id)a3 andRows:(id)a4;
- (BOOL)containsFriendListRow:(id)a3;
- (NSDate)endDate;
@end

@implementation ASFriendListSection

- (ASFriendListSection)initWithDate:(id)a3 andRows:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASFriendListSection;
  v8 = [(ASFriendListSection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ASFriendListSection *)v8 setStartDate:v6];
    [(ASFriendListSection *)v9 setRows:v7];
  }

  return v9;
}

- (BOOL)containsFriendListRow:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(ASFriendListSection *)self rows];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 isEqual:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSDate)endDate
{
  if (self->_startDate)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setDay:1];
    [v3 setSecond:-1];
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v4 dateByAddingComponents:v3 toDate:self->_startDate options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end