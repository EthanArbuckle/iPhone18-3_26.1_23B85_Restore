@interface _INPBPlayMediaIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPlayMediaIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsParsecCategory:(id)category;
- (int)StringAsPlaybackQueueLocation:(id)location;
- (int)StringAsPlaybackRepeatMode:(id)mode;
- (unint64_t)hash;
- (void)addAlternativeResults:(id)results;
- (void)addAudioSearchResults:(id)results;
- (void)addBucket:(id)bucket;
- (void)addHashedRouteUIDs:(id)ds;
- (void)addMediaItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternativeResults:(id)results;
- (void)setAudioSearchResults:(id)results;
- (void)setBuckets:(id)buckets;
- (void)setHasPlayShuffled:(BOOL)shuffled;
- (void)setHasPlaybackQueueLocation:(BOOL)location;
- (void)setHasPlaybackRepeatMode:(BOOL)mode;
- (void)setHasPlaybackSpeed:(BOOL)speed;
- (void)setHasResumePlayback:(BOOL)playback;
- (void)setHashedRouteUIDs:(id)ds;
- (void)setMediaItems:(id)items;
- (void)setParsecCategory:(int)category;
- (void)setPlaybackQueueLocation:(int)location;
- (void)setPlaybackRepeatMode:(int)mode;
- (void)setProxiedBundleIdentifier:(id)identifier;
- (void)setRecoID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayMediaIntent

- (id)dictionaryRepresentation
{
  v102 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternativeResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v5 = self->_alternativeResults;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v93 objects:v101 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v94;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v94 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v93 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v93 objects:v101 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"alternativeResults"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v12 = self->_audioSearchResults;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v90;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v90 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v89 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v89 objects:v100 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"audioSearchResults"];
  }

  audiobookAuthor = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  dictionaryRepresentation3 = [audiobookAuthor dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"audiobookAuthor"];

  audiobookTitle = [(_INPBPlayMediaIntent *)self audiobookTitle];
  dictionaryRepresentation4 = [audiobookTitle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"audiobookTitle"];

  if ([(NSArray *)self->_buckets count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v23 = self->_buckets;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v86;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v86 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation5 = [*(*(&v85 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation5];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"bucket"];
  }

  expirationDate = [(_INPBPlayMediaIntent *)self expirationDate];
  dictionaryRepresentation6 = [expirationDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"expirationDate"];

  if ([(NSArray *)self->_hashedRouteUIDs count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v32 = self->_hashedRouteUIDs;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v82;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v82 != v35)
          {
            objc_enumerationMutation(v32);
          }

          dictionaryRepresentation7 = [*(*(&v81 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation7];
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v34);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"hashedRouteUIDs"];
  }

  intentMetadata = [(_INPBPlayMediaIntent *)self intentMetadata];
  dictionaryRepresentation8 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"intentMetadata"];

  mediaContainer = [(_INPBPlayMediaIntent *)self mediaContainer];
  dictionaryRepresentation9 = [mediaContainer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"mediaContainer"];

  if ([(NSArray *)self->_mediaItems count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v43 = self->_mediaItems;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v77 objects:v97 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v78;
      do
      {
        for (n = 0; n != v45; ++n)
        {
          if (*v78 != v46)
          {
            objc_enumerationMutation(v43);
          }

          dictionaryRepresentation10 = [*(*(&v77 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation10];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v77 objects:v97 count:16];
      }

      while (v45);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"mediaItems"];
  }

  mediaSearch = [(_INPBPlayMediaIntent *)self mediaSearch];
  dictionaryRepresentation11 = [mediaSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"mediaSearch"];

  mediaUserContext = [(_INPBPlayMediaIntent *)self mediaUserContext];
  dictionaryRepresentation12 = [mediaUserContext dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"mediaUserContext"];

  musicArtistName = [(_INPBPlayMediaIntent *)self musicArtistName];
  dictionaryRepresentation13 = [musicArtistName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"musicArtistName"];

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    parsecCategory = [(_INPBPlayMediaIntent *)self parsecCategory];
    if (parsecCategory >= 9)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", parsecCategory];
    }

    else
    {
      v56 = off_1E7282250[parsecCategory];
    }

    [dictionary setObject:v56 forKeyedSubscript:@"parsecCategory"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPlayMediaIntent playShuffled](self, "playShuffled")}];
    [dictionary setObject:v57 forKeyedSubscript:@"playShuffled"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    playbackQueueLocation = [(_INPBPlayMediaIntent *)self playbackQueueLocation];
    if (playbackQueueLocation >= 4)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playbackQueueLocation];
    }

    else
    {
      v59 = off_1E7282298[playbackQueueLocation];
    }

    [dictionary setObject:v59 forKeyedSubscript:@"playbackQueueLocation"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    playbackRepeatMode = [(_INPBPlayMediaIntent *)self playbackRepeatMode];
    if (playbackRepeatMode >= 3)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playbackRepeatMode];
    }

    else
    {
      v61 = off_1E72822B8[playbackRepeatMode];
    }

    [dictionary setObject:v61 forKeyedSubscript:@"playbackRepeatMode"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    v62 = MEMORY[0x1E696AD98];
    [(_INPBPlayMediaIntent *)self playbackSpeed];
    v63 = [v62 numberWithDouble:?];
    [dictionary setObject:v63 forKeyedSubscript:@"playbackSpeed"];
  }

  playlistTitle = [(_INPBPlayMediaIntent *)self playlistTitle];
  dictionaryRepresentation14 = [playlistTitle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"playlistTitle"];

  privatePlayMediaIntentData = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  dictionaryRepresentation15 = [privatePlayMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"privatePlayMediaIntentData"];

  if (self->_proxiedBundleIdentifier)
  {
    proxiedBundleIdentifier = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
    v69 = [proxiedBundleIdentifier copy];
    [dictionary setObject:v69 forKeyedSubscript:@"proxiedBundleIdentifier"];
  }

  if (self->_recoID)
  {
    recoID = [(_INPBPlayMediaIntent *)self recoID];
    v71 = [recoID copy];
    [dictionary setObject:v71 forKeyedSubscript:@"recoID"];
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPlayMediaIntent resumePlayback](self, "resumePlayback")}];
    [dictionary setObject:v72 forKeyedSubscript:@"resumePlayback"];
  }

  showTitle = [(_INPBPlayMediaIntent *)self showTitle];
  dictionaryRepresentation16 = [showTitle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"showTitle"];

  v75 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v32 = [(NSArray *)self->_alternativeResults hash];
  v31 = [(NSArray *)self->_audioSearchResults hash];
  v30 = [(_INPBString *)self->_audiobookAuthor hash];
  v29 = [(_INPBString *)self->_audiobookTitle hash];
  v28 = [(NSArray *)self->_buckets hash];
  v27 = [(_INPBTimestamp *)self->_expirationDate hash];
  v26 = [(NSArray *)self->_hashedRouteUIDs hash];
  v25 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v24 = [(_INPBMediaItemValue *)self->_mediaContainer hash];
  v23 = [(NSArray *)self->_mediaItems hash];
  v22 = [(_INPBMediaSearch *)self->_mediaSearch hash];
  v21 = [(_INPBString *)self->_mediaUserContext hash];
  v20 = [(_INPBString *)self->_musicArtistName hash];
  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    hasPlayShuffled = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  }

  else
  {
    hasPlayShuffled = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  }

  if (hasPlayShuffled)
  {
    v4 = 2654435761 * self->_playShuffled;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    v5 = 2654435761 * self->_playbackQueueLocation;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    v6 = 2654435761 * self->_playbackRepeatMode;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    playbackSpeed = self->_playbackSpeed;
    if (playbackSpeed < 0.0)
    {
      playbackSpeed = -playbackSpeed;
    }

    *v7.i64 = floor(playbackSpeed + 0.5);
    v10 = (playbackSpeed - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v8, v7).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_INPBString *)self->_playlistTitle hash];
  v14 = [(_INPBPrivatePlayMediaIntentData *)self->_privatePlayMediaIntentData hash];
  v15 = [(NSString *)self->_proxiedBundleIdentifier hash];
  v16 = [(NSString *)self->_recoID hash];
  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    v17 = 2654435761 * self->_resumePlayback;
  }

  else
  {
    v17 = 0;
  }

  return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(_INPBString *)self->_showTitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_116;
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self alternativeResults];
  alternativeResults2 = [equalCopy alternativeResults];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  alternativeResults3 = [(_INPBPlayMediaIntent *)self alternativeResults];
  if (alternativeResults3)
  {
    v8 = alternativeResults3;
    alternativeResults4 = [(_INPBPlayMediaIntent *)self alternativeResults];
    alternativeResults5 = [equalCopy alternativeResults];
    v11 = [alternativeResults4 isEqual:alternativeResults5];

    if (!v11)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self audioSearchResults];
  alternativeResults2 = [equalCopy audioSearchResults];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  audioSearchResults = [(_INPBPlayMediaIntent *)self audioSearchResults];
  if (audioSearchResults)
  {
    v13 = audioSearchResults;
    audioSearchResults2 = [(_INPBPlayMediaIntent *)self audioSearchResults];
    audioSearchResults3 = [equalCopy audioSearchResults];
    v16 = [audioSearchResults2 isEqual:audioSearchResults3];

    if (!v16)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  alternativeResults2 = [equalCopy audiobookAuthor];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  audiobookAuthor = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  if (audiobookAuthor)
  {
    v18 = audiobookAuthor;
    audiobookAuthor2 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
    audiobookAuthor3 = [equalCopy audiobookAuthor];
    v21 = [audiobookAuthor2 isEqual:audiobookAuthor3];

    if (!v21)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self audiobookTitle];
  alternativeResults2 = [equalCopy audiobookTitle];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  audiobookTitle = [(_INPBPlayMediaIntent *)self audiobookTitle];
  if (audiobookTitle)
  {
    v23 = audiobookTitle;
    audiobookTitle2 = [(_INPBPlayMediaIntent *)self audiobookTitle];
    audiobookTitle3 = [equalCopy audiobookTitle];
    v26 = [audiobookTitle2 isEqual:audiobookTitle3];

    if (!v26)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self buckets];
  alternativeResults2 = [equalCopy buckets];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  buckets = [(_INPBPlayMediaIntent *)self buckets];
  if (buckets)
  {
    v28 = buckets;
    buckets2 = [(_INPBPlayMediaIntent *)self buckets];
    buckets3 = [equalCopy buckets];
    v31 = [buckets2 isEqual:buckets3];

    if (!v31)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self expirationDate];
  alternativeResults2 = [equalCopy expirationDate];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  expirationDate = [(_INPBPlayMediaIntent *)self expirationDate];
  if (expirationDate)
  {
    v33 = expirationDate;
    expirationDate2 = [(_INPBPlayMediaIntent *)self expirationDate];
    expirationDate3 = [equalCopy expirationDate];
    v36 = [expirationDate2 isEqual:expirationDate3];

    if (!v36)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
  alternativeResults2 = [equalCopy hashedRouteUIDs];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  hashedRouteUIDs = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
  if (hashedRouteUIDs)
  {
    v38 = hashedRouteUIDs;
    hashedRouteUIDs2 = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
    hashedRouteUIDs3 = [equalCopy hashedRouteUIDs];
    v41 = [hashedRouteUIDs2 isEqual:hashedRouteUIDs3];

    if (!v41)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self intentMetadata];
  alternativeResults2 = [equalCopy intentMetadata];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  intentMetadata = [(_INPBPlayMediaIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v43 = intentMetadata;
    intentMetadata2 = [(_INPBPlayMediaIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v46 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v46)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self mediaContainer];
  alternativeResults2 = [equalCopy mediaContainer];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  mediaContainer = [(_INPBPlayMediaIntent *)self mediaContainer];
  if (mediaContainer)
  {
    v48 = mediaContainer;
    mediaContainer2 = [(_INPBPlayMediaIntent *)self mediaContainer];
    mediaContainer3 = [equalCopy mediaContainer];
    v51 = [mediaContainer2 isEqual:mediaContainer3];

    if (!v51)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self mediaItems];
  alternativeResults2 = [equalCopy mediaItems];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  mediaItems = [(_INPBPlayMediaIntent *)self mediaItems];
  if (mediaItems)
  {
    v53 = mediaItems;
    mediaItems2 = [(_INPBPlayMediaIntent *)self mediaItems];
    mediaItems3 = [equalCopy mediaItems];
    v56 = [mediaItems2 isEqual:mediaItems3];

    if (!v56)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self mediaSearch];
  alternativeResults2 = [equalCopy mediaSearch];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  mediaSearch = [(_INPBPlayMediaIntent *)self mediaSearch];
  if (mediaSearch)
  {
    v58 = mediaSearch;
    mediaSearch2 = [(_INPBPlayMediaIntent *)self mediaSearch];
    mediaSearch3 = [equalCopy mediaSearch];
    v61 = [mediaSearch2 isEqual:mediaSearch3];

    if (!v61)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self mediaUserContext];
  alternativeResults2 = [equalCopy mediaUserContext];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  mediaUserContext = [(_INPBPlayMediaIntent *)self mediaUserContext];
  if (mediaUserContext)
  {
    v63 = mediaUserContext;
    mediaUserContext2 = [(_INPBPlayMediaIntent *)self mediaUserContext];
    mediaUserContext3 = [equalCopy mediaUserContext];
    v66 = [mediaUserContext2 isEqual:mediaUserContext3];

    if (!v66)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self musicArtistName];
  alternativeResults2 = [equalCopy musicArtistName];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  musicArtistName = [(_INPBPlayMediaIntent *)self musicArtistName];
  if (musicArtistName)
  {
    v68 = musicArtistName;
    musicArtistName2 = [(_INPBPlayMediaIntent *)self musicArtistName];
    musicArtistName3 = [equalCopy musicArtistName];
    v71 = [musicArtistName2 isEqual:musicArtistName3];

    if (!v71)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  hasParsecCategory = [(_INPBPlayMediaIntent *)self hasParsecCategory];
  if (hasParsecCategory != [equalCopy hasParsecCategory])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    if ([equalCopy hasParsecCategory])
    {
      parsecCategory = self->_parsecCategory;
      if (parsecCategory != [equalCopy parsecCategory])
      {
        goto LABEL_116;
      }
    }
  }

  hasPlayShuffled = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  if (hasPlayShuffled != [equalCopy hasPlayShuffled])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    if ([equalCopy hasPlayShuffled])
    {
      playShuffled = self->_playShuffled;
      if (playShuffled != [equalCopy playShuffled])
      {
        goto LABEL_116;
      }
    }
  }

  hasPlaybackQueueLocation = [(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation];
  if (hasPlaybackQueueLocation != [equalCopy hasPlaybackQueueLocation])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    if ([equalCopy hasPlaybackQueueLocation])
    {
      playbackQueueLocation = self->_playbackQueueLocation;
      if (playbackQueueLocation != [equalCopy playbackQueueLocation])
      {
        goto LABEL_116;
      }
    }
  }

  hasPlaybackRepeatMode = [(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode];
  if (hasPlaybackRepeatMode != [equalCopy hasPlaybackRepeatMode])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    if ([equalCopy hasPlaybackRepeatMode])
    {
      playbackRepeatMode = self->_playbackRepeatMode;
      if (playbackRepeatMode != [equalCopy playbackRepeatMode])
      {
        goto LABEL_116;
      }
    }
  }

  hasPlaybackSpeed = [(_INPBPlayMediaIntent *)self hasPlaybackSpeed];
  if (hasPlaybackSpeed != [equalCopy hasPlaybackSpeed])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    if ([equalCopy hasPlaybackSpeed])
    {
      playbackSpeed = self->_playbackSpeed;
      [equalCopy playbackSpeed];
      if (playbackSpeed != v82)
      {
        goto LABEL_116;
      }
    }
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self playlistTitle];
  alternativeResults2 = [equalCopy playlistTitle];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  playlistTitle = [(_INPBPlayMediaIntent *)self playlistTitle];
  if (playlistTitle)
  {
    v84 = playlistTitle;
    playlistTitle2 = [(_INPBPlayMediaIntent *)self playlistTitle];
    playlistTitle3 = [equalCopy playlistTitle];
    v87 = [playlistTitle2 isEqual:playlistTitle3];

    if (!v87)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  alternativeResults2 = [equalCopy privatePlayMediaIntentData];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  privatePlayMediaIntentData = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  if (privatePlayMediaIntentData)
  {
    v89 = privatePlayMediaIntentData;
    privatePlayMediaIntentData2 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
    privatePlayMediaIntentData3 = [equalCopy privatePlayMediaIntentData];
    v92 = [privatePlayMediaIntentData2 isEqual:privatePlayMediaIntentData3];

    if (!v92)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
  alternativeResults2 = [equalCopy proxiedBundleIdentifier];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  proxiedBundleIdentifier = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
  if (proxiedBundleIdentifier)
  {
    v94 = proxiedBundleIdentifier;
    proxiedBundleIdentifier2 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
    proxiedBundleIdentifier3 = [equalCopy proxiedBundleIdentifier];
    v97 = [proxiedBundleIdentifier2 isEqual:proxiedBundleIdentifier3];

    if (!v97)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self recoID];
  alternativeResults2 = [equalCopy recoID];
  if ((alternativeResults != 0) == (alternativeResults2 == 0))
  {
    goto LABEL_115;
  }

  recoID = [(_INPBPlayMediaIntent *)self recoID];
  if (recoID)
  {
    v99 = recoID;
    recoID2 = [(_INPBPlayMediaIntent *)self recoID];
    recoID3 = [equalCopy recoID];
    v102 = [recoID2 isEqual:recoID3];

    if (!v102)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  hasResumePlayback = [(_INPBPlayMediaIntent *)self hasResumePlayback];
  if (hasResumePlayback != [equalCopy hasResumePlayback])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    if ([equalCopy hasResumePlayback])
    {
      resumePlayback = self->_resumePlayback;
      if (resumePlayback != [equalCopy resumePlayback])
      {
        goto LABEL_116;
      }
    }
  }

  alternativeResults = [(_INPBPlayMediaIntent *)self showTitle];
  alternativeResults2 = [equalCopy showTitle];
  if ((alternativeResults != 0) != (alternativeResults2 == 0))
  {
    showTitle = [(_INPBPlayMediaIntent *)self showTitle];
    if (!showTitle)
    {

LABEL_119:
      v110 = 1;
      goto LABEL_117;
    }

    v106 = showTitle;
    showTitle2 = [(_INPBPlayMediaIntent *)self showTitle];
    showTitle3 = [equalCopy showTitle];
    v109 = [showTitle2 isEqual:showTitle3];

    if (v109)
    {
      goto LABEL_119;
    }
  }

  else
  {
LABEL_115:
  }

LABEL_116:
  v110 = 0;
LABEL_117:

  return v110;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlayMediaIntent allocWithZone:](_INPBPlayMediaIntent init];
  v6 = [(NSArray *)self->_alternativeResults copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setAlternativeResults:v6];

  v7 = [(NSArray *)self->_audioSearchResults copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setAudioSearchResults:v7];

  v8 = [(_INPBString *)self->_audiobookAuthor copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setAudiobookAuthor:v8];

  v9 = [(_INPBString *)self->_audiobookTitle copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setAudiobookTitle:v9];

  v10 = [(NSArray *)self->_buckets copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setBuckets:v10];

  v11 = [(_INPBTimestamp *)self->_expirationDate copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setExpirationDate:v11];

  v12 = [(NSArray *)self->_hashedRouteUIDs copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setHashedRouteUIDs:v12];

  v13 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setIntentMetadata:v13];

  v14 = [(_INPBMediaItemValue *)self->_mediaContainer copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setMediaContainer:v14];

  v15 = [(NSArray *)self->_mediaItems copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setMediaItems:v15];

  v16 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setMediaSearch:v16];

  v17 = [(_INPBString *)self->_mediaUserContext copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setMediaUserContext:v17];

  v18 = [(_INPBString *)self->_musicArtistName copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setMusicArtistName:v18];

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    [(_INPBPlayMediaIntent *)v5 setParsecCategory:[(_INPBPlayMediaIntent *)self parsecCategory]];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    [(_INPBPlayMediaIntent *)v5 setPlayShuffled:[(_INPBPlayMediaIntent *)self playShuffled]];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    [(_INPBPlayMediaIntent *)v5 setPlaybackQueueLocation:[(_INPBPlayMediaIntent *)self playbackQueueLocation]];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    [(_INPBPlayMediaIntent *)v5 setPlaybackRepeatMode:[(_INPBPlayMediaIntent *)self playbackRepeatMode]];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    [(_INPBPlayMediaIntent *)self playbackSpeed];
    [(_INPBPlayMediaIntent *)v5 setPlaybackSpeed:?];
  }

  v19 = [(_INPBString *)self->_playlistTitle copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setPlaylistTitle:v19];

  v20 = [(_INPBPrivatePlayMediaIntentData *)self->_privatePlayMediaIntentData copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setPrivatePlayMediaIntentData:v20];

  v21 = [(NSString *)self->_proxiedBundleIdentifier copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setProxiedBundleIdentifier:v21];

  v22 = [(NSString *)self->_recoID copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setRecoID:v22];

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    [(_INPBPlayMediaIntent *)v5 setResumePlayback:[(_INPBPlayMediaIntent *)self resumePlayback]];
  }

  v23 = [(_INPBString *)self->_showTitle copyWithZone:zone];
  [(_INPBPlayMediaIntent *)v5 setShowTitle:v23];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayMediaIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayMediaIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v93 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = self->_alternativeResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    do
    {
      v9 = 0;
      do
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v84 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v7);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = self->_audioSearchResults;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v81;
    do
    {
      v15 = 0;
      do
      {
        if (*v81 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v80 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v13);
  }

  audiobookAuthor = [(_INPBPlayMediaIntent *)self audiobookAuthor];

  if (audiobookAuthor)
  {
    audiobookAuthor2 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
    PBDataWriterWriteSubmessage();
  }

  audiobookTitle = [(_INPBPlayMediaIntent *)self audiobookTitle];

  if (audiobookTitle)
  {
    audiobookTitle2 = [(_INPBPlayMediaIntent *)self audiobookTitle];
    PBDataWriterWriteSubmessage();
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v21 = self->_buckets;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v77;
    do
    {
      v25 = 0;
      do
      {
        if (*v77 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v76 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v23);
  }

  expirationDate = [(_INPBPlayMediaIntent *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(_INPBPlayMediaIntent *)self expirationDate];
    PBDataWriterWriteSubmessage();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v29 = self->_hashedRouteUIDs;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v73;
    do
    {
      v33 = 0;
      do
      {
        if (*v73 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v72 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v31);
  }

  intentMetadata = [(_INPBPlayMediaIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPlayMediaIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  mediaContainer = [(_INPBPlayMediaIntent *)self mediaContainer];

  if (mediaContainer)
  {
    mediaContainer2 = [(_INPBPlayMediaIntent *)self mediaContainer];
    PBDataWriterWriteSubmessage();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = self->_mediaItems;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v68 objects:v88 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v69;
    do
    {
      v43 = 0;
      do
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v68 + 1) + 8 * v43);
        PBDataWriterWriteSubmessage();
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v68 objects:v88 count:16];
    }

    while (v41);
  }

  mediaSearch = [(_INPBPlayMediaIntent *)self mediaSearch];

  if (mediaSearch)
  {
    mediaSearch2 = [(_INPBPlayMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  mediaUserContext = [(_INPBPlayMediaIntent *)self mediaUserContext];

  if (mediaUserContext)
  {
    mediaUserContext2 = [(_INPBPlayMediaIntent *)self mediaUserContext];
    PBDataWriterWriteSubmessage();
  }

  musicArtistName = [(_INPBPlayMediaIntent *)self musicArtistName];

  if (musicArtistName)
  {
    musicArtistName2 = [(_INPBPlayMediaIntent *)self musicArtistName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    parsecCategory = self->_parsecCategory;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    playShuffled = self->_playShuffled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    playbackQueueLocation = self->_playbackQueueLocation;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    playbackRepeatMode = self->_playbackRepeatMode;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    playbackSpeed = self->_playbackSpeed;
    PBDataWriterWriteDoubleField();
  }

  playlistTitle = [(_INPBPlayMediaIntent *)self playlistTitle];

  if (playlistTitle)
  {
    playlistTitle2 = [(_INPBPlayMediaIntent *)self playlistTitle];
    PBDataWriterWriteSubmessage();
  }

  privatePlayMediaIntentData = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];

  if (privatePlayMediaIntentData)
  {
    privatePlayMediaIntentData2 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  proxiedBundleIdentifier = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];

  if (proxiedBundleIdentifier)
  {
    proxiedBundleIdentifier = self->_proxiedBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  recoID = [(_INPBPlayMediaIntent *)self recoID];

  if (recoID)
  {
    recoID = self->_recoID;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    resumePlayback = self->_resumePlayback;
    PBDataWriterWriteBOOLField();
  }

  showTitle = [(_INPBPlayMediaIntent *)self showTitle];

  if (showTitle)
  {
    showTitle2 = [(_INPBPlayMediaIntent *)self showTitle];
    PBDataWriterWriteSubmessage();
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (void)setHasResumePlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setRecoID:(id)d
{
  v4 = [d copy];
  recoID = self->_recoID;
  self->_recoID = v4;

  MEMORY[0x1EEE66BB8](v4, recoID);
}

- (void)setProxiedBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  proxiedBundleIdentifier = self->_proxiedBundleIdentifier;
  self->_proxiedBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, proxiedBundleIdentifier);
}

- (void)setHasPlaybackSpeed:(BOOL)speed
{
  if (speed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsPlaybackRepeatMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"ALL"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"ONE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaybackRepeatMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setPlaybackRepeatMode:(int)mode
{
  has = self->_has;
  if (mode == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_playbackRepeatMode = mode;
  }
}

- (int)StringAsPlaybackQueueLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy isEqualToString:@"UNKNOWN_PLAYBACK_QUEUE_LOCATION"])
  {
    v4 = 0;
  }

  else if ([locationCopy isEqualToString:@"NOW"])
  {
    v4 = 1;
  }

  else if ([locationCopy isEqualToString:@"NEXT"])
  {
    v4 = 2;
  }

  else if ([locationCopy isEqualToString:@"LATER"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaybackQueueLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setPlaybackQueueLocation:(int)location
{
  has = self->_has;
  if (location == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_playbackQueueLocation = location;
  }
}

- (void)setHasPlayShuffled:(BOOL)shuffled
{
  if (shuffled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsParsecCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([categoryCopy isEqualToString:@"MOVIE"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"WEB_VIDEO"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"MUSIC"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"PODCAST"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"APP"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"BOOK"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"OTHER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setParsecCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_parsecCategory = category;
  }
}

- (void)addMediaItems:(id)items
{
  itemsCopy = items;
  mediaItems = self->_mediaItems;
  v8 = itemsCopy;
  if (!mediaItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaItems;
    self->_mediaItems = array;

    itemsCopy = v8;
    mediaItems = self->_mediaItems;
  }

  [(NSArray *)mediaItems addObject:itemsCopy];
}

- (void)setMediaItems:(id)items
{
  v4 = [items mutableCopy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaItems);
}

- (void)addHashedRouteUIDs:(id)ds
{
  dsCopy = ds;
  hashedRouteUIDs = self->_hashedRouteUIDs;
  v8 = dsCopy;
  if (!hashedRouteUIDs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_hashedRouteUIDs;
    self->_hashedRouteUIDs = array;

    dsCopy = v8;
    hashedRouteUIDs = self->_hashedRouteUIDs;
  }

  [(NSArray *)hashedRouteUIDs addObject:dsCopy];
}

- (void)setHashedRouteUIDs:(id)ds
{
  v4 = [ds mutableCopy];
  hashedRouteUIDs = self->_hashedRouteUIDs;
  self->_hashedRouteUIDs = v4;

  MEMORY[0x1EEE66BB8](v4, hashedRouteUIDs);
}

- (void)addBucket:(id)bucket
{
  bucketCopy = bucket;
  buckets = self->_buckets;
  v8 = bucketCopy;
  if (!buckets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buckets;
    self->_buckets = array;

    bucketCopy = v8;
    buckets = self->_buckets;
  }

  [(NSArray *)buckets addObject:bucketCopy];
}

- (void)setBuckets:(id)buckets
{
  v4 = [buckets mutableCopy];
  buckets = self->_buckets;
  self->_buckets = v4;

  MEMORY[0x1EEE66BB8](v4, buckets);
}

- (void)addAudioSearchResults:(id)results
{
  resultsCopy = results;
  audioSearchResults = self->_audioSearchResults;
  v8 = resultsCopy;
  if (!audioSearchResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = array;

    resultsCopy = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:resultsCopy];
}

- (void)setAudioSearchResults:(id)results
{
  v4 = [results mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

- (void)addAlternativeResults:(id)results
{
  resultsCopy = results;
  alternativeResults = self->_alternativeResults;
  v8 = resultsCopy;
  if (!alternativeResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternativeResults;
    self->_alternativeResults = array;

    resultsCopy = v8;
    alternativeResults = self->_alternativeResults;
  }

  [(NSArray *)alternativeResults addObject:resultsCopy];
}

- (void)setAlternativeResults:(id)results
{
  v4 = [results mutableCopy];
  alternativeResults = self->_alternativeResults;
  self->_alternativeResults = v4;

  MEMORY[0x1EEE66BB8](v4, alternativeResults);
}

@end