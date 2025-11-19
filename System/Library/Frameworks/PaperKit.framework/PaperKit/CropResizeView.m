@interface CropResizeView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)cancelCrop;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)gestureRecognizerDidTap:(id)a3;
- (void)layoutSubviews;
@end

@implementation CropResizeView

- (void)layoutSubviews
{
  v2 = self;
  CropResizeView.layoutSubviews()();
}

- (void)cancelCrop
{
  v2 = self;
  CropResizeView.cancelCrop()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if ([(CropResizeView *)v8 isHidden])
  {

    v8 = 0;
  }

  else
  {
    v11.receiver = v8;
    v11.super_class = type metadata accessor for CropResizeView(0);
    v9 = [(ResizeView *)&v11 hitTest:v7 withEvent:x, y];

    if (v9)
    {

      v8 = v9;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CropResizeView.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)gestureRecognizerDidTap:(id)a3
{
  v5 = a3;
  v6 = self;
  CropResizeView.gestureRecognizerDidTap(_:)(a3);
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CropResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(v6, v7);

  return v9;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10.super.super.isa = specialized CropResizeView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = self;
  static Date.now.getter();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed;
  swift_beginAccess();
  outlined assign with take of Date?(v8, v9 + v11);
  swift_endAccess();
}

@end