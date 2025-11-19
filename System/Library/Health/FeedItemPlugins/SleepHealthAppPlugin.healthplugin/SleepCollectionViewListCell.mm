@interface SleepCollectionViewListCell
- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation SleepCollectionViewListCell

- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for SleepCollectionViewListCell();
  v8 = [(SleepCollectionViewListCell *)&v12 initWithFrame:x, y, width, height];
  v9 = *((*MEMORY[0x29EDCA1E8] & v8->super.super.super.super.super.super.isa) + 0x50);
  v10 = v8;
  v9();

  return v10;
}

- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

- (void)didMoveToSuperview
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_29E71D07C();
}

@end