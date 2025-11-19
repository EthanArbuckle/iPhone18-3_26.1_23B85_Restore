@interface CRLShadowLayer
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC8Freeform14CRLShadowLayer)init;
- (_TtC8Freeform14CRLShadowLayer)initWithLayer:(id)a3;
- (double)cornerRadius;
- (void)setCornerRadius:(double)a3;
@end

@implementation CRLShadowLayer

- (CGRect)frame
{
  sub_100CE5BA8(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_100CE5BA8(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLShadowLayer();
  [(CRLShadowLayer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)a3
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for CRLShadowLayer();
  v4 = v16.receiver;
  [(CRLShadowLayer *)&v16 setCornerRadius:a3];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 cornerRadius];
  v14 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v6 cornerRadius:{v8, v10, v12, v13}];
  v15 = [v14 CGPath];

  [v4 setShadowPath:v15];
}

- (_TtC8Freeform14CRLShadowLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLShadowLayer();
  return [(CRLShadowLayer *)&v3 init];
}

- (_TtC8Freeform14CRLShadowLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100020E58(v8, v8[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLShadowLayer();
  v5 = [(CRLShadowLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_100005070(v8);
  return v5;
}

@end