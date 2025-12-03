@interface TUIPageControlBox
- (BOOL)hiddenWhenUnavailable;
- (_TtC10TemplateUI17TUIPageControlBox)init;
- (void)setHiddenWhenUnavailable:(BOOL)unavailable;
@end

@implementation TUIPageControlBox

- (BOOL)hiddenWhenUnavailable
{
  v3 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setHiddenWhenUnavailable:(BOOL)unavailable
{
  v5 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = unavailable;
}

- (_TtC10TemplateUI17TUIPageControlBox)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TUIPageControlBox();
  return [(TUIStatefulElementBox *)&v3 init];
}

@end