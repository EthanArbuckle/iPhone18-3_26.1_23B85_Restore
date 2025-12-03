@interface ClimateTargetTemperatureZoneSelectionButton.LabelsView
- (_TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView)initWithCoder:(id)coder;
- (_TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ClimateTargetTemperatureZoneSelectionButton.LabelsView

- (_TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton.LabelsView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ClimateTargetTemperatureZoneSelectionButton.LabelsView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_10000827C(0, &qword_100115400);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end