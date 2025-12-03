@interface AVAssetTrackGroup
- (AVAssetTrackGroup)initWithAsset:(id)asset trackIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVAssetTrackGroup

- (AVAssetTrackGroup)initWithAsset:(id)asset trackIDs:(id)ds
{
  v9.receiver = self;
  v9.super_class = AVAssetTrackGroup;
  v6 = [(AVAssetTrackGroup *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVAssetTrackGroupInternal);
    v6->_assetTrackGroup = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_assetTrackGroup->assetComparisonToken = [asset _comparisonToken];
      v6->_assetTrackGroup->trackIDs = [ds copy];
      if (!v6->_assetTrackGroup->trackIDs)
      {
        v6->_assetTrackGroup->trackIDs = objc_alloc_init(MEMORY[0x1E695DEC8]);
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  assetTrackGroup = self->_assetTrackGroup;
  if (assetTrackGroup)
  {

    CFRelease(self->_assetTrackGroup);
  }

  v4.receiver = self;
  v4.super_class = AVAssetTrackGroup;
  [(AVAssetTrackGroup *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = [-[AVAssetTrackGroup _assetComparisonToken](self "_assetComparisonToken")];
  if (v5)
  {
    trackIDs = [(AVAssetTrackGroup *)self trackIDs];
    trackIDs2 = [equal trackIDs];
    if (trackIDs != trackIDs2)
    {

      LOBYTE(v5) = [(NSArray *)trackIDs isEqual:trackIDs2];
      return v5;
    }

LABEL_8:
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end