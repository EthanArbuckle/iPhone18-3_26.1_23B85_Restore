@interface MPMediaItemArtwork
- (CGRect)bounds;
- (MPMediaItemArtwork)init;
- (MPMediaItemArtwork)initWithBoundsSize:(CGSize)boundsSize requestHandler:(void *)requestHandler;
- (MPMediaItemArtwork)initWithImage:(UIImage *)image;
- (UIImage)imageWithSize:(CGSize)size;
- (id)jpegDataWithSize:(CGSize)a3;
- (id)pngDataWithSize:(CGSize)a3;
@end

@implementation MPMediaItemArtwork

- (id)pngDataWithSize:(CGSize)a3
{
  v3 = [(MPMediaItemArtwork *)self imageWithSize:a3.width, a3.height];
  v4 = UIImagePNGRepresentation(v3);

  return v4;
}

- (id)jpegDataWithSize:(CGSize)a3
{
  v3 = [(MPMediaItemArtwork *)self imageWithSize:a3.width, a3.height];
  v4 = UIImageJPEGRepresentation(v3, *MEMORY[0x1E69B1368]);

  return v4;
}

- (CGRect)bounds
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  width = self->_bounds.width;
  height = self->_bounds.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIImage)imageWithSize:(CGSize)size
{
  width = self->_bounds.width;
  height = self->_bounds.height;
  if ((*MEMORY[0x1E695F060] != width || *(MEMORY[0x1E695F060] + 8) != height) && (size.height > height || size.width > width))
  {
    size = self->_bounds;
  }

  return (*(self->_requestHandler + 2))(size, *&size.height);
}

- (MPMediaItemArtwork)initWithBoundsSize:(CGSize)boundsSize requestHandler:(void *)requestHandler
{
  height = boundsSize.height;
  width = boundsSize.width;
  v7 = requestHandler;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = MPMediaItemArtwork;
    v8 = [(MPMediaItemArtwork *)&v14 init];
    v9 = v8;
    if (v8)
    {
      v8->_bounds.width = width;
      v8->_bounds.height = height;
      v10 = _Block_copy(v7);
      v11 = v9->_requestHandler;
      v9->_requestHandler = v10;
    }

    self = v9;
    v12 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"requestHandler must be non-nil"];
    v12 = 0;
  }

  return v12;
}

- (MPMediaItemArtwork)initWithImage:(UIImage *)image
{
  v4 = image;
  v5 = v4;
  if (v4)
  {
    [(UIImage *)v4 size];
    v7 = v6;
    v9 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__MPMediaItemArtwork_initWithImage___block_invoke;
    v12[3] = &unk_1E7678DB0;
    v13 = v5;
    self = [(MPMediaItemArtwork *)self initWithBoundsSize:v12 requestHandler:v7, v9];

    v10 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"image must be non-nil"];
    v10 = 0;
  }

  return v10;
}

- (MPMediaItemArtwork)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"image must be non-nil"];

  return 0;
}

@end