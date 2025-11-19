@interface CycleLogDataCell
- (_TtC24MenstrualCyclesAppPlugin16CycleLogDataCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin16CycleLogDataCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation CycleLogDataCell

- (_TtC24MenstrualCyclesAppPlugin16CycleLogDataCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView) = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CycleLogDataCell();
  v8 = [(CycleLogDataCell *)&v13 initWithFrame:x, y, width, height];
  v12[3] = sub_29E2C08B4();
  v12[4] = MEMORY[0x29EDC7800];
  v9 = sub_29DEBB7E8(v12);
  v10 = v8;
  sub_29E267958(v9);
  MEMORY[0x29ED805A0](v12);

  return v10;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_29E2C0674();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C0664();
  v8 = self;
  sub_29E267D74(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC24MenstrualCyclesAppPlugin16CycleLogDataCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end