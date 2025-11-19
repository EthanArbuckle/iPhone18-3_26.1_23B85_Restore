@interface UIFont
+ (id)preferredFontForTextStyle:(id)a3 weight:(double)a4;
+ (id)preferredMonospacedDigitFontForTextStyle:(id)a3 weight:(double)a4;
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

+ (id)preferredFontForTextStyle:(id)a3 weight:(double)a4
{
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3];
  v14 = UIFontDescriptorTraitsAttribute;
  v12 = UIFontWeightTrait;
  v6 = [NSNumber numberWithDouble:a4];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = [UIFont fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)preferredMonospacedDigitFontForTextStyle:(id)a3 weight:(double)a4
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3];
  [v4 pointSize];
  v5 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];

  return v5;
}

@end