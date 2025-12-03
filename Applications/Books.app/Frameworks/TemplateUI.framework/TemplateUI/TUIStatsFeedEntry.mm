@interface TUIStatsFeedEntry
- (TUIStatsFeedEntry)initWithCollector:(id)collector;
@end

@implementation TUIStatsFeedEntry

- (TUIStatsFeedEntry)initWithCollector:(id)collector
{
  collectorCopy = collector;
  v25.receiver = self;
  v25.super_class = TUIStatsFeedEntry;
  v5 = [(TUIStatsFeedEntry *)&v25 init];
  if (v5)
  {
    for (i = 0; i != 5; ++i)
    {
      [collectorCopy elapsedTimeForPhase:i];
      v5->_elapsedTime[i] = v7;
    }

    for (j = 0; j != 29; ++j)
    {
      v5->_eventCount[j] = [collectorCopy countForEvent:j];
    }

    passes = [collectorCopy passes];
    v10 = [passes copy];
    passes = v5->_passes;
    v5->_passes = v10;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v5->_passes;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v22;
      do
      {
        for (k = 0; k != v14; k = k + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v21 + 1) + 8 * k);
          if (([v19 reason] & 0xE) != 0)
          {
            ++v15;
          }

          else
          {
            v16 += [v19 reason] & 1;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v5->_numberOfFullPasses = v15;
    v5->_numberOfPartialPasses = v16;
  }

  return v5;
}

@end