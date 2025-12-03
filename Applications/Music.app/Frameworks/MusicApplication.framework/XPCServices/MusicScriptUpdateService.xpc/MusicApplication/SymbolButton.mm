@interface SymbolButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImageView)accessibilityImageView;
- (UILabel)accessibilityTitleLabel;
- (_TtC11MusicCoreUI12SymbolButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)_monochromaticTreatment;
- (void)_setMonochromaticTreatment:(int64_t)treatment;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SymbolButton

- (int64_t)_monochromaticTreatment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SymbolButton(0);
  return [(SymbolButton *)&v3 _monochromaticTreatment];
}

- (void)_setMonochromaticTreatment:(int64_t)treatment
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SymbolButton(0);
  v4 = v7.receiver;
  [(SymbolButton *)&v7 _setMonochromaticTreatment:treatment];
  v5 = sub_1003B1EB4();
  [v5 _setMonochromaticTreatment:{objc_msgSend(v4, "_monochromaticTreatment", v7.receiver, v7.super_class)}];

  v6 = sub_1003B1D3C();
  [v6 _setMonochromaticTreatment:{objc_msgSend(v4, "_monochromaticTreatment")}];
}

- (void)layoutSubviews
{
  selfCopy = self;
  SymbolButton.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  SymbolButton.traitCollectionDidChange(_:)(v9);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = SymbolButton.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)tintColorDidChange
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton(0);
  v10.receiver = self;
  v10.super_class = v6;
  selfCopy = self;
  [(SymbolButton *)&v10 tintColorDidChange];
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003BDC54(selfCopy + v8, v5, type metadata accessor for SymbolButton.Configuration);
  sub_1003B3290(v5);

  sub_1003BBA80(v5, type metadata accessor for SymbolButton.Configuration);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SymbolButton *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)hitRect
{
  selfCopy = self;
  v3 = SymbolButton.hitRect()();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (UIViewIgnoresTouchEvents())
  {

    selfCopy = eventCopy;
  }

  else
  {
    v9 = [(SymbolButton *)selfCopy pointInside:eventCopy withEvent:x, y];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(SymbolButton *)selfCopy hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for SymbolButton(0);
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(SymbolButton *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SymbolButton *)&v8 setHighlighted:highlightedCopy];
  sub_1003B116C(isHighlighted);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  SymbolButton.isSelected.setter(selected);
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  SymbolButton.isEnabled.setter(enabled);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0();

  return v7;
}

- (UIImageView)accessibilityImageView
{
  selfCopy = self;
  v3 = sub_1003B1D3C();

  return v3;
}

- (UILabel)accessibilityTitleLabel
{
  selfCopy = self;
  v3 = sub_1003B1EB4();

  return v3;
}

- (_TtC11MusicCoreUI12SymbolButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(interactionCopy);

  return v9;
}

@end