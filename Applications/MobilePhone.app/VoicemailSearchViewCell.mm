@interface VoicemailSearchViewCell
- (_TtC11MobilePhone23VoicemailSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)handleContentSizeCategoryDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation VoicemailSearchViewCell

- (_TtC11MobilePhone23VoicemailSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return VoicemailSearchViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  VoicemailSearchViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)handleContentSizeCategoryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (change)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Notification();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  VoicemailSearchViewCell.layoutForAccessibility()();

  outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation12NotificationVSgMd);
}

@end