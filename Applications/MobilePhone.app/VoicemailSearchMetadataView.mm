@interface VoicemailSearchMetadataView
- (_TtC11MobilePhone27VoicemailSearchMetadataView)initWithFrame:(CGRect)frame;
- (void)didTapCall;
- (void)handleContentSizeCategoryDidChange:(id)change;
@end

@implementation VoicemailSearchMetadataView

- (void)didTapCall
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler;
    v5 = Strong;
    swift_beginAccess();
    v7 = *v4;
    v6 = *(v4 + 8);
    selfCopy = self;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v6);

    if (v7)
    {
      v7();

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
    }

    else
    {
    }
  }
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
  VoicemailSearchMetadataView.updateLayoutForAccessibility()();

  outlined destroy of Notification?(v7);
}

- (_TtC11MobilePhone27VoicemailSearchMetadataView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end