@interface PageHeaderContentContainerReusableView
- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithCoder:(id)a3;
- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithFrame:(CGRect)a3;
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

- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38PageHeaderContentContainerReusableView_pageHeaderContentView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  return [(PageHeaderContentContainerReusableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication38PageHeaderContentContainerReusableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38PageHeaderContentContainerReusableView_pageHeaderContentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  v4 = a3;
  v5 = [(PageHeaderContentContainerReusableView *)&v7 initWithCoder:v4];

  return v5;
}

@end