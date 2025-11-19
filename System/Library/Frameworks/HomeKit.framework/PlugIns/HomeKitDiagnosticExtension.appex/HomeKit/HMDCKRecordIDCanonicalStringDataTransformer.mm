@interface HMDCKRecordIDCanonicalStringDataTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCKRecordIDCanonicalStringDataTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [[NSString alloc] initWithData:v4 encoding:1];

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

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v4 = [a3 hmd_canonicalStringRepresentation];
  v5 = [v4 dataUsingEncoding:1];

  return v5;
}

@end