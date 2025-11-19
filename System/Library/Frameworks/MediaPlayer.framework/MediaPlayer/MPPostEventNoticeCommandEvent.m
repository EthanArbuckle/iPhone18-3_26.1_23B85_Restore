@interface MPPostEventNoticeCommandEvent
- (MPPostEventNoticeCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPPostEventNoticeCommandEvent

- (MPPostEventNoticeCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MPPostEventNoticeCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1118]];
    eventIdentifier = v9->_eventIdentifier;
    v9->_eventIdentifier = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1120]];
    eventType = v9->_eventType;
    v9->_eventType = v12;
  }

  return v9;
}

@end