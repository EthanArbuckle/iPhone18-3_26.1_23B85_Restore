@interface SymbolButton.BadgeView
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithCoder:(id)coder;
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithFrame:(CGRect)frame;
- (double)alpha;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SymbolButton.BadgeView

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
  v5 = [objc_allocWithZone(UIView) init];
  blackColor = [objc_opt_self() blackColor];
  [v5 setBackgroundColor:blackColor];

  layer = [v5 layer];
  [layer setCompositingFilter:kCAFilterDestOut];

  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1005740F8();
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

- (void)setAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SymbolButton.BadgeView();
  v4 = v6.receiver;
  [(SymbolButton.BadgeView *)&v6 setAlpha:alpha];
  v5 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v4 alpha];
  [v5 setAlpha:?];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SymbolButton.BadgeView();
  v4 = v5.receiver;
  [(SymbolButton.BadgeView *)&v5 setHidden:hiddenCopy];
  [*&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setHidden:{objc_msgSend(v4, "isHidden", v5.receiver, v5.super_class)}];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SymbolButton.BadgeView();
  v2 = v5.receiver;
  [(SymbolButton.BadgeView *)&v5 didMoveToSuperview];
  superview = [v2 superview];
  if (superview)
  {
    v4 = superview;
    [superview insertSubview:*&v2[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] belowSubview:v2];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] removeFromSuperview];
  }
}

- (void)layoutSubviews
{
  v3 = sub_100009DCC(&qword_1006F5C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for SymbolButton.BadgeView();
  v9.receiver = self;
  v9.super_class = v6;
  selfCopy = self;
  [(SymbolButton.BadgeView *)&v9 layoutSubviews];
  sub_100573988();
  v8 = sub_100573998();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1005739A8();
  sub_10046BE00();
}

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end