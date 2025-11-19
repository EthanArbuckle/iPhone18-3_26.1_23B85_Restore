@interface CanvasViewSelectionInteractionDelegate
- (BOOL)selectionInteraction:(id)a3 canPerformAction:(SEL)a4 withSender:(id)a5 inAttachment:(id)a6;
- (BOOL)selectionInteraction:(id)a3 didLongPressElement:(id)a4 withGesture:(id)a5 inAttachment:(id)a6;
- (BOOL)selectionInteraction:(id)a3 handleLassoSelection:(id)a4 strokes:(id)a5 inAttachment:(id)a6;
- (BOOL)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 inAttachment:(id)a5;
- (BOOL)selectionInteraction:(id)a3 selectionContainsPoint:(CGPoint)a4 inAttachment:(id)a5;
- (BOOL)selectionInteractionShouldBegin:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5 orGestureRecognizer:(id)a6;
- (BOOL)selectionInteractionShouldForwardToElements:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5;
- (_TtC8PaperKit38CanvasViewSelectionInteractionDelegate)init;
- (const)selectionInteraction:(id)a3 pathForElement:(id)a4 inAttachment:(id)a5;
- (id)selectionInteraction:(id)a3 contextMenuInteraction:(id)a4 configurationForElement:(id)a5 inAttachment:(id)a6;
- (id)selectionInteraction:(id)a3 contextMenuInteraction:(id)a4 previewForHighlightingMenuWithConfiguration:(id)a5 forElement:(id)a6 inAttachment:(id)a7;
- (id)selectionInteraction:(id)a3 didDuplicateElements:(id)a4 inAttachment:(id)a5;
- (id)selectionInteraction:(id)a3 elementsForSpaceInsertedAtPoint:(CGPoint)a4 inAttachment:(id)a5;
- (id)selectionInteraction:(id)a3 pasteboardRepresentationsForElements:(id)a4 strokes:(id)a5 inAttachment:(id)a6;
- (id)selectionInteraction:(id)a3 requestElementsInPath:(id)a4 inAttachment:(id)a5;
- (id)selectionInteraction:(id)a3 requestElementsInRect:(CGRect)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 clearSelectionInAttachment:(id)a4;
- (void)selectionInteraction:(id)a3 didClearSelectionForElements:(id)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 didDeleteElements:(id)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 didDragElements:(id)a4 withTransform:(CGAffineTransform *)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 didDropItemProvider:(id)a4 inAttachment:(id)a5 withCompletion:(id)a6;
- (void)selectionInteraction:(id)a3 didEndInsertSpaceInAttachment:(id)a4;
- (void)selectionInteraction:(id)a3 didSelectElements:(id)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 didSelectStrokes:(id)a4 selectionType:(int64_t)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 didTapElement:(id)a4 withGesture:(id)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 dragInteractionWillEndForElements:(id)a4 withOperation:(unint64_t)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 handleDeleteForTextStrokes:(id)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 handleDeleteForTextStrokes:(id)a4 nonTextStrokes:(id)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 handleGenerationToolForSelectedStrokes:(id)a4 inBounds:(CGRect)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 hitStrokes:(id)a5 inAttachment:(id)a6;
- (void)selectionInteraction:(id)a3 insertSpaceDidMove:(double)a4 inAttachment:(id)a5;
- (void)selectionInteraction:(id)a3 renderPreviewForElements:(id)a4 inContext:(CGContext *)a5 withConfig:(id)a6 inAttachment:(id)a7 withCompletion:(id)a8;
- (void)selectionInteraction:(id)a3 replaceStrokes:(id)a4 withString:(id)a5 proofreadingItem:(id)a6 inBounds:(CGRect)a7 inAttachment:(id)a8;
- (void)selectionInteraction:(id)a3 willBeginInsertSpaceInAttachment:(id)a4;
- (void)selectionInteractionDidPaste:(id)a3 atPoint:(CGPoint)a4 inAttachment:(id)a5;
@end

@implementation CanvasViewSelectionInteractionDelegate

- (BOOL)selectionInteraction:(id)a3 handleLassoSelection:(id)a4 strokes:(id)a5 inAttachment:(id)a6
{
  type metadata accessor for UUID();
  _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  LOBYTE(a4) = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(a4, v10);

  return a4 & 1;
}

- (BOOL)selectionInteractionShouldBegin:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5 orGestureRecognizer:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = self;
  CanvasViewSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(v11, a5, a6, x, y);
  LOBYTE(a6) = v15;

  return a6 & 1;
}

- (BOOL)selectionInteractionShouldForwardToElements:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  LOBYTE(a5) = CanvasViewSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(v9, a5, x, y);

  return a5 & 1;
}

- (id)selectionInteraction:(id)a3 requestElementsInRect:(CGRect)a4 inAttachment:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(x, y, width, height);

  if (v14)
  {
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  return v15.super.isa;
}

- (id)selectionInteraction:(id)a3 requestElementsInPath:(id)a4 inAttachment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(v9);

  if (v12)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (const)selectionInteraction:(id)a3 pathForElement:(id)a4 inAttachment:(id)a5
{
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = &type metadata for PencilAndPaperFeatureFlags;
  v14 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v12[0] = 0;
  v7 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v12);
  if ((v7 & 1) != 0 || (v8 = CanvasViewSelectionInteractionDelegate.view(for:)(v15)) == 0)
  {
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = 0.0;
    v17.size.height = 0.0;
    v10 = CGPathCreateWithRect(v17, 0);
  }

  else
  {
    v9 = v8;
    v10 = (*((*MEMORY[0x1E69E7D40] & v8->super.isa) + 0x1A8))();

    v6 = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v10;
}

- (void)selectionInteraction:(id)a3 didSelectElements:(id)a4 inAttachment:(id)a5
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(v9, v8);
}

- (void)selectionInteraction:(id)a3 didDragElements:(id)a4 withTransform:(CGAffineTransform *)a5 inAttachment:(id)a6
{
  v9 = *&a5->c;
  v14[0] = *&a5->a;
  v14[1] = v9;
  v14[2] = *&a5->tx;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(v10, v14);
}

- (void)selectionInteraction:(id)a3 willBeginInsertSpaceInAttachment:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    v11 = a3;
    v12 = a4;
    v13 = self;

    if (v10)
    {
      (*((*v8 & v10->super.isa) + 0x828))();

      v11 = v12;
      v12 = v13;
      v13 = v10;
    }
  }
}

- (void)selectionInteraction:(id)a3 insertSpaceDidMove:(double)a4 inAttachment:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7D40];
    v11 = Strong;
    v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    v13 = a3;
    v14 = a5;
    v15 = self;

    if (v12)
    {
      (*((*v10 & v12->super.isa) + 0x830))(a4);

      v13 = v14;
      v14 = v15;
      v15 = v12;
    }
  }
}

- (void)selectionInteraction:(id)a3 didEndInsertSpaceInAttachment:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    v11 = a3;
    v12 = a4;
    v13 = self;

    if (v10)
    {
      (*((*v8 & v10->super.isa) + 0x838))(0);

      v11 = v12;
      v12 = v13;
      v13 = v10;
    }
  }
}

- (void)selectionInteraction:(id)a3 didClearSelectionForElements:(id)a4 inAttachment:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)();
}

- (void)selectionInteraction:(id)a3 clearSelectionInAttachment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)();
}

- (BOOL)selectionInteraction:(id)a3 canPerformAction:(SEL)a4 withSender:(id)a5 inAttachment:(id)a6
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a6;
  v10 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v11 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)();

  __swift_destroy_boxed_opaque_existential_0(&v13);
  return v11 & 1;
}

- (id)selectionInteraction:(id)a3 pasteboardRepresentationsForElements:(id)a4 strokes:(id)a5 inAttachment:(id)a6
{
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  v14 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:pasteboardRepresentationsForElements:strokes:inAttachment:)(v9, v10);

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  return v15.super.isa;
}

- (void)selectionInteractionDidPaste:(id)a3 atPoint:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(x, y);
}

- (void)selectionInteraction:(id)a3 didDeleteElements:(id)a4 inAttachment:(id)a5
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v15 = self;
    v12 = specialized _arrayForceCast<A, B>(_:)(v6);

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v12);

    v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    (*(v10 + 96))(v13, v14, 6, 0, ObjectType, v10);
  }

  else
  {
  }
}

- (id)selectionInteraction:(id)a3 didDuplicateElements:(id)a4 inAttachment:(id)a5
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(v8);

  if (v12)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (id)selectionInteraction:(id)a3 elementsForSpaceInsertedAtPoint:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(x, y);

  if (v12)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (BOOL)selectionInteraction:(id)a3 selectionContainsPoint:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(x, y);

  return v12 & 1;
}

- (void)selectionInteraction:(id)a3 didSelectStrokes:(id)a4 selectionType:(int64_t)a5 inAttachment:(id)a6
{
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(v10, a5);
}

- (void)selectionInteraction:(id)a3 renderPreviewForElements:(id)a4 inContext:(CGContext *)a5 withConfig:(id)a6 inAttachment:(id)a7 withCompletion:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(v14, v17, v18, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v15);
}

- (void)selectionInteraction:(id)a3 dragInteractionWillEndForElements:(id)a4 withOperation:(unint64_t)a5 inAttachment:(id)a6
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(v10, a5);
}

- (void)selectionInteraction:(id)a3 didDropItemProvider:(id)a4 inAttachment:(id)a5 withCompletion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(a4, v14, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)selectionInteraction:(id)a3 didTapElement:(id)a4 withGesture:(id)a5 inAttachment:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = a6;
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(v13, v10);

  __swift_destroy_boxed_opaque_existential_0(v13);
}

- (BOOL)selectionInteraction:(id)a3 didLongPressElement:(id)a4 withGesture:(id)a5 inAttachment:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = a6;
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(v15, v10);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13 & 1;
}

- (id)selectionInteraction:(id)a3 contextMenuInteraction:(id)a4 configurationForElement:(id)a5 inAttachment:(id)a6
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a6;
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(v10, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v13;
}

- (id)selectionInteraction:(id)a3 contextMenuInteraction:(id)a4 previewForHighlightingMenuWithConfiguration:(id)a5 forElement:(id)a6 inAttachment:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = a7;
  v15 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v16 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(v12, v13, v18);

  __swift_destroy_boxed_opaque_existential_0(v18);

  return v16;
}

- (void)selectionInteraction:(id)a3 handleDeleteForTextStrokes:(id)a4 inAttachment:(id)a5
{
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12._rawValue = v8;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(v12);
}

- (void)selectionInteraction:(id)a3 handleDeleteForTextStrokes:(id)a4 nonTextStrokes:(id)a5 inAttachment:(id)a6
{
  type metadata accessor for PKStroke();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  v14._rawValue = v9;
  v15._rawValue = v10;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(v14, v15);
}

- (void)selectionInteraction:(id)a3 handleGenerationToolForSelectedStrokes:(id)a4 inBounds:(CGRect)a5 inAttachment:(id)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = v10;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:), v14);

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sScPSgMd);
}

- (void)selectionInteraction:(id)a3 replaceStrokes:(id)a4 withString:(id)a5 proofreadingItem:(id)a6 inBounds:(CGRect)a7 inAttachment:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  type metadata accessor for PKStroke();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = a3;
  v21 = a6;
  v22 = a8;
  v23 = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(v16, v17, v19, a6, v22, x, y, width, height);
}

- (BOOL)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(v10, x, y);

  return v12 & 1;
}

- (void)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 hitStrokes:(id)a5 inAttachment:(id)a6
{
  y = a4.y;
  x = a4.x;
  type metadata accessor for PKStroke();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = MEMORY[0x1E69E7D40];
    v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    v15 = a3;
    v16 = a6;
    v17 = self;

    if (v18)
    {
      (*((*v14 & *v18) + 0x750))(v11, 1, 1, x, y);

      return;
    }
  }
}

- (_TtC8PaperKit38CanvasViewSelectionInteractionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end