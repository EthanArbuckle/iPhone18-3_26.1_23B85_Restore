@interface PlatformCloseButton
- (_TtC21WritingToolsUIService19PlatformCloseButton)initWithCoder:(id)a3;
- (void)didTapCloseButton;
- (void)layoutSubviews;
@end

@implementation PlatformCloseButton

- (_TtC21WritingToolsUIService19PlatformCloseButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  *v4 = 0;
  v4[1] = 0;
  v5 = [objc_opt_self() roundButtonWithStyle:0];
  if (!v5)
  {
    __break(1u);
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didTapCloseButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  if (v2)
  {
    v3 = *&self->perform[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
    v4 = self;
    v5 = sub_100058574(v2);
    v2(v5);

    sub_1000F3AB4(v2);
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(PlatformCloseButton *)&v8 layoutSubviews];
  [objc_opt_self() preferredTapRegionSizeForStyle:{0, v8.receiver, v8.super_class}];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton];
  [v2 bounds];
  [v7 setFrame:{CGRectGetMaxX(v9) - v4, 0.0, v4, v6}];
}

@end