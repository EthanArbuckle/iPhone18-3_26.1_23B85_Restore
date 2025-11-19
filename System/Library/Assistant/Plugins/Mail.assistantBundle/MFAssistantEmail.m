@interface MFAssistantEmail
+ (int64_t)MSSendTypeForSAEMailType:(id)a3;
@end

@implementation MFAssistantEmail

+ (int64_t)MSSendTypeForSAEMailType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAEmailTypeReplyValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAEmailTypeForwardValue])
  {
    v4 = 3;
  }

  else
  {
    [v3 isEqualToString:SAEmailTypeNewValue];
    v4 = 1;
  }

  return v4;
}

@end