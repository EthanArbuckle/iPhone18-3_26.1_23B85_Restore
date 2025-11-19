@interface StoreOnServerSettings
- (StoreOnServerSettings)initWithType:(int64_t)a3 key:(id)a4 mailboxNameKey:(id)a5;
@end

@implementation StoreOnServerSettings

- (StoreOnServerSettings)initWithType:(int64_t)a3 key:(id)a4 mailboxNameKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = StoreOnServerSettings;
  v10 = [(StoreOnServerSettings *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    key = v11->_key;
    v11->_key = v12;

    v14 = [v9 copy];
    mailboxNameKey = v11->_mailboxNameKey;
    v11->_mailboxNameKey = v14;
  }

  return v11;
}

@end