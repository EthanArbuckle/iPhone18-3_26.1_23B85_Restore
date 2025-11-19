@interface GetGreenTeaLogger
@end

@implementation GetGreenTeaLogger

uint64_t __playerairplay_GetGreenTeaLogger_block_invoke()
{
  result = ct_green_tea_logger_create();
  qword_1ED4CAC68 = result;
  return result;
}

@end