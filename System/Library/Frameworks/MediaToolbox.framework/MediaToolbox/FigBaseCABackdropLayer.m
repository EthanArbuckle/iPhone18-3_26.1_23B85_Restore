@interface FigBaseCABackdropLayer
- (FigBaseCABackdropLayer)init;
- (id)actionForKey:(id)a3;
- (void)addSublayer:(id)a3;
- (void)insertSublayer:(id)a3 above:(id)a4;
- (void)insertSublayer:(id)a3 atIndex:(unsigned int)a4;
- (void)insertSublayer:(id)a3 below:(id)a4;
- (void)removeFromSuperlayer;
- (void)replaceSublayer:(id)a3 with:(id)a4;
- (void)setSublayers:(id)a3;
@end

@implementation FigBaseCABackdropLayer

- (FigBaseCABackdropLayer)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4.receiver = self;
  v4.super_class = FigBaseCABackdropLayer;
  return [(FigBaseCABackdropLayer *)&v4 init];
}

- (id)actionForKey:(id)a3
{
  if (([a3 isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigBaseCABackdropLayer;
  return [(FigBaseCABackdropLayer *)&v6 actionForKey:a3];
}

- (void)setSublayers:(id)a3
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v3.receiver = self;
    v3.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v3 setSublayers:a3];
  }
}

- (void)addSublayer:(id)a3
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v3.receiver = self;
    v3.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v3 addSublayer:a3];
  }
}

- (void)insertSublayer:(id)a3 atIndex:(unsigned int)a4
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v4.receiver = self;
    v4.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v4 insertSublayer:a3 atIndex:*&a4];
  }
}

- (void)insertSublayer:(id)a3 below:(id)a4
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v4.receiver = self;
    v4.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v4 insertSublayer:a3 below:a4];
  }
}

- (void)insertSublayer:(id)a3 above:(id)a4
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v4.receiver = self;
    v4.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v4 insertSublayer:a3 above:a4];
  }
}

- (void)replaceSublayer:(id)a3 with:(id)a4
{
  if (!*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    v4.receiver = self;
    v4.super_class = FigBaseCABackdropLayer;
    [(FigBaseCABackdropLayer *)&v4 replaceSublayer:a3 with:a4];
  }
}

- (void)removeFromSuperlayer
{
  v2.receiver = self;
  v2.super_class = FigBaseCABackdropLayer;
  [(FigBaseCABackdropLayer *)&v2 removeFromSuperlayer];
}

@end