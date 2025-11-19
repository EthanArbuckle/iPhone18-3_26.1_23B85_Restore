@interface ServiceOverlayLockupView
- (ASCLockup)lockup;
- (ASCViewMetrics)viewMetrics;
- (ASOServiceAdInteractionAttributor)adInteractionAttributor;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)a3;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)a3;
- (id)additionalMetricsFields;
- (id)lockupViewPerformAdAttributionForState:(id)a3;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (int64_t)semanticContentAttribute;
- (void)didTapOnOverlay;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidBeginRequest:(id)a3;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)setAdInteractionAttributor:(id)a3;
- (void)setHostSignpostSpan:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setVariant:(int64_t)a3;
- (void)updateFonts;
@end

@implementation ServiceOverlayLockupView

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = 0;
  swift_unknownObjectWeakInit();
  result = sub_100018588();
  __break(1u);
  return result;
}

- (void)setVariant:(int64_t)a3
{
  v4 = self;
  sub_100012AA0(a3);
}

- (ASOServiceAdInteractionAttributor)adInteractionAttributor
{
  v3 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setAdInteractionAttributor:(id)a3
{
  v5 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (ASCLockup)lockup
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView) lockup];

  return v2;
}

- (void)setHostSignpostSpan:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = a3;
  v4 = a3;
  v5 = self;
  sub_100013074(v6);
}

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ServiceOverlayLockupView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  [(ServiceOverlayLockupView *)&v9 setSemanticContentAttribute:a3];
  v7 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  v8.receiver = v6;
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
  v14 = self;
  [(ServiceOverlayLockupView *)&v25 layoutSubviews];
  sub_1000133D8(v13);
  [(ServiceOverlayLockupView *)v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(ServiceOverlayLockupView *)v14 layoutMargins];
  sub_100010BD8(v16, v18, v20, v22, v23, v24);
  sub_1000181E8();

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = sub_100018268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  [(ServiceOverlayLockupView *)v9 layoutMargins];
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
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100018178();
  sub_10000E764(v6, qword_10002CDC0);
  v7 = [(ServiceOverlayLockupView *)v5 traitCollection];
  v8 = sub_100018508();

  [v3 setFont:v8];
}

- (void)lockupViewDidBeginRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017034();
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017154();
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10001727C();
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_100017404();

  swift_unknownObjectRelease();

  return v7;
}

- (ASCViewMetrics)viewMetrics
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
  v3 = self;
  v4 = [v2 lockup];
  v5 = [v4 metrics];

  return v5;
}

- (void)didTapOnOverlay
{
  v2 = self;
  sub_1000144F0();
}

- (id)additionalMetricsFields
{
  v2 = self;
  sub_1000151B8();

  v3.super.isa = sub_100018408().super.isa;

  return v3.super.isa;
}

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)lockupViewPerformAdAttributionForState:(id)a3
{
  v5 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = a3;
  v10 = self;
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