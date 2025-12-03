@interface CanvasViewSelectionInteractionDelegate
- (BOOL)selectionInteraction:(id)interaction canPerformAction:(SEL)action withSender:(id)sender inAttachment:(id)attachment;
- (BOOL)selectionInteraction:(id)interaction didLongPressElement:(id)element withGesture:(id)gesture inAttachment:(id)attachment;
- (BOOL)selectionInteraction:(id)interaction handleLassoSelection:(id)selection strokes:(id)strokes inAttachment:(id)attachment;
- (BOOL)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location inAttachment:(id)attachment;
- (BOOL)selectionInteraction:(id)interaction selectionContainsPoint:(CGPoint)point inAttachment:(id)attachment;
- (BOOL)selectionInteractionShouldBegin:(id)begin atPoint:(CGPoint)point forEvent:(id)event orGestureRecognizer:(id)recognizer;
- (BOOL)selectionInteractionShouldForwardToElements:(id)elements atPoint:(CGPoint)point forEvent:(id)event;
- (_TtC8PaperKit38CanvasViewSelectionInteractionDelegate)init;
- (const)selectionInteraction:(id)interaction pathForElement:(id)element inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction contextMenuInteraction:(id)menuInteraction configurationForElement:(id)element inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction contextMenuInteraction:(id)menuInteraction previewForHighlightingMenuWithConfiguration:(id)configuration forElement:(id)element inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction didDuplicateElements:(id)elements inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction elementsForSpaceInsertedAtPoint:(CGPoint)point inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction pasteboardRepresentationsForElements:(id)elements strokes:(id)strokes inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction requestElementsInPath:(id)path inAttachment:(id)attachment;
- (id)selectionInteraction:(id)interaction requestElementsInRect:(CGRect)rect inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction clearSelectionInAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didClearSelectionForElements:(id)elements inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didDeleteElements:(id)elements inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didDragElements:(id)elements withTransform:(CGAffineTransform *)transform inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didDropItemProvider:(id)provider inAttachment:(id)attachment withCompletion:(id)completion;
- (void)selectionInteraction:(id)interaction didEndInsertSpaceInAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didSelectElements:(id)elements inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didSelectStrokes:(id)strokes selectionType:(int64_t)type inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction didTapElement:(id)element withGesture:(id)gesture inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction dragInteractionWillEndForElements:(id)elements withOperation:(unint64_t)operation inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction handleDeleteForTextStrokes:(id)strokes inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction handleDeleteForTextStrokes:(id)strokes nonTextStrokes:(id)textStrokes inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction handleGenerationToolForSelectedStrokes:(id)strokes inBounds:(CGRect)bounds inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location hitStrokes:(id)strokes inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction insertSpaceDidMove:(double)move inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction renderPreviewForElements:(id)elements inContext:(CGContext *)context withConfig:(id)config inAttachment:(id)attachment withCompletion:(id)completion;
- (void)selectionInteraction:(id)interaction replaceStrokes:(id)strokes withString:(id)string proofreadingItem:(id)item inBounds:(CGRect)bounds inAttachment:(id)attachment;
- (void)selectionInteraction:(id)interaction willBeginInsertSpaceInAttachment:(id)attachment;
- (void)selectionInteractionDidPaste:(id)paste atPoint:(CGPoint)point inAttachment:(id)attachment;
@end

@implementation CanvasViewSelectionInteractionDelegate

- (BOOL)selectionInteraction:(id)interaction handleLassoSelection:(id)selection strokes:(id)strokes inAttachment:(id)attachment
{
  type metadata accessor for UUID();
  _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  selectionCopy = selection;
  attachmentCopy = attachment;
  selfCopy = self;
  LOBYTE(selection) = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(selection, v10);

  return selection & 1;
}

- (BOOL)selectionInteractionShouldBegin:(id)begin atPoint:(CGPoint)point forEvent:(id)event orGestureRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  beginCopy = begin;
  eventCopy = event;
  recognizerCopy = recognizer;
  selfCopy = self;
  CanvasViewSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(beginCopy, event, recognizer, x, y);
  LOBYTE(recognizer) = v15;

  return recognizer & 1;
}

- (BOOL)selectionInteractionShouldForwardToElements:(id)elements atPoint:(CGPoint)point forEvent:(id)event
{
  y = point.y;
  x = point.x;
  elementsCopy = elements;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(event) = CanvasViewSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(elementsCopy, event, x, y);

  return event & 1;
}

- (id)selectionInteraction:(id)interaction requestElementsInRect:(CGRect)rect inAttachment:(id)attachment
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
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

- (id)selectionInteraction:(id)interaction requestElementsInPath:(id)path inAttachment:(id)attachment
{
  interactionCopy = interaction;
  pathCopy = path;
  attachmentCopy = attachment;
  selfCopy = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(pathCopy);

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

- (const)selectionInteraction:(id)interaction pathForElement:(id)element inAttachment:(id)attachment
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

    selfCopy = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v10;
}

- (void)selectionInteraction:(id)interaction didSelectElements:(id)elements inAttachment:(id)attachment
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(interactionCopy, v8);
}

- (void)selectionInteraction:(id)interaction didDragElements:(id)elements withTransform:(CGAffineTransform *)transform inAttachment:(id)attachment
{
  v9 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v9;
  v14[2] = *&transform->tx;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(v10, v14);
}

- (void)selectionInteraction:(id)interaction willBeginInsertSpaceInAttachment:(id)attachment
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    interactionCopy = interaction;
    attachmentCopy = attachment;
    selfCopy = self;

    if (v10)
    {
      (*((*v8 & v10->super.isa) + 0x828))();

      interactionCopy = attachmentCopy;
      attachmentCopy = selfCopy;
      selfCopy = v10;
    }
  }
}

- (void)selectionInteraction:(id)interaction insertSpaceDidMove:(double)move inAttachment:(id)attachment
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7D40];
    v11 = Strong;
    v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    interactionCopy = interaction;
    attachmentCopy = attachment;
    selfCopy = self;

    if (v12)
    {
      (*((*v10 & v12->super.isa) + 0x830))(move);

      interactionCopy = attachmentCopy;
      attachmentCopy = selfCopy;
      selfCopy = v12;
    }
  }
}

- (void)selectionInteraction:(id)interaction didEndInsertSpaceInAttachment:(id)attachment
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    interactionCopy = interaction;
    attachmentCopy = attachment;
    selfCopy = self;

    if (v10)
    {
      (*((*v8 & v10->super.isa) + 0x838))(0);

      interactionCopy = attachmentCopy;
      attachmentCopy = selfCopy;
      selfCopy = v10;
    }
  }
}

- (void)selectionInteraction:(id)interaction didClearSelectionForElements:(id)elements inAttachment:(id)attachment
{
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)();
}

- (void)selectionInteraction:(id)interaction clearSelectionInAttachment:(id)attachment
{
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)();
}

- (BOOL)selectionInteraction:(id)interaction canPerformAction:(SEL)action withSender:(id)sender inAttachment:(id)attachment
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v11 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)();

  __swift_destroy_boxed_opaque_existential_0(&v13);
  return v11 & 1;
}

- (id)selectionInteraction:(id)interaction pasteboardRepresentationsForElements:(id)elements strokes:(id)strokes inAttachment:(id)attachment
{
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  _s9Coherence9CRKeyPathVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
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

- (void)selectionInteractionDidPaste:(id)paste atPoint:(CGPoint)point inAttachment:(id)attachment
{
  y = point.y;
  x = point.x;
  pasteCopy = paste;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(x, y);
}

- (void)selectionInteraction:(id)interaction didDeleteElements:(id)elements inAttachment:(id)attachment
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self + OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    v12 = specialized _arrayForceCast<A, B>(_:)(v6);

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v12);

    v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    (*(v10 + 96))(v13, v14, 6, 0, ObjectType, v10);
  }

  else
  {
  }
}

- (id)selectionInteraction:(id)interaction didDuplicateElements:(id)elements inAttachment:(id)attachment
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
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

- (id)selectionInteraction:(id)interaction elementsForSpaceInsertedAtPoint:(CGPoint)point inAttachment:(id)attachment
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
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

- (BOOL)selectionInteraction:(id)interaction selectionContainsPoint:(CGPoint)point inAttachment:(id)attachment
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(x, y);

  return v12 & 1;
}

- (void)selectionInteraction:(id)interaction didSelectStrokes:(id)strokes selectionType:(int64_t)type inAttachment:(id)attachment
{
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(v10, type);
}

- (void)selectionInteraction:(id)interaction renderPreviewForElements:(id)elements inContext:(CGContext *)context withConfig:(id)config inAttachment:(id)attachment withCompletion:(id)completion
{
  v13 = _Block_copy(completion);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  interactionCopy = interaction;
  contextCopy = context;
  configCopy = config;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(v14, contextCopy, configCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v15);
}

- (void)selectionInteraction:(id)interaction dragInteractionWillEndForElements:(id)elements withOperation:(unint64_t)operation inAttachment:(id)attachment
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(v10, operation);
}

- (void)selectionInteraction:(id)interaction didDropItemProvider:(id)provider inAttachment:(id)attachment withCompletion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  interactionCopy = interaction;
  providerCopy = provider;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(provider, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)selectionInteraction:(id)interaction didTapElement:(id)element withGesture:(id)gesture inAttachment:(id)attachment
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  gestureCopy = gesture;
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(v13, gestureCopy);

  __swift_destroy_boxed_opaque_existential_0(v13);
}

- (BOOL)selectionInteraction:(id)interaction didLongPressElement:(id)element withGesture:(id)gesture inAttachment:(id)attachment
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  gestureCopy = gesture;
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(v15, gestureCopy);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13 & 1;
}

- (id)selectionInteraction:(id)interaction contextMenuInteraction:(id)menuInteraction configurationForElement:(id)element inAttachment:(id)attachment
{
  interactionCopy = interaction;
  menuInteractionCopy = menuInteraction;
  swift_unknownObjectRetain();
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(menuInteractionCopy, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v13;
}

- (id)selectionInteraction:(id)interaction contextMenuInteraction:(id)menuInteraction previewForHighlightingMenuWithConfiguration:(id)configuration forElement:(id)element inAttachment:(id)attachment
{
  interactionCopy = interaction;
  menuInteractionCopy = menuInteraction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v16 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(menuInteractionCopy, configurationCopy, v18);

  __swift_destroy_boxed_opaque_existential_0(v18);

  return v16;
}

- (void)selectionInteraction:(id)interaction handleDeleteForTextStrokes:(id)strokes inAttachment:(id)attachment
{
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  v12._rawValue = v8;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(v12);
}

- (void)selectionInteraction:(id)interaction handleDeleteForTextStrokes:(id)strokes nonTextStrokes:(id)textStrokes inAttachment:(id)attachment
{
  type metadata accessor for PKStroke();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  v14._rawValue = v9;
  v15._rawValue = v10;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(v14, v15);
}

- (void)selectionInteraction:(id)interaction handleGenerationToolForSelectedStrokes:(id)strokes inBounds:(CGRect)bounds inAttachment:(id)attachment
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for MainActor();
  selfCopy = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = v10;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:), v14);

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sScPSgMd);
}

- (void)selectionInteraction:(id)interaction replaceStrokes:(id)strokes withString:(id)string proofreadingItem:(id)item inBounds:(CGRect)bounds inAttachment:(id)attachment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  type metadata accessor for PKStroke();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  interactionCopy = interaction;
  itemCopy = item;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(v16, v17, v19, item, attachmentCopy, x, y, width, height);
}

- (BOOL)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location inAttachment:(id)attachment
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  attachmentCopy = attachment;
  selfCopy = self;
  v12 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(attachmentCopy, x, y);

  return v12 & 1;
}

- (void)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location hitStrokes:(id)strokes inAttachment:(id)attachment
{
  y = location.y;
  x = location.x;
  type metadata accessor for PKStroke();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = MEMORY[0x1E69E7D40];
    v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    interactionCopy = interaction;
    attachmentCopy = attachment;
    selfCopy = self;

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