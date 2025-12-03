@interface CoveragePointRenderer
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation CoveragePointRenderer

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  CoveragePointRenderer.mtkView(_:drawableSizeWillChange:)(viewCopy, __PAIR128__(*&height, *&width));
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  CoveragePointRenderer.draw(in:)(viewCopy);
}

@end