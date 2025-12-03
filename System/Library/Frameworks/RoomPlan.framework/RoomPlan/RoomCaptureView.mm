@interface RoomCaptureView
- (NSArray)subviews;
- (id)ibDelegate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setIbDelegate:(id)delegate;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoomCaptureView

- (id)ibDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setIbDelegate:(id)delegate
{
  selfCopy = self;
  if (delegate)
  {
    swift_unknownObjectRetain();
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = selfCopy + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  *(v6 + 1) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

- (NSArray)subviews
{
  selfCopy = self;
  sub_23A9AE07C();

  sub_23A8D6C58(0, &qword_27DFB0C98, 0x277D75D18);
  v3 = sub_23AA0D2E4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_23A9AF7D4(coderCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  traitCollection = [(RoomCaptureView *)selfCopy traitCollection];
  hasDifferentColorAppearanceComparedToTraitCollection_ = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection_];

  if (hasDifferentColorAppearanceComparedToTraitCollection_)
  {
    sub_23A9B0474();
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoomCaptureView();
  v2 = v5.receiver;
  [(RoomCaptureView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (void)dealloc
{
  selfCopy = self;
  *(sub_23A9ADC0C() + 3) = 0;
  swift_unknownObjectWeakAssign();

  sub_23A9AFE24();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for RoomCaptureView();
  [(RoomCaptureView *)&v3 dealloc];
}

@end