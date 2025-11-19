@interface TextEditorTextView
- (BOOL)supportsTextReplacement;
- (_TtC7SwiftUI18TextEditorTextView)initWithCoder:(id)a3;
- (_TtC7SwiftUI18TextEditorTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
@end

@implementation TextEditorTextView

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TextEditorTextView.findInteraction(_:didBegin:)(v6, v7, &selRef_findInteraction_didBeginFindSession_);
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TextEditorTextView.findInteraction(_:didBegin:)(v6, v7, &selRef_findInteraction_didEndFindSession_);
}

- (BOOL)supportsTextReplacement
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext);
  v3 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext);
  v4 = *(&self->super.super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 2);
  outlined copy of _FindContext?(v2, v3);
  outlined consume of _FindContext?(v2, v3);
  return (v3 != 1) & v4;
}

- (_TtC7SwiftUI18TextEditorTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext;
  *v9 = xmmword_18CD633F0;
  v9[18] = 0;
  *(v9 + 8) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TextEditorTextView();
  return [(UIKitTextView *)&v11 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC7SwiftUI18TextEditorTextView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext;
  *v4 = xmmword_18CD633F0;
  v4[18] = 0;
  *(v4 + 8) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TextEditorTextView();
  v5 = a3;
  v6 = [(UIKitTextView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end