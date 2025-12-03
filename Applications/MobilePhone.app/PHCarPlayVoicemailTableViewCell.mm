@interface PHCarPlayVoicemailTableViewCell
- (BOOL)restrictedMessage;
- (MPMessage)voicemailMessage;
- (NSString)localizedSenderIdentityTitle;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setLocalizedSenderIdentityTitle:(id)title;
- (void)setRestrictedMessage:(BOOL)message;
- (void)setVoicemailMessage:(id)message;
@end

@implementation PHCarPlayVoicemailTableViewCell

- (MPMessage)voicemailMessage
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setVoicemailMessage:(id)message
{
  v5 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_voicemailMessage;
  swift_beginAccess();
  *(self + v5) = message;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  [(PHCarPlayVoicemailTableViewCell *)selfCopy setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (BOOL)restrictedMessage
{
  v3 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRestrictedMessage:(BOOL)message
{
  v5 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  *(self + v5) = message;
  [(PHCarPlayVoicemailTableViewCell *)self setNeedsUpdateConfiguration];
}

- (NSString)localizedSenderIdentityTitle
{
  v2 = self + OBJC_IVAR___PHCarPlayVoicemailTableViewCell_localizedSenderIdentityTitle;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalizedSenderIdentityTitle:(id)title
{
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___PHCarPlayVoicemailTableViewCell_localizedSenderIdentityTitle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  [(PHCarPlayVoicemailTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end