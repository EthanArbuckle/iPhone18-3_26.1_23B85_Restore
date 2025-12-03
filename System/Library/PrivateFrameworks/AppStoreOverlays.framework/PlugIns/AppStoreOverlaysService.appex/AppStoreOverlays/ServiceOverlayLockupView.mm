@interface ServiceOverlayLockupView
- (ASCLockup)lockup;
- (ASCViewMetrics)viewMetrics;
- (ASOServiceAdInteractionAttributor)adInteractionAttributor;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)coder;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)frame;
- (id)additionalMetricsFields;
- (id)lockupViewPerformAdAttributionForState:(id)state;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (int64_t)semanticContentAttribute;
- (void)didTapOnOverlay;
- (void)layoutSubviews;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)setAdInteractionAttributor:(id)attributor;
- (void)setHostSignpostSpan:(id)span;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setVariant:(int64_t)variant;
- (void)updateFonts;
@end

@implementation ServiceOverlayLockupView

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = 0;
  swift_unknownObjectWeakInit();
  result = sub_100018588();
  __break(1u);
  return result;
}

- (void)setVariant:(int64_t)variant
{
  selfCopy = self;
  sub_100012AA0(variant);
}

- (ASOServiceAdInteractionAttributor)adInteractionAttributor
{
  v3 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setAdInteractionAttributor:(id)attributor
{
  v5 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = attributor;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (ASCLockup)lockup
{
  lockup = [*(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView) lockup];

  return lockup;
}

- (void)setHostSignpostSpan:(id)span
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = span;
  spanCopy = span;
  selfCopy = self;
  sub_100013074(v6);
}

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ServiceOverlayLockupView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(ServiceOverlayLockupView *)&v9 setSemanticContentAttribute:attribute];
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [v7 setSemanticContentAttribute:{-[ServiceOverlayLockupView semanticContentAttribute](&v8, "semanticContentAttribute")}];
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = sub_100018158();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100018268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = self;
  v25.super_class = ObjectType;
  selfCopy = self;
  [(ServiceOverlayLockupView *)&v25 layoutSubviews];
  sub_1000133D8(v13);
  [(ServiceOverlayLockupView *)selfCopy bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(ServiceOverlayLockupView *)selfCopy layoutMargins];
  sub_100010BD8(v16, v18, v20, v22, v23, v24);
  sub_1000181E8();

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = sub_100018268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  [(ServiceOverlayLockupView *)selfCopy layoutMargins];
  sub_1000184E8(v18);
  sub_1000133D8(v8);
  sub_100018168();
  v11 = v10;
  v13 = v12;

  (*(v5 + 8))(v8, v4);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)updateFonts
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  sub_10000D548(0, &qword_10002C5F8, UIFont_ptr);
  v4 = qword_10002BF68;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100018178();
  sub_10000E764(v6, qword_10002CDC0);
  traitCollection = [(ServiceOverlayLockupView *)selfCopy traitCollection];
  v8 = sub_100018508();

  [v3 setFont:v8];
}

- (void)lockupViewDidBeginRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100017034();
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100017154();
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_10001727C();
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_100017404();

  swift_unknownObjectRelease();

  return v7;
}

- (ASCViewMetrics)viewMetrics
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
  selfCopy = self;
  lockup = [v2 lockup];
  metrics = [lockup metrics];

  return metrics;
}

- (void)didTapOnOverlay
{
  selfCopy = self;
  sub_1000144F0();
}

- (id)additionalMetricsFields
{
  selfCopy = self;
  sub_1000151B8();

  v3.super.isa = sub_100018408().super.isa;

  return v3.super.isa;
}

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)lockupViewPerformAdAttributionForState:(id)state
{
  v5 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  stateCopy = state;
  selfCopy = self;
  sub_100015424(v8);

  v11 = sub_100018088();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    sub_100018068(v13);
    v16 = v15;
    (*(v12 + 8))(v8, v11);
    v14 = v16;
  }

  return v14;
}

@end