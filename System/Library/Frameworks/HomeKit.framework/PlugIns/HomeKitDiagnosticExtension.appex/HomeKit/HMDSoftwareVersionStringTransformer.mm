@interface HMDSoftwareVersionStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDSoftwareVersionStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [[HMFSoftwareVersion alloc] initWithString:valueCopy];

  return v5;
}

@end