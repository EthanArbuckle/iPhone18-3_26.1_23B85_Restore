@interface FMAccessoryPairingWithYouIndicator
- (_TtC6FindMy34FMAccessoryPairingWithYouIndicator)initWithFrame:(CGRect)frame;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation FMAccessoryPairingWithYouIndicator

- (void)layoutSublayersOfLayer:(id)layer
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMAccessoryPairingWithYouIndicator();
  layerCopy = layer;
  v5 = v8.receiver;
  [(FMAccessoryPairingWithYouIndicator *)&v8 layoutSublayersOfLayer:layerCopy];
  sub_10000905C(0, &qword_1006B4980);
  layer = [v5 layer];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    sub_10024B0E4();
  }
}

- (_TtC6FindMy34FMAccessoryPairingWithYouIndicator)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end