@interface EKICSPreviewModel
- (BOOL)shouldAllowDeleteEvent:(id)a3;
- (BOOL)shouldAllowUpdateEvent:(id)a3;
- (EKICSPreviewModel)initWithICSData:(id)a3 eventStore:(id)a4 options:(unint64_t)a5;
- (NSArray)allEvents;
- (NSArray)importedEvents;
- (NSArray)unimportedEvents;
- (id)importEvent:(id)a3 intoCalendar:(id)a4;
- (void)importAllIntoCalendar:(id)a3;
@end

@implementation EKICSPreviewModel

- (EKICSPreviewModel)initWithICSData:(id)a3 eventStore:(id)a4 options:(unint64_t)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v48.receiver = self;
  v48.super_class = EKICSPreviewModel;
  v10 = [(EKICSPreviewModel *)&v48 init];
  v11 = v10;
  if (v10)
  {
    v42 = v9;
    objc_storeStrong(&v10->_destStore, a4);
    v43 = v8;
    v12 = [v8 copy];
    data = v11->_data;
    v11->_data = v12;

    v11->_options = a5;
    v14 = [objc_alloc(MEMORY[0x1E6966A18]) initWithEKOptions:48];
    tempStore = v11->_tempStore;
    v11->_tempStore = v14;

    v17 = v11->_data;
    v16 = v11->_tempStore;
    v18 = [(EKEventStore *)v16 defaultCalendarForNewEvents];
    v19 = [(EKEventStore *)v16 importICSData:v17 intoCalendar:v18 options:*MEMORY[0x1E6992E30] | *MEMORY[0x1E6992E28] | v11->_options];

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
        if (a5)
        {
          v34 = [*(*(&v44 + 1) + 8 * i) notes];
          v35 = [v34 stringByReplacingOccurrencesOfString:@"=0D=0A" withString:&stru_1F4EF6790];
          [v33 setNotes:v35];
        }

        v36 = [v33 uniqueID];
        v37 = [(EKEventStore *)v11->_destStore eventWithUniqueId:v36];
        if (!v37)
        {
          goto LABEL_12;
        }

        [(NSMutableSet *)v11->_eventsAllowingDelete addObject:v36];
        v38 = [v37 sequenceNumber];
        if (v38 < [v33 sequenceNumber])
        {
          [(NSMutableSet *)v11->_eventsAllowingUpdate addObject:v36];
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

        v9 = v42;
        v8 = v43;
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

- (id)importEvent:(id)a3 intoCalendar:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_data;
  if (v8)
  {
    v9 = [v6 uniqueID];
    v28 = v9;
    v10 = [MEMORY[0x1E695DFB0] null];
    v29[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    destStore = self->_destStore;
    v24 = v11;
    v27 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v26 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v25 = v7;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v16 = [(EKEventStore *)destStore importEventsWithExternalIDs:v13 fromICSData:v14 intoCalendars:v15 options:*MEMORY[0x1E6992E38] | *MEMORY[0x1E6992E28] | self->_options | 0x100000 batchSize:0];
    v17 = [v16 firstObject];
    v18 = [v17 firstObject];

    if (v18)
    {
      [(EKICSPreviewModel *)self willChangeValueForKey:@"unimportedEvents"];
      [(EKICSPreviewModel *)self willChangeValueForKey:@"importedEvents"];
      [(NSMutableArray *)self->_unimportedEvents removeObject:v6];
      [(NSMutableArray *)self->_importedEvents addObject:v18];
      [(EKICSPreviewModel *)self didChangeValueForKey:@"unimportedEvents"];
      [(EKICSPreviewModel *)self didChangeValueForKey:@"importedEvents"];
      eventsAllowingUpdate = self->_eventsAllowingUpdate;
      v20 = [v18 uniqueID];
      [(NSMutableSet *)eventsAllowingUpdate removeObject:v20];

      eventsAllowingDelete = self->_eventsAllowingDelete;
      v22 = [v18 uniqueID];
      [(NSMutableSet *)eventsAllowingDelete addObject:v22];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)importAllIntoCalendar:(id)a3
{
  v3 = self;
  v35 = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self->_destStore importICSData:v3->_data intoCalendar:a3 options:*MEMORY[0x1E6992E38] | *MEMORY[0x1E6992E28] | v3->_options | 0x8100000];
  if ([v4 count])
  {
    [(EKICSPreviewModel *)v3 willChangeValueForKey:@"unimportedEvents"];
    [(EKICSPreviewModel *)v3 willChangeValueForKey:@"importedEvents"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v4;
    obj = v4;
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      v24 = v3;
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
          v7 = v3->_unimportedEvents;
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
                v13 = [v12 uniqueID];
                v14 = [v6 uniqueID];
                v15 = [v13 isEqualToString:v14];

                if (v15)
                {
                  v3 = v24;
                  [(NSMutableArray *)v24->_unimportedEvents removeObject:v12];
                  [(NSMutableArray *)v24->_importedEvents addObject:v6];
                  goto LABEL_17;
                }
              }

              v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
              v3 = v24;
              if (v9)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          eventsAllowingUpdate = v3->_eventsAllowingUpdate;
          v17 = [v6 uniqueID];
          [(NSMutableSet *)eventsAllowingUpdate removeObject:v17];

          eventsAllowingDelete = v3->_eventsAllowingDelete;
          v19 = [v6 uniqueID];
          [(NSMutableSet *)eventsAllowingDelete addObject:v19];
        }

        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }

    [(EKICSPreviewModel *)v3 didChangeValueForKey:@"unimportedEvents"];
    [(EKICSPreviewModel *)v3 didChangeValueForKey:@"importedEvents"];
    v4 = v20;
  }
}

- (BOOL)shouldAllowDeleteEvent:(id)a3
{
  eventsAllowingDelete = self->_eventsAllowingDelete;
  v4 = [a3 uniqueID];
  LOBYTE(eventsAllowingDelete) = [(NSMutableSet *)eventsAllowingDelete containsObject:v4];

  return eventsAllowingDelete;
}

- (BOOL)shouldAllowUpdateEvent:(id)a3
{
  eventsAllowingUpdate = self->_eventsAllowingUpdate;
  v4 = [a3 uniqueID];
  LOBYTE(eventsAllowingUpdate) = [(NSMutableSet *)eventsAllowingUpdate containsObject:v4];

  return eventsAllowingUpdate;
}

@end