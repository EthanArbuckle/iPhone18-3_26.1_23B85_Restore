@interface PageHeaderContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setAccessoryView:(id)view;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PageHeaderContentView

- (void)setAccessoryView:(id)view
{
  v6 = *(self + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
  *(self + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_34549C(v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_345B98();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(PageHeaderContentView *)selfCopy traitCollection];
  sub_3468D8(traitCollection, width);
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_346BF0(change);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_346D34(event, x, y);

  return v10;
}

@end