@interface MusicDespacitoContentView
- (MusicDespacitoContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setMainLineView:(id)a3;
- (void)setTranslationLineView:(id)a3;
@end

@implementation MusicDespacitoContentView

- (void)setMainLineView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_mainLineView) = a3;
  v3 = a3;
}

- (void)setTranslationLineView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = a3;
  v3 = a3;
}

- (void)layoutSubviews
{
  v2 = self;
  SyncedLyricsLineView.DespacitoContentView.layoutSubviews()();
}

- (MusicDespacitoContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end