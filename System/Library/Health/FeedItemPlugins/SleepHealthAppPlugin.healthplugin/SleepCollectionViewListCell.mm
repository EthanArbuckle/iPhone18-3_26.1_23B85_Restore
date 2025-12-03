@interface SleepCollectionViewListCell
- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
@end

@implementation SleepCollectionViewListCell

- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for SleepCollectionViewListCell();
  height = [(SleepCollectionViewListCell *)&v12 initWithFrame:x, y, width, height];
  v9 = *((*MEMORY[0x29EDCA1E8] & height->super.super.super.super.super.super.isa) + 0x50);
  v10 = height;
  v9();

  return v10;
}

- (_TtC20SleepHealthAppPlugin27SleepCollectionViewListCell)initWithCoder:(id)coder
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

  selfCopy = self;
  sub_29E71D07C();
}

@end