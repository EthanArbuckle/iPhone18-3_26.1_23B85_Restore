@interface PHBlockTableViewCell
+ (NSString)reuseIdentifier;
- (PHBlockTableViewCell)initWithCoder:(id)a3;
- (PHBlockTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateCellOfFlow:(int64_t)a3 isBlocked:(BOOL)a4 style:(int64_t)a5;
@end

@implementation PHBlockTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (PHBlockTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return specialized BlockTableViewCell.init(style:reuseIdentifier:)();
}

- (PHBlockTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  v5 = type metadata accessor for UIListContentConfiguration();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateCellOfFlow:(int64_t)a3 isBlocked:(BOOL)a4 style:(int64_t)a5
{
  v6 = a4;
  v8 = self;
  BlockTableViewCell.updateCell(flow:isBlocked:style:)(a3, v6, a5);
}

@end