@interface HMDCKRecordIDCanonicalStringTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
@end

@implementation HMDCKRecordIDCanonicalStringTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = [CKRecordID alloc];
  v6 = [v5 hmd_initWithCanonicalStringRepresentation:valueCopy];

  return v6;
}

@end