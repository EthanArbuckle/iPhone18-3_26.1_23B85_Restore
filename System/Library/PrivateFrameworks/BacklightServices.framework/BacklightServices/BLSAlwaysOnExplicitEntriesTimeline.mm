@interface BLSAlwaysOnExplicitEntriesTimeline
- (BLSAlwaysOnExplicitEntriesTimeline)initWithEntries:(id)entries identifier:(id)identifier configure:(id)configure;
- (id)description;
- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
@end

@implementation BLSAlwaysOnExplicitEntriesTimeline

- (BLSAlwaysOnExplicitEntriesTimeline)initWithEntries:(id)entries identifier:(id)identifier configure:(id)configure
{
  entriesCopy = entries;
  identifierCopy = identifier;
  configureCopy = configure;
  v15.receiver = self;
  v15.super_class = BLSAlwaysOnExplicitEntriesTimeline;
  v11 = [(BLSAlwaysOnTimeline *)&v15 initWithIdentifier:identifierCopy configure:configureCopy];
  if (v11)
  {
    v12 = [entriesCopy sortedArrayUsingComparator:&__block_literal_global_93];
    explicitEntries = v11->_explicitEntries;
    v11->_explicitEntries = v12;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __49__BLSAlwaysOnExplicitEntriesTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __49__BLSAlwaysOnExplicitEntriesTimeline_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = [*(a1 + 40) identifier];
  v3 = [v2 appendObject:? withName:?];

  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 24) withName:{"count"), @"count"}];
  v15 = [*(*(a1 + 40) + 24) firstObject];
  v5 = [*(*(a1 + 40) + 24) lastObject];
  v6 = *(a1 + 32);
  v7 = [v15 presentationTime];
  v8 = [v7 bls_shortLoggingString];
  v9 = [v6 appendObject:v8 withName:@"first"];

  if (v15 != v5)
  {
    v10 = *(a1 + 32);
    v11 = [v5 presentationTime];
    v12 = [v11 bls_shortLoggingString];
    v13 = [v10 appendObject:v12 withName:@"last"];
  }
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  v27 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  v7 = entryCopy;
  if (entryCopy)
  {
    requestedFidelity = [entryCopy requestedFidelity];
  }

  else
  {
    v20 = self->_explicitEntries;
    if ([(NSArray *)v20 count])
    {
      firstObject = [(NSArray *)v20 firstObject];
      requestedFidelity = [firstObject requestedFidelity];

      startDate = [intervalCopy startDate];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v20;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = *v23;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            presentationTime = [v15 presentationTime];
            v17 = [presentationTime compare:startDate];

            if (v17 != -1)
            {
              requestedFidelity = [v15 requestedFidelity];
              goto LABEL_14;
            }
          }

          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      requestedFidelity = -1;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return requestedFidelity;
}

- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry
{
  v37 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  presentationTime = [entryCopy presentationTime];
  if (presentationTime && ([intervalCopy startDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "compare:", presentationTime), v9, v10 != 1))
  {
    v12 = objc_alloc(MEMORY[0x277CCA970]);
    endDate = [intervalCopy endDate];
    v14 = [endDate laterDate:presentationTime];
    v15 = [v12 initWithStartDate:presentationTime endDate:v14];

    v11 = 0;
    intervalCopy = v15;
  }

  else
  {
    v11 = 1;
  }

  v16 = self->_explicitEntries;
  v18 = [BLSAlwaysOnTimeline rangeOfEntries:v16 forDateInterval:intervalCopy shouldIncludePrevious:v11];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(NSArray *)v16 subarrayWithRange:v18, v17];
  }

  v20 = bls_timelines_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(BLSAlwaysOnTimeline *)self identifier];
    v24 = [v19 count];
    bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
    v26 = [v19 bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_104];
    v27 = 134219010;
    selfCopy = self;
    v29 = 2114;
    v30 = identifier;
    v31 = 1024;
    v32 = v24;
    v33 = 2114;
    v34 = bls_shortLoggingString;
    v35 = 2112;
    v36 = v26;
    _os_log_debug_impl(&dword_21FE25000, v20, OS_LOG_TYPE_DEBUG, "%p:%{public}@ -> %d entries(subset) for %{public}@ : %@", &v27, 0x30u);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __87__BLSAlwaysOnExplicitEntriesTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentationTime];
  v3 = [v2 bls_shortLoggingString];

  return v3;
}

@end