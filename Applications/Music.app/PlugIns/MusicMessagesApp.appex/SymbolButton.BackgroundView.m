@interface SymbolButton.BackgroundView
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)a3;
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation SymbolButton.BackgroundView

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration);
  *v3 = 0;
  v3[1] = 0x3FF0000000000000;
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SymbolButton.BackgroundView();
  v2 = v3.receiver;
  [(SymbolButton.BackgroundView *)&v3 tintColorDidChange];
  sub_1003D6F58();
}

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end