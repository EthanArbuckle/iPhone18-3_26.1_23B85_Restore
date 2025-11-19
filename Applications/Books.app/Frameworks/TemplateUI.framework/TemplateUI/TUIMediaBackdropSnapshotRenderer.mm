@interface TUIMediaBackdropSnapshotRenderer
+ (void)renderWithContent:(id)a3 size:(CGSize)a4 contentScale:(double)a5 completionHandler:(id)a6;
- (TUIMediaBackdropSnapshotRenderer)init;
@end

@implementation TUIMediaBackdropSnapshotRenderer

+ (void)renderWithContent:(id)a3 size:(CGSize)a4 contentScale:(double)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  _s10TemplateUI29MediaBackdropSnapshotRendererC6render7content4size0H5Scale10completionySo15TUIImageContentC_So6CGSizeV12CoreGraphics7CGFloatVySo10CGImageRefaSg_s5Error_pSgtctFZ_0(v12, sub_197298, v11, width, height, a5);
}

- (TUIMediaBackdropSnapshotRenderer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaBackdropSnapshotRenderer();
  return [(TUIMediaBackdropSnapshotRenderer *)&v3 init];
}

@end