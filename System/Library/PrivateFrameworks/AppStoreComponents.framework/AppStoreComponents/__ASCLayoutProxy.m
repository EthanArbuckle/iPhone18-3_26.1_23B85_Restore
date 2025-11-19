@interface __ASCLayoutProxy
+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)a3 inTraitEnvironment:(id)a4 relativeTo:(CGRect)a5;
+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)a3 layoutDirection:(int64_t)a4 relativeTo:(CGRect)a5;
+ (CGSize)estimatedMediaContentSizeFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 fitting:(CGSize)a6 in:(id)a7;
+ (CGSize)lockupMediaPreferredMediaSizeWithFitting:(CGSize)a3 for:(id)a4 with:(id)a5 and:(id)a6 in:(id)a7;
+ (CGSize)mediumLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4;
+ (CGSize)mediumOfferButtonLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4;
+ (CGSize)miniLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4;
+ (CGSize)miniProductPagePreferredArtworkSize;
+ (CGSize)smallLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4;
+ (CGSize)smallOfferButtonLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4;
+ (UIEdgeInsets)layoutMarginsFor:(id)a3 existingLayoutMargins:(UIEdgeInsets)a4;
+ (double)adTransparencyButtonScaledCapInset:(double)a3 in:(id)a4;
+ (double)adTransparencyButtonTitlePointSizeProvider:(id)a3;
+ (double)adTransparencyDeveloperNamePointSizeProvider:(id)a3;
+ (double)containerViewRotationAngleFor:(id)a3 screenshots:(id)a4 trailers:(id)a5;
+ (double)lockupHeadingPointSizeProvider:(id)a3;
+ (double)lockupSubtitlePointSizeProvider:(id)a3;
+ (double)lockupTitlePointSizeProvider:(id)a3;
+ (double)offerButtonHeightForSize:(id)a3;
+ (double)offerButtonRegularWidthForSize:(id)a3;
+ (double)offerProgressDiameterForSize:(id)a3;
+ (id)adLockupLayoutWithTraitCollection:(id)a3 artworkView:(id)a4 headingText:(id)a5 titleText:(id)a6 subtitleText:(id)a7 offerText:(id)a8 offerButton:(id)a9 starRatingView:(id)a10 ratingCountLabel:(id)a11 adTransparencyButton:(id)a12 editorsChoiceView:(id)a13 descriptionLabel:(id)a14;
+ (id)artworkFrom:(id)a3 and:(id)a4;
+ (id)lockupLayoutOfSize:(id)a3 traitCollection:(id)a4 artworkView:(id)a5 headingText:(id)a6 titleText:(id)a7 subtitleText:(id)a8 offerText:(id)a9 offerButton:(id)a10 badge:(id)a11;
+ (id)lockupMediaLayoutFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 containerView:(id)a6 mediaViews:(id)a7;
+ (id)lockupMediaSizingLayoutFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 containerView:(id)a6 mediaViews:(id)a7;
+ (id)miniProductPageLayoutWithTraitCollection:(id)a3 iconArtwork:(id)a4 title:(id)a5 subtitle:(id)a6 metadata:(id)a7 description:(id)a8 screenshots:(id)a9;
+ (id)offerDisclosureLayoutWithDisclosureIndicator:(id)a3;
+ (id)offerEmptyLayoutWithImageView:(id)a3 titleView:(id)a4 subtitleView:(id)a5;
+ (id)offerIconLayoutForSize:(id)a3 imageView:(id)a4 titleView:(id)a5 subtitleView:(id)a6 hasTrailingSubtitle:(BOOL)a7 shouldTopAlign:(BOOL)a8 topPadding:(double)a9 shouldTrailingAlign:(BOOL)a10;
+ (id)offerTextLayoutForSize:(id)a3 titleBackgroundView:(id)a4 titleView:(id)a5 subtitleView:(id)a6 hasTrailingSubtitle:(BOOL)a7 shouldTopAlign:(BOOL)a8 topPadding:(double)a9 shouldExpandBackground:(BOOL)a10;
+ (id)traitEnvironmentWithTraitCollection:(id)a3;
+ (id)tvTextPillOverlayWithBackgroundView:(id)a3 textView:(id)a4;
+ (int64_t)numberOfViewsInLockupMediaLayoutFor:(id)a3 with:(id)a4 and:(id)a5;
- (CGSize)measuredSizeFittingSize:(CGSize)a3 inTraitEnvironment:(id)a4;
- (NSString)description;
- (UIEdgeInsets)alignmentInsetsInTraitEnvironment:(id)a3;
- (__ASCLayoutProxy)init;
- (void)placeChildrenRelativeToRect:(CGRect)a3 inTraitEnvironment:(id)a4;
@end

@implementation __ASCLayoutProxy

+ (id)traitEnvironmentWithTraitCollection:(id)a3
{
  v4 = objc_allocWithZone(sub_2157A91D0());
  v5 = a3;
  v6 = sub_2157A91C0();

  return v6;
}

+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)a3 inTraitEnvironment:(id)a4 relativeTo:(CGRect)a5
{
  swift_unknownObjectRetain();
  v6 = [a4 traitCollection];
  [v6 layoutDirection];

  sub_2157A94F0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)a3 layoutDirection:(int64_t)a4 relativeTo:(CGRect)a5
{
  sub_2157A94F0();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)measuredSizeFittingSize:(CGSize)a3 inTraitEnvironment:(id)a4
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR_____ASCLayoutProxy_base), *&self->base[OBJC_IVAR_____ASCLayoutProxy_base + 16]);
  swift_unknownObjectRetain();
  v5 = self;
  sub_2157A8AD0();
  v7 = v6;
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)alignmentInsetsInTraitEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  ASCLayoutProxy.alignmentInsets(in:)(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)placeChildrenRelativeToRect:(CGRect)a3 inTraitEnvironment:(id)a4
{
  v5 = sub_2157A8A50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR_____ASCLayoutProxy_base), *&self->base[OBJC_IVAR_____ASCLayoutProxy_base + 16]);
  swift_unknownObjectRetain();
  v9 = self;
  sub_2157A9260();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v8, v5);
}

- (NSString)description
{
  v2 = self;
  sub_2157A9550();
  MEMORY[0x216070240](0x756F79614C435341, 0xEF2879786F725074);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711D8);
  sub_2157A9590();
  MEMORY[0x216070240](41, 0xE100000000000000);

  v3 = sub_2157A93B0();

  return v3;
}

- (__ASCLayoutProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)adLockupLayoutWithTraitCollection:(id)a3 artworkView:(id)a4 headingText:(id)a5 titleText:(id)a6 subtitleText:(id)a7 offerText:(id)a8 offerButton:(id)a9 starRatingView:(id)a10 ratingCountLabel:(id)a11 adTransparencyButton:(id)a12 editorsChoiceView:(id)a13 descriptionLabel:(id)a14
{
  v33 = a3;
  v19 = a4;
  v32 = a5;
  v20 = a6;
  v21 = a7;
  v31 = a8;
  v22 = a9;
  v30 = a10;
  v29 = a11;
  v28 = a12;
  v27 = a13;
  v23 = a14;
  v24 = sub_215795794(v19, a5, v20, v21, a8, v22, a10, a11, a12, a13, v23);

  return v24;
}

+ (int64_t)numberOfViewsInLockupMediaLayoutFor:(id)a3 with:(id)a4 and:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _s18AppStoreComponents14ASCLayoutProxyC32numberOfViewsInLockupMediaLayout3for4with3andSiSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(a3, a4, a5);

  return v11;
}

+ (id)lockupMediaSizingLayoutFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 containerView:(id)a6 mediaViews:(id)a7
{
  sub_215788D28(0, &qword_280D2B5B0);
  v11 = sub_2157A9440();
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = static ASCLayoutProxy.lockupMediaSizingLayout(for:screenshots:trailers:containerView:mediaViews:)(a3, a4, a5, v15, v11);

  return v16;
}

+ (id)lockupMediaLayoutFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 containerView:(id)a6 mediaViews:(id)a7
{
  sub_215788D28(0, &qword_280D2B5B0);
  v11 = sub_2157A9440();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = _s18AppStoreComponents14ASCLayoutProxyC17lockupMediaLayout3for11screenshots8trailers13containerView10mediaViewsACSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgSo6UIViewCSayATGtFZ_0(a3, a4, a5, v15, v11);

  return v16;
}

+ (CGSize)lockupMediaPreferredMediaSizeWithFitting:(CGSize)a3 for:(id)a4 with:(id)a5 and:(id)a6 in:(id)a7
{
  height = a3.height;
  width = a3.width;
  v13 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  v16 = a4;
  v17 = a5;
  v18 = a6;
  swift_unknownObjectRetain();
  sub_215793DD0(a4, a5, a6, v15);
  v19 = sub_2157872A0(v15, a7, width, height);
  v21 = v20;

  swift_unknownObjectRelease();
  sub_215798BB8(v15, type metadata accessor for LockupMediaLayout.Metrics);
  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (id)artworkFrom:(id)a3 and:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_215788950(a3, a4, 0, 1);

  sub_215788D28(0, &qword_27CA71118);
  v8 = sub_2157A9430();

  return v8;
}

+ (CGSize)estimatedMediaContentSizeFor:(id)a3 screenshots:(id)a4 trailers:(id)a5 fitting:(CGSize)a6 in:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  swift_unknownObjectRetain();
  _s18AppStoreComponents14ASCLayoutProxyC25estimatedMediaContentSize3for11screenshots8trailers7fitting2inSo6CGSizeVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgAKSo18UITraitEnvironment_ptFZ_0(a3, a4, a5, a7, width, height);
  v17 = v16;
  v19 = v18;

  swift_unknownObjectRelease();
  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (double)containerViewRotationAngleFor:(id)a3 screenshots:(id)a4 trailers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _s18AppStoreComponents14ASCLayoutProxyC26containerViewRotationAngle3for11screenshots8trailers12CoreGraphics7CGFloatVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(a3, a4, a5);
  v12 = v11;

  return v12;
}

+ (UIEdgeInsets)layoutMarginsFor:(id)a3 existingLayoutMargins:(UIEdgeInsets)a4
{
  top = a4.top;
  v6 = a3;
  v7 = _s18AppStoreComponents14ASCLayoutProxyC13layoutMargins3for014existingLayoutG0So12UIEdgeInsetsVSo16ASCLockupContextaSg_AHtFZ_0(a3, top);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (double)lockupTitlePointSizeProvider:(id)a3
{
  v3 = a3;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC28lockupTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)lockupSubtitlePointSizeProvider:(id)a3
{
  v3 = a3;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)lockupHeadingPointSizeProvider:(id)a3
{
  v3 = a3;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC30lockupHeadingPointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)adTransparencyButtonTitlePointSizeProvider:(id)a3
{
  v3 = a3;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0();

  return v4;
}

+ (double)adTransparencyButtonScaledCapInset:(double)a3 in:(id)a4
{
  v5 = sub_2157A89D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27CA70FB0;
  v10 = a4;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_2157A8B70();
  v12 = __swift_project_value_buffer(v11, qword_27CA71500);
  (*(*(v11 - 8) + 16))(v8, v12, v11);
  (*(v6 + 104))(v8, *MEMORY[0x277D22618], v5);
  v18[3] = v5;
  v18[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  sub_2157A89B0();
  v15 = v14;

  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

+ (double)adTransparencyDeveloperNamePointSizeProvider:(id)a3
{
  v3 = a3;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC44adTransparencyDeveloperNamePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0();

  return v4;
}

+ (CGSize)miniLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4
{
  width = a3.width;
  v5 = a4;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC23miniLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)smallOfferButtonLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4
{
  width = a3.width;
  v5 = a4;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC35smallOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)mediumOfferButtonLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4
{
  width = a3.width;
  v5 = a4;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC36mediumOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)smallLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4
{
  v4 = qword_280D2B588;
  v5 = a4;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SmallLockupLayout.Metrics(0);
  v7 = __swift_project_value_buffer(v6, qword_280D2B590);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = v5;
  v9 = v5;
  v10 = sub_2157A91E0();
  v11 = sub_21579BB5C(v7, v10);
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)mediumLockupEstimatedSizeFittingSize:(CGSize)a3 compatibleWithTraitCollection:(id)a4
{
  width = a3.width;
  v5 = a4;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC25mediumLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)lockupLayoutOfSize:(id)a3 traitCollection:(id)a4 artworkView:(id)a5 headingText:(id)a6 titleText:(id)a7 subtitleText:(id)a8 offerText:(id)a9 offerButton:(id)a10 badge:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v26 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = _s18AppStoreComponents14ASCLayoutProxyC12lockupLayout6ofSize15traitCollection11artworkView11headingText05titleO008subtitleO005offerO00R6Button5badgeACSo09ASCLockupmI0a_So07UITraitK0CSo6UIViewCSo7UILabelCSgA2uv2SSgtFZ_0(v16, v17, v18, a6, v19, v20, a9, v22);

  return v24;
}

+ (CGSize)miniProductPagePreferredArtworkSize
{
  v2 = 83.0;
  v3 = 83.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)miniProductPageLayoutWithTraitCollection:(id)a3 iconArtwork:(id)a4 title:(id)a5 subtitle:(id)a6 metadata:(id)a7 description:(id)a8 screenshots:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = sub_21579EF3C(v15, v16, v17, v18, v19, v20);

  return v21;
}

+ (double)offerButtonHeightForSize:(id)a3
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A04EC(v3, v5, v8);

  v6 = *&v8[9];
  sub_21579ECCC(v8);
  return v6;
}

+ (double)offerProgressDiameterForSize:(id)a3
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A074C(v3, v5, v8);

  v6 = v9;
  sub_21579F4FC(v8);
  return v6;
}

+ (double)offerButtonRegularWidthForSize:(id)a3
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A09AC(v3, v5, v8);

  v6 = *v8;
  sub_21579F4FC(v8);
  return v6;
}

+ (id)offerEmptyLayoutWithImageView:(id)a3 titleView:(id)a4 subtitleView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _s18AppStoreComponents14ASCLayoutProxyC16offerEmptyLayout9imageView05titleJ008subtitleJ0ACSo6UIViewC_AISgAJtFZ_0(v7, a4, a5);

  return v10;
}

+ (id)offerIconLayoutForSize:(id)a3 imageView:(id)a4 titleView:(id)a5 subtitleView:(id)a6 hasTrailingSubtitle:(BOOL)a7 shouldTopAlign:(BOOL)a8 topPadding:(double)a9 shouldTrailingAlign:(BOOL)a10
{
  v15 = sub_2157A93E0();
  v17 = v16;
  swift_getObjCClassMetadata();
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = static ASCLayoutProxy.offerIconLayoutForSize(_:imageView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldTrailingAlign:)(v15, v17, v18, a5, a6, a7, a8, a10, a9);

  return v21;
}

+ (id)offerTextLayoutForSize:(id)a3 titleBackgroundView:(id)a4 titleView:(id)a5 subtitleView:(id)a6 hasTrailingSubtitle:(BOOL)a7 shouldTopAlign:(BOOL)a8 topPadding:(double)a9 shouldExpandBackground:(BOOL)a10
{
  v16 = sub_2157A93E0();
  v18 = v17;
  swift_getObjCClassMetadata();
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = static ASCLayoutProxy.offerTextLayoutForSize(_:titleBackgroundView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldExpandBackground:)(v16, v18, v19, v20, a6, a7, a8, a10, a9);

  return v22;
}

+ (id)offerDisclosureLayoutWithDisclosureIndicator:(id)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11[3] = &type metadata for OfferDisclosureLayout;
  v11[4] = sub_2157A03E8();
  v11[0] = swift_allocObject();
  sub_215788D28(0, &qword_280D2B5B0);
  v5 = a3;
  sub_2157A8AE0();
  v10[3] = &type metadata for PlaceableLayoutProxy;
  v10[4] = sub_21579EB74();
  v10[5] = sub_21579EBC8();
  v10[0] = swift_allocObject();
  sub_21579EC1C(v11, v10[0] + 16);
  v6 = objc_allocWithZone(ObjCClassMetadata);
  sub_21578B2C8(v10, v6 + OBJC_IVAR_____ASCLayoutProxy_base);
  v9.receiver = v6;
  v9.super_class = ObjCClassMetadata;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_21579EC78(v11);

  return v7;
}

+ (id)tvTextPillOverlayWithBackgroundView:(id)a3 textView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s18AppStoreComponents14ASCLayoutProxyC17tvTextPillOverlay14backgroundView04textK0ACSo6UIViewC_AHtFZ_0(v5, v6);

  return v7;
}

@end