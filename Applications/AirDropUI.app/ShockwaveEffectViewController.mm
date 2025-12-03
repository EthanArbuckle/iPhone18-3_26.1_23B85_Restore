@interface ShockwaveEffectViewController
- (_TtC9AirDropUI29ShockwaveEffectViewController)initWithCoder:(id)coder;
- (_TtC9AirDropUI29ShockwaveEffectViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)viewDidDisappear:;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ShockwaveEffectViewController

- (_TtC9AirDropUI29ShockwaveEffectViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState) = 0;
  v4 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
  v5 = type metadata accessor for SFShockwaveEffectState();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState) & 1) == 0)
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState) = 1;
    selfCopy = self;
    sub_1000489B8(1);
  }
}

- (_TtC9AirDropUI29ShockwaveEffectViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)viewDidDisappear:
{
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_10017F350);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cleaning up haptics after ShockwaveEffectViewController disappeared", v3, 2u);
  }

  if (qword_100172240 != -1)
  {
    swift_once();
  }

  return sub_1000F80B4();
}

@end