@interface SHSignatureDataRepresentationValidator
+ (BOOL)signatureDataIsValid:(id)a3 error:(id *)a4;
@end

@implementation SHSignatureDataRepresentationValidator

+ (BOOL)signatureDataIsValid:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v9 = 0;
    v5 = [SHSigUtilities signatureFileTypeForData:a3 error:&v9];
    v6 = v9;
    v7 = v5 != 0;
    if (!v5)
    {
      [SHError annotateClientError:a4 code:200 underlyingError:v6];
    }
  }

  else
  {
    [SHError annotateClientError:a4 code:200 underlyingError:0];
    return 0;
  }

  return v7;
}

@end