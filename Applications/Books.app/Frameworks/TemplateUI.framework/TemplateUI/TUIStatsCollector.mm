@interface TUIStatsCollector
- (TUIStatsCollector)initWithMode:(unint64_t)mode;
- (void)updateWithPass:(id)pass currentEntriesUID:(id)d;
@end

@implementation TUIStatsCollector

- (TUIStatsCollector)initWithMode:(unint64_t)mode
{
  v11.receiver = self;
  v11.super_class = TUIStatsCollector;
  v4 = [(TUIStatsCollector *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    if (mode)
    {
      v6 = objc_opt_new();
      entries = v5->_entries;
      v5->_entries = v6;

      mode = v5->_mode;
    }

    if ((mode & 2) != 0)
    {
      v8 = objc_opt_new();
      passes = v5->_passes;
      v5->_passes = v8;
    }

    v5->_eventCount[28] = 0;
    *&v5->_eventCount[24] = 0u;
    *&v5->_eventCount[26] = 0u;
    *&v5->_eventCount[20] = 0u;
    *&v5->_eventCount[22] = 0u;
    *&v5->_eventCount[16] = 0u;
    *&v5->_eventCount[18] = 0u;
    *&v5->_eventCount[12] = 0u;
    *&v5->_eventCount[14] = 0u;
    *&v5->_eventCount[8] = 0u;
    *&v5->_eventCount[10] = 0u;
    *&v5->_eventCount[4] = 0u;
    *&v5->_eventCount[6] = 0u;
    *v5->_eventCount = 0u;
    *&v5->_eventCount[2] = 0u;
  }

  return v5;
}

- (void)updateWithPass:(id)pass currentEntriesUID:(id)d
{
  passCopy = pass;
  v7 = [d copy];
  currentEntriesUID = self->_currentEntriesUID;
  self->_currentEntriesUID = v7;

  mode = self->_mode;
  if ((mode & 4) != 0)
  {
    for (i = 0; i != 5; ++i)
    {
      [passCopy elapsedTimeForPhase:i];
      self->_elapsedTime[i] = v11 + self->_elapsedTime[i];
    }

    mode = self->_mode;
    if ((mode & 8) == 0)
    {
LABEL_3:
      if ((mode & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      [(NSMutableArray *)self->_passes addObject:passCopy];
      if ((self->_mode & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    }
  }

  else if ((mode & 8) == 0)
  {
    goto LABEL_3;
  }

  for (j = 0; j != 29; ++j)
  {
    self->_eventCount[j] += [passCopy countForEvent:j];
  }

  mode = self->_mode;
  if ((mode & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((mode & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = passCopy;
  entryPasses = [passCopy entryPasses];
  v14 = [entryPasses countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(entryPasses);
        }

        v18 = *(*(&v28 + 1) + 8 * k);
        entries = self->_entries;
        v20 = [v18 uid];
        v21 = [(NSMutableDictionary *)entries objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = [TUIStatsFeedEntryCollector alloc];
          v23 = self->_mode;
          v24 = [v18 uid];
          v21 = [(TUIStatsFeedEntryCollector *)v22 initWithMode:v23 uid:v24];

          v25 = self->_entries;
          v26 = [v18 uid];
          [(NSMutableDictionary *)v25 setObject:v21 forKeyedSubscript:v26];
        }

        [(TUIStatsFeedEntryCollector *)v21 updateWithPass:v18];
      }

      v15 = [entryPasses countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  passCopy = v27;
LABEL_23:
}

@end