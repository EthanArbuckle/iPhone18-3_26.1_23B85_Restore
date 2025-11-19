@interface ATXContextMediaSuggestionProducer
- (ATXContextMediaSuggestionProducer)initWithMediaRemoteContentItem:(id)a3 destDisplayName:(id)a4 expirationDate:(id)a5;
- (id)suggestionForArtistWithReason:(unint64_t)a3 score:(double)a4;
- (id)suggestionForTrackWithReason:(unint64_t)a3 score:(double)a4;
- (uint64_t)_localizedReason;
@end

@implementation ATXContextMediaSuggestionProducer

- (ATXContextMediaSuggestionProducer)initWithMediaRemoteContentItem:(id)a3 destDisplayName:(id)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = ATXContextMediaSuggestionProducer;
  v11 = [(ATXContextMediaSuggestionProducer *)&v23 init];
  if (v11)
  {
    v12 = [v8 metadata];
    v11->_mediaType = [v12 mediaType];
    v11->_mediaSubType = [v12 mediaSubType];
    v13 = [v12 title];
    trackName = v11->_trackName;
    v11->_trackName = v13;

    if ([v12 hasITunesStoreIdentifier])
    {
      v15 = [v12 iTunesStoreIdentifier];
    }

    else
    {
      v15 = 0;
    }

    v11->_trackAdamId = v15;
    v16 = [v12 trackArtistName];
    artistName = v11->_artistName;
    v11->_artistName = v16;

    if ([v12 hasITunesStoreArtistIdentifier])
    {
      v18 = [v12 iTunesStoreArtistIdentifier];
    }

    else
    {
      v18 = 0;
    }

    v11->_artistAdamId = v18;
    v19 = [v12 albumName];
    albumName = v11->_albumName;
    v11->_albumName = v19;

    if ([v12 hasITunesStoreAlbumIdentifier])
    {
      v21 = [v12 iTunesStoreAlbumIdentifier];
    }

    else
    {
      v21 = 0;
    }

    v11->_albumAdamId = v21;
    objc_storeStrong(&v11->_destDisplayName, a4);
    objc_storeStrong(&v11->_expirationDate, a5);
  }

  return v11;
}

- (id)suggestionForTrackWithReason:(unint64_t)a3 score:(double)a4
{
  trackName = self->_trackName;
  if (trackName && (trackAdamId = self->_trackAdamId) != 0 && self->_mediaType == 2 && ((mediaSubType = self->_mediaSubType, (mediaSubType - 3) >= 2) ? (v8 = mediaSubType == 1) : (v8 = 1), !v8))
  {
    if (mediaSubType == 2)
    {
      v13 = 9;
    }

    else
    {
      v13 = 2;
    }

    v14 = [(ATXContextMediaSuggestionProducer *)self _localizedReason];
    v9 = [ATXContextHeuristicSuggestionProducer mediaWithName:trackName type:v13 adamIdentifier:trackAdamId predictionReasons:a3 localizedReason:v14 score:self->_expirationDate expirationDate:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)suggestionForArtistWithReason:(unint64_t)a3 score:(double)a4
{
  artistName = self->_artistName;
  if (!artistName)
  {
    goto LABEL_9;
  }

  artistAdamId = self->_artistAdamId;
  if (!artistAdamId)
  {
    goto LABEL_9;
  }

  mediaType = self->_mediaType;
  if (mediaType != 1)
  {
    if (mediaType == 2 && self->_mediaSubType == 1)
    {
      goto LABEL_13;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  mediaSubType = self->_mediaSubType;
  if (mediaSubType != 1)
  {
    if (mediaSubType == 5)
    {
      v13 = 15;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_13:
  v13 = 6;
LABEL_15:
  v14 = [(ATXContextMediaSuggestionProducer *)self _localizedReason];
  v11 = [ATXContextHeuristicSuggestionProducer mediaWithName:artistName type:v13 adamIdentifier:artistAdamId predictionReasons:a3 localizedReason:v14 score:self->_expirationDate expirationDate:a4];

LABEL_10:

  return v11;
}

- (uint64_t)_localizedReason
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[10];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    if (v2)
    {
      v5 = [v3 localizedStringForKey:@"NOW_PLAYING_DEST" value:&stru_2850AD368 table:0];

      v1 = _PASValidatedFormat(v5, v6, v7, v8, v9, v10, v11, v12, v1[10]);
      v4 = v5;
    }

    else
    {
      v1 = [v3 localizedStringForKey:@"NOW_PLAYING_NO_DEST" value:&stru_2850AD368 table:0];
    }
  }

  return v1;
}

@end