@interface PHAssetPTPProperties
+ (id)propertiesToFetch;
- (CLLocation)location;
- (PHAssetPTPProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetPTPProperties

- (CLLocation)location
{
  locationData = self->_locationData;
  if (locationData)
  {
    v4 = [MEMORY[0x1E69BE540] newLocationFromLocationData:locationData timestampIfMissing:self->_dateCreated];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PHAssetPTPProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v53.receiver = self;
  v53.super_class = PHAssetPTPProperties;
  v9 = [(PHAssetPTPProperties *)&v53 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"kindSubtype"];
    v10->_kindSubType = [v11 integerValue];

    v12 = [v7 objectForKeyedSubscript:@"kind"];
    v10->_kind = [v12 integerValue];

    v13 = [v7 objectForKeyedSubscript:@"avalanchePickType"];
    v10->_burstPickType = [v13 integerValue];

    v14 = [v7 objectForKeyedSubscript:@"mediaGroupUUID"];
    livePhotoPairingIdentifier = v10->_livePhotoPairingIdentifier;
    v10->_livePhotoPairingIdentifier = v14;

    v16 = [v7 objectForKeyedSubscript:@"filename"];
    filename = v10->_filename;
    v10->_filename = v16;

    v18 = [v7 objectForKeyedSubscript:@"avalancheUUID"];
    burstIdentifier = v10->_burstIdentifier;
    v10->_burstIdentifier = v18;

    v20 = [v7 objectForKeyedSubscript:@"locationData"];
    locationData = v10->_locationData;
    v10->_locationData = v20;

    v22 = [v7 objectForKeyedSubscript:@"hdrType"];
    v10->_hdrType = [v22 integerValue];

    v23 = [v7 objectForKeyedSubscript:@"hidden"];
    v10->_hidden = [v23 BOOLValue];

    v24 = [v7 objectForKeyedSubscript:@"deferredProcessingNeeded"];
    v10->_deferredProcessingNeeded = [v24 BOOLValue];

    v25 = [v7 objectForKeyedSubscript:@"additionalAttributes.originalFilename"];
    originalFilename = v10->_originalFilename;
    v10->_originalFilename = v25;

    v27 = [v7 objectForKeyedSubscript:@"additionalAttributes.originalFilesize"];
    v10->_originalFilesize = [v27 integerValue];

    v28 = [v7 objectForKeyedSubscript:@"additionalAttributes.originalWidth"];
    v10->_originalWidth = [v28 integerValue];

    v29 = [v7 objectForKeyedSubscript:@"additionalAttributes.originalHeight"];
    v10->_originalHeight = [v29 integerValue];

    v30 = [v7 objectForKeyedSubscript:@"additionalAttributes.exifTimestampString"];
    exifTimestampString = v10->_exifTimestampString;
    v10->_exifTimestampString = v30;

    v32 = [v7 objectForKeyedSubscript:@"additionalAttributes.ptpTrashedState"];
    v10->_ptpTrashedState = [v32 integerValue];

    v33 = [v7 objectForKeyedSubscript:@"additionalAttributes.originatingAssetIdentifier"];
    originatingAssetIdentifier = v10->_originatingAssetIdentifier;
    v10->_originatingAssetIdentifier = v33;

    v35 = [v7 objectForKeyedSubscript:@"additionalAttributes.embeddedThumbnailOffset"];
    embeddedThumbnailOffset = v10->_embeddedThumbnailOffset;
    v10->_embeddedThumbnailOffset = v35;

    v37 = [v7 objectForKeyedSubscript:@"additionalAttributes.embeddedThumbnailLength"];
    embeddedThumbnailLength = v10->_embeddedThumbnailLength;
    v10->_embeddedThumbnailLength = v37;

    v39 = [v7 objectForKeyedSubscript:@"additionalAttributes.embeddedThumbnailWidth"];
    embeddedThumbnailWidth = v10->_embeddedThumbnailWidth;
    v10->_embeddedThumbnailWidth = v39;

    v41 = [v7 objectForKeyedSubscript:@"additionalAttributes.embeddedThumbnailHeight"];
    embeddedThumbnailHeight = v10->_embeddedThumbnailHeight;
    v10->_embeddedThumbnailHeight = v41;

    v43 = [v7 objectForKeyedSubscript:@"additionalAttributes.originalStableHash"];
    fingerprint = v10->_fingerprint;
    v10->_fingerprint = v43;

    v45 = [v7 objectForKeyedSubscript:@"additionalAttributes.timeZoneOffset"];
    v10->_timeZoneOffset = [v45 integerValue];

    v46 = [v7 objectForKeyedSubscript:@"extendedAttributes.dateCreated"];
    dateCreated = v10->_dateCreated;
    v10->_dateCreated = v46;

    v48 = [v7 objectForKeyedSubscript:@"extendedAttributes.duration"];
    originalDuration = v10->_originalDuration;
    v10->_originalDuration = v48;

    v50 = [v7 objectForKeyedSubscript:@"extendedAttributes.codec"];
    codec = v10->_codec;
    v10->_codec = v50;
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_78;

  return v2;
}

void __41__PHAssetPTPProperties_propertiesToFetch__block_invoke()
{
  v3[26] = *MEMORY[0x1E69E9840];
  v3[0] = @"filename";
  v3[1] = @"mediaGroupUUID";
  v3[2] = @"kind";
  v3[3] = @"kindSubtype";
  v3[4] = @"avalanchePickType";
  v3[5] = @"avalancheUUID";
  v3[6] = @"locationData";
  v3[7] = @"hdrType";
  v3[8] = @"hidden";
  v3[9] = @"deferredProcessingNeeded";
  v3[10] = @"additionalAttributes.originalFilename";
  v3[11] = @"additionalAttributes.originalFilesize";
  v3[12] = @"additionalAttributes.originalWidth";
  v3[13] = @"additionalAttributes.originalHeight";
  v3[14] = @"additionalAttributes.exifTimestampString";
  v3[15] = @"additionalAttributes.ptpTrashedState";
  v3[16] = @"additionalAttributes.originatingAssetIdentifier";
  v3[17] = @"additionalAttributes.embeddedThumbnailOffset";
  v3[18] = @"additionalAttributes.embeddedThumbnailLength";
  v3[19] = @"additionalAttributes.embeddedThumbnailWidth";
  v3[20] = @"additionalAttributes.embeddedThumbnailHeight";
  v3[21] = @"additionalAttributes.originalStableHash";
  v3[22] = @"additionalAttributes.timeZoneOffset";
  v3[23] = @"extendedAttributes.dateCreated";
  v3[24] = @"extendedAttributes.duration";
  v3[25] = @"extendedAttributes.codec";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:26];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_78;
  propertiesToFetch_pl_once_object_78 = v1;
}

@end