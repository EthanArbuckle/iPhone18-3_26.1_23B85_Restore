@interface CAAUGraphView
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation CAAUGraphView

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  layer = [(CAAUGraphView *)selfCopy layer];

  if (layer == layerCopy)
  {
    (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x380))();
  }
}

@end