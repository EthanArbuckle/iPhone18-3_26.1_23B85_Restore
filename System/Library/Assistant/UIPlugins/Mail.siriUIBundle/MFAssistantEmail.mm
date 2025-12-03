@interface MFAssistantEmail
+ (int64_t)MSSendTypeForSAEMailType:(id)type;
@end

@implementation MFAssistantEmail

+ (int64_t)MSSendTypeForSAEMailType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:SAEmailTypeReplyValue])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:SAEmailTypeForwardValue])
  {
    v4 = 3;
  }

  else
  {
    [typeCopy isEqualToString:SAEmailTypeNewValue];
    v4 = 1;
  }

  return v4;
}

@end