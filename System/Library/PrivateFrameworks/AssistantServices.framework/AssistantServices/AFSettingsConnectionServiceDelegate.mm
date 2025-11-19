@interface AFSettingsConnectionServiceDelegate
- (AFSettingsConnectionServiceDelegate)initWithSettingsConnection:(id)a3;
@end

@implementation AFSettingsConnectionServiceDelegate

- (AFSettingsConnectionServiceDelegate)initWithSettingsConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AFSettingsConnectionServiceDelegate;
  v5 = [(AFSettingsConnectionServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

@end