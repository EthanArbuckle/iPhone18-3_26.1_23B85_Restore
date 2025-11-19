@interface HKMedicalIDData
@end

@implementation HKMedicalIDData

uint64_t __41___HKMedicalIDData__gregorianUtcCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
  v1 = _gregorianUtcCalendar__calendar;
  _gregorianUtcCalendar__calendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end