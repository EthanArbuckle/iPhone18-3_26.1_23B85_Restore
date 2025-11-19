@interface AccessoryView
- (CGSize)intrinsicContentSize;
- (_TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView)initWithCoder:(id)a3;
- (_TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)nowPlayingButtonAction;
@end

@implementation AccessoryView

- (_TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_siriActionSource;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)nowPlayingButtonAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButtonHandler);
  v3 = self;
  v2();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10018BEF0();
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_displaysNowPlaying);
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_searchButton);
  v4 = self;
  [v3 frame];
  v6 = v5;
  v8 = v7;
  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButton) frame];
  v10 = v9;
  v12 = v11;

  v13 = v6 + 8.0 + v10;
  if ((v2 & (v8 <= v12)) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (!v2)
  {
    v13 = v6;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (_TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end