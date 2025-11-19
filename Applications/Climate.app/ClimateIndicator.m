@interface ClimateIndicator
- (_TtC7Climate16ClimateIndicator)init;
- (void)layoutSubviews;
@end

@implementation ClimateIndicator

- (_TtC7Climate16ClimateIndicator)init
{
  *&self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate16ClimateIndicator_circularBackgroundView] = 0;
  v2 = &self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter];
  *v2 = 0;
  v2[8] = 1;
  self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode] = 0;
  self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClimateIndicator();
  v2 = v6.receiver;
  [(ClimateIndicator *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Climate16ClimateIndicator_circularBackgroundView];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 layer];
    [v4 bounds];
    [v5 setCornerRadius:CGRectGetWidth(v7) * 0.5];
  }
}

@end