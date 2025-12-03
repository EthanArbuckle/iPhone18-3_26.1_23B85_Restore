@interface WirelessInsightsSettings
- (WirelessInsightsSettings)initWithCoder:(id)coder;
- (WirelessInsightsSettings)initWithNibName:(id)name bundle:(id)bundle;
- (id)confidence:(id)confidence;
- (id)getPredictionSimulationMode:(id)mode;
- (id)impact:(id)impact;
- (id)specifiers;
- (id)startTime:(id)time;
- (id)startTimeString:(id)string;
- (void)setStartTimeWithValue:(id)value forSpecifier:(id)specifier;
@end

@implementation WirelessInsightsSettings

- (id)specifiers
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_31D0();

  if (v4)
  {
    v5.super.isa = sub_BC30().super.isa;
  }

  else
  {

    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setStartTimeWithValue:(id)value forSpecifier:(id)specifier
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  valueCopy = value;
  specifierCopy = specifier;
  selfCopy = self;
  sub_3730(valueCopy, specifierCopy);
}

- (id)startTimeString:(id)string
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  stringCopy = string;
  selfCopy = self;
  sub_3A80(stringCopy);

  v7 = sub_BB30();

  return v7;
}

- (id)startTime:(id)time
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  timeCopy = time;
  selfCopy = self;
  v7 = sub_A904(timeCopy);
  if ((v8 & 1) == 0)
  {
    v10 = v7;
    v11 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    result = swift_beginAccess();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *&selfCopy->PSListController_opaque[v11];
      if (v10 < *(v13 + 16))
      {
        v14 = (v13 + 48 * v10);
        v15 = v14[4];
        v16 = *(v14 + 7);
        v17 = *(v14 + 9);
        v18 = objc_allocWithZone(NSNumber);

        v9.super.super.isa = [v18 initWithDouble:v15];

        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  sub_B8C4(0, &qword_14428, NSNumber_ptr);
  v9.super.super.isa = sub_BCB0(120).super.super.isa;

LABEL_8:

  return v9.super.super.isa;
}

- (id)impact:(id)impact
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  impactCopy = impact;
  selfCopy = self;
  v7 = sub_A904(impactCopy);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    result = swift_beginAccess();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *&selfCopy->PSListController_opaque[v10];
      if (v9 < *(v12 + 16))
      {
        v13 = (v12 + 48 * v9);
        v15 = v13[7];
        v14 = v13[8];
        v16 = v13[9];

        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

LABEL_8:
  v17 = sub_BB30();

  return v17;
}

- (id)confidence:(id)confidence
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  confidenceCopy = confidence;
  selfCopy = self;
  v7 = sub_A904(confidenceCopy);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    result = swift_beginAccess();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *&selfCopy->PSListController_opaque[v10];
      if (v9 < *(v12 + 16))
      {
        v13 = v12 + 48 * v9;
        v15 = *(v13 + 48);
        v14 = *(v13 + 56);

        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

LABEL_8:
  v16 = sub_BB30();

  return v16;
}

- (id)getPredictionSimulationMode:(id)mode
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  modeCopy = mode;
  selfCopy = self;
  sub_AA64();

  v7 = sub_BB30();

  return v7;
}

- (WirelessInsightsSettings)initWithNibName:(id)name bundle:(id)bundle
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_BB40();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_74AC(v6, name, bundle);

  return v9;
}

- (WirelessInsightsSettings)initWithCoder:(id)coder
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_7680(coder);

  return v4;
}

@end