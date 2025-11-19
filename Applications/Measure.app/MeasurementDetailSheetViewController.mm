@interface MeasurementDetailSheetViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC7Measure36MeasurementDetailSheetViewController)initWithCoder:(id)a3;
- (_TtC7Measure36MeasurementDetailSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation MeasurementDetailSheetViewController

- (_TtC7Measure36MeasurementDetailSheetViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10009E740(a3);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10009EDA4(a3, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (_TtC7Measure36MeasurementDetailSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end