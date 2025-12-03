@interface LPEventTimeline
+ (id)eventWithType:(int64_t)type subtitle:(id)subtitle;
@end

@implementation LPEventTimeline

+ (id)eventWithType:(int64_t)type subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = [[LPEvent alloc] initWithType:type subtitle:subtitleCopy];

  return v6;
}

@end