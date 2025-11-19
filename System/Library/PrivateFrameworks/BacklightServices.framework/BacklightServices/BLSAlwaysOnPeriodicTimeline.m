@interface BLSAlwaysOnPeriodicTimeline
- (BLSAlwaysOnPeriodicTimeline)initWithUpdateInterval:(double)a3 startDate:(id)a4 identifier:(id)a5 configure:(id)a6;
- (id)description;
- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4;
@end

@implementation BLSAlwaysOnPeriodicTimeline

- (BLSAlwaysOnPeriodicTimeline)initWithUpdateInterval:(double)a3 startDate:(id)a4 identifier:(id)a5 configure:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = BLSAlwaysOnPeriodicTimeline;
  v12 = [(BLSAlwaysOnTimeline *)&v15 initWithIdentifier:a5 configure:a6];
  v13 = v12;
  if (v12)
  {
    v12->_periodicInterval = a3;
    objc_storeStrong(&v12->_periodicStart, a4);
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
  v12 = self;
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

- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_periodicStart;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v9 = [v6 startDate];
  if (v7)
  {
    v10 = [v7 presentationTime];
    v11 = [v9 laterDate:v10];

    v9 = v11;
  }

  v12 = [v6 endDate];
  [v9 timeIntervalSinceDate:v8];
  periodicInterval = self->_periodicInterval;
  if (v13 > periodicInterval)
  {
    v30 = v7;
    v15 = (v13 / periodicInterval);
    v16 = self->_periodicInterval;
    goto LABEL_9;
  }

  if ([v12 compare:v8] != -1)
  {
    v30 = v7;
    v15 = 0;
    v16 = self->_periodicInterval;
LABEL_9:
    v18 = [BLSFidelityThreshold fidelityForUpdateInterval:v16];
    v17 = [MEMORY[0x277CBEB18] array];
    do
    {
      v19 = [(NSDate *)v8 dateByAddingTimeInterval:periodicInterval * v15];
      v20 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:v19 withRequestedFidelity:v18];
      [v17 addObject:v20];

      v21 = [v19 compare:v12];
      ++v15;
    }

    while (v21 != 1);
    v22 = bls_timelines_log();
    v7 = v30;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(BLSAlwaysOnTimeline *)self identifier];
      v27 = [v17 count];
      v25 = NSStringFromBLSUpdateFidelity(v18);
      v29 = [v6 bls_shortLoggingString];
      v26 = [v17 bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_79];
      *buf = 134219522;
      v32 = self;
      v33 = 2114;
      v34 = v28;
      v35 = 1024;
      v36 = v27;
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = periodicInterval;
      v41 = 2114;
      v42 = v29;
      v43 = 2112;
      v44 = v26;
      _os_log_debug_impl(&dword_21FE25000, v22, OS_LOG_TYPE_DEBUG, "%p:%{public}@ -> %d entries(%@) @ %lfs for %{public}@ : %@", buf, 0x44u);
    }

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

id __80__BLSAlwaysOnPeriodicTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentationTime];
  v3 = [v2 bls_shortLoggingString];

  return v3;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4
{
  if (self)
  {
    return [BLSFidelityThreshold fidelityForUpdateInterval:a3, a4, *(self + 24)];
  }

  return self;
}

@end