@interface HMDVersionStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDVersionStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [[HMFVersion alloc] initWithString:valueCopy];

  return v5;
}

@end