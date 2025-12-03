@interface SearchHomeTipkitCollectionViewCell
+ (NSString)reuseIdentifier;
- (_TtC4Maps34SearchHomeTipkitCollectionViewCell)initWithCoder:(id)coder;
- (void)setupUIContents:(id)contents withDismissHandler:(id)handler;
@end

@implementation SearchHomeTipkitCollectionViewCell

+ (NSString)reuseIdentifier
{
  type metadata accessor for SearchHomeTipkitCollectionViewCell();
  sub_1000CE6B8(&qword_101910AE8);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps34SearchHomeTipkitCollectionViewCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell_actionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchHomeTipkitCollectionViewCell();
  coderCopy = coder;
  v6 = [(SearchHomeTipkitCollectionViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)setupUIContents:(id)contents withDismissHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1001CD8CC(v6, v8, sub_1000FA694, v9);
}

@end