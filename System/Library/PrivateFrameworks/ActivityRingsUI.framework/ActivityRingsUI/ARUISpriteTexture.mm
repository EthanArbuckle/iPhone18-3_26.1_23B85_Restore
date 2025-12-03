@interface ARUISpriteTexture
- (ARUISpriteTexture)initWithImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ARUISpriteTexture

- (ARUISpriteTexture)initWithImage:(id)image
{
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = ARUISpriteTexture;
  v5 = [(ARUISpriteTexture *)&v17 init];
  if (v5)
  {
    [imageCopy size];
    v7 = v6;
    v5->_height = v7;
    [imageCopy size];
    *&v8 = v8;
    v5->_width = *&v8;
    v9 = MTLCreateSystemDefaultDevice();
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:v9];
      v16 = 0;
      v11 = [v10 newTextureWithCGImage:objc_msgSend(imageCopy options:"CGImage") error:{0, &v16}];
      v12 = v16;
      texture = v5->_texture;
      v5->_texture = v11;

      if (v12)
      {
        v14 = arui_rings_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [(ARUISpriteTexture *)imageCopy initWithImage:v12, v14];
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = +[ARUIHashBuilder builder];
  *&v4 = self->_height;
  [v3 appendFloat:v4];
  *&v5 = self->_width;
  [v3 appendFloat:v5];
  [v3 appendObject:self->_texture];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_texture)
      {
        v7 = 0;
      }

      else
      {
        texture = [(ARUISpriteTexture *)v5 texture];
        v7 = texture == 0;
      }

      width = self->_width;
      [(ARUISpriteTexture *)v6 width];
      if (ARUIFloatEqual(width, v11))
      {
        height = self->_height;
        [(ARUISpriteTexture *)v6 height];
        v8 = ARUIFloatEqual(height, v13);
        if (!v7 && v8)
        {
          texture = self->_texture;
          texture2 = [(ARUISpriteTexture *)v6 texture];
          v8 = texture == texture2;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithImage:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_1CFD67000, a3, OS_LOG_TYPE_FAULT, "Failed to load texture from image: %@, error: %@", &v6, 0x16u);
}

@end