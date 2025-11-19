@interface HMDHomeNFCReaderKeyTransformer
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDHomeNFCReaderKeyTransformer

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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