@interface FetchLogArchivesReportGenerator
- (FetchLogArchivesReportGenerator)initWithQueue:(id)queue;
- (void)setBaseDuration:(unint64_t)duration maximumSize:(unint64_t)size;
- (void)setDefaults;
- (void)setHighVolumeLoggersDuration:(unint64_t)duration maximumSize:(unint64_t)size;
- (void)setTTLDuration:(unint64_t)duration maximumSize:(unint64_t)size;
@end

@implementation FetchLogArchivesReportGenerator

- (FetchLogArchivesReportGenerator)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = FetchLogArchivesReportGenerator;
  v3 = [(NetworkDiagnosticsReportGenerator *)&v7 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    v5 = [(NetworkDiagnosticsReportGenerator *)v3 createDefaultTaskDictionaryWithTaskName:kNetDiagTaskFetchLogArchive[0]];
    [(NetworkDiagnosticsReportGenerator *)v4 setOptions:v5];
    [(FetchLogArchivesReportGenerator *)v4 setDefaults];
  }

  return v4;
}

- (void)setDefaults
{
  [(FetchLogArchivesReportGenerator *)self setBaseDuration:900 maximumSize:26214400];
  [(FetchLogArchivesReportGenerator *)self setTTLDuration:900 maximumSize:26214400];

  [(FetchLogArchivesReportGenerator *)self setHighVolumeLoggersDuration:900 maximumSize:26214400];
}

- (void)setBaseDuration:(unint64_t)duration maximumSize:(unint64_t)size
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v6 forKeyedSubscript:@"taskArchiveBaseSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  options2 = [(NetworkDiagnosticsReportGenerator *)self options];
  [options2 setObject:v9 forKeyedSubscript:@"taskArchiveBaseDuration"];
}

- (void)setTTLDuration:(unint64_t)duration maximumSize:(unint64_t)size
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v6 forKeyedSubscript:@"taskArchiveTTLSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  options2 = [(NetworkDiagnosticsReportGenerator *)self options];
  [options2 setObject:v9 forKeyedSubscript:@"taskArchiveTTLDuration"];
}

- (void)setHighVolumeLoggersDuration:(unint64_t)duration maximumSize:(unint64_t)size
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v6 forKeyedSubscript:@"taskArchiveHVSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  options2 = [(NetworkDiagnosticsReportGenerator *)self options];
  [options2 setObject:v9 forKeyedSubscript:@"taskArchiveHVDuration"];
}

@end