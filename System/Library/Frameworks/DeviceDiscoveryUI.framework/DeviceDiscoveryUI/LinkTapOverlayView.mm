@interface LinkTapOverlayView
- (_TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LinkTapOverlayView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LinkTapOverlayView();
  v2 = v7.receiver;
  [(LinkTapOverlayView *)&v7 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setSize_];

    sub_238076DE8();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v9 = type metadata accessor for LinkTapOverlayView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(LinkTapOverlayView *)&v11 initWithFrame:x, y, width, height];
}

@end