@interface VolumeControl
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC23ShelfKitCollectionViews13VolumeControl)initWithFrame:(CGRect)a3;
- (void)didSlideWithGestureRecognizer:(id)a3;
- (void)didTap;
- (void)layoutSubviews;
- (void)volumeChangedWithNotification:(id)a3;
@end

@implementation VolumeControl

- (void)layoutSubviews
{
  v2 = self;
  sub_2FB5B0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 190.0;
  v4 = 47.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didSlideWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2FC004(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2FC1F0(v4);

  return self & 1;
}

- (void)didTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) = v2 ^ 1;
  v3 = self;
  sub_2FA8A8(v2);
}

- (void)volumeChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2FCB20(v4);
}

- (_TtC23ShelfKitCollectionViews13VolumeControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end