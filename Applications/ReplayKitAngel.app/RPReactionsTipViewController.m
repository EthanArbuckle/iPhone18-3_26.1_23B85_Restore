@interface RPReactionsTipViewController
- (_TtC14ReplayKitAngel28RPReactionsTipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)prepareForPopoverPresentation:;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RPReactionsTipViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100031810();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100031C9C(a3);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000343E0();
}

- (_TtC14ReplayKitAngel28RPReactionsTipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)prepareForPopoverPresentation:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100010E34(0xD000000000000021, 0x800000010004DA00, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_1000114A8(v9);
  }

  return (*(v1 + 8))(v4, v0);
}

@end