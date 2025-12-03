@interface RichTextEditorTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSDictionary)typingAttributes;
- (_TtC7SwiftUI22RichTextEditorTextView)initWithCoder:(id)coder;
- (_TtC7SwiftUI22RichTextEditorTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes;
- (id)_disabledComponentsForTextFormattingOptions;
- (void)paste:(id)paste;
- (void)setTypingAttributes:(id)attributes;
@end

@implementation RichTextEditorTextView

- (void)paste:(id)paste
{
  if (paste)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = RichTextEditorTextView.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

- (NSDictionary)typingAttributes
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  typingAttributes = [(RichTextEditorTextView *)&v6 typingAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setTypingAttributes:(id)attributes
{
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  RichTextEditorTextView.typingAttributes.setter();
}

- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes
{
  typingAttributesCopy = typingAttributes;
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    attributesCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  styleCopy = style;
  v13 = RichTextEditorTextView._attributes(forApplying:withAttributes:paragraphStyle:forTypingAttributes:)(modification, attributesCopy, style, typingAttributesCopy);

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

- (_TtC7SwiftUI22RichTextEditorTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TextEditorTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC7SwiftUI22RichTextEditorTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TextEditorTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end