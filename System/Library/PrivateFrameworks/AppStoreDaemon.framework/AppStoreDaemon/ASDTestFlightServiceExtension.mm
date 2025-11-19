@interface ASDTestFlightServiceExtension
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation ASDTestFlightServiceExtension

- (void)beginRequestWithExtensionContext:(id)a3
{
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v7 && (isKindOfClass & 1) != 0)
  {
    v5 = v7;
    [v5 setExtensionInstance:self];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"context is not an instance of ASDTestFlightServiceExtensionRemoteContext: context='%@'", v7];
    v6 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, v5);
    [v7 cancelRequestWithError:v6];
  }
}

@end