@interface JSLoggingService
- (void)error:(id)error;
- (void)log:(id)log;
@end

@implementation JSLoggingService

- (void)log:(id)log
{
  logCopy = log;
  selfCopy = self;
  sub_1000C8BCC(logCopy, &static os_log_type_t.default.getter);
}

- (void)error:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1000C8BCC(errorCopy, &static os_log_type_t.error.getter);
}

@end