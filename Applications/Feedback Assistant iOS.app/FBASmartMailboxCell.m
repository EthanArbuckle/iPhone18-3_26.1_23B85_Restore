@interface FBASmartMailboxCell
+ (NSString)reuseIdentifier;
- (BOOL)isHighlighted;
- (UIImageView)filterImage;
- (UILabel)countLabel;
- (UILabel)titleLabel;
- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
- (void)configureWithInbox:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = self;
  sub_1000885D0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  v3 = [(FBASmartMailboxCell *)v5 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_100088824();
}

- (void)configureWithInbox:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100088954(v4);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBASmartMailboxCell();
  return [(FBASmartMailboxCell *)&v3 isHighlighted];
}

- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for FBASmartMailboxCell();
  return [(FBASmartMailboxCell *)&v9 initWithFrame:x, y, width, height];
}

@end