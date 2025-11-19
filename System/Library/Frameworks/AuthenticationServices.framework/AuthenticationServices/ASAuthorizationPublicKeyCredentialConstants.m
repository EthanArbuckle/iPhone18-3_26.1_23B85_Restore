@interface ASAuthorizationPublicKeyCredentialConstants
+ (int64_t)publicAttachmentFromInternal:(id)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialConstants

+ (int64_t)publicAttachmentFromInternal:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E698DF88]])
  {
    v4 = 0;
  }

  else
  {
    [v3 isEqualToString:*MEMORY[0x1E698DF80]];
    v4 = 1;
  }

  return v4;
}

@end