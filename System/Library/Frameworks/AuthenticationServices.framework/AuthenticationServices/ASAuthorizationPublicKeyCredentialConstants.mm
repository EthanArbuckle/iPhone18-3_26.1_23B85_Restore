@interface ASAuthorizationPublicKeyCredentialConstants
+ (int64_t)publicAttachmentFromInternal:(id)internal;
@end

@implementation ASAuthorizationPublicKeyCredentialConstants

+ (int64_t)publicAttachmentFromInternal:(id)internal
{
  internalCopy = internal;
  if ([internalCopy isEqualToString:*MEMORY[0x1E698DF88]])
  {
    v4 = 0;
  }

  else
  {
    [internalCopy isEqualToString:*MEMORY[0x1E698DF80]];
    v4 = 1;
  }

  return v4;
}

@end