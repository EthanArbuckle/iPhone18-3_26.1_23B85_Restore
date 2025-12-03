@interface BKMLAudiobookProducer
- (BKMLAudiobookProducer)initWithStoreDemoMode:(BOOL)mode;
- (void)audiobookForIdentifier:(id)identifier completion:(id)completion;
@end

@implementation BKMLAudiobookProducer

- (BKMLAudiobookProducer)initWithStoreDemoMode:(BOOL)mode
{
  v5.receiver = self;
  v5.super_class = BKMLAudiobookProducer;
  result = [(BKMLAudiobookProducer *)&v5 init];
  if (result)
  {
    result->_storeDemoMode = mode;
  }

  return result;
}

- (void)audiobookForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  isStoreDemoMode = [(BKMLAudiobookProducer *)self isStoreDemoMode];
  objc_opt_class();
  v9 = BUDynamicCast();
  if ([v9 isValid])
  {
    audiobookQuery = [v9 audiobookQuery];
    v11 = audiobookQuery;
    if (audiobookQuery)
    {
      collections = [audiobookQuery collections];
      if ([collections count])
      {
        v49 = collections;
        v13 = [collections objectAtIndexedSubscript:0];
        items = [v13 items];

        v15 = items;
        if ([items count])
        {
          v44 = isStoreDemoMode;
          v45 = v11;
          v47 = completionCopy;
          v48 = identifierCopy;
          v16 = objc_alloc_init(BKMLAudiobook);
          v46 = v9;
          supplementalAssetIdentifiers = [v9 supplementalAssetIdentifiers];
          v18 = [supplementalAssetIdentifiers count];
          v19 = [NSMutableArray arrayWithCapacity:v18];
          if (v18)
          {
            for (i = 0; i != v18; ++i)
            {
              v21 = [supplementalAssetIdentifiers objectAtIndexedSubscript:i];
              v22 = [[BKAudiobookSupplementalContent alloc] initWithTitle:&stru_3D458 assetIdentifier:v21];
              [v19 addObject:v22];
            }
          }

          [(BKMLAudiobook *)v16 setSupplementalContents:v19];
          v23 = objc_opt_new();
          v24 = [v15 count];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = 0;
            v28 = 0.0;
            do
            {
              v29 = [BKMLAudiobookTrack alloc];
              v30 = [v15 objectAtIndexedSubscript:v26];
              v31 = [(BKMLAudiobookTrack *)v29 initWithAudiobook:v16 mediaItem:v30 startTime:v27 startChapterNumber:v26 trackNumber:v25 trackCount:v44 storeDemoMode:v28];

              [v23 addObject:v31];
              [(BKMLAudiobookTrack *)v31 duration];
              v28 = v28 + v32;
              chapters = [(BKMLAudiobookTrack *)v31 chapters];
              v27 += [chapters count];

              ++v26;
            }

            while (v25 != v26);
          }

          [(BKMLAudiobook *)v16 addTracks:v23];

          v34 = 0;
          completionCopy = v47;
          identifierCopy = v48;
          v11 = v45;
          v9 = v46;
        }

        else
        {
          v40 = [NSString stringWithFormat:@"No media items found for %@", v9];
          v58 = NSLocalizedDescriptionKey;
          v59 = v40;
          v41 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v34 = [NSError errorWithDomain:@"BKAudiobooksError" code:0 userInfo:v41];

          v16 = 0;
        }

        collections = v49;
      }

      else
      {
        persistentID = [v9 persistentID];
        v15 = [NSString stringWithFormat:@"No albums found for %@", persistentID];

        v56 = NSLocalizedDescriptionKey;
        v57 = v15;
        [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v39 = v38 = identifierCopy;
        v34 = [NSError errorWithDomain:@"BKAudiobooksError" code:0 userInfo:v39];

        identifierCopy = v38;
        v16 = 0;
      }
    }

    else
    {
      v54 = NSLocalizedDescriptionKey;
      v55 = @"Query creation failed";
      collections = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v34 = [NSError errorWithDomain:@"BKAudiobooksError" code:0 userInfo:collections];
      v16 = 0;
    }
  }

  else
  {
    if (v9)
    {
      v52 = NSLocalizedDescriptionKey;
      v53 = @"Audiobook identifier has no persistentID nor assetID";
      v35 = &v53;
      v36 = &v52;
    }

    else
    {
      v50 = NSLocalizedDescriptionKey;
      v51 = @"Audiobook identifier is not instance of BKMLAudiobookIdentifier";
      v35 = &v51;
      v36 = &v50;
    }

    v11 = [NSDictionary dictionaryWithObjects:v35 forKeys:v36 count:1];
    v34 = [NSError errorWithDomain:@"BKAudiobooksError" code:0 userInfo:v11];
    v16 = 0;
  }

  v42 = objc_retainBlock(completionCopy);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, v16, v34);
  }
}

@end