@interface HMDCKRecordIDCanonicalStringDataTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDCKRecordIDCanonicalStringDataTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [[NSString alloc] initWithData:valueCopy encoding:1];

  if (v5)
  {
    v6 = [CKRecordID alloc];
    v7 = [v6 hmd_initWithCanonicalStringRepresentation:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  hmd_canonicalStringRepresentation = [value hmd_canonicalStringRepresentation];
  v5 = [hmd_canonicalStringRepresentation dataUsingEncoding:1];

  return v5;
}

@end