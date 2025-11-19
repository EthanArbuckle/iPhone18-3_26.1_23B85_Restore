@interface THLayerRestorer
- (THLayerRestorer)initWithLayer:(id)a3;
- (void)restoreLayer:(id)a3;
@end

@implementation THLayerRestorer

- (THLayerRestorer)initWithLayer:(id)a3
{
  v11.receiver = self;
  v11.super_class = THLayerRestorer;
  v4 = [(THLayerRestorer *)&v11 init];
  if (v4)
  {
    v5 = [a3 superlayer];
    v4->mSuperlayer = v5;
    v4->mZOrder = [(NSArray *)[(CALayer *)v5 sublayers] indexOfObject:a3];
    [a3 frame];
    v4->mFrame.origin.x = v6;
    v4->mFrame.origin.y = v7;
    v4->mFrame.size.width = v8;
    v4->mFrame.size.height = v9;
  }

  return v4;
}

- (void)restoreLayer:(id)a3
{
  [a3 setFrame:{self->mFrame.origin.x, self->mFrame.origin.y, self->mFrame.size.width, self->mFrame.size.height}];
  mSuperlayer = self->mSuperlayer;
  mZOrder_low = LODWORD(self->mZOrder);

  [(CALayer *)mSuperlayer insertSublayer:a3 atIndex:mZOrder_low];
}

@end