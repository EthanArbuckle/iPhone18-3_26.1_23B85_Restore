@interface BLSAlwaysOnFrequencyPerMinuteTimeline
- (BLSAlwaysOnFrequencyPerMinuteTimeline)initWithPerMinuteUpdateFrequency:(int64_t)a3 identifier:(id)a4 configure:(id)a5;
- (id)description;
- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4;
@end

@implementation BLSAlwaysOnFrequencyPerMinuteTimeline

- (BLSAlwaysOnFrequencyPerMinuteTimeline)initWithPerMinuteUpdateFrequency:(int64_t)a3 identifier:(id)a4 configure:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = BLSAlwaysOnFrequencyPerMinuteTimeline;
  v10 = [(BLSAlwaysOnTimeline *)&v15 initWithIdentifier:v8 configure:v9];
  if (v10)
  {
    if (a3 <= 0)
    {
      v11 = bls_timelines_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BLSAlwaysOnFrequencyPerMinuteTimeline initWithPerMinuteUpdateFrequency:a3 identifier:v8 configure:v11];
      }

      a3 = 1;
    }

    v10->_frequencyPerMinute = a3;
    v12 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v10->_calendar;
    v10->_calendar = v12;
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__BLSAlwaysOnFrequencyPerMinuteTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  v12 = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

id __52__BLSAlwaysOnFrequencyPerMinuteTimeline_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"id"];

  return [*(a1 + 32) appendDouble:@"freq" withName:4 decimalPrecision:*(*(a1 + 40) + 32)];
}

- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v39 = a4;
  v6 = [v43 startDate];
  v7 = [v39 presentationTime];
  v40 = v7;
  if (v7 && [v6 compare:v7] != 1)
  {
    v9 = v7;

    v8 = 1;
    v6 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v42 = v10;
  [v10 setSecond:0];
  v11 = [(NSCalendar *)self->_calendar components:32896 fromDate:v6];
  v38 = v11;
  if ([v11 second])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v11 nanosecond] == 0;
  }

  v41 = [MEMORY[0x277CBEB18] array];
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = [(NSCalendar *)self->_calendar nextDateAfterDate:v6 matchingComponents:v10 options:5124];
  }

  v14 = v13;
  v15 = self->_calendar;
  frequencyPerMinute = self->_frequencyPerMinute;
  v17 = [v43 endDate];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke;
  v50[3] = &unk_278428BA0;
  v56 = frequencyPerMinute;
  v18 = v15;
  v51 = v18;
  v19 = v14;
  v52 = v19;
  v20 = v6;
  v53 = v20;
  v57 = v8;
  v21 = v41;
  v54 = v21;
  v37 = v17;
  v55 = v37;
  v22 = MEMORY[0x223D716E0](v50);
  v49 = 0;
  (v22)[2](v22, v19, &v49);
  if ((v49 & 1) == 0)
  {
    calendar = self->_calendar;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_2;
    v47[3] = &unk_278428BC8;
    v48 = v22;
    [(NSCalendar *)calendar enumerateDatesStartingAfterDate:v19 matchingComponents:v10 options:5120 usingBlock:v47];
  }

  v24 = [v21 count];
  if (v24 >= 2)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_3;
    v45[3] = &unk_278428BF0;
    v46 = v20;
    v25 = [v21 indexOfObjectPassingTest:v45];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v25 <= 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      v24 = v25;
    }

    [v21 removeObjectsInRange:{0, v24 - 1}];
    goto LABEL_18;
  }

LABEL_19:
  v26 = [BLSFidelityThreshold fidelityForUpdateInterval:60.0 / self->_frequencyPerMinute];
  v27 = bls_timelines_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v36 = [(BLSAlwaysOnTimeline *)self identifier];
    v34 = [v21 count];
    v31 = NSStringFromBLSUpdateFidelity(v26);
    v33 = [v43 bls_shortLoggingString];
    v32 = [v21 bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_6];
    *buf = 134219522;
    v59 = self;
    v60 = 2114;
    v61 = v36;
    v62 = 1024;
    v63 = v34;
    v64 = 2112;
    v65 = v31;
    v66 = 1024;
    v67 = frequencyPerMinute;
    v68 = 2114;
    v69 = v33;
    v70 = 2112;
    v35 = v32;
    v71 = v32;
    _os_log_debug_impl(&dword_21FE25000, v27, OS_LOG_TYPE_DEBUG, "%p:%{public}@ -> %d entries(%@) @ %d/m for %{public}@ : %@", buf, 0x40u);
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_59;
  v44[3] = &__block_descriptor_40_e16__16__0__NSDate_8l;
  v44[4] = v26;
  v28 = [v21 bs_map:v44];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 72);
  v7 = 1;
  v14 = v5;
  v8 = v5;
  while (1)
  {
    v9 = [*(a1 + 32) dateByAddingUnit:128 value:(v7 * (60.0 / v6) + 0.5) toDate:v14 options:0];
    if (*(a1 + 40) != v14 || ((v10 = [*(a1 + 48) compare:v9], !*(a1 + 80)) ? (v11 = v10 != 1) : (v11 = v10 == -1), v11))
    {
      [*(a1 + 56) addObject:v8];
    }

    v12 = v9;

    if ([v12 compare:*(a1 + 64)] == 1)
    {
      break;
    }

    v6 = *(a1 + 72);
    v8 = v12;
    if (v7++ >= v6)
    {
      goto LABEL_12;
    }
  }

  *a3 = 1;

LABEL_12:
}

id __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 bls_shortLoggingString];

  return v2;
}

id __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_59(uint64_t a1, uint64_t a2)
{
  v2 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:a2 withRequestedFidelity:*(a1 + 32)];

  return v2;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4
{
  if (self)
  {
    return [BLSFidelityThreshold fidelityForUpdateInterval:a3, a4, 60.0 / *(self + 32)];
  }

  return self;
}

- (void)initWithPerMinuteUpdateFrequency:(int)a1 identifier:(uint64_t)a2 configure:(os_log_t)log .cold.1(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "frequency:%d for identifier:%@ must be > 0, using 1 instead", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end