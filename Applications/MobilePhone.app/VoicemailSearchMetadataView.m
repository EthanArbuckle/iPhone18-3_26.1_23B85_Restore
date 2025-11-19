@interface VoicemailSearchMetadataView
- (_TtC11MobilePhone27VoicemailSearchMetadataView)initWithFrame:(CGRect)a3;
- (void)didTapCall;
- (void)handleContentSizeCategoryDidChange:(id)a3;
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
    v8 = self;
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
  VoicemailSearchMetadataView.updateLayoutForAccessibility()();

  outlined destroy of Notification?(v7);
}

- (_TtC11MobilePhone27VoicemailSearchMetadataView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end