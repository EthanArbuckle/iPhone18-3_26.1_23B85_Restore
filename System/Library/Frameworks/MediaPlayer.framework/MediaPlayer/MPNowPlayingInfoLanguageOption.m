@interface MPNowPlayingInfoLanguageOption
- (BOOL)isEqualToLanguageOption:(id)a3;
- (MPNowPlayingInfoLanguageOption)initWithMRLanguageOption:(void *)a3;
- (MPNowPlayingInfoLanguageOption)initWithType:(MPNowPlayingInfoLanguageOptionType)languageOptionType languageTag:(NSString *)languageTag characteristics:(NSArray *)languageOptionCharacteristics displayName:(NSString *)displayName identifier:(NSString *)identifier;
- (NSArray)languageOptionCharacteristics;
- (NSString)displayName;
- (NSString)identifier;
- (NSString)languageTag;
- (void)dealloc;
@end

@implementation MPNowPlayingInfoLanguageOption

- (BOOL)isEqualToLanguageOption:(id)a3
{
  mrLanguageOption = self->_mrLanguageOption;
  v4 = [a3 mrLanguageOption];

  return MEMORY[0x1EEE1CF20](mrLanguageOption, v4);
}

- (NSString)identifier
{
  v2 = MRLanguageOptionCopyIdentifier();

  return v2;
}

- (NSString)displayName
{
  v2 = MRLanguageOptionCopyDisplayName();

  return v2;
}

- (NSArray)languageOptionCharacteristics
{
  v2 = MRLanguageOptionCopyCharacteristics();

  return v2;
}

- (NSString)languageTag
{
  v2 = MRLanguageOptionCopyLanguageTag();

  return v2;
}

- (MPNowPlayingInfoLanguageOption)initWithMRLanguageOption:(void *)a3
{
  v7.receiver = self;
  v7.super_class = MPNowPlayingInfoLanguageOption;
  v4 = [(MPNowPlayingInfoLanguageOption *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_mrLanguageOption = CFRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  mrLanguageOption = self->_mrLanguageOption;
  if (mrLanguageOption)
  {
    CFRelease(mrLanguageOption);
  }

  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoLanguageOption;
  [(MPNowPlayingInfoLanguageOption *)&v4 dealloc];
}

- (MPNowPlayingInfoLanguageOption)initWithType:(MPNowPlayingInfoLanguageOptionType)languageOptionType languageTag:(NSString *)languageTag characteristics:(NSArray *)languageOptionCharacteristics displayName:(NSString *)displayName identifier:(NSString *)identifier
{
  v11 = languageTag;
  v12 = languageOptionCharacteristics;
  v13 = displayName;
  v14 = identifier;
  v17.receiver = self;
  v17.super_class = MPNowPlayingInfoLanguageOption;
  v15 = [(MPNowPlayingInfoLanguageOption *)&v17 init];
  if (v15)
  {
    v15->_mrLanguageOption = MRLanguageOptionCreate();
  }

  return v15;
}

@end