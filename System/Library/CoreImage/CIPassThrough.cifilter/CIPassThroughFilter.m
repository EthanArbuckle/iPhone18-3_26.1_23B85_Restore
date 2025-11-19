@interface CIPassThroughFilter
+ (id)customAttributes;
@end

@implementation CIPassThroughFilter

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryBuiltIn;
  v5[1] = kCICategoryApplePrivate;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v7[0] = v2;
  v7[1] = @"10";
  v6[1] = kCIAttributeFilterAvailable_iOS;
  v6[2] = kCIAttributeFilterAvailable_Mac;
  v7[2] = @"10.12";
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v3;
}

@end