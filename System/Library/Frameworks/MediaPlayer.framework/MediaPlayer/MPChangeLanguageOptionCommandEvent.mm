@interface MPChangeLanguageOptionCommandEvent
- (MPChangeLanguageOptionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPChangeLanguageOptionCommandEvent

- (MPChangeLanguageOptionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v19.receiver = self;
  v19.super_class = MPChangeLanguageOptionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v19 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1148]];
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

    v15 = [v8 objectForKey:*MEMORY[0x1E69B10A0]];
    v16 = [v15 intValue];

    v17 = 2 * (v16 == 2);
    if (v16 == 1)
    {
      v17 = 1;
    }

    v9->_setting = v17;
  }

  return v9;
}

@end