@interface INImageNoteContent
- (BOOL)isEqual:(id)a3;
- (INImageNoteContent)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithImage:(id)a3;
- (id)_intents_cacheableObjects;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_intents_updateContainerWithCache:(id)a3;
@end

@implementation INImageNoteContent

- (void)_intents_updateContainerWithCache:(id)a3
{
  v13 = a3;
  v4 = [(INImageNoteContent *)self image];
  if (v4)
  {
    v5 = v4;
    v6 = [(INImageNoteContent *)self image];
    v7 = [v6 _identifier];
    v8 = [v13 cacheableObjectForIdentifier:v7];

    if (v8)
    {
      v9 = [(INImageNoteContent *)self image];
      v10 = [v9 _identifier];
      v11 = [v13 cacheableObjectForIdentifier:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(INImageNoteContent *)self image];
        [v11 _imageSize];
        [v12 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v2 = [(INImageNoteContent *)self image];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"image";
  image = self->_image;
  v3 = image;
  if (!image)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!image)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INImageNoteContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v6 = [objc_alloc(objc_opt_class()) initWithImage:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    image = self->_image;
    v7 = image == v5[1] || [(INImage *)image isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INImageNoteContent;
  v6 = [(INImageNoteContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
  }

  return v7;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INImageNoteContent *)self copy];
    v9 = [(INImageNoteContent *)self image];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__INImageNoteContent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = v7;
      v6[2](v6, v9, v10);
    }

    else
    {
      (*(v7 + 2))(v7, v8);
    }
  }
}

uint64_t __80__INImageNoteContent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setImage:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end