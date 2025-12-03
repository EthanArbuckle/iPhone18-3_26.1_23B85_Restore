@interface MeasurementDetailSheetViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC7Measure36MeasurementDetailSheetViewController)initWithCoder:(id)coder;
- (_TtC7Measure36MeasurementDetailSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation MeasurementDetailSheetViewController

- (_TtC7Measure36MeasurementDetailSheetViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10009E740(builder);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10009EDA4(action, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (_TtC7Measure36MeasurementDetailSheetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end