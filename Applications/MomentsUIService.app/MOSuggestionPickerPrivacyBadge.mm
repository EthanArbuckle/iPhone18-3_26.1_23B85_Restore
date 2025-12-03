@interface MOSuggestionPickerPrivacyBadge
- (_TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge)initWithCoder:(id)coder;
- (_TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge)initWithEffect:(id)effect;
@end

@implementation MOSuggestionPickerPrivacyBadge

- (_TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  v5 = CGRectMake();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView()) initWithFrame:{v5, v6, v7, v8}];
  v9 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label();
  *(&self->super.super.super.super.isa + v9) = v10;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end