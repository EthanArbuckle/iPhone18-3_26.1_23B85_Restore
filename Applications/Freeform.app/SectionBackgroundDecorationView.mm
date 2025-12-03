@interface SectionBackgroundDecorationView
- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithCoder:(id)coder;
- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation SectionBackgroundDecorationView

- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SectionBackgroundDecorationView();
  height = [(SectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  clearColor = [v8 clearColor];
  [(SectionBackgroundDecorationView *)v9 setBackgroundColor:clearColor];

  return v9;
}

- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end