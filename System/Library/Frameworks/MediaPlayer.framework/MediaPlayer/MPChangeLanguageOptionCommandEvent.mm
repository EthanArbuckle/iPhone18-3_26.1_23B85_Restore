@interface MPChangeLanguageOptionCommandEvent
- (MPChangeLanguageOptionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPChangeLanguageOptionCommandEvent

- (MPChangeLanguageOptionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = MPChangeLanguageOptionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v19 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1148]];
    if (v10)
    {
      v11 = MRLanguageOptionCreateFromExternalRepresentation();
      if (v11)
      {
        v12 = v11;
        v13 = [[MPNowPlayingInfoLanguageOption alloc] initWithMRLanguageOption:v11];
        languageOption = v9->_languageOption;
        v9->_languageOption = v13;

        CFRelease(v12);
      }
    }

    v15 = [optionsCopy objectForKey:*MEMORY[0x1E69B10A0]];
    intValue = [v15 intValue];

    v17 = 2 * (intValue == 2);
    if (intValue == 1)
    {
      v17 = 1;
    }

    v9->_setting = v17;
  }

  return v9;
}

@end