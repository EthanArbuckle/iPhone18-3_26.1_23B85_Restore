@interface CFPrefsCopyUserNameForUID
@end

@implementation CFPrefsCopyUserNameForUID

__CFString *___CFPrefsCopyUserNameForUID_block_invoke(uint64_t a1)
{
  result = _calculateUserNameForUID(*(a1 + 32));
  _CFPrefsCopyUserNameForUID_ourUIDName = result;
  return result;
}

__CFString *___CFPrefsCopyUserNameForUID_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = 501;
  }

  _CFPrefsCopyUserNameForUID_otherCommonUID = v1;
  result = _calculateUserNameForUID(v1);
  _CFPrefsCopyUserNameForUID_otherCommonUIDName = result;
  return result;
}

@end