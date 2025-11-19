@interface IDSOffGridMessageContext
- (int64_t)__im_underlyingCommand;
@end

@implementation IDSOffGridMessageContext

- (int64_t)__im_underlyingCommand
{
  if (objc_opt_respondsToSelector())
  {

    return [(IDSOffGridMessageContext *)self underlyingCommand];
  }

  else if (IMSMSEnabled() && (+[IMCTSMSUtilities isMessagesTheDefaultTextApp]& 1) != 0)
  {
    return 143;
  }

  else
  {
    return 140;
  }
}

@end