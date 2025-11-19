@interface TextToolListViewController
- (_TtC8PaperKit26TextToolListViewController)initWithCoder:(id)a3;
- (void)didTapAddLoupeListItemView:(id)a3 forEvent:(id)a4;
- (void)didTapAddShapeListItemView:(id)a3 forEvent:(id)a4;
- (void)didTapAddStickerListItemView:(id)a3 forEvent:(id)a4;
- (void)didTapAutoFillFormListItemView:(id)a3 forEvent:(id)a4;
@end

@implementation TextToolListViewController

- (_TtC8PaperKit26TextToolListViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC8PaperKit26TextToolListViewController_textToolListDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didTapAutoFillFormListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();

  outlined destroy of Any?(v7);
}

- (void)didTapAddShapeListItemView:(id)a3 forEvent:(id)a4
{
  v4 = self;
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v6 = self;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = ToolPickerController.shapeButtonListViewController.getter();
    specialized static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:)(v9, v4, v10, v8);

    swift_unknownObjectRelease();
    v4 = v9;
  }

  outlined destroy of Any?(v10);
}

- (void)didTapAddStickerListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    specialized ToolPickerController.textToolListViewController(_:sender:didSelectAddStickerWithEvent:)(self);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  outlined destroy of Any?(v10);
}

- (void)didTapAddLoupeListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    specialized ToolPickerController.textToolListViewController(_:sender:didSelectAddLoupeWithEvent:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  outlined destroy of Any?(v10);
}

@end