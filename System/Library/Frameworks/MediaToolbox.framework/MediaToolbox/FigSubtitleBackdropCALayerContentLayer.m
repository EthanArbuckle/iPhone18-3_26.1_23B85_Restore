@interface FigSubtitleBackdropCALayerContentLayer
- (FigSubtitleBackdropCALayerContentLayer)init;
- (void)dealloc;
@end

@implementation FigSubtitleBackdropCALayerContentLayer

- (FigSubtitleBackdropCALayerContentLayer)init
{
  v5.receiver = self;
  v5.super_class = FigSubtitleBackdropCALayerContentLayer;
  v2 = [(FigBaseCALayer *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
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
    self->layerInternal = 0;
    free(layerInternal);
  }

  v4.receiver = self;
  v4.super_class = FigSubtitleBackdropCALayerContentLayer;
  [(FigBaseCALayer *)&v4 dealloc];
}

@end