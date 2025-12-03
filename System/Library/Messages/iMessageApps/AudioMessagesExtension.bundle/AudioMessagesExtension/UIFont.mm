@interface UIFont
+ (id)scaledMonospacedSystemFontOfSize:(double)size;
+ (id)scaledSystemFontOfSize:(double)size;
+ (id)scaledSystemFontOfSize:(double)size weight:(double)weight;
@end

@implementation UIFont

+ (id)scaledSystemFontOfSize:(double)size
{
  v3 = [UIFont systemFontOfSize:size];
  v4 = +[UIFontMetrics defaultMetrics];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)scaledMonospacedSystemFontOfSize:(double)size
{
  v3 = [UIFont monospacedDigitSystemFontOfSize:size weight:UIFontWeightRegular];
  v4 = +[UIFontMetrics defaultMetrics];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)scaledSystemFontOfSize:(double)size weight:(double)weight
{
  v4 = [UIFont systemFontOfSize:size weight:weight];
  v5 = +[UIFontMetrics defaultMetrics];
  v6 = [v5 scaledFontForFont:v4];

  return v6;
}

@end