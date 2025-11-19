@interface NTKEsterbrookHandsView
- (_TtC32NTKEsterbrookFaceBundleCompanion22NTKEsterbrookHandsView)initWithCoder:(id)a3;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
@end

@implementation NTKEsterbrookHandsView

- (_TtC32NTKEsterbrookFaceBundleCompanion22NTKEsterbrookHandsView)initWithCoder:(id)a3
{
  result = sub_23BE32BA8();
  __break(1u);
  return result;
}

- (id)hourHandConfiguration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NTKEsterbrookHandsView();
  v2 = v5.receiver;
  result = [(CLKUIAnalogHandsView *)&v5 hourHandConfiguration];
  if (result)
  {
    v4 = result;
    [result setHandLength_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)minuteHandConfiguration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NTKEsterbrookHandsView();
  v2 = v5.receiver;
  result = [(CLKUIAnalogHandsView *)&v5 minuteHandConfiguration];
  if (result)
  {
    v4 = result;
    [result setHandLength_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)secondHandConfiguration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NTKEsterbrookHandsView();
  v2 = v5.receiver;
  result = [(CLKUIAnalogHandsView *)&v5 secondHandConfiguration];
  if (result)
  {
    v4 = result;
    [result setHandLength_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end