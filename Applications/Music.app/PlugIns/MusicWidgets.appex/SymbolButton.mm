@interface SymbolButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIImageView)accessibilityImageView;
- (UILabel)accessibilityTitleLabel;
- (_TtC11MusicCoreUI12SymbolButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)_monochromaticTreatment;
- (void)_setMonochromaticTreatment:(int64_t)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SymbolButton

- (int64_t)_monochromaticTreatment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SymbolButton(0);
  return [(SymbolButton *)&v3 _monochromaticTreatment];
}

- (void)_setMonochromaticTreatment:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SymbolButton(0);
  v4 = v7.receiver;
  [(SymbolButton *)&v7 _setMonochromaticTreatment:a3];
  v5 = sub_100467B00();
  [v5 _setMonochromaticTreatment:{objc_msgSend(v4, "_monochromaticTreatment", v7.receiver, v7.super_class)}];

  v6 = sub_100467988();
  [v6 _setMonochromaticTreatment:{objc_msgSend(v4, "_monochromaticTreatment")}];
}

- (void)layoutSubviews
{
  v2 = self;
  SymbolButton.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  SymbolButton.traitCollectionDidChange(_:)(v9);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v7 = self;
  [(SymbolButton *)&v10 tintColorDidChange];
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100473854(v7 + v8, v5, type metadata accessor for SymbolButton.Configuration);
  sub_100468EDC(v5);

  sub_1004716CC(v5, type metadata accessor for SymbolButton.Configuration);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SymbolButton *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)hitRect
{
  v2 = self;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (UIViewIgnoresTouchEvents())
  {

    v8 = v7;
  }

  else
  {
    v9 = [(SymbolButton *)v8 pointInside:v7 withEvent:x, y];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(SymbolButton *)v6 hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SymbolButton(0);
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SymbolButton *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SymbolButton *)&v8 setHighlighted:v3];
  sub_100466DB8(v7);
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  SymbolButton.isSelected.setter(a3);
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  SymbolButton.isEnabled.setter(a3);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0();

  return v7;
}

- (UIImageView)accessibilityImageView
{
  v2 = self;
  v3 = sub_100467988();

  return v3;
}

- (UILabel)accessibilityTitleLabel
{
  v2 = self;
  v3 = sub_100467B00();

  return v3;
}

- (_TtC11MusicCoreUI12SymbolButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(v6);

  return v9;
}

@end