@interface MPNowPlayingInfoLanguageOptionGroup
- (MPNowPlayingInfoLanguageOption)defaultLanguageOption;
- (MPNowPlayingInfoLanguageOptionGroup)initWithLanguageOptions:(NSArray *)languageOptions defaultLanguageOption:(MPNowPlayingInfoLanguageOption *)defaultLanguageOption allowEmptySelection:(BOOL)allowEmptySelection;
- (MPNowPlayingInfoLanguageOptionGroup)initWithMRLanguageOptionGroup:(void *)group;
- (NSArray)languageOptions;
- (void)dealloc;
@end

@implementation MPNowPlayingInfoLanguageOptionGroup

- (MPNowPlayingInfoLanguageOption)defaultLanguageOption
{
  v2 = [[MPNowPlayingInfoLanguageOption alloc] initWithMRLanguageOption:MRLanguageOptionGroupGetDefaultLanguageOption()];

  return v2;
}

- (NSArray)languageOptions
{
  v2 = MRLanguageOptionGroupCopyLanguageOptions();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = [[MPNowPlayingInfoLanguageOption alloc] initWithMRLanguageOption:CFArrayGetValueAtIndex(v3, i)];
        [(NSArray *)v5 addObject:v7];
      }
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (void)dealloc
{
  mrLanguageOptionGroup = self->_mrLanguageOptionGroup;
  if (mrLanguageOptionGroup)
  {
    CFRelease(mrLanguageOptionGroup);
  }

  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoLanguageOptionGroup;
  [(MPNowPlayingInfoLanguageOptionGroup *)&v4 dealloc];
}

- (MPNowPlayingInfoLanguageOptionGroup)initWithMRLanguageOptionGroup:(void *)group
{
  v7.receiver = self;
  v7.super_class = MPNowPlayingInfoLanguageOptionGroup;
  v4 = [(MPNowPlayingInfoLanguageOptionGroup *)&v7 init];
  v5 = v4;
  if (group && v4)
  {
    v4->_mrLanguageOptionGroup = CFRetain(group);
  }

  return v5;
}

- (MPNowPlayingInfoLanguageOptionGroup)initWithLanguageOptions:(NSArray *)languageOptions defaultLanguageOption:(MPNowPlayingInfoLanguageOption *)defaultLanguageOption allowEmptySelection:(BOOL)allowEmptySelection
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = languageOptions;
  v8 = defaultLanguageOption;
  v23.receiver = self;
  v23.super_class = MPNowPlayingInfoLanguageOptionGroup;
  v9 = [(MPNowPlayingInfoLanguageOptionGroup *)&v23 init];
  if (v9)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = [(NSArray *)v7 count];
    Mutable = CFArrayCreateMutable(v10, v11, MEMORY[0x1E695E9C0]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v7;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          CFArrayAppendValue(Mutable, [*(*(&v19 + 1) + 8 * v17++) mrLanguageOption]);
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    if (v8)
    {
      [(MPNowPlayingInfoLanguageOption *)v8 mrLanguageOption];
    }

    v9->_mrLanguageOptionGroup = MRLanguageOptionGroupCreate();
    CFRelease(Mutable);
  }

  return v9;
}

@end