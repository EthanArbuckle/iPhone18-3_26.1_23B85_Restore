@interface TTRComplicationTimelineViewModel
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTimelineEntry)currentEntry;
- (TTRComplicationTimelineViewModel)initWithTimelineModel:(id)a3 templateGenerator:(id)a4;
- (id)_timelineEntriesForModelEntries:(id)a3;
- (id)_timelineEntryForModelEntry:(id)a3;
- (id)entriesAfterDate:(id)a3 limit:(unint64_t)a4;
- (id)entriesInSameDayAsDate:(id)a3 limit:(unint64_t)a4;
@end

@implementation TTRComplicationTimelineViewModel

- (TTRComplicationTimelineViewModel)initWithTimelineModel:(id)a3 templateGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TTRComplicationTimelineViewModel;
  v9 = [(TTRComplicationTimelineViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timelineModel, a3);
    objc_storeStrong(&v10->_templateGenerator, a4);
  }

  return v10;
}

- (CLKComplicationTemplate)lockedTemplate
{
  v2 = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  v3 = [v2 lockedTemplate];

  return v3;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v2 = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  v3 = [v2 privacyTemplate];

  return v3;
}

- (CLKComplicationTimelineEntry)currentEntry
{
  v3 = [(TTRComplicationTimelineViewModel *)self timelineModel];
  v4 = [v3 currentEntry];
  v5 = [(TTRComplicationTimelineViewModel *)self _timelineEntryForModelEntry:v4];

  return v5;
}

- (id)entriesAfterDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TTRComplicationTimelineViewModel *)self timelineModel];
  v8 = [v7 entriesAfterDate:v6 limit:a4];

  v9 = [(TTRComplicationTimelineViewModel *)self _timelineEntriesForModelEntries:v8];

  return v9;
}

- (id)entriesInSameDayAsDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TTRComplicationTimelineViewModel *)self timelineModel];
  v8 = [v7 entriesInSameDayAsDate:v6 limit:a4];

  v9 = [(TTRComplicationTimelineViewModel *)self _timelineEntriesForModelEntries:v8];

  return v9;
}

- (id)_timelineEntryForModelEntry:(id)a3
{
  v4 = a3;
  v5 = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  v6 = [v5 templateForTimelineModelEntry:v4];

  v7 = [v4 startDate];

  v8 = [CLKComplicationTimelineEntry entryWithDate:v7 complicationTemplate:v6];

  return v8;
}

- (id)_timelineEntriesForModelEntries:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(TTRComplicationTimelineViewModel *)self _timelineEntryForModelEntry:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end