@interface GregorianCalendar
@end

@implementation GregorianCalendar

uint64_t ___GregorianCalendar_block_invoke()
{
  _GregorianCalendar___gregorianCalendar = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];

  return MEMORY[0x1EEE66BB8]();
}

@end