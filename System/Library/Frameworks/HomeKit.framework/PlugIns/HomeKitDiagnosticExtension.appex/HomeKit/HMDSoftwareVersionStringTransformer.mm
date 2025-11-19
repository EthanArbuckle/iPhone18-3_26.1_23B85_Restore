@interface HMDSoftwareVersionStringTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDSoftwareVersionStringTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [[HMFSoftwareVersion alloc] initWithString:v4];

  return v5;
}

@end