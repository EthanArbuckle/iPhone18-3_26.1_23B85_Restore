@interface SongCell
- (BOOL)isPopular;
- (NSString)accessibilityTrackNumberString;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)layoutSubviews;
- (void)setDuration:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsDisabled:(BOOL)a3;
- (void)setIsFavorite:(BOOL)a3;
- (void)setIsProminentItem:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SongCell

- (void)setDuration:(double)a3
{
  v4 = self;
  sub_142E58(a3);
}

- (void)setIsProminentItem:(BOOL)a3
{
  v4 = self;
  sub_142FDC(a3);
}

- (void)setIsFavorite:(BOOL)a3
{
  v4 = self;
  sub_143184(a3);
}

- (BOOL)isPopular
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity + 8))
  {
    return 0;
  }

  v4 = *(self + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity);
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 standardUserDefaults];
  sub_F7790();
  v9 = v8;

  return v4 >= v9;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_143A5C(a3, &selRef_isHighlighted, &selRef_setHighlighted_);
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_143A5C(a3, &selRef_isSelected, &selRef_setSelected_);
}

- (void)setIsDisabled:(BOOL)a3
{
  v4 = self;
  sub_143BBC(a3);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 size];
  [(SongCell *)v5 music_inheritedLayoutInsets];
  sub_ABA530();
  v7 = v6;
  v8 = [(SongCell *)v5 traitCollection];
  sub_14CD64(v8, 0, v7);

  [v4 size];
  [v4 setSize:?];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_14497C(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_144BA4();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4E00();
  v9 = a3;
  v10 = self;
  sub_14AA84();

  (*(v6 + 8))(v8, v5);
}

- (NSString)accessibilityTrackNumberString
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

@end