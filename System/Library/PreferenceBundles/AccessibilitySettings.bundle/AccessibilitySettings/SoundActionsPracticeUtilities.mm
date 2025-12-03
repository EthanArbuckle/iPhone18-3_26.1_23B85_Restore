@interface SoundActionsPracticeUtilities
+ (id)sharedInstance;
- (id)_tipForUsage:(int64_t)usage;
- (id)allSoundsForAssetURL:(id)l;
- (id)dataForSoundUsage:(int64_t)usage assetURL:(id)l;
@end

@implementation SoundActionsPracticeUtilities

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SoundActionsPracticeUtilities sharedInstance];
  }

  v3 = sharedInstance___SharedUtils;

  return v3;
}

void __47__SoundActionsPracticeUtilities_sharedInstance__block_invoke(id a1)
{
  sharedInstance___SharedUtils = objc_alloc_init(SoundActionsPracticeUtilities);

  _objc_release_x1();
}

- (id)dataForSoundUsage:(int64_t)usage assetURL:(id)l
{
  if ((usage - 1) > 0xD)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_256970[usage - 1];
  }

  lCopy = l;
  uppercaseString = [(__CFString *)v6 uppercaseString];
  v9 = [@"SOUND_ACTION_" stringByAppendingString:uppercaseString];

  v10 = [lCopy URLByAppendingPathComponent:v6];

  v11 = [v10 URLByAppendingPathExtension:@"wav"];

  v12 = [SoundActionData alloc];
  v13 = settingsLocString(v9, @"Accessibility");
  v14 = [(SoundActionsPracticeUtilities *)self _tipForUsage:usage];
  v15 = [(SoundActionData *)v12 initWithName:v13 tip:v14 url:v11 usage:usage];

  return v15;
}

- (id)allSoundsForAssetURL:(id)l
{
  lCopy = l;
  v22 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:3 assetURL:lCopy];
  v21 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:4 assetURL:lCopy];
  v19 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:6 assetURL:lCopy];
  v16 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:7 assetURL:lCopy];
  v18 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:8 assetURL:lCopy];
  v15 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:14 assetURL:lCopy];
  v17 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:1 assetURL:lCopy];
  v14 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:2 assetURL:lCopy];
  v5 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:5 assetURL:lCopy];
  v6 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:9 assetURL:lCopy];
  v7 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:10 assetURL:lCopy];
  v8 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:11 assetURL:lCopy];
  v9 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:12 assetURL:lCopy];
  v10 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:13 assetURL:lCopy];

  v11 = v5;
  v12 = [NSArray axArrayByIgnoringNilElementsWithCount:14, v22, v21, v19, v16, v18, v15, v17, v14, v5, v6, v7, v8, v9, v10];
  v20 = [v12 copy];

  return v20;
}

- (id)_tipForUsage:(int64_t)usage
{
  if ((usage - 1) > 0xD)
  {
    v3 = @"SOUND_ACTION_LEARN_PAGE_DESC_";
  }

  else
  {
    v3 = [@"SOUND_ACTION_LEARN_PAGE_DESC_" stringByAppendingString:off_2569E0[usage - 1]];
  }

  v4 = settingsLocString(v3, @"Accessibility");

  return v4;
}

@end