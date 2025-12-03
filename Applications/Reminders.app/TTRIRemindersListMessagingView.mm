@interface TTRIRemindersListMessagingView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (NSString)accessibilityLabel;
- (_TtC9Reminders30TTRIRemindersListMessagingView)initWithArrangedSubviews:(id)subviews;
- (_TtC9Reminders30TTRIRemindersListMessagingView)initWithCoder:(id)coder;
@end

@implementation TTRIRemindersListMessagingView

- (_TtC9Reminders30TTRIRemindersListMessagingView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_listLayout;
  v5 = enum case for TTRRemindersListLayout.list(_:);
  v6 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v6 - 8) + 104))(&self->messagingViewDelegate[v4], v5, v6);
  v7 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  v8 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v9 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v9 - 8) + 104))(&self->messagingViewDelegate[v7], v8, v9);
  *&self->messagingViewDelegate[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_messagingViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&self->messagingViewDelegate[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_titleLabel] = 0;
  *&self->messagingViewDelegate[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_subtitleTextView] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  v2._countAndFlagsBits = 0x7265646E696D6552;
  v2._object = 0xEE007473694C2073;
  v3._object = 0x800000010067C090;
  v3._countAndFlagsBits = 0xD000000000000042;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC9Reminders30TTRIRemindersListMessagingView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10028CD9C();

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

@end