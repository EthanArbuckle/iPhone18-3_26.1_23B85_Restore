@interface EKUIDiscoverabilityUtilities
+ (void)scanEventsForDiscoveredConferencesIfNeeded:(id)a3;
+ (void)sendDiscoverabilitySignalForConference:(id)a3;
@end

@implementation EKUIDiscoverabilityUtilities

+ (void)sendDiscoverabilitySignalForConference:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyApp])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v3 joinMethods];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v34 count:16];
    if (v5)
    {
      v6 = *v20;
      v7 = @"facetime";
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MEMORY[0x1E6992F40];
        v10 = [*(*(&v19 + 1) + 8 * v8) URL];
        LOBYTE(v9) = [v9 isTUConversationLink:v10];

        if (v9)
        {
          break;
        }

        if (v5 == ++v8)
        {
          v5 = [v4 countByEnumeratingWithState:&v19 objects:v34 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          v7 = @"other";
          break;
        }
      }
    }

    else
    {
      v7 = @"other";
    }

    v32 = @"type";
    v33 = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v12 = getBMStreamsClass_softClass;
    v31 = getBMStreamsClass_softClass;
    if (!getBMStreamsClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getBMStreamsClass_block_invoke;
      v26 = &unk_1E843F520;
      v27 = &v28;
      __getBMStreamsClass_block_invoke(&v23);
      v12 = v29[3];
    }

    v13 = v12;
    _Block_object_dispose(&v28, 8);
    v14 = [v12 discoverabilitySignal];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v15 = getBMDiscoverabilitySignalEventClass_softClass;
    v31 = getBMDiscoverabilitySignalEventClass_softClass;
    if (!getBMDiscoverabilitySignalEventClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getBMDiscoverabilitySignalEventClass_block_invoke;
      v26 = &unk_1E843F520;
      v27 = &v28;
      __getBMDiscoverabilitySignalEventClass_block_invoke(&v23);
      v15 = v29[3];
    }

    v16 = v15;
    _Block_object_dispose(&v28, 8);
    v17 = [[v15 alloc] initWithIdentifier:@"com.apple.mobilecal.virtual-conference-added" bundleID:@"com.apple.mobilecal" context:0 userInfo:v11];
    v18 = [v14 source];
    [v18 sendEvent:v17];
  }
}

+ (void)scanEventsForDiscoveredConferencesIfNeeded:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyApp])
  {
    v5 = [MEMORY[0x1E6993470] sharedPreferences];
    v6 = [v5 scanForDiscoveredVirtualConferences];

    if (v6)
    {
      v28 = a1;
      v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
      v8 = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [MEMORY[0x1E695DF00] date];
      v10 = [v8 components:28 fromDate:v9];

      [v7 setDay:1];
      [v7 setMonth:6];
      [v7 setYear:2021];
      [v10 setYear:{objc_msgSend(v10, "year") + 1}];
      v11 = [MEMORY[0x1E695DEE8] currentCalendar];
      v27 = [v11 dateFromComponents:v7];

      v12 = [MEMORY[0x1E695DEE8] currentCalendar];
      v26 = [v12 dateFromComponents:v10];

      v13 = [v4 sourcesEnabledForEntityType:0];
      v14 = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            if ([v20 sourceType] != 5 && objc_msgSend(v20, "sourceType") != 4)
            {
              v21 = [v20 calendarsForEntityType:0];
              v22 = [v21 allObjects];

              [v14 addObjectsFromArray:v22];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      v23 = [v4 predicateForEventsWithStartDate:v27 endDate:v26 calendars:v14 loadDefaultProperties:1];
      v24 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__EKUIDiscoverabilityUtilities_scanEventsForDiscoveredConferencesIfNeeded___block_invoke;
      block[3] = &unk_1E8441000;
      v30 = v4;
      v31 = v23;
      v32 = v28;
      v25 = v23;
      dispatch_async(v24, block);
    }
  }
}

void __75__EKUIDiscoverabilityUtilities_scanEventsForDiscoveredConferencesIfNeeded___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) eventsMatchingPredicate:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 virtualConference];
        if (v8)
        {
          v9 = v8;
          v10 = [v7 isSelfOrganized];

          if (v10)
          {
            v11 = *(a1 + 48);
            v12 = [v7 virtualConference];
            [v11 sendDiscoverabilitySignalForConference:v12];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    v13 = [MEMORY[0x1E6993470] sharedPreferences];
    [v13 setScanForDiscoveredVirtualConferences:0];
  }
}

@end