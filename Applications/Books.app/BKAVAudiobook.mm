@interface BKAVAudiobook
+ (id)audiobookWithAssetID:(id)d tracks:(id)tracks;
- (BKAVAudiobook)initWithAssetID:(id)d;
- (BOOL)isEqualToAudiobook:(id)audiobook;
- (BOOL)isSG;
- (NSArray)chapters;
- (NSString)description;
- (double)duration;
- (id)representativeTrack;
- (void)addTrack:(id)track;
- (void)artworkWithCompletion:(id)completion;
@end

@implementation BKAVAudiobook

+ (id)audiobookWithAssetID:(id)d tracks:(id)tracks
{
  dCopy = d;
  tracksCopy = tracks;
  v7 = [[BKAVAudiobook alloc] initWithAssetID:dCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = tracksCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        v14 = BUDynamicCast();
        if (v14)
        {
          [(BKAVAudiobook *)v7 addTrack:v14];
        }

        else
        {
          v15 = sub_1001B9CD0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v13;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Attempting to add invalid track %@", buf, 0xCu);
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BKAVAudiobook)initWithAssetID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKAVAudiobook;
  v6 = [(BKAVAudiobook *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    avTracks = v6->_avTracks;
    v6->_avTracks = v7;

    objc_storeStrong(&v6->_assetID, d);
    guid = v6->_guid;
    v6->_guid = &stru_100A30A68;
  }

  return v6;
}

- (NSArray)chapters
{
  if (![(BKAVAudiobook *)self chapterListValid])
  {
    v3 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = self->_avTracks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          chapters = [*(*(&v14 + 1) + 8 * v8) chapters];
          [v3 addObjectsFromArray:chapters];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
    chapters = self->_chapters;
    self->_chapters = v10;

    [(BKAVAudiobook *)self setChapterListValid:1];
  }

  v12 = self->_chapters;

  return v12;
}

- (double)duration
{
  if (![(BKAVAudiobook *)self durationValid])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_avTracks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * i) duration];
          v7 = v7 + v9;
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    self->_duration = v7;
    [(BKAVAudiobook *)self setDurationValid:1];
  }

  return self->_duration;
}

- (void)artworkWithCompletion:(id)completion
{
  completionCopy = completion;
  representativeTrack = [(BKAVAudiobook *)self representativeTrack];
  if (representativeTrack)
  {
    v6 = objc_retainBlock(completionCopy);
    if (v6)
    {
      v6[2](v6, [representativeTrack artwork]);
    }
  }

  else
  {
    v7 = sub_1001B9CD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100791314(v7);
    }

    v8 = objc_retainBlock(completionCopy);
    v6 = v8;
    if (v8)
    {
      v8[2](v8, 0);
    }
  }
}

- (void)addTrack:(id)track
{
  [(NSMutableArray *)self->_avTracks addObject:track];
  [(BKAVAudiobook *)self setChapterListValid:0];

  [(BKAVAudiobook *)self setDurationValid:0];
}

- (id)representativeTrack
{
  v3 = [(NSMutableArray *)self->_avTracks count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_avTracks objectAtIndexedSubscript:0];
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(BKAVAudiobook *)self title];
  author = [(BKAVAudiobook *)self author];
  representativeTrack = [(BKAVAudiobook *)self representativeTrack];
  v8 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"<%@:%p title=%@ author=%@ artwork=%p tracks=\n", v4, self, title, author, [representativeTrack artwork]);

  selfCopy = self;
  v9 = [(NSMutableArray *)self->_avTracks count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9 - 1;
    do
    {
      v13 = [(NSMutableArray *)selfCopy->_avTracks objectAtIndexedSubscript:v11];
      v14 = [v13 description];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = [v14 componentsSeparatedByString:@"\n"];
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v8 appendFormat:@"  %@\n", *(*(&v23 + 1) + 8 * i)];
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      if (v11 == v12)
      {
        v20 = &stru_100A30A68;
      }

      else
      {
        v20 = @",";
      }

      [v8 appendString:v20];

      ++v11;
    }

    while (v11 != v10);
  }

  [v8 appendFormat:@">"];

  return v8;
}

- (BOOL)isEqualToAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  assetID = [(BKAVAudiobook *)self assetID];
  assetID2 = [audiobookCopy assetID];

  LOBYTE(audiobookCopy) = [assetID isEqualToString:assetID2];
  return audiobookCopy;
}

- (BOOL)isSG
{
  guid = self->_guid;
  if (guid)
  {
    LOBYTE(guid) = [(NSString *)guid length]!= 0;
  }

  return guid;
}

@end