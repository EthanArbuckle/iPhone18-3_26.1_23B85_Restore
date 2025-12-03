@interface TTRComplicationTimelineViewModel
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTimelineEntry)currentEntry;
- (TTRComplicationTimelineViewModel)initWithTimelineModel:(id)model templateGenerator:(id)generator;
- (id)_timelineEntriesForModelEntries:(id)entries;
- (id)_timelineEntryForModelEntry:(id)entry;
- (id)entriesAfterDate:(id)date limit:(unint64_t)limit;
- (id)entriesInSameDayAsDate:(id)date limit:(unint64_t)limit;
@end

@implementation TTRComplicationTimelineViewModel

- (TTRComplicationTimelineViewModel)initWithTimelineModel:(id)model templateGenerator:(id)generator
{
  modelCopy = model;
  generatorCopy = generator;
  v12.receiver = self;
  v12.super_class = TTRComplicationTimelineViewModel;
  v9 = [(TTRComplicationTimelineViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timelineModel, model);
    objc_storeStrong(&v10->_templateGenerator, generator);
  }

  return v10;
}

- (CLKComplicationTemplate)lockedTemplate
{
  templateGenerator = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  lockedTemplate = [templateGenerator lockedTemplate];

  return lockedTemplate;
}

- (CLKComplicationTemplate)privacyTemplate
{
  templateGenerator = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  privacyTemplate = [templateGenerator privacyTemplate];

  return privacyTemplate;
}

- (CLKComplicationTimelineEntry)currentEntry
{
  timelineModel = [(TTRComplicationTimelineViewModel *)self timelineModel];
  currentEntry = [timelineModel currentEntry];
  v5 = [(TTRComplicationTimelineViewModel *)self _timelineEntryForModelEntry:currentEntry];

  return v5;
}

- (id)entriesAfterDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  timelineModel = [(TTRComplicationTimelineViewModel *)self timelineModel];
  v8 = [timelineModel entriesAfterDate:dateCopy limit:limit];

  v9 = [(TTRComplicationTimelineViewModel *)self _timelineEntriesForModelEntries:v8];

  return v9;
}

- (id)entriesInSameDayAsDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  timelineModel = [(TTRComplicationTimelineViewModel *)self timelineModel];
  v8 = [timelineModel entriesInSameDayAsDate:dateCopy limit:limit];

  v9 = [(TTRComplicationTimelineViewModel *)self _timelineEntriesForModelEntries:v8];

  return v9;
}

- (id)_timelineEntryForModelEntry:(id)entry
{
  entryCopy = entry;
  templateGenerator = [(TTRComplicationTimelineViewModel *)self templateGenerator];
  v6 = [templateGenerator templateForTimelineModelEntry:entryCopy];

  startDate = [entryCopy startDate];

  v8 = [CLKComplicationTimelineEntry entryWithDate:startDate complicationTemplate:v6];

  return v8;
}

- (id)_timelineEntriesForModelEntries:(id)entries
{
  entriesCopy = entries;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = entriesCopy;
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