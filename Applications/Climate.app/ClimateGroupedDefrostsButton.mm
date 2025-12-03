@interface ClimateGroupedDefrostsButton
- (_TtC7Climate28ClimateGroupedDefrostsButton)init;
- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)layoutSubviews;
@end

@implementation ClimateGroupedDefrostsButton

- (_TtC7Climate28ClimateGroupedDefrostsButton)init
{
  *&self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_stackView;
  sub_10000827C(0, &unk_100116370);
  *&self->_TtC7Climate13ClimateButton_opaque[v3] = UIStackView.init(axis:spacing:arrangedSubviews:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateGroupedDefrostsButton();
  v2 = v3.receiver;
  [(ClimateGroupedDefrostsButton *)&v3 layoutSubviews];
  [v2 _setCornerRadius:{15.0, v3.receiver, v3.super_class}];
}

- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level
{
  selfCopy = self;
  sub_100069244();
}

@end