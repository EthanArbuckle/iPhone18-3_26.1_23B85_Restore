@interface CAAUGraphView
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation CAAUGraphView

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(CAAUGraphView *)v6 layer];

  if (v5 == v4)
  {
    (*((*MEMORY[0x277D85000] & v6->super.super.super.isa) + 0x380))();
  }
}

@end