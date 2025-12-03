@interface ASDTestFlightServiceExtension
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation ASDTestFlightServiceExtension

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (contextCopy && (isKindOfClass & 1) != 0)
  {
    contextCopy = contextCopy;
    [contextCopy setExtensionInstance:self];
  }

  else
  {
    contextCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"context is not an instance of ASDTestFlightServiceExtensionRemoteContext: context='%@'", contextCopy];
    v6 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, contextCopy);
    [contextCopy cancelRequestWithError:v6];
  }
}

@end