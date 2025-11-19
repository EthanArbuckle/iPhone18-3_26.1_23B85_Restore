@interface CLBAlertConfiguration
- (CLBAlertConfiguration)initWithDictionary:(id)a3 replyPort:(unsigned int)a4 requestFlags:(int)a5 usesCriticalAlertUI:(BOOL)a6;
@end

@implementation CLBAlertConfiguration

- (CLBAlertConfiguration)initWithDictionary:(id)a3 replyPort:(unsigned int)a4 requestFlags:(int)a5 usesCriticalAlertUI:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = CLBAlertConfiguration;
  v12 = [(CLBAlertConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dictionary, a3);
    v13->_replyPort = a4;
    v13->_requestFlags = a5;
    v13->_usesCriticalAlertUI = a6;
  }

  return v13;
}

@end