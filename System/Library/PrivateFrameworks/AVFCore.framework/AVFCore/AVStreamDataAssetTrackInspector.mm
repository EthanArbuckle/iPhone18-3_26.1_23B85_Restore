@interface AVStreamDataAssetTrackInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (BOOL)isEnabled;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- (id)formatDescriptions;
- (id)mediaCharacteristics;
- (id)mediaType;
- (unsigned)figMediaType;
- (void)dealloc;
@end

@implementation AVStreamDataAssetTrackInspector

- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v10.receiver = self;
  v10.super_class = AVStreamDataAssetTrackInspector;
  v7 = [(AVAssetTrackInspector *)&v10 _initWithAsset:asset trackID:*&d trackIndex:index];
  v8 = v7;
  if (v7)
  {
    *(v7 + 10) = d;
    *(v7 + 4) = [asset _weakReference];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVStreamDataAssetTrackInspector;
  [(AVAssetTrackInspector *)&v3 dealloc];
}

- (unsigned)figMediaType
{
  mediaType = [(AVStreamDataAssetTrackInspector *)self mediaType];

  return AVOSTypeForString(mediaType);
}

- (id)mediaType
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToAsset referencedObject];
  trackID = self->_trackID;

  return [referencedObject mediaTypeForTrackID:trackID];
}

- (BOOL)isEnabled
{
  v3 = [-[AVWeakReference referencedObject](self->_weakReferenceToAsset "referencedObject")];
  trackID = self->_trackID;

  return [v3 shouldProvideMediaDataForTrackID:trackID];
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  start = **&MEMORY[0x1E6960CC0];
  v4 = **&MEMORY[0x1E6960C68];
  return CMTimeRangeMake(retstr, &start, &v4);
}

- (CGSize)naturalSize
{
  formatDescriptions = [(AVStreamDataAssetTrackInspector *)self formatDescriptions];
  if ([formatDescriptions count] && objc_msgSend(-[AVStreamDataAssetTrackInspector mediaType](self, "mediaType"), "isEqual:", @"vide"))
  {
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions([formatDescriptions firstObject], 1u, 1u);
    height = PresentationDimensions.height;
    width = PresentationDimensions.width;
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)dimensions
{
  formatDescriptions = [(AVStreamDataAssetTrackInspector *)self formatDescriptions];
  if ([formatDescriptions count] && objc_msgSend(-[AVStreamDataAssetTrackInspector mediaType](self, "mediaType"), "isEqual:", @"vide"))
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([formatDescriptions firstObject]);
    width = Dimensions.width;
    height = Dimensions.height;
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)formatDescriptions
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToAsset referencedObject];
  trackID = self->_trackID;

  return [referencedObject formatDescriptionsForTrackID:trackID];
}

- (id)mediaCharacteristics
{
  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    v3 = MEMORY[0x1E695DEC8];
    v4 = &AVMediaCharacteristicFrameBased;
LABEL_3:
    v5 = *v4;
    v10 = 0;
    return [v3 arrayWithObjects:{@"AVMediaCharacteristicVisual", v5, v10, v11}];
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = &AVMediaCharacteristicAudible;
    return [v6 arrayWithObjects:{*v7, 0, v9, v11}];
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    goto LABEL_8;
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    v3 = MEMORY[0x1E695DEC8];
    v4 = &AVMediaCharacteristicLegible;
    goto LABEL_3;
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
LABEL_8:
    v3 = MEMORY[0x1E695DEC8];
    v5 = @"AVMediaCharacteristicLegible";
    v10 = @"AVMediaCharacteristicFrameBased";
    v11 = 0;
    return [v3 arrayWithObjects:{@"AVMediaCharacteristicVisual", v5, v10, v11}];
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = &AVMediaCharacteristicVisual;
    return [v6 arrayWithObjects:{*v7, 0, v9, v11}];
  }

  if ([-[AVStreamDataAssetTrackInspector mediaType](self "mediaType")])
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = &AVMediaCharacteristicFrameBased;
    return [v6 arrayWithObjects:{*v7, 0, v9, v11}];
  }

  return 0;
}

@end