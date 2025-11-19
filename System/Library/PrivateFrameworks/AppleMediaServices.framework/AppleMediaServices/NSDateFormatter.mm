@interface NSDateFormatter
@end

@implementation NSDateFormatter

uint64_t __66__NSDateFormatter_AppleMediaServices__ams_serverFriendlyFormatter__block_invoke()
{
  qword_1ED6E32D8 = [MEMORY[0x1E696AB78] _ams_serverFriendlyFormatter];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __79__NSDateFormatter_AppleMediaServices__ams_serverFriendlyLocalTimeZoneFormatter__block_invoke()
{
  qword_1ED6E32E8 = [MEMORY[0x1E696AB78] _ams_serverFriendlyLocalTimeZoneFormatter];

  return MEMORY[0x1EEE66BB8]();
}

@end