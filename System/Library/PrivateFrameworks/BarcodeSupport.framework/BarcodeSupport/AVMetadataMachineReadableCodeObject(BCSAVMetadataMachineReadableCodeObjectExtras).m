@interface AVMetadataMachineReadableCodeObject(BCSAVMetadataMachineReadableCodeObjectExtras)
- (uint64_t)_bcs_probablyContainsSameCodeInBasicDescriptor:()BCSAVMetadataMachineReadableCodeObjectExtras;
@end

@implementation AVMetadataMachineReadableCodeObject(BCSAVMetadataMachineReadableCodeObjectExtras)

- (uint64_t)_bcs_probablyContainsSameCodeInBasicDescriptor:()BCSAVMetadataMachineReadableCodeObjectExtras
{
  v4 = a3;
  v5 = [a1 basicDescriptor];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v5 objectForKeyedSubscript:@"BarcodeType"];
    v9 = [v4 objectForKeyedSubscript:@"BarcodeType"];
    if ([v8 isEqualToString:v9])
    {
      if ([v8 isEqualToString:@"com.apple.AppClipCode"])
      {
        v10 = [v6 objectForKeyedSubscript:@"RawData"];
        v11 = [v4 objectForKeyedSubscript:@"RawData"];
        v12 = [v6 objectForKeyedSubscript:@"Version"];
        v13 = [v4 objectForKeyedSubscript:@"Version"];
        if ([v10 isEqualToData:v11])
        {
          v7 = [v12 isEqualToNumber:v13];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v22 = [v6 objectForKeyedSubscript:@"SymbolVersion"];
        v11 = [v6 objectForKeyedSubscript:@"QRMASK"];
        v12 = [v6 objectForKeyedSubscript:@"ErrorCorrectionLevel"];
        v13 = [v4 objectForKeyedSubscript:@"SymbolVersion"];
        v14 = [v4 objectForKeyedSubscript:@"QRMASK"];
        v15 = [v4 objectForKeyedSubscript:@"ErrorCorrectionLevel"];
        v16 = [v12 integerValue];
        v23 = v14;
        if (v16 == [v15 integerValue] && (v17 = objc_msgSend(v11, "charValue"), v17 == objc_msgSend(v14, "charValue")))
        {
          v10 = v22;
          v18 = [v22 charValue];
          if (v18 == [v13 charValue])
          {
            v21 = [v6 objectForKeyedSubscript:@"BarcodeRawData"];
            v20 = [v4 objectForKeyedSubscript:@"BarcodeRawData"];
            v7 = [v21 isEqualToData:v20];
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
          v10 = v22;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end