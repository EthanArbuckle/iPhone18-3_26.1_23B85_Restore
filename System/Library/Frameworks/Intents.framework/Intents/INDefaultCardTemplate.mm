@interface INDefaultCardTemplate
- (BOOL)isEqual:(id)equal;
- (INDefaultCardTemplate)initWithCoder:(id)coder;
- (INDefaultCardTemplate)initWithTitle:(NSString *)title;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INDefaultCardTemplate

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INDefaultCardTemplate *)self copy];
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v10 = INImageProxyInjectionQueue();
    [v9 setUnderlyingQueue:v10];

    [v9 setMaxConcurrentOperationCount:1];
    [v9 setSuspended:1];
    v11 = MEMORY[0x1E696AAE0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__INDefaultCardTemplate_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v16[3] = &unk_1E7287140;
    v16[4] = v8;
    v17 = completionCopy;
    v12 = [v11 blockOperationWithBlock:v16];
    image = [(INDefaultCardTemplate *)self image];
    if (image)
    {
      v14 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v14 setInjector:image];
      [(INImageProxyInjectionOperation *)v14 setImageProxyRequestBlock:imagesCopy];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __83__INDefaultCardTemplate_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v15[3] = &unk_1E7285B78;
      v15[4] = v8;
      [(INImageProxyInjectionOperation *)v14 setCopyReturnBlock:v15];
      [v12 addDependency:v14];
      [v9 addOperation:v14];
    }

    [v9 addOperation:v12];
    [v9 setSuspended:0];
  }
}

uint64_t __83__INDefaultCardTemplate_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setImage:a2];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
}

- (INDefaultCardTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = INDefaultCardTemplate;
  v5 = [(INDefaultCardTemplate *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"title"];
    title = v5->_title;
    v5->_title = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v16;

    v18 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = self->_title;
      title = [(INDefaultCardTemplate *)v5 title];
      v8 = title;
      if (title == title)
      {
      }

      else
      {
        v9 = self->_title;
        title2 = [(INDefaultCardTemplate *)v5 title];
        LODWORD(v9) = [(NSString *)v9 isEqualToString:title2];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      subtitle = self->_subtitle;
      subtitle = [(INDefaultCardTemplate *)v5 subtitle];
      v14 = subtitle;
      if (subtitle == subtitle)
      {
      }

      else
      {
        v15 = self->_subtitle;
        subtitle2 = [(INDefaultCardTemplate *)v5 subtitle];
        LODWORD(v15) = [(NSString *)v15 isEqualToString:subtitle2];

        if (!v15)
        {
LABEL_11:
          v11 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      image = self->_image;
      image = [(INDefaultCardTemplate *)v5 image];
      if (image == image)
      {
        v11 = 1;
      }

      else
      {
        v19 = self->_image;
        image2 = [(INDefaultCardTemplate *)v5 image];
        v11 = [(INImage *)v19 isEqual:image2];
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_18:

  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  return v4 ^ [(INImage *)self->_image hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  title = [(INDefaultCardTemplate *)self title];
  v6 = [v4 initWithTitle:title];

  subtitle = [(INDefaultCardTemplate *)self subtitle];
  [v6 setSubtitle:subtitle];

  image = [(INDefaultCardTemplate *)self image];
  [v6 setImage:image];

  return v6;
}

- (INDefaultCardTemplate)initWithTitle:(NSString *)title
{
  v4 = title;
  v10.receiver = self;
  v10.super_class = INDefaultCardTemplate;
  v5 = [(INDefaultCardTemplate *)&v10 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

@end