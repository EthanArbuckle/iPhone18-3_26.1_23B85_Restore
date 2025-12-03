@interface EKICSPreviewModel
- (BOOL)shouldAllowDeleteEvent:(id)event;
- (BOOL)shouldAllowUpdateEvent:(id)event;
- (EKICSPreviewModel)initWithICSData:(id)data eventStore:(id)store options:(unint64_t)options;
- (NSArray)allEvents;
- (NSArray)importedEvents;
- (NSArray)unimportedEvents;
- (id)importEvent:(id)event intoCalendar:(id)calendar;
- (void)importAllIntoCalendar:(id)calendar;
@end

@implementation EKICSPreviewModel

- (EKICSPreviewModel)initWithICSData:(id)data eventStore:(id)store options:(unint64_t)options
{
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  storeCopy = store;
  v48.receiver = self;
  v48.super_class = EKICSPreviewModel;
  v10 = [(EKICSPreviewModel *)&v48 init];
  v11 = v10;
  if (v10)
  {
    v42 = storeCopy;
    objc_storeStrong(&v10->_destStore, store);
    v43 = dataCopy;
    v12 = [dataCopy copy];
    data = v11->_data;
    v11->_data = v12;

    v11->_options = options;
    v14 = [objc_alloc(MEMORY[0x1E6966A18]) initWithEKOptions:48];
    tempStore = v11->_tempStore;
    v11->_tempStore = v14;

    v17 = v11->_data;
    v16 = v11->_tempStore;
    defaultCalendarForNewEvents = [(EKEventStore *)v16 defaultCalendarForNewEvents];
    v19 = [(EKEventStore *)v16 importICSData:v17 intoCalendar:defaultCalendarForNewEvents options:*MEMORY[0x1E6992E30] | *MEMORY[0x1E6992E28] | v11->_options];

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    importedEvents = v11->_importedEvents;
    v11->_importedEvents = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    unimportedEvents = v11->_unimportedEvents;
    v11->_unimportedEvents = v22;

    v24 = [MEMORY[0x1E695DFA8] set];
    eventsAllowingUpdate = v11->_eventsAllowingUpdate;
    v11->_eventsAllowingUpdate = v24;

    v26 = [MEMORY[0x1E695DFA8] set];
    eventsAllowingDelete = v11->_eventsAllowingDelete;
    v11->_eventsAllowingDelete = v26;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = v19;
    v29 = [v28 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (!v29)
    {
      goto LABEL_16;
    }

    v30 = v29;
    v31 = *v45;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * i);
        if (options)
        {
          notes = [*(*(&v44 + 1) + 8 * i) notes];
          v35 = [notes stringByReplacingOccurrencesOfString:@"=0D=0A" withString:&stru_1F4EF6790];
          [v33 setNotes:v35];
        }

        uniqueID = [v33 uniqueID];
        v37 = [(EKEventStore *)v11->_destStore eventWithUniqueId:uniqueID];
        if (!v37)
        {
          goto LABEL_12;
        }

        [(NSMutableSet *)v11->_eventsAllowingDelete addObject:uniqueID];
        sequenceNumber = [v37 sequenceNumber];
        if (sequenceNumber < [v33 sequenceNumber])
        {
          [(NSMutableSet *)v11->_eventsAllowingUpdate addObject:uniqueID];
LABEL_12:
          v39 = v11->_unimportedEvents;
          v40 = v33;
          goto LABEL_14;
        }

        v39 = v11->_importedEvents;
        v40 = v37;
LABEL_14:
        [(NSMutableArray *)v39 addObject:v40];
        v11->_actionsState = [v33 actionsState];
      }

      v30 = [v28 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (!v30)
      {
LABEL_16:

        storeCopy = v42;
        dataCopy = v43;
        break;
      }
    }
  }

  return v11;
}

- (NSArray)importedEvents
{
  v2 = [(NSMutableArray *)self->_importedEvents copy];

  return v2;
}

- (NSArray)unimportedEvents
{
  v2 = [(NSMutableArray *)self->_unimportedEvents copy];

  return v2;
}

- (NSArray)allEvents
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[EKICSPreviewModel totalEventCount](self, "totalEventCount")}];
  if ([(NSMutableArray *)self->_importedEvents count])
  {
    [v3 addObjectsFromArray:self->_importedEvents];
  }

  if ([(NSMutableArray *)self->_unimportedEvents count])
  {
    [v3 addObjectsFromArray:self->_unimportedEvents];
  }

  return v3;
}

- (id)importEvent:(id)event intoCalendar:(id)calendar
{
  v29[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  calendarCopy = calendar;
  v8 = self->_data;
  if (v8)
  {
    uniqueID = [eventCopy uniqueID];
    v28 = uniqueID;
    null = [MEMORY[0x1E695DFB0] null];
    v29[0] = null;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    destStore = self->_destStore;
    v24 = v11;
    v27 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v26 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v25 = calendarCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v16 = [(EKEventStore *)destStore importEventsWithExternalIDs:v13 fromICSData:v14 intoCalendars:v15 options:*MEMORY[0x1E6992E38] | *MEMORY[0x1E6992E28] | self->_options | 0x100000 batchSize:0];
    firstObject = [v16 firstObject];
    v17FirstObject = [firstObject firstObject];

    if (v17FirstObject)
    {
      [(EKICSPreviewModel *)self willChangeValueForKey:@"unimportedEvents"];
      [(EKICSPreviewModel *)self willChangeValueForKey:@"importedEvents"];
      [(NSMutableArray *)self->_unimportedEvents removeObject:eventCopy];
      [(NSMutableArray *)self->_importedEvents addObject:v17FirstObject];
      [(EKICSPreviewModel *)self didChangeValueForKey:@"unimportedEvents"];
      [(EKICSPreviewModel *)self didChangeValueForKey:@"importedEvents"];
      eventsAllowingUpdate = self->_eventsAllowingUpdate;
      uniqueID2 = [v17FirstObject uniqueID];
      [(NSMutableSet *)eventsAllowingUpdate removeObject:uniqueID2];

      eventsAllowingDelete = self->_eventsAllowingDelete;
      uniqueID3 = [v17FirstObject uniqueID];
      [(NSMutableSet *)eventsAllowingDelete addObject:uniqueID3];
    }
  }

  else
  {
    v17FirstObject = 0;
  }

  return v17FirstObject;
}

- (void)importAllIntoCalendar:(id)calendar
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  0x8100000 = [(EKEventStore *)self->_destStore importICSData:selfCopy->_data intoCalendar:calendar options:*MEMORY[0x1E6992E38] | *MEMORY[0x1E6992E28] | selfCopy->_options | 0x8100000];
  if ([0x8100000 count])
  {
    [(EKICSPreviewModel *)selfCopy willChangeValueForKey:@"unimportedEvents"];
    [(EKICSPreviewModel *)selfCopy willChangeValueForKey:@"importedEvents"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = 0x8100000;
    obj = 0x8100000;
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      v24 = selfCopy;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v7 = selfCopy->_unimportedEvents;
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v26;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v26 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v25 + 1) + 8 * j);
                uniqueID = [v12 uniqueID];
                uniqueID2 = [v6 uniqueID];
                v15 = [uniqueID isEqualToString:uniqueID2];

                if (v15)
                {
                  selfCopy = v24;
                  [(NSMutableArray *)v24->_unimportedEvents removeObject:v12];
                  [(NSMutableArray *)v24->_importedEvents addObject:v6];
                  goto LABEL_17;
                }
              }

              v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
              selfCopy = v24;
              if (v9)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          eventsAllowingUpdate = selfCopy->_eventsAllowingUpdate;
          uniqueID3 = [v6 uniqueID];
          [(NSMutableSet *)eventsAllowingUpdate removeObject:uniqueID3];

          eventsAllowingDelete = selfCopy->_eventsAllowingDelete;
          uniqueID4 = [v6 uniqueID];
          [(NSMutableSet *)eventsAllowingDelete addObject:uniqueID4];
        }

        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }

    [(EKICSPreviewModel *)selfCopy didChangeValueForKey:@"unimportedEvents"];
    [(EKICSPreviewModel *)selfCopy didChangeValueForKey:@"importedEvents"];
    0x8100000 = v20;
  }
}

- (BOOL)shouldAllowDeleteEvent:(id)event
{
  eventsAllowingDelete = self->_eventsAllowingDelete;
  uniqueID = [event uniqueID];
  LOBYTE(eventsAllowingDelete) = [(NSMutableSet *)eventsAllowingDelete containsObject:uniqueID];

  return eventsAllowingDelete;
}

- (BOOL)shouldAllowUpdateEvent:(id)event
{
  eventsAllowingUpdate = self->_eventsAllowingUpdate;
  uniqueID = [event uniqueID];
  LOBYTE(eventsAllowingUpdate) = [(NSMutableSet *)eventsAllowingUpdate containsObject:uniqueID];

  return eventsAllowingUpdate;
}

@end