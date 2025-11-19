@interface LPEventTimeline
+ (id)eventWithType:(int64_t)a3 subtitle:(id)a4;
@end

@implementation LPEventTimeline

+ (id)eventWithType:(int64_t)a3 subtitle:(id)a4
{
  v5 = a4;
  v6 = [[LPEvent alloc] initWithType:a3 subtitle:v5];

  return v6;
}

@end