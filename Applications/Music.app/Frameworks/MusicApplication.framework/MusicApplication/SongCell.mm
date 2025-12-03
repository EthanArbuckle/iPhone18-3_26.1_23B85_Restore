@interface SongCell
- (BOOL)isPopular;
- (NSString)accessibilityTrackNumberString;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)setDuration:(double)duration;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsDisabled:(BOOL)disabled;
- (void)setIsFavorite:(BOOL)favorite;
- (void)setIsProminentItem:(BOOL)item;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SongCell

- (void)setDuration:(double)duration
{
  selfCopy = self;
  sub_142E58(duration);
}

- (void)setIsProminentItem:(BOOL)item
{
  selfCopy = self;
  sub_142FDC(item);
}

- (void)setIsFavorite:(BOOL)favorite
{
  selfCopy = self;
  sub_143184(favorite);
}

- (BOOL)isPopular
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity + 8))
  {
    return 0;
  }

  v4 = *(self + OBJC_IVAR____TtC16MusicApplication8SongCell_popularity);
  v5 = objc_opt_self();
  selfCopy = self;
  standardUserDefaults = [v5 standardUserDefaults];
  sub_F7790();
  v9 = v8;

  return v4 >= v9;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_143A5C(highlighted, &selRef_isHighlighted, &selRef_setHighlighted_);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_143A5C(selected, &selRef_isSelected, &selRef_setSelected_);
}

- (void)setIsDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_143BBC(disabled);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  [attributesCopy size];
  [(SongCell *)selfCopy music_inheritedLayoutInsets];
  sub_ABA530();
  v7 = v6;
  traitCollection = [(SongCell *)selfCopy traitCollection];
  sub_14CD64(traitCollection, 0, v7);

  [attributesCopy size];
  [attributesCopy setSize:?];

  return attributesCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_14497C(change);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_144BA4();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4E00();
  stateCopy = state;
  selfCopy = self;
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