@interface _TUICachedPipelineImageResource
- (_TUICachedPipelineImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8;
- (void)_updateWithContent:(id)a3;
- (void)applyToImage:(id)a3 completion:(id)a4;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)loadResource;
@end

@implementation _TUICachedPipelineImageResource

- (_TUICachedPipelineImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8
{
  height = a6.height;
  width = a6.width;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = _TUICachedPipelineImageResource;
  v17 = [(_TUICachedImageResource *)&v20 initWithCache:a3 unsizedCacheSet:a4 queue:a5 naturalSize:width contentsScale:height, a7];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageResource, a8);
    [(TUIImageResource *)v18->_imageResource addObserver:v18];
  }

  return v18;
}

- (void)_updateWithContent:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_A4884;
  v3[3] = &unk_260A70;
  v3[4] = self;
  [(_TUICachedPipelineImageResource *)self applyToImage:a3 completion:v3];
}

- (void)loadResource
{
  [(_TUICachedImageResource *)self loadLargestLoadedImageAsTemporary];
  v3 = [(TUIImageResource *)self->_imageResource loadImage];
  if (v3)
  {
    v4 = v3;
    [(_TUICachedPipelineImageResource *)self _updateWithContent:v3];
    v3 = v4;
  }
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v4 = [a3 imageContentWithOptions:1];
  [(_TUICachedPipelineImageResource *)self _updateWithContent:v4];
}

- (void)applyToImage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = [v7 image];
  [v7 insets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  (*(a4 + 2))(v6, v16, v9, v11, v13, v15);
}

@end