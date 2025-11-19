@interface CRLPKImageRendererContainer
- (BOOL)isCandidateForSize:(CGSize)a3 sixChannelBlending:(BOOL)a4 transparentBlending:(BOOL)a5;
- (CGSize)size;
- (CRLPKImageRendererContainer)initWithSize:(CGSize)a3 sixChannelBlending:(BOOL)a4 transparentBlending:(BOOL)a5;
- (PKImageRenderer)imageRenderer;
@end

@implementation CRLPKImageRendererContainer

- (CRLPKImageRendererContainer)initWithSize:(CGSize)a3 sixChannelBlending:(BOOL)a4 transparentBlending:(BOOL)a5
{
  v6 = a4;
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = CRLPKImageRendererContainer;
  v9 = [(CRLPKImageRendererContainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    v9->_sixChannelBlending = v6;
    v9->_transparentBlending = a5;
    v11 = [[PKImageRenderer alloc] initWithSize:0 scale:v6 renderQueue:width sixChannelBlending:{height, 1.0}];
    imageRenderer = v10->_imageRenderer;
    v10->_imageRenderer = v11;

    [(PKImageRenderer *)v10->_imageRenderer setInvertColors:0];
    v10->_rendererLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v10;
}

- (PKImageRenderer)imageRenderer
{
  os_unfair_lock_assert_owner(&self->_rendererLock);
  imageRenderer = self->_imageRenderer;

  return imageRenderer;
}

- (BOOL)isCandidateForSize:(CGSize)a3 sixChannelBlending:(BOOL)a4 transparentBlending:(BOOL)a5
{
  v6 = a4;
  height = a3.height;
  width = a3.width;
  [(CRLPKImageRendererContainer *)self size];
  v11 = v10;
  v13 = v12;
  v14 = sub_100120888(v10, v12);
  result = 0;
  if (v14 && v11 >= width && v13 >= height)
  {
    if ([(CRLPKImageRendererContainer *)self sixChannelBlending]== v6)
    {
      return [(CRLPKImageRendererContainer *)self transparentBlending]^ a5 ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end