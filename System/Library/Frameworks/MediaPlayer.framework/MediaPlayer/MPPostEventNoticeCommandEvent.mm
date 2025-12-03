@interface MPPostEventNoticeCommandEvent
- (MPPostEventNoticeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPPostEventNoticeCommandEvent

- (MPPostEventNoticeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = MPPostEventNoticeCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1118]];
    eventIdentifier = v9->_eventIdentifier;
    v9->_eventIdentifier = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1120]];
    eventType = v9->_eventType;
    v9->_eventType = v12;
  }

  return v9;
}

@end