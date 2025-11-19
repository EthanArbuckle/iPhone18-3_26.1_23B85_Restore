@interface ICSEMediaPreview
- (ICSEMediaPreview)initWithImage:(id)a3;
- (ICSEMediaPreview)initWithWithImage:(id)a3 videoDuration:(id *)a4;
@end

@implementation ICSEMediaPreview

- (ICSEMediaPreview)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSEMediaPreview;
  v6 = [(ICSEMediaPreview *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v7->_isVideoPreview = 0;
  }

  return v7;
}

- (ICSEMediaPreview)initWithWithImage:(id)a3 videoDuration:(id *)a4
{
  result = [(ICSEMediaPreview *)self initWithImage:a3];
  if (result)
  {
    v6 = *&a4->var0;
    result->_videoDuration.epoch = a4->var3;
    *&result->_videoDuration.value = v6;
    result->_isVideoPreview = 1;
  }

  return result;
}

@end