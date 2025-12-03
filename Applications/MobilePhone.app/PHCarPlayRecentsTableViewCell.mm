@interface PHCarPlayRecentsTableViewCell
- (CHRecentCall)recentCall;
- (NSArray)contacts;
- (PKRecentsItem)recentsItem;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setContacts:(id)contacts;
@end

@implementation PHCarPlayRecentsTableViewCell

- (NSArray)contacts
{
  v3 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_contacts;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  if (contacts)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    contactsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_contacts;
  swift_beginAccess();
  *(self + v5) = contactsCopy;
  selfCopy = self;

  [(PHCarPlayRecentsTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (CHRecentCall)recentCall
{
  v3 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_recentCall;
  swift_beginAccess();
  return *(self + v3);
}

- (PKRecentsItem)recentsItem
{
  v3 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_recentsItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PHCarPlayRecentsTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end