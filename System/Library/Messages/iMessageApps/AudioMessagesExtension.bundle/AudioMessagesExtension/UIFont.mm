@interface UIFont
+ (id)scaledMonospacedSystemFontOfSize:(double)a3;
+ (id)scaledSystemFontOfSize:(double)a3;
+ (id)scaledSystemFontOfSize:(double)a3 weight:(double)a4;
@end

@implementation UIFont

+ (id)scaledSystemFontOfSize:(double)a3
{
  v3 = [UIFont systemFontOfSize:a3];
  v4 = +[UIFontMetrics defaultMetrics];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)scaledMonospacedSystemFontOfSize:(double)a3
{
  v3 = [UIFont monospacedDigitSystemFontOfSize:a3 weight:UIFontWeightRegular];
  v4 = +[UIFontMetrics defaultMetrics];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)scaledSystemFontOfSize:(double)a3 weight:(double)a4
{
  v4 = [UIFont systemFontOfSize:a3 weight:a4];
  v5 = +[UIFontMetrics defaultMetrics];
  v6 = [v5 scaledFontForFont:v4];

  return v6;
}

@end