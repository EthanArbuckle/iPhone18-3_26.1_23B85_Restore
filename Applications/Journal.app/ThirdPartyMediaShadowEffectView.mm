@interface ThirdPartyMediaShadowEffectView
+ (Class)layerClass;
- (_TtC7Journal31ThirdPartyMediaShadowEffectView)initWithCoder:(id)coder;
@end

@implementation ThirdPartyMediaShadowEffectView

+ (Class)layerClass
{
  type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7Journal31ThirdPartyMediaShadowEffectView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView;
  v5 = [objc_allocWithZone(UIView) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for ThirdPartyMediaShadowEffectView();
  swift_deallocPartialClassInstance();
  return 0;
}

@end