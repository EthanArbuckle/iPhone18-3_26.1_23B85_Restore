@interface PHCarPlayVoicemailTableViewCell
- (BOOL)restrictedMessage;
- (MPMessage)voicemailMessage;
- (NSString)localizedSenderIdentityTitle;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setLocalizedSenderIdentityTitle:(id)a3;
- (void)setRestrictedMessage:(BOOL)a3;
- (void)setVoicemailMessage:(id)a3;
@end

@implementation PHCarPlayVoicemailTableViewCell

- (MPMessage)voicemailMessage
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setVoicemailMessage:(id)a3
{
  v5 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_voicemailMessage;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  swift_unknownObjectRelease();
  [(PHCarPlayVoicemailTableViewCell *)v6 setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (BOOL)restrictedMessage
{
  v3 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRestrictedMessage:(BOOL)a3
{
  v5 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setLocalizedSenderIdentityTitle:(id)a3
{
  if (a3)
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
  v8 = self;

  [(PHCarPlayVoicemailTableViewCell *)v8 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end