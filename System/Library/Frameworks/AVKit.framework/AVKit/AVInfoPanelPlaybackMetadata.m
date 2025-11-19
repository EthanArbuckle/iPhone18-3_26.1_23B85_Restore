@interface AVInfoPanelPlaybackMetadata
+ (BOOL)_closedCaptioningStatusForPlayerController:(id)a3;
+ (double)_durationForPlayerController:(id)a3;
+ (id)_metadataItemsForPlayerItem:(id)a3 withAsset:(id)a4;
+ (id)playbackMetadataForPlayerController:(id)a3 fulfillment:(id)a4;
+ (void)_loadAssetValues:(id)a3 into:(id)a4 completion:(id)a5;
- (AVInfoPanelPlaybackMetadata)initWithPlaybackMetadata:(id)a3;
- (AVInfoPanelPlaybackMetadata)initWithPlayerController:(id)a3;
- (AVMetadataItem)episodeNumberItem;
- (AVMetadataItem)seasonNumberItem;
- (AVMetadataItem)secondaryTitleItem;
- (AVMetadataItem)titleItem;
- (BOOL)isEqual:(id)a3;
- (NSDateFormatter)_yearDateFormatter;
- (NSString)episodeNumberString;
- (NSString)releaseDateString;
- (NSString)seasonEpisodeString;
- (NSString)seasonNumberString;
- (NSString)secondaryTitleString;
- (NSString)titleString;
- (id)_releaseDateStringItem;
- (id)copyWithZone:(_NSZone *)a3;
- (id)metadataItemForIdentifiers:(id)a3;
@end

@implementation AVInfoPanelPlaybackMetadata

- (NSDateFormatter)_yearDateFormatter
{
  yearDateFormatter = self->_yearDateFormatter;
  if (!yearDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_yearDateFormatter;
    self->_yearDateFormatter = v4;

    [(NSDateFormatter *)self->_yearDateFormatter setDateFormat:@"yyyy"];
    yearDateFormatter = self->_yearDateFormatter;
  }

  return yearDateFormatter;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AVInfoPanelPlaybackMetadata *)self metadataItems];
      v6 = [(AVInfoPanelPlaybackMetadata *)v4 metadataItems];
      if (v5 == v6)
      {
        v8 = [(AVInfoPanelPlaybackMetadata *)self creationDate];
        v9 = [(AVInfoPanelPlaybackMetadata *)v4 creationDate];
        v7 = v8 == v9;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithPlaybackMetadata:self];
}

- (AVInfoPanelPlaybackMetadata)initWithPlaybackMetadata:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AVInfoPanelPlaybackMetadata;
  v5 = [(AVInfoPanelPlaybackMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 metadataItems];
    v7 = [v6 copy];
    metadataItems = v5->_metadataItems;
    v5->_metadataItems = v7;

    [v4 duration];
    v5->_duration = v9;
    v5->_closedCaptioned = [v4 isClosedCaptioned];
    v5->_livePlayback = [v4 isLivePlayback];
    v10 = [v4 creationDate];
    v11 = [v10 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v11;
  }

  return v5;
}

- (AVInfoPanelPlaybackMetadata)initWithPlayerController:(id)a3
{
  v4 = a3;
  v5 = [v4 player];
  v6 = [v5 currentItem];

  v7 = [v6 asset];
  v15.receiver = self;
  v15.super_class = AVInfoPanelPlaybackMetadata;
  v8 = [(AVInfoPanelPlaybackMetadata *)&v15 init];
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [objc_opt_class() _metadataItemsForPlayerItem:v6 withAsset:v7];
    metadataItems = v8->_metadataItems;
    v8->_metadataItems = v10;

    creationDate = v8->_creationDate;
    v8->_creationDate = 0;

    [objc_opt_class() _durationForPlayerController:v4];
    v8->_duration = v13;
    v8->_closedCaptioned = [objc_opt_class() _closedCaptioningStatusForPlayerController:v4];
    v8->_livePlayback = [v4 hasLiveStreamingContent];
  }

  return v8;
}

+ (BOOL)_closedCaptioningStatusForPlayerController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [a3 legibleMediaSelectionOptions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = *MEMORY[0x1E69875B8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) mediaType];
        v10 = [v9 isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (double)_durationForPlayerController:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (([v3 hasLiveStreamingContent] & 1) == 0)
  {
    [v3 contentDuration];
    v4 = v5;
  }

  return v4;
}

+ (id)_metadataItemsForPlayerItem:(id)a3 withAsset:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E695DF58];
  v7 = a3;
  v8 = [v6 preferredLanguages];
  v9 = [v8 arrayByAddingObject:@"und"];

  v10 = [v5 statusOfValueForKey:@"metadata" error:0];
  v11 = MEMORY[0x1E695E0F0];
  if (v10 == 2)
  {
    v12 = MEMORY[0x1E6987FE0];
    v13 = [v5 metadata];
    v14 = [v12 metadataItemsFromArray:v13 filteredAndSortedAccordingToPreferredLanguages:v9];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    v17 = v16;
  }

  else
  {
    v18 = _AVLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315138;
      v28 = "+[AVInfoPanelPlaybackMetadata _metadataItemsForPlayerItem:withAsset:]";
      _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "%s: metadata has not yet been loaded: this is the caller's responsibility!", &v27, 0xCu);
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  v19 = MEMORY[0x1E6987FE0];
  v20 = [v7 externalMetadata];

  v21 = [v19 metadataItemsFromArray:v20 filteredAndSortedAccordingToPreferredLanguages:v9];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v11;
  }

  v24 = v23;

  v25 = [v24 arrayByAddingObjectsFromArray:v17];

  return v25;
}

+ (void)_loadAssetValues:(id)a3 into:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18[0] = @"creationDate";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__AVInfoPanelPlaybackMetadata__loadAssetValues_into_completion___block_invoke;
  v14[3] = &unk_1E720A068;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v13 loadValuesAsynchronouslyForKeys:v10 completionHandler:v14];
}

void __64__AVInfoPanelPlaybackMetadata__loadAssetValues_into_completion___block_invoke(id *a1)
{
  if ([a1[4] statusOfValueForKey:@"creationDate" error:0] == 2)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithObject:@"creationDate"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__AVInfoPanelPlaybackMetadata__loadAssetValues_into_completion___block_invoke_2;
    v5[3] = &unk_1E7209FD8;
    v6 = a1[4];
    v7 = a1[5];
    v3 = a1[6];
    v8 = v2;
    v9 = v3;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __64__AVInfoPanelPlaybackMetadata__loadAssetValues_into_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) creationDate];
  obj = [v2 dateValue];

  v3 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong((v3 + 32), obj);
  }

  (*(*(a1 + 56) + 16))();
}

+ (id)playbackMetadataForPlayerController:(id)a3 fulfillment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithPlayerController:v6];
  if (v7)
  {
    v9 = [v6 player];
    v10 = [v9 currentItem];
    v11 = [v10 asset];

    if (v11)
    {
      v12 = [v8 copy];
      [a1 _loadAssetValues:v11 into:v12 completion:v7];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFD8] set];
      v7[2](v7, v8, v12);
    }
  }

  return v8;
}

- (NSString)releaseDateString
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987688] keySpace:*MEMORY[0x1E6987838]];
  v22[0] = v3;
  v4 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987898] keySpace:*MEMORY[0x1E6987850]];
  v22[1] = v4;
  v5 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987930] keySpace:*MEMORY[0x1E6987860]];
  v22[2] = v5;
  v6 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987730] keySpace:*MEMORY[0x1E6987840]];
  v22[3] = v6;
  v7 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987618] keySpace:*MEMORY[0x1E6987848]];
  v22[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];

  v9 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v8];
  v10 = [v9 dateValue];
  v11 = [v9 stringValue];
  v12 = [(AVInfoPanelPlaybackMetadata *)self creationDate];
  v13 = [(AVInfoPanelPlaybackMetadata *)self _releaseDateStringItem];
  v14 = [v13 stringValue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__AVInfoPanelPlaybackMetadata_ViewModel__releaseDateString__block_invoke;
  aBlock[3] = &unk_1E720A018;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v14)
  {
    v17 = v14;
LABEL_8:
    v19 = v17;
    goto LABEL_9;
  }

  if (v10)
  {
    v18 = v15[2];
LABEL_5:
    v17 = v18();
    goto LABEL_8;
  }

  if (v11)
  {
    v17 = v11;
    goto LABEL_8;
  }

  if (v12)
  {
    v18 = v15[2];
    goto LABEL_5;
  }

  v19 = 0;
LABEL_9:

  return v19;
}

id __59__AVInfoPanelPlaybackMetadata_ViewModel__releaseDateString__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _yearDateFormatter];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (NSString)seasonEpisodeString
{
  v3 = [(AVInfoPanelPlaybackMetadata *)self seasonNumberString];
  v4 = [(AVInfoPanelPlaybackMetadata *)self episodeNumberString];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = AVLocalizedString(@"Season %@, Episode %@");
    v6 = [v7 stringWithFormat:v8, v3, v5];
  }

  return v6;
}

- (NSString)episodeNumberString
{
  v2 = [(AVInfoPanelPlaybackMetadata *)self episodeNumberItem];
  v3 = [v2 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 stringValue];
  }

  else
  {
    v6 = [v2 value];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v2 value];
      v5 = [v8 stringValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)seasonNumberString
{
  v2 = [(AVInfoPanelPlaybackMetadata *)self seasonNumberItem];
  v3 = [v2 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 stringValue];
  }

  else
  {
    v6 = [v2 value];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v2 value];
      v5 = [v8 stringValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)secondaryTitleString
{
  v3 = [(AVInfoPanelPlaybackMetadata *)self titleItem];
  v4 = [v3 stringValue];

  v5 = [(AVInfoPanelPlaybackMetadata *)self secondaryTitleItem];
  v6 = [v5 stringValue];

  if ([v6 length] && !objc_msgSend(v4, "length"))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)titleString
{
  v3 = [(AVInfoPanelPlaybackMetadata *)self titleItem];
  v4 = [v3 stringValue];

  v5 = [(AVInfoPanelPlaybackMetadata *)self secondaryTitleItem];
  v6 = [v5 stringValue];

  if (![v6 length] || (v7 = v6, objc_msgSend(v4, "length")))
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)_releaseDateStringItem
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"avkt/com.apple.avkit.releaseDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v3];

  return v4;
}

- (AVMetadataItem)episodeNumberItem
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"avkt/com.apple.avkit.episodeNumber";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v3];

  return v4;
}

- (AVMetadataItem)seasonNumberItem
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"avkt/com.apple.avkit.seasonNumber";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v3];

  return v4;
}

- (AVMetadataItem)secondaryTitleItem
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6987808];
  v7[0] = @"avkt/com.apple.avkit.alternateSubTitle";
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v4];

  return v5;
}

- (AVMetadataItem)titleItem
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E6987668];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVInfoPanelPlaybackMetadata *)self metadataItemForIdentifiers:v3];

  return v4;
}

- (id)metadataItemForIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = MEMORY[0x1E6987FE0];
      v11 = [(AVInfoPanelPlaybackMetadata *)self metadataItems];
      v12 = [v10 metadataItemsFromArray:v11 filteredByIdentifier:v9];
      v13 = [v12 firstObject];

      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

@end