@interface JournalTextView
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value;
- (BOOL)accessibilityActivate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isEditable;
- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options;
- (CGRect)accessibilityFrame;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)textContainerInset;
- (_TtC21JournalShareExtension15JournalTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
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

- (void)setTextContainerInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  selfCopy = self;
  sub_10005E5E0(top, left, bottom, right);
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
  sub_100060A8C();
}

- (_TtC21JournalShareExtension15JournalTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_10005E798(container, x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_10005EAC4();
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
  sub_10005EC50();
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

- (void)viewportDidLayout
{
  selfCopy = self;
  sub_10005F878();
}

- (void)deleteBackward
{
  selfCopy = self;
  sub_100060DE4();
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
  v3 = sub_100062068();
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
    sub_100101B14();
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

  sub_10000FFB4(v7, &qword_10014CA68);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1000622D8(action, v10);

  sub_10000FFB4(v10, &qword_10014CA68);
  return v8 & 1;
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  sub_100010F50(0, &qword_10014E1F0);
  sub_1001011D4();
  rangeCopy = range;
  selfCopy = self;
  sub_1000628AC(rangeCopy);
  v9 = v8;

  return v9;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100063D20(commandCopy);
}

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value
{
  v4 = sub_1001018C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001018B4();
  selfCopy = self;
  v9 = sub_100065D9C(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (id)_configurationForTextFormattingOptions
{
  v2 = sub_10006B024();

  return v2;
}

- (id)_descriptorForTextFormattingOptions
{
  v3 = sub_1001018A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1000665CC(v6);

  v8 = sub_100101874();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10006B198(item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (BOOL)textContentManager:(id)manager shouldEnumerateTextElement:(id)element options:(unint64_t)options
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v11[4] = sub_1000683D4;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10006869C;
    v11[3] = &unk_100136C08;
    v8 = _Block_copy(v11);
    elementCopy = element;
    [v7 setMarkerTextAttributeOverrides:v8];
    _Block_release(v8);
  }

  return 1;
}

- (void)toggleBlockQuote:(id)quote
{
  quoteCopy = quote;
  selfCopy = self;
  sub_10006B788();
}

- (void)toggleStrikethrough:(id)strikethrough
{
  strikethroughCopy = strikethrough;
  selfCopy = self;
  sub_10006BB40();
}

- (void)toggleTextListFormatting:(id)formatting
{
  formattingCopy = formatting;
  selfCopy = self;
  sub_100068B20(formattingCopy);
}

@end