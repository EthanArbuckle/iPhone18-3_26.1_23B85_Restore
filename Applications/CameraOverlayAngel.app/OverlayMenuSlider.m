@interface OverlayMenuSlider
- (BOOL)isDisabledAtIndex:(int64_t)a3;
- (CGAffineTransform)orientationTransform;
- (CGSize)sizeForImageAtIndex:(int64_t)a3;
- (NSArray)imageNames;
- (NSIndexSet)disabledMenuItemsIndices;
- (_TtP18CameraOverlayAngel25OverlayMenuSliderDelegate_)delegate;
- (id)imageForTickMarkAtIndex:(int64_t)a3;
- (void)discreteSliderDidChangeValue:(id)a3;
- (void)layoutSubviews;
- (void)setAlignment:(unint64_t)a3;
- (void)setDisabledMenuItemsIndices:(id)a3;
- (void)setImageNames:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectedControlIndex:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation OverlayMenuSlider

- (_TtP18CameraOverlayAngel25OverlayMenuSliderDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedControlIndex:(int64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10001D740(a3, a4);
}

- (NSArray)imageNames
{
  v2 = *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setImageNames:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);
  *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames) = v4;
  v6 = self;
  sub_10001D9A0(v5);
}

- (NSIndexSet)disabledMenuItemsIndices
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_disabledMenuItemsIndices;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  IndexSet._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (void)setDisabledMenuItemsIndices:(id)a3
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10001DFB4(v7);
}

- (void)discreteSliderDidChangeValue:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    [v6 overlayMenuSlider:v8 didSelectControlAt:{objc_msgSend(v7, "selectedIndex")}];
    swift_unknownObjectRelease();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10001E5C8();
}

- (id)imageForTickMarkAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_10001E924(a3);

  return v5;
}

- (CGSize)sizeForImageAtIndex:(int64_t)a3
{
  v4 = self;
  sub_10001DC5C(a3);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isDisabledAtIndex:(int64_t)a3
{
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_disabledMenuItemsIndices;
  swift_beginAccess();
  (*(v6 + 16))(v9, self + v10, v5);
  LOBYTE(a3) = IndexSet.contains(_:)(a3);
  (*(v6 + 8))(v9, v5);
  return a3 & 1;
}

- (void)setOrientation:(int64_t)a3
{
  v4 = self;
  sub_10001EC94(a3);
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10001ED30(a3, a4);
}

- (CGAffineTransform)orientationTransform
{
  v4 = self;
  sub_10001E7AC(v8);

  v6 = v8[1];
  v7 = v8[2];
  *&retstr->a = v8[0];
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)setAlignment:(unint64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment);
  *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment) = a3;
  if (v3 != a3)
  {
    [(OverlayMenuSlider *)self setNeedsLayout];
  }
}

@end