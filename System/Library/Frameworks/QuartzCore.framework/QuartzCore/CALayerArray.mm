@interface CALayerArray
- (CALayerArray)initWithLayers:(id *)layers count:(unint64_t)count retain:(BOOL)retain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation CALayerArray

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  p_ivars = &self->_ivars;
  if (self->_ivars.retained)
  {
    var0 = self->_ivars.var0;
    if (var0 == 1)
    {
      if (!self->_ivars.capacity)
      {
        do
        {
LABEL_7:
          layers = p_ivars->layers;
          p_ivars = (p_ivars + 8);
          CFRelease(layers);
          --var0;
        }

        while (var0);
        goto LABEL_8;
      }
    }

    else if (!var0)
    {
      goto LABEL_8;
    }

    p_ivars = p_ivars->layers;
    goto LABEL_7;
  }

LABEL_8:
  if (self->_ivars.capacity)
  {
    v6 = self->_ivars.layers;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v6);
  }

  v7.receiver = self;
  v7.super_class = CALayerArray;
  [(CALayerArray *)&v7 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  p_ivars = &self->_ivars;
  result = self->_ivars.var0;
  if (result)
  {
    if (state->var0)
    {
      return 0;
    }

    else
    {
      state->var0 = 1;
      if (result == 1 && !p_ivars->capacity)
      {
        p_layers = &p_ivars->layers;
      }

      else
      {
        p_layers = p_ivars->layers;
      }

      state->var1 = p_layers;
      state->var2 = &p_ivars->mutations;
    }
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);

  return [v3 initWithObjects:? count:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);

  return [v3 initWithObjects:? count:?];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  p_ivars = &self->_ivars;
  if (self->_ivars.var0 != 1 || self->_ivars.capacity)
  {
    p_ivars = p_ivars->layers;
  }

  if (range.length)
  {
    v5 = (&p_ivars->layers + range.location);
    do
    {
      v6 = *v5++;
      *objects++ = v6;
      --range.length;
    }

    while (range.length);
  }
}

- (void)getObjects:(id *)objects
{
  p_ivars = &self->_ivars;
  var0 = self->_ivars.var0;
  if (var0 != 1)
  {
    if (!var0)
    {
      return;
    }

    goto LABEL_5;
  }

  if (self->_ivars.capacity)
  {
LABEL_5:
    p_ivars = p_ivars->layers;
    goto LABEL_6;
  }

  do
  {
LABEL_6:
    layers = p_ivars->layers;
    p_ivars = (p_ivars + 8);
    *objects++ = layers;
    --var0;
  }

  while (var0);
}

- (id)objectAtIndex:(unint64_t)index
{
  v14 = *MEMORY[0x1E69E9840];
  p_ivars = &self->_ivars;
  var0 = self->_ivars.var0;
  if (var0 <= index)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v8 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_ivars.var0;
      v10 = 134218240;
      indexCopy = index;
      v12 = 2048;
      v13 = v9;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "CoreAnimation: Out of bounds access at index %ld to array with count of %ld!\n", &v10, 0x16u);
    }

    abort();
  }

  if (var0 != 1 || self->_ivars.capacity)
  {
    p_ivars = p_ivars->layers;
  }

  return *(&p_ivars->layers + index);
}

- (CALayerArray)initWithLayers:(id *)layers count:(unint64_t)count retain:(BOOL)retain
{
  retainCopy = retain;
  v8 = [(CALayerArray *)self init];
  v9 = v8;
  if (!v8 || !count)
  {
    return v9;
  }

  if (count >> 61)
  {
    v8->_ivars.layers = 0;
LABEL_13:

    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 8 * count, 0x80040B8603338uLL);
  p_ivars = &v9->_ivars;
  v9->_ivars.layers = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v9->_ivars.var0 = count;
  v9->_ivars.capacity = count;
  v9->_ivars.retained = retainCopy;
  do
  {
    p_ivars->layers[v12] = layers[v12];
    if (retainCopy)
    {
      CFRetain(p_ivars->layers[v12]);
    }

    ++v12;
  }

  while (count != v12);
  return v9;
}

@end