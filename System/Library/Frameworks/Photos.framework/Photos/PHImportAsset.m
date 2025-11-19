@interface PHImportAsset
+ (BOOL)isOriginalAdjustmentData:(id)a3;
+ (BOOL)isValidAsSidecar:(id)a3;
+ (id)assetFileForURL:(id)a3 source:(id)a4 withUuid:(id)a5;
+ (id)loadDatesForAssetSequence:(id)a3 atEnd:(id)a4;
+ (id)loadDatesForAssets:(id)a3 atEnd:(id)a4;
+ (void)determineIfTIFFIsRAW:(id)a3 url:(id)a4;
+ (void)logImageDateFileDateDifferencesForAsset:(id)a3;
- (BOOL)_loadMetadataIfNecessaryForURL:(id)a3 options:(unsigned __int16)a4;
- (BOOL)configureWithContentType:(id)a3 supportedMediaType:(unsigned __int8)a4;
- (BOOL)hasAdjustments;
- (BOOL)hasAudioAttachment;
- (BOOL)isAdjustmentSecondaryData;
- (BOOL)isBase;
- (BOOL)isBurst;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImportAsset:(id)a3;
- (BOOL)isGrouped;
- (BOOL)isHDR;
- (BOOL)isJpegPlusRAW;
- (BOOL)isLivePhoto;
- (BOOL)isOriginalAdjustmentData;
- (BOOL)isRender;
- (BOOL)isSDOF;
- (BOOL)isSloMo;
- (BOOL)isSpatialOverCapture;
- (BOOL)isTimelapse;
- (BOOL)isValidForReference;
- (BOOL)isVideoComplementOf:(id)a3;
- (BOOL)isViewable;
- (CGImage)avThumbnailOfSize:(unint64_t)a3 canceler:(id)a4 error:(id *)a5;
- (CGImage)imageThumbnailOfSize:(unint64_t)a3 canceler:(id)a4 error:(id *)a5;
- (CGImage)removeBlackBarsFromExifThumbnail:(CGImage *)a3 fullSize:(CGSize)a4;
- (CGSize)cgImageSize;
- (CGSize)cropEXIFThumbSize:(CGSize)result originalSize:(CGSize)a4;
- (CGSize)exifPixelSize;
- (CGSize)imageSize;
- (CGSize)orientedPixelSize;
- (CGSize)thumbnailSize;
- (CGSize)transformedPixelSize;
- (NSArray)sidecarAssets;
- (NSDate)creationDate;
- (NSDate)dateKey;
- (NSNumber)bitrate;
- (NSNumber)digitalZoomRatio;
- (NSNumber)durationTimeInterval;
- (NSNumber)exposureBias;
- (NSNumber)exposureTime;
- (NSNumber)fNumber;
- (NSNumber)flashFired;
- (NSNumber)focalLength;
- (NSNumber)focalLengthIn35mm;
- (NSNumber)fps;
- (NSNumber)iso;
- (NSNumber)meteringMode;
- (NSNumber)sampleRate;
- (NSNumber)trackFormat;
- (NSNumber)whiteBalance;
- (NSObject)redactedFileNameDescription;
- (NSSet)keywordTitles;
- (NSString)accessibilityDescription;
- (NSString)assetDescription;
- (NSString)burstUUID;
- (NSString)cameraMake;
- (NSString)cameraModel;
- (NSString)codec;
- (NSString)description;
- (NSString)formattedCameraModel;
- (NSString)importIdentifier;
- (NSString)lensModel;
- (NSString)parentFolderPath;
- (NSString)title;
- (NSTimeZone)timeZone;
- (PFMetadata)metadata;
- (PHImportAsset)initWithSource:(id)a3;
- (PHImportAsset)initWithSource:(id)a3 url:(id)a4 type:(id)a5 supportedMediaType:(unsigned __int8)a6 uuid:(id)a7;
- (PHImportSource)source;
- (id)adjustmentSecondarySidecar;
- (id)adjustmentSidecar;
- (id)basenameForOriginalAdjustmentData;
- (id)checkForSidecarWithExtension:(id)a3;
- (id)copyFromURL:(id)a3 toURL:(id)a4;
- (id)descriptionWithPrefix:(id)a3;
- (id)duplicateAssetsForLibrary:(id)a3;
- (id)groupingUUID;
- (id)importRecordForPrimaryAsset;
- (id)livePhotoPairingIdentifier;
- (id)makeImportIdentifier;
- (id)originalAdjustmentSidecar;
- (id)originatingAssetID;
- (id)relatedAssets;
- (id)resourceTypes;
- (id)sizeKey;
- (id)slmSidecar;
- (id)spatialOverCaptureIdentifier;
- (id)stripMarkerFromName:(id)a3 markerLocation:(unint64_t)a4;
- (id)thumbnailForSize:(unint64_t)a3 priority:(unsigned __int8)a4 atEnd:(id)a5;
- (id)validateMetadataForImportRecord:(id)a3;
- (id)xmpSidecar;
- (int)burstPickType;
- (unint64_t)approximateBytesRequiredToImport;
- (unint64_t)relatedBytes;
- (unint64_t)sidecarAssetBytes;
- (unsigned)orientation;
- (void)_accessMetadata:(id)a3;
- (void)_addRelatedRecordsToRecord:(id)a3 primaryRecord:(id)a4;
- (void)_loadSidecarFiles;
- (void)_setMetadata:(id)a3;
- (void)addBurstAsset:(id)a3;
- (void)addSidecarAsset:(id)a3;
- (void)configureSidecarTypeForExtension:(id)a3;
- (void)copyToURL:(id)a3 completionHandler:(id)a4;
- (void)loadMetadataAsync:(id)a3;
- (void)loadMetadataSync;
- (void)loadSidecarFiles;
- (void)removeSidecarAsset:(id)a3;
- (void)setAudioAsset:(id)a3;
- (void)setBase:(id)a3;
- (void)setLargeMovieRender:(id)a3;
- (void)setLargeRender:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setRawAsset:(id)a3;
- (void)setSpatialOverCapture:(id)a3;
- (void)setVideoComplement:(id)a3;
- (void)takeAsVideoComplement:(id)a3;
- (void)thumbnailUsingRequest:(id)a3 atEnd:(id)a4;
- (void)updateIsRAW:(BOOL)a3 contentType:(id)a4;
@end

@implementation PHImportAsset

- (PHImportSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqualToImportAsset:(id)a3
{
  v4 = a3;
  v5 = [(PHImportAsset *)self hash];
  if (v5 == [v4 hash])
  {
    v6 = [(PHImportAsset *)self relatedAssets];
    v7 = [v4 relatedAssets];
    v8 = [v6 count];
    if (v8 == [v7 count] && objc_msgSend(v6, "count"))
    {
      v9 = 0;
      do
      {
        v10 = [v6 objectAtIndexedSubscript:v9];
        v11 = [v7 objectAtIndexedSubscript:v9];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < [v6 count]);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PHImportAsset *)self isEqualToImportAsset:v5];
  }

  return v6;
}

void __21__PHImportAsset_hash__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[37])
  {
    v6 = [v2 fileName];
    v3 = [v6 hash];
    v4 = [*(a1 + 32) fileSize] + v3;
    v5 = [*(a1 + 32) creationDate];
    *(*(a1 + 32) + 296) = v4 + [v5 hash];
  }
}

- (id)duplicateAssetsForLibrary:(id)a3
{
  duplicates = self->_duplicates;
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(NSMutableDictionary *)duplicates objectForKeyedSubscript:v5];
  v7 = [v6 valueForKey:@"objectID"];

  v8 = [v4 fetchPHObjectsForOIDs:v7];

  return v8;
}

- (id)sizeKey
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(PHImportAsset *)self fileSize];

  return [v2 numberWithUnsignedLongLong:v3];
}

- (NSDate)dateKey
{
  v3 = [(PHImportAsset *)self creationDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHImportAsset *)self fileCreationDate];
  }

  v6 = v5;

  return v6;
}

- (NSString)accessibilityDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PHImportAsset_accessibilityDescription__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__PHImportAsset_accessibilityDescription__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) artworkContentDescription];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)assetDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PHImportAsset_assetDescription__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__PHImportAsset_assetDescription__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) captionAbstract];

  return MEMORY[0x1EEE66BB8]();
}

- (NSSet)keywordTitles
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PHImportAsset_keywordTitles__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __30__PHImportAsset_keywordTitles__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 72) keywords];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (NSString)title
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__PHImportAsset_title__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __22__PHImportAsset_title__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) title];

  return MEMORY[0x1EEE66BB8]();
}

- (NSTimeZone)timeZone
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__PHImportAsset_timeZone__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __25__PHImportAsset_timeZone__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) timeZone];

  return MEMORY[0x1EEE66BB8]();
}

- (NSDate)creationDate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHImportAsset_creationDate__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__PHImportAsset_creationDate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) utcCreationDate];

  return MEMORY[0x1EEE66BB8]();
}

- (id)originatingAssetID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PHImportAsset_originatingAssetID__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__PHImportAsset_originatingAssetID__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) originatingAssetIdentifier];

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyToURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHImportAsset *)self filePresenter];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6581;
  v24 = __Block_byref_object_dispose__6582;
  v25 = 0;
  if (v8)
  {
    [MEMORY[0x1E696ABF8] addFilePresenter:v8];
    v9 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:v8];
    v10 = [(PHImportAsset *)self url];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__PHImportAsset_copyToURL_completionHandler___block_invoke;
    v18[3] = &unk_1E75A4648;
    v18[5] = &v20;
    v19 = 0;
    v18[4] = self;
    [v9 coordinateReadingItemAtURL:v10 options:1 writingItemAtURL:v6 options:0 error:&v19 byAccessor:v18];
    v11 = v19;

    if (v11)
    {
      v12 = [PHImportException alloc];
      v13 = [(PHImportAsset *)self url];
      v14 = [v13 path];
      v15 = [(PHImportException *)v12 initWithType:0 path:v14 underlyingError:v11 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1776];
      v16 = v21[5];
      v21[5] = v15;
    }

    [MEMORY[0x1E696ABF8] removeFilePresenter:v8];
  }

  else
  {
    v11 = [(PHImportAsset *)self url];
    v17 = [(PHImportAsset *)self copyFromURL:v11 toURL:v6];
    v9 = v21[5];
    v21[5] = v17;
  }

  v7[2](v7, v6, v21[5]);
  _Block_object_dispose(&v20, 8);
}

uint64_t __45__PHImportAsset_copyToURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) copyFromURL:a2 toURL:a3];

  return MEMORY[0x1EEE66BB8]();
}

- (id)copyFromURL:(id)a3 toURL:(id)a4
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultManager];
  v17 = 0;
  v10 = [v9 copyItemAtURL:v8 toURL:v7 error:&v17];

  v11 = v17;
  v12 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = [PHImportException alloc];
    v14 = [(PHImportAsset *)self url];
    v15 = [v14 path];
    v12 = [(PHImportException *)v13 initWithType:0 path:v15 underlyingError:v11 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1760];
  }

  return v12;
}

- (void)_addRelatedRecordsToRecord:(id)a3 primaryRecord:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PHImportAsset *)self largeRender];

  if (v8)
  {
    v9 = [PHImportRecord alloc];
    v10 = [(PHImportAsset *)self largeRender];
    v11 = [(PHImportRecord *)v9 initWithImportAsset:v10];

    [v6 addRelatedRecord:v11];
    v12 = [(PHImportAsset *)self largeRender];
    [v12 _addRelatedRecordsToRecord:v11 primaryRecord:v7];
  }

  v13 = [(PHImportAsset *)self largeMovieRender];

  if (v13)
  {
    v14 = [PHImportRecord alloc];
    v15 = [(PHImportAsset *)self largeMovieRender];
    v16 = [(PHImportRecord *)v14 initWithImportAsset:v15];

    [v6 addRelatedRecord:v16];
    v17 = [(PHImportAsset *)self largeMovieRender];
    [v17 _addRelatedRecordsToRecord:v16 primaryRecord:v7];
  }

  v18 = [(PHImportAsset *)self rawAsset];

  if (v18)
  {
    v19 = [PHImportRecord alloc];
    v20 = [(PHImportAsset *)self rawAsset];
    v21 = [(PHImportRecord *)v19 initWithImportAsset:v20];

    [v6 addRelatedRecord:v21];
    v22 = [(PHImportAsset *)self rawAsset];
    [v22 _addRelatedRecordsToRecord:v21 primaryRecord:v7];
  }

  v23 = [(PHImportAsset *)self videoComplement];

  if (v23)
  {
    v24 = [PHImportRecord alloc];
    v25 = [(PHImportAsset *)self videoComplement];
    v26 = [(PHImportRecord *)v24 initWithImportAsset:v25];

    [v6 addRelatedRecord:v26];
    v27 = [(PHImportAsset *)self videoComplement];
    [v27 _addRelatedRecordsToRecord:v26 primaryRecord:v7];
  }

  v28 = [(PHImportAsset *)self audioAsset];

  if (v28)
  {
    v29 = [PHImportRecord alloc];
    v30 = [(PHImportAsset *)self audioAsset];
    v31 = [(PHImportRecord *)v29 initWithImportAsset:v30];

    [v6 addRelatedRecord:v31];
    v32 = [(PHImportAsset *)self audioAsset];
    [v32 _addRelatedRecordsToRecord:v31 primaryRecord:v7];
  }

  v33 = [(PHImportAsset *)self spatialOverCapture];

  if (v33)
  {
    v34 = [PHImportRecord alloc];
    v35 = [(PHImportAsset *)self spatialOverCapture];
    v36 = [(PHImportRecord *)v34 initWithImportAsset:v35];

    [v6 addRelatedRecord:v36];
    v37 = [(PHImportAsset *)self spatialOverCapture];
    [v37 _addRelatedRecordsToRecord:v36 primaryRecord:v7];
  }

  v38 = [(PHImportAsset *)self base];

  if (v38)
  {
    v39 = [PHImportRecord alloc];
    v40 = [(PHImportAsset *)self base];
    v41 = [(PHImportRecord *)v39 initWithImportAsset:v40];

    [v6 addRelatedRecord:v41];
    v42 = [(PHImportAsset *)self base];
    [v42 _addRelatedRecordsToRecord:v41 primaryRecord:v7];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v43 = [(PHImportAsset *)self sidecarAssets];
  v44 = [v43 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v50;
    do
    {
      v47 = 0;
      do
      {
        if (*v50 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [[PHImportRecord alloc] initWithImportAsset:*(*(&v49 + 1) + 8 * v47)];
        [v6 addRelatedRecord:v48];

        ++v47;
      }

      while (v45 != v47);
      v45 = [v43 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v45);
  }
}

- (id)importRecordForPrimaryAsset
{
  v3 = [[PHImportRecord alloc] initWithImportAsset:self];
  [(PHImportAsset *)self loadSidecarFiles];
  [(PHImportAsset *)self _addRelatedRecordsToRecord:v3 primaryRecord:v3];
  v4 = [(PHImportRecord *)v3 importAsset];
  v5 = [v4 resourceTypes];
  v6 = [PHAssetCreationRequest supportsImportAssetResourceTypes:v5];

  if (v6)
  {
    if (![v4 isDuplicate] || !objc_msgSend(v4, "isBurst"))
    {
      goto LABEL_7;
    }

    v7 = [v4 fileName];
    v8 = [(PHImportExceptionRecorder *)v3 addExceptionWithType:4 path:v7 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1705];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [v4 resourceTypes];
    v11 = PHDescriptionsForResourceTypes(v10);
    v12 = [v11 componentsJoinedByString:{@", "}];
    v7 = [v9 ph_genericErrorWithLocalizedDescription:{@"Unsupported resource set: %@", v12}];

    v13 = [v4 fileName];
    v14 = [(PHImportExceptionRecorder *)v3 addExceptionWithType:0 path:v13 underlyingError:v7 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1702];
  }

LABEL_7:
  v15 = [(PHImportAsset *)self metadata];
  [v15 orientedPixelSize];
  v17 = v16;
  v19 = v18;

  if (v19 <= v17)
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  if (v17 > v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = [(PHImportRecord *)v3 timers];
  [v22 setAspectRatio:v21];

  return v3;
}

- (id)resourceTypes
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
  [v3 addObject:v4];

  v5 = [(PHImportAsset *)self rawAsset];

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(PHImportAsset *)self rawAsset];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "resourceType")}];
    [v3 addObject:v8];
  }

  v9 = [(PHImportAsset *)self videoComplement];

  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(PHImportAsset *)self videoComplement];
    v12 = [v10 numberWithInteger:{objc_msgSend(v11, "resourceType")}];
    [v3 addObject:v12];
  }

  v13 = [(PHImportAsset *)self largeRender];

  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [(PHImportAsset *)self largeRender];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "resourceType")}];
    [v3 addObject:v16];

    v17 = [(PHImportAsset *)self largeRender];
    v18 = [v17 videoComplement];

    if (v18)
    {
      v19 = MEMORY[0x1E696AD98];
      v20 = [(PHImportAsset *)self largeRender];
      v21 = [v20 videoComplement];
      v22 = [v19 numberWithInteger:{objc_msgSend(v21, "resourceType")}];
      [v3 addObject:v22];
    }
  }

  v23 = [(PHImportAsset *)self audioAsset];

  if (v23)
  {
    v24 = MEMORY[0x1E696AD98];
    v25 = [(PHImportAsset *)self audioAsset];
    v26 = [v24 numberWithInteger:{objc_msgSend(v25, "resourceType")}];
    [v3 addObject:v26];
  }

  v27 = [(PHImportAsset *)self largeMovieRender];

  if (v27)
  {
    v28 = MEMORY[0x1E696AD98];
    v29 = [(PHImportAsset *)self largeMovieRender];
    v30 = [v28 numberWithInteger:{objc_msgSend(v29, "resourceType")}];
    [v3 addObject:v30];
  }

  v31 = [(PHImportAsset *)self spatialOverCapture];

  if (v31)
  {
    v32 = MEMORY[0x1E696AD98];
    v33 = [(PHImportAsset *)self spatialOverCapture];
    v34 = [v32 numberWithInteger:{objc_msgSend(v33, "resourceType")}];
    [v3 addObject:v34];

    v35 = [(PHImportAsset *)self spatialOverCapture];
    v36 = [v35 videoComplement];

    if (v36)
    {
      v37 = MEMORY[0x1E696AD98];
      v38 = [(PHImportAsset *)self spatialOverCapture];
      v39 = [v38 videoComplement];
      v40 = [v37 numberWithInteger:{objc_msgSend(v39, "resourceType")}];
      [v3 addObject:v40];
    }
  }

  v41 = [(PHImportAsset *)self base];

  if (v41)
  {
    v42 = MEMORY[0x1E696AD98];
    v43 = [(PHImportAsset *)self base];
    v44 = [v42 numberWithInteger:{objc_msgSend(v43, "resourceType")}];
    [v3 addObject:v44];

    v45 = [(PHImportAsset *)self base];
    v46 = [v45 videoComplement];

    if (v46)
    {
      v47 = MEMORY[0x1E696AD98];
      v48 = [(PHImportAsset *)self base];
      v49 = [v48 videoComplement];
      v50 = [v47 numberWithInteger:{objc_msgSend(v49, "resourceType")}];
      [v3 addObject:v50];
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = [(PHImportAsset *)self sidecarAssets];
  v52 = [v51 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v59;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v58 + 1) + 8 * i), "resourceType")}];
        [v3 addObject:v56];
      }

      v53 = [v51 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v53);
  }

  return v3;
}

- (id)validateMetadataForImportRecord:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PHImportAsset *)self isSidecar])
  {
    v5 = 0;
    goto LABEL_19;
  }

  v6 = [(PHImportAsset *)self url];
  if (v6 || ([v4 downloadedPath], (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = MEMORY[0x1E695DFF8], objc_msgSend(v4, "downloadedPath"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "fileURLWithPath:", v12), v6 = objc_claimAutoreleasedReturnValue(), v12, v10, v6))
  {
    if (![(PHImportAsset *)self _loadMetadataIfNecessaryForURL:v6 options:22])
    {
      v7 = PLImportGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(PHImportAsset *)self redactedFileNameDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to get ImageIO metadata for file %@", &buf, 0xCu);
      }

      v9 = [v6 path];
      v5 = [v4 addExceptionWithType:2 path:v9 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1623];

      goto LABEL_18;
    }

    if ([(PHImportAsset *)self isImage]&& ![(PHImportAsset *)self isRAW])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v18 = 0x2020000000;
      v19 = 1;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__PHImportAsset_validateMetadataForImportRecord___block_invoke;
      v16[3] = &unk_1E75AADC0;
      v16[4] = self;
      v16[5] = &buf;
      [(PHImportAsset *)self _accessMetadata:v16];
      if (*(*(&buf + 1) + 24))
      {
        v5 = 0;
      }

      else
      {
        v15 = [v6 path];
        v5 = [v4 addExceptionWithType:2 path:v15 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportAsset.m" line:1618];
      }

      _Block_object_dispose(&buf, 8);
      goto LABEL_18;
    }
  }

  else
  {
    v13 = PLImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "self.url and record.downloadedPath are nil", &buf, 2u);
    }

    v6 = 0;
  }

  v5 = 0;
LABEL_18:

LABEL_19:

  return v5;
}

uint64_t __49__PHImportAsset_validateMetadataForImportRecord___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) exifPixelSize];
  v4 = v3 != *MEMORY[0x1E695F060];
  if (v5 != *(MEMORY[0x1E695F060] + 8))
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (BOOL)_loadMetadataIfNecessaryForURL:(id)a3 options:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6581;
    v19 = __Block_byref_object_dispose__6582;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__PHImportAsset__loadMetadataIfNecessaryForURL_options___block_invoke;
    v14[3] = &unk_1E75AADC0;
    v14[4] = self;
    v14[5] = &v15;
    [(PHImportAsset *)self _accessMetadata:v14];
    v7 = v16[5];
    if (v7 && ([v7 isSameForURL:v6 andOptions:v4] & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69C0718]);
      v10 = [v16[5] timeZoneLookup];
      v11 = [v9 initWithMediaURL:v6 options:v4 timeZoneLookup:v10 shouldCache:0];

      v8 = v11 != 0;
      if (v11)
      {
        [(PHImportAsset *)self setMetadata:v11];
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 1;
  }

  if (self->_metadata)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGImage)avThumbnailOfSize:(unint64_t)a3 canceler:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (([v7 isCanceled] & 1) != 0 || -[PHImportAsset isAudio](self, "isAudio"))
  {
    goto LABEL_25;
  }

  v8 = MEMORY[0x1E6988168];
  v9 = [(PHImportAsset *)self url];
  v10 = [v8 URLAssetWithURL:v9 options:0];

  v11 = MEMORY[0x1E6987FE0];
  v12 = [v10 commonMetadata];
  v13 = [v11 metadataItemsFromArray:v12 withKey:*MEMORY[0x1E6987680] keySpace:*MEMORY[0x1E6987838]];

  if ([v13 count])
  {
    if (([v7 isCanceled] & 1) == 0)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      v15 = CGDataProviderCreateWithCFData([v14 dataValue]);

      v16 = CGImageCreateWithJPEGDataProvider(v15, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v15);
      goto LABEL_23;
    }

LABEL_22:

LABEL_25:
    v33 = 0;
    goto LABEL_26;
  }

  v17 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v10];
  objc_initWeak(&location, v7);
  [v17 setAppliesPreferredTrackTransform:1];
  v18 = [MEMORY[0x1E69C0708] mainVideoTrackForAsset:v10];
  [v18 naturalSize];
  v35 = v20;
  v36 = v19;
  if (v18)
  {
    [v18 preferredTransform];
    v21 = *buf;
    v22 = *&buf[16];
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
  }

  v23 = vmlaq_n_f64(vmulq_n_f64(v22, *&v35), v21, *&v36);
  v24 = v23.f64[0] <= v23.f64[1];
  v25 = v23.f64[0] * a3 / v23.f64[1];
  v26 = v23.f64[1] * a3 / v23.f64[0];
  if (v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = a3;
  }

  if (v24)
  {
    v26 = a3;
  }

  [v17 setMaximumSize:{v27, v26, v35, v36}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __50__PHImportAsset_avThumbnailOfSize_canceler_error___block_invoke;
  v38[3] = &unk_1E75A7300;
  v28 = v17;
  v39 = v28;
  objc_copyWeak(&v40, &location);
  [v7 setCancelBlock:v38];
  v29 = [v7 isCanceled];
  if (v29)
  {
    v16 = 0;
  }

  else
  {
    v37 = 0;
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    v16 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v28 atTime:buf actualTime:0 error:&v37];
    v30 = v37;
    if (v30)
    {
      v31 = PLImportGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [(PHImportAsset *)self redactedFileNameDescription];
        *buf = 138412546;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "Unable to make an image for %@ (%@)", buf, 0x16u);
      }
    }
  }

  objc_destroyWeak(&v40);

  objc_destroyWeak(&location);
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_23:

  if (!v16)
  {
    goto LABEL_25;
  }

  v33 = CFAutorelease(v16);
LABEL_26:

  return v33;
}

void __50__PHImportAsset_avThumbnailOfSize_canceler_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAllCGImageGeneration];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCancelBlock:0];
}

- (CGImage)imageThumbnailOfSize:(unint64_t)a3 canceler:(id)a4 error:(id *)a5
{
  v38[6] = *MEMORY[0x1E69E9840];
  if ([a4 isCanceled])
  {
    return 0;
  }

  v7 = [(PHImportAsset *)self url];
  v8 = CGImageSourceCreateWithURL(v7, 0);

  if (!v8)
  {
    v26 = PLImportGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [(PHImportAsset *)self redactedFileNameDescription];
      v33 = 138412290;
      v34 = v27;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Unable to get an image source for %@", &v33, 0xCu);
    }

    return 0;
  }

  v9 = *MEMORY[0x1E696E0E8];
  v10 = MEMORY[0x1E695E118];
  v11 = *MEMORY[0x1E696E000];
  v37[0] = *MEMORY[0x1E696E0E8];
  v37[1] = v11;
  v38[0] = MEMORY[0x1E695E118];
  v38[1] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E696DFE8];
  v37[2] = *MEMORY[0x1E696DFF0];
  v37[3] = v12;
  v13 = MEMORY[0x1E695E110];
  if (a3 <= 0xA0)
  {
    v14 = MEMORY[0x1E695E110];
  }

  else
  {
    v14 = MEMORY[0x1E695E118];
  }

  v38[2] = MEMORY[0x1E695E118];
  v38[3] = v14;
  v15 = *MEMORY[0x1E696E0A8];
  v38[4] = MEMORY[0x1E695E110];
  v16 = *MEMORY[0x1E696E100];
  v37[4] = v15;
  v37[5] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v38[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v8, 0, v18);

  if (ThumbnailAtIndex)
  {
    v20 = CFAutorelease(ThumbnailAtIndex);
    v35[0] = v9;
    v35[1] = v11;
    v36[0] = v10;
    v36[1] = v10;
    v35[2] = v15;
    v36[2] = v13;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v21);

    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      CGImageRelease(ImageAtIndex);
      v25 = [(PHImportAsset *)self removeBlackBarsFromExifThumbnail:v20 fullSize:Width, Height];
      if (v25)
      {
        v20 = v25;
      }
    }

    else
    {
      v30 = PLImportGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [(PHImportAsset *)self redactedFileNameDescription];
        v33 = 138412290;
        v34 = v31;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Unable to make a full size image for %@", &v33, 0xCu);
      }
    }
  }

  else
  {
    v28 = PLImportGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(PHImportAsset *)self redactedFileNameDescription];
      v33 = 138412290;
      v34 = v29;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Unable to make an exif size image for %@", &v33, 0xCu);
    }

    v20 = 0;
  }

  CFRelease(v8);
  return v20;
}

- (CGImage)removeBlackBarsFromExifThumbnail:(CGImage *)a3 fullSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v8 = CGImageGetWidth(a3);
  v9 = CGImageGetHeight(v6);
  [(PHImportAsset *)self cropEXIFThumbSize:v8 originalSize:v9, width, height];
  if (v10 == v8 && v11 == v9)
  {
    return v6;
  }

  v16.size.width = floor(v10);
  v16.size.height = floor(v11);
  v16.origin.x = round((v8 - v10) * 0.5);
  v16.origin.y = round((v9 - v11) * 0.5);
  v13 = CGImageCreateWithImageInRect(v6, v16);
  if (!v13)
  {
    return 0;
  }

  return CFAutorelease(v13);
}

- (CGSize)cropEXIFThumbSize:(CGSize)result originalSize:(CGSize)a4
{
  v4 = result.width / result.height;
  v5 = a4.width / a4.height;
  v6 = vabdd_f64(v5, result.width / result.height);
  if (result.width / result.height > 1.0 && v5 > 1.0)
  {
    if (v6 <= 0.000001)
    {
LABEL_39:
      width = result.width;
      goto LABEL_40;
    }

    v14 = result.width / v5;
LABEL_31:
    result.height = floor(v14);
    goto LABEL_39;
  }

  if (v4 < 1.0 && v5 < 1.0)
  {
    if (v6 <= 0.000001)
    {
      goto LABEL_39;
    }

    v15 = result.height * v5;
LABEL_36:
    width = floor(v15);
    goto LABEL_40;
  }

  if (v4 < 1.0 && v5 > 1.0)
  {
    if (v6 <= 0.000001)
    {
      goto LABEL_39;
    }

    v15 = result.height / v5;
    goto LABEL_36;
  }

  if (v4 > 1.0 && v5 < 1.0)
  {
    if (v6 <= 0.000001)
    {
      goto LABEL_39;
    }

    v14 = result.width * v5;
    goto LABEL_31;
  }

  v11 = v4 > 1.0 && v5 == 1.0;
  width = result.height;
  if (!v11)
  {
    if (v5 == 1.0 && v4 <= 1.0)
    {
      result.height = result.width;
    }

    goto LABEL_39;
  }

LABEL_40:
  if (result.height)
  {
    result.height = result.height + -1.0;
  }

  v16 = width + -1.0;
  if ((width & 1) == 0)
  {
    v16 = width;
  }

  result.width = v16;
  return result;
}

- (void)thumbnailUsingRequest:(id)a3 atEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHImportAsset *)self source];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PHImportAsset_thumbnailUsingRequest_atEnd___block_invoke;
  v11[3] = &unk_1E75AA870;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 dispatchAssetDataRequestAsyncUsingBlock:v11];
}

void __45__PHImportAsset_thumbnailUsingRequest_atEnd___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCanceled])
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 asset];
    v7 = [v6 fileName];
    v8 = [v5 stringWithFormat:@"Request for thumbnail for %@ was canceled.", v7];
    v25[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v4 errorWithDomain:@"com.apple.ImportErrorDomain" code:-4 userInfo:v9];
    (*(v2 + 16))(v2, 0, v3, v10);
  }

  else
  {
    v6 = [*(a1 + 32) requestAsset];
    v11 = [v6 isImage];
    v12 = [*(a1 + 32) longestSide];
    v13 = *(a1 + 32);
    if (v11)
    {
      v23 = 0;
      v14 = &v23;
      v15 = [v6 imageThumbnailOfSize:v12 canceler:v13 error:&v23];
    }

    else
    {
      v22 = 0;
      v14 = &v22;
      v15 = [v6 avThumbnailOfSize:v12 canceler:v13 error:&v22];
    }

    v16 = v15;
    v7 = *v14;
    if (v16)
    {
      Width = CGImageGetWidth(v16);
      Height = CGImageGetHeight(v16);
      [*(a1 + 40) thumbnailSize];
      if (v20 != Width || v19 != Height)
      {
        [*(a1 + 40) setThumbnailSize:{Width, Height}];
      }

      [*(a1 + 40) loadMetadataSync];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)thumbnailForSize:(unint64_t)a3 priority:(unsigned __int8)a4 atEnd:(id)a5
{
  v5 = a4;
  v8 = a5;
  if ([(PHImportAsset *)self isSidecar])
  {
    (*(v8 + 2))(v8, 0, 0, 0);
    v9 = 0;
  }

  else
  {
    v9 = [[PHImportAssetThumbnailDataRequest alloc] initWithAsset:self longestSide:a3 priority:v5];
    [(PHImportAsset *)self thumbnailUsingRequest:v9 atEnd:v8];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v9 = a3;
  os_unfair_lock_assert_owner(&self->_metadataLock);
  objc_storeStrong(&self->_metadata, a3);
  if (![(PHImportAsset *)self fileSize])
  {
    -[PHImportAsset setFileSize:](self, "setFileSize:", [v9 fileSize]);
  }

  v5 = [v9 fileCreationDate];
  v6 = [(PHImportAsset *)self fileCreationDate];

  if (!v6 && v5)
  {
    [(PHImportAsset *)self setFileCreationDate:v5];
  }

  v7 = [v9 fileModificationDate];
  v8 = [(PHImportAsset *)self fileModificationDate];

  if (!v8 && v7)
  {
    [(PHImportAsset *)self setFileModificationDate:v7];
  }
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__PHImportAsset_setMetadata___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PHImportAsset *)self _accessMetadata:v6];
}

- (PFMetadata)metadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__PHImportAsset_metadata__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)loadMetadataAsync:(id)a3
{
  v4 = a3;
  v5 = [(PHImportAsset *)self source];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PHImportAsset_loadMetadataAsync___block_invoke;
  v7[3] = &unk_1E75AA820;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchAssetDataRequestAsyncUsingBlock:v7];
}

uint64_t __35__PHImportAsset_loadMetadataAsync___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadMetadataSync];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)loadMetadataSync
{
  v3 = [(PHImportAsset *)self url];
  [(PHImportAsset *)self _loadMetadataIfNecessaryForURL:v3 options:29];
}

- (void)addBurstAsset:(id)a3
{
  v5 = a3;
  relatedBurstAssets = self->_relatedBurstAssets;
  v11 = v5;
  if (!relatedBurstAssets)
  {
    v7 = objc_opt_new();
    v8 = self->_relatedBurstAssets;
    self->_relatedBurstAssets = v7;

    v5 = v11;
    relatedBurstAssets = self->_relatedBurstAssets;
  }

  [(NSMutableArray *)relatedBurstAssets addObject:v5];
  burstPick = self->_burstPick;
  p_burstPick = &self->_burstPick;
  if (!burstPick && ([v11 burstPickType] & 4) != 0)
  {
    objc_storeStrong(p_burstPick, a3);
  }
}

- (void)setAudioAsset:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLImportGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(PHImportAsset *)v4 redactedFileNameDescription];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](v4, "resourceType")}];
      v18 = v16;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v14 = PHDescriptionsForResourceTypes(v15);
      v7 = [v14 componentsJoinedByString:{@", "}];
      v8 = [(PHImportAsset *)self redactedFileNameDescription];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v17 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v11 = PHDescriptionsForResourceTypes(v10);
      v12 = [v11 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as an base image of %@ (%@)", buf, 0x2Au);
    }

    [(PHImportAsset *)v4 setResourceType:3];
  }

  audioAsset = self->_audioAsset;
  self->_audioAsset = v4;
}

- (void)setBase:(id)a3
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  if (![(PHImportAsset *)self isImage])
  {
    if (![(PHImportAsset *)self isMovie])
    {
      v15 = PLImportGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(PHImportAsset *)self redactedFileNameDescription];
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
        v42 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        v33 = PHDescriptionsForResourceTypes(v32);
        v34 = [v33 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v49 = v30;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "Trying to set a SOC file on an unexpected primary asset (%@ - %@)", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v16 = [v4 isMovie];
    p_super = PLImportGetLog();
    v17 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v17)
      {
        v18 = [v4 redactedFileNameDescription];
        v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
        v44 = v41;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        v37 = PHDescriptionsForResourceTypes(v39);
        v19 = [v37 componentsJoinedByString:{@", "}];
        v20 = [(PHImportAsset *)self redactedFileNameDescription];
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
        v43 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v23 = PHDescriptionsForResourceTypes(v22);
        v24 = [v23 componentsJoinedByString:{@", "}];
        *buf = 138413058;
        v49 = v18;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v20;
        v54 = 2112;
        v55 = v24;
        _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as an base movie of %@ (%@)", buf, 0x2Au);
      }

      [v4 setResourceType:12];
      goto LABEL_17;
    }

    if (!v17)
    {
      goto LABEL_18;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    v45 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v27 = PHDescriptionsForResourceTypes(v26);
    v28 = [v27 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v49 = v28;
    v29 = "Expected soc to be a movie (%@)";
LABEL_21:
    _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, v29, buf, 0xCu);

    goto LABEL_18;
  }

  v5 = [v4 isImage];
  p_super = PLImportGetLog();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = [v4 redactedFileNameDescription];
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
      v47 = v40;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v36 = PHDescriptionsForResourceTypes(v38);
      v9 = [v36 componentsJoinedByString:{@", "}];
      v10 = [(PHImportAsset *)self redactedFileNameDescription];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v46 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v13 = PHDescriptionsForResourceTypes(v12);
      v14 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v49 = v8;
      v50 = 2112;
      v51 = v9;
      v52 = 2112;
      v53 = v10;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as an base image of %@ (%@)", buf, 0x2Au);
    }

    [v4 setResourceType:8];
    v15 = [v4 videoComplement];
    [v15 setResourceType:11];
LABEL_16:

LABEL_17:
    v35 = v4;
    p_super = &self->_base->super;
    self->_base = v35;
    goto LABEL_18;
  }

  if (v7)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    v56[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v27 = PHDescriptionsForResourceTypes(v26);
    v28 = [v27 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v49 = v28;
    v29 = "Expected soc to be an image (%@)";
    goto LABEL_21;
  }

LABEL_18:
}

- (void)setSpatialOverCapture:(id)a3
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  if (![(PHImportAsset *)self isImage])
  {
    if (![(PHImportAsset *)self isMovie])
    {
      v15 = PLImportGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(PHImportAsset *)self redactedFileNameDescription];
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
        v42 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        v33 = PHDescriptionsForResourceTypes(v32);
        v34 = [v33 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v49 = v30;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "Trying to set a SOC file on an unexpected primary asset (%@ - %@)", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v16 = [v4 isMovie];
    p_super = PLImportGetLog();
    v17 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v17)
      {
        v18 = [v4 redactedFileNameDescription];
        v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
        v44 = v41;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        v37 = PHDescriptionsForResourceTypes(v39);
        v19 = [v37 componentsJoinedByString:{@", "}];
        v20 = [(PHImportAsset *)self redactedFileNameDescription];
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
        v43 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v23 = PHDescriptionsForResourceTypes(v22);
        v24 = [v23 componentsJoinedByString:{@", "}];
        *buf = 138413058;
        v49 = v18;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v20;
        v54 = 2112;
        v55 = v24;
        _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as an SOC movie of %@ (%@)", buf, 0x2Au);
      }

      [v4 setResourceType:14];
      goto LABEL_17;
    }

    if (!v17)
    {
      goto LABEL_18;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    v45 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v27 = PHDescriptionsForResourceTypes(v26);
    v28 = [v27 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v49 = v28;
    v29 = "Expected soc to be a movie (%@)";
LABEL_21:
    _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, v29, buf, 0xCu);

    goto LABEL_18;
  }

  v5 = [v4 isImage];
  p_super = PLImportGetLog();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = [v4 redactedFileNameDescription];
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
      v47 = v40;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v36 = PHDescriptionsForResourceTypes(v38);
      v9 = [v36 componentsJoinedByString:{@", "}];
      v10 = [(PHImportAsset *)self redactedFileNameDescription];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v46 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v13 = PHDescriptionsForResourceTypes(v12);
      v14 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v49 = v8;
      v50 = 2112;
      v51 = v9;
      v52 = 2112;
      v53 = v10;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as an SOC image of %@ (%@)", buf, 0x2Au);
    }

    [v4 setResourceType:13];
    v15 = [v4 videoComplement];
    [v15 setResourceType:15];
LABEL_16:

LABEL_17:
    v35 = v4;
    p_super = &self->_spatialOverCapture->super;
    self->_spatialOverCapture = v35;
    goto LABEL_18;
  }

  if (v7)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    v56[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v27 = PHDescriptionsForResourceTypes(v26);
    v28 = [v27 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v49 = v28;
    v29 = "Expected soc to be an image (%@)";
    goto LABEL_21;
  }

LABEL_18:
}

- (void)setLargeMovieRender:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_6:
    v16 = v5;
    p_super = &self->_largeMovieRender->super;
    self->_largeMovieRender = v16;
    goto LABEL_7;
  }

  v6 = [v4 isMovie];
  p_super = PLImportGetLog();
  v8 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = [v5 redactedFileNameDescription];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "resourceType")}];
      v25 = v23;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v21 = PHDescriptionsForResourceTypes(v22);
      v10 = [v21 componentsJoinedByString:{@", "}];
      v11 = [(PHImportAsset *)self redactedFileNameDescription];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v24 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v14 = PHDescriptionsForResourceTypes(v13);
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as a large movie render of %@ (%@)", buf, 0x2Au);
    }

    [v5 setResourceType:6];
    goto LABEL_6;
  }

  if (v8)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "resourceType")}];
    v34[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v19 = PHDescriptionsForResourceTypes(v18);
    v20 = [v19 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v27 = v20;
    _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "Expected largeRender to be a movie (%@)", buf, 0xCu);
  }

LABEL_7:
}

- (void)setLargeRender:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_6:
    v17 = v5;
    p_super = &self->_largeRender->super;
    self->_largeRender = v17;
    goto LABEL_7;
  }

  v6 = [v4 isImage];
  p_super = PLImportGetLog();
  v8 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = [v5 redactedFileNameDescription];
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "resourceType")}];
      v26 = v24;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v22 = PHDescriptionsForResourceTypes(v23);
      v10 = [v22 componentsJoinedByString:{@", "}];
      v11 = [(PHImportAsset *)self redactedFileNameDescription];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v25 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v14 = PHDescriptionsForResourceTypes(v13);
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as a large render of %@ (%@)", buf, 0x2Au);
    }

    [v5 setResourceType:5];
    v16 = [v5 videoComplement];
    [v16 setResourceType:10];

    goto LABEL_6;
  }

  if (v8)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "resourceType")}];
    v35[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v20 = PHDescriptionsForResourceTypes(v19);
    v21 = [v20 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v28 = v21;
    _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEBUG, "Expected largeRender to be an image (%@)", buf, 0xCu);
  }

LABEL_7:
}

- (void)setVideoComplement:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(PHImportAsset *)v4 isMovie];
    if ([(PHImportAsset *)self resourceType]== 1)
    {
      v6 = v5;
      v7 = 9;
LABEL_10:
      [(PHImportAsset *)v6 setResourceType:v7];
      goto LABEL_11;
    }

    if ([(PHImportAsset *)self resourceType]== 5)
    {
      v6 = v5;
      v7 = 10;
      goto LABEL_10;
    }

    resourceType = self->_resourceType;
    if (resourceType == 13)
    {
      v6 = v5;
      v7 = 15;
      goto LABEL_10;
    }

    if (resourceType == 8)
    {
      v6 = v5;
      v7 = 11;
      goto LABEL_10;
    }

    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(PHImportAsset *)v5 redactedFileNameDescription];
      v12 = [(PHImportAsset *)self redactedFileNameDescription];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
      v17 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v15 = PHDescriptionsForResourceTypes(v14);
      v16 = [v15 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Trying to set a video complement file (%@) on an unexpected primary asset (%@ - %@)", buf, 0x20u);
    }
  }

LABEL_11:
  videoComplement = self->_videoComplement;
  self->_videoComplement = v5;
}

- (void)setRawAsset:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (([v5 isRAW] & 1) == 0)
  {
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 fileName];
      v9 = [v8 pathExtension];
      v11 = 138412290;
      v12 = v9;
      v10 = "Expected rawAsset to be a RAW (%@)";
LABEL_10:
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, v10, &v11, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (![(PHImportAsset *)self isJPEG])
  {
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(PHImportAsset *)self fileName];
      v9 = [v8 pathExtension];
      v11 = 138412290;
      v12 = v9;
      v10 = "Expected primary asset to be a JPEG (%@)";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [v6 setResourceType:4];
LABEL_5:
  objc_storeStrong(&self->_rawAsset, a3);
LABEL_12:
}

- (BOOL)hasAdjustments
{
  v3 = [(PHImportAsset *)self adjustmentSidecar];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PHImportAsset *)self originalAdjustmentSidecar];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)xmpSidecar
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F102C4A0];

  return v3;
}

- (id)originalAdjustmentSidecar
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F102C488];

  return v3;
}

- (id)adjustmentSecondarySidecar
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F102C470];

  return v3;
}

- (id)adjustmentSidecar
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F102C458];

  return v3;
}

- (id)slmSidecar
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F102C440];

  return v3;
}

- (void)removeSidecarAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sidecarAssetsByType = self->_sidecarAssetsByType;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    [(NSMutableDictionary *)sidecarAssetsByType removeObjectForKey:v7];

    [v5 setFilePresenter:0];
  }

  else
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "sidecarAsset was nil", v9, 2u);
    }
  }
}

- (void)addSidecarAsset:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PHImportAsset *)self source];
    v6 = [v5 isPairedSidecar:v4];

    if ((v6 & 1) == 0)
    {
      v7 = PLImportGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [v4 redactedFileNameDescription];
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
        v28 = v26;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        v24 = PHDescriptionsForResourceTypes(v25);
        v9 = [v24 componentsJoinedByString:{@", "}];
        v10 = [(PHImportAsset *)self redactedFileNameDescription];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
        v27 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        v13 = PHDescriptionsForResourceTypes(v12);
        v14 = [v13 componentsJoinedByString:{@", "}];
        *buf = 138413058;
        v30 = v8;
        v31 = 2112;
        v32 = v9;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as a sidecar of %@ (%@) ", buf, 0x2Au);
      }

      v15 = [(PHImportAsset *)self sidecarAssetsByType];

      if (!v15)
      {
        v16 = objc_opt_new();
        [(PHImportAsset *)self setSidecarAssetsByType:v16];
      }

      sidecarAssetsByType = self->_sidecarAssetsByType;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
      [(NSMutableDictionary *)sidecarAssetsByType setObject:v4 forKeyedSubscript:v18];

      v19 = [PHImportAssetFilePresenter alloc];
      v20 = [(PHImportAsset *)self url];
      v21 = [v4 url];
      v22 = [(PHImportAssetFilePresenter *)v19 initWithPrimaryURL:v20 presentedURL:v21];
      [v4 setFilePresenter:v22];

      v23 = [(PHImportAsset *)self source];
      [v23 addPairedSidecar:v4];
    }
  }
}

- (unint64_t)sidecarAssetBytes
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) fileSize];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)sidecarAssets
{
  v2 = [(PHImportAsset *)self sidecarAssetsByType];
  v3 = [v2 allValues];

  return v3;
}

- (void)_loadSidecarFiles
{
  if (![(NSMutableDictionary *)self->_sidecarAssetsByType count])
  {
    if (![(PHImportAsset *)self isImage]&& [(PHImportAsset *)self isMovie]&& ![(PHImportAsset *)self isAVCHD])
    {
      v3 = [(PHImportAsset *)self checkForSidecarWithExtension:@"SLM"];
      [(PHImportAsset *)self addSidecarAsset:v3];
    }

    v4 = [(PHImportAsset *)self checkForSidecarWithExtension:@"AAE"];
    [(PHImportAsset *)self addSidecarAsset:v4];
  }
}

- (void)loadSidecarFiles
{
  loadSidecars = self->_loadSidecars;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PHImportAsset_loadSidecarFiles__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_sync(loadSidecars, block);
}

_BYTE *__33__PHImportAsset_loadSidecarFiles__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[60] & 1) == 0)
  {
    result = [result _loadSidecarFiles];
    *(*(a1 + 32) + 60) = 1;
  }

  return result;
}

- (id)checkForSidecarWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(PHImportAsset *)self url];
  v6 = [v5 URLByDeletingPathExtension];
  v7 = [v4 uppercaseString];
  v8 = [v6 URLByAppendingPathExtension:v7];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v8 path];
  LODWORD(v7) = [v9 fileExistsAtPath:v10];

  if (v7)
  {
    v11 = [(PHImportAsset *)self source];
    v12 = [PHImportAsset assetFileForURL:v8 source:v11];

    if (!v12)
    {
      v13 = [v8 URLByDeletingPathExtension];
      v14 = [v4 lowercaseString];
      v15 = [v13 URLByAppendingPathExtension:v14];

      v16 = [(PHImportAsset *)self source];
      v12 = [PHImportAsset assetFileForURL:v15 source:v16];

      v8 = v15;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)relatedBytes
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(PHImportAsset *)self relatedAssets];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 fileSize];
        v5 += v9 + [v8 relatedBytes];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)relatedAssets
{
  v3 = objc_opt_new();
  v4 = [(PHImportAsset *)self largeRender];

  if (v4)
  {
    v5 = [(PHImportAsset *)self largeRender];
    [v3 addObject:v5];
  }

  v6 = [(PHImportAsset *)self largeMovieRender];

  if (v6)
  {
    v7 = [(PHImportAsset *)self largeMovieRender];
    [v3 addObject:v7];
  }

  v8 = [(PHImportAsset *)self rawAsset];

  if (v8)
  {
    v9 = [(PHImportAsset *)self rawAsset];
  }

  else
  {
    v10 = [(PHImportAsset *)self videoComplement];

    if (!v10)
    {
      goto LABEL_10;
    }

    v9 = [(PHImportAsset *)self videoComplement];
  }

  v11 = v9;
  [v3 addObject:v9];

LABEL_10:
  v12 = [(PHImportAsset *)self audioAsset];

  if (v12)
  {
    v13 = [(PHImportAsset *)self audioAsset];
    [v3 addObject:v13];
  }

  v14 = [(PHImportAsset *)self spatialOverCapture];

  if (v14)
  {
    v15 = [(PHImportAsset *)self spatialOverCapture];
    [v3 addObject:v15];
  }

  v16 = [(PHImportAsset *)self base];

  if (v16)
  {
    v17 = [(PHImportAsset *)self base];
    [v3 addObject:v17];
  }

  v18 = [(PHImportAsset *)self sidecarAssets];
  [v3 addObjectsFromArray:v18];

  return v3;
}

- (unint64_t)approximateBytesRequiredToImport
{
  v3 = [(PHImportAsset *)self assetSizeIncludingRelatedAssets]+ 225280;
  v4 = [(PHImportAsset *)self largeRender];

  if (!v4)
  {
    return (fmin([(PHImportAsset *)self fileSize], 1468006.4) + v3);
  }

  return v3;
}

- (NSNumber)trackFormat
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PHImportAsset_trackFormat__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__PHImportAsset_trackFormat__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) audioTrackFormat];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)bitrate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__PHImportAsset_bitrate__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __24__PHImportAsset_bitrate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) audioDataRate];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)sampleRate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PHImportAsset_sampleRate__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __27__PHImportAsset_sampleRate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) audioSampleRate];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)fps
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__PHImportAsset_fps__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __20__PHImportAsset_fps__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) nominalFrameRate];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)codec
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__PHImportAsset_codec__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __22__PHImportAsset_codec__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) videoCodecName];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)exposureTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHImportAsset_exposureTime__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__PHImportAsset_exposureTime__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) exposureTime];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)fNumber
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__PHImportAsset_fNumber__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __24__PHImportAsset_fNumber__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) fNumber];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)exposureBias
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHImportAsset_exposureBias__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__PHImportAsset_exposureBias__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) exposureBias];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)digitalZoomRatio
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PHImportAsset_digitalZoomRatio__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__PHImportAsset_digitalZoomRatio__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) digitalZoomRatio];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)focalLengthIn35mm
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PHImportAsset_focalLengthIn35mm__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__PHImportAsset_focalLengthIn35mm__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) focalLengthIn35mm];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)focalLength
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PHImportAsset_focalLength__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__PHImportAsset_focalLength__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) focalLength];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)iso
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__PHImportAsset_iso__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __20__PHImportAsset_iso__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) iso];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)meteringMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHImportAsset_meteringMode__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__PHImportAsset_meteringMode__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) meteringMode];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)whiteBalance
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PHImportAsset_whiteBalance__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__PHImportAsset_whiteBalance__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) whiteBalance];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)flashFired
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PHImportAsset_flashFired__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(v6 + 24)];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __27__PHImportAsset_flashFired__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) flashFired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)lensModel
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__PHImportAsset_lensModel__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __26__PHImportAsset_lensModel__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) lensModel];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)formattedCameraModel
{
  v3 = [(PHImportAsset *)self cameraModel];
  v4 = [(PHImportAsset *)self cameraMake];
  v5 = [MEMORY[0x1E69C0708] formattedCameraModelFromCameraModel:v3 cameraMake:v4];

  return v5;
}

- (NSString)cameraModel
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PHImportAsset_cameraModel__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__PHImportAsset_cameraModel__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) cameraModel];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)cameraMake
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PHImportAsset_cameraMake__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __27__PHImportAsset_cameraMake__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) cameraMake];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)durationTimeInterval
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PHImportAsset_durationTimeInterval__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __37__PHImportAsset_durationTimeInterval__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) durationTimeInterval];

  return MEMORY[0x1EEE66BB8]();
}

- (id)spatialOverCaptureIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PHImportAsset_spatialOverCaptureIdentifier__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __45__PHImportAsset_spatialOverCaptureIdentifier__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) spatialOverCaptureIdentifier];

  return MEMORY[0x1EEE66BB8]();
}

- (id)livePhotoPairingIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6581;
  v9 = __Block_byref_object_dispose__6582;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PHImportAsset_livePhotoPairingIdentifier__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __43__PHImportAsset_livePhotoPairingIdentifier__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) livePhotoPairingIdentifier];

  return MEMORY[0x1EEE66BB8]();
}

- (int)burstPickType
{
  v2 = [(PHImportAsset *)self burstUUID];
  v3 = 2 * (v2 != 0);

  return v3;
}

- (id)groupingUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6581;
  v10 = __Block_byref_object_dispose__6582;
  v11 = 0;
  if ([(PHImportAsset *)self isImage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__PHImportAsset_groupingUUID__block_invoke;
    v5[3] = &unk_1E75AADC0;
    v5[4] = self;
    v5[5] = &v6;
    [(PHImportAsset *)self _accessMetadata:v5];
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__PHImportAsset_groupingUUID__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) groupingUuid];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)burstUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6581;
  v10 = __Block_byref_object_dispose__6582;
  v11 = 0;
  if ([(PHImportAsset *)self isImage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__PHImportAsset_burstUUID__block_invoke;
    v5[3] = &unk_1E75AADC0;
    v5[4] = self;
    v5[5] = &v6;
    [(PHImportAsset *)self _accessMetadata:v5];
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__PHImportAsset_burstUUID__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) burstUuid];

  return MEMORY[0x1EEE66BB8]();
}

- (CGSize)transformedPixelSize
{
  v3 = [(PHImportAsset *)self largeRender];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  [(PHImportAsset *)v6 orientedPixelSize];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)orientedPixelSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = &unk_19CB85426;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PHImportAsset_orientedPixelSize__block_invoke;
  v6[3] = &unk_1E75AADC0;
  v6[4] = self;
  v6[5] = &v7;
  [(PHImportAsset *)self _accessMetadata:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

uint64_t __34__PHImportAsset_orientedPixelSize__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) orientedPixelSize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGSize)exifPixelSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = &unk_19CB85426;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__PHImportAsset_exifPixelSize__block_invoke;
  v6[3] = &unk_1E75AADC0;
  v6[4] = self;
  v6[5] = &v7;
  [(PHImportAsset *)self _accessMetadata:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

uint64_t __30__PHImportAsset_exifPixelSize__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) exifPixelSize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (unsigned)orientation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PHImportAsset_orientation__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __28__PHImportAsset_orientation__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) orientation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGSize)cgImageSize
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695F060];
  v4 = [(PHImportAsset *)self largeRender];
  if (v4)
  {
    v5 = [(PHImportAsset *)self largeRender];
    v6 = [v5 url];
  }

  else
  {
    v6 = [(PHImportAsset *)self url];
  }

  Width = *v3;
  Height = v3[1];

  if (v6)
  {
    if ([(PHImportAsset *)self isImage])
    {
      v9 = *MEMORY[0x1E696E0E8];
      v24 = *MEMORY[0x1E696E0E8];
      v10 = MEMORY[0x1E695E118];
      v25[0] = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v12 = CGImageSourceCreateWithURL(v6, v11);

      if (v12)
      {
        v13 = *MEMORY[0x1E696E000];
        v22[0] = v9;
        v22[1] = v13;
        v23[0] = v10;
        v23[1] = v10;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, v14);

        if (ImageAtIndex)
        {
          Width = CGImageGetWidth(ImageAtIndex);
          Height = CGImageGetHeight(ImageAtIndex);
          CGImageRelease(ImageAtIndex);
        }

        CFRelease(v12);
      }
    }

    else
    {
      v16 = [MEMORY[0x1E6988168] URLAssetWithURL:v6 options:0];
      v17 = [MEMORY[0x1E69C0708] mainVideoTrackForAsset:v16];
      [v17 naturalSize];
      Width = v18;
      Height = v19;
    }
  }

  v20 = Width;
  v21 = Height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)_accessMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_metadataLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_metadataLock);
}

- (BOOL)isViewable
{
  if ([(PHImportAsset *)self isImage])
  {
    return 1;
  }

  v4 = objc_alloc(MEMORY[0x1E6988168]);
  v5 = [(PHImportAsset *)self url];
  v6 = [v4 initWithURL:v5 options:0];

  v7 = [MEMORY[0x1E69C0708] mainVideoTrackForAsset:v6];
  v8 = [v7 isDecodable];

  return v8;
}

- (void)takeAsVideoComplement:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!-[PHImportAsset isImage](self, "isImage") || ([v4 isMovie] & 1) == 0)
  {
    v13 = PLImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v4 redactedFileNameDescription];
      v25 = [(PHImportAsset *)self redactedFileNameDescription];
      *buf = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "Assigning %@ as video complement of %@ is not allowed", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 redactedFileNameDescription];
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
    v30 = v28;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v26 = PHDescriptionsForResourceTypes(v27);
    v7 = [v26 componentsJoinedByString:{@", "}];
    v8 = [(PHImportAsset *)self redactedFileNameDescription];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
    v29 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v11 = PHDescriptionsForResourceTypes(v10);
    v12 = [v11 componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ (%@) as a video complement of %@ (%@)", buf, 0x2Au);
  }

  [(PHImportAsset *)self setVideoComplement:v4];
  v13 = [(PHImportAsset *)self sidecarAssetsByType];
  if ([v13 count])
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = [v4 sidecarAssetsByType];
  v15 = [v14 count];

  if (v15)
  {
    v16 = PLImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v4 sidecarAssetsByType];
      v18 = [v17 allValues];
      v19 = [v18 valueForKeyPath:@"fileName.pathExtension"];
      v20 = [v19 componentsJoinedByString:{@", "}];
      v21 = [v4 redactedFileNameDescription];
      v22 = [(PHImportAsset *)self redactedFileNameDescription];
      *buf = 138412802;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "PAIRING: moving sidecars (%@) from %@ to %@", buf, 0x20u);
    }

    v23 = [v4 sidecarAssetsByType];
    [(PHImportAsset *)self setSidecarAssetsByType:v23];

    [v4 setSidecarAssetsByType:0];
  }

LABEL_13:
}

- (BOOL)isVideoComplementOf:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isJPEG] & 1) == 0 && !objc_msgSend(v4, "isHEIF"))
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v5 = [v4 livePhotoPairingIdentifier];
  if (v5 && (v6 = v5, [(PHImportAsset *)self livePhotoPairingIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 livePhotoPairingIdentifier];
  }

  else
  {
    if ([(PHImportAsset *)self performAdditionalLivePhotoChecksOnImageAsset:v4])
    {
      v9 = 1;
      goto LABEL_12;
    }

    [v4 loadMetadataSync];
    v8 = [v4 livePhotoPairingIdentifier];
    if (!v8)
    {
      v9 = 0;
      goto LABEL_11;
    }

    [(PHImportAsset *)self loadMetadataSync];
  }

  v10 = [(PHImportAsset *)self livePhotoPairingIdentifier];
  v9 = [v8 isEqualToString:v10];

LABEL_11:
LABEL_12:
  v11 = PLImportGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 livePhotoPairingIdentifier];
    v13 = [(PHImportAsset *)self livePhotoPairingIdentifier];
    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "PAIRING: imageAsset.livePhotoPairingIdentifier == %@, videoAsset.livePhotoPairingIdentifier == %@", &v16, 0x16u);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  [v4 takeAsVideoComplement:self];
  v14 = 1;
LABEL_17:

  return v14;
}

- (NSString)importIdentifier
{
  importIdentifier = self->_importIdentifier;
  if (!importIdentifier)
  {
    v4 = [(PHImportAsset *)self makeImportIdentifier];
    v5 = self->_importIdentifier;
    self->_importIdentifier = v4;

    importIdentifier = self->_importIdentifier;
  }

  return importIdentifier;
}

- (id)makeImportIdentifier
{
  v3 = [(PHImportAsset *)self fileName];
  v4 = [v3 stringByDeletingPathExtension];

  if ([(PHImportAsset *)self isRepresentation]|| [(PHImportAsset *)self isOriginalAdjustmentData]|| [(PHImportAsset *)self isAdjustmentSecondaryData])
  {
    v5 = [(PHImportAsset *)self stripMarkerFromName:v4 markerLocation:4];

    v4 = v5;
  }

  v6 = [(PHImportAsset *)self parentFolderPath];
  v7 = [v6 stringByAppendingPathComponent:v4];

  return v7;
}

- (id)stripMarkerFromName:(id)a3 markerLocation:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 length] >= a4)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v6 substringToIndex:a4];
      if ([v6 length] <= a4)
      {
        v9 = [v10 stringWithFormat:@"%@%@", v11, &stru_1F0FC60C8];
      }

      else
      {
        v12 = [v6 substringFromIndex:a4 + 1];
        v9 = [v10 stringWithFormat:@"%@%@", v11, v12];
      }

      goto LABEL_14;
    }

    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v15 = a4;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = [v6 length];
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Marker location (%lu) is beyond length of name '%@' (%lu)", buf, 0x20u);
    }
  }

  else
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Passed a nil 'name'", buf, 2u);
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)basenameForOriginalAdjustmentData
{
  basenameForOriginalAdjustment = self->_basenameForOriginalAdjustment;
  if (!basenameForOriginalAdjustment)
  {
    v4 = MEMORY[0x1E696AD60];
    v5 = [(PHImportAsset *)self fileName];
    v6 = [v4 stringWithString:v5];

    [v6 insertString:@"O" atIndex:4];
    v7 = [v6 copy];
    v8 = self->_basenameForOriginalAdjustment;
    self->_basenameForOriginalAdjustment = v7;

    basenameForOriginalAdjustment = self->_basenameForOriginalAdjustment;
  }

  return basenameForOriginalAdjustment;
}

- (BOOL)isOriginalAdjustmentData
{
  v2 = [(PHImportAsset *)self fileName];
  v3 = [PHImportAsset isOriginalAdjustmentData:v2];

  return v3;
}

- (BOOL)isBase
{
  if (isBase_onceToken != -1)
  {
    dispatch_once(&isBase_onceToken, &__block_literal_global_244);
  }

  v3 = isBase_isBaseRegex;
  v4 = [(PHImportAsset *)self fileName];
  v5 = [(PHImportAsset *)self fileName];
  LOBYTE(v3) = [v3 numberOfMatchesInString:v4 options:0 range:{0, objc_msgSend(v5, "length")}] != 0;

  return v3;
}

void __23__PHImportAsset_isBase__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\D{4}B\\d{4}" options:0 error:&v4];
  v1 = v4;
  v2 = isBase_isBaseRegex;
  isBase_isBaseRegex = v0;

  if (v1)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Unable to search for regular expession '\\D{4}B\\d{4}': %@", buf, 0xCu);
    }
  }
}

- (BOOL)isSpatialOverCapture
{
  if (isSpatialOverCapture_onceToken != -1)
  {
    dispatch_once(&isSpatialOverCapture_onceToken, &__block_literal_global_239);
  }

  v3 = [(PHImportAsset *)self fileName];
  v4 = [isSpatialOverCapture_isSocRegex numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;

  return v4;
}

void __37__PHImportAsset_isSpatialOverCapture__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\D{4}S\\d{4}" options:0 error:&v4];
  v1 = v4;
  v2 = isSpatialOverCapture_isSocRegex;
  isSpatialOverCapture_isSocRegex = v0;

  if (v1)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Unable to search for regular expession '\\D{4}S\\d{4}': %@", buf, 0xCu);
    }
  }
}

- (BOOL)isAdjustmentSecondaryData
{
  if (isAdjustmentSecondaryData_onceToken != -1)
  {
    dispatch_once(&isAdjustmentSecondaryData_onceToken, &__block_literal_global_234);
  }

  v3 = [(PHImportAsset *)self fileName];
  v4 = [isAdjustmentSecondaryData_regex numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;

  return v4;
}

void __42__PHImportAsset_isAdjustmentSecondaryData__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\D{4}A\\d{4}" options:0 error:&v4];
  v1 = v4;
  v2 = isAdjustmentSecondaryData_regex;
  isAdjustmentSecondaryData_regex = v0;

  if (v1)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Unable to search for regular expession '\\D{4}A\\d{4}': %@", buf, 0xCu);
    }
  }
}

- (BOOL)isRender
{
  if (isRender_onceToken != -1)
  {
    dispatch_once(&isRender_onceToken, &__block_literal_global_6664);
  }

  v3 = [(PHImportAsset *)self fileName];
  v4 = [isRender_isRenderedRegex numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;

  return v4;
}

void __25__PHImportAsset_isRender__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\D{4}E\\d{4}" options:0 error:&v4];
  v1 = v4;
  v2 = isRender_isRenderedRegex;
  isRender_isRenderedRegex = v0;

  if (v1)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Unable to search for regular expession '\\D{4}E\\d{4}': %@", buf, 0xCu);
    }
  }
}

- (BOOL)isGrouped
{
  v2 = [(PHImportAsset *)self groupingUUID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasAudioAttachment
{
  v2 = [(PHImportAsset *)self audioAsset];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isLivePhoto
{
  v2 = [(PHImportAsset *)self videoComplement];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isBurst
{
  v2 = [(PHImportAsset *)self burstUUID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isSDOF
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(PHImportAsset *)self isImage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __23__PHImportAsset_isSDOF__block_invoke;
    v5[3] = &unk_1E75AADC0;
    v5[4] = self;
    v5[5] = &v6;
    [(PHImportAsset *)self _accessMetadata:v5];
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __23__PHImportAsset_isSDOF__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) isSDOF];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isHDR
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__PHImportAsset_isHDR__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportAsset *)self _accessMetadata:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __22__PHImportAsset_isHDR__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) isHDR];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isJpegPlusRAW
{
  v2 = [(PHImportAsset *)self rawAsset];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isTimelapse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(PHImportAsset *)self isMovie])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__PHImportAsset_isTimelapse__block_invoke;
    v5[3] = &unk_1E75AADC0;
    v5[4] = self;
    v5[5] = &v6;
    [(PHImportAsset *)self _accessMetadata:v5];
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__PHImportAsset_isTimelapse__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) isTimelapse];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isSloMo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(PHImportAsset *)self isMovie])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__PHImportAsset_isSloMo__block_invoke;
    v5[3] = &unk_1E75AADC0;
    v5[4] = self;
    v5[5] = &v6;
    [(PHImportAsset *)self _accessMetadata:v5];
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __24__PHImportAsset_isSloMo__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) isSloMo];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isValidForReference
{
  v2 = [(PHImportAsset *)self url];
  v3 = [v2 path];

  if ([v3 hasPrefix:@"/var"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"/private/var") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"/tmp"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 hasPrefix:@"/private/tmp"] ^ 1;
  }

  return v4;
}

- (NSString)parentFolderPath
{
  v2 = [(NSURL *)self->_url path];
  v3 = [v2 stringByDeletingLastPathComponent];

  return v3;
}

- (id)descriptionWithPrefix:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@%@ <%p>", v4, objc_opt_class(), self];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(PHImportAsset *)self uuid];
  v8 = [v6 stringWithFormat:@"\n\t%@uuid        : %@", v4, v7];
  v9 = [v5 stringByAppendingString:v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(PHImportAsset *)self source];
  v12 = [v11 name];
  v13 = [v10 stringWithFormat:@"\n\t%@device      : %@", v4, v12];
  v14 = [v9 stringByAppendingString:v13];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [(PHImportAsset *)self parentFolderPath];
  v17 = [v15 stringWithFormat:@"\n\t%@folder      : %@", v4, v16];
  v18 = [v14 stringByAppendingString:v17];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [(PHImportAsset *)self fileName];
  v21 = [(PHImportAsset *)self createdFileName];
  v22 = [v19 stringWithFormat:@"\n\t%@name        : %@ (%@)", v4, v20, v21];
  v23 = [v18 stringByAppendingString:v22];

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n\t%@fileSize    : %llu", v4, -[PHImportAsset fileSize](self, "fileSize")];
  v25 = [v23 stringByAppendingString:v24];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [(PHImportAsset *)self creationDate];
  v28 = [(PHImportAsset *)self fileCreationDate];
  v29 = v4;
  v30 = [v26 stringWithFormat:@"\n\t%@date        : %@ (%@)", v4, v27, v28];
  v31 = [v25 stringByAppendingString:v30];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = [(PHImportAsset *)self relatedAssets];
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      v36 = 0;
      v37 = v31;
      do
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v42 + 1) + 8 * v36);
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t", v29];
        v40 = [v38 descriptionWithPrefix:v39];
        v31 = [v37 stringByAppendingString:v40];

        ++v36;
        v37 = v31;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v34);
  }

  return v31;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PHImportAsset *)self fileName];
  v5 = [(PHImportAsset *)self createdFileName];
  v6 = [(PHImportAsset *)self parentFolderPath];
  v7 = [(PHImportAsset *)self descriptionWithPrefix:&stru_1F0FC60C8];
  v8 = [v3 stringWithFormat:@"%@ (%@) [%@]%@", v4, v5, v6, v7];

  return v8;
}

- (PHImportAsset)initWithSource:(id)a3 url:(id)a4 type:(id)a5 supportedMediaType:(unsigned __int8)a6 uuid:(id)a7
{
  v8 = a6;
  v45[3] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(PHImportAsset *)self initWithSource:a3];
  v17 = v16;
  if (v16)
  {
    v39 = v8;
    objc_storeStrong(&v16->_url, a4);
    if (v15)
    {
      v18 = [v15 copy];
      uuid = v17->_uuid;
      v17->_uuid = v18;
    }

    v20 = [v13 lastPathComponent];
    fileName = v17->_fileName;
    v17->_fileName = v20;

    objc_storeStrong(&v17->_createdFileName, v20);
    v22 = *MEMORY[0x1E695DB50];
    v23 = *MEMORY[0x1E695DAA8];
    v45[0] = *MEMORY[0x1E695DB50];
    v45[1] = v23;
    v24 = *MEMORY[0x1E695DA80];
    v45[2] = *MEMORY[0x1E695DA80];
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
    v40 = 0;
    v26 = [v13 resourceValuesForKeys:v25 error:&v40];
    v27 = v40;

    if (v26)
    {
      v28 = [v26 objectForKeyedSubscript:v22];
      v17->_fileSize = [v28 longLongValue];

      v29 = [v26 objectForKeyedSubscript:v23];
      fileCreationDate = v17->_fileCreationDate;
      v17->_fileCreationDate = v29;

      v31 = [v26 objectForKeyedSubscript:v24];
      p_super = &v17->_fileModificationDate->super;
      v17->_fileModificationDate = v31;
    }

    else
    {
      p_super = PLImportGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
        *buf = 138412546;
        v42 = v33;
        v43 = 2112;
        v44 = v27;
        _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_DEFAULT, "failed to find resource attributes for %@: %@", buf, 0x16u);
      }
    }

    v34 = [v13 pathExtension];
    if ([v34 isEqualToString:&stru_1F0FC60C8])
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    objc_storeStrong(&v17->_fileExtension, v35);
    v17->_canReference = [(PHImportAsset *)v17 isValidForReference];
    v17->_copyMethod = 0;
    if (v14)
    {
      if ([(PHImportAsset *)v17 configureWithContentType:v14 supportedMediaType:v39])
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v37 = [MEMORY[0x1E69C08F0] typeForURL:v13 error:0];
      v38 = [(PHImportAsset *)v17 configureWithContentType:v37 supportedMediaType:v39];

      if (v38)
      {
        goto LABEL_14;
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v17;
}

- (void)configureSidecarTypeForExtension:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"AAE"])
  {
    v5 = [(PHImportAsset *)self isOriginalAdjustmentData];
    v6 = 7;
    if (v5)
    {
      v6 = 16;
    }

    self->_resourceType = v6;
    self->_resourceSubType = 256;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"SLM"])
  {
    v7 = xmmword_19CB29580;
LABEL_11:
    *&self->_resourceType = v7;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"XMP"])
  {
    v7 = xmmword_19CB29570;
    goto LABEL_11;
  }

  if ([(PHImportAsset *)self isAdjustmentSecondaryData])
  {
    v7 = xmmword_19CB29560;
    goto LABEL_11;
  }

  v8 = PLImportGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [(PHImportAsset *)self redactedFileNameDescription];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unknown sidecar type: %@", &v10, 0xCu);
  }

LABEL_12:
}

- (PHImportAsset)initWithSource:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PHImportAsset;
  v5 = [(PHImportAsset *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = objc_opt_new();
    duplicates = v5->_duplicates;
    v5->_duplicates = v9;

    v11 = dispatch_queue_create("load sidecars saynchronizer", 0);
    loadSidecars = v5->_loadSidecars;
    v5->_loadSidecars = v11;

    v5->_sidecarsLoaded = 0;
    *&v5->_metadataLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_source, v4);
  }

  return v5;
}

- (BOOL)configureWithContentType:(id)a3 supportedMediaType:(unsigned __int8)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    [(PHImportAsset *)self setContentType:v6];
    if (v4 > 15)
    {
      if (v4 != 16 && v4 != 32)
      {
        if (v4 == 64)
        {
          v8 = [(NSString *)self->_fileName pathExtension];
          v9 = [v8 uppercaseString];
          [(PHImportAsset *)self configureSidecarTypeForExtension:v9];
          goto LABEL_18;
        }

LABEL_16:
        v8 = PLImportGetLog();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_19:

          goto LABEL_39;
        }

        v9 = [(PHImportAsset *)self redactedFileNameDescription];
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Expected the asset '%@' to be of type image, movie, audio or sidecar", &v18, 0xCu);
LABEL_18:

        goto LABEL_19;
      }

      *&self->_resourceType = xmmword_19CB295A0;
      if ([(PHImportAsset *)self isRender])
      {
        v10 = 6;
      }

      else if ([(PHImportAsset *)self isSpatialOverCapture])
      {
        v10 = 14;
      }

      else
      {
        if (![(PHImportAsset *)self isBase])
        {
          goto LABEL_39;
        }

        v10 = 12;
      }

LABEL_38:
      self->_resourceType = v10;
      goto LABEL_39;
    }

    if (v4 != 2)
    {
      if (v4 == 4 || v4 == 8)
      {
        *&self->_resourceType = xmmword_19CB29590;
LABEL_39:
        v7 = self->_resourceType != 0;
        goto LABEL_40;
      }

      goto LABEL_16;
    }

    if ([v6 conformsToType:*MEMORY[0x1E6982E58]])
    {
      v11 = 1;
    }

    else
    {
      v12 = [MEMORY[0x1E69C08F0] jpeg2000Type];
      v13 = [v6 conformsToType:v12];

      if (v13)
      {
        v11 = 2048;
      }

      else
      {
        if (![v6 conformsToType:*MEMORY[0x1E6983138]])
        {
          if ([v6 conformsToType:*MEMORY[0x1E6983008]])
          {
            self->_resourceSubType = 16;
            v14 = [(PHImportAsset *)self url];
            [PHImportAsset determineIfTIFFIsRAW:self url:v14];
          }

          else
          {
            if ([v6 conformsToType:*MEMORY[0x1E6982F88]])
            {
              v11 = 8;
              goto LABEL_28;
            }

            if ([v6 conformsToType:*MEMORY[0x1E6982DE8]])
            {
              v11 = 4096;
              goto LABEL_28;
            }

            if ([v6 conformsToType:*MEMORY[0x1E6982F28]])
            {
              v11 = 0x2000;
              goto LABEL_28;
            }

            if ([v6 conformsToType:*MEMORY[0x1E6982F10]])
            {
              v11 = 0x4000;
              goto LABEL_28;
            }

            v16 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
            v17 = [v6 conformsToType:v16];

            if (v17)
            {
              v11 = 0x8000;
              goto LABEL_28;
            }
          }

LABEL_29:
          if ([(PHImportAsset *)self isRender])
          {
            v10 = 5;
          }

          else if ([(PHImportAsset *)self isSpatialOverCapture])
          {
            v10 = 13;
          }

          else if ([(PHImportAsset *)self isBase])
          {
            v10 = 8;
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_38;
        }

        v11 = 2;
      }
    }

LABEL_28:
    self->_resourceSubType = v11;
    goto LABEL_29;
  }

  v7 = 0;
LABEL_40:

  return v7;
}

- (void)updateIsRAW:(BOOL)a3 contentType:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v5)
  {
    self->_resourceSubType |= 8uLL;
    v8 = v7;
    objc_storeStrong(&self->_contentType, a4);
    v7 = v8;
  }
}

- (NSObject)redactedFileNameDescription
{
  createdFileName = self->_createdFileName;
  if (!createdFileName)
  {
    createdFileName = self->_fileName;
  }

  v4 = createdFileName;
  v5 = [[PHImportAssetNameDescription alloc] initWithFileName:v4 uuid:self->_uuid];

  return v5;
}

+ (BOOL)isOriginalAdjustmentData:(id)a3
{
  v3 = isOriginalAdjustmentData__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isOriginalAdjustmentData__onceToken, &__block_literal_global_253);
  }

  v5 = [isOriginalAdjustmentData__isAdjustmentBaseDataRegEx numberOfMatchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  return v5 != 0;
}

void __42__PHImportAsset_isOriginalAdjustmentData___block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\D{4}O\\d{4}" options:0 error:&v4];
  v1 = v4;
  v2 = isOriginalAdjustmentData__isAdjustmentBaseDataRegEx;
  isOriginalAdjustmentData__isAdjustmentBaseDataRegEx = v0;

  if (v1)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Unable to search for regular expession '\\D{4}O\\d{4}': %@", buf, 0xCu);
    }
  }
}

+ (void)determineIfTIFFIsRAW:(id)a3 url:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 isTIFF];
  if (v6)
  {
    if (v7)
    {
      v12 = *MEMORY[0x1E696E0E8];
      v13[0] = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v9 = CGImageSourceCreateWithURL(v6, v8);

      if (v9)
      {
        v10 = CGImageSourceGetType(v9);
        if (v10)
        {
          v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:v10];
          [v5 updateIsRAW:objc_msgSend(v11 contentType:{"conformsToType:", *MEMORY[0x1E6982F88]), v11}];
        }

        CFRelease(v9);
      }
    }
  }
}

+ (id)loadDatesForAssets:(id)a3 atEnd:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDeviceAsset"), v7, !v8))
  {
    v10 = objc_opt_new();
    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PHImportAsset_loadDatesForAssets_atEnd___block_invoke;
    block[3] = &unk_1E75AA870;
    v16 = v5;
    v12 = v10;
    v17 = v12;
    v18 = v6;
    dispatch_async(v11, block);

    v13 = v18;
    v9 = v12;
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    v9 = 0;
  }

  return v9;
}

void __42__PHImportAsset_loadDatesForAssets_atEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (PHImportConcurrencyLimit_onceToken != -1)
  {
    dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
  }

  v3 = PHImportConcurrencyLimit_concurrencyLimit;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PHImportAsset_loadDatesForAssets_atEnd___block_invoke_2;
  v6[3] = &unk_1E75A5FF8;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  PHImportDispatchApply(v2, v3, v4, v6);
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __42__PHImportAsset_loadDatesForAssets_atEnd___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v2 loadMetadataSync];
}

+ (id)loadDatesForAssetSequence:(id)a3 atEnd:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObject:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [a1 loadDatesForAssets:v8 atEnd:v7];

  return v14;
}

+ (void)logImageDateFileDateDifferencesForAsset:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 creationDate];
  v5 = [v3 fileCreationDate];
  v6 = v5;
  v7 = @"!!!!!!!!!!";
  if (v4 && v5)
  {
    if ([v4 compare:v5])
    {
      v8 = [MEMORY[0x1E695DFE8] localTimeZone];
      v9 = [v8 secondsFromGMTForDate:v4];

      v10 = [v4 dateByAddingTimeInterval:-v9];
      if ([v10 compare:v6])
      {
        v7 = @"----------";
      }

      else
      {
        v7 = @"<-<-<-<-<-";
      }
    }

    else
    {
      v7 = @"++++++++++";
    }
  }

  v11 = PLImportGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 redactedFileNameDescription];
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "%@ CreateDate: %@, AlternateDate: %@, Name: %@", &v13, 0x2Au);
  }
}

+ (id)assetFileForURL:(id)a3 source:(id)a4 withUuid:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v10 = 0;
  if (v8 && v9)
  {
    v11 = [PHValidator mediaTypeForURL:v8];
    if (!v11)
    {
      v12 = [v8 lastPathComponent];
      v13 = [a1 isValidAsSidecar:v12];

      if (v13)
      {
        v11 = 64;
      }

      else
      {
        v11 = 0;
      }
    }

    v14 = [MEMORY[0x1E69C08F0] typeForURL:v8 error:0];
    if (v11 >= 2)
    {
      v10 = [[a1 alloc] initWithSource:v9 url:v8 type:v14 supportedMediaType:v11 uuid:v44];
LABEL_38:

      goto LABEL_39;
    }

    if (PFIsLivePhotoBundleType())
    {
      v15 = objc_opt_new();
      v16 = [v8 path];
      v49 = 0;
      v17 = [v15 contentsOfDirectoryAtPath:v16 error:&v49];
      v18 = v49;

      if (v18)
      {
        v19 = PLImportGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
          *buf = 138412546;
          v52 = v20;
          v53 = 2112;
          v54 = v18;
        }

        v10 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v41 = v17;
      v42 = v15;
      v43 = v14;
      v26 = v8;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v27 = v17;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v28)
      {
        v19 = 0;
        v10 = 0;
        goto LABEL_36;
      }

      v29 = v28;
      v19 = 0;
      v10 = 0;
      v30 = *v46;
      v31 = off_1E75A1000;
LABEL_24:
      v32 = 0;
      while (1)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v45 + 1) + 8 * v32);
        if ([(__objc2_class *)v31[253] isSupportedImageAtPath:v33])
        {
          break;
        }

        if ([(__objc2_class *)v31[253] isSupportedMovieAtPath:v33])
        {
          v38 = [PHImportAsset alloc];
          v35 = [v26 URLByAppendingPathComponent:v33];
          v39 = [(PHImportAsset *)v38 initWithSource:v9 url:v35 type:0 supportedMediaType:16 uuid:v44];
          v37 = v19;
          v19 = v39;
          goto LABEL_31;
        }

LABEL_32:
        if (v29 == ++v32)
        {
          v29 = [v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (!v29)
          {
LABEL_36:

            [(PHImportAsset *)v10 setVideoComplement:v19];
            v8 = v26;
            v15 = v42;
            v14 = v43;
            v18 = 0;
            v17 = v41;
            goto LABEL_37;
          }

          goto LABEL_24;
        }
      }

      v34 = [PHImportAsset alloc];
      v35 = [v26 URLByAppendingPathComponent:v33];
      v36 = [(PHImportAsset *)v34 initWithSource:v9 url:v35 type:0 supportedMediaType:2 uuid:v44];
      v37 = v10;
      v10 = v36;
LABEL_31:

      v31 = off_1E75A1000;
      goto LABEL_32;
    }

    v21 = [MEMORY[0x1E69C0668] contentType];
    v22 = [v14 conformsToType:v21];

    if (v22)
    {
      v10 = [[PHImportAssetBundleAsset alloc] initWithAssetBundleAtURL:v8 withImportSource:v9];
      if (v10)
      {
        goto LABEL_38;
      }

      v23 = PLImportGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
        *buf = 138412290;
        v52 = v24;
LABEL_20:
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
      }
    }

    else
    {
      v23 = PLImportGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
        *buf = 138412290;
        v52 = v24;
        v25 = "Unable to create a import asset for resource '%@'";
        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_38;
  }

LABEL_39:

  return v10;
}

+ (BOOL)isValidAsSidecar:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 uppercaseString];

  v5 = ([v4 isEqualToString:@"AAE"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SLM") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"XMP") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"DAT");
  return v5;
}

@end