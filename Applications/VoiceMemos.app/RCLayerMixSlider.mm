@interface RCLayerMixSlider
- (_TtC10VoiceMemos16RCLayerMixSlider)init;
- (_TtC10VoiceMemos16RCLayerMixSlider)initWithCoder:(id)coder;
- (_TtC10VoiceMemos16RCLayerMixSlider)initWithFrame:(CGRect)frame;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation RCLayerMixSlider

- (_TtC10VoiceMemos16RCLayerMixSlider)init
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for RCLayerMixSlider();
  v2 = [(RCLayerMixSlider *)&v10 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(RCLayerMixSlider *)v2 value];
  v4 = v3 == 1.0;
  [(RCLayerMixSlider *)v2 value];
  v6 = v5 == -1.0;
  v7 = sub_1001374BC(1, v4);
  [(RCLayerMixSlider *)v2 setMinimumValueImage:v7];

  v8 = sub_1001374BC(2, v6);
  [(RCLayerMixSlider *)v2 setMaximumValueImage:v8];

  return v2;
}

- (_TtC10VoiceMemos16RCLayerMixSlider)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  animatedCopy = animated;
  v13.receiver = self;
  v13.super_class = type metadata accessor for RCLayerMixSlider();
  v6 = v13.receiver;
  *&v7 = value;
  [(RCLayerMixSlider *)&v13 setValue:animatedCopy animated:v7];
  [v6 value];
  LOBYTE(animatedCopy) = v8 == 1.0;
  [v6 value];
  v10 = v9 == -1.0;
  v11 = sub_1001374BC(1, animatedCopy);
  [v6 setMinimumValueImage:v11];

  v12 = sub_1001374BC(2, v10);
  [v6 setMaximumValueImage:v12];
}

- (_TtC10VoiceMemos16RCLayerMixSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end