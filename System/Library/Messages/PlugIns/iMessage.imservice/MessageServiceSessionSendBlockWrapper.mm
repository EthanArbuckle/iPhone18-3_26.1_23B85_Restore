@interface MessageServiceSessionSendBlockWrapper
- (MessageServiceSessionSendBlockWrapper)init;
- (id)description;
- (void)dealloc;
@end

@implementation MessageServiceSessionSendBlockWrapper

- (MessageServiceSessionSendBlockWrapper)init
{
  v3.receiver = self;
  v3.super_class = MessageServiceSessionSendBlockWrapper;
  result = [(MessageServiceSessionSendBlockWrapper *)&v3 init];
  if (result)
  {
    result->_isDelayedRichLinkBlock = 0;
    result->_GUID = 0;
    result->_block = 0;
  }

  return result;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      GUID = self->_GUID;
      *buf = 138412546;
      v7 = GUID;
      v8 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "deallocing %@ %p", buf, 0x16u);
    }
  }

  _Block_release(self->_block);
  v5.receiver = self;
  v5.super_class = MessageServiceSessionSendBlockWrapper;
  [(MessageServiceSessionSendBlockWrapper *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  gUID = [(MessageServiceSessionSendBlockWrapper *)self GUID];
  if ([(MessageServiceSessionSendBlockWrapper *)self isDelayedRichLinkBlock])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@:%p GUID %@ isDelayedRichLinkBlock %@ Block %@>", v3, self, gUID, v5, [(MessageServiceSessionSendBlockWrapper *)self block]];
}

@end