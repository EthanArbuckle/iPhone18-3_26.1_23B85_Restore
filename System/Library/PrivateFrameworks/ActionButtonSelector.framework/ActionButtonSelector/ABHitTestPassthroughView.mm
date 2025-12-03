@interface ABHitTestPassthroughView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation ABHitTestPassthroughView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  subviews = [(ABHitTestPassthroughView *)self subviews];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ABHitTestPassthroughView_pointInside_withEvent___block_invoke;
  v11[3] = &unk_278BFFDF8;
  v14 = x;
  v15 = y;
  v11[4] = self;
  v9 = eventCopy;
  v12 = v9;
  v13 = &v16;
  [subviews enumerateObjectsWithOptions:2 usingBlock:v11];

  LOBYTE(subviews) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return subviews;
}

void __50__ABHitTestPassthroughView_pointInside_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isHidden] & 1) == 0)
  {
    if ([v7 isUserInteractionEnabled])
    {
      [v7 alpha];
      if (v6 >= 0.01)
      {
        [v7 convertPoint:*(a1 + 32) fromView:{*(a1 + 56), *(a1 + 64)}];
        if ([v7 pointInside:*(a1 + 40) withEvent:?])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }
}

@end