@interface HMDSoftwareVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDSoftwareVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [[NSString alloc] initWithData:v4 encoding:4];

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

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v4 = [a3 versionString];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

@end