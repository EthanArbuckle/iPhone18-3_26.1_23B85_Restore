@interface __ASCLayoutProxy
+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)rect inTraitEnvironment:(id)environment relativeTo:(CGRect)to;
+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)rect layoutDirection:(int64_t)direction relativeTo:(CGRect)to;
+ (CGSize)estimatedMediaContentSizeFor:(id)for screenshots:(id)screenshots trailers:(id)trailers fitting:(CGSize)fitting in:(id)in;
+ (CGSize)lockupMediaPreferredMediaSizeWithFitting:(CGSize)fitting for:(id)for with:(id)with and:(id)and in:(id)in;
+ (CGSize)mediumLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection;
+ (CGSize)mediumOfferButtonLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection;
+ (CGSize)miniLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection;
+ (CGSize)miniProductPagePreferredArtworkSize;
+ (CGSize)smallLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection;
+ (CGSize)smallOfferButtonLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection;
+ (UIEdgeInsets)layoutMarginsFor:(id)for existingLayoutMargins:(UIEdgeInsets)margins;
+ (double)adTransparencyButtonScaledCapInset:(double)inset in:(id)in;
+ (double)adTransparencyButtonTitlePointSizeProvider:(id)provider;
+ (double)adTransparencyDeveloperNamePointSizeProvider:(id)provider;
+ (double)containerViewRotationAngleFor:(id)for screenshots:(id)screenshots trailers:(id)trailers;
+ (double)lockupHeadingPointSizeProvider:(id)provider;
+ (double)lockupSubtitlePointSizeProvider:(id)provider;
+ (double)lockupTitlePointSizeProvider:(id)provider;
+ (double)offerButtonHeightForSize:(id)size;
+ (double)offerButtonRegularWidthForSize:(id)size;
+ (double)offerProgressDiameterForSize:(id)size;
+ (id)adLockupLayoutWithTraitCollection:(id)collection artworkView:(id)view headingText:(id)text titleText:(id)titleText subtitleText:(id)subtitleText offerText:(id)offerText offerButton:(id)button starRatingView:(id)self0 ratingCountLabel:(id)self1 adTransparencyButton:(id)self2 editorsChoiceView:(id)self3 descriptionLabel:(id)self4;
+ (id)artworkFrom:(id)from and:(id)and;
+ (id)lockupLayoutOfSize:(id)size traitCollection:(id)collection artworkView:(id)view headingText:(id)text titleText:(id)titleText subtitleText:(id)subtitleText offerText:(id)offerText offerButton:(id)self0 badge:(id)self1;
+ (id)lockupMediaLayoutFor:(id)for screenshots:(id)screenshots trailers:(id)trailers containerView:(id)view mediaViews:(id)views;
+ (id)lockupMediaSizingLayoutFor:(id)for screenshots:(id)screenshots trailers:(id)trailers containerView:(id)view mediaViews:(id)views;
+ (id)miniProductPageLayoutWithTraitCollection:(id)collection iconArtwork:(id)artwork title:(id)title subtitle:(id)subtitle metadata:(id)metadata description:(id)description screenshots:(id)screenshots;
+ (id)offerDisclosureLayoutWithDisclosureIndicator:(id)indicator;
+ (id)offerEmptyLayoutWithImageView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView;
+ (id)offerIconLayoutForSize:(id)size imageView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView hasTrailingSubtitle:(BOOL)subtitle shouldTopAlign:(BOOL)align topPadding:(double)padding shouldTrailingAlign:(BOOL)self0;
+ (id)offerTextLayoutForSize:(id)size titleBackgroundView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView hasTrailingSubtitle:(BOOL)subtitle shouldTopAlign:(BOOL)align topPadding:(double)padding shouldExpandBackground:(BOOL)self0;
+ (id)traitEnvironmentWithTraitCollection:(id)collection;
+ (id)tvTextPillOverlayWithBackgroundView:(id)view textView:(id)textView;
+ (int64_t)numberOfViewsInLockupMediaLayoutFor:(id)for with:(id)with and:(id)and;
- (CGSize)measuredSizeFittingSize:(CGSize)size inTraitEnvironment:(id)environment;
- (NSString)description;
- (UIEdgeInsets)alignmentInsetsInTraitEnvironment:(id)environment;
- (__ASCLayoutProxy)init;
- (void)placeChildrenRelativeToRect:(CGRect)rect inTraitEnvironment:(id)environment;
@end

@implementation __ASCLayoutProxy

+ (id)traitEnvironmentWithTraitCollection:(id)collection
{
  v4 = objc_allocWithZone(sub_2157A91D0());
  collectionCopy = collection;
  v6 = sub_2157A91C0();

  return v6;
}

+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)rect inTraitEnvironment:(id)environment relativeTo:(CGRect)to
{
  swift_unknownObjectRetain();
  traitCollection = [environment traitCollection];
  [traitCollection layoutDirection];

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

+ (CGRect)rectWithLayoutDirectionForRect:(CGRect)rect layoutDirection:(int64_t)direction relativeTo:(CGRect)to
{
  sub_2157A94F0();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)measuredSizeFittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR_____ASCLayoutProxy_base), *&self->base[OBJC_IVAR_____ASCLayoutProxy_base + 16]);
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (UIEdgeInsets)alignmentInsetsInTraitEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ASCLayoutProxy.alignmentInsets(in:)(environment);
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

- (void)placeChildrenRelativeToRect:(CGRect)rect inTraitEnvironment:(id)environment
{
  v5 = sub_2157A8A50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR_____ASCLayoutProxy_base), *&self->base[OBJC_IVAR_____ASCLayoutProxy_base + 16]);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2157A9260();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v8, v5);
}

- (NSString)description
{
  selfCopy = self;
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

+ (id)adLockupLayoutWithTraitCollection:(id)collection artworkView:(id)view headingText:(id)text titleText:(id)titleText subtitleText:(id)subtitleText offerText:(id)offerText offerButton:(id)button starRatingView:(id)self0 ratingCountLabel:(id)self1 adTransparencyButton:(id)self2 editorsChoiceView:(id)self3 descriptionLabel:(id)self4
{
  collectionCopy = collection;
  viewCopy = view;
  textCopy = text;
  titleTextCopy = titleText;
  subtitleTextCopy = subtitleText;
  offerTextCopy = offerText;
  buttonCopy = button;
  ratingViewCopy = ratingView;
  labelCopy = label;
  transparencyButtonCopy = transparencyButton;
  choiceViewCopy = choiceView;
  descriptionLabelCopy = descriptionLabel;
  v24 = sub_215795794(viewCopy, text, titleTextCopy, subtitleTextCopy, offerText, buttonCopy, ratingView, label, transparencyButton, choiceView, descriptionLabelCopy);

  return v24;
}

+ (int64_t)numberOfViewsInLockupMediaLayoutFor:(id)for with:(id)with and:(id)and
{
  forCopy = for;
  withCopy = with;
  andCopy = and;
  v11 = _s18AppStoreComponents14ASCLayoutProxyC32numberOfViewsInLockupMediaLayout3for4with3andSiSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(for, with, and);

  return v11;
}

+ (id)lockupMediaSizingLayoutFor:(id)for screenshots:(id)screenshots trailers:(id)trailers containerView:(id)view mediaViews:(id)views
{
  sub_215788D28(0, &qword_280D2B5B0);
  v11 = sub_2157A9440();
  swift_getObjCClassMetadata();
  forCopy = for;
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  viewCopy = view;
  v16 = static ASCLayoutProxy.lockupMediaSizingLayout(for:screenshots:trailers:containerView:mediaViews:)(for, screenshots, trailers, viewCopy, v11);

  return v16;
}

+ (id)lockupMediaLayoutFor:(id)for screenshots:(id)screenshots trailers:(id)trailers containerView:(id)view mediaViews:(id)views
{
  sub_215788D28(0, &qword_280D2B5B0);
  v11 = sub_2157A9440();
  forCopy = for;
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  viewCopy = view;
  v16 = _s18AppStoreComponents14ASCLayoutProxyC17lockupMediaLayout3for11screenshots8trailers13containerView10mediaViewsACSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgSo6UIViewCSayATGtFZ_0(for, screenshots, trailers, viewCopy, v11);

  return v16;
}

+ (CGSize)lockupMediaPreferredMediaSizeWithFitting:(CGSize)fitting for:(id)for with:(id)with and:(id)and in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  v13 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  forCopy = for;
  withCopy = with;
  andCopy = and;
  swift_unknownObjectRetain();
  sub_215793DD0(for, with, and, v15);
  v19 = sub_2157872A0(v15, in, width, height);
  v21 = v20;

  swift_unknownObjectRelease();
  sub_215798BB8(v15, type metadata accessor for LockupMediaLayout.Metrics);
  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (id)artworkFrom:(id)from and:(id)and
{
  fromCopy = from;
  andCopy = and;
  sub_215788950(from, and, 0, 1);

  sub_215788D28(0, &qword_27CA71118);
  v8 = sub_2157A9430();

  return v8;
}

+ (CGSize)estimatedMediaContentSizeFor:(id)for screenshots:(id)screenshots trailers:(id)trailers fitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  forCopy = for;
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  swift_unknownObjectRetain();
  _s18AppStoreComponents14ASCLayoutProxyC25estimatedMediaContentSize3for11screenshots8trailers7fitting2inSo6CGSizeVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgAKSo18UITraitEnvironment_ptFZ_0(for, screenshots, trailers, in, width, height);
  v17 = v16;
  v19 = v18;

  swift_unknownObjectRelease();
  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (double)containerViewRotationAngleFor:(id)for screenshots:(id)screenshots trailers:(id)trailers
{
  forCopy = for;
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  _s18AppStoreComponents14ASCLayoutProxyC26containerViewRotationAngle3for11screenshots8trailers12CoreGraphics7CGFloatVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(for, screenshots, trailers);
  v12 = v11;

  return v12;
}

+ (UIEdgeInsets)layoutMarginsFor:(id)for existingLayoutMargins:(UIEdgeInsets)margins
{
  top = margins.top;
  forCopy = for;
  v7 = _s18AppStoreComponents14ASCLayoutProxyC13layoutMargins3for014existingLayoutG0So12UIEdgeInsetsVSo16ASCLockupContextaSg_AHtFZ_0(for, top);
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

+ (double)lockupTitlePointSizeProvider:(id)provider
{
  providerCopy = provider;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC28lockupTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)lockupSubtitlePointSizeProvider:(id)provider
{
  providerCopy = provider;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)lockupHeadingPointSizeProvider:(id)provider
{
  providerCopy = provider;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC30lockupHeadingPointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0();

  return v4;
}

+ (double)adTransparencyButtonTitlePointSizeProvider:(id)provider
{
  providerCopy = provider;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0();

  return v4;
}

+ (double)adTransparencyButtonScaledCapInset:(double)inset in:(id)in
{
  v5 = sub_2157A89D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27CA70FB0;
  inCopy = in;
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

+ (double)adTransparencyDeveloperNamePointSizeProvider:(id)provider
{
  providerCopy = provider;
  v4 = _s18AppStoreComponents14ASCLayoutProxyC44adTransparencyDeveloperNamePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0();

  return v4;
}

+ (CGSize)miniLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection
{
  width = size.width;
  collectionCopy = collection;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC23miniLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(collectionCopy, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)smallOfferButtonLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection
{
  width = size.width;
  collectionCopy = collection;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC35smallOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(collectionCopy, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)mediumOfferButtonLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection
{
  width = size.width;
  collectionCopy = collection;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC36mediumOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(collectionCopy, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)smallLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection
{
  v4 = qword_280D2B588;
  collectionCopy = collection;
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
  *(v8 + 32) = collectionCopy;
  v9 = collectionCopy;
  v10 = sub_2157A91E0();
  v11 = sub_21579BB5C(v7, v10);
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)mediumLockupEstimatedSizeFittingSize:(CGSize)size compatibleWithTraitCollection:(id)collection
{
  width = size.width;
  collectionCopy = collection;
  v6 = _s18AppStoreComponents14ASCLayoutProxyC25mediumLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(collectionCopy, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)lockupLayoutOfSize:(id)size traitCollection:(id)collection artworkView:(id)view headingText:(id)text titleText:(id)titleText subtitleText:(id)subtitleText offerText:(id)offerText offerButton:(id)self0 badge:(id)self1
{
  sizeCopy = size;
  collectionCopy = collection;
  viewCopy = view;
  textCopy = text;
  titleTextCopy = titleText;
  subtitleTextCopy = subtitleText;
  offerTextCopy = offerText;
  buttonCopy = button;
  badgeCopy = badge;
  v24 = _s18AppStoreComponents14ASCLayoutProxyC12lockupLayout6ofSize15traitCollection11artworkView11headingText05titleO008subtitleO005offerO00R6Button5badgeACSo09ASCLockupmI0a_So07UITraitK0CSo6UIViewCSo7UILabelCSgA2uv2SSgtFZ_0(sizeCopy, collectionCopy, viewCopy, text, titleTextCopy, subtitleTextCopy, offerText, buttonCopy);

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

+ (id)miniProductPageLayoutWithTraitCollection:(id)collection iconArtwork:(id)artwork title:(id)title subtitle:(id)subtitle metadata:(id)metadata description:(id)description screenshots:(id)screenshots
{
  collectionCopy = collection;
  artworkCopy = artwork;
  titleCopy = title;
  subtitleCopy = subtitle;
  metadataCopy = metadata;
  descriptionCopy = description;
  screenshotsCopy = screenshots;
  v21 = sub_21579EF3C(artworkCopy, titleCopy, subtitleCopy, metadataCopy, descriptionCopy, screenshotsCopy);

  return v21;
}

+ (double)offerButtonHeightForSize:(id)size
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A04EC(v3, v5, v8);

  v6 = *&v8[9];
  sub_21579ECCC(v8);
  return v6;
}

+ (double)offerProgressDiameterForSize:(id)size
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A074C(v3, v5, v8);

  v6 = v9;
  sub_21579F4FC(v8);
  return v6;
}

+ (double)offerButtonRegularWidthForSize:(id)size
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_2157A09AC(v3, v5, v8);

  v6 = *v8;
  sub_21579F4FC(v8);
  return v6;
}

+ (id)offerEmptyLayoutWithImageView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView
{
  viewCopy = view;
  titleViewCopy = titleView;
  subtitleViewCopy = subtitleView;
  v10 = _s18AppStoreComponents14ASCLayoutProxyC16offerEmptyLayout9imageView05titleJ008subtitleJ0ACSo6UIViewC_AISgAJtFZ_0(viewCopy, titleView, subtitleView);

  return v10;
}

+ (id)offerIconLayoutForSize:(id)size imageView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView hasTrailingSubtitle:(BOOL)subtitle shouldTopAlign:(BOOL)align topPadding:(double)padding shouldTrailingAlign:(BOOL)self0
{
  v15 = sub_2157A93E0();
  v17 = v16;
  swift_getObjCClassMetadata();
  viewCopy = view;
  titleViewCopy = titleView;
  subtitleViewCopy = subtitleView;
  v21 = static ASCLayoutProxy.offerIconLayoutForSize(_:imageView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldTrailingAlign:)(v15, v17, viewCopy, titleView, subtitleView, subtitle, align, trailingAlign, padding);

  return v21;
}

+ (id)offerTextLayoutForSize:(id)size titleBackgroundView:(id)view titleView:(id)titleView subtitleView:(id)subtitleView hasTrailingSubtitle:(BOOL)subtitle shouldTopAlign:(BOOL)align topPadding:(double)padding shouldExpandBackground:(BOOL)self0
{
  v16 = sub_2157A93E0();
  v18 = v17;
  swift_getObjCClassMetadata();
  viewCopy = view;
  titleViewCopy = titleView;
  subtitleViewCopy = subtitleView;
  v22 = static ASCLayoutProxy.offerTextLayoutForSize(_:titleBackgroundView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldExpandBackground:)(v16, v18, viewCopy, titleViewCopy, subtitleView, subtitle, align, background, padding);

  return v22;
}

+ (id)offerDisclosureLayoutWithDisclosureIndicator:(id)indicator
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11[3] = &type metadata for OfferDisclosureLayout;
  v11[4] = sub_2157A03E8();
  v11[0] = swift_allocObject();
  sub_215788D28(0, &qword_280D2B5B0);
  indicatorCopy = indicator;
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

+ (id)tvTextPillOverlayWithBackgroundView:(id)view textView:(id)textView
{
  viewCopy = view;
  textViewCopy = textView;
  v7 = _s18AppStoreComponents14ASCLayoutProxyC17tvTextPillOverlay14backgroundView04textK0ACSo6UIViewC_AHtFZ_0(viewCopy, textViewCopy);

  return v7;
}

@end