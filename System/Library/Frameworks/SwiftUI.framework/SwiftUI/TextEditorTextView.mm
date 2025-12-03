@interface TextEditorTextView
- (BOOL)supportsTextReplacement;
- (_TtC7SwiftUI18TextEditorTextView)initWithCoder:(id)coder;
- (_TtC7SwiftUI18TextEditorTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
@end

@implementation TextEditorTextView

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  TextEditorTextView.findInteraction(_:didBegin:)(interactionCopy, sessionCopy, &selRef_findInteraction_didBeginFindSession_);
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  TextEditorTextView.findInteraction(_:didBegin:)(interactionCopy, sessionCopy, &selRef_findInteraction_didEndFindSession_);
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

- (_TtC7SwiftUI18TextEditorTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = self + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext;
  *v9 = xmmword_18CD633F0;
  v9[18] = 0;
  *(v9 + 8) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TextEditorTextView();
  return [(UIKitTextView *)&v11 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC7SwiftUI18TextEditorTextView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext;
  *v4 = xmmword_18CD633F0;
  v4[18] = 0;
  *(v4 + 8) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TextEditorTextView();
  coderCopy = coder;
  v6 = [(UIKitTextView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end