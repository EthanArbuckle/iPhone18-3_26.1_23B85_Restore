@interface INImageNoteContent
- (BOOL)isEqual:(id)equal;
- (INImageNoteContent)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithImage:(id)image;
- (id)_intents_cacheableObjects;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
@end

@implementation INImageNoteContent

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  image = [(INImageNoteContent *)self image];
  if (image)
  {
    v5 = image;
    image2 = [(INImageNoteContent *)self image];
    _identifier = [image2 _identifier];
    v8 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v8)
    {
      image3 = [(INImageNoteContent *)self image];
      _identifier2 = [image3 _identifier];
      v11 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        image4 = [(INImageNoteContent *)self image];
        [v11 _imageSize];
        [image4 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  image = [(INImageNoteContent *)self image];
  if (image)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:image];
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
  null = image;
  if (!image)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!image)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INImageNoteContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v6 = [objc_alloc(objc_opt_class()) initWithImage:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    image = self->_image;
    v7 = image == v5[1] || [(INImage *)image isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = INImageNoteContent;
  v6 = [(INImageNoteContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INImageNoteContent *)self copy];
    image = [(INImageNoteContent *)self image];
    if (image)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__INImageNoteContent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = completionCopy;
      imagesCopy[2](imagesCopy, image, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v8);
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