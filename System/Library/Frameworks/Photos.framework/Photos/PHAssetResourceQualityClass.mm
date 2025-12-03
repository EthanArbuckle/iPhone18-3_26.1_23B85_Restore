@interface PHAssetResourceQualityClass
+ (id)_cplDerivativeAssetResourceQualityClasses;
+ (id)_thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:(id)library;
+ (id)allQualityClassesMatchingPredicate:(id)predicate inLibrary:(id)library;
+ (id)anyQualityClassMatchingPredicate:(id)predicate inLibrary:(id)library;
+ (id)assetResourceQualityClassesInLibrary:(id)library;
- (PHAssetResourceQualityClass)initWithCPLResourceType:(unint64_t)type;
- (PHAssetResourceQualityClass)initWithThumbnailFormat:(id)format;
- (id)description;
- (id)tableThumbnailDataForAsset:(id)asset dataSpecification:(PHAssetResourceTableDataSpecification *)specification;
- (id)tableThumbnailEntriesAtIndexes:(id)indexes inLibrary:(id)library;
- (int64_t)_compare:(id)_compare;
- (void)preheatDataForThumbnailIndexes:(id)indexes inLibrary:(id)library;
@end

@implementation PHAssetResourceQualityClass

+ (id)_cplDerivativeAssetResourceQualityClasses
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_1F102E378 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F102E378);
        }

        v7 = -[PHAssetResourceQualityClass initWithCPLResourceType:]([PHAssetResourceQualityClass alloc], "initWithCPLResourceType:", [*(*(&v9 + 1) + 8 * i) integerValue]);
        [array addObject:v7];
      }

      v4 = [&unk_1F102E378 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return array;
}

- (id)description
{
  if ([(PHAssetResourceQualityClass *)self isTable])
  {
    v3 = @"table";
  }

  else if ([(PHAssetResourceQualityClass *)self isThumbnail])
  {
    v3 = @"master_thumb";
  }

  else
  {
    v3 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:self->_backingCPLResourceType];
  }

  v7.receiver = self;
  v7.super_class = PHAssetResourceQualityClass;
  v4 = [(PHAssetResourceQualityClass *)&v7 description];
  v5 = [v4 stringByAppendingFormat:@" - %@, kind: %lu, side length: %lu", v3, -[PHAssetResourceQualityClass thumbnailKind](self, "thumbnailKind"), self->_maxSideLengthIfSquare];

  return v5;
}

- (void)preheatDataForThumbnailIndexes:(id)indexes inLibrary:(id)library
{
  indexesCopy = indexes;
  photoLibrary = [library photoLibrary];
  thumbnailManager = [photoLibrary thumbnailManager];

  backingImageFormat = [(PHAssetResourceQualityClass *)self backingImageFormat];
  [thumbnailManager preheatThumbnailDataWithFormat:objc_msgSend(backingImageFormat thumbnailIndexes:"formatID"), indexesCopy];
}

- (id)tableThumbnailDataForAsset:(id)asset dataSpecification:(PHAssetResourceTableDataSpecification *)specification
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceQualityClass.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"thumbnailAsset"}];
  }

  if (-[PHAssetResourceQualityClass isThumbnail](self, "isThumbnail") && [assetCopy thumbnailIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    photoLibrary = [assetCopy photoLibrary];
    v9PhotoLibrary = [photoLibrary photoLibrary];
    thumbnailManager = [v9PhotoLibrary thumbnailManager];

    v24 = 0;
    v25 = 0;
    v23 = 0;
    backingImageFormat = [(PHAssetResourceQualityClass *)self backingImageFormat];
    v8 = [thumbnailManager dataForPhoto:assetCopy format:objc_msgSend(backingImageFormat allowPlaceholder:"formatID") width:0 height:&v25 + 4 bytesPerRow:&v25 dataWidth:&v24 + 4 dataHeight:&v24 imageDataOffset:{&v23 + 4, &v23}];

    v13 = [v8 length];
    if (specification && v13)
    {
      v15 = v25;
      v14 = HIDWORD(v25);
      v17 = v24;
      v16 = HIDWORD(v24);
      v22 = v23;
      backingImageFormat2 = [(PHAssetResourceQualityClass *)self backingImageFormat];
      thumbnailKind = [backingImageFormat2 thumbnailKind];

      specification->var0 = v14;
      specification->var1 = v15;
      specification->var2 = v16;
      specification->var3 = v17;
      specification->var4 = HIDWORD(v22);
      specification->var5 = v22;
      specification->var6 = thumbnailKind;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableThumbnailEntriesAtIndexes:(id)indexes inLibrary:(id)library
{
  indexesCopy = indexes;
  libraryCopy = library;
  backingImageFormat = [(PHAssetResourceQualityClass *)self backingImageFormat];
  isTable = [backingImageFormat isTable];

  if (isTable)
  {
    photoLibrary = [libraryCopy photoLibrary];
    thumbnailManager = [photoLibrary thumbnailManager];

    backingImageFormat2 = [(PHAssetResourceQualityClass *)self backingImageFormat];
    v13 = [thumbnailManager thumbManagerForFormatID:{objc_msgSend(backingImageFormat2, "formatID")}];

    v14 = [v13 readImageEntriesAtIndexes:indexesCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)_compare:(id)_compare
{
  _compareCopy = _compare;
  maxSideLengthIfSquare = self->_maxSideLengthIfSquare;
  if (maxSideLengthIfSquare <= [_compareCopy maxSideLengthIfSquare])
  {
    v7 = self->_maxSideLengthIfSquare;
    if (v7 >= [_compareCopy maxSideLengthIfSquare])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (PHAssetResourceQualityClass)initWithCPLResourceType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PHAssetResourceQualityClass;
  v4 = [(PHAssetResourceQualityClass *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 9) = 0;
    v6 = (type & 0xFFFFFFFFFFFFFFFELL) == 6 || type == 28;
    *(v4 + 3) = type;
    *(v4 + 4) = 0;
    v4[8] = v6;
    if (type > 0x1C || ((1 << type) & 0x100000C0) == 0)
    {
      v7 = [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:type];
      v5->_maxSideLengthIfSquare = sqrt(v7);
      v5->_maxNumberOfPixelsIfSquare = v7;
    }
  }

  return v5;
}

- (PHAssetResourceQualityClass)initWithThumbnailFormat:(id)format
{
  formatCopy = format;
  v9.receiver = self;
  v9.super_class = PHAssetResourceQualityClass;
  v6 = [(PHAssetResourceQualityClass *)&v9 init];
  if (v6)
  {
    v6->_croppedToSquare = [formatCopy isCropped];
    v6->_table = [formatCopy isTable];
    objc_storeStrong(&v6->_backingImageFormat, format);
    v6->_video = 0;
    v6->_thumbnailKind = [formatCopy thumbnailKind];
    v6->_metalPixelFormat = [formatCopy metalPixelFormat];
    v6->_colorSpaceName = [formatCopy colorSpaceName];
    [formatCopy dimension];
    v6->_maxSideLengthIfSquare = v7;
    v6->_maxNumberOfPixelsIfSquare = v7 * v7;
  }

  return v6;
}

+ (id)anyQualityClassMatchingPredicate:(id)predicate inLibrary:(id)library
{
  libraryCopy = library;
  predicateCopy = predicate;
  v7 = [objc_opt_class() assetResourceQualityClassesInLibrary:libraryCopy];

  v8 = [v7 filteredArrayUsingPredicate:predicateCopy];

  firstObject = [v8 firstObject];

  return firstObject;
}

+ (id)allQualityClassesMatchingPredicate:(id)predicate inLibrary:(id)library
{
  libraryCopy = library;
  predicateCopy = predicate;
  v7 = [objc_opt_class() assetResourceQualityClassesInLibrary:libraryCopy];

  v8 = [v7 filteredArrayUsingPredicate:predicateCopy];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_43207];

  return v9;
}

+ (id)assetResourceQualityClassesInLibrary:(id)library
{
  v4 = MEMORY[0x1E695DF70];
  libraryCopy = library;
  array = [v4 array];
  v7 = [self _thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:libraryCopy];

  [array addObjectsFromArray:v7];
  _cplDerivativeAssetResourceQualityClasses = [self _cplDerivativeAssetResourceQualityClasses];
  [array addObjectsFromArray:_cplDerivativeAssetResourceQualityClasses];

  return array;
}

+ (id)_thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  pathManager = [library pathManager];
  v4 = [MEMORY[0x1E69BE848] thumbnailFormatsForConfigPhase:1 withPathManager:pathManager];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [PHAssetResourceQualityClass alloc];
        v13 = [(PHAssetResourceQualityClass *)v12 initWithThumbnailFormat:v11, v15];
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

@end