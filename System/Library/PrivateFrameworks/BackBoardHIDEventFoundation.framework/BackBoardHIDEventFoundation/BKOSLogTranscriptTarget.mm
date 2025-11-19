@interface BKOSLogTranscriptTarget
- (BKOSLogTranscriptTarget)initWithOSLog:(id)a3;
- (void)writeString:(id)a3;
@end

@implementation BKOSLogTranscriptTarget

- (void)writeString:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_223CBE000, log, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BKOSLogTranscriptTarget)initWithOSLog:(id)a3
{
  v5 = a3;
  v6 = [(BKOSLogTranscriptTarget *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
  }

  return v7;
}

@end