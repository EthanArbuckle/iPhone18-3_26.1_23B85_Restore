@interface UIKitRichTextEditorCoordinator
- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation UIKitRichTextEditorCoordinator

- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized UIKitRichTextEditorCoordinator.textDraggableView(_:itemsForDrag:)(a4);

  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(v6, a4);

  swift_unknownObjectRelease();
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = specialized UIKitRichTextEditorCoordinator.dropContainsText(_:)(a4);
  v8 = objc_allocWithZone(MEMORY[0x1E69DD0A0]);
  if (v7)
  {
    v9 = [v8 initWithDropOperation_];
    if (specialized UIKitRichTextEditorCoordinator.dropContainsSwiftUIAttributedString(_:)(a4))
    {
      [v9 setDropPerformer_];
    }
  }

  else
  {
    v9 = [v8 initWithDropOperation_];
  }

  swift_unknownObjectRelease();

  return v9;
}

- (void)textViewDidChangeSelection:(id)a3
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(self + v8, v7, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  v9 = self;
  v10 = a3;
  v11 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko18CoordinatorC26textn40DidChangeSelectionyySo06UITextI0CFyAA010j2E7L27VyAA08PlatformeifO0VGzXEfU_AA0stkoU0CSo06UITextN0CTf1cn_nTf4ngg_n(v7, v9, v10);
  v13 = v12;
  swift_beginAccess();
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(self + v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v7, self + v8);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v11, v13);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitRichTextEditorCoordinator.textViewDidChange(_:)(v4);
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  specialized UIKitRichTextEditorCoordinator.textView(_:editMenuForTextIn:suggestedActions:)(v7);
  v11 = v10;

  return v11;
}

@end