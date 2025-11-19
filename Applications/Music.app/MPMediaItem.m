@interface MPMediaItem
- (id)SAMPMediaItemRepresentation;
@end

@implementation MPMediaItem

- (id)SAMPMediaItemRepresentation
{
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyMediaType];
  v4 = [v3 integerValue];

  if ((v4 & 0x402) != 0)
  {
    v5 = SAMPPodcast;
  }

  else
  {
    if ((v4 & 4) == 0)
    {
      v6 = objc_alloc_init(SAMPSong);
      v7 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyGenre];
      [v6 setGenre:v7];

      goto LABEL_7;
    }

    v5 = SAMPAudiobook;
  }

  v6 = objc_alloc_init(v5);
LABEL_7:
  v8 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyArtist];
  [v6 setArtist:v8];

  v9 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertySortArtist];
  [v6 setSortArtist:v9];

  v10 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyAlbumTitle];
  [v6 setAlbum:v10];

  v11 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertySortAlbumTitle];
  [v6 setSortAlbum:v11];

  v12 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyTitle];
  [v6 setTitle:v12];

  v13 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertySortTitle];
  [v6 setSortTitle:v13];

  v14 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPersistentID];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"x-sampmeditem://device/%lld", [v14 longLongValue]);
  v16 = [NSURL URLWithString:v15];
  [v6 setIdentifier:v16];

  if ((v4 & 0x140E) != 0)
  {
    v17 = +[NSTimeZone defaultTimeZone];
    v18 = [v17 name];

    v19 = objc_alloc_init(SACalendar);
    v20 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyLastPlayedDate];
    [v19 setDate:v20];

    [v19 setTimeZoneId:v18];
    v21 = objc_alloc_init(SAMPPlaybackInfo);
    [v21 setLastPlayedDate:v19];
    v22 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyBookmarkTime];
    [v22 doubleValue];
    [v21 setPlaybackPositionMillis:(v23 * 1000.0)];

    v24 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyRememberBookmarkTime];
    [v21 setRememberPlaybackPosition:{objc_msgSend(v24, "BOOLValue")}];

    v25 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPlayCount];
    [v21 setPlays:{objc_msgSend(v25, "unsignedIntegerValue")}];

    [v6 setPlaybackInfo:v21];
    v26 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyDateAdded];
    if (v26)
    {
      v27 = objc_alloc_init(SACalendar);
      [v27 setDate:v26];
      [v27 setTimeZoneId:v18];
      [v6 setDateAdded:v27];
    }

    v28 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreDatePurchased];
    if (v28)
    {
      v29 = objc_alloc_init(SACalendar);
      [v29 setDate:v28];
      [v29 setTimeZoneId:v18];
      [v6 setDatePurchased:v29];
    }

    v30 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyReleaseDate];
    if (v30)
    {
      v31 = objc_alloc_init(SACalendar);
      [v31 setDate:v30];
      [v31 setTimeZoneId:v18];
      v32 = objc_alloc_init(SAMPReleaseInfo);
      [v32 setReleaseDate:v31];
      v33 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyYear];
      [v32 setReleaseYear:{objc_msgSend(v33, "unsignedIntegerValue")}];

      [v6 setReleaseInfo:v32];
    }
  }

  return v6;
}

@end