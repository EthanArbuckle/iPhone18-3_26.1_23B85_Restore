@interface QRCodeReaderInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation QRCodeReaderInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v14 = 0;
  if (parameters)
  {
    parametersCopy = parameters;
    v5 = [parametersCopy dk_stringFromRequiredKey:@"viewfinderInstruction" maxLength:1000 failed:&v14];
    [(QRCodeReaderInputs *)self setViewfinderInstruction:v5];

    v6 = [parametersCopy dk_numberFromKey:@"timeout" lowerBound:&off_10000CA08 upperBound:&off_10000CA20 defaultValue:&off_10000CA08 failed:&v14];
    [(QRCodeReaderInputs *)self setTimeout:v6];

    v15[0] = AVMetadataObjectTypeUPCECode;
    v15[1] = AVMetadataObjectTypeCode39Code;
    v15[2] = AVMetadataObjectTypeCode39Mod43Code;
    v15[3] = AVMetadataObjectTypeEAN13Code;
    v15[4] = AVMetadataObjectTypeEAN8Code;
    v15[5] = AVMetadataObjectTypeCode93Code;
    v15[6] = AVMetadataObjectTypeCode128Code;
    v15[7] = AVMetadataObjectTypePDF417Code;
    v15[8] = AVMetadataObjectTypeQRCode;
    v15[9] = AVMetadataObjectTypeAztecCode;
    v15[10] = AVMetadataObjectTypeInterleaved2of5Code;
    v15[11] = AVMetadataObjectTypeITF14Code;
    v15[12] = AVMetadataObjectTypeDataMatrixCode;
    v7 = [NSArray arrayWithObjects:v15 count:13];
    v8 = [NSSet setWithArray:v7];
    v9 = [parametersCopy dk_arrayFromRequiredKey:@"codeTypes" inSet:v8 maxLength:13 failed:&v14];

    [(QRCodeReaderInputs *)self setCodeTypes:v9];
    codeTypes = [(QRCodeReaderInputs *)self codeTypes];
    v11 = [codeTypes count];

    if (!v11)
    {
      v14 = 1;
    }

    v12 = v14 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

@end