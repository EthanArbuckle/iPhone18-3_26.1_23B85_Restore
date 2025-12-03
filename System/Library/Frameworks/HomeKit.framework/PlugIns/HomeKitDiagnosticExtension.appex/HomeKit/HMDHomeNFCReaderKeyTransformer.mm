@interface HMDHomeNFCReaderKeyTransformer
+ (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDHomeNFCReaderKeyTransformer

+ (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = kCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [HMDHomeNFCReaderKey createWithDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end