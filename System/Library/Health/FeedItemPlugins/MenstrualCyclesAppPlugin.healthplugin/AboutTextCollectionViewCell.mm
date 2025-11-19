@interface AboutTextCollectionViewCell
- (_TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation AboutTextCollectionViewCell

- (_TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel) = 0;
  v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_item;
  v9 = type metadata accessor for AboutTextCollectionViewCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(AboutTextCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  sub_29E224A24();

  return v10;
}

- (_TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel) = 0;
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end