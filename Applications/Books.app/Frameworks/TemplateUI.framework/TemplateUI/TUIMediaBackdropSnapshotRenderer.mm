@interface TUIMediaBackdropSnapshotRenderer
+ (void)renderWithContent:(id)content size:(CGSize)size contentScale:(double)scale completionHandler:(id)handler;
- (TUIMediaBackdropSnapshotRenderer)init;
@end

@implementation TUIMediaBackdropSnapshotRenderer

+ (void)renderWithContent:(id)content size:(CGSize)size contentScale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  contentCopy = content;
  _s10TemplateUI29MediaBackdropSnapshotRendererC6render7content4size0H5Scale10completionySo15TUIImageContentC_So6CGSizeV12CoreGraphics7CGFloatVySo10CGImageRefaSg_s5Error_pSgtctFZ_0(contentCopy, sub_197298, v11, width, height, scale);
}

- (TUIMediaBackdropSnapshotRenderer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaBackdropSnapshotRenderer();
  return [(TUIMediaBackdropSnapshotRenderer *)&v3 init];
}

@end