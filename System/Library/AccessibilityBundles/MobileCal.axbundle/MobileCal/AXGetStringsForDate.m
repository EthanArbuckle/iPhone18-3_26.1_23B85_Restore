@interface AXGetStringsForDate
@end

@implementation AXGetStringsForDate

void ___AXGetStringsForDate_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v7 = MEMORY[0x29C2DF280]();
  v4 = [v2 overlayShortStringForDate:v3 inCalendar:v7];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end