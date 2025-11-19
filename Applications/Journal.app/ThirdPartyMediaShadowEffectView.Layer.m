@interface ThirdPartyMediaShadowEffectView.Layer
- (CACornerRadii)cornerRadii;
- (NSString)cornerCurve;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)init;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithCoder:(id)a3;
- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithLayer:(id)a3;
- (double)cornerRadius;
- (void)setCornerCurve:(id)a3;
- (void)setCornerRadii:(CACornerRadii *)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation ThirdPartyMediaShadowEffectView.Layer

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  [(ThirdPartyMediaShadowEffectView.Layer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  sub_100786B7C(a3);
}

- (NSString)cornerCurve
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  v2 = [(ThirdPartyMediaShadowEffectView.Layer *)&v4 cornerCurve];

  return v2;
}

- (void)setCornerCurve:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100786D2C(v4);
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

- (void)setCornerRadii:(CACornerRadii *)a3
{
  var1 = a3->var1;
  v6[0] = a3->var0;
  v6[1] = var1;
  var3 = a3->var3;
  v6[2] = a3->var2;
  v6[3] = var3;
  v5 = self;
  sub_100786EFC(v6);
}

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  return [(ThirdPartyMediaShadowEffectView.Layer *)&v3 init];
}

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithLayer:(id)a3
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

- (_TtCC7Journal31ThirdPartyMediaShadowEffectViewP33_12A01373AF1737769C2E66ABF7AEC5025Layer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  v4 = a3;
  v5 = [(ThirdPartyMediaShadowEffectView.Layer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end