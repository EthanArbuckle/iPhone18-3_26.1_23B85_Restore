@interface SymbolButton.BackgroundView
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)coder;
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation SymbolButton.BackgroundView

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration);
  *v3 = 0;
  v3[1] = 0x3FF0000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SymbolButton.BackgroundView();
  v2 = v3.receiver;
  [(SymbolButton.BackgroundView *)&v3 tintColorDidChange];
  SymbolButton.BackgroundView.updateBackgroundColor()();
}

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end