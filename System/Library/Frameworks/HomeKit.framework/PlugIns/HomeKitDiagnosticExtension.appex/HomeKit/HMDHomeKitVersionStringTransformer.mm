@interface HMDHomeKitVersionStringTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDHomeKitVersionStringTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [[HMDHomeKitVersion alloc] initWithString:v4];

  return v5;
}

@end