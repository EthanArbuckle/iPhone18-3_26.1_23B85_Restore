@interface ATXModeTimelineData
- (ATXModeTimelineData)init;
- (id)dictionaryRepresentation;
@end

@implementation ATXModeTimelineData

- (ATXModeTimelineData)init
{
  v5.receiver = self;
  v5.super_class = ATXModeTimelineData;
  v2 = [(ATXModeTimelineData *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(ATXModeTimelineData *)v2 setModeTimeline:v3];
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"modeTimeline";
  modeTimeline = [(ATXModeTimelineData *)self modeTimeline];
  v7[0] = modeTimeline;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end