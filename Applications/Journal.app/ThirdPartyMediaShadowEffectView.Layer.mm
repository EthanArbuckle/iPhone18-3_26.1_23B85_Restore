@interface ThirdPartyMediaShadowEffectView.Layer
- (CACornerRadii)cornerRadii;
- (NSString)cornerCurve;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)init;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithCoder:(id)coder;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithLayer:(id)layer;
- (double)cornerRadius;
- (void)setCornerCurve:(id)curve;
- (void)setCornerRadii:(CACornerRadii *)radii;
- (void)setCornerRadius:(double)radius;
@end

@implementation ThirdPartyMediaShadowEffectView.Layer

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  [(ThirdPartyMediaShadowEffectView.Layer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_100786B7C(radius);
}

- (NSString)cornerCurve
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  cornerCurve = [(ThirdPartyMediaShadowEffectView.Layer *)&v4 cornerCurve];

  return cornerCurve;
}

- (void)setCornerCurve:(id)curve
{
  curveCopy = curve;
  selfCopy = self;
  sub_100786D2C(curveCopy);
}

- (CACornerRadii)cornerRadii
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  result = [(CACornerRadii *)&v12 cornerRadii];
  v5 = v9;
  v6 = v10;
  v7 = v11;
  retstr->var0 = v8;
  retstr->var1 = v5;
  retstr->var2 = v6;
  retstr->var3 = v7;
  return result;
}

- (void)setCornerRadii:(CACornerRadii *)radii
{
  var1 = radii->var1;
  v6[0] = radii->var0;
  v6[1] = var1;
  var3 = radii->var3;
  v6[2] = radii->var2;
  v6[3] = var3;
  selfCopy = self;
  sub_100786EFC(v6);
}

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  return [(ThirdPartyMediaShadowEffectView.Layer *)&v3 init];
}

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000CA14(v8, v8[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7.receiver = self;
  v7.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  v5 = [(ThirdPartyMediaShadowEffectView.Layer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_10000BA7C(v8);
  return v5;
}

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  coderCopy = coder;
  v5 = [(ThirdPartyMediaShadowEffectView.Layer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end