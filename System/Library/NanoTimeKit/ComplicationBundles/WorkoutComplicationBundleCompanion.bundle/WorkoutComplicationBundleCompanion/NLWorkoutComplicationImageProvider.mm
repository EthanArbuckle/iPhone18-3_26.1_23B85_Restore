@interface NLWorkoutComplicationImageProvider
+ (id)noWorkoutImageForComplicationFamily:(int64_t)family;
- (NLWorkoutComplicationImageProvider)initWithPaused:(BOOL)paused;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NLWorkoutComplicationImageProvider

- (NLWorkoutComplicationImageProvider)initWithPaused:(BOOL)paused
{
  v7 = a2;
  pausedCopy = paused;
  initPrivate = 0;
  v5.receiver = self;
  v5.super_class = NLWorkoutComplicationImageProvider;
  initPrivate = [(NLWorkoutComplicationImageProvider *)&v5 initPrivate];
  objc_storeStrong(&initPrivate, initPrivate);
  if (initPrivate)
  {
    *(initPrivate + 8) = pausedCopy;
  }

  v4 = initPrivate;
  objc_storeStrong(&initPrivate, 0);
  return v4;
}

+ (id)noWorkoutImageForComplicationFamily:(int64_t)family
{
  selfCopy = self;
  v14 = a2;
  familyCopy = family;
  v12 = 0.0;
  if (!family || (family - 2) <= 2 || family == 6)
  {
    goto LABEL_9;
  }

  if (family == 7)
  {
    goto LABEL_11;
  }

  if (family == 8)
  {
LABEL_9:
    memcpy(__dst, &kFontSizeCorner, sizeof(__dst));
    v12 = FIUIDeviceValueForLayoutMetric(__dst);
    goto LABEL_12;
  }

  if ((family - 9) <= 1)
  {
    memcpy(v10, &kFontSizeCircular, sizeof(v10));
    v12 = FIUIDeviceValueForLayoutMetric(v10);
    goto LABEL_12;
  }

  if (family != 12)
  {
    v12 = 0.0;
    goto LABEL_12;
  }

LABEL_11:
  memcpy(v9, &kFontSizeLarge, sizeof(v9));
  v12 = FIUIDeviceValueForLayoutMetric(v9);
LABEL_12:
  if (familyCopy == CLKComplicationFamilyCircularMedium)
  {
    memcpy(v8, &kFontSizeCircular, sizeof(v8));
    v12 = FIUIDeviceValueForLayoutMetric(v8);
  }

  v7 = [UIFont systemFontOfSize:v12];
  v6 = [UIImageSymbolConfiguration configurationWithFont:v7];
  v4 = [UIImage _systemImageNamed:@"figure.run" withConfiguration:v6];
  v5 = [v4 imageWithRenderingMode:0];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v6[2] = a2;
  v6[1] = zone;
  v5.receiver = self;
  v5.super_class = NLWorkoutComplicationImageProvider;
  v6[0] = [(NLWorkoutComplicationImageProvider *)&v5 copyWithZone:zone];
  [v6[0] setPaused:selfCopy->_paused];
  v4 = v6[0];
  objc_storeStrong(v6, 0);
  return v4;
}

@end