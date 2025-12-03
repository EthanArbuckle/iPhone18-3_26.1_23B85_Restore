@interface TTRIRemindersListHashtagCollectionCell
+ (Class)containerViewClass;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityElements;
- (_TtC9Reminders38TTRIRemindersListHashtagCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)dealloc;
- (void)hashtagButtonAction:(id)action;
- (void)layoutSubviews;
- (void)ttrAccessibilityServicesDidChange;
@end

@implementation TTRIRemindersListHashtagCollectionCell

+ (Class)containerViewClass
{
  type metadata accessor for TTRIMarginTransferringContainerStackView();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9Reminders38TTRIRemindersListHashtagCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005FDF24(style, identifier, v6);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = self;
  selfCopy = self;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v6);
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(TTRIRemindersListHashtagCollectionCell *)&v5 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005FE7E8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1005FE8C4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)hashtagButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100600A04(v6);

  sub_1000079B4(v6, &qword_10076AE40);
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1005FF5B8();
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  width = size.width;
  viewCopy = view;
  selfCopy = self;
  sub_100602DCC(viewCopy, width);
}

@end