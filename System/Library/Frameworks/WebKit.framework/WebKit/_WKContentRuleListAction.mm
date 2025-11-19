@interface _WKContentRuleListAction
- (NSArray)notifications;
- (void)dealloc;
@end

@implementation _WKContentRuleListAction

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self->_action.m_storage.data[24], v4);
    v5.receiver = self;
    v5.super_class = _WKContentRuleListAction;
    [(_WKContentRuleListAction *)&v5 dealloc];
  }
}

- (NSArray)notifications
{
  if (!*&self->_action.m_storage.data[36])
  {
    return 0;
  }

  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&self->_action.m_storage.data[24], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

@end