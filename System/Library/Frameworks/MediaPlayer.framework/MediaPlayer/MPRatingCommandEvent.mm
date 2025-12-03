@interface MPRatingCommandEvent
- (MPRatingCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPRatingCommandEvent

- (MPRatingCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MPRatingCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B11F0]];
    [v10 floatValue];
    v9->_rating = v11;
  }

  return v9;
}

@end