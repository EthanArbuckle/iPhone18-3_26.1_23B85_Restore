@interface SASessionValidationFailed
- (BOOL)ad_shouldRetry;
- (int64_t)ad_afErrorCode;
@end

@implementation SASessionValidationFailed

- (int64_t)ad_afErrorCode
{
  errorCode = [(SASessionValidationFailed *)self errorCode];
  if ([errorCode isEqualToString:SAValidationFailedErrorCodeAppleConnectAuthFailedValue])
  {
    v3 = 7000;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (BOOL)ad_shouldRetry
{
  errorCode = [(SASessionValidationFailed *)self errorCode];
  if ([errorCode isEqualToString:SAValidationFailedErrorCodeInvalidSessionInfoValue] & 1) != 0 || (objc_msgSend(errorCode, "isEqualToString:", SAValidationFailedErrorCodeInvalidValidationDataValue) & 1) != 0 || (objc_msgSend(errorCode, "isEqualToString:", SAValidationFailedErrorCodeInvalidFingerprintValue))
  {
    v3 = 1;
  }

  else
  {
    v3 = [errorCode isEqualToString:SAValidationFailedErrorCodeAppleConnectServerUnreachableValue];
  }

  return v3;
}

@end