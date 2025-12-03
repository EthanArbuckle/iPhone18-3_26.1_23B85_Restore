@interface UIKitTextView
- (BOOL)becomeFirstResponder;
- (_TtC7SwiftUI13UIKitTextView)initWithCoder:(id)coder;
- (_TtC7SwiftUI13UIKitTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation UIKitTextView

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UIKitTextView();
  v2 = v5.receiver;
  becomeFirstResponder = [(UIKitTextView *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    UIKitTextView.enqueueScrollIfNeeded()();
  }

  return becomeFirstResponder;
}

- (_TtC7SwiftUI13UIKitTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for UIKitTextView();
  return [(UIKitTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC7SwiftUI13UIKitTextView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitTextView();
  coderCopy = coder;
  v5 = [(UIKitTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end