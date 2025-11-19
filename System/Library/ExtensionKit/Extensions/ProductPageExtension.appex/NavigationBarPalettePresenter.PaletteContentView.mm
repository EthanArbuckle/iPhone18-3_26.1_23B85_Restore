@interface NavigationBarPalettePresenter.PaletteContentView
- (_TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView)initWithCoder:(id)a3;
- (_TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NavigationBarPalettePresenter.PaletteContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _s18PaletteContentViewCMa();
  v2 = v5.receiver;
  [(NavigationBarPalettePresenter.PaletteContentView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  if (v3)
  {

    v3(v4);

    sub_1000167E0(v3);
  }

  else
  {
  }
}

- (_TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews);
  v9 = _s18PaletteContentViewCMa();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(NavigationBarPalettePresenter.PaletteContentView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCC20ProductPageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = _s18PaletteContentViewCMa();
  v5 = a3;
  v6 = [(NavigationBarPalettePresenter.PaletteContentView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end