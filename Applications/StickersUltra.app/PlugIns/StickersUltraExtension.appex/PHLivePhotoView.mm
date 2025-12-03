@interface PHLivePhotoView
- (CGSize)intrinsicContentSize;
@end

@implementation PHLivePhotoView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  livePhoto = [(PHLivePhotoView *)selfCopy livePhoto];
  if (livePhoto)
  {
    v4 = livePhoto;
    [(PHLivePhoto *)livePhoto size];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end