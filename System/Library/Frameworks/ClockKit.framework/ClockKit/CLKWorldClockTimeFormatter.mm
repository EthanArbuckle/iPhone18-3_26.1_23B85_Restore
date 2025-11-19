@interface CLKWorldClockTimeFormatter
+ (id)dayForOffset:(double)a3;
+ (id)differenceForOffset:(double)a3 caps:(BOOL)a4 suppressZero:(BOOL)a5 size:(int64_t)a6;
+ (void)initialize;
+ (void)invalidateTimeZone:(id)a3;
@end

@implementation CLKWorldClockTimeFormatter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:a1 selector:sel_invalidateTimeZone_ name:*MEMORY[0x277D766F0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:a1 selector:sel_invalidateTimeZone_ name:*MEMORY[0x277CBE780] object:0];
  }
}

+ (void)invalidateTimeZone:(id)a3
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [_dayFormatter setTimeZone:v3];
}

+ (id)dayForOffset:(double)a3
{
  if (!_dayFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = _dayFormatter;
    _dayFormatter = v4;

    v6 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [_dayFormatter setLocale:v6];

    v7 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [_dayFormatter setTimeZone:v7];

    [_dayFormatter setDateStyle:1];
    [_dayFormatter setTimeStyle:0];
    [_dayFormatter setDoesRelativeDateFormatting:1];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v9 = [_dayFormatter stringFromDate:v8];

  return v9;
}

+ (id)differenceForOffset:(double)a3 caps:(BOOL)a4 suppressZero:(BOOL)a5 size:(int64_t)a6
{
  v8 = a4;
  v38[1] = *MEMORY[0x277D85DE8];
  if (differenceForOffset_caps_suppressZero_size__onceToken != -1)
  {
    +[CLKWorldClockTimeFormatter differenceForOffset:caps:suppressZero:size:];
  }

  v10 = fmod(a3, 3600.0);
  if (a3 >= 0.0)
  {
    v11 = a3;
  }

  else
  {
    v11 = -a3;
  }

  if (a3 != 0.0)
  {
    if (v11 >= 3600.0)
    {
      if (v10 != 0.0 && v11 != 3600.0)
      {
        [differenceForOffset_caps_suppressZero_size__formatter setAllowedUnits:96];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:0];
        goto LABEL_33;
      }

      if (!v8)
      {
LABEL_22:
        v16 = differenceForOffset_caps_suppressZero_size__formatter;
        v17 = 32;
LABEL_24:
        [v16 setAllowedUnits:{v17, v10}];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:3];
        goto LABEL_33;
      }

      if (a6 > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278A1FF10[a6];
      }

      v18 = CLKWorldClockLocalizedString(v15);
      v19 = MEMORY[0x277CCACA8];
      v20 = v11 / 3600.0;
    }

    else
    {
      if (!v8)
      {
        v16 = differenceForOffset_caps_suppressZero_size__formatter;
        v17 = 64;
        goto LABEL_24;
      }

      if (a6 > 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_278A1FEF8[a6];
      }

      v18 = CLKWorldClockLocalizedString(v13);
      v19 = MEMORY[0x277CCACA8];
      v20 = v11 / 60.0;
    }

    [v19 localizedStringWithFormat:v18, *&v20];
    goto LABEL_32;
  }

  if (!a5)
  {
    if (v8)
    {
      if (a6 > 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_278A1FF10[a6];
      }

      v18 = CLKWorldClockLocalizedString(v14);
      [MEMORY[0x277CCACA8] localizedStringWithFormat:v18, 0];
      v12 = LABEL_32:;

      if (v12)
      {
        goto LABEL_34;
      }

LABEL_33:
      v12 = [differenceForOffset_caps_suppressZero_size__formatter stringFromTimeInterval:v11];
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v12 = &stru_284A20458;
LABEL_34:
  if (a3 != 0.0 || !a5)
  {
    v21 = CLKLocaleCurrentNumberSystem();
    v22 = @"+";
    if (a3 < 0.0)
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