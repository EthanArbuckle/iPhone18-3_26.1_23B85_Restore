@interface CycleHistorySingleCycleCell
- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)cycleViewPanned:(id)a3;
- (void)cycleViewPressed:(id)a3;
- (void)cycleViewTapped:(id)a3;
- (void)prepareForReuse;
@end

@implementation CycleHistorySingleCycleCell

- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_29E108F38(v4, v5);
}

- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_singleCycleView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for CycleHistorySingleCycleView()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleHistorySingleCycleCell();
  v2 = v3.receiver;
  [(CycleHistorySingleCycleCell *)&v3 prepareForReuse];
  sub_29DFFBB94();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_29E2C0674();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C0664();
  v8 = self;
  sub_29E108220();

  (*(v5 + 8))(v7, v4);
}

- (void)cycleViewTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E109094();
}

- (void)cycleViewPanned:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E108A04(v4);
}

- (void)cycleViewPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E108B24(v4);
}

@end