@interface AVStreamDataAssetTrackInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (BOOL)isEnabled;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5;
- (id)formatDescriptions;
- (id)mediaCharacteristics;
- (id)mediaType;
- (unsigned)figMediaType;
- (void)dealloc;
@end

@implementation AVStreamDataAssetTrackInspector

- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = AVStreamDataAssetTrackInspector;
  v7 = [(AVAssetTrackInspector *)&v10 _initWithAsset:a3 trackID:*&a4 trackIndex:a5];
  v8 = v7;
  if (v7)
  {
    *(v7 + 10) = a4;
    *(v7 + 4) = [a3 _weakReference];
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
  v2 = [(AVStreamDataAssetTrackInspector *)self mediaType];

  return AVOSTypeForString(v2);
}

- (id)mediaType
{
  v3 = [(AVWeakReference *)self->_weakReferenceToAsset referencedObject];
  trackID = self->_trackID;

  return [v3 mediaTypeForTrackID:trackID];
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
  v3 = [(AVStreamDataAssetTrackInspector *)self formatDescriptions];
  if ([v3 count] && objc_msgSend(-[AVStreamDataAssetTrackInspector mediaType](self, "mediaType"), "isEqual:", @"vide"))
  {
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions([v3 firstObject], 1u, 1u);
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
  v3 = [(AVStreamDataAssetTrackInspector *)self formatDescriptions];
  if ([v3 count] && objc_msgSend(-[AVStreamDataAssetTrackInspector mediaType](self, "mediaType"), "isEqual:", @"vide"))
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([v3 firstObject]);
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
  v3 = [(AVWeakReference *)self->_weakReferenceToAsset referencedObject];
  trackID = self->_trackID;

  return [v3 formatDescriptionsForTrackID:trackID];
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