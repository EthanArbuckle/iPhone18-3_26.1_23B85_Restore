@interface RichTextEditorTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSDictionary)typingAttributes;
- (_TtC7SwiftUI22RichTextEditorTextView)initWithCoder:(id)a3;
- (_TtC7SwiftUI22RichTextEditorTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6;
- (id)_disabledComponentsForTextFormattingOptions;
- (void)paste:(id)a3;
- (void)setTypingAttributes:(id)a3;
@end

@implementation RichTextEditorTextView

- (void)paste:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  RichTextEditorTextView.paste(_:)(v6);

  outlined destroy of Any?(v6);
}

- (id)_disabledComponentsForTextFormattingOptions
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  if ([(RichTextEditorTextView *)&v6 delegate])
  {
    type metadata accessor for UIKitRichTextEditorCoordinator(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      specialized Set<>.init(_:)(*(v3 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications));

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

LABEL_6:
  type metadata accessor for UITextFormattingViewControllerComponentKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = RichTextEditorTextView.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

- (NSDictionary)typingAttributes
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  v3 = [(RichTextEditorTextView *)&v6 typingAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setTypingAttributes:(id)a3
{
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  RichTextEditorTextView.typingAttributes.setter();
}

- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  if (a4)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = self;
  v12 = a5;
  v13 = RichTextEditorTextView._attributes(forApplying:withAttributes:paragraphStyle:forTypingAttributes:)(a3, v8, a5, v6);

  if (v13)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  return v14.super.isa;
}

- (_TtC7SwiftUI22RichTextEditorTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TextEditorTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC7SwiftUI22RichTextEditorTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TextEditorTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end