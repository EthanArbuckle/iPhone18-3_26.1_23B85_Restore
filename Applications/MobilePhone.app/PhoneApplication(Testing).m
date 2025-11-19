@interface PhoneApplication(Testing)
- (void)startScrollWithInteractionTest;
@end

@implementation PhoneApplication(Testing)

- (void)startScrollWithInteractionTest
{
  v1 = 138412290;
  v2 = __CurrentTestName;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Uknown test name %@", &v1, 0xCu);
}

@end