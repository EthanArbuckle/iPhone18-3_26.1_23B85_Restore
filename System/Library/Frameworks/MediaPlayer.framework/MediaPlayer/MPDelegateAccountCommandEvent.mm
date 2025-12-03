@interface MPDelegateAccountCommandEvent
- (MPDelegateAccountCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPDelegateAccountCommandEvent

- (MPDelegateAccountCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = MPDelegateAccountCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B10E0]];
    delegateAccountDataType = v9->_delegateAccountDataType;
    v9->_delegateAccountDataType = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B10D8]];
    delegateAccountData = v9->_delegateAccountData;
    v9->_delegateAccountData = v12;
  }

  return v9;
}

@end