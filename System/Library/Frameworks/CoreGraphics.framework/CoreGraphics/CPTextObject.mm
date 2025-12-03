@interface CPTextObject
- (double)maxFontLineHeight;
- (float)maxFontSize;
- (void)calculateMetrics;
- (void)clearCachedInfo;
- (void)translateObjectYBy:(double)by;
@end

@implementation CPTextObject

- (void)translateObjectYBy:(double)by
{
  v5.receiver = self;
  v5.super_class = CPTextObject;
  [(CPChunk *)&v5 translateObjectYBy:?];
  self->anchor.y = self->anchor.y + by;
}

- (void)clearCachedInfo
{
  self->maxFontSize = 0.0;
  self->maxFontLineHeight = 0.0;
  self->metricInfoCalculated = 0;
}

- (double)maxFontLineHeight
{
  if (!self->metricInfoCalculated)
  {
    [(CPTextObject *)self calculateMetrics];
  }

  return self->maxFontLineHeight;
}

- (float)maxFontSize
{
  if (!self->metricInfoCalculated)
  {
    [(CPTextObject *)self calculateMetrics];
  }

  return self->maxFontSize;
}

- (void)calculateMetrics
{
  self->maxFontSize = 0.0;
  self->maxFontLineHeight = 0.0;
  v3 = [(CPObject *)self count];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(CPObject *)self childAtIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 maxFontSize];
        self->maxFontSize = fmaxf(v7, self->maxFontSize);
        [v6 maxFontLineHeight];
        *&v8 = v8;
        maxFontLineHeight = self->maxFontLineHeight;
        self->maxFontLineHeight = fmaxf(*&v8, maxFontLineHeight);
      }

      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  self->metricInfoCalculated = 1;
}

@end