@interface DOMMatchJob
- (void)dealloc;
- (void)kick;
@end

@implementation DOMMatchJob

- (void)kick
{
  kickMe = [(DOMMatchJob *)self kickMe];
  msgID = [(DOMMatchJob *)self msgID];
  [(DOMMatchJob *)self setMsgID:(msgID + 1)];
  v5 = CFMessagePortSendRequest(kickMe, msgID, 0, 0.0, 0.0, 0, 0);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Problem kicking job: %d", v7, 8u);
    }
  }
}

- (void)dealloc
{
  kickMe = self->_kickMe;
  if (kickMe)
  {
    CFRelease(kickMe);
  }

  v4.receiver = self;
  v4.super_class = DOMMatchJob;
  [(DOMMatchJob *)&v4 dealloc];
}

@end