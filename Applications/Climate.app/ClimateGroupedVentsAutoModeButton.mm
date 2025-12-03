@interface ClimateGroupedVentsAutoModeButton
- (BOOL)isHighlighted;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ClimateGroupedVentsAutoModeButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton();
  v4 = v5.receiver;
  [(ClimateButton *)&v5 setHighlighted:highlightedCopy];
  [*&v4[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton] setHighlighted:{objc_msgSend(v4, "isHighlighted", v5.receiver, v5.super_class)}];
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_1000AE5A8();
}

@end