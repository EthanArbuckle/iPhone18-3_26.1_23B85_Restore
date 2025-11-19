@interface CRLiOSShapeLibraryCanvasPopoverController
- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)init;
- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)initWithInteractiveCanvasController:(id)a3;
- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)a3;
- (id)contentLibraryViewControllerDefaultSearchTerm:(id)a3;
- (id)editingCoordinatorForContentLibraryViewController:(id)a3;
- (id)interactiveCanvasControllerForContentLibraryViewController:(id)a3;
@end

@implementation CRLiOSShapeLibraryCanvasPopoverController

- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)initWithInteractiveCanvasController:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSShapeLibraryCanvasPopoverController();
  return [(CRLiOSShapeLibraryCanvasPopoverController *)&v5 init];
}

- (id)interactiveCanvasControllerForContentLibraryViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100C01210();

  return v6;
}

- (id)editingCoordinatorForContentLibraryViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100C015BC();

  return v6;
}

- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100C01990();

  return v6;
}

- (id)contentLibraryViewControllerDefaultSearchTerm:(id)a3
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end