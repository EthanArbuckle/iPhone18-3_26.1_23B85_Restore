@interface QLAnimatedImage
- (QLAnimatedImage)initWithImageSource:(CGImageSource *)source;
- (id)frameAtTime:(double)time;
- (int64_t)indexForTime:(double)time;
- (void)dealloc;
- (void)generateDurations;
@end

@implementation QLAnimatedImage

- (void)dealloc
{
  free(self->_durations);
  v3.receiver = self;
  v3.super_class = QLAnimatedImage;
  [(QLAnimatedImage *)&v3 dealloc];
}

- (QLAnimatedImage)initWithImageSource:(CGImageSource *)source
{
  v11.receiver = self;
  v11.super_class = QLAnimatedImage;
  v4 = [(QLAnimatedImage *)&v11 init];
  if (v4)
  {
    v5 = [[QLImageData alloc] initWithImageSource:source];
    imageData = v4->_imageData;
    v4->_imageData = v5;

    v4->_lastImageIndex = 0;
    v7 = [(QLImageData *)v4->_imageData imageAtIndex:0];
    lastImage = v4->_lastImage;
    v4->_lastImage = v7;

    [(QLAnimatedImage *)v4 generateDurations];
    v9 = v4;
  }

  return v4;
}

- (void)generateDurations
{
  if (!self->_durations)
  {
    durations = [(QLImageData *)self->_imageData durations];
    v4 = [durations count];
    self->_durationsCount = v4;
    if (v4)
    {
      durations = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
      self->_durations = durations;
      durationsCount = self->_durationsCount;
      if (durationsCount)
      {
        v7 = 0;
        for (i = 0; i < durationsCount; ++i)
        {
          v9 = [durations objectAtIndexedSubscript:i];
          [v9 floatValue];
          self->_durations[v7].var0 = v10;

          durations = self->_durations;
          if (v7 * 16)
          {
            var1 = durations[v7 - 1].var1;
          }

          else
          {
            var1 = 0.0;
          }

          durations[v7].var1 = var1 + durations[v7].var0;
          durationsCount = self->_durationsCount;
          ++v7;
        }
      }

      v12 = durations[durationsCount - 1].var1;
    }

    else
    {
      v12 = 0.0;
    }

    self->_duration = v12;
  }
}

- (int64_t)indexForTime:(double)time
{
  durationsCount = self->_durationsCount;
  if (!durationsCount)
  {
    return durationsCount - 1;
  }

  result = 0;
  for (i = &self->_durations->var1; *i <= time; i += 2)
  {
    if (durationsCount == ++result)
    {
      return durationsCount - 1;
    }
  }

  return result;
}

- (id)frameAtTime:(double)time
{
  if ([(QLAnimatedImage *)self time:self->_lastImageIndex belongsToIndex:?])
  {
    p_lastImage = &self->_lastImage;
  }

  else
  {
    lastImageIndex = self->_lastImageIndex;
    if (lastImageIndex < self->_durationsCount - 1 && [(QLAnimatedImage *)self time:lastImageIndex + 1 belongsToIndex:time])
    {
      v7 = self->_lastImageIndex + 1;
    }

    else
    {
      v7 = [(QLAnimatedImage *)self indexForTime:time];
    }

    self->_lastImageIndex = v7;
    v8 = [(QLImageData *)self->_imageData imageAtIndex:?];
    lastImage = self->_lastImage;
    p_lastImage = &self->_lastImage;
    *p_lastImage = v8;
  }

  v10 = *p_lastImage;

  return v10;
}

@end