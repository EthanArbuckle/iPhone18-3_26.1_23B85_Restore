@interface CNUILog
@end

@implementation CNUILog

CFIndex ___CNUILog_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"CNUILogLevel", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  _CNUILog_logsEnabled = v1;
  return result;
}

@end