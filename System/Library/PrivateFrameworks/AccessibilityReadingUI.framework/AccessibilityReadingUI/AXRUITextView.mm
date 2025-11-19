@interface AXRUITextView
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)resignFirstResponder;
- (CGRect)frame;
- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithCoder:(id)a3;
- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)accessibilityElementDidBecomeFocused:(id)a3;
- (void)clearSelectionOnTap:(id)a3;
- (void)dealloc;
- (void)handleOrientationChange;
- (void)setFrame:(CGRect)a3;
@end

@implementation AXRUITextView

- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  v5 = sub_23D8DD850();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_23D8DECD0();
  __break(1u);
  return result;
}

- (void)handleOrientationChange
{
  v2 = self;
  sub_23D87550C();
}

- (void)clearSelectionOnTap:(id)a3
{
  v4 = self;
  [(AXRUITextView *)v4 selectedRange];
  if (v3 >= 1)
  {
    [(AXRUITextView *)v4 setSelectedRange:0, 0];
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_23D87639C(a3);

  return a3 & 1;
}

- (BOOL)becomeFirstResponder
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v4 selector:sel_accessibilityElementDidBecomeFocused_ name:*MEMORY[0x277D76468] object:0];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for AXRUITextView();
  LOBYTE(v5) = [(AXRUITextView *)&v7 becomeFirstResponder];

  return v5;
}

- (BOOL)resignFirstResponder
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:*MEMORY[0x277D76468] object:0];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for AXRUITextView();
  LOBYTE(v5) = [(AXRUITextView *)&v7 resignFirstResponder];

  return v5;
}

- (void)accessibilityElementDidBecomeFocused:(id)a3
{
  v4 = sub_23D8DBE10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DBDF0();
  v9 = self;
  sub_23D8765DC();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AXRUITextView();
  return [(AXRUITextView *)&v8 pointInside:a4 withEvent:x, y];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_23D879198(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  objc_opt_self();
  result = 0;
  if (!swift_dynamicCastObjCClass() || (objc_opt_self(), !swift_dynamicCastObjCClass()))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AXRUITextView();
  [(AXRUITextView *)&v6 dealloc];
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AXRUITextView();
  [(AXRUITextView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for AXRUITextView();
  v17.receiver = self;
  v17.super_class = v8;
  v9 = self;
  [(AXRUITextView *)&v17 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = v9;
  v16.super_class = v8;
  [(AXRUITextView *)&v16 setFrame:x, y, width, height];
  sub_23D876CBC(v11, v13, v15);
}

- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end