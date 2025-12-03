@interface MusicDespacitoContentView
- (MusicDespacitoContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMainLineView:(id)view;
- (void)setTranslationLineView:(id)view;
@end

@implementation MusicDespacitoContentView

- (void)setMainLineView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_mainLineView) = view;
  viewCopy = view;
}

- (void)setTranslationLineView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = view;
  viewCopy = view;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004A4E2C();
}

- (MusicDespacitoContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end