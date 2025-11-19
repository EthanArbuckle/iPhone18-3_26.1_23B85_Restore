@interface WKWebPrivacyNotificationListener
- (WKWebPrivacyNotificationListener)initWithType:(int64_t)a3 callback:(id)a4;
- (void)dealloc;
- (void)didUpdate:(id)a3;
@end

@implementation WKWebPrivacyNotificationListener

- (WKWebPrivacyNotificationListener)initWithType:(int64_t)a3 callback:(id)a4
{
  v11.receiver = self;
  v11.super_class = WKWebPrivacyNotificationListener;
  v6 = [(WKWebPrivacyNotificationListener *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_resourceType = a3;
    v8 = _Block_copy(a4);
    _Block_release(v7->_callback.m_block);
    v7->_callback.m_block = v8;
    _Block_release(0);
    if (PAL::WebPrivacyLibrary(1))
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:v7 selector:sel_didUpdate_ name:PAL::get_WebPrivacy_WPResourceDataChangedNotificationName(v9) object:0];
    }
  }

  return v7;
}

- (void)dealloc
{
  if (PAL::WebPrivacyLibrary(1))
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:PAL::get_WebPrivacy_WPResourceDataChangedNotificationName(v3) object:0];
  }

  v4.receiver = self;
  v4.super_class = WKWebPrivacyNotificationListener;
  [(WKWebPrivacyNotificationListener *)&v4 dealloc];
}

- (void)didUpdate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:PAL::get_WebPrivacy_WPNotificationUserInfoResourceTypeKey(v4)];
  v6 = WTF::dynamic_objc_cast<NSNumber>(v5);
  if (v6 && self->_callback.m_block && [v6 integerValue] == self->_resourceType)
  {
    v7 = *(self->_callback.m_block + 2);

    v7();
  }
}

@end