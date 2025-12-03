@interface BLSAlwaysOnPeriodicTimeline
- (BLSAlwaysOnPeriodicTimeline)initWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure;
- (id)description;
- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
@end

@implementation BLSAlwaysOnPeriodicTimeline

- (BLSAlwaysOnPeriodicTimeline)initWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = BLSAlwaysOnPeriodicTimeline;
  v12 = [(BLSAlwaysOnTimeline *)&v15 initWithIdentifier:identifier configure:configure];
  v13 = v12;
  if (v12)
  {
    v12->_periodicInterval = interval;
    objc_storeStrong(&v12->_periodicStart, date);
  }

  return v13;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __42__BLSAlwaysOnPeriodicTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

id __42__BLSAlwaysOnPeriodicTimeline_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"id"];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 32) bls_shortLoggingString];
  v7 = [v5 appendObject:v6 withName:@"start"];

  return [*(a1 + 32) appendDouble:@"period" withName:4 decimalPrecision:*(*(a1 + 40) + 24)];
}

- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry
{
  v45 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  v8 = self->_periodicStart;
  if (!v8)
  {
    array = 0;
    goto LABEL_15;
  }

  startDate = [intervalCopy startDate];
  if (entryCopy)
  {
    presentationTime = [entryCopy presentationTime];
    v11 = [startDate laterDate:presentationTime];

    startDate = v11;
  }

  endDate = [intervalCopy endDate];
  [startDate timeIntervalSinceDate:v8];
  periodicInterval = self->_periodicInterval;
  if (v13 > periodicInterval)
  {
    v30 = entryCopy;
    v15 = (v13 / periodicInterval);
    v16 = self->_periodicInterval;
    goto LABEL_9;
  }

  if ([endDate compare:v8] != -1)
  {
    v30 = entryCopy;
    v15 = 0;
    v16 = self->_periodicInterval;
LABEL_9:
    v18 = [BLSFidelityThreshold fidelityForUpdateInterval:v16];
    array = [MEMORY[0x277CBEB18] array];
    do
    {
      v19 = [(NSDate *)v8 dateByAddingTimeInterval:periodicInterval * v15];
      v20 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:v19 withRequestedFidelity:v18];
      [array addObject:v20];

      v21 = [v19 compare:endDate];
      ++v15;
    }

    while (v21 != 1);
    v22 = bls_timelines_log();
    entryCopy = v30;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(BLSAlwaysOnTimeline *)self identifier];
      v27 = [array count];
      v25 = NSStringFromBLSUpdateFidelity(v18);
      bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
      v26 = [array bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_79];
      *buf = 134219522;
      selfCopy = self;
      v33 = 2114;
      v34 = identifier;
      v35 = 1024;
      v36 = v27;
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = periodicInterval;
      v41 = 2114;
      v42 = bls_shortLoggingString;
      v43 = 2112;
      v44 = v26;
      _os_log_debug_impl(&dword_21FE25000, v22, OS_LOG_TYPE_DEBUG, "%p:%{public}@ -> %d entries(%@) @ %lfs for %{public}@ : %@", buf, 0x44u);
    }

    goto LABEL_14;
  }

  array = 0;
LABEL_14:

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];

  return array;
}

id __80__BLSAlwaysOnPeriodicTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentationTime];
  v3 = [v2 bls_shortLoggingString];

  return v3;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  if (self)
  {
    return [BLSFidelityThreshold fidelityForUpdateInterval:interval, entry, *(self + 24)];
  }

  return self;
}

@end