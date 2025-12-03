@interface NSUserActivity(CIBarcodeDescriptor)
- (uint64_t)detectedBarcodeDescriptor;
- (uint64_t)setDetectedCode:()CIBarcodeDescriptor;
@end

@implementation NSUserActivity(CIBarcodeDescriptor)

- (uint64_t)detectedBarcodeDescriptor
{
  result = [self _objectForIdentifier:@"com.apple.DetectedBarcode.UserActivityPayload"];
  if (!result)
  {
    result = [self _payloadForIdentifier:@"com.apple.DetectedBarcode.UserActivityPayload"];
    if (result)
    {
      v3 = result;
      v4 = objc_opt_self();

      return unarchiveObjectOfClass(v4, v3);
    }
  }

  return result;
}

- (uint64_t)setDetectedCode:()CIBarcodeDescriptor
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (a3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __55__NSUserActivity_CIBarcodeDescriptor__setDetectedCode___block_invoke;
      v6[3] = &unk_1E75C1DB0;
      v6[4] = a3;
      return [self _setPayloadIdentifier:@"com.apple.DetectedBarcode.UserActivityPayload" object:a3 withBlock:v6];
    }

    else
    {

      return [self _setPayloadIdentifier:@"com.apple.DetectedBarcode.UserActivityPayload" object:0 withBlock:0];
    }
  }

  return result;
}

@end