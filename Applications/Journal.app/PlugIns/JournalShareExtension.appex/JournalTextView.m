@interface JournalTextView
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isEditable;
- (BOOL)textContentManager:(id)a3 shouldEnumerateTextElement:(id)a4 options:(unint64_t)a5;
- (CGRect)accessibilityFrame;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)textContainerInset;
- (_TtC21JournalShareExtension15JournalTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)_configurationForTextFormattingOptions;
- (id)_descriptorForTextFormattingOptions;
- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4;
- (void)delete:(id)a3;
- (void)deleteBackward;
- (void)layoutSubviews;
- (void)setAccessibilityFrame:(CGRect)a3;
- (void)setEditable:(BOOL)a3;
- (void)setTextContainerInset:(UIEdgeInsets)a3;
- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
- (void)toggleBlockQuote:(id)a3;
- (void)toggleStrikethrough:(id)a3;
- (void)toggleTextListFormatting:(id)a3;
- (void)updateProperties;
- (void)validateCommand:(id)a3;
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

- (void)setTextContainerInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_10005E5E0(top, left, bottom, right);
}

- (BOOL)isEditable
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalTextView();
  return [(JournalTextView *)&v3 isEditable];
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalTextView();
  v4 = v5.receiver;
  [(JournalTextView *)&v5 setEditable:v3];
  sub_100060A8C();
}

- (_TtC21JournalShareExtension15JournalTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_10005E798(a4, x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = self;
  sub_10005EC50();
}

- (void)updateProperties
{
  v7 = self;
  v2 = [(JournalTextView *)v7 textContainer];
  v3 = [objc_opt_self() defaultMetrics];
  v4 = [(JournalTextView *)v7 traitCollection];
  [v3 scaledValueForValue:v4 compatibleWithTraitCollection:60.0];
  v6 = v5;

  [v2 setMinimumLineFragmentWidth:v6];
}

- (void)viewportDidLayout
{
  v2 = self;
  sub_10005F878();
}

- (void)deleteBackward
{
  v2 = self;
  sub_100060DE4();
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  if (([(JournalTextView *)v2 isFirstResponder]& 1) == 0)
  {
    [(JournalTextView *)v2 becomeFirstResponder];
  }

  v5.receiver = v2;
  v5.super_class = type metadata accessor for JournalTextView();
  v3 = [(JournalTextView *)&v5 accessibilityActivate];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = self;
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

- (void)setAccessibilityFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalTextView();
  [(JournalTextView *)&v7 setAccessibilityFrame:x, y, width, height];
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  if ([(JournalTextView *)self isEditing])
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for JournalTextView();
    [(JournalTextView *)&v6 deleteBackward];
  }

  sub_10000FFB4(v7, &qword_10014CA68);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1000622D8(a3, v10);

  sub_10000FFB4(v10, &qword_10014CA68);
  return v8 & 1;
}

- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4
{
  sub_100010F50(0, &qword_10014E1F0);
  sub_1001011D4();
  v6 = a3;
  v7 = self;
  sub_1000628AC(v6);
  v9 = v8;

  return v9;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100063D20(v4);
}

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)a3
{
  v4 = sub_1001018C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001018B4();
  v8 = self;
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
  v7 = self;
  sub_1000665CC(v6);

  v8 = sub_100101874();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_10006B198(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (BOOL)textContentManager:(id)a3 shouldEnumerateTextElement:(id)a4 options:(unint64_t)a5
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
    v9 = a4;
    [v7 setMarkerTextAttributeOverrides:v8];
    _Block_release(v8);
  }

  return 1;
}

- (void)toggleBlockQuote:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006B788();
}

- (void)toggleStrikethrough:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006BB40();
}

- (void)toggleTextListFormatting:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068B20(v4);
}

@end