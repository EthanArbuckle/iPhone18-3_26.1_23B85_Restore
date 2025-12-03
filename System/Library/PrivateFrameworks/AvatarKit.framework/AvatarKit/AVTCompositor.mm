@interface AVTCompositor
- (AVTCompositor)init;
- (void)componentDidChangeForTypes:(unint64_t)types;
- (void)configureMaterial:(id)material propertyNamed:(id)named memoji:(id)memoji;
- (void)skinColorDidChange;
@end

@implementation AVTCompositor

- (AVTCompositor)init
{
  v6.receiver = self;
  v6.super_class = AVTCompositor;
  v2 = [(AVTCompositor *)&v6 init];
  if (v2)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    textureProviders = v2->_textureProviders;
    v2->_textureProviders = Mutable;
  }

  return v2;
}

- (void)skinColorDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_textureProviders;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) skinColorDidChange];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)componentDidChangeForTypes:(unint64_t)types
{
  v15 = *MEMORY[0x1E69E9840];
  if (types)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_textureProviders;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) componentDidChangeForTypes:{types, v10}];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureMaterial:(id)material propertyNamed:(id)named memoji:(id)memoji
{
  materialCopy = material;
  namedCopy = named;
  memojiCopy = memoji;
  v10 = [materialCopy valueForKey:namedCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DF300]);
    [materialCopy setValue:v10 forKey:namedCopy];
  }

  contents = [v10 contents];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [[AVTCompositorTextureProvider alloc] initWithCompositor:self memoji:memojiCopy propertyName:namedCopy];
    [v10 setContents:v12];
  }
}

@end