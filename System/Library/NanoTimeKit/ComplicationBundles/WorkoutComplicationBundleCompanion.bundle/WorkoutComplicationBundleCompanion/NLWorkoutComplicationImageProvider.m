@interface NLWorkoutComplicationImageProvider
+ (id)noWorkoutImageForComplicationFamily:(int64_t)a3;
- (NLWorkoutComplicationImageProvider)initWithPaused:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NLWorkoutComplicationImageProvider

- (NLWorkoutComplicationImageProvider)initWithPaused:(BOOL)a3
{
  v7 = a2;
  v6 = a3;
  v8 = 0;
  v5.receiver = self;
  v5.super_class = NLWorkoutComplicationImageProvider;
  v8 = [(NLWorkoutComplicationImageProvider *)&v5 initPrivate];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    *(v8 + 8) = v6;
  }

  v4 = v8;
  objc_storeStrong(&v8, 0);
  return v4;
}

+ (id)noWorkoutImageForComplicationFamily:(int64_t)a3
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0.0;
  if (!a3 || (a3 - 2) <= 2 || a3 == 6)
  {
    goto LABEL_9;
  }

  if (a3 == 7)
  {
    goto LABEL_11;
  }

  if (a3 == 8)
  {
LABEL_9:
    memcpy(__dst, &kFontSizeCorner, sizeof(__dst));
    v12 = FIUIDeviceValueForLayoutMetric(__dst);
    goto LABEL_12;
  }

  if ((a3 - 9) <= 1)
  {
    memcpy(v10, &kFontSizeCircular, sizeof(v10));
    v12 = FIUIDeviceValueForLayoutMetric(v10);
    goto LABEL_12;
  }

  if (a3 != 12)
  {
    v12 = 0.0;
    goto LABEL_12;
  }

LABEL_11:
  memcpy(v9, &kFontSizeLarge, sizeof(v9));
  v12 = FIUIDeviceValueForLayoutMetric(v9);
LABEL_12:
  if (v13 == CLKComplicationFamilyCircularMedium)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = self;
  v6[2] = a2;
  v6[1] = a3;
  v5.receiver = self;
  v5.super_class = NLWorkoutComplicationImageProvider;
  v6[0] = [(NLWorkoutComplicationImageProvider *)&v5 copyWithZone:a3];
  [v6[0] setPaused:v7->_paused];
  v4 = v6[0];
  objc_storeStrong(v6, 0);
  return v4;
}

@end