@interface PageHeaderContentContainerReusableView
- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithCoder:(id)coder;
- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PageHeaderContentContainerReusableView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  v2 = v5.receiver;
  [(PageHeaderContentContainerReusableView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication38PageHeaderContentContainerReusableView_pageHeaderContentView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];

    v2 = v4;
  }
}

- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38PageHeaderContentContainerReusableView_pageHeaderContentView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  return [(PageHeaderContentContainerReusableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38PageHeaderContentContainerReusableView_pageHeaderContentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  coderCopy = coder;
  v5 = [(PageHeaderContentContainerReusableView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end