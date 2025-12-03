@interface BCReadingTimeToday
+ (NSString)kind;
- (BCReadingTimeToday)init;
- (NSNumber)progress;
- (NSObject)instance;
- (NSObject)parameters;
- (NSString)formattedProgress;
- (NSString)kind;
- (void)setFormattedProgress:(id)progress;
- (void)setKind:(id)kind;
- (void)setProgress:(id)progress;
@end

@implementation BCReadingTimeToday

+ (NSString)kind
{
  v2 = sub_1EEED4();

  return v2;
}

- (NSString)kind
{
  swift_beginAccess();

  v2 = sub_1EEED4();

  return v2;
}

- (void)setKind:(id)kind
{
  v4 = sub_1EEF04();
  v6 = v5;
  v7 = (self + OBJC_IVAR___BCReadingTimeToday_kind);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSObject)instance
{
  v3 = OBJC_IVAR___BCReadingTimeToday_instance;
  swift_beginAccess();
  return *(self + v3);
}

- (NSObject)parameters
{
  v3 = OBJC_IVAR___BCReadingTimeToday_parameters;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)progress
{
  v3 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setProgress:(id)progress
{
  v5 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = progress;
  progressCopy = progress;
}

- (NSString)formattedProgress
{
  v2 = self + OBJC_IVAR___BCReadingTimeToday_formattedProgress;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1EEED4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFormattedProgress:(id)progress
{
  if (progress)
  {
    v4 = sub_1EEF04();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___BCReadingTimeToday_formattedProgress);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BCReadingTimeToday)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end