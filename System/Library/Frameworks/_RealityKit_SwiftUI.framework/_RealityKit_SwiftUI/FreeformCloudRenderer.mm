@interface FreeformCloudRenderer
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation FreeformCloudRenderer

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  FreeformCloudRenderer.mtkView(_:drawableSizeWillChange:)(viewCopy, __PAIR128__(*&height, *&width));
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  FreeformCloudRenderer.draw(in:)(viewCopy);
}

@end