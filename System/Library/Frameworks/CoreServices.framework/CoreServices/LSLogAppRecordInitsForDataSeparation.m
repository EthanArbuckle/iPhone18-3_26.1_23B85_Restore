@interface LSLogAppRecordInitsForDataSeparation
@end

@implementation LSLogAppRecordInitsForDataSeparation

void ___LSLogAppRecordInitsForDataSeparation_block_invoke()
{
  v0 = _LSDataSeparationLog();
  _LSLogAppRecordInitsForDataSeparation::result = os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

@end