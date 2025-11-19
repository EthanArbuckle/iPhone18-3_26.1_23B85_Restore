@interface ClimateGroupedVentsAutoModeButton
- (BOOL)isHighlighted;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ClimateGroupedVentsAutoModeButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton();
  v4 = v5.receiver;
  [(ClimateButton *)&v5 setHighlighted:v3];
  [*&v4[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton] setHighlighted:{objc_msgSend(v4, "isHighlighted", v5.receiver, v5.super_class)}];
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_1000AE5A8();
}

@end