@interface NSDate
@end

@implementation NSDate

uint64_t __46__NSDate_BacklightServices__bls_loggingString__block_invoke()
{
  v0 = [MEMORY[0x277CBEAA8] distantFuture];
  [v0 timeIntervalSinceReferenceDate];
  bls_loggingString_distantFutureCache = v1;

  v2 = [MEMORY[0x277CBEAA8] distantPast];
  [v2 timeIntervalSinceReferenceDate];
  bls_loggingString_distantPastCache = v3;

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = bls_loggingString_dateFormatter;
  bls_loggingString_dateFormatter = v4;

  v6 = bls_loggingString_dateFormatter;
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  [bls_loggingString_dateFormatter setDateFormat:@"HH:mm:ss.SSS MM/dd"];
  v8 = objc_alloc_init(MEMORY[0x277CCA958]);
  v9 = bls_loggingString_dateComponentsFormatter;
  bls_loggingString_dateComponentsFormatter = v8;

  [bls_loggingString_dateComponentsFormatter setUnitsStyle:2];
  v10 = bls_loggingString_dateComponentsFormatter;

  return [v10 setAllowedUnits:33008];
}

uint64_t __51__NSDate_BacklightServices__bls_shortLoggingString__block_invoke()
{
  v0 = [MEMORY[0x277CBEAA8] distantFuture];
  [v0 timeIntervalSinceReferenceDate];
  bls_shortLoggingString_distantFutureCache = v1;

  v2 = [MEMORY[0x277CBEAA8] distantPast];
  [v2 timeIntervalSinceReferenceDate];
  bls_shortLoggingString_distantPastCache = v3;

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = bls_shortLoggingString_dateFormatter;
  bls_shortLoggingString_dateFormatter = v4;

  v6 = bls_shortLoggingString_dateFormatter;
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  v8 = bls_shortLoggingString_dateFormatter;

  return [v8 setDateFormat:@"HH:mm:ss.SSS"];
}

uint64_t __47__NSDate_BacklightServices__bls_fileNameString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = bls_fileNameString_dateFormatter;
  bls_fileNameString_dateFormatter = v0;

  v2 = bls_fileNameString_dateFormatter;
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = bls_fileNameString_dateFormatter;

  return [v4 setDateFormat:@"yyyy-MM-dd-HHmmss"];
}

@end