@interface CLKWorldClockTimeFormatter
+ (id)dayForOffset:(double)offset;
+ (id)differenceForOffset:(double)offset caps:(BOOL)caps suppressZero:(BOOL)zero size:(int64_t)size;
+ (void)initialize;
+ (void)invalidateTimeZone:(id)zone;
@end

@implementation CLKWorldClockTimeFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_invalidateTimeZone_ name:*MEMORY[0x277D766F0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_invalidateTimeZone_ name:*MEMORY[0x277CBE780] object:0];
  }
}

+ (void)invalidateTimeZone:(id)zone
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [_dayFormatter setTimeZone:systemTimeZone];
}

+ (id)dayForOffset:(double)offset
{
  if (!_dayFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = _dayFormatter;
    _dayFormatter = v4;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [_dayFormatter setLocale:autoupdatingCurrentLocale];

    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [_dayFormatter setTimeZone:systemTimeZone];

    [_dayFormatter setDateStyle:1];
    [_dayFormatter setTimeStyle:0];
    [_dayFormatter setDoesRelativeDateFormatting:1];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:offset];
  v9 = [_dayFormatter stringFromDate:v8];

  return v9;
}

+ (id)differenceForOffset:(double)offset caps:(BOOL)caps suppressZero:(BOOL)zero size:(int64_t)size
{
  capsCopy = caps;
  v38[1] = *MEMORY[0x277D85DE8];
  if (differenceForOffset_caps_suppressZero_size__onceToken != -1)
  {
    +[CLKWorldClockTimeFormatter differenceForOffset:caps:suppressZero:size:];
  }

  v10 = fmod(offset, 3600.0);
  if (offset >= 0.0)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = -offset;
  }

  if (offset != 0.0)
  {
    if (offsetCopy >= 3600.0)
    {
      if (v10 != 0.0 && offsetCopy != 3600.0)
      {
        [differenceForOffset_caps_suppressZero_size__formatter setAllowedUnits:96];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:0];
        goto LABEL_33;
      }

      if (!capsCopy)
      {
LABEL_22:
        v16 = differenceForOffset_caps_suppressZero_size__formatter;
        v17 = 32;
LABEL_24:
        [v16 setAllowedUnits:{v17, v10}];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:3];
        goto LABEL_33;
      }

      if (size > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278A1FF10[size];
      }

      v18 = CLKWorldClockLocalizedString(v15);
      v19 = MEMORY[0x277CCACA8];
      v20 = offsetCopy / 3600.0;
    }

    else
    {
      if (!capsCopy)
      {
        v16 = differenceForOffset_caps_suppressZero_size__formatter;
        v17 = 64;
        goto LABEL_24;
      }

      if (size > 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_278A1FEF8[size];
      }

      v18 = CLKWorldClockLocalizedString(v13);
      v19 = MEMORY[0x277CCACA8];
      v20 = offsetCopy / 60.0;
    }

    [v19 localizedStringWithFormat:v18, *&v20];
    goto LABEL_32;
  }

  if (!zero)
  {
    if (capsCopy)
    {
      if (size > 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_278A1FF10[size];
      }

      v18 = CLKWorldClockLocalizedString(v14);
      [MEMORY[0x277CCACA8] localizedStringWithFormat:v18, 0];
      v12 = LABEL_32:;

      if (v12)
      {
        goto LABEL_34;
      }

LABEL_33:
      v12 = [differenceForOffset_caps_suppressZero_size__formatter stringFromTimeInterval:offsetCopy];
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v12 = &stru_284A20458;
LABEL_34:
  if (offset != 0.0 || !zero)
  {
    v21 = CLKLocaleCurrentNumberSystem();
    v22 = @"+";
    if (offset < 0.0)
    {
      v22 = @"−";
    }

    v23 = &stru_284A20458;
    if (v21 == 1)
    {
      v23 = @"\u200F";
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v23, v22, v12];

    v12 = v24;
  }

  v25 = [(__CFString *)v12 rangeOfString:@"{", v10];
  if (v25 == 0x7FFFFFFFFFFFFFFFLL || (v27 = v25, v28 = v26, v29 = -[__CFString rangeOfString:](v12, "rangeOfString:", @"}"), v29 == 0x7FFFFFFFFFFFFFFFLL) || (v31 = v29, v32 = v30, v33 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v12], objc_msgSend(v33, "replaceCharactersInRange:withString:", v31, v32, &stru_284A20458), objc_msgSend(v33, "replaceCharactersInRange:withString:", v27, v28, &stru_284A20458), v34 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB48]), "initWithString:", v33), v37 = @"CLKWorldClockCapsAttribute", v38[0] = MEMORY[0x277CBEC38], objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v38, &v37, 1), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "addAttributes:range:", v35, v27, v31 + ~v27), v35, v33, !v34))
  {
    v34 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v12];
  }

  return v34;
}

uint64_t __73__CLKWorldClockTimeFormatter_differenceForOffset_caps_suppressZero_size___block_invoke()
{
  v0 = objc_opt_new();
  v1 = differenceForOffset_caps_suppressZero_size__formatter;
  differenceForOffset_caps_suppressZero_size__formatter = v0;

  v2 = differenceForOffset_caps_suppressZero_size__formatter;

  return [v2 setUnitsStyle:3];
}

@end