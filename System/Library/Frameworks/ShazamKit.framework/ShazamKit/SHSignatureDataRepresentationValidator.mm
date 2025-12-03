@interface SHSignatureDataRepresentationValidator
+ (BOOL)signatureDataIsValid:(id)valid error:(id *)error;
@end

@implementation SHSignatureDataRepresentationValidator

+ (BOOL)signatureDataIsValid:(id)valid error:(id *)error
{
  if (valid)
  {
    v9 = 0;
    v5 = [SHSigUtilities signatureFileTypeForData:valid error:&v9];
    v6 = v9;
    v7 = v5 != 0;
    if (!v5)
    {
      [SHError annotateClientError:error code:200 underlyingError:v6];
    }
  }

  else
  {
    [SHError annotateClientError:error code:200 underlyingError:0];
    return 0;
  }

  return v7;
}

@end