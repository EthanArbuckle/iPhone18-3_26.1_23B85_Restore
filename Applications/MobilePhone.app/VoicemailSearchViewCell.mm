@interface VoicemailSearchViewCell
- (_TtC11MobilePhone23VoicemailSearchViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)handleContentSizeCategoryDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation VoicemailSearchViewCell

- (_TtC11MobilePhone23VoicemailSearchViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return VoicemailSearchViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  VoicemailSearchViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)handleContentSizeCategoryDidChange:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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

  v10 = self;
  VoicemailSearchViewCell.layoutForAccessibility()();

  outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation12NotificationVSgMd);
}

@end