@interface NTKExactitudesMiniClockHandsView
- (_TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView)initWithCoder:(id)coder;
- (_TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView)initWithDiameter:(double)diameter forDevice:(id)device;
- (double)hourHandLength;
- (double)minuteHandLength;
- (double)secondHandLength;
- (id)initForDevice:(id)device;
- (id)secondHandConfiguration;
@end

@implementation NTKExactitudesMiniClockHandsView

- (double)secondHandLength
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *&self->metrics[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics + 8];

  return v3;
}

- (double)minuteHandLength
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *&self->metrics[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics];

  return v3;
}

- (double)hourHandLength
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *&self->CLKUIHandsView_opaque[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics];

  return v3;
}

- (id)initForDevice:(id)device
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  deviceCopy = device;
  v5 = sub_1C5E8(device);

  return v5;
}

- (_TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView)initWithDiameter:(double)diameter forDevice:(id)device
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  deviceCopy = device;
  v7 = sub_1D248(deviceCopy, diameter);

  return v7;
}

- (_TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView)initWithCoder:(id)coder
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_217EC();
  __break(1u);
  return result;
}

- (id)secondHandConfiguration
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
  selfCopy = self;
  result = [(NTKExactitudesMiniClockHandsView *)&v6 secondHandConfiguration];
  if (result)
  {
    v5 = result;
    [result setHandLength:{*&selfCopy->metrics[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics + 8], v6.receiver, v6.super_class}];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end