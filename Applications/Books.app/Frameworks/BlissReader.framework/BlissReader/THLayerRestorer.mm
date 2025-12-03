@interface THLayerRestorer
- (THLayerRestorer)initWithLayer:(id)layer;
- (void)restoreLayer:(id)layer;
@end

@implementation THLayerRestorer

- (THLayerRestorer)initWithLayer:(id)layer
{
  v11.receiver = self;
  v11.super_class = THLayerRestorer;
  v4 = [(THLayerRestorer *)&v11 init];
  if (v4)
  {
    superlayer = [layer superlayer];
    v4->mSuperlayer = superlayer;
    v4->mZOrder = [(NSArray *)[(CALayer *)superlayer sublayers] indexOfObject:layer];
    [layer frame];
    v4->mFrame.origin.x = v6;
    v4->mFrame.origin.y = v7;
    v4->mFrame.size.width = v8;
    v4->mFrame.size.height = v9;
  }

  return v4;
}

- (void)restoreLayer:(id)layer
{
  [layer setFrame:{self->mFrame.origin.x, self->mFrame.origin.y, self->mFrame.size.width, self->mFrame.size.height}];
  mSuperlayer = self->mSuperlayer;
  mZOrder_low = LODWORD(self->mZOrder);

  [(CALayer *)mSuperlayer insertSublayer:layer atIndex:mZOrder_low];
}

@end