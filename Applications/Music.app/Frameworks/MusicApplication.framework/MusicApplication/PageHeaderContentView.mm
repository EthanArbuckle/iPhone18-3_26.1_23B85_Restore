@interface PageHeaderContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setAccessoryView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PageHeaderContentView

- (void)setAccessoryView:(id)a3
{
  v6 = *(self + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
  *(self + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = a3;
  v4 = a3;
  v5 = self;
  sub_34549C(v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_345B98();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(PageHeaderContentView *)v4 traitCollection];
  sub_3468D8(v5, width);
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PageHeaderContentView();
  v2 = v3.receiver;
  [(PageHeaderContentView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_346BF0(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_346D34(a4, x, y);

  return v10;
}

@end