@interface ABHitTestPassthroughView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ABHitTestPassthroughView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(ABHitTestPassthroughView *)self subviews];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ABHitTestPassthroughView_pointInside_withEvent___block_invoke;
  v11[3] = &unk_278BFFDF8;
  v14 = x;
  v15 = y;
  v11[4] = self;
  v9 = v7;
  v12 = v9;
  v13 = &v16;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v11];

  LOBYTE(v8) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8;
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