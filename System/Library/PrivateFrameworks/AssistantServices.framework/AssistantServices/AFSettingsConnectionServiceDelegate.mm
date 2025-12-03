@interface AFSettingsConnectionServiceDelegate
- (AFSettingsConnectionServiceDelegate)initWithSettingsConnection:(id)connection;
@end

@implementation AFSettingsConnectionServiceDelegate

- (AFSettingsConnectionServiceDelegate)initWithSettingsConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = AFSettingsConnectionServiceDelegate;
  v5 = [(AFSettingsConnectionServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

@end