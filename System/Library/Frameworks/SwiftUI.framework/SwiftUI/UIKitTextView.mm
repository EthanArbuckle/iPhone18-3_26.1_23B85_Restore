@interface UIKitTextView
- (BOOL)becomeFirstResponder;
- (_TtC7SwiftUI13UIKitTextView)initWithCoder:(id)a3;
- (_TtC7SwiftUI13UIKitTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation UIKitTextView

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UIKitTextView();
  v2 = v5.receiver;
  v3 = [(UIKitTextView *)&v5 becomeFirstResponder];
  if (v3)
  {
    UIKitTextView.enqueueScrollIfNeeded()();
  }

  return v3;
}

- (_TtC7SwiftUI13UIKitTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for UIKitTextView();
  return [(UIKitTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC7SwiftUI13UIKitTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitTextView();
  v4 = a3;
  v5 = [(UIKitTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end