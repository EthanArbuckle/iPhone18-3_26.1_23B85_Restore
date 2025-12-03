@interface HMDSoftwareVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDSoftwareVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [[NSString alloc] initWithData:valueCopy encoding:4];

  if (v5)
  {
    v6 = [[HMFSoftwareVersion alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  versionString = [value versionString];
  v5 = [versionString dataUsingEncoding:4];

  return v5;
}

@end