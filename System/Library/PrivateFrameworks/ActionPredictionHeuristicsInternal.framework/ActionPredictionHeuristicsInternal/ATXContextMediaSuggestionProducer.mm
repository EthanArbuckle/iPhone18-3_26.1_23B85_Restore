@interface ATXContextMediaSuggestionProducer
- (ATXContextMediaSuggestionProducer)initWithMediaRemoteContentItem:(id)item destDisplayName:(id)name expirationDate:(id)date;
- (id)suggestionForArtistWithReason:(unint64_t)reason score:(double)score;
- (id)suggestionForTrackWithReason:(unint64_t)reason score:(double)score;
- (uint64_t)_localizedReason;
@end

@implementation ATXContextMediaSuggestionProducer

- (ATXContextMediaSuggestionProducer)initWithMediaRemoteContentItem:(id)item destDisplayName:(id)name expirationDate:(id)date
{
  itemCopy = item;
  nameCopy = name;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = ATXContextMediaSuggestionProducer;
  v11 = [(ATXContextMediaSuggestionProducer *)&v23 init];
  if (v11)
  {
    metadata = [itemCopy metadata];
    v11->_mediaType = [metadata mediaType];
    v11->_mediaSubType = [metadata mediaSubType];
    title = [metadata title];
    trackName = v11->_trackName;
    v11->_trackName = title;

    if ([metadata hasITunesStoreIdentifier])
    {
      iTunesStoreIdentifier = [metadata iTunesStoreIdentifier];
    }

    else
    {
      iTunesStoreIdentifier = 0;
    }

    v11->_trackAdamId = iTunesStoreIdentifier;
    trackArtistName = [metadata trackArtistName];
    artistName = v11->_artistName;
    v11->_artistName = trackArtistName;

    if ([metadata hasITunesStoreArtistIdentifier])
    {
      iTunesStoreArtistIdentifier = [metadata iTunesStoreArtistIdentifier];
    }

    else
    {
      iTunesStoreArtistIdentifier = 0;
    }

    v11->_artistAdamId = iTunesStoreArtistIdentifier;
    albumName = [metadata albumName];
    albumName = v11->_albumName;
    v11->_albumName = albumName;

    if ([metadata hasITunesStoreAlbumIdentifier])
    {
      iTunesStoreAlbumIdentifier = [metadata iTunesStoreAlbumIdentifier];
    }

    else
    {
      iTunesStoreAlbumIdentifier = 0;
    }

    v11->_albumAdamId = iTunesStoreAlbumIdentifier;
    objc_storeStrong(&v11->_destDisplayName, name);
    objc_storeStrong(&v11->_expirationDate, date);
  }

  return v11;
}

- (id)suggestionForTrackWithReason:(unint64_t)reason score:(double)score
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

    _localizedReason = [(ATXContextMediaSuggestionProducer *)self _localizedReason];
    v9 = [ATXContextHeuristicSuggestionProducer mediaWithName:trackName type:v13 adamIdentifier:trackAdamId predictionReasons:reason localizedReason:_localizedReason score:self->_expirationDate expirationDate:score];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)suggestionForArtistWithReason:(unint64_t)reason score:(double)score
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
  _localizedReason = [(ATXContextMediaSuggestionProducer *)self _localizedReason];
  v11 = [ATXContextHeuristicSuggestionProducer mediaWithName:artistName type:v13 adamIdentifier:artistAdamId predictionReasons:reason localizedReason:_localizedReason score:self->_expirationDate expirationDate:score];

LABEL_10:

  return v11;
}

- (uint64_t)_localizedReason
{
  selfCopy = self;
  if (self)
  {
    v2 = self[10];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    if (v2)
    {
      v5 = [v3 localizedStringForKey:@"NOW_PLAYING_DEST" value:&stru_2850AD368 table:0];

      selfCopy = _PASValidatedFormat(v5, v6, v7, v8, v9, v10, v11, v12, selfCopy[10]);
      v4 = v5;
    }

    else
    {
      selfCopy = [v3 localizedStringForKey:@"NOW_PLAYING_NO_DEST" value:&stru_2850AD368 table:0];
    }
  }

  return selfCopy;
}

@end