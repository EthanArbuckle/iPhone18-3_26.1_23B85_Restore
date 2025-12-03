@interface BLSAlwaysOnTimeline
+ (_NSRange)rangeOfEntries:(id)entries forDateInterval:(id)interval shouldIncludePrevious:(BOOL)previous;
+ (id)constructFrameSpecifiersForTimelines:(id)timelines dateInterval:(id)interval shouldConstructStartSpecifier:(BOOL)specifier framesPerSecond:(double)second previousSpecifier:(id)previousSpecifier;
+ (id)emptyTimelineWithIdentifier:(id)identifier;
+ (id)everyMinuteTimelineWithIdentifier:(id)identifier configure:(id)configure;
+ (id)timelineWithEntries:(id)entries identifier:(id)identifier configure:(id)configure;
+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure;
+ (id)timelineWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure;
+ (int64_t)requestedFidelityForTimelines:(id)timelines inDateInterval:(id)interval;
+ (void)entriesCombinerForTimelines:(char)timelines@<W3> dateInterval:(void *)interval@<X4> shouldConstructStartSpecifier:(uint64_t)specifier@<X8> framesPerSecond:(double)second@<D0> previousSpecifier:;
- (BLSAlwaysOnTimeline)initWithIdentifier:(id)identifier configure:(id)configure;
- (id)configureEntries:(id)entries previousEntry:(id)entry;
- (id)configureEntry:(id)entry previousEntry:(id)previousEntry;
- (id)description;
- (int64_t)estimatedFidelityForPresentationTime:(id)time nextPresentationTime:(id)presentationTime;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
- (void)entryBookkeepersForDateInterval:(char)interval@<W2> shouldConstructStartEntry:(void *)entry@<X3> framesPerSecond:(void *)second@<X8> previousSpecifier:(double)specifier@<D0>;
- (void)entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:;
@end

@implementation BLSAlwaysOnTimeline

+ (id)emptyTimelineWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[BLSAlwaysOnTimeline alloc] initWithIdentifier:identifierCopy configure:0];

  return v4;
}

+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v9 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:frequency identifier:identifierCopy configure:configureCopy];

  return v9;
}

+ (id)everyMinuteTimelineWithIdentifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v7 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:1 identifier:identifierCopy configure:configureCopy];

  return v7;
}

+ (id)timelineWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure
{
  dateCopy = date;
  identifierCopy = identifier;
  configureCopy = configure;
  v12 = [[BLSAlwaysOnPeriodicTimeline alloc] initWithUpdateInterval:dateCopy startDate:identifierCopy identifier:configureCopy configure:interval];

  return v12;
}

+ (id)timelineWithEntries:(id)entries identifier:(id)identifier configure:(id)configure
{
  entriesCopy = entries;
  identifierCopy = identifier;
  configureCopy = configure;
  v10 = [[BLSAlwaysOnExplicitEntriesTimeline alloc] initWithEntries:entriesCopy identifier:identifierCopy configure:configureCopy];

  return v10;
}

- (BLSAlwaysOnTimeline)initWithIdentifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v14.receiver = self;
  v14.super_class = BLSAlwaysOnTimeline;
  v9 = [(BLSAlwaysOnTimeline *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = [configureCopy copy];
    configureEntryBlock = v10->_configureEntryBlock;
    v10->_configureEntryBlock = v11;
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __34__BLSAlwaysOnTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)configureEntry:(id)entry previousEntry:(id)previousEntry
{
  entryCopy = entry;
  previousEntryCopy = previousEntry;
  identifier = [(BLSAlwaysOnTimeline *)self identifier];
  if (!identifier)
  {
    v9 = bls_timelines_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BLSAlwaysOnTimeline configureEntry:v9 previousEntry:?];
    }
  }

  [entryCopy setTimelineIdentifier:identifier];
  configureEntryBlock = self->_configureEntryBlock;
  if (configureEntryBlock)
  {
    configureEntryBlock[2](configureEntryBlock, entryCopy, previousEntryCopy);
  }

  v11 = [entryCopy copy];

  return v11;
}

- (id)configureEntries:(id)entries previousEntry:(id)entry
{
  v22 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  entryCopy = entry;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = entriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = entryCopy;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        entryCopy = [(BLSAlwaysOnTimeline *)self configureEntry:*(*(&v17 + 1) + 8 * v12) previousEntry:v13, v17];
        [array addObject:entryCopy];

        ++v12;
        v13 = entryCopy;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [array copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (_NSRange)rangeOfEntries:(id)entries forDateInterval:(id)interval shouldIncludePrevious:(BOOL)previous
{
  obj = previous;
  v47 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  intervalCopy = interval;
  v6 = [entriesCopy count];
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (entriesCopy)
  {
    v9 = v6;
    if (v6)
    {
      startDate = [intervalCopy startDate];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = entriesCopy;
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v42;
        while (2)
        {
          v15 = 0;
          v16 = -v13;
          v13 += v12;
          do
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(v11);
            }

            presentationTime = [*(*(&v41 + 1) + 8 * v15) presentationTime];
            v18 = [presentationTime compare:startDate];

            if (v18 != -1)
            {
              if (v16)
              {
                v19 = v18 == 0;
              }

              else
              {
                v19 = 1;
              }

              v20 = !v19 && obj;
              v8 = (v20 << 63 >> 63) - v16;
              goto LABEL_19;
            }

            ++v15;
            --v16;
          }

          while (v12 != v15);
          v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

      if (obj && v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v9 - 1;
        v7 = 1;
      }

      else if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        endDate = [intervalCopy endDate];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        reverseObjectEnumerator = [v11 reverseObjectEnumerator];
        obja = reverseObjectEnumerator;
        v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v37 objects:v45 count:16];
        v7 = v9 - v8;
        if (v23)
        {
          v24 = *v38;
          v32 = v9 - v8;
          while (2)
          {
            v25 = 0;
            v26 = -v7;
            v7 -= v23;
            do
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(obja);
              }

              presentationTime2 = [*(*(&v37 + 1) + 8 * v25) presentationTime];
              v28 = [endDate compare:presentationTime2] == -1;

              if (!v28)
              {
                reverseObjectEnumerator = obja;
                v7 = (-v26 < v32) - v26;
                goto LABEL_34;
              }

              ++v25;
              ++v26;
            }

            while (v23 != v25);
            reverseObjectEnumerator = obja;
            v23 = [obja countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  v30 = v8;
  v31 = v7;
  result.length = v31;
  result.location = v30;
  return result;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  v29 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    requestedFidelity = 0;
  }

  else
  {
    v9 = bls_timelines_log();
    v10 = v9;
    if ([BLSAlwaysOnTimeline requestedFidelityForStartEntryInDateInterval:withPreviousEntry:]::didFaultOnce)
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    if (os_log_type_enabled(v9, v11))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v23 = 134218498;
      selfCopy = self;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_21FE25000, v10, v11, "%p class:%{public}@ should override requestedFidelityForStartEntryInDateInterval:withPreviousEntry: to avoid brute force method for timeline:%{public}@", &v23, 0x20u);
    }

    [BLSAlwaysOnTimeline requestedFidelityForStartEntryInDateInterval:withPreviousEntry:]::didFaultOnce = 1;
    if (entryCopy)
    {
      requestedFidelity = [entryCopy requestedFidelity];
    }

    else
    {
      v15 = [(BLSAlwaysOnTimeline *)self unconfiguredEntriesForDateInterval:intervalCopy previousEntry:0];
      v16 = [v15 count];
      if (v16)
      {
        firstObject = [v15 firstObject];
        requestedFidelity = [firstObject requestedFidelity];
        if (requestedFidelity == -1)
        {
          if (v16 == 1)
          {
            requestedFidelity = 0;
          }

          else
          {
            v18 = [v15 objectAtIndexedSubscript:1];
            presentationTime = [firstObject presentationTime];
            presentationTime2 = [v18 presentationTime];
            requestedFidelity = [(BLSAlwaysOnTimeline *)self estimatedFidelityForPresentationTime:presentationTime nextPresentationTime:presentationTime2];
          }
        }
      }

      else
      {
        requestedFidelity = 0;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return requestedFidelity;
}

- (int64_t)estimatedFidelityForPresentationTime:(id)time nextPresentationTime:(id)presentationTime
{
  [presentationTime timeIntervalSinceDate:time];
  result = [BLSFidelityThreshold fidelityForUpdateInterval:?];
  if (result == 3)
  {
    return 2;
  }

  return result;
}

- (void)entryBookkeepersForDateInterval:(char)interval@<W2> shouldConstructStartEntry:(void *)entry@<X3> framesPerSecond:(void *)second@<X8> previousSpecifier:(double)specifier@<D0>
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v53 = a2;
  intervalCopy = interval;
  specifierCopy = specifier;
  entryCopy = entry;
  v12 = entryCopy;
  second[1] = 0;
  second[2] = 0;
  *second = 0;
  if (self)
  {
    v50[0] = &specifierCopy;
    v50[1] = second;
    if (entryCopy)
    {
      identifier = [self identifier];
      v14 = [v12 entrySpecifierForTimelineIdentifier:identifier];
    }

    else
    {
      v14 = 0;
    }

    timelineEntry = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 timelineEntry];
    v15 = [selfCopy unconfiguredEntriesForDateInterval:v53 previousEntry:timelineEntry];
    v16 = v15;
    if (!timelineEntry)
    {
      goto LABEL_9;
    }

    if (![v15 count])
    {
      goto LABEL_9;
    }

    firstObject = [v16 firstObject];
    presentationTime = [firstObject presentationTime];
    presentationTime2 = [(BLSAlwaysOnTimelineEntry *)timelineEntry presentationTime];
    v20 = [presentationTime isEqualToDate:presentationTime2];

    if (v20)
    {
      previousTimelineEntry = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 previousTimelineEntry];
      v22 = timelineEntry;
      timelineEntry = previousTimelineEntry;

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v50, timelineEntry, 0);
    }

    else
    {
LABEL_9:
      if (v14)
      {
        BLSTimelineEntryBookkeeper::BLSTimelineEntryBookkeeper(&v46, v14);
      }

      else
      {
        memset(v48, 0, 33);
        v46 = 0u;
        v47 = 0u;
      }

      v23 = second[1];
      if (v23 >= second[2])
      {
        v28 = std::vector<BLSTimelineEntryBookkeeper>::__emplace_back_slow_path<BLSTimelineEntryBookkeeper>(second, &v46);
      }

      else
      {
        v24 = v46;
        v46 = 0u;
        *v23 = v24;
        v25 = v47;
        v47 = 0u;
        *(v23 + 16) = v25;
        v26 = *v48;
        *v48 = 0;
        *(v23 + 32) = v26;
        v27 = *&v48[8];
        *(v23 + 49) = *&v48[17];
        *(v23 + 40) = v27;
        v28 = v23 + 72;
      }

      second[1] = v28;
    }

    v44 = 0;
    v45 = &selfCopy;
    v43 = 0;
    *&v46 = &v43;
    *(&v46 + 1) = &v45;
    *&v47 = &selfCopy;
    *(&v47 + 1) = &v44;
    *v48 = &intervalCopy;
    *&v48[8] = &v53;
    *&v48[16] = &specifierCopy;
    *&v48[24] = v50;
    *&v48[32] = &timelineEntry;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v16;
    v30 = [v29 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v30)
    {
      v31 = *v40;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v29);
          }

          [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_2::operator()(&v46, *(*(&v39 + 1) + 8 * i));
        }

        v30 = [v29 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v30);
    }

    if (v43)
    {
      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_2::operator()(&v46, 0);
    }

    else if (intervalCopy == 1)
    {
      v33 = [selfCopy requestedFidelityForStartEntryInDateInterval:v53 withPreviousEntry:{timelineEntry, v39}];
      v34 = selfCopy;
      startDate = [v53 startDate];
      v36 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:startDate withRequestedFidelity:v33];
      v37 = [v34 configureEntry:v36 previousEntry:timelineEntry];

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v50, v37, timelineEntry);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:
{
  v9 = a2;
  v5 = a3;
  if ([v9 requestedFidelity] == -1)
  {
    v6 = **self;
    presentationTime = [v9 presentationTime];
    v8 = v5[2](v5);
    [v9 setRequestedFidelity:{objc_msgSend(v6, "estimatedFidelityForPresentationTime:nextPresentationTime:", presentationTime, v8)}];
  }
}

+ (void)entriesCombinerForTimelines:(char)timelines@<W3> dateInterval:(void *)interval@<X4> shouldConstructStartSpecifier:(uint64_t)specifier@<X8> framesPerSecond:(double)second@<D0> previousSpecifier:
{
  v45[16] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11 = a2;
  intervalCopy = interval;
  objc_opt_self();
  v13 = v11;
  v14 = v13;
  if (intervalCopy)
  {
    presentationInterval = [intervalCopy presentationInterval];
    startDate = [presentationInterval startDate];

    startDate2 = [v13 startDate];
    v18 = [startDate2 compare:startDate];

    v14 = v13;
    if (v18 == -1)
    {
      v19 = objc_alloc(MEMORY[0x277CCA970]);
      endDate = [v13 endDate];
      v21 = [endDate laterDate:startDate];
      v14 = [v19 initWithStartDate:startDate endDate:v21];
    }
  }

  specifierCopy = specifier;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = selfCopy;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v23)
  {
    v24 = *v41;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [(BLSAlwaysOnTimeline *)*(*(&v40 + 1) + 8 * i) entryBookkeepersForDateInterval:v13 shouldConstructStartEntry:timelines framesPerSecond:intervalCopy previousSpecifier:&v34, second];
        v37 = v34;
        v38 = v35;
        v35 = 0;
        v34 = 0uLL;
        v39 = v37;
        v26 = v32;
        if (v32 >= v33)
        {
          v27 = std::vector<BLSTimelineEntryIterator>::__emplace_back_slow_path<BLSTimelineEntryIterator>(&v31, v36);
        }

        else
        {
          *v32 = v36[0];
          v26[2] = 0;
          v26[3] = 0;
          v26[1] = 0;
          *(v26 + 1) = v37;
          v26[3] = v38;
          v37 = 0uLL;
          v38 = 0;
          v26[4] = v39;
          v27 = (v26 + 5);
        }

        v32 = v27;
        v44 = &v37;
        std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v44);
        v44 = &v34;
        std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v44);
      }

      v23 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v23);
  }

  BLSTimelineEntriesCombiner::BLSTimelineEntriesCombiner(specifierCopy, &v31, v14, second);
  v45[0] = &v31;
  std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](v45);

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)constructFrameSpecifiersForTimelines:(id)timelines dateInterval:(id)interval shouldConstructStartSpecifier:(BOOL)specifier framesPerSecond:(double)second previousSpecifier:(id)previousSpecifier
{
  specifierCopy = specifier;
  v34 = *MEMORY[0x277D85DE8];
  timelinesCopy = timelines;
  intervalCopy = interval;
  previousSpecifierCopy = previousSpecifier;
  v14 = bls_timelines_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [timelinesCopy bls_boundedDescriptionWithMax:10];
    [BLSAlwaysOnTimeline constructFrameSpecifiersForTimelines:v15 dateInterval:buf shouldConstructStartSpecifier:v14 framesPerSecond:? previousSpecifier:?];
  }

  if ([timelinesCopy count])
  {
    [(BLSAlwaysOnTimeline *)timelinesCopy entriesCombinerForTimelines:intervalCopy dateInterval:specifierCopy shouldConstructStartSpecifier:previousSpecifierCopy framesPerSecond:v27 previousSpecifier:second];
    v16 = BLSTimelineEntriesCombiner::constructFrameSpecifiers(v27);

    v30 = v27;
    std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  else if (specifierCopy)
  {
    v17 = [BLSAlwaysOnFrameSpecifier alloc];
    v18 = [BLSAlwaysOnTimelineEntrySpecifier alloc];
    v19 = [BLSAlwaysOnTimelineEntry alloc];
    startDate = [intervalCopy startDate];
    [intervalCopy duration];
    v21 = [(BLSAlwaysOnTimelineEntry *)v19 initWithPresentationTime:startDate requestedFidelity:0 animated:0 duration:0 timelineIdentifier:0 userObject:?];
    v22 = [(BLSAlwaysOnTimelineEntrySpecifier *)v18 initWithTimelineEntry:v21 percentComplete:0 previousTimelineEntry:1 didChange:1.0];
    v31 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v24 = [(BLSAlwaysOnFrameSpecifier *)v17 initWithTimelineEntrySpecifiers:v23 presentationInterval:intervalCopy];
    v32 = v24;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (int64_t)requestedFidelityForTimelines:(id)timelines inDateInterval:(id)interval
{
  v20 = *MEMORY[0x277D85DE8];
  timelinesCopy = timelines;
  intervalCopy = interval;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = timelinesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  v9 = *v16;
  v10 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v15 + 1) + 8 * i) requestedFidelityForStartEntryInDateInterval:intervalCopy withPreviousEntry:{0, v15}];
      if (v12 > v10)
      {
        v10 = v12;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v8);

  if (v10 == -1)
  {
    goto LABEL_13;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)configureEntry:(uint64_t)a1 previousEntry:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "%p nil identifier for timeline:%{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)constructFrameSpecifiersForTimelines:(os_log_t)log dateInterval:shouldConstructStartSpecifier:framesPerSecond:previousSpecifier:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_21FE25000, log, OS_LOG_TYPE_DEBUG, "constructFrameSpecifiersForTimelines:%{public}@", buf, 0xCu);
}

@end