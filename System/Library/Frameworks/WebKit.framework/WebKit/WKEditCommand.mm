@interface WKEditCommand
- (WKEditCommand)initWithWebEditCommandProxy:(void *)proxy;
@end

@implementation WKEditCommand

- (WKEditCommand)initWithWebEditCommandProxy:(void *)proxy
{
  v9.receiver = self;
  v9.super_class = WKEditCommand;
  v4 = [(WKEditCommand *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *proxy;
    *proxy = 0;
    m_ptr = v4->_command.m_ptr;
    v4->_command.m_ptr = v6;
    if (m_ptr)
    {
      CFRelease(*(m_ptr + 1));
    }
  }

  return v5;
}

@end