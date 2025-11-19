@interface FMAccessoryPairingWithYouIndicator
- (_TtC6FindMy34FMAccessoryPairingWithYouIndicator)initWithFrame:(CGRect)a3;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation FMAccessoryPairingWithYouIndicator

- (void)layoutSublayersOfLayer:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMAccessoryPairingWithYouIndicator();
  v4 = a3;
  v5 = v8.receiver;
  [(FMAccessoryPairingWithYouIndicator *)&v8 layoutSublayersOfLayer:v4];
  sub_10000905C(0, &qword_1006B4980);
  v6 = [v5 layer];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    sub_10024B0E4();
  }
}

- (_TtC6FindMy34FMAccessoryPairingWithYouIndicator)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end