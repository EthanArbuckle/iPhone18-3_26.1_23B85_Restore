@interface JSLoggingService
- (void)error:(id)a3;
- (void)log:(id)a3;
@end

@implementation JSLoggingService

- (void)log:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C8BCC(v4, &static os_log_type_t.default.getter);
}

- (void)error:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C8BCC(v4, &static os_log_type_t.error.getter);
}

@end