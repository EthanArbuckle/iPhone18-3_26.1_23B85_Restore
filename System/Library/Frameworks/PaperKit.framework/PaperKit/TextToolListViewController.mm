@interface TextToolListViewController
- (_TtC8PaperKit26TextToolListViewController)initWithCoder:(id)coder;
- (void)didTapAddLoupeListItemView:(id)view forEvent:(id)event;
- (void)didTapAddShapeListItemView:(id)view forEvent:(id)event;
- (void)didTapAddStickerListItemView:(id)view forEvent:(id)event;
- (void)didTapAutoFillFormListItemView:(id)view forEvent:(id)event;
@end

@implementation TextToolListViewController

- (_TtC8PaperKit26TextToolListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC8PaperKit26TextToolListViewController_textToolListDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didTapAutoFillFormListItemView:(id)view forEvent:(id)event
{
  if (view)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();

  outlined destroy of Any?(v7);
}

- (void)didTapAddShapeListItemView:(id)view forEvent:(id)event
{
  selfCopy = self;
  if (view)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy3 = self;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = ToolPickerController.shapeButtonListViewController.getter();
    specialized static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:)(v9, selfCopy, v10, v8);

    swift_unknownObjectRelease();
    selfCopy = v9;
  }

  outlined destroy of Any?(v10);
}

- (void)didTapAddStickerListItemView:(id)view forEvent:(id)event
{
  if (view)
  {
    eventCopy = event;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    eventCopy2 = event;
    selfCopy2 = self;
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

- (void)didTapAddLoupeListItemView:(id)view forEvent:(id)event
{
  if (view)
  {
    eventCopy = event;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    eventCopy2 = event;
    selfCopy2 = self;
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