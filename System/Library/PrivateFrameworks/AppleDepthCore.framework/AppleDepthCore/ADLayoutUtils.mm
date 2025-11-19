@interface ADLayoutUtils
+ (float)aspectRatioForKnownLayout:(unint64_t)a3;
+ (id)layoutAsString:(unint64_t)a3;
+ (unint64_t)layoutForSize:(CGSize)a3;
+ (unint64_t)transposeLayout:(unint64_t)a3;
@end

@implementation ADLayoutUtils

+ (unint64_t)layoutForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3.width / a3.height;
  while (1)
  {
    v7 = qword_2404CA458[v5];
    [ADLayoutUtils aspectRatioForKnownLayout:v7];
    LODWORD(v9) = v8;
    *&v10 = v6;
    if ([ADLayoutUtils aspectRatio:v10 matchesAspectRatio:v9])
    {
      break;
    }

    if (++v5 == 4)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134218240;
          v13 = width;
          v14 = 2048;
          v15 = height;
          _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Size %2.2fx%2.2f does not match any known layout", &v12, 0x16u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218240;
        v13 = width;
        v14 = 2048;
        v15 = height;
        _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Size %2.2fx%2.2f does not match any known layout", &v12, 0x16u);
      }

      return 254;
    }
  }

  return v7;
}

+ (float)aspectRatioForKnownLayout:(unint64_t)a3
{
  result = 0.0;
  if (a3 <= 3)
  {
    return flt_2404C86E0[a3];
  }

  return result;
}

+ (unint64_t)transposeLayout:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 < 4)
  {
    return qword_2404CA458[a3];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = [ADLayoutUtils layoutAsString:a3];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get transpose layout for layout %@", &v6, 0xCu);
  }

  return 254;
}

+ (id)layoutAsString:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v4 = @"kADLayoutPortrait_9_16";
        goto LABEL_17;
      case 0xFEuLL:
        v4 = @"kADLayoutUnknown";
        goto LABEL_17;
      case 0xFFuLL:
        v4 = @"kADLayoutDefault";
        goto LABEL_17;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v4 = @"kADLayoutLandscape_4_3";
        goto LABEL_17;
      case 1uLL:
        v4 = @"kADLayoutPortrait_3_4";
        goto LABEL_17;
      case 2uLL:
        v4 = @"kADLayoutLandscape_16_9";
        goto LABEL_17;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v7 = a3;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown layout numbered: %lu", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
LABEL_17:

  return v4;
}

@end