@interface ACCMemUsageStat
- (ACCMemUsageStat)initWithName:(id)a3;
- (BOOL)update;
- (double)timeIntervalSinceMark:(id)a3;
- (id)description;
- (void)mark:(id)a3;
@end

@implementation ACCMemUsageStat

- (ACCMemUsageStat)initWithName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ACCMemUsageStat;
  v6 = [(ACCMemUsageStat *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [[ACCMemUsageStatInfo alloc] initWithName:&stru_2848E72C8];
    statInfo = v7->_statInfo;
    v7->_statInfo = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    markList = v7->_markList;
    v7->_markList = v10;

    [(ACCMemUsageStat *)v7 update];
  }

  return v7;
}

- (id)description
{
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = &stru_2848E72C8;
  }

  return [MEMORY[0x277CCAB68] stringWithFormat:@"ACCMemUsageStat:%@ \nstatinfo: \n%@ markList: %lu entries \n", name, self->_statInfo, -[NSMutableDictionary count](self->_markList, "count")];
}

- (BOOL)update
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  MemoryUse = getMemoryUse(&v17, &v16, &v15);
  if (MemoryUse)
  {
    [(ACCMemUsageStatInfo *)self->_statInfo updateResident:v17 virtualValue:v16 physFootprintValue:v15];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSMutableDictionary *)self->_markList allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * i) updateResident:v17 virtualValue:v16 physFootprintValue:v15];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return MemoryUse;
}

- (void)mark:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_markList objectForKey:?];
  if (!v4)
  {
    v5 = [ACCMemUsageStatInfo alloc];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-mark-%@", self->_name, v7];
    v4 = [(ACCMemUsageStatInfo *)v5 initWithName:v6 andInfo:self->_statInfo];

    [(NSMutableDictionary *)self->_markList setObject:v4 forKey:v7];
  }
}

- (double)timeIntervalSinceMark:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_markList objectForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 startTime];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

@end