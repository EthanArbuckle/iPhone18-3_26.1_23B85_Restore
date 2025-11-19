@interface SAMPMediaItem(SiriMediaRemoteHelpers)
+ (id)_af_mediaItemWithMRContentItem:()SiriMediaRemoteHelpers;
+ (id)_af_mediaItemWithMRContentItemRef:()SiriMediaRemoteHelpers;
@end

@implementation SAMPMediaItem(SiriMediaRemoteHelpers)

+ (id)_af_mediaItemWithMRContentItem:()SiriMediaRemoteHelpers
{
  if (a3)
  {
    v3 = [a3 metadata];
    v4 = objc_alloc_init(MEMORY[0x1E69C78D8]);
    v5 = objc_alloc_init(MEMORY[0x1E69C78F0]);
    [v3 duration];
    [v5 setDurationMillis:(v6 * 1000.0)];
    [v3 calculatedPlaybackPosition];
    if (v7 == 0.0)
    {
      [v3 elapsedTime];
    }

    [v5 setPlaybackPositionMillis:(v7 * 1000.0)];
    [v5 setPlays:{objc_msgSend(v3, "playCount")}];
    [v4 setPlaybackInfo:v5];
    v8 = [v3 title];
    [v4 setTitle:v8];

    v9 = [v3 albumName];
    [v4 setAlbum:v9];

    v10 = [v3 trackArtistName];
    if (![v10 length])
    {
      v11 = [v3 albumArtistName];

      v10 = v11;
    }

    [v4 setArtist:v10];
    v12 = [v3 releaseDate];
    v13 = [MEMORY[0x1E69C7900] _af_releaseInfoWithReleaseDate:v12];
    [v4 setReleaseInfo:v13];

    v14 = [v3 iTunesStoreIdentifier];
    if (v14 > 0 || (v14 = [v3 iTunesStoreSubscriptionIdentifier], v14 >= 1))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
      v16 = [v15 stringValue];
      v17 = _AFMediaIdURLFromHostAndIdentifier(@"store", v16);
      [v4 setIdentifier:v17];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_af_mediaItemWithMRContentItemRef:()SiriMediaRemoteHelpers
{
  if (a3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C78D8]);
    v4 = objc_alloc_init(MEMORY[0x1E69C78F0]);
    MRContentItemGetDuration();
    [v4 setDurationMillis:(v5 * 1000.0)];
    MRContentItemGetCalculatedPlaybackPosition();
    if (v6 == 0.0)
    {
      MRContentItemGetElapsedTime();
    }

    [v4 setPlaybackPositionMillis:(v6 * 1000.0)];
    [v4 setPlays:MRContentItemGetPlayCount()];
    [v3 setPlaybackInfo:v4];
    [v3 setTitle:MRContentItemGetTitle()];
    [v3 setAlbum:MRContentItemGetAlbumName()];
    v7 = MRContentItemGetTrackArtistName();
    if (![v7 length])
    {
      v8 = MRContentItemGetAlbumArtistName();

      v7 = v8;
    }

    [v3 setArtist:v7];
    v9 = MRContentItemGetReleaseDate();
    v10 = [MEMORY[0x1E69C7900] _af_releaseInfoWithReleaseDate:v9];
    [v3 setReleaseInfo:v10];

    ITunesStoreIdentifier = MRContentItemGetITunesStoreIdentifier();
    if (ITunesStoreIdentifier > 0 || (ITunesStoreIdentifier = MRContentItemGetITunesStoreSubscriptionIdentifier(), ITunesStoreIdentifier >= 1))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:ITunesStoreIdentifier];
      v13 = [v12 stringValue];
      v14 = _AFMediaIdURLFromHostAndIdentifier(@"store", v13);
      [v3 setIdentifier:v14];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end