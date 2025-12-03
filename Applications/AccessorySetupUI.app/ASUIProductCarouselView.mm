@interface ASUIProductCarouselView
- (void)layoutSubviews;
- (void)pageControlChangedWithPageControl:(id)control;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation ASUIProductCarouselView

- (void)pageControlChangedWithPageControl:(id)control
{
  controlCopy = control;
  selfCopy = self;
  sub_1000048E8([controlCopy currentPage], 1);
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ASUIProductCarouselView();
  v2 = v8.receiver;
  [(ASUIProductCarouselView *)&v8 layoutSubviews];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v7[4] = sub_100009B90;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000102BC;
  v7[3] = &unk_100071648;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v3 animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.8 completion:0.0];

  _Block_release(v5);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1000096B8();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_1000097A4(offset, x);
}

@end