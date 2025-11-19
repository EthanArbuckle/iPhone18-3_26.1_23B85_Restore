@interface HMDCKRecordIDCanonicalStringTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCKRecordIDCanonicalStringTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [CKRecordID alloc];
  v6 = [v5 hmd_initWithCanonicalStringRepresentation:v4];

  return v6;
}

@end