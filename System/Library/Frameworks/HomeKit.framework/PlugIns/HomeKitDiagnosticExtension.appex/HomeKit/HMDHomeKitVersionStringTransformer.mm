@interface HMDHomeKitVersionStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDHomeKitVersionStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [[HMDHomeKitVersion alloc] initWithString:valueCopy];

  return v5;
}

@end