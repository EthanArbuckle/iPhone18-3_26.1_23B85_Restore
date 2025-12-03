@interface AVAssetTrackEnumerator
+ (id)trackEnumeratorWithAsset:(id)asset;
- (AVAssetTrackEnumerator)initWithAsset:(id)asset;
- (AVAssetTrackEnumerator)initWithAsset:(id)asset mediaCharacteristics:(id)characteristics;
- (AVAssetTrackEnumerator)initWithAsset:(id)asset mediaType:(id)type;
- (id)nextObject;
- (void)dealloc;
- (void)setMediaCharacteristics:(id)characteristics;
- (void)setMediaType:(id)type;
@end

@implementation AVAssetTrackEnumerator

+ (id)trackEnumeratorWithAsset:(id)asset
{
  v3 = [[self alloc] initWithAsset:asset];

  return v3;
}

- (AVAssetTrackEnumerator)initWithAsset:(id)asset
{
  if (asset)
  {
    v6.receiver = self;
    v6.super_class = AVAssetTrackEnumerator;
    v4 = [(AVAssetTrackEnumerator *)&v6 init];
    if (v4)
    {
      v4->_enumerator = [objc_msgSend(asset "tracks")];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (AVAssetTrackEnumerator)initWithAsset:(id)asset mediaType:(id)type
{
  v5 = [(AVAssetTrackEnumerator *)self initWithAsset:asset];
  [(AVAssetTrackEnumerator *)v5 setMediaType:type];
  return v5;
}

- (AVAssetTrackEnumerator)initWithAsset:(id)asset mediaCharacteristics:(id)characteristics
{
  v5 = [(AVAssetTrackEnumerator *)self initWithAsset:asset];
  [(AVAssetTrackEnumerator *)v5 setMediaCharacteristics:characteristics];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetTrackEnumerator;
  [(AVAssetTrackEnumerator *)&v3 dealloc];
}

- (void)setMediaType:(id)type
{
  typeCopy = type;

  self->_mediaType = type;
}

- (void)setMediaCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;

  self->_mediaCharacteristics = characteristics;
}

- (id)nextObject
{
  for (i = [(NSEnumerator *)self->_enumerator nextObject]; i; i = [(NSEnumerator *)self->_enumerator nextObject])
  {
    mediaType = self->_mediaType;
    if (!mediaType || -[NSString isEqualToString:](mediaType, "isEqualToString:", [i mediaType])) && (!self->_mediaCharacteristics || (objc_msgSend(i, "hasMediaCharacteristics:")))
    {
      break;
    }
  }

  return i;
}

@end