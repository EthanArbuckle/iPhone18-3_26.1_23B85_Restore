@interface TTRIBoardReminderCell
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityElements;
- (NSString)accessibilityIdentifier;
- (id)_accessibilityInternalTextLinks;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)invalidateIntrinsicContentSize;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifier:(id)identifier;
@end

@implementation TTRIBoardReminderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002B6978(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIBoardReminderCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver])
  {

    TTRViewModelObserver.unsubscribe()();

    swift_beginAccess();
    sub_100058000(&unk_100772740);
    TTRLazilyLoadedViewModelState.transitionToInvalid()();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for TTRRectCorners();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = self;
  v15.super_class = ObjectType;
  attributesCopy = attributes;
  selfCopy = self;
  [(TTRIBoardReminderCell *)&v15 applyLayoutAttributes:attributesCopy];
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();
  if (swift_dynamicCastClass())
  {
    v12 = attributesCopy;
    TTRBoardColumnItemLayoutAttributes.backgroundRoundedCorners.getter();

    v13 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_roundedCorners;
    swift_beginAccess();
    (*(v7 + 40))(selfCopy + v13, v9, v6);
    swift_endAccess();
  }

  else
  {
  }
}

- (unint64_t)_maskedCornersForSystemBackgroundView
{
  v3 = type metadata accessor for TTRRectCorners();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_roundedCorners;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  selfCopy = self;
  v9 = TTRRectCorners.cornerMask(layoutDirection:isFlipped:)([(TTRIBoardReminderCell *)selfCopy effectiveUserInterfaceLayoutDirection], 1);

  (*(v4 + 8))(v6, v3);
  return v9;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v10 = sub_1002B7578(width, height, priority, fittingPriority);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  contentView = [(TTRIBoardReminderCell *)selfCopy contentView];
  [contentView sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1002C56A8;
  *(v5 + 24) = v4;
  v8[4] = sub_100026410;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_10071E5E0;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (NSString)accessibilityIdentifier
{
  selfCopy = self;
  sub_1002BCB18();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    identifier = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIBoardReminderCell *)&v8 setAccessibilityIdentifier:identifier];
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_1002BCEBC();

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

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_1002BD2E8();

  return v3 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  contentView = [(TTRIBoardReminderCell *)selfCopy contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  if (swift_dynamicCastClass())
  {
    v4 = UIView.firstResponderDescendant.getter();

    if (!v4)
    {
      resignFirstResponder = 0;
      goto LABEL_7;
    }

    resignFirstResponder = [v4 resignFirstResponder];
  }

  else
  {
    resignFirstResponder = 0;
    v4 = selfCopy;
    selfCopy = contentView;
  }

LABEL_7:
  return resignFirstResponder;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_1002BDC74();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)_accessibilityInternalTextLinks
{
  selfCopy = self;
  contentView = [(TTRIBoardReminderCell *)selfCopy contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  if (swift_dynamicCastClass())
  {
    sub_1004C12DC();
  }

  sub_100003540(0, &qword_10076BCA8);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end