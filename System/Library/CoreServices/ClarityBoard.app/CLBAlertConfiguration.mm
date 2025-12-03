@interface CLBAlertConfiguration
- (CLBAlertConfiguration)initWithDictionary:(id)dictionary replyPort:(unsigned int)port requestFlags:(int)flags usesCriticalAlertUI:(BOOL)i;
@end

@implementation CLBAlertConfiguration

- (CLBAlertConfiguration)initWithDictionary:(id)dictionary replyPort:(unsigned int)port requestFlags:(int)flags usesCriticalAlertUI:(BOOL)i
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CLBAlertConfiguration;
  v12 = [(CLBAlertConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dictionary, dictionary);
    v13->_replyPort = port;
    v13->_requestFlags = flags;
    v13->_usesCriticalAlertUI = i;
  }

  return v13;
}

@end