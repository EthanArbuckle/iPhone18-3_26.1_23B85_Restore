@interface BrowseCategoryTableViewCell
+ (NSString)identifier;
- (NSString)uniqueIdentifier;
- (_TtC4Maps27BrowseCategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setThumbnailImage:(id)a3;
- (void)setUniqueIdentifier:(id)a3;
- (void)updateContents:(id)a3 uniqueID:(id)a4;
@end

@implementation BrowseCategoryTableViewCell

- (NSString)uniqueIdentifier
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setUniqueIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_uniqueIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

+ (NSString)identifier
{
  swift_getObjCClassMetadata();
  sub_1000CE6B8(&qword_10190B8F8);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps27BrowseCategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100122968(a3, a4, v6);
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BrowseCategoryTableViewCell();
  v2 = v6.receiver;
  [(BrowseCategoryTableViewCell *)&v6 prepareForReuse];
  v3 = sub_10012286C();
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:{v4, v6.receiver, v6.super_class}];

  v5 = sub_10012279C();
  [v5 setImage:0];
}

- (void)updateContents:(id)a3 uniqueID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_10012286C();
  [v11 setText:v9];

  v12 = (v10 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_uniqueIdentifier);
  *v12 = v6;
  v12[1] = v8;
}

- (void)setThumbnailImage:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_10012279C();
  [v5 setImage:v4];
}

@end