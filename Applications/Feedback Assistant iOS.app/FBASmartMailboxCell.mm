@interface FBASmartMailboxCell
+ (NSString)reuseIdentifier;
- (BOOL)isHighlighted;
- (UIImageView)filterImage;
- (UILabel)countLabel;
- (UILabel)titleLabel;
- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)configureWithInbox:(id)inbox;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FBASmartMailboxCell

- (UILabel)titleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIImageView)filterImage
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)countLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_1000885D0();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  traitCollection = [(FBASmartMailboxCell *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  sub_100088824();
}

- (void)configureWithInbox:(id)inbox
{
  inboxCopy = inbox;
  selfCopy = self;
  sub_100088954(inboxCopy);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBASmartMailboxCell();
  return [(FBASmartMailboxCell *)&v3 isHighlighted];
}

- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for FBASmartMailboxCell();
  return [(FBASmartMailboxCell *)&v9 initWithFrame:x, y, width, height];
}

@end