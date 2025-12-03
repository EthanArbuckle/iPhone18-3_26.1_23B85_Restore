@interface JournalTextView
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value;
- (BOOL)accessibilityActivate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isEditable;
- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options;
- (CGRect)accessibilityFrame;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)textContainerInset;
- (_TtC7Journal15JournalTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_configurationForTextFormattingOptions;
- (id)_descriptorForTextFormattingOptions;
- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions;
- (void)delete:(id)delete;
- (void)deleteBackward;
- (void)layoutSubviews;
- (void)setAccessibilityFrame:(CGRect)frame;
- (void)setEditable:(BOOL)editable;
- (void)setTextContainerInset:(UIEdgeInsets)inset;
- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
- (void)toggleBlockQuote:(id)quote;
- (void)toggleStrikethrough:(id)strikethrough;
- (void)toggleTextListFormatting:(id)formatting;
- (void)updateProperties;
- (void)validateCommand:(id)command;
- (void)viewportDidLayout;
@end

@implementation JournalTextView

- (void)setTextContainerInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  selfCopy = self;
  sub_100051190(top, left, bottom, right);
}

- (UIEdgeInsets)textContainerInset
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JournalTextView();
  [(JournalTextView *)&v6 textContainerInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v11[4] = sub_1007C4E50;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1007C5118;
    v11[3] = &unk_100A7E4B8;
    v8 = _Block_copy(v11);
    elementCopy = element;
    [v7 setMarkerTextAttributeOverrides:v8];
    _Block_release(v8);
  }

  return 1;
}

- (_TtC7Journal15JournalTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_100051C18(container, x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_100083850();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1007BDED4();
}

- (void)viewportDidLayout
{
  selfCopy = self;
  sub_100080784();
}

- (BOOL)isEditable
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalTextView();
  return [(JournalTextView *)&v3 isEditable];
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalTextView();
  v4 = v5.receiver;
  [(JournalTextView *)&v5 setEditable:editableCopy];
  sub_1007BBA50();
}

- (void)updateProperties
{
  selfCopy = self;
  textContainer = [(JournalTextView *)selfCopy textContainer];
  defaultMetrics = [objc_opt_self() defaultMetrics];
  traitCollection = [(JournalTextView *)selfCopy traitCollection];
  [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:60.0];
  v6 = v5;

  [textContainer setMinimumLineFragmentWidth:v6];
}

- (void)deleteBackward
{
  selfCopy = self;
  sub_1007BE254();
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  if (([(JournalTextView *)selfCopy isFirstResponder]& 1) == 0)
  {
    [(JournalTextView *)selfCopy becomeFirstResponder];
  }

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for JournalTextView();
  accessibilityActivate = [(JournalTextView *)&v5 accessibilityActivate];

  return accessibilityActivate;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v3 = sub_1007BF264();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setAccessibilityFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalTextView();
  [(JournalTextView *)&v7 setAccessibilityFrame:x, y, width, height];
}

- (void)delete:(id)delete
{
  if (delete)
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

  if ([(JournalTextView *)self isEditing])
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for JournalTextView();
    [(JournalTextView *)&v6 deleteBackward];
  }

  sub_100004F84(v7, &qword_100AD13D0);
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

  v8 = sub_1007BF4D4(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  sub_1000065A8(0, &unk_100ADC630);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  rangeCopy = range;
  selfCopy = self;
  sub_1007BFAA8(rangeCopy);
  v9 = v8;

  return v9;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1007C08E4(commandCopy);
}

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value
{
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UITextFormattingViewController.ChangeValue._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_1007C2818(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (id)_configurationForTextFormattingOptions
{
  v2 = sub_1003B5588();

  return v2;
}

- (id)_descriptorForTextFormattingOptions
{
  v3 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1007C3048(v6);

  v8 = UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007C7310(item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)toggleBlockQuote:(id)quote
{
  quoteCopy = quote;
  selfCopy = self;
  sub_1007C7900();
}

- (void)toggleStrikethrough:(id)strikethrough
{
  strikethroughCopy = strikethrough;
  selfCopy = self;
  sub_1007C7CB8();
}

- (void)toggleTextListFormatting:(id)formatting
{
  formattingCopy = formatting;
  selfCopy = self;
  sub_1007C54BC(formattingCopy);
}

@end