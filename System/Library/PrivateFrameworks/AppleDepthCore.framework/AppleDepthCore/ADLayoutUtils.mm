@interface ADLayoutUtils
+ (float)aspectRatioForKnownLayout:(unint64_t)layout;
+ (id)layoutAsString:(unint64_t)string;
+ (unint64_t)layoutForSize:(CGSize)size;
+ (unint64_t)transposeLayout:(unint64_t)layout;
@end

@implementation ADLayoutUtils

+ (unint64_t)layoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v6 = size.width / size.height;
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

+ (float)aspectRatioForKnownLayout:(unint64_t)layout
{
  result = 0.0;
  if (layout <= 3)
  {
    return flt_2404C86E0[layout];
  }

  return result;
}

+ (unint64_t)transposeLayout:(unint64_t)layout
{
  v8 = *MEMORY[0x277D85DE8];
  if (layout < 4)
  {
    return qword_2404CA458[layout];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = [ADLayoutUtils layoutAsString:layout];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get transpose layout for layout %@", &v6, 0xCu);
  }

  return 254;
}

+ (id)layoutAsString:(unint64_t)string
{
  v8 = *MEMORY[0x277D85DE8];
  if (string > 2)
  {
    switch(string)
    {
      case 3uLL:
        string = @"kADLayoutPortrait_9_16";
        goto LABEL_17;
      case 0xFEuLL:
        string = @"kADLayoutUnknown";
        goto LABEL_17;
      case 0xFFuLL:
        string = @"kADLayoutDefault";
        goto LABEL_17;
    }
  }

  else
  {
    switch(string)
    {
      case 0uLL:
        string = @"kADLayoutLandscape_4_3";
        goto LABEL_17;
      case 1uLL:
        string = @"kADLayoutPortrait_3_4";
        goto LABEL_17;
      case 2uLL:
        string = @"kADLayoutLandscape_16_9";
        goto LABEL_17;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    stringCopy = string;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown layout numbered: %lu", buf, 0xCu);
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", string];
LABEL_17:

  return string;
}

@end