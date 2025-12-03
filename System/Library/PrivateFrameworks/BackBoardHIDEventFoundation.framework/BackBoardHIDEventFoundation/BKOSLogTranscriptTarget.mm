@interface BKOSLogTranscriptTarget
- (BKOSLogTranscriptTarget)initWithOSLog:(id)log;
- (void)writeString:(id)string;
@end

@implementation BKOSLogTranscriptTarget

- (void)writeString:(id)string
{
  v9 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = stringCopy;
    _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BKOSLogTranscriptTarget)initWithOSLog:(id)log
{
  logCopy = log;
  v6 = [(BKOSLogTranscriptTarget *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
  }

  return v7;
}

@end