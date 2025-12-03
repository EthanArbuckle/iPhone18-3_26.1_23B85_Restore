@interface StoreOnServerSettings
- (StoreOnServerSettings)initWithType:(int64_t)type key:(id)key mailboxNameKey:(id)nameKey;
@end

@implementation StoreOnServerSettings

- (StoreOnServerSettings)initWithType:(int64_t)type key:(id)key mailboxNameKey:(id)nameKey
{
  keyCopy = key;
  nameKeyCopy = nameKey;
  v17.receiver = self;
  v17.super_class = StoreOnServerSettings;
  v10 = [(StoreOnServerSettings *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [keyCopy copy];
    key = v11->_key;
    v11->_key = v12;

    v14 = [nameKeyCopy copy];
    mailboxNameKey = v11->_mailboxNameKey;
    v11->_mailboxNameKey = v14;
  }

  return v11;
}

@end