@interface MPEnhanceDialogueCommandEvent
- (MPEnhanceDialogueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPEnhanceDialogueCommandEvent

- (MPEnhanceDialogueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = MPEnhanceDialogueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v12 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1110]];
    v9->_active = [v10 BOOLValue];
  }

  return v9;
}

@end