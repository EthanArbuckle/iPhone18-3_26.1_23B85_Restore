@interface CRLLinkViewHostingRep
- (BOOL)directlyManagesContentPlatformView;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (NSArray)accessibilityCustomActions;
- (NSArray)crlaxUserInputLabels;
- (NSString)crlaxLabel;
- (UIView)contentPlatformView;
- (_TtC8Freeform21CRLLinkViewHostingRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)cancelReload:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)a3;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)viewScaleDidChange;
@end

@implementation CRLLinkViewHostingRep

- (NSString)crlaxLabel
{
  v2 = self;
  CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(0);
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  BidirectionalCollection<>.joined(separator:)();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSArray)crlaxUserInputLabels
{
  v2 = self;
  CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(1);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)directlyManagesContentPlatformView
{
  v3 = objc_opt_self();
  v4 = self;
  if ([v3 isMainThread] && (v5 = -[CRLCanvasRep canvas](v4, "canvas")) != 0)
  {
    v6 = v5;
    v7 = [(CRLCanvas *)v5 isCanvasInteractive];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIView)contentPlatformView
{
  v2 = self;
  CRLLinkViewHostingRep.contentPlatformView.getter();
  v4 = v3;

  return v4;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  CRLLinkViewHostingRep.draw(in:)(v4);
}

- (void)cancelReload:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_10000CAAC(v3, &unk_1019F4D00);
}

- (void)handleFadeOutForZoom
{
  v2 = self;
  CRLLinkViewHostingRep.handleFadeOutForZoom()();
}

- (void)handleFadeInForZoom
{
  v2 = self;
  CRLLinkViewHostingRep.handleFadeInForZoom()();
}

- (void)viewScaleDidChange
{
  v2 = self;
  CRLLinkViewHostingRep.viewScaleDidChange()();
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v4 = self;
  v5 = _s8Freeform21CRLLinkViewHostingRepC15handleDoubleTap2at9inputTypeSbSo7CGPointV_So08CRLInputK0VtF_0();

  return v5 & 1;
}

- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  CRLLinkViewHostingRep.drawInContextWithoutEffectsForAlphaOnly(_:)(v4);
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = CRLLinkViewHostingRep.accessibilityCustomActions.getter();

  if (v3)
  {
    sub_100006370(0, &qword_101A00130);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC8Freeform21CRLLinkViewHostingRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100FDEE48(v5, a4);

  return v7;
}

@end