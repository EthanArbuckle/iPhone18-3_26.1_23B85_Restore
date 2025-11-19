@interface PassThroughStackView
- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA20PassThroughStackView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassThroughStackView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1001CB98C(a4, x, y);

  return v10;
}

- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA20PassThroughStackView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PassThroughStackView();
  return [(PassThroughStackView *)&v5 initWithCoder:a3];
}

@end