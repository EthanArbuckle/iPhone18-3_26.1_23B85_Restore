@interface ClimateFocusGuide
- (BOOL)isEnabled;
- (_TtC7Climate17ClimateFocusGuide)init;
- (_TtC7Climate17ClimateFocusGuide)initWithCoder:(id)coder;
- (void)_didUpdateFocusToPreferredFocusedView;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation ClimateFocusGuide

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateFocusGuide();
  return [(ClimateFocusGuide *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateFocusGuide();
  v4 = v7.receiver;
  [(ClimateFocusGuide *)&v7 setEnabled:enabledCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setHidden:{objc_msgSend(v4, "isEnabled", v7.receiver, v7.super_class) ^ 1}];
  }
}

- (_TtC7Climate17ClimateFocusGuide)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_didUpdateFocusToPreferredFocusedView
{
  selfCopy = self;
  ClimateFocusGuide._didUpdateFocusToPreferredFocusedView()();
}

- (_TtC7Climate17ClimateFocusGuide)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end