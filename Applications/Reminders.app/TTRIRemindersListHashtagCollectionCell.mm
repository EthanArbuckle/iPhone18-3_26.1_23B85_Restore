@interface TTRIRemindersListHashtagCollectionCell
+ (Class)containerViewClass;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityElements;
- (_TtC9Reminders38TTRIRemindersListHashtagCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)dealloc;
- (void)hashtagButtonAction:(id)a3;
- (void)layoutSubviews;
- (void)ttrAccessibilityServicesDidChange;
@end

@implementation TTRIRemindersListHashtagCollectionCell

+ (Class)containerViewClass
{
  type metadata accessor for TTRIMarginTransferringContainerStackView();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9Reminders38TTRIRemindersListHashtagCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1005FDF24(a3, a4, v6);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = self;
  v4 = self;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v6);
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(TTRIRemindersListHashtagCollectionCell *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005FE7E8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1005FE8C4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)hashtagButtonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100600A04(v6);

  sub_1000079B4(v6, &qword_10076AE40);
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_100601044();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)ttrAccessibilityServicesDidChange
{
  v2 = self;
  sub_1005FF5B8();
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_100602DCC(v7, width);
}

@end