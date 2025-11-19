@interface PHAssetResourceQualityClass
+ (id)_cplDerivativeAssetResourceQualityClasses;
+ (id)_thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:(id)a3;
+ (id)allQualityClassesMatchingPredicate:(id)a3 inLibrary:(id)a4;
+ (id)anyQualityClassMatchingPredicate:(id)a3 inLibrary:(id)a4;
+ (id)assetResourceQualityClassesInLibrary:(id)a3;
- (PHAssetResourceQualityClass)initWithCPLResourceType:(unint64_t)a3;
- (PHAssetResourceQualityClass)initWithThumbnailFormat:(id)a3;
- (id)description;
- (id)tableThumbnailDataForAsset:(id)a3 dataSpecification:(PHAssetResourceTableDataSpecification *)a4;
- (id)tableThumbnailEntriesAtIndexes:(id)a3 inLibrary:(id)a4;
- (int64_t)_compare:(id)a3;
- (void)preheatDataForThumbnailIndexes:(id)a3 inLibrary:(id)a4;
@end

@implementation PHAssetResourceQualityClass

+ (id)_cplDerivativeAssetResourceQualityClasses
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
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
        [v2 addObject:v7];
      }

      v4 = [&unk_1F102E378 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
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

- (void)preheatDataForThumbnailIndexes:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = [a4 photoLibrary];
  v9 = [v7 thumbnailManager];

  v8 = [(PHAssetResourceQualityClass *)self backingImageFormat];
  [v9 preheatThumbnailDataWithFormat:objc_msgSend(v8 thumbnailIndexes:"formatID"), v6];
}

- (id)tableThumbnailDataForAsset:(id)a3 dataSpecification:(PHAssetResourceTableDataSpecification *)a4
{
  v7 = a3;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHAssetResourceQualityClass.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"thumbnailAsset"}];
  }

  if (-[PHAssetResourceQualityClass isThumbnail](self, "isThumbnail") && [v7 thumbnailIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v7 photoLibrary];
    v10 = [v9 photoLibrary];
    v11 = [v10 thumbnailManager];

    v24 = 0;
    v25 = 0;
    v23 = 0;
    v12 = [(PHAssetResourceQualityClass *)self backingImageFormat];
    v8 = [v11 dataForPhoto:v7 format:objc_msgSend(v12 allowPlaceholder:"formatID") width:0 height:&v25 + 4 bytesPerRow:&v25 dataWidth:&v24 + 4 dataHeight:&v24 imageDataOffset:{&v23 + 4, &v23}];

    v13 = [v8 length];
    if (a4 && v13)
    {
      v15 = v25;
      v14 = HIDWORD(v25);
      v17 = v24;
      v16 = HIDWORD(v24);
      v22 = v23;
      v18 = [(PHAssetResourceQualityClass *)self backingImageFormat];
      v19 = [v18 thumbnailKind];

      a4->var0 = v14;
      a4->var1 = v15;
      a4->var2 = v16;
      a4->var3 = v17;
      a4->var4 = HIDWORD(v22);
      a4->var5 = v22;
      a4->var6 = v19;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableThumbnailEntriesAtIndexes:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHAssetResourceQualityClass *)self backingImageFormat];
  v9 = [v8 isTable];

  if (v9)
  {
    v10 = [v7 photoLibrary];
    v11 = [v10 thumbnailManager];

    v12 = [(PHAssetResourceQualityClass *)self backingImageFormat];
    v13 = [v11 thumbManagerForFormatID:{objc_msgSend(v12, "formatID")}];

    v14 = [v13 readImageEntriesAtIndexes:v6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)_compare:(id)a3
{
  v4 = a3;
  maxSideLengthIfSquare = self->_maxSideLengthIfSquare;
  if (maxSideLengthIfSquare <= [v4 maxSideLengthIfSquare])
  {
    v7 = self->_maxSideLengthIfSquare;
    if (v7 >= [v4 maxSideLengthIfSquare])
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

- (PHAssetResourceQualityClass)initWithCPLResourceType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PHAssetResourceQualityClass;
  v4 = [(PHAssetResourceQualityClass *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 9) = 0;
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 6 || a3 == 28;
    *(v4 + 3) = a3;
    *(v4 + 4) = 0;
    v4[8] = v6;
    if (a3 > 0x1C || ((1 << a3) & 0x100000C0) == 0)
    {
      v7 = [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:a3];
      v5->_maxSideLengthIfSquare = sqrt(v7);
      v5->_maxNumberOfPixelsIfSquare = v7;
    }
  }

  return v5;
}

- (PHAssetResourceQualityClass)initWithThumbnailFormat:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHAssetResourceQualityClass;
  v6 = [(PHAssetResourceQualityClass *)&v9 init];
  if (v6)
  {
    v6->_croppedToSquare = [v5 isCropped];
    v6->_table = [v5 isTable];
    objc_storeStrong(&v6->_backingImageFormat, a3);
    v6->_video = 0;
    v6->_thumbnailKind = [v5 thumbnailKind];
    v6->_metalPixelFormat = [v5 metalPixelFormat];
    v6->_colorSpaceName = [v5 colorSpaceName];
    [v5 dimension];
    v6->_maxSideLengthIfSquare = v7;
    v6->_maxNumberOfPixelsIfSquare = v7 * v7;
  }

  return v6;
}

+ (id)anyQualityClassMatchingPredicate:(id)a3 inLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() assetResourceQualityClassesInLibrary:v5];

  v8 = [v7 filteredArrayUsingPredicate:v6];

  v9 = [v8 firstObject];

  return v9;
}

+ (id)allQualityClassesMatchingPredicate:(id)a3 inLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() assetResourceQualityClassesInLibrary:v5];

  v8 = [v7 filteredArrayUsingPredicate:v6];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_43207];

  return v9;
}

+ (id)assetResourceQualityClassesInLibrary:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [a1 _thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:v5];

  [v6 addObjectsFromArray:v7];
  v8 = [a1 _cplDerivativeAssetResourceQualityClasses];
  [v6 addObjectsFromArray:v8];

  return v6;
}

+ (id)_thumbnailAssetResourceQualityClassesForCurrentDeviceInLibrary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 pathManager];
  v4 = [MEMORY[0x1E69BE848] thumbnailFormatsForConfigPhase:1 withPathManager:v3];
  v5 = [MEMORY[0x1E695DF70] array];
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
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end