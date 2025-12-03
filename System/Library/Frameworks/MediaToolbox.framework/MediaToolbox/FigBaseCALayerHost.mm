@interface FigBaseCALayerHost
- (FigBaseCALayerHost)init;
- (id)actionForKey:(id)key;
- (void)addSublayer:(id)sublayer;
- (void)insertSublayer:(id)sublayer above:(id)above;
- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index;
- (void)insertSublayer:(id)sublayer below:(id)below;
- (void)removeFromSuperlayer;
- (void)replaceSublayer:(id)sublayer with:(id)with;
- (void)setSublayers:(id)sublayers;
@end

@implementation FigBaseCALayerHost

- (FigBaseCALayerHost)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4.receiver = self;
  v4.super_class = FigBaseCALayerHost;
  return [(CALayerHost *)&v4 init];
}

- (id)actionForKey:(id)key
{
  if (([key isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(key, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigBaseCALayerHost;
  return [(FigBaseCALayerHost *)&v6 actionForKey:key];
}

- (void)setSublayers:(id)sublayers
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v3 setSublayers:sublayers];
  }
}

- (void)addSublayer:(id)sublayer
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v3 addSublayer:sublayer];
  }
}

- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v4 insertSublayer:sublayer atIndex:*&index];
  }
}

- (void)insertSublayer:(id)sublayer below:(id)below
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v4 insertSublayer:sublayer below:below];
  }
}

- (void)insertSublayer:(id)sublayer above:(id)above
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v4 insertSublayer:sublayer above:above];
  }
}

- (void)replaceSublayer:(id)sublayer with:(id)with
{
  if ((*(&self->super._asynchronousRenderMaxAPLStrength + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayerHost;
    [(FigBaseCALayerHost *)&v4 replaceSublayer:sublayer with:with];
  }
}

- (void)removeFromSuperlayer
{
  v2.receiver = self;
  v2.super_class = FigBaseCALayerHost;
  [(FigBaseCALayerHost *)&v2 removeFromSuperlayer];
}

@end