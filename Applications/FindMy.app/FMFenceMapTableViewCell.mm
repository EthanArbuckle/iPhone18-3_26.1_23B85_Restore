@interface FMFenceMapTableViewCell
- (_TtC6FindMy23FMFenceMapTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy23FMFenceMapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation FMFenceMapTableViewCell

- (_TtC6FindMy23FMFenceMapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record) = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for FMFenceMapTableViewCell();
  v7 = [(FMFenceMapTableViewCell *)&v10 initWithStyle:style reuseIdentifier:v6];

  v8 = v7;
  sub_1003D0C0C();

  return v8;
}

- (_TtC6FindMy23FMFenceMapTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003D0D68();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003D0EA0();
}

@end