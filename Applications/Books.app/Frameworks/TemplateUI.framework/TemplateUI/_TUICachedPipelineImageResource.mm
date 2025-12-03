@interface _TUICachedPipelineImageResource
- (_TUICachedPipelineImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource;
- (void)_updateWithContent:(id)content;
- (void)applyToImage:(id)image completion:(id)completion;
- (void)imageResourceDidChangeImage:(id)image;
- (void)loadResource;
@end

@implementation _TUICachedPipelineImageResource

- (_TUICachedPipelineImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource
{
  height = size.height;
  width = size.width;
  resourceCopy = resource;
  v20.receiver = self;
  v20.super_class = _TUICachedPipelineImageResource;
  scale = [(_TUICachedImageResource *)&v20 initWithCache:cache unsizedCacheSet:set queue:queue naturalSize:width contentsScale:height, scale];
  v18 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_imageResource, resource);
    [(TUIImageResource *)v18->_imageResource addObserver:v18];
  }

  return v18;
}

- (void)_updateWithContent:(id)content
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_A4884;
  v3[3] = &unk_260A70;
  v3[4] = self;
  [(_TUICachedPipelineImageResource *)self applyToImage:content completion:v3];
}

- (void)loadResource
{
  [(_TUICachedImageResource *)self loadLargestLoadedImageAsTemporary];
  loadImage = [(TUIImageResource *)self->_imageResource loadImage];
  if (loadImage)
  {
    v4 = loadImage;
    [(_TUICachedPipelineImageResource *)self _updateWithContent:loadImage];
    loadImage = v4;
  }
}

- (void)imageResourceDidChangeImage:(id)image
{
  v4 = [image imageContentWithOptions:1];
  [(_TUICachedPipelineImageResource *)self _updateWithContent:v4];
}

- (void)applyToImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  image = [imageCopy image];
  [imageCopy insets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  (*(completion + 2))(completionCopy, image, v9, v11, v13, v15);
}

@end