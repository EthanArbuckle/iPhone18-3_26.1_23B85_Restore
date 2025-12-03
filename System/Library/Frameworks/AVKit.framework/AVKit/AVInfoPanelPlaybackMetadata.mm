@interface AVInfoPanelPlaybackMetadata
+ (BOOL)_closedCaptioningStatusForPlayerController:(id)controller;
+ (double)_durationForPlayerController:(id)controller;
+ (id)_metadataItemsForPlayerItem:(id)item withAsset:(id)asset;
+ (id)playbackMetadataForPlayerController:(id)controller fulfillment:(id)fulfillment;
+ (void)_loadAssetValues:(id)values into:(id)into completion:(id)completion;
- (AVInfoPanelPlaybackMetadata)initWithPlaybackMetadata:(id)metadata;
- (AVInfoPanelPlaybackMetadata)initWithPlayerController:(id)controller;
- (AVMetadataItem)episodeNumberItem;
- (AVMetadataItem)seasonNumberItem;
- (AVMetadataItem)secondaryTitleItem;
- (AVMetadataItem)titleItem;
- (BOOL)isEqual:(id)equal;
- (NSDateFormatter)_yearDateFormatter;
- (NSString)episodeNumberString;
- (NSString)releaseDateString;
- (NSString)seasonEpisodeString;
- (NSString)seasonNumberString;
- (NSString)secondaryTitleString;
- (NSString)titleString;
- (id)_releaseDateStringItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)metadataItemForIdentifiers:(id)identifiers;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metadataItems = [(AVInfoPanelPlaybackMetadata *)self metadataItems];
      metadataItems2 = [(AVInfoPanelPlaybackMetadata *)equalCopy metadataItems];
      if (metadataItems == metadataItems2)
      {
        creationDate = [(AVInfoPanelPlaybackMetadata *)self creationDate];
        creationDate2 = [(AVInfoPanelPlaybackMetadata *)equalCopy creationDate];
        v7 = creationDate == creationDate2;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithPlaybackMetadata:self];
}

- (AVInfoPanelPlaybackMetadata)initWithPlaybackMetadata:(id)metadata
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = AVInfoPanelPlaybackMetadata;
  v5 = [(AVInfoPanelPlaybackMetadata *)&v14 init];
  if (v5)
  {
    metadataItems = [metadataCopy metadataItems];
    v7 = [metadataItems copy];
    metadataItems = v5->_metadataItems;
    v5->_metadataItems = v7;

    [metadataCopy duration];
    v5->_duration = v9;
    v5->_closedCaptioned = [metadataCopy isClosedCaptioned];
    v5->_livePlayback = [metadataCopy isLivePlayback];
    creationDate = [metadataCopy creationDate];
    v11 = [creationDate copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v11;
  }

  return v5;
}

- (AVInfoPanelPlaybackMetadata)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  player = [controllerCopy player];
  currentItem = [player currentItem];

  asset = [currentItem asset];
  v15.receiver = self;
  v15.super_class = AVInfoPanelPlaybackMetadata;
  v8 = [(AVInfoPanelPlaybackMetadata *)&v15 init];
  if (v8)
  {
    v9 = asset == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [objc_opt_class() _metadataItemsForPlayerItem:currentItem withAsset:asset];
    metadataItems = v8->_metadataItems;
    v8->_metadataItems = v10;

    creationDate = v8->_creationDate;
    v8->_creationDate = 0;

    [objc_opt_class() _durationForPlayerController:controllerCopy];
    v8->_duration = v13;
    v8->_closedCaptioned = [objc_opt_class() _closedCaptioningStatusForPlayerController:controllerCopy];
    v8->_livePlayback = [controllerCopy hasLiveStreamingContent];
  }

  return v8;
}

+ (BOOL)_closedCaptioningStatusForPlayerController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  [controller legibleMediaSelectionOptions];
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

        mediaType = [*(*(&v13 + 1) + 8 * i) mediaType];
        v10 = [mediaType isEqualToString:v7];

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

+ (double)_durationForPlayerController:(id)controller
{
  controllerCopy = controller;
  v4 = 0.0;
  if (([controllerCopy hasLiveStreamingContent] & 1) == 0)
  {
    [controllerCopy contentDuration];
    v4 = v5;
  }

  return v4;
}

+ (id)_metadataItemsForPlayerItem:(id)item withAsset:(id)asset
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = MEMORY[0x1E695DF58];
  itemCopy = item;
  preferredLanguages = [v6 preferredLanguages];
  v9 = [preferredLanguages arrayByAddingObject:@"und"];

  v10 = [assetCopy statusOfValueForKey:@"metadata" error:0];
  v11 = MEMORY[0x1E695E0F0];
  if (v10 == 2)
  {
    v12 = MEMORY[0x1E6987FE0];
    metadata = [assetCopy metadata];
    v14 = [v12 metadataItemsFromArray:metadata filteredAndSortedAccordingToPreferredLanguages:v9];
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
  externalMetadata = [itemCopy externalMetadata];

  v21 = [v19 metadataItemsFromArray:externalMetadata filteredAndSortedAccordingToPreferredLanguages:v9];
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

+ (void)_loadAssetValues:(id)values into:(id)into completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  intoCopy = into;
  completionCopy = completion;
  v18[0] = @"creationDate";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__AVInfoPanelPlaybackMetadata__loadAssetValues_into_completion___block_invoke;
  v14[3] = &unk_1E720A068;
  v15 = valuesCopy;
  v16 = intoCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = intoCopy;
  v13 = valuesCopy;
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

+ (id)playbackMetadataForPlayerController:(id)controller fulfillment:(id)fulfillment
{
  controllerCopy = controller;
  fulfillmentCopy = fulfillment;
  v8 = [[self alloc] initWithPlayerController:controllerCopy];
  if (fulfillmentCopy)
  {
    player = [controllerCopy player];
    currentItem = [player currentItem];
    asset = [currentItem asset];

    if (asset)
    {
      v12 = [v8 copy];
      [self _loadAssetValues:asset into:v12 completion:fulfillmentCopy];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFD8] set];
      fulfillmentCopy[2](fulfillmentCopy, v8, v12);
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
  dateValue = [v9 dateValue];
  stringValue = [v9 stringValue];
  creationDate = [(AVInfoPanelPlaybackMetadata *)self creationDate];
  _releaseDateStringItem = [(AVInfoPanelPlaybackMetadata *)self _releaseDateStringItem];
  stringValue2 = [_releaseDateStringItem stringValue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__AVInfoPanelPlaybackMetadata_ViewModel__releaseDateString__block_invoke;
  aBlock[3] = &unk_1E720A018;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (stringValue2)
  {
    v17 = stringValue2;
LABEL_8:
    v19 = v17;
    goto LABEL_9;
  }

  if (dateValue)
  {
    v18 = v15[2];
LABEL_5:
    v17 = v18();
    goto LABEL_8;
  }

  if (stringValue)
  {
    v17 = stringValue;
    goto LABEL_8;
  }

  if (creationDate)
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
  seasonNumberString = [(AVInfoPanelPlaybackMetadata *)self seasonNumberString];
  episodeNumberString = [(AVInfoPanelPlaybackMetadata *)self episodeNumberString];
  v5 = episodeNumberString;
  v6 = 0;
  if (seasonNumberString && episodeNumberString)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = AVLocalizedString(@"Season %@, Episode %@");
    v6 = [v7 stringWithFormat:v8, seasonNumberString, v5];
  }

  return v6;
}

- (NSString)episodeNumberString
{
  episodeNumberItem = [(AVInfoPanelPlaybackMetadata *)self episodeNumberItem];
  value = [episodeNumberItem value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    stringValue = [episodeNumberItem stringValue];
  }

  else
  {
    value2 = [episodeNumberItem value];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      value3 = [episodeNumberItem value];
      stringValue = [value3 stringValue];
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

- (NSString)seasonNumberString
{
  seasonNumberItem = [(AVInfoPanelPlaybackMetadata *)self seasonNumberItem];
  value = [seasonNumberItem value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    stringValue = [seasonNumberItem stringValue];
  }

  else
  {
    value2 = [seasonNumberItem value];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      value3 = [seasonNumberItem value];
      stringValue = [value3 stringValue];
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

- (NSString)secondaryTitleString
{
  titleItem = [(AVInfoPanelPlaybackMetadata *)self titleItem];
  stringValue = [titleItem stringValue];

  secondaryTitleItem = [(AVInfoPanelPlaybackMetadata *)self secondaryTitleItem];
  stringValue2 = [secondaryTitleItem stringValue];

  if ([stringValue2 length] && !objc_msgSend(stringValue, "length"))
  {
    v7 = 0;
  }

  else
  {
    v7 = stringValue2;
  }

  return v7;
}

- (NSString)titleString
{
  titleItem = [(AVInfoPanelPlaybackMetadata *)self titleItem];
  stringValue = [titleItem stringValue];

  secondaryTitleItem = [(AVInfoPanelPlaybackMetadata *)self secondaryTitleItem];
  stringValue2 = [secondaryTitleItem stringValue];

  if (![stringValue2 length] || (v7 = stringValue2, objc_msgSend(stringValue, "length")))
  {
    v7 = stringValue;
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

- (id)metadataItemForIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(identifiersCopy);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = MEMORY[0x1E6987FE0];
      metadataItems = [(AVInfoPanelPlaybackMetadata *)self metadataItems];
      v12 = [v10 metadataItemsFromArray:metadataItems filteredByIdentifier:v9];
      firstObject = [v12 firstObject];

      if (firstObject)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    firstObject = 0;
  }

  return firstObject;
}

@end