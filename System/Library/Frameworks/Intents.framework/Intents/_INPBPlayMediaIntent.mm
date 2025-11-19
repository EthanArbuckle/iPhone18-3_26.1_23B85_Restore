@interface _INPBPlayMediaIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPlayMediaIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsParsecCategory:(id)a3;
- (int)StringAsPlaybackQueueLocation:(id)a3;
- (int)StringAsPlaybackRepeatMode:(id)a3;
- (unint64_t)hash;
- (void)addAlternativeResults:(id)a3;
- (void)addAudioSearchResults:(id)a3;
- (void)addBucket:(id)a3;
- (void)addHashedRouteUIDs:(id)a3;
- (void)addMediaItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternativeResults:(id)a3;
- (void)setAudioSearchResults:(id)a3;
- (void)setBuckets:(id)a3;
- (void)setHasPlayShuffled:(BOOL)a3;
- (void)setHasPlaybackQueueLocation:(BOOL)a3;
- (void)setHasPlaybackRepeatMode:(BOOL)a3;
- (void)setHasPlaybackSpeed:(BOOL)a3;
- (void)setHasResumePlayback:(BOOL)a3;
- (void)setHashedRouteUIDs:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)setParsecCategory:(int)a3;
- (void)setPlaybackQueueLocation:(int)a3;
- (void)setPlaybackRepeatMode:(int)a3;
- (void)setProxiedBundleIdentifier:(id)a3;
- (void)setRecoID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlayMediaIntent

- (id)dictionaryRepresentation
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternativeResults count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v93 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v93 objects:v101 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternativeResults"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v89 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v89 objects:v100 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"audioSearchResults"];
  }

  v18 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"audiobookAuthor"];

  v20 = [(_INPBPlayMediaIntent *)self audiobookTitle];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"audiobookTitle"];

  if ([(NSArray *)self->_buckets count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
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

          v28 = [*(*(&v85 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"bucket"];
  }

  v29 = [(_INPBPlayMediaIntent *)self expirationDate];
  v30 = [v29 dictionaryRepresentation];
  [v3 setObject:v30 forKeyedSubscript:@"expirationDate"];

  if ([(NSArray *)self->_hashedRouteUIDs count])
  {
    v31 = [MEMORY[0x1E695DF70] array];
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

          v37 = [*(*(&v81 + 1) + 8 * m) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKeyedSubscript:@"hashedRouteUIDs"];
  }

  v38 = [(_INPBPlayMediaIntent *)self intentMetadata];
  v39 = [v38 dictionaryRepresentation];
  [v3 setObject:v39 forKeyedSubscript:@"intentMetadata"];

  v40 = [(_INPBPlayMediaIntent *)self mediaContainer];
  v41 = [v40 dictionaryRepresentation];
  [v3 setObject:v41 forKeyedSubscript:@"mediaContainer"];

  if ([(NSArray *)self->_mediaItems count])
  {
    v42 = [MEMORY[0x1E695DF70] array];
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

          v48 = [*(*(&v77 + 1) + 8 * n) dictionaryRepresentation];
          [v42 addObject:v48];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v77 objects:v97 count:16];
      }

      while (v45);
    }

    [v3 setObject:v42 forKeyedSubscript:@"mediaItems"];
  }

  v49 = [(_INPBPlayMediaIntent *)self mediaSearch];
  v50 = [v49 dictionaryRepresentation];
  [v3 setObject:v50 forKeyedSubscript:@"mediaSearch"];

  v51 = [(_INPBPlayMediaIntent *)self mediaUserContext];
  v52 = [v51 dictionaryRepresentation];
  [v3 setObject:v52 forKeyedSubscript:@"mediaUserContext"];

  v53 = [(_INPBPlayMediaIntent *)self musicArtistName];
  v54 = [v53 dictionaryRepresentation];
  [v3 setObject:v54 forKeyedSubscript:@"musicArtistName"];

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    v55 = [(_INPBPlayMediaIntent *)self parsecCategory];
    if (v55 >= 9)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v55];
    }

    else
    {
      v56 = off_1E7282250[v55];
    }

    [v3 setObject:v56 forKeyedSubscript:@"parsecCategory"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPlayMediaIntent playShuffled](self, "playShuffled")}];
    [v3 setObject:v57 forKeyedSubscript:@"playShuffled"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    v58 = [(_INPBPlayMediaIntent *)self playbackQueueLocation];
    if (v58 >= 4)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v58];
    }

    else
    {
      v59 = off_1E7282298[v58];
    }

    [v3 setObject:v59 forKeyedSubscript:@"playbackQueueLocation"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    v60 = [(_INPBPlayMediaIntent *)self playbackRepeatMode];
    if (v60 >= 3)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v60];
    }

    else
    {
      v61 = off_1E72822B8[v60];
    }

    [v3 setObject:v61 forKeyedSubscript:@"playbackRepeatMode"];
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    v62 = MEMORY[0x1E696AD98];
    [(_INPBPlayMediaIntent *)self playbackSpeed];
    v63 = [v62 numberWithDouble:?];
    [v3 setObject:v63 forKeyedSubscript:@"playbackSpeed"];
  }

  v64 = [(_INPBPlayMediaIntent *)self playlistTitle];
  v65 = [v64 dictionaryRepresentation];
  [v3 setObject:v65 forKeyedSubscript:@"playlistTitle"];

  v66 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  v67 = [v66 dictionaryRepresentation];
  [v3 setObject:v67 forKeyedSubscript:@"privatePlayMediaIntentData"];

  if (self->_proxiedBundleIdentifier)
  {
    v68 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
    v69 = [v68 copy];
    [v3 setObject:v69 forKeyedSubscript:@"proxiedBundleIdentifier"];
  }

  if (self->_recoID)
  {
    v70 = [(_INPBPlayMediaIntent *)self recoID];
    v71 = [v70 copy];
    [v3 setObject:v71 forKeyedSubscript:@"recoID"];
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPlayMediaIntent resumePlayback](self, "resumePlayback")}];
    [v3 setObject:v72 forKeyedSubscript:@"resumePlayback"];
  }

  v73 = [(_INPBPlayMediaIntent *)self showTitle];
  v74 = [v73 dictionaryRepresentation];
  [v3 setObject:v74 forKeyedSubscript:@"showTitle"];

  v75 = *MEMORY[0x1E69E9840];

  return v3;
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
    v3 = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  }

  else
  {
    v3 = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  }

  if (v3)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_116;
  }

  v5 = [(_INPBPlayMediaIntent *)self alternativeResults];
  v6 = [v4 alternativeResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v7 = [(_INPBPlayMediaIntent *)self alternativeResults];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPlayMediaIntent *)self alternativeResults];
    v10 = [v4 alternativeResults];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self audioSearchResults];
  v6 = [v4 audioSearchResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v12 = [(_INPBPlayMediaIntent *)self audioSearchResults];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPlayMediaIntent *)self audioSearchResults];
    v15 = [v4 audioSearchResults];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  v6 = [v4 audiobookAuthor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v17 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
    v20 = [v4 audiobookAuthor];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self audiobookTitle];
  v6 = [v4 audiobookTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v22 = [(_INPBPlayMediaIntent *)self audiobookTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBPlayMediaIntent *)self audiobookTitle];
    v25 = [v4 audiobookTitle];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self buckets];
  v6 = [v4 buckets];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v27 = [(_INPBPlayMediaIntent *)self buckets];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBPlayMediaIntent *)self buckets];
    v30 = [v4 buckets];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self expirationDate];
  v6 = [v4 expirationDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v32 = [(_INPBPlayMediaIntent *)self expirationDate];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBPlayMediaIntent *)self expirationDate];
    v35 = [v4 expirationDate];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
  v6 = [v4 hashedRouteUIDs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v37 = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBPlayMediaIntent *)self hashedRouteUIDs];
    v40 = [v4 hashedRouteUIDs];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v42 = [(_INPBPlayMediaIntent *)self intentMetadata];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBPlayMediaIntent *)self intentMetadata];
    v45 = [v4 intentMetadata];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self mediaContainer];
  v6 = [v4 mediaContainer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v47 = [(_INPBPlayMediaIntent *)self mediaContainer];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBPlayMediaIntent *)self mediaContainer];
    v50 = [v4 mediaContainer];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self mediaItems];
  v6 = [v4 mediaItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v52 = [(_INPBPlayMediaIntent *)self mediaItems];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBPlayMediaIntent *)self mediaItems];
    v55 = [v4 mediaItems];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self mediaSearch];
  v6 = [v4 mediaSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v57 = [(_INPBPlayMediaIntent *)self mediaSearch];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBPlayMediaIntent *)self mediaSearch];
    v60 = [v4 mediaSearch];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self mediaUserContext];
  v6 = [v4 mediaUserContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v62 = [(_INPBPlayMediaIntent *)self mediaUserContext];
  if (v62)
  {
    v63 = v62;
    v64 = [(_INPBPlayMediaIntent *)self mediaUserContext];
    v65 = [v4 mediaUserContext];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self musicArtistName];
  v6 = [v4 musicArtistName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v67 = [(_INPBPlayMediaIntent *)self musicArtistName];
  if (v67)
  {
    v68 = v67;
    v69 = [(_INPBPlayMediaIntent *)self musicArtistName];
    v70 = [v4 musicArtistName];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v72 = [(_INPBPlayMediaIntent *)self hasParsecCategory];
  if (v72 != [v4 hasParsecCategory])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasParsecCategory])
  {
    if ([v4 hasParsecCategory])
    {
      parsecCategory = self->_parsecCategory;
      if (parsecCategory != [v4 parsecCategory])
      {
        goto LABEL_116;
      }
    }
  }

  v74 = [(_INPBPlayMediaIntent *)self hasPlayShuffled];
  if (v74 != [v4 hasPlayShuffled])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlayShuffled])
  {
    if ([v4 hasPlayShuffled])
    {
      playShuffled = self->_playShuffled;
      if (playShuffled != [v4 playShuffled])
      {
        goto LABEL_116;
      }
    }
  }

  v76 = [(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation];
  if (v76 != [v4 hasPlaybackQueueLocation])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackQueueLocation])
  {
    if ([v4 hasPlaybackQueueLocation])
    {
      playbackQueueLocation = self->_playbackQueueLocation;
      if (playbackQueueLocation != [v4 playbackQueueLocation])
      {
        goto LABEL_116;
      }
    }
  }

  v78 = [(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode];
  if (v78 != [v4 hasPlaybackRepeatMode])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackRepeatMode])
  {
    if ([v4 hasPlaybackRepeatMode])
    {
      playbackRepeatMode = self->_playbackRepeatMode;
      if (playbackRepeatMode != [v4 playbackRepeatMode])
      {
        goto LABEL_116;
      }
    }
  }

  v80 = [(_INPBPlayMediaIntent *)self hasPlaybackSpeed];
  if (v80 != [v4 hasPlaybackSpeed])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasPlaybackSpeed])
  {
    if ([v4 hasPlaybackSpeed])
    {
      playbackSpeed = self->_playbackSpeed;
      [v4 playbackSpeed];
      if (playbackSpeed != v82)
      {
        goto LABEL_116;
      }
    }
  }

  v5 = [(_INPBPlayMediaIntent *)self playlistTitle];
  v6 = [v4 playlistTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v83 = [(_INPBPlayMediaIntent *)self playlistTitle];
  if (v83)
  {
    v84 = v83;
    v85 = [(_INPBPlayMediaIntent *)self playlistTitle];
    v86 = [v4 playlistTitle];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  v6 = [v4 privatePlayMediaIntentData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v88 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
  if (v88)
  {
    v89 = v88;
    v90 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
    v91 = [v4 privatePlayMediaIntentData];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
  v6 = [v4 proxiedBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v93 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
  if (v93)
  {
    v94 = v93;
    v95 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];
    v96 = [v4 proxiedBundleIdentifier];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMediaIntent *)self recoID];
  v6 = [v4 recoID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v98 = [(_INPBPlayMediaIntent *)self recoID];
  if (v98)
  {
    v99 = v98;
    v100 = [(_INPBPlayMediaIntent *)self recoID];
    v101 = [v4 recoID];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v103 = [(_INPBPlayMediaIntent *)self hasResumePlayback];
  if (v103 != [v4 hasResumePlayback])
  {
    goto LABEL_116;
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    if ([v4 hasResumePlayback])
    {
      resumePlayback = self->_resumePlayback;
      if (resumePlayback != [v4 resumePlayback])
      {
        goto LABEL_116;
      }
    }
  }

  v5 = [(_INPBPlayMediaIntent *)self showTitle];
  v6 = [v4 showTitle];
  if ((v5 != 0) != (v6 == 0))
  {
    v105 = [(_INPBPlayMediaIntent *)self showTitle];
    if (!v105)
    {

LABEL_119:
      v110 = 1;
      goto LABEL_117;
    }

    v106 = v105;
    v107 = [(_INPBPlayMediaIntent *)self showTitle];
    v108 = [v4 showTitle];
    v109 = [v107 isEqual:v108];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPlayMediaIntent allocWithZone:](_INPBPlayMediaIntent init];
  v6 = [(NSArray *)self->_alternativeResults copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setAlternativeResults:v6];

  v7 = [(NSArray *)self->_audioSearchResults copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setAudioSearchResults:v7];

  v8 = [(_INPBString *)self->_audiobookAuthor copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setAudiobookAuthor:v8];

  v9 = [(_INPBString *)self->_audiobookTitle copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setAudiobookTitle:v9];

  v10 = [(NSArray *)self->_buckets copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setBuckets:v10];

  v11 = [(_INPBTimestamp *)self->_expirationDate copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setExpirationDate:v11];

  v12 = [(NSArray *)self->_hashedRouteUIDs copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setHashedRouteUIDs:v12];

  v13 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setIntentMetadata:v13];

  v14 = [(_INPBMediaItemValue *)self->_mediaContainer copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setMediaContainer:v14];

  v15 = [(NSArray *)self->_mediaItems copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setMediaItems:v15];

  v16 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setMediaSearch:v16];

  v17 = [(_INPBString *)self->_mediaUserContext copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setMediaUserContext:v17];

  v18 = [(_INPBString *)self->_musicArtistName copyWithZone:a3];
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

  v19 = [(_INPBString *)self->_playlistTitle copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setPlaylistTitle:v19];

  v20 = [(_INPBPrivatePlayMediaIntentData *)self->_privatePlayMediaIntentData copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setPrivatePlayMediaIntentData:v20];

  v21 = [(NSString *)self->_proxiedBundleIdentifier copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setProxiedBundleIdentifier:v21];

  v22 = [(NSString *)self->_recoID copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setRecoID:v22];

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    [(_INPBPlayMediaIntent *)v5 setResumePlayback:[(_INPBPlayMediaIntent *)self resumePlayback]];
  }

  v23 = [(_INPBString *)self->_showTitle copyWithZone:a3];
  [(_INPBPlayMediaIntent *)v5 setShowTitle:v23];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlayMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlayMediaIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlayMediaIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v17 = [(_INPBPlayMediaIntent *)self audiobookAuthor];

  if (v17)
  {
    v18 = [(_INPBPlayMediaIntent *)self audiobookAuthor];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBPlayMediaIntent *)self audiobookTitle];

  if (v19)
  {
    v20 = [(_INPBPlayMediaIntent *)self audiobookTitle];
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

  v27 = [(_INPBPlayMediaIntent *)self expirationDate];

  if (v27)
  {
    v28 = [(_INPBPlayMediaIntent *)self expirationDate];
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

  v35 = [(_INPBPlayMediaIntent *)self intentMetadata];

  if (v35)
  {
    v36 = [(_INPBPlayMediaIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v37 = [(_INPBPlayMediaIntent *)self mediaContainer];

  if (v37)
  {
    v38 = [(_INPBPlayMediaIntent *)self mediaContainer];
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

  v45 = [(_INPBPlayMediaIntent *)self mediaSearch];

  if (v45)
  {
    v46 = [(_INPBPlayMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  v47 = [(_INPBPlayMediaIntent *)self mediaUserContext];

  if (v47)
  {
    v48 = [(_INPBPlayMediaIntent *)self mediaUserContext];
    PBDataWriterWriteSubmessage();
  }

  v49 = [(_INPBPlayMediaIntent *)self musicArtistName];

  if (v49)
  {
    v50 = [(_INPBPlayMediaIntent *)self musicArtistName];
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

  v56 = [(_INPBPlayMediaIntent *)self playlistTitle];

  if (v56)
  {
    v57 = [(_INPBPlayMediaIntent *)self playlistTitle];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];

  if (v58)
  {
    v59 = [(_INPBPlayMediaIntent *)self privatePlayMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(_INPBPlayMediaIntent *)self proxiedBundleIdentifier];

  if (v60)
  {
    proxiedBundleIdentifier = self->_proxiedBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  v62 = [(_INPBPlayMediaIntent *)self recoID];

  if (v62)
  {
    recoID = self->_recoID;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPlayMediaIntent *)self hasResumePlayback])
  {
    resumePlayback = self->_resumePlayback;
    PBDataWriterWriteBOOLField();
  }

  v65 = [(_INPBPlayMediaIntent *)self showTitle];

  if (v65)
  {
    v66 = [(_INPBPlayMediaIntent *)self showTitle];
    PBDataWriterWriteSubmessage();
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (void)setHasResumePlayback:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setRecoID:(id)a3
{
  v4 = [a3 copy];
  recoID = self->_recoID;
  self->_recoID = v4;

  MEMORY[0x1EEE66BB8](v4, recoID);
}

- (void)setProxiedBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  proxiedBundleIdentifier = self->_proxiedBundleIdentifier;
  self->_proxiedBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, proxiedBundleIdentifier);
}

- (void)setHasPlaybackSpeed:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsPlaybackRepeatMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ALL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ONE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaybackRepeatMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setPlaybackRepeatMode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_playbackRepeatMode = a3;
  }
}

- (int)StringAsPlaybackQueueLocation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PLAYBACK_QUEUE_LOCATION"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOW"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NEXT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LATER"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaybackQueueLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setPlaybackQueueLocation:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_playbackQueueLocation = a3;
  }
}

- (void)setHasPlayShuffled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsParsecCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MOVIE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WEB_VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MUSIC"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PODCAST"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"APP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"BOOK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setParsecCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_parsecCategory = a3;
  }
}

- (void)addMediaItems:(id)a3
{
  v4 = a3;
  mediaItems = self->_mediaItems;
  v8 = v4;
  if (!mediaItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaItems;
    self->_mediaItems = v6;

    v4 = v8;
    mediaItems = self->_mediaItems;
  }

  [(NSArray *)mediaItems addObject:v4];
}

- (void)setMediaItems:(id)a3
{
  v4 = [a3 mutableCopy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaItems);
}

- (void)addHashedRouteUIDs:(id)a3
{
  v4 = a3;
  hashedRouteUIDs = self->_hashedRouteUIDs;
  v8 = v4;
  if (!hashedRouteUIDs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_hashedRouteUIDs;
    self->_hashedRouteUIDs = v6;

    v4 = v8;
    hashedRouteUIDs = self->_hashedRouteUIDs;
  }

  [(NSArray *)hashedRouteUIDs addObject:v4];
}

- (void)setHashedRouteUIDs:(id)a3
{
  v4 = [a3 mutableCopy];
  hashedRouteUIDs = self->_hashedRouteUIDs;
  self->_hashedRouteUIDs = v4;

  MEMORY[0x1EEE66BB8](v4, hashedRouteUIDs);
}

- (void)addBucket:(id)a3
{
  v4 = a3;
  buckets = self->_buckets;
  v8 = v4;
  if (!buckets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buckets;
    self->_buckets = v6;

    v4 = v8;
    buckets = self->_buckets;
  }

  [(NSArray *)buckets addObject:v4];
}

- (void)setBuckets:(id)a3
{
  v4 = [a3 mutableCopy];
  buckets = self->_buckets;
  self->_buckets = v4;

  MEMORY[0x1EEE66BB8](v4, buckets);
}

- (void)addAudioSearchResults:(id)a3
{
  v4 = a3;
  audioSearchResults = self->_audioSearchResults;
  v8 = v4;
  if (!audioSearchResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = v6;

    v4 = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:v4];
}

- (void)setAudioSearchResults:(id)a3
{
  v4 = [a3 mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

- (void)addAlternativeResults:(id)a3
{
  v4 = a3;
  alternativeResults = self->_alternativeResults;
  v8 = v4;
  if (!alternativeResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternativeResults;
    self->_alternativeResults = v6;

    v4 = v8;
    alternativeResults = self->_alternativeResults;
  }

  [(NSArray *)alternativeResults addObject:v4];
}

- (void)setAlternativeResults:(id)a3
{
  v4 = [a3 mutableCopy];
  alternativeResults = self->_alternativeResults;
  self->_alternativeResults = v4;

  MEMORY[0x1EEE66BB8](v4, alternativeResults);
}

@end