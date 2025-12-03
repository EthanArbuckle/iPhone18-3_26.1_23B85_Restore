@interface WKWebPrivacyNotificationListener
- (WKWebPrivacyNotificationListener)initWithType:(int64_t)type callback:(id)callback;
- (void)dealloc;
- (void)didUpdate:(id)update;
@end

@implementation WKWebPrivacyNotificationListener

- (WKWebPrivacyNotificationListener)initWithType:(int64_t)type callback:(id)callback
{
  v11.receiver = self;
  v11.super_class = WKWebPrivacyNotificationListener;
  v6 = [(WKWebPrivacyNotificationListener *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_resourceType = type;
    v8 = _Block_copy(callback);
    _Block_release(v7->_callback.m_block);
    v7->_callback.m_block = v8;
    _Block_release(0);
    if (PAL::WebPrivacyLibrary(1))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel_didUpdate_ name:PAL::get_WebPrivacy_WPResourceDataChangedNotificationName(defaultCenter) object:0];
    }
  }

  return v7;
}

- (void)dealloc
{
  if (PAL::WebPrivacyLibrary(1))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:PAL::get_WebPrivacy_WPResourceDataChangedNotificationName(defaultCenter) object:0];
  }

  v4.receiver = self;
  v4.super_class = WKWebPrivacyNotificationListener;
  [(WKWebPrivacyNotificationListener *)&v4 dealloc];
}

- (void)didUpdate:(id)update
{
  userInfo = [update userInfo];
  v5 = [userInfo objectForKey:PAL::get_WebPrivacy_WPNotificationUserInfoResourceTypeKey(userInfo)];
  v6 = WTF::dynamic_objc_cast<NSNumber>(v5);
  if (v6 && self->_callback.m_block && [v6 integerValue] == self->_resourceType)
  {
    v7 = *(self->_callback.m_block + 2);

    v7();
  }
}

@end