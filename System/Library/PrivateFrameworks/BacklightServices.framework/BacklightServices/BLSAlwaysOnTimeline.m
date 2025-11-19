@interface BLSAlwaysOnTimeline
+ (_NSRange)rangeOfEntries:(id)a3 forDateInterval:(id)a4 shouldIncludePrevious:(BOOL)a5;
+ (id)constructFrameSpecifiersForTimelines:(id)a3 dateInterval:(id)a4 shouldConstructStartSpecifier:(BOOL)a5 framesPerSecond:(double)a6 previousSpecifier:(id)a7;
+ (id)emptyTimelineWithIdentifier:(id)a3;
+ (id)everyMinuteTimelineWithIdentifier:(id)a3 configure:(id)a4;
+ (id)timelineWithEntries:(id)a3 identifier:(id)a4 configure:(id)a5;
+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)a3 identifier:(id)a4 configure:(id)a5;
+ (id)timelineWithUpdateInterval:(double)a3 startDate:(id)a4 identifier:(id)a5 configure:(id)a6;
+ (int64_t)requestedFidelityForTimelines:(id)a3 inDateInterval:(id)a4;
+ (void)entriesCombinerForTimelines:(char)a3@<W3> dateInterval:(void *)a4@<X4> shouldConstructStartSpecifier:(uint64_t)a5@<X8> framesPerSecond:(double)a6@<D0> previousSpecifier:;
- (BLSAlwaysOnTimeline)initWithIdentifier:(id)a3 configure:(id)a4;
- (id)configureEntries:(id)a3 previousEntry:(id)a4;
- (id)configureEntry:(id)a3 previousEntry:(id)a4;
- (id)description;
- (int64_t)estimatedFidelityForPresentationTime:(id)a3 nextPresentationTime:(id)a4;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4;
- (void)entryBookkeepersForDateInterval:(char)a3@<W2> shouldConstructStartEntry:(void *)a4@<X3> framesPerSecond:(void *)a5@<X8> previousSpecifier:(double)a6@<D0>;
- (void)entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:;
@end

@implementation BLSAlwaysOnTimeline

+ (id)emptyTimelineWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[BLSAlwaysOnTimeline alloc] initWithIdentifier:v3 configure:0];

  return v4;
}

+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)a3 identifier:(id)a4 configure:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:a3 identifier:v7 configure:v8];

  return v9;
}

+ (id)everyMinuteTimelineWithIdentifier:(id)a3 configure:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:1 identifier:v5 configure:v6];

  return v7;
}

+ (id)timelineWithUpdateInterval:(double)a3 startDate:(id)a4 identifier:(id)a5 configure:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [[BLSAlwaysOnPeriodicTimeline alloc] initWithUpdateInterval:v9 startDate:v10 identifier:v11 configure:a3];

  return v12;
}

+ (id)timelineWithEntries:(id)a3 identifier:(id)a4 configure:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[BLSAlwaysOnExplicitEntriesTimeline alloc] initWithEntries:v7 identifier:v8 configure:v9];

  return v10;
}

- (BLSAlwaysOnTimeline)initWithIdentifier:(id)a3 configure:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BLSAlwaysOnTimeline;
  v9 = [(BLSAlwaysOnTimeline *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [v8 copy];
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
  v12 = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)configureEntry:(id)a3 previousEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLSAlwaysOnTimeline *)self identifier];
  if (!v8)
  {
    v9 = bls_timelines_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BLSAlwaysOnTimeline configureEntry:v9 previousEntry:?];
    }
  }

  [v6 setTimelineIdentifier:v8];
  configureEntryBlock = self->_configureEntryBlock;
  if (configureEntryBlock)
  {
    configureEntryBlock[2](configureEntryBlock, v6, v7);
  }

  v11 = [v6 copy];

  return v11;
}

- (id)configureEntries:(id)a3 previousEntry:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v7 = [(BLSAlwaysOnTimeline *)self configureEntry:*(*(&v17 + 1) + 8 * v12) previousEntry:v13, v17];
        [v8 addObject:v7];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v8 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (_NSRange)rangeOfEntries:(id)a3 forDateInterval:(id)a4 shouldIncludePrevious:(BOOL)a5
{
  obj = a5;
  v47 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v36 = a4;
  v6 = [v35 count];
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v35)
  {
    v9 = v6;
    if (v6)
    {
      v10 = [v36 startDate];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = v35;
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

            v17 = [*(*(&v41 + 1) + 8 * v15) presentationTime];
            v18 = [v17 compare:v10];

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
        v21 = [v36 endDate];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = [v11 reverseObjectEnumerator];
        obja = v22;
        v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
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

              v27 = [*(*(&v37 + 1) + 8 * v25) presentationTime];
              v28 = [v21 compare:v27] == -1;

              if (!v28)
              {
                v22 = obja;
                v7 = (-v26 < v32) - v26;
                goto LABEL_34;
              }

              ++v25;
              ++v26;
            }

            while (v23 != v25);
            v22 = obja;
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

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v14 = 0;
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
      v24 = self;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = self;
      _os_log_impl(&dword_21FE25000, v10, v11, "%p class:%{public}@ should override requestedFidelityForStartEntryInDateInterval:withPreviousEntry: to avoid brute force method for timeline:%{public}@", &v23, 0x20u);
    }

    [BLSAlwaysOnTimeline requestedFidelityForStartEntryInDateInterval:withPreviousEntry:]::didFaultOnce = 1;
    if (v7)
    {
      v14 = [v7 requestedFidelity];
    }

    else
    {
      v15 = [(BLSAlwaysOnTimeline *)self unconfiguredEntriesForDateInterval:v6 previousEntry:0];
      v16 = [v15 count];
      if (v16)
      {
        v17 = [v15 firstObject];
        v14 = [v17 requestedFidelity];
        if (v14 == -1)
        {
          if (v16 == 1)
          {
            v14 = 0;
          }

          else
          {
            v18 = [v15 objectAtIndexedSubscript:1];
            v19 = [v17 presentationTime];
            v20 = [v18 presentationTime];
            v14 = [(BLSAlwaysOnTimeline *)self estimatedFidelityForPresentationTime:v19 nextPresentationTime:v20];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int64_t)estimatedFidelityForPresentationTime:(id)a3 nextPresentationTime:(id)a4
{
  [a4 timeIntervalSinceDate:a3];
  result = [BLSFidelityThreshold fidelityForUpdateInterval:?];
  if (result == 3)
  {
    return 2;
  }

  return result;
}

- (void)entryBookkeepersForDateInterval:(char)a3@<W2> shouldConstructStartEntry:(void *)a4@<X3> framesPerSecond:(void *)a5@<X8> previousSpecifier:(double)a6@<D0>
{
  v56 = *MEMORY[0x277D85DE8];
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a6;
  v11 = a4;
  v12 = v11;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (a1)
  {
    v50[0] = &v51;
    v50[1] = a5;
    if (v11)
    {
      v13 = [a1 identifier];
      v14 = [v12 entrySpecifierForTimelineIdentifier:v13];
    }

    else
    {
      v14 = 0;
    }

    v49 = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 timelineEntry];
    v15 = [v54 unconfiguredEntriesForDateInterval:v53 previousEntry:v49];
    v16 = v15;
    if (!v49)
    {
      goto LABEL_9;
    }

    if (![v15 count])
    {
      goto LABEL_9;
    }

    v17 = [v16 firstObject];
    v18 = [v17 presentationTime];
    v19 = [(BLSAlwaysOnTimelineEntry *)v49 presentationTime];
    v20 = [v18 isEqualToDate:v19];

    if (v20)
    {
      v21 = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 previousTimelineEntry];
      v22 = v49;
      v49 = v21;

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v50, v49, 0);
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

      v23 = a5[1];
      if (v23 >= a5[2])
      {
        v28 = std::vector<BLSTimelineEntryBookkeeper>::__emplace_back_slow_path<BLSTimelineEntryBookkeeper>(a5, &v46);
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

      a5[1] = v28;
    }

    v44 = 0;
    v45 = &v54;
    v43 = 0;
    *&v46 = &v43;
    *(&v46 + 1) = &v45;
    *&v47 = &v54;
    *(&v47 + 1) = &v44;
    *v48 = &v52;
    *&v48[8] = &v53;
    *&v48[16] = &v51;
    *&v48[24] = v50;
    *&v48[32] = &v49;
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

    else if (v52 == 1)
    {
      v33 = [v54 requestedFidelityForStartEntryInDateInterval:v53 withPreviousEntry:{v49, v39}];
      v34 = v54;
      v35 = [v53 startDate];
      v36 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:v35 withRequestedFidelity:v33];
      v37 = [v34 configureEntry:v36 previousEntry:v49];

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v50, v37, v49);
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
    v6 = **a1;
    v7 = [v9 presentationTime];
    v8 = v5[2](v5);
    [v9 setRequestedFidelity:{objc_msgSend(v6, "estimatedFidelityForPresentationTime:nextPresentationTime:", v7, v8)}];
  }
}

+ (void)entriesCombinerForTimelines:(char)a3@<W3> dateInterval:(void *)a4@<X4> shouldConstructStartSpecifier:(uint64_t)a5@<X8> framesPerSecond:(double)a6@<D0> previousSpecifier:
{
  v45[16] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v11 = a2;
  v12 = a4;
  objc_opt_self();
  v13 = v11;
  v14 = v13;
  if (v12)
  {
    v15 = [v12 presentationInterval];
    v16 = [v15 startDate];

    v17 = [v13 startDate];
    v18 = [v17 compare:v16];

    v14 = v13;
    if (v18 == -1)
    {
      v19 = objc_alloc(MEMORY[0x277CCA970]);
      v20 = [v13 endDate];
      v21 = [v20 laterDate:v16];
      v14 = [v19 initWithStartDate:v16 endDate:v21];
    }
  }

  v29 = a5;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v30;
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

        [(BLSAlwaysOnTimeline *)*(*(&v40 + 1) + 8 * i) entryBookkeepersForDateInterval:v13 shouldConstructStartEntry:a3 framesPerSecond:v12 previousSpecifier:&v34, a6];
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

  BLSTimelineEntriesCombiner::BLSTimelineEntriesCombiner(v29, &v31, v14, a6);
  v45[0] = &v31;
  std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](v45);

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)constructFrameSpecifiersForTimelines:(id)a3 dateInterval:(id)a4 shouldConstructStartSpecifier:(BOOL)a5 framesPerSecond:(double)a6 previousSpecifier:(id)a7
{
  v9 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = bls_timelines_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v11 bls_boundedDescriptionWithMax:10];
    [BLSAlwaysOnTimeline constructFrameSpecifiersForTimelines:v15 dateInterval:buf shouldConstructStartSpecifier:v14 framesPerSecond:? previousSpecifier:?];
  }

  if ([v11 count])
  {
    [(BLSAlwaysOnTimeline *)v11 entriesCombinerForTimelines:v12 dateInterval:v9 shouldConstructStartSpecifier:v13 framesPerSecond:v27 previousSpecifier:a6];
    v16 = BLSTimelineEntriesCombiner::constructFrameSpecifiers(v27);

    v30 = v27;
    std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  else if (v9)
  {
    v17 = [BLSAlwaysOnFrameSpecifier alloc];
    v18 = [BLSAlwaysOnTimelineEntrySpecifier alloc];
    v19 = [BLSAlwaysOnTimelineEntry alloc];
    v20 = [v12 startDate];
    [v12 duration];
    v21 = [(BLSAlwaysOnTimelineEntry *)v19 initWithPresentationTime:v20 requestedFidelity:0 animated:0 duration:0 timelineIdentifier:0 userObject:?];
    v22 = [(BLSAlwaysOnTimelineEntrySpecifier *)v18 initWithTimelineEntry:v21 percentComplete:0 previousTimelineEntry:1 didChange:1.0];
    v31 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v24 = [(BLSAlwaysOnFrameSpecifier *)v17 initWithTimelineEntrySpecifiers:v23 presentationInterval:v12];
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

+ (int64_t)requestedFidelityForTimelines:(id)a3 inDateInterval:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

      v12 = [*(*(&v15 + 1) + 8 * i) requestedFidelityForStartEntryInDateInterval:v6 withPreviousEntry:{0, v15}];
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