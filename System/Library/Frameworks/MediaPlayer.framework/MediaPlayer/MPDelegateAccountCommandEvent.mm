@interface MPDelegateAccountCommandEvent
- (MPDelegateAccountCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPDelegateAccountCommandEvent

- (MPDelegateAccountCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MPDelegateAccountCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B10E0]];
    delegateAccountDataType = v9->_delegateAccountDataType;
    v9->_delegateAccountDataType = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B10D8]];
    delegateAccountData = v9->_delegateAccountData;
    v9->_delegateAccountData = v12;
  }

  return v9;
}

@end