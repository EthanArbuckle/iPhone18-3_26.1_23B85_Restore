@interface FetchLogArchivesReportGenerator
- (FetchLogArchivesReportGenerator)initWithQueue:(id)a3;
- (void)setBaseDuration:(unint64_t)a3 maximumSize:(unint64_t)a4;
- (void)setDefaults;
- (void)setHighVolumeLoggersDuration:(unint64_t)a3 maximumSize:(unint64_t)a4;
- (void)setTTLDuration:(unint64_t)a3 maximumSize:(unint64_t)a4;
@end

@implementation FetchLogArchivesReportGenerator

- (FetchLogArchivesReportGenerator)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = FetchLogArchivesReportGenerator;
  v3 = [(NetworkDiagnosticsReportGenerator *)&v7 initWithQueue:a3];
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

- (void)setBaseDuration:(unint64_t)a3 maximumSize:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v7 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v7 setObject:v6 forKeyedSubscript:@"taskArchiveBaseSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v8 setObject:v9 forKeyedSubscript:@"taskArchiveBaseDuration"];
}

- (void)setTTLDuration:(unint64_t)a3 maximumSize:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v7 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v7 setObject:v6 forKeyedSubscript:@"taskArchiveTTLSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v8 setObject:v9 forKeyedSubscript:@"taskArchiveTTLDuration"];
}

- (void)setHighVolumeLoggersDuration:(unint64_t)a3 maximumSize:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v7 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v7 setObject:v6 forKeyedSubscript:@"taskArchiveHVSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(NetworkDiagnosticsReportGenerator *)self options];
  [v8 setObject:v9 forKeyedSubscript:@"taskArchiveHVDuration"];
}

@end