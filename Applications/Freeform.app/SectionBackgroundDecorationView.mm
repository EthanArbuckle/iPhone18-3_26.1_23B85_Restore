@interface SectionBackgroundDecorationView
- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithCoder:(id)a3;
- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithFrame:(CGRect)a3;
@end

@implementation SectionBackgroundDecorationView

- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SectionBackgroundDecorationView();
  v7 = [(SectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [(SectionBackgroundDecorationView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC8FreeformP33_B64EF75A78918F40913B224CA2DC985631SectionBackgroundDecorationView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end