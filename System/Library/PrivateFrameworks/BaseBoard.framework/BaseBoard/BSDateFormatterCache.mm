@interface BSDateFormatterCache
+ (id)formatterForDateAsTimeNoAMPMWithLocale:(id)locale;
+ (id)sharedInstance;
- (BOOL)supportsMultiLineDayOfWeekMonthDayStyle;
- (BSDateFormatterCache)init;
- (id)_performFormattingWithSynchronizedBlock:(void *)block;
- (id)formatAbbreviatedTimerDuration:(double)duration;
- (id)formatAlarmSnoozeDuration:(double)duration;
- (id)formatDateAsAbbreviatedDayMonthStyle:(id)style;
- (id)formatDateAsAbbreviatedDayMonthWithTimeStyle:(id)style;
- (id)formatDateAsAbbreviatedDayOfWeekMonthDayStyle:(id)style;
- (id)formatDateAsAbbreviatedDayOfWeekWithTime:(id)time;
- (id)formatDateAsDayMonthYearStyle:(id)style;
- (id)formatDateAsDayOfWeek:(id)week;
- (id)formatDateAsDayOfWeekMonthDayStyle:(id)style;
- (id)formatDateAsLongYMDHMSNoSpacesWithDate:(id)date;
- (id)formatDateAsLongYMDHMSZPosixLocaleWithDate:(id)date;
- (id)formatDateAsLongYMDHMSZWithDate:(id)date;
- (id)formatDateAsMultiLineDayOfWeekMonthDayStyle:(id)style;
- (id)formatDateAsRelativeDateAndTimeStyle:(id)style;
- (id)formatDateAsRelativeDateStyle:(id)style;
- (id)formatDateAsShortDayMonthWithTimeStyle:(id)style;
- (id)formatDateAsTimeNoAMPM:(id)m;
- (id)formatDateAsTimeStyle:(id)style;
- (id)formatDuration:(double)duration;
- (id)formatNumberAsDecimal:(id)decimal;
- (id)formatTimerDuration:(double)duration;
- (void)_configureMultiLineDayOfWeekMonthDayFormatterIfNecessary;
- (void)_resetFormatters;
- (void)_resetFormatters:(id)formatters;
- (void)dealloc;
- (void)resetFormattersIfNecessary;
@end

@implementation BSDateFormatterCache

+ (id)sharedInstance
{
  if (qword_1ED4500A8 != -1)
  {
    dispatch_once(&qword_1ED4500A8, &__block_literal_global_39);
  }

  v3 = _MergedGlobals_36;

  return v3;
}

- (void)resetFormattersIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  locale = obj->_locale;
  if (currentLocale != locale)
  {
    v4 = !currentLocale || locale == 0;
    if (v4 || ([(NSLocale *)currentLocale isEqual:?]& 1) == 0)
    {
      [(BSDateFormatterCache *)obj _resetFormatters:currentLocale];
    }
  }

  objc_sync_exit(obj);
}

- (BSDateFormatterCache)init
{
  v6.receiver = self;
  v6.super_class = BSDateFormatterCache;
  v2 = [(BSDateFormatterCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(BSDateFormatterCache *)v2 _resetFormatters];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__resetFormatters name:*MEMORY[0x1E695DA68] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BSDateFormatterCache;
  [(BSDateFormatterCache *)&v4 dealloc];
}

void __38__BSDateFormatterCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BSDateFormatterCache);
  v1 = _MergedGlobals_36;
  _MergedGlobals_36 = v0;
}

+ (id)formatterForDateAsTimeNoAMPMWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setLocale:localeCopy];
  [v4 setLocalizedDateFormatFromTemplate:@"Jmm"];

  return v4;
}

- (id)formatNumberAsDecimal:(id)decimal
{
  decimalCopy = decimal;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__BSDateFormatterCache_formatNumberAsDecimal___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = decimalCopy;
  v5 = decimalCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __46__BSDateFormatterCache_formatNumberAsDecimal___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    [*(*(a1 + 32) + 144) setLocale:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 144) setNumberStyle:1];
    v2 = *(*(a1 + 32) + 144);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromNumber:v6];
}

- (id)_performFormattingWithSynchronizedBlock:(void *)block
{
  v3 = a2;
  v4 = v3;
  if (block)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__performFormattingWithSynchronizedBlock_ object:block file:@"BSDateFormatterCache.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"block"}];
    }

    blockCopy = block;
    objc_sync_enter(blockCopy);
    [blockCopy resetFormattersIfNecessary];
    v6 = v4[2](v4);
    objc_sync_exit(blockCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)formatDateAsDayOfWeek:(id)week
{
  weekCopy = week;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__BSDateFormatterCache_formatDateAsDayOfWeek___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = weekCopy;
  v5 = weekCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __46__BSDateFormatterCache_formatDateAsDayOfWeek___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    [*(*(a1 + 32) + 16) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"cccc" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 16);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsAbbreviatedDayOfWeekWithTime:(id)time
{
  timeCopy = time;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__BSDateFormatterCache_formatDateAsAbbreviatedDayOfWeekWithTime___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = timeCopy;
  v5 = timeCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __65__BSDateFormatterCache_formatDateAsAbbreviatedDayOfWeekWithTime___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    [*(*(a1 + 32) + 24) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEjmm" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 24);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsDayMonthYearStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__BSDateFormatterCache_formatDateAsDayMonthYearStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __54__BSDateFormatterCache_formatDateAsDayMonthYearStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(*(a1 + 32) + 32) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"yMd" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 32);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsShortDayMonthWithTimeStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__BSDateFormatterCache_formatDateAsShortDayMonthWithTimeStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __63__BSDateFormatterCache_formatDateAsShortDayMonthWithTimeStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(*(a1 + 32) + 40) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"Mdjmm" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 40);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsAbbreviatedDayOfWeekMonthDayStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__BSDateFormatterCache_formatDateAsAbbreviatedDayOfWeekMonthDayStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __70__BSDateFormatterCache_formatDateAsAbbreviatedDayOfWeekMonthDayStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    [*(*(a1 + 32) + 48) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEMMMd" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 48);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsAbbreviatedDayMonthStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__BSDateFormatterCache_formatDateAsAbbreviatedDayMonthStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __61__BSDateFormatterCache_formatDateAsAbbreviatedDayMonthStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    [*(*(a1 + 32) + 56) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMd" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 56);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsAbbreviatedDayMonthWithTimeStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__BSDateFormatterCache_formatDateAsAbbreviatedDayMonthWithTimeStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __69__BSDateFormatterCache_formatDateAsAbbreviatedDayMonthWithTimeStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    [*(*(a1 + 32) + 64) setLocale:*(*(a1 + 32) + 8)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMdjmm" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 64);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsTimeStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__BSDateFormatterCache_formatDateAsTimeStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __46__BSDateFormatterCache_formatDateAsTimeStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    [*(*(a1 + 32) + 72) setLocale:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 72) setDateStyle:0];
    [*(*(a1 + 32) + 72) setTimeStyle:1];
    v2 = *(*(a1 + 32) + 72);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDateAsRelativeDateAndTimeStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__BSDateFormatterCache_formatDateAsRelativeDateAndTimeStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __61__BSDateFormatterCache_formatDateAsRelativeDateAndTimeStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    [*(*(a1 + 32) + 80) setLocale:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 80) setDateStyle:1];
    [*(*(a1 + 32) + 80) setTimeStyle:1];
    [*(*(a1 + 32) + 80) setDoesRelativeDateFormatting:1];
    v2 = *(*(a1 + 32) + 80);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDateAsDayOfWeekMonthDayStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__BSDateFormatterCache_formatDateAsDayOfWeekMonthDayStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __59__BSDateFormatterCache_formatDateAsDayOfWeekMonthDayStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    [*(*(a1 + 32) + 96) setLocale:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 96) setFormattingContext:2];
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEEMMMMd" options:0 locale:*(v6 + 8)];
    [v7 setDateFormat:v8];

    v2 = *(*(a1 + 32) + 96);
  }

  v9 = *(a1 + 40);

  return [v2 stringFromDate:v9];
}

- (id)formatDateAsMultiLineDayOfWeekMonthDayStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__BSDateFormatterCache_formatDateAsMultiLineDayOfWeekMonthDayStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __68__BSDateFormatterCache_formatDateAsMultiLineDayOfWeekMonthDayStyle___block_invoke(uint64_t a1)
{
  [(BSDateFormatterCache *)*(a1 + 32) _configureMultiLineDayOfWeekMonthDayFormatterIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 stringFromDate:v2];
}

- (void)_configureMultiLineDayOfWeekMonthDayFormatterIfNecessary
{
  if (!self)
  {
    return;
  }

  obj = self;
  objc_sync_enter(obj);
  v1 = obj;
  if (!obj[13])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v3 = obj[13];
    obj[13] = v2;

    [obj[13] setLocale:obj[1]];
    [obj[13] setFormattingContext:4];
    v4 = obj[13];
    v5 = obj[1];
    v6 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEEMMMMd" options:0 locale:v5];
    if ([v6 hasPrefix:@"EEEE "])
    {
      v7 = @"EEEE\n";
      v8 = @"EEEE ";
    }

    else if ([v6 hasPrefix:@"cccc "])
    {
      v7 = @"cccc\n";
      v8 = @"cccc ";
    }

    else if ([v6 hasPrefix:{@"EEEE, "}])
    {
      v7 = @"EEEE,\n";
      v8 = @"EEEE, ";
    }

    else if ([v6 hasPrefix:{@"cccc, "}])
    {
      v7 = @"cccc,\n";
      v8 = @"cccc, ";
    }

    else if ([v6 hasPrefix:@"EEEE، "])
    {
      v7 = @"EEEE،\n";
      v8 = @"EEEE، ";
    }

    else if ([v6 hasSuffix:{@", EEEE"}])
    {
      v7 = @",\nEEEE";
      v8 = @", EEEE";
    }

    else if ([v6 hasSuffix:@" EEEE"])
    {
      v7 = @"\nEEEE";
      v8 = @" EEEE";
    }

    else
    {
      if (![v6 hasSuffix:@"EEEE"])
      {
LABEL_20:

        [v4 setDateFormat:v6];
        v1 = obj;
        goto LABEL_21;
      }

      v7 = @"\nEEEE";
      v8 = @"EEEE";
    }

    v9 = [v6 stringByReplacingOccurrencesOfString:v8 withString:v7];

    v6 = v9;
    goto LABEL_20;
  }

LABEL_21:
  objc_sync_exit(v1);
}

- (id)formatDateAsTimeNoAMPM:(id)m
{
  mCopy = m;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__BSDateFormatterCache_formatDateAsTimeNoAMPM___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = mCopy;
  v5 = mCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __47__BSDateFormatterCache_formatDateAsTimeNoAMPM___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (!v2)
  {
    v3 = [objc_opt_class() formatterForDateAsTimeNoAMPMWithLocale:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    v2 = *(*(a1 + 32) + 112);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDateAsLongYMDHMSZWithDate:(id)date
{
  dateCopy = date;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__BSDateFormatterCache_formatDateAsLongYMDHMSZWithDate___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __56__BSDateFormatterCache_formatDateAsLongYMDHMSZWithDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    [*(*(a1 + 32) + 120) setDateFormat:@"yyyy'-'MM'-'dd HH:mm:ss.SSS Z"];
    [*(*(a1 + 32) + 120) setLocale:*(*(a1 + 32) + 8)];
    v2 = *(*(a1 + 32) + 120);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDateAsLongYMDHMSZPosixLocaleWithDate:(id)date
{
  dateCopy = date;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__BSDateFormatterCache_formatDateAsLongYMDHMSZPosixLocaleWithDate___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __67__BSDateFormatterCache_formatDateAsLongYMDHMSZPosixLocaleWithDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    [*(*(a1 + 32) + 128) setDateFormat:@"yyyy'-'MM'-'dd HH:mm:ss.SSS Z"];
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [*(*(a1 + 32) + 128) setLocale:v6];

    v2 = *(*(a1 + 32) + 128);
  }

  v7 = *(a1 + 40);

  return [v2 stringFromDate:v7];
}

- (id)formatDateAsLongYMDHMSNoSpacesWithDate:(id)date
{
  dateCopy = date;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__BSDateFormatterCache_formatDateAsLongYMDHMSNoSpacesWithDate___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __63__BSDateFormatterCache_formatDateAsLongYMDHMSNoSpacesWithDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = v3;

    [*(*(a1 + 32) + 136) setDateFormat:@"yyyy'-'MM'-'dd'-'HHmmss"];
    [*(*(a1 + 32) + 136) setLocale:*(*(a1 + 32) + 8)];
    v2 = *(*(a1 + 32) + 136);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDateAsRelativeDateStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__BSDateFormatterCache_formatDateAsRelativeDateStyle___block_invoke;
  v8[3] = &unk_1E72CC350;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v8];

  return v6;
}

uint64_t __54__BSDateFormatterCache_formatDateAsRelativeDateStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    [*(*(a1 + 32) + 88) setLocale:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 88) setDateStyle:1];
    [*(*(a1 + 32) + 88) setTimeStyle:0];
    [*(*(a1 + 32) + 88) setDoesRelativeDateFormatting:1];
    v2 = *(*(a1 + 32) + 88);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromDate:v6];
}

- (id)formatDuration:(double)duration
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__BSDateFormatterCache_formatDuration___block_invoke;
  v5[3] = &unk_1E72CC378;
  v5[4] = self;
  *&v5[5] = duration;
  v3 = [(BSDateFormatterCache *)self _performFormattingWithSynchronizedBlock:v5];

  return v3;
}

uint64_t __39__BSDateFormatterCache_formatDuration___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    [*(*(a1 + 32) + 152) setUnitsStyle:2];
    [*(*(a1 + 32) + 152) setAllowedUnits:252];
    v2 = *(*(a1 + 32) + 152);
  }

  v6 = *(a1 + 40);

  return [v2 stringFromTimeInterval:v6];
}

- (id)formatTimerDuration:(double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BSDateFormatterCache *)selfCopy resetFormattersIfNecessary];
  timerNumberFormatter = selfCopy->_timerNumberFormatter;
  if (!timerNumberFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v7 = selfCopy->_timerNumberFormatter;
    selfCopy->_timerNumberFormatter = v6;

    [(NSNumberFormatter *)selfCopy->_timerNumberFormatter setNumberStyle:0];
    timerNumberFormatter = selfCopy->_timerNumberFormatter;
  }

  [(NSNumberFormatter *)timerNumberFormatter setPositiveFormat:@"0"];
  durationCopy = duration;
  if (duration < 3600)
  {
    v11 = &stru_1F03A1A98;
  }

  else
  {
    v9 = selfCopy->_timerNumberFormatter;
    3600 = [MEMORY[0x1E696AD98] numberWithInteger:durationCopy / 3600];
    v11 = [(NSNumberFormatter *)v9 stringFromNumber:3600];
  }

  [(NSNumberFormatter *)selfCopy->_timerNumberFormatter setPositiveFormat:@"00"];
  v12 = selfCopy->_timerNumberFormatter;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:durationCopy / 60 % 60];
  v14 = [(NSNumberFormatter *)v12 stringFromNumber:v13];

  v15 = selfCopy->_timerNumberFormatter;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:durationCopy % 60];
  v17 = [(NSNumberFormatter *)v15 stringFromNumber:v16];

  objc_sync_exit(selfCopy);
  v18 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  if (durationCopy < 3600)
  {
    v20 = [mainBundle localizedStringForKey:@"COUNT_DOWN_TIMER_MMSS_FORMAT" value:&stru_1F03A1A98 table:@"SpringBoard"];
    [v18 stringWithFormat:v20, v14, v17];
  }

  else
  {
    v20 = [mainBundle localizedStringForKey:@"COUNT_DOWN_TIMER_HMMSS_FORMAT" value:&stru_1F03A1A98 table:@"SpringBoard"];
    [v18 stringWithFormat:v20, v11, v14, v17];
  }
  v21 = ;

  return v21;
}

- (id)formatAbbreviatedTimerDuration:(double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BSDateFormatterCache *)selfCopy resetFormattersIfNecessary];
  abbreviatedTimerFormatter = selfCopy->_abbreviatedTimerFormatter;
  if (!abbreviatedTimerFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB70]);
    v7 = selfCopy->_abbreviatedTimerFormatter;
    selfCopy->_abbreviatedTimerFormatter = v6;

    [(NSDateComponentsFormatter *)selfCopy->_abbreviatedTimerFormatter setZeroFormattingBehavior:0];
    abbreviatedTimerFormatter = selfCopy->_abbreviatedTimerFormatter;
  }

  if (duration <= 3599)
  {
    v8 = 192;
  }

  else
  {
    v8 = 224;
  }

  [(NSDateComponentsFormatter *)abbreviatedTimerFormatter setAllowedUnits:v8];
  v9 = [(NSDateComponentsFormatter *)selfCopy->_abbreviatedTimerFormatter stringFromTimeInterval:duration];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)formatAlarmSnoozeDuration:(double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BSDateFormatterCache *)selfCopy resetFormattersIfNecessary];
  alarmSnoozeFormatter = selfCopy->_alarmSnoozeFormatter;
  if (!alarmSnoozeFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB70]);
    v7 = selfCopy->_alarmSnoozeFormatter;
    selfCopy->_alarmSnoozeFormatter = v6;

    [(NSDateComponentsFormatter *)selfCopy->_alarmSnoozeFormatter setZeroFormattingBehavior:0];
    alarmSnoozeFormatter = selfCopy->_alarmSnoozeFormatter;
  }

  if (duration <= 3599)
  {
    v8 = 192;
  }

  else
  {
    v8 = 224;
  }

  [(NSDateComponentsFormatter *)alarmSnoozeFormatter setAllowedUnits:v8];
  v9 = [(NSDateComponentsFormatter *)selfCopy->_alarmSnoozeFormatter stringFromTimeInterval:duration];
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)supportsMultiLineDayOfWeekMonthDayStyle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BSDateFormatterCache *)selfCopy _configureMultiLineDayOfWeekMonthDayFormatterIfNecessary];
  dateFormat = [(NSDateFormatter *)selfCopy->_multiLineDayOfWeekMonthDayFormatter dateFormat];
  v4 = [dateFormat containsString:@"\n"];

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)_resetFormatters:(id)formatters
{
  formattersCopy = formatters;
  obj = self;
  objc_sync_enter(obj);
  locale = obj->_locale;
  obj->_locale = formattersCopy;
  v6 = formattersCopy;

  dayOfWeekFormatter = obj->_dayOfWeekFormatter;
  obj->_dayOfWeekFormatter = 0;

  dayOfWeekWithTimeFormatter = obj->_dayOfWeekWithTimeFormatter;
  obj->_dayOfWeekWithTimeFormatter = 0;

  dayMonthYearFormatter = obj->_dayMonthYearFormatter;
  obj->_dayMonthYearFormatter = 0;

  shortDayMonthTimeFormatter = obj->_shortDayMonthTimeFormatter;
  obj->_shortDayMonthTimeFormatter = 0;

  abbrevDayOfWeekWithMonthDayFormatter = obj->_abbrevDayOfWeekWithMonthDayFormatter;
  obj->_abbrevDayOfWeekWithMonthDayFormatter = 0;

  abbrevDayMonthFormatter = obj->_abbrevDayMonthFormatter;
  obj->_abbrevDayMonthFormatter = 0;

  abbrevDayMonthTimeFormatter = obj->_abbrevDayMonthTimeFormatter;
  obj->_abbrevDayMonthTimeFormatter = 0;

  dayOfWeekMonthDayFormatter = obj->_dayOfWeekMonthDayFormatter;
  obj->_dayOfWeekMonthDayFormatter = 0;

  multiLineDayOfWeekMonthDayFormatter = obj->_multiLineDayOfWeekMonthDayFormatter;
  obj->_multiLineDayOfWeekMonthDayFormatter = 0;

  timeNoAMPMFormatter = obj->_timeNoAMPMFormatter;
  obj->_timeNoAMPMFormatter = 0;

  timeFormatter = obj->_timeFormatter;
  obj->_timeFormatter = 0;

  relativeDateTimeFormatter = obj->_relativeDateTimeFormatter;
  obj->_relativeDateTimeFormatter = 0;

  relativeDateFormatter = obj->_relativeDateFormatter;
  obj->_relativeDateFormatter = 0;

  decimalFormatter = obj->_decimalFormatter;
  obj->_decimalFormatter = 0;

  durationFormatter = obj->_durationFormatter;
  obj->_durationFormatter = 0;

  timerNumberFormatter = obj->_timerNumberFormatter;
  obj->_timerNumberFormatter = 0;

  abbreviatedTimerFormatter = obj->_abbreviatedTimerFormatter;
  obj->_abbreviatedTimerFormatter = 0;

  alarmSnoozeFormatter = obj->_alarmSnoozeFormatter;
  obj->_alarmSnoozeFormatter = 0;

  longYMDHMSZFormatter = obj->_longYMDHMSZFormatter;
  obj->_longYMDHMSZFormatter = 0;

  longYMDHMSNoSpaceFormatter = obj->_longYMDHMSNoSpaceFormatter;
  obj->_longYMDHMSNoSpaceFormatter = 0;

  objc_sync_exit(obj);
}

- (void)_resetFormatters
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(BSDateFormatterCache *)self _resetFormatters:?];
}

@end