@interface ICSEMediaPreview
- (ICSEMediaPreview)initWithImage:(id)image;
- (ICSEMediaPreview)initWithWithImage:(id)image videoDuration:(id *)duration;
@end

@implementation ICSEMediaPreview

- (ICSEMediaPreview)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = ICSEMediaPreview;
  v6 = [(ICSEMediaPreview *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    v7->_isVideoPreview = 0;
  }

  return v7;
}

- (ICSEMediaPreview)initWithWithImage:(id)image videoDuration:(id *)duration
{
  result = [(ICSEMediaPreview *)self initWithImage:image];
  if (result)
  {
    v6 = *&duration->var0;
    result->_videoDuration.epoch = duration->var3;
    *&result->_videoDuration.value = v6;
    result->_isVideoPreview = 1;
  }

  return result;
}

@end