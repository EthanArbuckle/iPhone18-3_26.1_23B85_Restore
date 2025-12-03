@interface AXRUITextView
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)resignFirstResponder;
- (CGRect)frame;
- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithCoder:(id)coder;
- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)accessibilityElementDidBecomeFocused:(id)focused;
- (void)clearSelectionOnTap:(id)tap;
- (void)dealloc;
- (void)handleOrientationChange;
- (void)setFrame:(CGRect)frame;
@end

@implementation AXRUITextView

- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_23D87550C();
}

- (void)clearSelectionOnTap:(id)tap
{
  selfCopy = self;
  [(AXRUITextView *)selfCopy selectedRange];
  if (v3 >= 1)
  {
    [(AXRUITextView *)selfCopy setSelectedRange:0, 0];
  }
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  selfCopy = self;
  LOBYTE(scroll) = sub_23D87639C(scroll);

  return scroll & 1;
}

- (BOOL)becomeFirstResponder
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_accessibilityElementDidBecomeFocused_ name:*MEMORY[0x277D76468] object:0];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AXRUITextView();
  LOBYTE(defaultCenter) = [(AXRUITextView *)&v7 becomeFirstResponder];

  return defaultCenter;
}

- (BOOL)resignFirstResponder
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76468] object:0];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AXRUITextView();
  LOBYTE(defaultCenter) = [(AXRUITextView *)&v7 resignFirstResponder];

  return defaultCenter;
}

- (void)accessibilityElementDidBecomeFocused:(id)focused
{
  v4 = sub_23D8DBE10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DBDF0();
  selfCopy = self;
  sub_23D8765DC();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AXRUITextView();
  return [(AXRUITextView *)&v8 pointInside:event withEvent:x, y];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_23D879198(touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
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
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for AXRUITextView();
  v17.receiver = self;
  v17.super_class = v8;
  selfCopy = self;
  [(AXRUITextView *)&v17 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = selfCopy;
  v16.super_class = v8;
  [(AXRUITextView *)&v16 setFrame:x, y, width, height];
  sub_23D876CBC(v11, v13, v15);
}

- (_TtC22AccessibilityReadingUI13AXRUITextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end