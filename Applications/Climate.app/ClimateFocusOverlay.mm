@interface ClimateFocusOverlay
- (_TtC7Climate19ClimateFocusOverlay)init;
- (_TtC7Climate19ClimateFocusOverlay)initWithCoder:(id)a3;
- (_TtC7Climate19ClimateFocusOverlay)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ClimateFocusOverlay

- (_TtC7Climate19ClimateFocusOverlay)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateFocusOverlay();
  v2 = [(ClimateTransparentFocusView *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(ClimateFocusOverlay *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ClimateFocusOverlay *)v2 setHidden:1];
  v3 = [objc_opt_self() _carSystemFocusColor];
  [(ClimateFocusOverlay *)v2 setBackgroundColor:v3];

  return v2;
}

- (_TtC7Climate19ClimateFocusOverlay)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClimateFocusOverlay();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(ClimateFocusOverlay *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100005AA0();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC7Climate19ClimateFocusOverlay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end