@interface WFRemoveCalendarItemsAction
- (Class)contentItemClass;
- (id)accessResource;
- (unint64_t)entityType;
- (void)deleteItems:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFRemoveCalendarItemsAction

- (void)deleteItems:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v27 = a3;
  if ([(WFRemoveCalendarItemsAction *)self entityType])
  {
    v4 = WFGetWorkflowReminderStore();
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v5 = getREMSaveRequestClass_softClass;
    v42 = getREMSaveRequestClass_softClass;
    if (!getREMSaveRequestClass_softClass)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __getREMSaveRequestClass_block_invoke;
      v38[3] = &unk_278C222B8;
      v38[4] = &v39;
      __getREMSaveRequestClass_block_invoke(v38);
      v5 = v40[3];
    }

    v6 = v5;
    _Block_object_dispose(&v39, 8);
    v7 = [[v5 alloc] initWithStore:v4];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v27;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v29 + 1) + 8 * i) reminder];
          v13 = [v7 updateReminder:v12];

          [v13 removeFromList];
        }

        v9 = [v8 countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v9);
    }

    v14 = dispatch_get_global_queue(0, 0);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __43__WFRemoveCalendarItemsAction_deleteItems___block_invoke;
    v28[3] = &unk_278C221F8;
    v28[4] = self;
    [v7 saveWithQueue:v14 completion:v28];
  }

  else
  {
    v15 = [(WFRemoveCalendarItemsAction *)self parameterValueForKey:@"WFCalendarIncludeFutureEvents" ofClass:objc_opt_class()];
    v16 = [v15 BOOLValue];

    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v34 = 0u;
    v17 = v27;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v18)
    {
      v19 = *v35;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v34 + 1) + 8 * j);
          v22 = [v21 eventStore];
          v23 = [v21 event];
          v33 = 0;
          v24 = [v22 removeEvent:v23 span:v16 commit:1 error:&v33];
          v25 = v33;

          if ((v24 & 1) == 0)
          {
            [(WFRemoveCalendarItemsAction *)self finishRunningWithError:v25];

            goto LABEL_22;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    [(WFRemoveCalendarItemsAction *)self finishRunningWithError:0];
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFRemoveCalendarItemsAction *)self accessResource];
  if ([v5 status] == 4)
  {
    v6 = [(WFRemoveCalendarItemsAction *)self entityType];
    v7 = 0x277CFC288;
    if (v6)
    {
      v7 = 0x277CFC4E8;
    }

    v8 = *v7;
    v26 = 0;
    v9 = [v4 collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v26];
    v10 = v26;
    v11 = [v9 items];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v10;
    v12 = [v10 items];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = [(WFRemoveCalendarItemsAction *)self output];
          [v18 addItem:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [(WFRemoveCalendarItemsAction *)self deleteItems:v11];
    }

    else
    {
      [(WFRemoveCalendarItemsAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    v19 = [v5 availabilityError];
    [(WFRemoveCalendarItemsAction *)self finishRunningWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)accessResource
{
  v3 = [(WFRemoveCalendarItemsAction *)self resourceManager];
  v4 = [(WFRemoveCalendarItemsAction *)self entityType];
  v5 = off_278C013C0;
  if (v4)
  {
    v5 = off_278C01728;
  }

  v6 = *v5;
  v7 = [v3 resourceObjectsOfClass:objc_opt_class()];
  v8 = [v7 anyObject];

  return v8;
}

- (Class)contentItemClass
{
  v2 = [(WFRemoveCalendarItemsAction *)self definition];
  v3 = [v2 objectForKey:@"WFCalendarItemEntityType"];
  v4 = [v3 isEqualToString:@"Event"];

  v5 = 0x277CFC288;
  if (!v4)
  {
    v5 = 0x277CFC4E8;
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return v7;
}

- (unint64_t)entityType
{
  v2 = [(WFRemoveCalendarItemsAction *)self definition];
  v3 = [v2 objectForKey:@"WFCalendarItemEntityType"];
  v4 = [v3 isEqualToString:@"Event"];

  return v4 ^ 1u;
}

@end