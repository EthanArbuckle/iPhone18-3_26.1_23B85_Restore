@interface CRLLinkViewHostingRep
- (BOOL)directlyManagesContentPlatformView;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (NSArray)accessibilityCustomActions;
- (NSArray)crlaxUserInputLabels;
- (NSString)crlaxLabel;
- (UIView)contentPlatformView;
- (_TtC8Freeform21CRLLinkViewHostingRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)cancelReload:(id)reload;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)only;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)viewScaleDidChange;
@end

@implementation CRLLinkViewHostingRep

- (NSString)crlaxLabel
{
  selfCopy = self;
  CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(0);
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  BidirectionalCollection<>.joined(separator:)();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSArray)crlaxUserInputLabels
{
  selfCopy = self;
  CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(1);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)directlyManagesContentPlatformView
{
  v3 = objc_opt_self();
  selfCopy = self;
  if ([v3 isMainThread] && (v5 = -[CRLCanvasRep canvas](selfCopy, "canvas")) != 0)
  {
    v6 = v5;
    isCanvasInteractive = [(CRLCanvas *)v5 isCanvasInteractive];
  }

  else
  {
    isCanvasInteractive = 0;
  }

  return isCanvasInteractive;
}

- (UIView)contentPlatformView
{
  selfCopy = self;
  CRLLinkViewHostingRep.contentPlatformView.getter();
  v4 = v3;

  return v4;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  CRLLinkViewHostingRep.draw(in:)(contextCopy);
}

- (void)cancelReload:(id)reload
{
  if (reload)
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
  selfCopy = self;
  CRLLinkViewHostingRep.handleFadeOutForZoom()();
}

- (void)handleFadeInForZoom
{
  selfCopy = self;
  CRLLinkViewHostingRep.handleFadeInForZoom()();
}

- (void)viewScaleDidChange
{
  selfCopy = self;
  CRLLinkViewHostingRep.viewScaleDidChange()();
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  selfCopy = self;
  v5 = _s8Freeform21CRLLinkViewHostingRepC15handleDoubleTap2at9inputTypeSbSo7CGPointV_So08CRLInputK0VtF_0();

  return v5 & 1;
}

- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)only
{
  onlyCopy = only;
  selfCopy = self;
  CRLLinkViewHostingRep.drawInContextWithoutEffectsForAlphaOnly(_:)(onlyCopy);
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
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

- (_TtC8Freeform21CRLLinkViewHostingRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v7 = sub_100FDEE48(layoutCopy, canvas);

  return v7;
}

@end