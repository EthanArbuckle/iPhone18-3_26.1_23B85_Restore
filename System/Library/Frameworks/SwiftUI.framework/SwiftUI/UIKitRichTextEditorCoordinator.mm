@interface UIKitRichTextEditorCoordinator
- (id)textDraggableView:(id)view itemsForDrag:(id)drag;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textDroppableView:(id)view willPerformDrop:(id)drop;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation UIKitRichTextEditorCoordinator

- (id)textDraggableView:(id)view itemsForDrag:(id)drag
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized UIKitRichTextEditorCoordinator.textDraggableView(_:itemsForDrag:)(drag);

  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)textDroppableView:(id)view willPerformDrop:(id)drop
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(viewCopy, drop);

  swift_unknownObjectRelease();
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized UIKitRichTextEditorCoordinator.dropContainsText(_:)(drop);
  v8 = objc_allocWithZone(MEMORY[0x1E69DD0A0]);
  if (v7)
  {
    initWithDropOperation_ = [v8 initWithDropOperation_];
    if (specialized UIKitRichTextEditorCoordinator.dropContainsSwiftUIAttributedString(_:)(drop))
    {
      [initWithDropOperation_ setDropPerformer_];
    }
  }

  else
  {
    initWithDropOperation_ = [v8 initWithDropOperation_];
  }

  swift_unknownObjectRelease();

  return initWithDropOperation_;
}

- (void)textViewDidChangeSelection:(id)selection
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(self + v8, v7, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  selfCopy = self;
  selectionCopy = selection;
  v11 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko18CoordinatorC26textn40DidChangeSelectionyySo06UITextI0CFyAA010j2E7L27VyAA08PlatformeifO0VGzXEfU_AA0stkoU0CSo06UITextN0CTf1cn_nTf4ngg_n(v7, selfCopy, selectionCopy);
  v13 = v12;
  swift_beginAccess();
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(self + v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v7, self + v8);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v11, v13);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  UIKitRichTextEditorCoordinator.textViewDidChange(_:)(changeCopy);
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized UIKitRichTextEditorCoordinator.textView(_:editMenuForTextIn:suggestedActions:)(v7);
  v11 = v10;

  return v11;
}

@end