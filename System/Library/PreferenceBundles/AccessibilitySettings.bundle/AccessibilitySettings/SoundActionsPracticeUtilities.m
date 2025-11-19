@interface SoundActionsPracticeUtilities
+ (id)sharedInstance;
- (id)_tipForUsage:(int64_t)a3;
- (id)allSoundsForAssetURL:(id)a3;
- (id)dataForSoundUsage:(int64_t)a3 assetURL:(id)a4;
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

- (id)dataForSoundUsage:(int64_t)a3 assetURL:(id)a4
{
  if ((a3 - 1) > 0xD)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_256970[a3 - 1];
  }

  v7 = a4;
  v8 = [(__CFString *)v6 uppercaseString];
  v9 = [@"SOUND_ACTION_" stringByAppendingString:v8];

  v10 = [v7 URLByAppendingPathComponent:v6];

  v11 = [v10 URLByAppendingPathExtension:@"wav"];

  v12 = [SoundActionData alloc];
  v13 = settingsLocString(v9, @"Accessibility");
  v14 = [(SoundActionsPracticeUtilities *)self _tipForUsage:a3];
  v15 = [(SoundActionData *)v12 initWithName:v13 tip:v14 url:v11 usage:a3];

  return v15;
}

- (id)allSoundsForAssetURL:(id)a3
{
  v4 = a3;
  v22 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:3 assetURL:v4];
  v21 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:4 assetURL:v4];
  v19 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:6 assetURL:v4];
  v16 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:7 assetURL:v4];
  v18 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:8 assetURL:v4];
  v15 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:14 assetURL:v4];
  v17 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:1 assetURL:v4];
  v14 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:2 assetURL:v4];
  v5 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:5 assetURL:v4];
  v6 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:9 assetURL:v4];
  v7 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:10 assetURL:v4];
  v8 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:11 assetURL:v4];
  v9 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:12 assetURL:v4];
  v10 = [(SoundActionsPracticeUtilities *)self dataForSoundUsage:13 assetURL:v4];

  v11 = v5;
  v12 = [NSArray axArrayByIgnoringNilElementsWithCount:14, v22, v21, v19, v16, v18, v15, v17, v14, v5, v6, v7, v8, v9, v10];
  v20 = [v12 copy];

  return v20;
}

- (id)_tipForUsage:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    v3 = @"SOUND_ACTION_LEARN_PAGE_DESC_";
  }

  else
  {
    v3 = [@"SOUND_ACTION_LEARN_PAGE_DESC_" stringByAppendingString:off_2569E0[a3 - 1]];
  }

  v4 = settingsLocString(v3, @"Accessibility");

  return v4;
}

@end