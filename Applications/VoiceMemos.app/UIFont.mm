@interface UIFont
+ (id)preferredFontForTextStyle:(id)style weight:(double)weight;
+ (id)preferredMonospacedDigitFontForTextStyle:(id)style weight:(double)weight;
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

+ (id)preferredFontForTextStyle:(id)style weight:(double)weight
{
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style];
  v14 = UIFontDescriptorTraitsAttribute;
  v12 = UIFontWeightTrait;
  v6 = [NSNumber numberWithDouble:weight];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = [UIFont fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)preferredMonospacedDigitFontForTextStyle:(id)style weight:(double)weight
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style];
  [v4 pointSize];
  v5 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];

  return v5;
}

@end