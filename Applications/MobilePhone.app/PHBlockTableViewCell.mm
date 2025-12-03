@interface PHBlockTableViewCell
+ (NSString)reuseIdentifier;
- (PHBlockTableViewCell)initWithCoder:(id)coder;
- (PHBlockTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateCellOfFlow:(int64_t)flow isBlocked:(BOOL)blocked style:(int64_t)style;
@end

@implementation PHBlockTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (PHBlockTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return specialized BlockTableViewCell.init(style:reuseIdentifier:)();
}

- (PHBlockTableViewCell)initWithCoder:(id)coder
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

- (void)updateCellOfFlow:(int64_t)flow isBlocked:(BOOL)blocked style:(int64_t)style
{
  blockedCopy = blocked;
  selfCopy = self;
  BlockTableViewCell.updateCell(flow:isBlocked:style:)(flow, blockedCopy, style);
}

@end