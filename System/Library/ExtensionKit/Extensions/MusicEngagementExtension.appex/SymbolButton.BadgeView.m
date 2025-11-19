@interface SymbolButton.BadgeView
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithCoder:(id)a3;
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithFrame:(CGRect)a3;
- (double)alpha;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SymbolButton.BadgeView

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() blackColor];
  [v5 setBackgroundColor:v6];

  v7 = [v5 layer];
  [v7 setCompositingFilter:kCAFilterDestOut];

  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SymbolButton.BadgeView();
  [(SymbolButton.BadgeView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SymbolButton.BadgeView();
  v4 = v6.receiver;
  [(SymbolButton.BadgeView *)&v6 setAlpha:a3];
  v5 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v4 alpha];
  [v5 setAlpha:?];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SymbolButton.BadgeView();
  v4 = v5.receiver;
  [(SymbolButton.BadgeView *)&v5 setHidden:v3];
  [*&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setHidden:{objc_msgSend(v4, "isHidden", v5.receiver, v5.super_class)}];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SymbolButton.BadgeView();
  v2 = v5.receiver;
  [(SymbolButton.BadgeView *)&v5 didMoveToSuperview];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v3 insertSubview:*&v2[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] belowSubview:v2];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] removeFromSuperview];
  }
}

- (void)layoutSubviews
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for SymbolButton.BadgeView();
  v9.receiver = self;
  v9.super_class = v6;
  v7 = self;
  [(SymbolButton.BadgeView *)&v9 layoutSubviews];
  static UIView.Corner.rounded.getter();
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  UIView.corner.setter();
  SymbolButton.BadgeView.layoutPunchOutView()();
}

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end