@interface NSObject(MusicKit_SoftLinking_MPNowPlayingInfoAudioFormat)
- (id)_musicKit_self_nowPlayingInfoAudioFormat;
- (unint64_t)musicKit_nowPlayingInfoAudioFormat_badging;
@end

@implementation NSObject(MusicKit_SoftLinking_MPNowPlayingInfoAudioFormat)

- (id)_musicKit_self_nowPlayingInfoAudioFormat
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPNowPlayingInfoAudioFormatClass_softClass;
  v10 = getMPNowPlayingInfoAudioFormatClass_softClass;
  if (!getMPNowPlayingInfoAudioFormatClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPNowPlayingInfoAudioFormatClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPNowPlayingInfoAudioFormatClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)musicKit_nowPlayingInfoAudioFormat_badging
{
  v1 = [a1 _musicKit_self_nowPlayingInfoAudioFormat];
  v2 = [v1 badging];

  if (v2 < 6)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end