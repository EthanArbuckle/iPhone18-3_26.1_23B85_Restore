@interface FreeformCloudRenderer
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation FreeformCloudRenderer

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  FreeformCloudRenderer.mtkView(_:drawableSizeWillChange:)(v7, __PAIR128__(*&height, *&width));
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  FreeformCloudRenderer.draw(in:)(v4);
}

@end