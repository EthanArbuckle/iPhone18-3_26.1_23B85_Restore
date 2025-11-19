@interface FigFCRRenderedLegibleOutputNodeContentLayer
- (FigFCRRenderedLegibleOutputNodeContentLayer)init;
- (void)dealloc;
@end

@implementation FigFCRRenderedLegibleOutputNodeContentLayer

- (FigFCRRenderedLegibleOutputNodeContentLayer)init
{
  v5.receiver = self;
  v5.super_class = FigFCRRenderedLegibleOutputNodeContentLayer;
  v2 = [(FigBaseCALayer *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
    v2->layerInternal = v3;
    v3->var0 = v2;
  }

  return v2;
}

- (void)dealloc
{
  layerInternal = self->layerInternal;
  if (layerInternal)
  {
    if (!layerInternal->var1 || (CFRelease(layerInternal->var1), self->layerInternal->var1 = 0, (layerInternal = self->layerInternal) != 0))
    {
      self->layerInternal = 0;
      free(layerInternal);
    }
  }

  v4.receiver = self;
  v4.super_class = FigFCRRenderedLegibleOutputNodeContentLayer;
  [(FigBaseCALayer *)&v4 dealloc];
}

@end