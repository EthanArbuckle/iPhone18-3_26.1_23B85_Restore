uint64_t MarkupContainerViewController.loadImage(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for DataOrURL();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for MainActor();
  v4[53] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[54] = v8;
  v4[55] = v7;

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v8, v7);
}

uint64_t MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *(v0 + 408);
  v40 = *(v0 + 352);
  v2 = *(v0 + 208);
  v38 = *(v0 + 184);
  v3 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_context);
  v36 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled;
  swift_beginAccess();
  v35 = *(v2 + v4);
  v5 = objc_allocWithZone(type metadata accessor for ImageCanvasElementViewController());
  v5[direct field offset for ImageCanvasElementViewController._allowAutomaticZoomScaleAdjustment] = 0;
  ObservationRegistrar.init()();
  *&v5[direct field offset for CanvasElementViewController._canvasView] = 0;
  v6 = &v5[direct field offset for CanvasElementViewController._liveStreamMessenger];
  *v6 = 0;
  v6[1] = 0;
  *&v5[direct field offset for CanvasElementViewController._participantDetailsDataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v5[direct field offset for CanvasElementViewController._showParticipantCursors] = 0;
  *&v5[direct field offset for CanvasElementViewController._mediaAnalysisObserver] = 0;
  v5[direct field offset for CanvasElementViewController._allowsContentSnapping] = 0;
  *&v5[direct field offset for CanvasElementViewController._contentViewController] = 0;
  *&v5[direct field offset for CanvasElementViewController._canvasSubscribeCancellable] = 0;
  v7 = direct field offset for CanvasElementViewController.passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
  swift_allocObject();
  *&v5[v7] = PassthroughSubject.init()();
  v8 = &v5[direct field offset for CanvasElementViewController.__imageSize];
  *v8 = 0;
  v8[1] = 0;
  *&v5[direct field offset for CanvasElementViewController.__imageHeadroom] = 0;
  v5[direct field offset for CanvasElementViewController._liveStreamDrawings] = 0;
  v5[direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled] = 1;
  v9 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting] = 0;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent] = 0;
  v5[direct field offset for CanvasElementViewController._canEditVellumOpacity] = 0;
  v10 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v5[direct field offset for CanvasElementViewController._isImageAnalysisEnabled] = 1;
  v5[direct field offset for CanvasElementViewController._canEditDescription] = 1;
  v11 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] = 0;
  v12 = &v5[direct field offset for CanvasElementViewController._bannerViewConfiguration];
  *v12 = 1;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 8) = 0u;
  v13 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *&v5[direct field offset for CanvasElementViewController._bannerView] = v13;
  *&v5[direct field offset for CanvasElementViewController.__rulerHostingDelegate] = 0;
  *&v5[direct field offset for CanvasElementViewController._rulerHostView] = 0;
  *&v5[direct field offset for CanvasElementViewController._formDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v5[direct field offset for CanvasElementViewController._analysis] = 0;
  ObservationRegistrar.init()();
  v5[direct field offset for CanvasElementViewController.allowMediaCanvasElements] = 1;
  *&v5[direct field offset for CanvasElementViewController.context] = v3;
  v5[direct field offset for CanvasElementViewController.transparentBackground] = 0;
  v5[direct field offset for CanvasElementViewController._editingMode] = v36;
  v5[v10] = v35;
  v5[v9] = 1;
  v14 = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  *(v0 + 152) = v5;
  *(v0 + 160) = v15;
  *(v0 + 448) = objc_msgSendSuper2((v0 + 152), sel_initWithNibName_bundle_, 0, 0);
  v16 = type metadata accessor for CRAsset();
  v17 = *(*(v16 - 8) + 56);
  v17(v1, 1, 1, v16);
  v18 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  swift_beginAccess();
  outlined assign with take of CRAsset?(v1, v2 + v18);
  swift_endAccess();
  _s8PaperKit9PDFPageIDVWOcTm_0(v38, v40, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v16;
    v37 = v17;
    v39 = v2;
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v22 = *(v0 + 360);
    v23 = *(v0 + 368);
    v24 = *(v23 + 32);
    v24(v20, *(v0 + 352), v22);
    v24(v19, v20, v22);
    (*(v23 + 16))(v21, v19, v22);
    type metadata accessor for CRContext();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v25 = MEMORY[0x1DA6CC630](0, v0 + 16);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s9Coherence18EncryptionDelegate_pSgMd);
    CRContext.assetManager.getter();

    CRAsset.init(safelyFrom:coordinated:assetManager:)();
    v26 = *(v0 + 400);
    (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));
    v37(v26, 0, 1, v34);
    swift_beginAccess();
    outlined assign with take of CRAsset?(v26, v39 + v18);
    swift_endAccess();
  }

  else
  {
    _s8PaperKit9DataOrURLOWOhTm_0(*(v0 + 352), type metadata accessor for DataOrURL);
  }

  v27 = *(v0 + 256);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  _s8PaperKit9PDFPageIDVWOcTm_0(*(v0 + 184), *(v0 + 344), type metadata accessor for DataOrURL);
  outlined copy of Data?(v29, v28);
  static TaskPriority.userInitiated.getter();
  v30 = type metadata accessor for TaskPriority();
  *(v0 + 456) = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  *(v0 + 464) = v32;
  *(v0 + 472) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v32(v27, 0, 1, v30);

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  _s8PaperKit9PDFPageIDVWOcTm_0(v0[43], v0[42], type metadata accessor for DataOrURL);
  outlined init with copy of Date?(v2, v1, &_sScPSgMd);
  outlined copy of Data?(v4, v3);
  v5 = v0[42];
  v6 = v0[31];
  if (v3 >> 60 == 15)
  {
    v7 = v0[29];
    _s8PaperKit9PDFPageIDVWOcTm_0(v5, v0[40], type metadata accessor for DataOrURL);
    outlined init with copy of Date?(v6, v7, &_sScPSgMd);
    v8 = swift_task_alloc();
    v0[62] = v8;
    *v8 = v0;
    v8[1] = MarkupContainerViewController.loadImage(from:with:);
    v9 = v0[40];
    v10 = v0[35];
    v11 = v0[29];

    return Capsule<>.init(_:priority:fileCoordinator:)(v10, v9, v11, 0);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[24];
    v14 = v0[25];
    _s8PaperKit9PDFPageIDVWOcTm_0(v5, v0[41], type metadata accessor for DataOrURL);
    outlined init with copy of Date?(v6, v13, &_sScPSgMd);
    outlined copy of Data._Representation(v15, v14);
    v16 = swift_task_alloc();
    v0[60] = v16;
    *v16 = v0;
    v16[1] = MarkupContainerViewController.loadImage(from:with:);
    v17 = v0[41];
    v18 = v0[36];
    v19 = v0[30];
    v20 = v0[24];
    v21 = v0[25];

    return Capsule<>.init(baseImage:with:priority:)(v18, v17, v20, v21, v19);
  }
}

{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  else
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  else
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined consume of Data?(v0[24], v0[25]);
  v0[64] = v0[61];
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v13 = v0[32];
  v14 = v0[43];
  v8 = v0[24];
  v7 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  v9 = *(v6 + 32);
  v9(v3, v4, v5);
  v9(v2, v3, v5);
  outlined consume of Data?(v8, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v14, type metadata accessor for DataOrURL);
  v10 = v0[54];
  v11 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v10, v11);
}

{
  outlined consume of Data?(v0[24], v0[25]);
  v0[65] = v0[61];
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[32];
  v5 = v0[24];
  v4 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  outlined consume of Data?(v5, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v2, type metadata accessor for DataOrURL);
  v6 = v0[54];
  v7 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v6, v7);
}

{
  v1 = *(v0 + 448);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[34];
  v1 = v0[35];
  v0[64] = v0[63];
  v3 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[33];
  v13 = v0[32];
  v14 = v0[43];
  v8 = v0[24];
  v7 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v3, type metadata accessor for DataOrURL);
  v9 = *(v2 + 32);
  v9(v5, v1, v6);
  v9(v4, v5, v6);
  outlined consume of Data?(v8, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v14, type metadata accessor for DataOrURL);
  v10 = v0[54];
  v11 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v10, v11);
}

{
  v0[65] = v0[63];
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[32];
  v5 = v0[24];
  v4 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  outlined consume of Data?(v5, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_0(v2, type metadata accessor for DataOrURL);
  v6 = v0[54];
  v7 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v6, v7);
}

void MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 216);
  (*(v3 + 16))(v4, *(v0 + 304), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = v1;
  specialized CanvasElementViewController.updateViewForPaper(_:)(v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v6 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
  swift_beginAccess();
  if (v5[v6] == 1)
  {
    v5[v6] = 1;
    specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset();
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = swift_task_alloc();
    *v8 = type metadata accessor for Image(0);
    v8[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v8[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = 1;
    *(v0 + 168) = v7;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v10 = [*(v0 + 448) view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [*(v0 + 208) view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *(v0 + 448);
  [v12 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v11 setFrame_];
  v23 = [v14 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = *(v0 + 208);
  [v23 setAutoresizingMask_];

  v26 = *(v25 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
  v27 = *(v0 + 208);
  if (!v26)
  {
    v33 = [*(v0 + 208) view];
    if (v33)
    {
      v30 = v33;
      v34 = *(v0 + 448);
      v32 = [v34 view];

      if (v32)
      {

        [v30 addSubview_];
        goto LABEL_14;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v26;
  v29 = [v27 view];
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;
  v31 = *(v0 + 448);
  v32 = [v31 view];

  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v30 insertSubview:v32 belowSubview:v28];

LABEL_14:
  v35 = *(v0 + 448);
  v36 = *(v0 + 208);

  [v36 addChildViewController_];
  [v35 didMoveToParentViewController_];
  v37 = *&v36[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  *&v36[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController] = v35;
  v38 = v35;

  v39 = v36;
  specialized CanvasElementViewController.delegate.setter(v36, &protocol witness table for MarkupContainerViewController);
  v40 = swift_task_alloc();
  *v40 = type metadata accessor for Image(0);
  v40[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v40[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 176) = v38;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *&v38[direct field offset for CanvasElementViewController._canvasView];
  v42 = v41;

  if (v41)
  {
    v42[direct field offset for CanvasView.firstLayout] = 0;
  }

  v43 = *(v0 + 464);
  v45 = *(v0 + 448);
  v44 = *(v0 + 456);
  v46 = *(v0 + 304);
  v47 = *(v0 + 272);
  v56 = *(v0 + 264);
  v48 = *(v0 + 224);
  v49 = *(v0 + 208);
  MarkupContainerViewController.configureLookAndStyle()();
  v49[OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded] = 1;
  [*&v49[OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue] setSuspended_];
  v43(v48, 1, 1, v44);
  v50 = v45;
  v51 = v49;
  v52 = static MainActor.shared.getter();
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E85E0];
  v53[2] = v52;
  v53[3] = v54;
  v53[4] = v50;
  v53[5] = v51;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.loadImage(from:with:), v53);

  (*(v47 + 8))(v46, v56);

  v55 = *(v0 + 8);

  v55();
}

uint64_t MarkupContainerViewController.loadPDF(from:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  type metadata accessor for DataOrURL();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadPDF(from:), v4, v3);
}

void MarkupContainerViewController.loadPDF(from:)()
{
  v32 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for CRAsset();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  swift_beginAccess();
  outlined assign with take of CRAsset?(v1, v4 + v6);
  swift_endAccess();
  type metadata accessor for CRContext();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v7 = MEMORY[0x1DA6CC630](0, v0 + 16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s9Coherence18EncryptionDelegate_pSgMd);
  _s8PaperKit9PDFPageIDVWOcTm_0(v3, v2, type metadata accessor for DataOrURL);
  v31[0] = *(v4 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  v8 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v9 = v7;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v2, v9, v31);
  v11 = *(v0 + 144);
  v12 = *(v11 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  *(v11 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController) = v10;
  v13 = v10;

  v14 = swift_unknownObjectRetain();
  PaperDocumentViewController.delegate.setter(v14, &protocol witness table for MarkupContainerViewController);
  v15 = v13;
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = *(v0 + 144);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = [v18 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = [v15 view];

  if (!v21)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v22 = *(v0 + 144);

  [v20 addSubview_];

  [v22 addChildViewController_];
  [v15 didMoveToParentViewController_];
  v23 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  LOBYTE(v23) = v22[v23];
  v24 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  v25 = v15[v24];
  v15[v24] = (v23 & 1) == 0;
  PaperDocumentViewController.isThumbnailViewCollapsed.didset(v25);
  v26 = *&v15[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v0 + 128) = v27;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  v28 = Publisher<>.sink(receiveValue:)();

  *&v22[OBJC_IVAR___PPKMarkupContainerViewController_pdfCancellable] = v28;

  v29 = &v22[OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex];
  *v29 = 0;
  v29[8] = 1;

  v30 = *(v0 + 8);

  v30();
}

void closure #1 in closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MarkupContainerViewController.toolPicker.getter();
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v1 + v4) == 1 && ([v3 isVisible] & 1) == 0)
      {
        [v1 becomeFirstResponder];
      }
    }
  }
}

void closure #1 in MarkupContainerViewController.loadPDF(from:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (*(Strong + OBJC_IVAR___PPKMarkupContainerViewController_editingMode))
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v15 = static OS_dispatch_queue.main.getter();
      v10 = swift_allocObject();
      v16 = v4;
      v11 = v10;
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in closure #1 in MarkupContainerViewController.loadPDF(from:);
      aBlock[5] = v11;
      v14[1] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_390;
      v14[0] = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v17 = MEMORY[0x1E69E7CC0];
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v12 = v14[0];
      v13 = v15;
      MEMORY[0x1DA6CD890](0, v7, v3, v14[0]);
      _Block_release(v12);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v16);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in MarkupContainerViewController.loadImage(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.loadImage(from:with:), v7, v6);
}

id closure #1 in MarkupContainerViewController.loadImage(from:with:)()
{
  result = [*(v0 + 40) view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MarkupContainerViewController.loadImage(from:with:);

    return CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(0, 0, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.loadImage(from:with:), v3, v2);
}

{
  v1 = v0[5];
  v2 = v0[4];

  v3 = *(v2 + direct field offset for CanvasElementViewController.passThroughSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v0[2] = v4;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Image>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
  v5 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageCancellable) = v5;

  v6 = swift_task_alloc();
  *v6 = type metadata accessor for Image(0);
  v6[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v6[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[3] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v7)
  {
    v8 = *(v7 + direct field offset for Canvas.paperView);
    type metadata accessor for ImageElementView(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  type metadata accessor for MarkupContainerViewControllerAnalysisDelegate();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (v9)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v13 = v9;
    ImageElementView.imageAnalysisDelegate.didset(Strong);
    swift_unknownObjectRelease();

    v14 = *&v13[direct field offset for ImageElementView.mediaView];
    if (v14)
    {

      v15 = v13;
      v16 = v14;
      v17 = [v16 imageAnalysisContext];
      if (v17)
      {
        [v17 addAnalysisObserver_];
        swift_unknownObjectRelease();
      }
    }

    else
    {

      v18 = v13;
      v16 = ImageElementView.pendingImageAnalysisObservers.getter();
      [v16 addObject_];
    }
  }

  *(v0[5] + OBJC_IVAR___PPKMarkupContainerViewController_analysisDelegate) = v11;

  MarkupContainerViewController.updateContentInsets()();

  v19 = v0[1];

  return v19();
}

void closure #1 in closure #1 in MarkupContainerViewController.loadImage(from:with:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (*(Strong + OBJC_IVAR___PPKMarkupContainerViewController_editingMode))
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v19 = v1;
      v17 = static OS_dispatch_queue.main.getter();
      v10 = swift_allocObject();
      v18 = v5;
      v11 = v10;
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in MarkupContainerViewController.loadImage(from:with:);
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_380;
      v13 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v20 = MEMORY[0x1E69E7CC0];
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v16 = v4;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v14 = v17;
      MEMORY[0x1DA6CD890](0, v7, v3, v13);
      _Block_release(v13);

      (*(v19 + 8))(v3, v0);
      (*(v18 + 8))(v7, v16);
    }

    else
    {
    }
  }
}

void closure #1 in closure #1 in MarkupContainerViewController.loadPDF(from:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        [v3 markupContainerViewControllerDidChangeContent:v1 enablingMarkup:v1[OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup]];
      }

      swift_unknownObjectRelease();
      v1[OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup] = 0;
    }
  }
}

uint64_t PPKZeroCallbackCounter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void __swiftcall MarkupContainerViewController.viewForZooming(in:)(UIView_optional *__return_ptr retstr, UIScrollView *in)
{
  v2 = [(UIScrollView *)in subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6CE0C0](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void *MarkupContainerViewController.canvasElementViewController(_:detectedFormInContent:withAutofill:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 markupContainerViewController:v3 detectedFormInContent:a2 & 1 withAutofill:a3 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MarkupContainerViewController.canvasDrawingWillChange(_:)()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 1;
  }

  return result;
}

void *MarkupContainerViewController.documentView(_:thumbnailViewDidCollapse:)(uint64_t a1, char a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *MarkupContainerViewController.documentView(_:contentFrameDidChange:)(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      [v10 markupContainerViewController:v4 contentFrameDidChange:{a1, a2, a3, a4}];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *protocol witness for CanvasElementViewControllerDelegate.canvasElementViewController(_:detectedFormInContent:withAutofill:) in conformance MarkupContainerViewController(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 markupContainerViewController:v3 detectedFormInContent:a2 & 1 withAutofill:a3 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *protocol witness for PaperDocumentViewDelegate.documentView(_:thumbnailViewDidCollapse:) in conformance MarkupContainerViewController(uint64_t a1, char a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      [v9 *a5];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall AnyCanvas.canvasElementExists(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x440);
  v4 = v21();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 64))(ObjectType, v6);

  if (v8 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6CE0C0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((*((*MEMORY[0x1E69E7D40] & *v11) + 0x1F0))())
      {
      }

      else
      {
        v14 = v21();
        [v12 convertPoint:v14 fromCoordinateSpace:{x, y}];
        v16 = v15;
        v18 = v17;

        v19 = [v12 hitTest:0 withEvent:{v16, v18}];
        if (v19)
        {

          return 1;
        }
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

uint64_t specialized CanvasElementViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v3 + direct field offset for CanvasElementViewController._canvasView);
  if (!v6)
  {
    return swift_unknownObjectRelease();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  v8 = v6;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease_n();
}

void specialized CanvasElementViewController.isImageAnalysisEnabled.setter(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v4 = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v6 = specialized CanvasElementViewController.imageView.getter();
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1EEE9AC00](v6);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      swift_getKeyPath();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7[direct field offset for ImageElementView.isImageAnalysisEnabled] = *(v1 + v3);
      ImageElementView.updateMediaViewImageAnalysis()();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void specialized CanvasElementViewController._rulerHostingDelegate.setter(void *a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasElementViewController.__rulerHostingDelegate;
  v5 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for RulerHostingDelegate();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void specialized CanvasElementViewController.rulerHostView.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._rulerHostView;
  v4 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  specialized CanvasElementViewController._rulerHostView.didset(v10);
}

void specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset()
{
  v1 = v0;
  v12 = type metadata accessor for Image(0);
  v2 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v4)
  {
    v5 = *(v4 + direct field offset for CanvasView.canvasTiledView);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v3);
      swift_getKeyPath();
      v6 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
      swift_beginAccess();
      if (*(v1 + v7))
      {
        v8 = [objc_opt_self() standardUserDefaults];
        v9 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
        v10 = [v8 BOOLForKey_];

        v11 = v10 ^ 1;
      }

      else
      {
        v11 = 0;
      }

      [v6 setSixChannelBlending_];
    }
  }
}

uint64_t specialized CanvasElementViewController.imageView.getter()
{
  v10 = type metadata accessor for Image(0);
  v11 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  v12 = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[direct field offset for CanvasView.zoomView];
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v4 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6CE0C0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  type metadata accessor for ImageElementView(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void specialized closure #1 in CanvasElementViewController.isImageAnalysisEnabled.setter(uint64_t a1, char a2)
{
  v4 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = specialized CanvasElementViewController.imageView.getter();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6[direct field offset for ImageElementView.isImageAnalysisEnabled] = *(a1 + v4);
    ImageElementView.updateMediaViewImageAnalysis()();
  }
}

id specialized CanvasElementViewController.zoomRect(for:with:)()
{
  v1 = type metadata accessor for Image(0);
  v2 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = direct field offset for CanvasElementViewController._canvasView;
  v5 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *(v5 + direct field offset for CanvasView.canvasScrollView);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = [result frame];
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v0 + v4);
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = *(v7 + direct field offset for CanvasView.canvasScrollView);
  if (result)
  {
    return [result frame];
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL specialized CanvasElementViewController.acceptSingleTouch(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image(0);
  v5 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  if (v7 && (v8 = v7, [a1 locationInView_], v9 = objc_msgSend(v8, sel_pointInside_withEvent_, 0), v8, (v9 & 1) != 0))
  {
    return 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
    if (v11)
    {
      v12 = v11;
      v10 = AnyCanvas.acceptSingleTouch(_:)(a1);
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

void specialized CanvasElementViewController.merge<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v75 - v10;
  v11 = type metadata accessor for Image(0);
  v89 = v11;
  v12 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v90 = v12;
  v91 = &protocol witness table for Image;
  swift_getKeyPath();
  v92 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(*&v1 + direct field offset for CanvasElementViewController._canvasView);
  if (!v13)
  {
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    specialized CanvasElementViewController.updateViewForPaper(_:)(v5);
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    return;
  }

  v86 = v9;
  v14 = direct field offset for Canvas.paperView;
  v15 = *&v13[direct field offset for Canvas.paperView];
  swift_beginAccess();
  v16 = v15;
  v17 = v13;
  Capsule.merge<A>(_:)();
  swift_endAccess();

  v18 = *&v17[direct field offset for CanvasView.canvasScrollView];
  if (!v18)
  {
    goto LABEL_30;
  }

  v76 = direct field offset for CanvasView.canvasScrollView;
  [v18 contentOffset];
  v20 = v19;
  v22 = v21;
  v81 = v13;
  v82 = v14;
  v23 = *&v13[v14];
  v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x3F0);
  swift_beginAccess();
  v25 = v86;
  v26 = *(v86 + 16);
  v27 = v23 + v24;
  v28 = v87;
  v85 = v86 + 16;
  v84 = v26;
  v29 = (v26)(v87, v27, v8);
  MEMORY[0x1EEE9AC00](v29);
  v78 = v11;
  *(&v75 - 4) = v11;
  *(&v75 - 3) = v12;
  v77 = v12;
  *(&v75 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v83 = v31;
  v31(v28, v8);
  v32 = v92;
  v33 = v93;
  specialized Canvas.mergeToCanvasElements()();
  v34 = direct field offset for Canvas.subscriptions;
  swift_beginAccess();
  v35 = *&v17[v34];
  v36 = v17;
  if (v35 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v82;
  v39 = MEMORY[0x1E69E7D40];
  if (!v37)
  {
    goto LABEL_17;
  }

  if (v37 < 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v86 = v30;
  v79 = v8;
  v88 = v35 & 0xC000000000000001;

  for (i = 0; i != v37; ++i)
  {
    if (v88)
    {
      v50 = MEMORY[0x1DA6CE0C0](i, v35);
    }

    else
    {
      v50 = *(v35 + 8 * i + 32);
    }

    v51 = AnyCanvas.isLiveEditing()();
    v52 = *v50;
    if (!v51 || (*(v50 + *(v52 + 136)) & 1) != 0)
    {
      v41 = v80;
      outlined init with copy of Date?(v50 + *(v52 + 120), v80, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
      v42 = *&v81[v38];
      v43 = *((*v39 & *v42) + 0x3F0);
      swift_beginAccess();
      v44 = v42 + v43;
      v45 = v36;
      v46 = v87;
      v47 = v79;
      v84(v87, v44, v79);
      dispatch thunk of AnySubscriberBase.receive(_:)();

      v48 = v46;
      v36 = v45;
      v39 = MEMORY[0x1E69E7D40];
      v49 = v47;
      v38 = v82;
      v83(v48, v49);
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
    }

    else
    {
    }
  }

  v8 = v79;
LABEL_17:
  v53 = v81;
  if (*&v36[direct field offset for Canvas.multipeerConnection])
  {
    v54 = *&v81[v38];
    v55 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x3F0);
    swift_beginAccess();
    v56 = v54 + v55;
    v57 = v87;
    v84(v87, v56, v8);

    CRMulticastSyncManager.sync(_:sendDelta:)();

    v83(v57, v8);
  }

  specialized Canvas.scheduleFinalizeTask()();
  v58 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  v59 = v78;
  v60 = v77;
  v61 = v76;
  if (*&v36[v58])
  {
    v62 = *&v53[v38];
    v63 = *((*MEMORY[0x1E69E7D40] & *v62) + 0x3F0);
    swift_beginAccess();
    v64 = v62 + v63;
    v38 = v82;
    v65 = v87;
    v84(v87, v64, v8);

    CRMulticastSyncManager.sync(_:sendDelta:)();

    v83(v65, v8);
  }

  v66 = *&v36[v61];
  if (!v66)
  {
    goto LABEL_31;
  }

  specialized CanvasView.updateAfterDidScroll(_:)(v66);
  v67 = *&v53[v38];
  v68 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x3F0);
  swift_beginAccess();
  v69 = v67 + v68;
  v70 = v87;
  v71 = (v84)(v87, v69, v8);
  MEMORY[0x1EEE9AC00](v71);
  *(&v75 - 4) = v59;
  *(&v75 - 3) = v60;
  *(&v75 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v83(v70, v8);
  v72 = *&v36[v61];
  if (!v72)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v72 setContentOffset_];
  v73 = *&v36[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v73)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v74 = *(v73 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v74)
  {
    *(v74 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }
}

void specialized CanvasElementViewController._bannerViewConfiguration.didset()
{
  v1 = v0;
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  aBlock[0] = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v0[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] & 1) == 0)
  {
    v70 = direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration;
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    MEMORY[0x1EEE9AC00](v4);
    swift_getKeyPath();
    aBlock[0] = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = &v0[direct field offset for CanvasElementViewController._bannerViewConfiguration];
    v6 = swift_beginAccess();
    v7 = *v5;
    v8 = *(v5 + 2);
    v67 = *(v5 + 1);
    v68 = *(v5 + 3);
    v9 = *(v5 + 5);
    v69 = *(v5 + 4);
    v10 = *(v5 + 6);
    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    if (v7 == 1)
    {
      aBlock[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *&v1[direct field offset for CanvasElementViewController._bannerView];
      if (v11)
      {
        v11 = [v11 removeFromSuperview];
      }

      v12 = v70;
      if (v1[v70] == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

    aBlock[0] = v1;
    v66 = v10;
    v63 = v10;
    v62 = v7;

    v13 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = direct field offset for CanvasElementViewController._bannerView;
    v15 = *&v1[direct field offset for CanvasElementViewController._bannerView];
    if (v15)
    {
      v15 = [v15 superview];
      if (v15)
      {

        outlined consume of BannerViewConfiguration?(v7, v67, v8, v68, v69, v9, v10);
        v12 = v70;
        if (v1[v70] == 1)
        {
LABEL_10:
          MEMORY[0x1EEE9AC00](v11);
          v16 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v16);
          aBlock[0] = v1;
LABEL_28:
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }

        goto LABEL_29;
      }
    }

    v60 = v7;
    v65 = v8;
    v61 = v9;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *&v1[v14];
    if (!v18)
    {
      outlined consume of BannerViewConfiguration?(v7, v67, v8, v68, v69, v9, v66);
      goto LABEL_26;
    }

    MEMORY[0x1EEE9AC00](v17);
    swift_getKeyPath();
    aBlock[0] = v1;
    v19 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *&v1[direct field offset for CanvasElementViewController._canvasView];
    if (v20)
    {
      [v20 addSubview_];
    }

    if (v8)
    {
      v21 = MEMORY[0x1DA6CCED0](v67);
      if (v69)
      {
LABEL_16:
        v22 = MEMORY[0x1DA6CCED0](v68);
        goto LABEL_20;
      }
    }

    else
    {
      v21 = 0;
      if (v69)
      {
        goto LABEL_16;
      }
    }

    v22 = 0;
LABEL_20:
    v24 = [objc_opt_self() configurationWithImage:v62 title:v21 subtitle:v22 primaryAction:v13 dismissAction:v63];

    [v19 populateWithConfiguration_];
    v25 = v19;
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = [v25 bottomAnchor];
    v27 = [v1 view];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 safeAreaLayoutGuide];

      v30 = [v29 topAnchor];
      v31 = [v26 constraintEqualToAnchor_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405B630;
      *(v32 + 32) = v31;
      v64 = v31;
      v33 = [v25 leadingAnchor];
      v34 = [v1 view];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 leadingAnchor];

        v37 = [v33 constraintEqualToAnchor:v36 constant:8.0];
        *(v32 + 40) = v37;
        v38 = [v25 leadingAnchor];
        v39 = [v1 view];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 safeAreaLayoutGuide];

          v42 = [v41 leadingAnchor];
          v43 = [v38 constraintGreaterThanOrEqualToAnchor:v42 constant:8.0];

          *(v32 + 48) = v43;
          v44 = [v25 trailingAnchor];

          v45 = [v1 view];
          if (v45)
          {
            v46 = v45;
            v47 = objc_opt_self();
            v48 = [v46 safeAreaLayoutGuide];

            v49 = [v48 &selRef_imageAnalysisOrientation + 4];
            v50 = [v44 constraintEqualToAnchor:v49 constant:-8.0];

            *(v32 + 56) = v50;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v47 activateConstraints_];

            v52 = [v1 view];
            if (v52)
            {
              v53 = v52;
              [v52 layoutIfNeeded];

              v54 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v55 = swift_allocObject();
              v55[2] = v54;
              v55[3] = v64;
              v55[4] = v25;
              aBlock[4] = partial apply for specialized closure #1 in CanvasElementViewController._bannerViewConfiguration.didset;
              aBlock[5] = v55;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              aBlock[3] = &block_descriptor_298_0;
              v56 = _Block_copy(aBlock);
              v57 = v25;
              v58 = v64;

              [v57 showWithAnimations_];
              outlined consume of BannerViewConfiguration?(v60, v67, v65, v68, v69, v61, v66);
              _Block_release(v56);

LABEL_26:
              v12 = v70;
              if (v1[v70] == 1)
              {
                MEMORY[0x1EEE9AC00](v23);
                v59 = swift_getKeyPath();
                MEMORY[0x1EEE9AC00](v59);
                aBlock[0] = v1;
                goto LABEL_28;
              }

LABEL_29:
              v1[v12] = 0;
              return;
            }

LABEL_35:
            __break(1u);
            return;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }
}

void specialized closure #1 in CanvasElementViewController._bannerViewConfiguration.didset(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [a2 setActive_];
    v7 = [a3 topAnchor];
    v8 = v6;
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 safeAreaLayoutGuide];

      v12 = [v11 topAnchor];
      v13 = [v7 constraintEqualToAnchor_];

      [v13 setActive_];
      v14 = [v8 view];

      if (v14)
      {
        [v14 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void specialized closure #1 in CanvasElementViewController.bannerViewConfiguration.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v11 = *(v3 + 48);
  v10 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v10;
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  outlined init with copy of Date?(a2, v12, &_s8PaperKit23BannerViewConfigurationVSgMd);
  outlined consume of BannerViewConfiguration?(v4, v5, v6, v7, v9, v8, v11);
  specialized CanvasElementViewController._bannerViewConfiguration.didset();
}

id key path getter for CanvasElementViewController.bannerView : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.bannerView.getter();
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.bannerView : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.bannerView.setter(v1);
}

void specialized CanvasElementViewController._rulerHostView.didset(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image(0);
  v5 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  v24 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = direct field offset for CanvasElementViewController._rulerHostView;
  v8 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  if (a1)
  {
    if (v8)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v9 = v8;
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  v24 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v2 + v7);
  if (v13)
  {
    v14 = type metadata accessor for RulerHostingDelegate();
    v15 = objc_allocWithZone(v14);
    swift_unknownObjectWeakInit();
    v15[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v23.receiver = v15;
    v23.super_class = v14;
    v16 = v13;
    v17 = objc_msgSendSuper2(&v23, sel_init, v4, v5, &protocol witness table for Image);
    specialized CanvasElementViewController._rulerHostingDelegate.setter(v17);
  }

  else if (*(v2 + direct field offset for CanvasElementViewController.__rulerHostingDelegate))
  {
    MEMORY[0x1EEE9AC00](v12);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v24 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x1EEE9AC00](v12);
  swift_getKeyPath();
  v24 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v20)
  {
    v21 = *(v20 + direct field offset for CanvasView.canvasTiledView);
    if (v21)
    {
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      v24 = v2;
      v22 = v21;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v22 setRulerHostingDelegate_];
    }
  }
}

double specialized CRRegister<>.maxHDRHeadroom<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v88 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v90 = v87 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v97 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v89 = v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = v87 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v96 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v106 = *(v10 - 8);
  v107 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v105 = v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v87 - v15;
  v93 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v87 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v99 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v92 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v87 - v23;
  v25 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v100 = v87 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v87 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v87 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = v87 - v36;
  v38 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v91 = v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v98 = v87 - v41;
  v111 = v2;
  v103 = v1;
  CRRegister.value.getter();
  _s8PaperKit9PDFPageIDVWObTm_1(v34, v31, type metadata accessor for TaggedStroke);
  v101 = v25;
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit9DataOrURLOWOhTm_0(v31, type metadata accessor for TaggedStroke);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v43 = v37;
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v45 = *(v44 - 8);
    v43 = v37;
    (*(v45 + 32))(v37, v31, v44);
    (*(v45 + 56))(v37, 0, 1, v44);
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v43, 1, v46);
  v49 = v109;
  if (v48 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    v50 = 0.0;
    v51 = v110;
    v52 = v104;
    v53 = v102;
  }

  else
  {
    v54 = type metadata accessor for Image(0);
    v55 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v56 = v91;
    v57 = v110;
    v87[1] = v54;
    v87[0] = v55;
    Ref.subscript.getter();
    (*(v47 + 8))(v43, v46);
    _s8PaperKit9PDFPageIDVWObTm_1(v56, v98, type metadata accessor for PKStrokeStruct);
    (*(v99 + 16))(v113, v57, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
    v58 = (v92 + 48);
    v59 = (v92 + 8);
    for (i = (v92 + 32); ; (*i)(v24, v16, v22))
    {
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit9DataOrURLOWOhTm_0(v20, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v58)(v16, 1, v22) == 1)
      {
        break;
      }

      (*v59)(v24, v22);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v99 + 8))(v113, v114);
    v61 = v94;
    v62 = v110;
    Ref.subscript.getter();
    (*v59)(v24, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    _s8PaperKit9DataOrURLOWOhTm_0(v61, type metadata accessor for PKStrokeInheritedProperties);
    v63 = v116;
    if (v116)
    {
      [v116 hdrHeadroom];
      v50 = v64;

      _s8PaperKit9DataOrURLOWOhTm_0(v98, type metadata accessor for PKStrokeStruct);
    }

    else
    {
      _s8PaperKit9DataOrURLOWOhTm_0(v98, type metadata accessor for PKStrokeStruct);
      v50 = 0.0;
    }

    v49 = v109;
    v52 = v104;
    v53 = v102;
    v51 = v62;
  }

  v65 = v100;
  CRRegister.value.getter();
  _s8PaperKit9PDFPageIDVWObTm_1(v65, v53, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v67 = *(v66 - 8);
    (*(v67 + 32))(v52, v53, v66);
    (*(v67 + 56))(v52, 0, 1, v66);
  }

  else
  {
    _s8PaperKit9DataOrURLOWOhTm_0(v53, type metadata accessor for TaggedStroke);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    (*(*(v68 - 8) + 56))(v52, 1, 1, v68);
  }

  v69 = v115;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v52, 1, v70) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  }

  else
  {
    v72 = type metadata accessor for Image(0);
    v73 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v74 = v95;
    v104 = v72;
    v114 = v73;
    Ref.subscript.getter();
    (*(v71 + 8))(v52, v70);
    (*(v106 + 32))(v105, v74, v107);
    CRSequence.makeIterator()();
    CRSequence.Iterator.next()();
    v75 = v97;
    v76 = v97 + 48;
    v77 = *(v97 + 48);
    if (v77(v69, 1, v49) == 1)
    {
      v78 = v108;
    }

    else
    {
      v80 = *(v75 + 32);
      v79 = v75 + 32;
      v113 = v80;
      v81 = (v88 + 8);
      v110 = v77;
      v82 = v51;
      v83 = v90;
      v109 = v76;
      v84 = v89;
      v78 = v108;
      do
      {
        (v113)(v84, v69, v49);
        Ref.subscript.getter();
        v85 = specialized CRRegister<>.maxHDRHeadroom<A>(in:)(v82);
        (*v81)(v83, v111);
        (*(v79 - 24))(v84, v49);
        if (v50 <= v85)
        {
          v50 = v85;
        }

        CRSequence.Iterator.next()();
        v69 = v115;
      }

      while (v110(v115, 1, v49) != 1);
    }

    (*(v96 + 8))(v78, v112);
    (*(v106 + 8))(v105, v107);
  }

  return v50;
}

double specialized PKDrawingStruct.hdrHeadroom<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for PKDrawingStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  CROrderedSet.makeIterator()();
  v30 = v12;
  CROrderedSet.Iterator.next()();
  v13 = *(v4 + 48);
  v14 = 0.0;
  if (v13(v9, 1, v3) != 1)
  {
    v15 = *(v4 + 32);
    v25 = (v27 + 8);
    v26 = v15;
    v27 = v4 + 32;
    v24 = (v4 + 8);
    do
    {
      v26(v6, v9, v3);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v16 = v28;
      v17 = v10;
      v18 = v1;
      v19 = v29;
      Ref.subscript.getter();
      v20 = v19;
      v1 = v18;
      v10 = v17;
      v21 = specialized CRRegister<>.maxHDRHeadroom<A>(in:)(v20);
      (*v25)(v16, v1);
      (*v24)(v6, v3);
      if (v14 <= v21)
      {
        v14 = v21;
      }

      CROrderedSet.Iterator.next()();
    }

    while (v13(v9, 1, v3) != 1);
  }

  (*(v23 + 8))(v30, v10);
  return v14;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  v27 = *v21;
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a1 + 32);

  v23 = v27;
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E6995408]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 8 * v14;

  return outlined assign with take of WeakCalculateExpression(a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v21);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E6995408]);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PDFPageID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  _s8PaperKit9PDFPageIDVWOcTm_0(a2, v10, type metadata accessor for PDFPageID);
  return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = result;
      specialized _NativeDictionary.copy()();
      result = v20;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_14:
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v4;
  if (v18)
  {
    v23 = (v22[7] + 40 * result);
    *v23 = v7;
    v23[1] = v6;
    v23[2] = v9;
    v23[3] = v8;
    v23[4] = v10;
  }

  else
  {
    v25[0] = v7;
    v25[1] = v6;
    v25[2] = v9;
    v25[3] = v8;
    v25[4] = v10;
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, v25, v22);

    return a2;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      specialized _NativeDictionary.copy()();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * result;
    v20 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v20;
    *(v19 + 32) = *(a1 + 32);
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  v21 = v18[7] + 40 * result;
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a1 + 32);
  v23 = v18[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v24;

  return a2;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      a6(v19, a4 & 1);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      a5();
      v14 = v22;
    }
  }

  v24 = *v9;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  *(v24[6] + 8 * v14) = a3;
  v27 = (v24[7] + 16 * v14);
  *v27 = a1;
  v27[1] = a2;
  v28 = v24[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v29;

  return a3;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PDFDocumentWriteOption(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v27();
      goto LABEL_7;
    }

    v28();
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22, MEMORY[0x1E69695A8]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;

    outlined consume of AsyncCache<Data, CGImageRef>.CacheState(v27, v28, v29);
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v25[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = v25[7] + 24 * v15;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3 & 1;
  v32 = v25[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v33;

  outlined copy of Data._Representation(a4, a5);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;

  return outlined copy of Data._Representation(a3, a4);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for PaperKitPDFPage(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      specialized _NativeDictionary.copy()();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) == (v31 & 1))
    {
      v17 = v30;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      return specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v33, v34, v35, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 32 * v17);
  v25 = v24[1];
  v26 = v33;
  v27 = v34;
  *v24 = a1;
  v24[1] = v26;
  v28 = v35;
  v24[2] = v27;
  v24[3] = v28;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of WeakCalculateExpression(a3, a4[7] + 8 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PDFPageID();
  result = _s8PaperKit9PDFPageIDVWObTm_1(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for PDFPageID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x1E6995408]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 32);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v5 = a4[7] + 40 * result;
  v6 = *(a3 + 16);
  *v5 = *a3;
  *(v5 + 16) = v6;
  *(v5 + 32) = v4;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t specialized closure #1 in Capsule<>.subelementsMaxHDRHeadroom()@<X0>(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  SharedTagged_10.subscript.getter();
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v13[3] = v8;
  v13[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  v10 = (*(*(v7 + 8) + 48))(v13, v6);
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (v5 > v10)
  {
    v12 = v5;
  }

  else
  {
    v12 = v10;
  }

  *a3 = v12;
  return result;
}

uint64_t specialized MarkupContainerViewController.documentViewShouldAllowEditing(_:)()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      v4 = [v3 shouldAllowEditingContents_];
    }

    else
    {
      v4 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 1;
  }

  return (v1 != 0) & v4;
}

void specialized MarkupContainerViewController.documentViewController(_:didSetupDocumentView:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20 = a1;
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(a1 + v4) = 0;
  }

  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!v7)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v7 setAutoScales_];
  v8 = *(a1 + v6);
  if (!v8)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v9 = [v8 documentScrollView];
  if (v9)
  {
    if (one-time initialization token for isQuickLookUIExtension != -1)
    {
      v18 = v9;
      swift_once();
      v9 = v18;
    }

    if (static NSBundle.isQuickLookUIExtension == 1)
    {
      v10 = v9;
      [v9 setContentInsetAdjustmentBehavior_];
      v9 = v10;
    }
  }

  v19[0] = v2[OBJC_IVAR___PPKMarkupContainerViewController_editingMode];
  PaperDocumentView.editingMode.setter(v19);
  v11 = *(a1 + v6);
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = OBJC_IVAR___PPKMarkupContainerViewController_findInteractionEnabled;
  swift_beginAccess();
  [v11 setFindInteractionEnabled_];
  MarkupContainerViewController.configureLookAndStyle()();
  MarkupContainerViewController.updateContentInsets()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v14 markupContainerViewController:v2 updateChromeWithAnimation:1];
    }

    swift_unknownObjectRelease();
  }

  v15 = MarkupContainerViewController.toolPicker.getter();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
    swift_beginAccess();
    if (v2[v17] == 1 && ([v16 isVisible] & 1) == 0)
    {
      [v2 becomeFirstResponder];
    }
  }

  v2[OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded] = 1;
  [*&v2[OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue] setSuspended_];
}

void specialized MarkupContainerViewController.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR___PPKMarkupContainerViewController_context;
  type metadata accessor for CRContext();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v3 = MEMORY[0x1DA6CC630](0, v12);
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence18EncryptionDelegate_pSgMd);
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_fileCoordinator;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView) = 0;
  v5 = v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_analysisDelegate) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageCancellable) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfCancellable) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_viewIsTransitioningBetweenSizes) = 0;
  v6 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  v7 = type metadata accessor for CRAsset();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_doubleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentTask) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) = 0;
  v8 = (v1 + OBJC_IVAR___PPKMarkupContainerViewController_minimumContentInsets);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  *v8 = *MEMORY[0x1E69DDCE0];
  v8[1] = v9;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_findInteractionEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage) = 1;
  v10 = (v1 + OBJC_IVAR___PPKMarkupContainerViewController_previousViewSize);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden) = 1;
  v11 = v1 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_showBannerView) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.updateZoomScales(animated:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.updateZoomScales(animated:)(a1, v7, v8, v4, v5, v6, v9);
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd) - 8);
  v15 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = *(v5 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd) - 8);
  v14 = (v15 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  type metadata accessor for URL();
  type metadata accessor for UTType();
  v12 = v1[3];
  v13 = v1[2];
  v8 = v1[5];
  v11 = v1[4];
  v9 = swift_task_alloc();
  *(v16 + 16) = v9;
  *v9 = v16;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(a1, v13, v12, v11, v8, v1 + v3, v1 + v15, v1 + v14);
}

uint64_t partial apply for closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + 6);
  v12 = v1[7];
  v13 = *(v1 + 8);
  v14 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(v9, v10, v12, a1, v7, v8, v11, v13, v1 + v6, v14);
}

unint64_t lazy protocol witness table accessor for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError()
{
  result = lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError;
  if (!lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError;
  if (!lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError);
  }

  return result;
}

uint64_t keypath_set_103Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

void keypath_set_121Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  MarkupContainerViewController.delegate.didset();
}

uint64_t keypath_set_109Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for MarkupContainerViewController()
{
  type metadata accessor for CRAsset?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x418);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void specialized MarkupContainerViewController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v9 = [v3 windowScene];

      if (v9)
      {
        v4 = [objc_opt_self() _existingInteractionForWindowScene_];
        if (v4)
        {
          v5 = v4;
          v6 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
          swift_beginAccess();
          if (*(v0 + v6) & 1) == 0 && ([v5 _paletteViewVisible])
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v8 = Strong;
              if (([Strong respondsToSelector_] & 1) == 0)
              {

                swift_unknownObjectRelease();
                return;
              }

              [v8 markupContainerViewControllerDidChangeContent:v0 enablingMarkup:1];
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
        }
      }
    }
  }
}

void specialized MarkupContainerViewControllerAnalysisDelegate.contextWillPresentVisualSearchController(_:)(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (!v5)
        {
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v6 = v5;
        [v4 *a1];
      }

      swift_unknownObjectRelease();
    }
  }
}

void specialized MarkupContainerViewControllerAnalysisDelegate.contextActiveInteractionTypesDidChange(_:)(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (!v5)
        {
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v6 = v5;
        [v4 *a1];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.doubleTapped(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.doubleTapped(_:)(a1, v4, v5, v6, v7, v9, v8);
}

void partial apply for specialized closure #1 in CanvasElementViewController.rulerHostView.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + direct field offset for CanvasElementViewController._rulerHostView);
  *(v2 + direct field offset for CanvasElementViewController._rulerHostView) = v1;
  v4 = v1;
  specialized CanvasElementViewController._rulerHostView.didset(v3);
}

void partial apply for specialized closure #1 in CanvasElementViewController._rulerHostingDelegate.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = v2;
  v4 = v2;
}

uint64_t partial apply for @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(v2, v3, v4, v5, v6, v7);
}

uint64_t closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(a1, a2, v6);
}

uint64_t _s8PaperKit9PDFPageIDVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataOrURL() - 8);
  v13 = *(v1 + 16);
  v4 = *(v1 + 32);
  v12 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + ((((*(v3 + 64) + ((*(v3 + 80) + 65) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(v9, a1, v13, v12, v4, v5, v6, v7, v8);
}

void partial apply for closure #2 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView) = 0;

  if (v2)
  {
    v2();
  }
}

void partial apply for specialized closure #1 in CanvasElementViewController.isSixChannelBlendingEnabled.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
  swift_beginAccess();
  *(v1 + v3) = v2;
  specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset();
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.loadImage(from:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.loadImage(from:with:)(a1, v4, v5, v7, v6);
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t _s8PaperKit9PDFPageIDVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit9DataOrURLOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:)()
{
  v1 = *(v0 + 16);
  result = static Task<>.isCancelled.getter();
  if ((result & 1) == 0)
  {
    return v1();
  }

  return result;
}

uint64_t Array<A>.fontName.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v75 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMd);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v75 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMd);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v75 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMd);
  MEMORY[0x1EEE9AC00](v88);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = &v75 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v75 - v23;
  v26 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v84 = *(a1 + 16);
  if (v84)
  {
    v27 = 0;
    v29 = *(v20 + 16);
    v28 = v20 + 16;
    v80 = v29;
    v79 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v78 = (v28 + 16);
    v77 = *(v28 + 56);
    v103 = (v3 + 48);
    v99 = (v3 + 32);
    v97 = (v3 + 8);
    v76 = (v28 - 8);
    v83 = v18;
    v82 = v28;
    v81 = &v75 - v23;
    v75 = v19;
    do
    {
      v92 = v27;
      v33 = v80;
      (v80)(v25, v79 + v77 * v27, v19, v24);
      v34 = v87;
      v33(v87, v25, v19);
      v35 = v19;
      v36 = *v78;
      (*v78)(v18, v34, v35);
      v37 = v91;
      v38 = &v18[*(v91 + 44)];
      *v38 = closure #1 in CRAttributedString.Runs<>.familyNames.getter;
      v38[1] = 0;
      v39 = &v18[*(v94 + 36)];
      *v39 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v39[1] = 0;
      v40 = &v18[*(v93 + 44)];
      *v40 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v40 + 1) = 0;
      v110 = MEMORY[0x1E69E7CD0];
      v41 = v86;
      outlined init with copy of Date?(v18, v86, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd);
      v42 = v89;
      outlined init with take of Range<AttributedString.Index>(v41, v89, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMd);
      v43 = v90;
      outlined init with take of Range<AttributedString.Index>(v42, v90, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMd);
      v44 = v75;
      v36(v85, v43, v75);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      dispatch thunk of Sequence.makeIterator()();
      v45 = (v43 + *(v37 + 44));
      v46 = *v45;
      v47 = v45[1];
      v48 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSg_GMd) + 44)];
      v101 = v47;
      v102 = v46;
      *v48 = v46;
      *(v48 + 1) = v47;
      v49 = (v42 + *(v94 + 36));
      v50 = *v49;
      v51 = v49[1];
      v52 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgG_GMd) + 36)];
      v100 = v50;
      *v52 = v50;
      *(v52 + 1) = v51;
      v53 = (v41 + *(v93 + 44));
      v54 = *v53;
      v55 = v53[1];
      v56 = &v12[*(v88 + 44)];
      v95 = v55;
      v96 = v54;
      *v56 = v54;
      *(v56 + 1) = v55;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v57 = v105;
      v58 = v12;
      v19 = v44;
      dispatch thunk of IteratorProtocol.next()();
      v59 = v104;
      outlined init with take of Range<AttributedString.Index>(v57, v104, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v60 = *v103;
      v61 = (*v103)(v59, 1, v2);
      v30 = MEMORY[0x1E69E7CD0];
      if (v61 != 1)
      {
        v62 = *v99;
        do
        {
          v64 = v98;
          v62(v98, v59, v2);
          v102(&v106, v64);
          v65 = v64;
          v66 = v2;
          (*v97)(v65, v2);
          v68 = v106;
          v67 = v107;
          v108 = v106;
          v109 = v107;
          if (v100(&v108))
          {
            v108 = v68;
            v109 = v67;
            v96(&v106, &v108);

            specialized Set._Variant.insert(_:)(&v108, v106, v107);
          }

          v63 = v105;
          dispatch thunk of IteratorProtocol.next()();
          v59 = v104;
          outlined init with take of Range<AttributedString.Index>(v63, v104, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          v2 = v66;
        }

        while (v60(v59, 1, v66) != 1);
        v30 = v110;
      }

      v27 = v92 + 1;
      v12 = v58;
      v31 = v58;
      v32 = v30;
      outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMd);
      v18 = v83;
      outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd);
      v25 = v81;
      (*v76)(v81, v19);
      specialized Array.append<A>(contentsOf:)(v32);
    }

    while (v27 != v84);
    v26 = v111;
  }

  v69 = *(v26 + 16);
  if (v69 <= 1)
  {
    if (v69)
    {
      v74 = *(v26 + 32);

      return v74;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v112._object = 0x80000001D4088270;
    v70._countAndFlagsBits = 0x656C7069746C754DLL;
    v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v71.value._object = 0xEB00000000656C62;
    v70._object = 0xE800000000000000;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v112._countAndFlagsBits = 0xD00000000000003FLL;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, paperKitBundle, v72, v112)._countAndFlagsBits;
  }
}

id Array<A>.fontSize.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v75 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v75 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v75 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v24;
  v28 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v84 = *(a1 + 16);
  if (v84)
  {
    v29 = 0;
    v31 = *(v21 + 16);
    v30 = v21 + 16;
    v80 = v31;
    v79 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v78 = (v30 + 16);
    v77 = *(v30 + 56);
    v104 = (v3 + 48);
    v99 = (v3 + 32);
    v97 = (v3 + 8);
    v76 = (v30 - 8);
    v75 = v13;
    v32 = v25;
    v83 = v19;
    v82 = v30;
    v81 = &v75 - v24;
    do
    {
      v91 = v29;
      v34 = v79 + v77 * v29;
      v35 = v32;
      v36 = v32;
      v37 = v80;
      (v80)(v27, v34, v35, v26);
      v38 = v87;
      v37(v87, v27, v36);
      v39 = *v78;
      (*v78)(v19, v38, v36);
      v40 = &v19[*(v94 + 44)];
      *v40 = closure #1 in CRAttributedString.Runs<>.fontSizes.getter;
      v40[1] = 0;
      v41 = &v19[*(v93 + 36)];
      *v41 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v41[1] = 0;
      v42 = &v19[*(v92 + 44)];
      *v42 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v42 + 1) = 0;
      v109 = MEMORY[0x1E69E7CD0];
      v43 = v19;
      v44 = v86;
      outlined init with copy of Date?(v43, v86, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
      v45 = v89;
      outlined init with take of Range<AttributedString.Index>(v44, v89, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd);
      v46 = v90;
      outlined init with take of Range<AttributedString.Index>(v45, v90, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd);
      v39(v85, v46, v36);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v47 = v75;
      dispatch thunk of Sequence.makeIterator()();
      v48 = (v46 + *(v94 + 44));
      v49 = *v48;
      v50 = v48[1];
      v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMd) + 44));
      v102 = v50;
      v103 = v49;
      *v51 = v49;
      v51[1] = v50;
      v52 = (v45 + *(v93 + 36));
      v53 = *v52;
      v54 = v52[1];
      v55 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMd) + 36));
      v100 = v54;
      v101 = v53;
      *v55 = v53;
      v55[1] = v54;
      v56 = (v44 + *(v92 + 44));
      v57 = *v56;
      v58 = v56[1];
      v59 = (v47 + *(v88 + 44));
      v95 = v58;
      v96 = v57;
      *v59 = v57;
      v59[1] = v58;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v60 = v105;
      v61 = v47;
      v32 = v36;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v60, v7, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v62 = *v104;
      v63 = (*v104)(v7, 1, v2);
      v33 = MEMORY[0x1E69E7CD0];
      if (v63 != 1)
      {
        v64 = *v99;
        do
        {
          v66 = v98;
          v67 = v7;
          v64(v98, v7, v2);
          v103(&v106, v66);
          v68 = v66;
          v69 = v2;
          (*v97)(v68, v2);
          v70 = v106;
          v71 = BYTE4(v106);
          v107 = v106;
          v108 = BYTE4(v106);
          if (v101(&v107))
          {
            v107 = v70;
            v108 = v71;
            v96(&v106, &v107);
            specialized Set._Variant.insert(_:)(&v107, *&v106);
          }

          v65 = v105;
          dispatch thunk of IteratorProtocol.next()();
          v7 = v67;
          outlined init with take of Range<AttributedString.Index>(v65, v67, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          v2 = v69;
        }

        while (v62(v67, 1, v69) != 1);
        v33 = v109;
      }

      v29 = v91 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd);
      v19 = v83;
      outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
      v27 = v81;
      (*v76)(v81, v32);
      specialized Array.append<A>(contentsOf:)(v33);
    }

    while (v29 != v84);
    v28 = v110;
  }

  if (!*(v28 + 16))
  {

    if (one-time initialization token for textBoxDefaultFont == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v72 = *(v28 + 32);

  if ((LODWORD(v72) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (v72 > -9.2234e18)
  {
    if (v72 < 9.2234e18)
    {
      return v72;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_17:
  result = [static UIConstants.textBoxDefaultFont pointSize];
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v74 < 9.22337204e18)
  {
    return v74;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL Array<A>.hasMultipleFontSizes.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v74 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v74 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v74 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd);
  MEMORY[0x1EEE9AC00](v87);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v74 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v74 - v24;
  v28 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v83 = *(a1 + 16);
  if (v83)
  {
    v29 = 0;
    v31 = *(v21 + 16);
    v30 = v21 + 16;
    v79 = v31;
    v78 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v77 = (v30 + 16);
    v76 = *(v30 + 56);
    v103 = (v3 + 48);
    v98 = (v3 + 32);
    v96 = (v3 + 8);
    v75 = (v30 - 8);
    v74 = v13;
    v32 = v25;
    v82 = v19;
    v81 = v30;
    v80 = &v74 - v24;
    do
    {
      v90 = v29;
      v34 = v78 + v76 * v29;
      v35 = v32;
      v36 = v32;
      v37 = v79;
      (v79)(v27, v34, v35, v26);
      v38 = v86;
      v37(v86, v27, v36);
      v39 = *v77;
      (*v77)(v19, v38, v36);
      v40 = &v19[*(v93 + 44)];
      *v40 = closure #1 in CRAttributedString.Runs<>.fontSizes.getter;
      v40[1] = 0;
      v41 = &v19[*(v92 + 36)];
      *v41 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v41[1] = 0;
      v42 = &v19[*(v91 + 44)];
      *v42 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v42 + 1) = 0;
      v108 = MEMORY[0x1E69E7CD0];
      v43 = v19;
      v44 = v85;
      outlined init with copy of Date?(v43, v85, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
      v45 = v88;
      outlined init with take of Range<AttributedString.Index>(v44, v88, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd);
      v46 = v89;
      outlined init with take of Range<AttributedString.Index>(v45, v89, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd);
      v39(v84, v46, v36);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v47 = v74;
      dispatch thunk of Sequence.makeIterator()();
      v48 = (v46 + *(v93 + 44));
      v49 = *v48;
      v50 = v48[1];
      v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMd) + 44));
      v101 = v50;
      v102 = v49;
      *v51 = v49;
      v51[1] = v50;
      v52 = (v45 + *(v92 + 36));
      v53 = *v52;
      v54 = v52[1];
      v55 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMd) + 36));
      v99 = v54;
      v100 = v53;
      *v55 = v53;
      v55[1] = v54;
      v56 = (v44 + *(v91 + 44));
      v57 = *v56;
      v58 = v56[1];
      v59 = (v47 + *(v87 + 44));
      v94 = v58;
      v95 = v57;
      *v59 = v57;
      v59[1] = v58;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v60 = v104;
      v61 = v47;
      v32 = v36;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v60, v7, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v62 = *v103;
      v63 = (*v103)(v7, 1, v2);
      v33 = MEMORY[0x1E69E7CD0];
      if (v63 != 1)
      {
        v64 = *v98;
        do
        {
          v66 = v97;
          v67 = v7;
          v64(v97, v7, v2);
          v102(&v105, v66);
          v68 = v66;
          v69 = v2;
          (*v96)(v68, v2);
          v70 = v105;
          v71 = BYTE4(v105);
          v106 = v105;
          v107 = BYTE4(v105);
          if (v100(&v106))
          {
            v106 = v70;
            v107 = v71;
            v95(&v105, &v106);
            specialized Set._Variant.insert(_:)(&v106, *&v105);
          }

          v65 = v104;
          dispatch thunk of IteratorProtocol.next()();
          v7 = v67;
          outlined init with take of Range<AttributedString.Index>(v65, v67, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          v2 = v69;
        }

        while (v62(v67, 1, v69) != 1);
        v33 = v108;
      }

      v29 = v90 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd);
      v19 = v82;
      outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd);
      v27 = v80;
      (*v75)(v80, v32);
      specialized Array.append<A>(contentsOf:)(v33);
    }

    while (v29 != v83);
    v28 = v109;
  }

  v72 = *(v28 + 16);

  return v72 > 1;
}

uint64_t Array<A>.textAlignment.getter(uint64_t a1)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v2 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v55 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v55 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMd);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v55 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v17 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v66 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v55 - v21;
  v22 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v65 = *(a1 + 16);
  if (v65)
  {
    v57 = v4;
    v23 = 0;
    v25 = *(v17 + 16);
    v24 = v17 + 16;
    v62 = v25;
    v61 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v60 = (v24 + 16);
    v59 = *(v24 + 56);
    v79 = (v2 + 48);
    v56 = (v2 + 32);
    v55 = (v2 + 8);
    v58 = (v24 - 8);
    v26 = v10;
    v27 = v80;
    v28 = v71;
    v63 = v24;
    v64 = v16;
    v78 = v26;
    do
    {
      v75 = v23;
      v29 = v62;
      (v62)(v28, v61 + v59 * v23, v27, v20);
      v30 = v69;
      v29(v69, v28, v27);
      v31 = *v60;
      (*v60)(v16, v30, v27);
      v33 = v67;
      v32 = v68;
      v34 = &v16[*(v68 + 44)];
      *v34 = closure #1 in CRAttributedString.Runs<>.alignments.getter;
      *(v34 + 1) = 0;
      v82 = MEMORY[0x1E69E7CD0];
      outlined init with copy of Date?(v16, v33, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd);
      v31(v66, v33, v27);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      dispatch thunk of Sequence.makeIterator()();
      v35 = *(v32 + 44);
      v37 = v73;
      v36 = v74;
      v38 = v72;
      v39 = (v33 + v35);
      v41 = *v39;
      v40 = v39[1];
      v42 = (v26 + *(v70 + 44));
      *v42 = v41;
      v42[1] = v40;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v38, v37, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v43 = *v79;
      v44 = (*v79)(v37, 1, v36);
      v45 = MEMORY[0x1E69E7CD0];
      if (v44 != 1)
      {
        v46 = v74;
        v47 = *v56;
        v76 = v41;
        v77 = v47;
        v48 = v72;
        v49 = v73;
        v50 = v57;
        v51 = v55;
        do
        {
          v77(v50, v49, v46);
          v76(&v81, v50);
          (*v51)(v50, v46);
          specialized Set._Variant.insert(_:)(&v81, v81);
          dispatch thunk of IteratorProtocol.next()();
          outlined init with take of Range<AttributedString.Index>(v48, v49, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
        }

        while (v43(v49, 1, v46) != 1);
        v45 = v82;
        v26 = v78;
      }

      v23 = v75 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMd);
      v16 = v64;
      outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd);
      v28 = v71;
      v27 = v80;
      (*v58)(v71, v80);
      specialized Array.append<A>(contentsOf:)(v45);
    }

    while (v23 != v65);
    v22 = v83;
  }

  v52 = *(v22 + 16);
  if (v52)
  {
    if (v52 == 1)
    {
      v53 = *(v22 + 32);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 4;
  }

  return v53;
}

uint64_t Array<A>.textStyles.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v240 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v278 = &v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v277 = &v240 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v275 = (&v240 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v274 = &v240 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v281 = &v240 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v280 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v240 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v283 = &v240 - v22;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v240 - v23;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
  MEMORY[0x1EEE9AC00](v271);
  v266 = &v240 - v24;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
  MEMORY[0x1EEE9AC00](v265);
  v279 = &v240 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v276 = &v240 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v282 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v284 = &v240 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v264 = &v240 - v33;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
  MEMORY[0x1EEE9AC00](v270);
  v250 = &v240 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v248 = &v240 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v252 = &v240 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v268 = &v240 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v240 - v42;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  MEMORY[0x1EEE9AC00](v290);
  v249 = &v240 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v247 = &v240 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v251 = &v240 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v263 = &v240 - v50;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v240 - v52;
  v262 = *(a1 + 16);
  if (v262)
  {
    v56 = 0;
    v244 = v53;
    v58 = *(v53 + 16);
    v57 = v53 + 16;
    v260 = v58;
    v59 = (*(v57 + 64) + 32) & ~*(v57 + 64);
    v242 = a1;
    v259 = a1 + v59;
    v258 = *(v57 + 56);
    v257 = (v57 + 16);
    v289 = (v3 + 48);
    v286 = (v3 + 32);
    v241 = v3;
    v285 = (v3 + 8);
    v261 = v57;
    v256 = (v57 - 8);
    v243 = 1;
    v246 = v43;
    v245 = &v240 - v52;
    while (2)
    {
      v253 = v56;
      v60 = v259 + v258 * v56;
      v61 = v290;
      v62 = v260;
      v260(v55, v60, v290, v54);
      v63 = v264;
      v62(v264, v55, v61);
      v64 = *v257;
      v65 = v61;
      (*v257)(v43, v63, v61);
      v66 = &v43[*(v269 + 44)];
      *v66 = closure #1 in CRAttributedString.Runs<>.isBold.getter;
      v66[1] = 0;
      v67 = &v43[*(v271 + 36)];
      *v67 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v67[1] = 0;
      v68 = &v43[*(v270 + 44)];
      *v68 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v68 + 1) = 0;
      v293 = MEMORY[0x1E69E7CD0];
      v69 = v268;
      outlined init with copy of Date?(v43, v268, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
      v70 = v266;
      outlined init with take of Range<AttributedString.Index>(v69, v266, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
      v71 = v267;
      outlined init with take of Range<AttributedString.Index>(v70, v267, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
      v255 = v64;
      v64(v263, v71, v65);
      v72 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v73 = v284;
      v254 = v72;
      dispatch thunk of Sequence.makeIterator()();
      v74 = v71 + *(v269 + 44);
      v76 = *v74;
      v75 = *(v74 + 8);
      v77 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44)];
      *v77 = v76;
      *(v77 + 1) = v75;
      v78 = v70 + *(v271 + 36);
      v79 = *v78;
      v80 = *(v78 + 8);
      v81 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36)];
      *v81 = v79;
      *(v81 + 1) = v80;
      v82 = (v268 + *(v270 + 44));
      v83 = *v82;
      v84 = v82[1];
      v85 = &v73[*(v265 + 44)];
      v272 = v84;
      v273 = v83;
      *v85 = v83;
      *(v85 + 1) = v84;
      v86 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v87 = v283;
      v288 = v86;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v87, v20, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v287 = *v289;
      v88 = (v287)(v20, 1, v2);
      v89 = MEMORY[0x1E69E7CD0];
      if (v88 != 1)
      {
        v90 = *v286;
        (*v286)(v5, v20, v2);
        while (1)
        {
          v76(&v291, v5);
          (*v285)(v5, v2);
          v92 = v291;
          v292 = v291;
          if (v79(&v292))
          {
            v292 = v92;
            v273(&v291, &v292);
            specialized Set._Variant.insert(_:)(&v292, v291);
          }

          v91 = v283;
          dispatch thunk of IteratorProtocol.next()();
          outlined init with take of Range<AttributedString.Index>(v91, v20, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          if ((v287)(v20, 1, v2) == 1)
          {
            break;
          }

          v90(v5, v20, v2);
        }

        v89 = v293;
      }

      v56 = v253 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v284, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
      v43 = v246;
      outlined destroy of StocksKitCurrencyCache.Provider?(v246, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
      result = specialized Collection.first.getter(v89);
      v94 = result;
      v95 = 0;
      v96 = 1 << *(v89 + 32);
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      else
      {
        v97 = -1;
      }

      v98 = v97 & *(v89 + 56);
      v99 = (v96 + 63) >> 6;
      v55 = v245;
      if (v98)
      {
        while (1)
        {
          v100 = v95;
LABEL_19:
          v101 = __clz(__rbit64(v98));
          v98 &= v98 - 1;
          v94 &= *(*(v89 + 48) + (v101 | (v100 << 6)));
          if (!v98)
          {
            goto LABEL_15;
          }
        }
      }

      while (1)
      {
LABEL_15:
        v100 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        if (v100 >= v99)
        {
          break;
        }

        v98 = *(v89 + 56 + 8 * v100);
        ++v95;
        if (v98)
        {
          v95 = v100;
          goto LABEL_19;
        }
      }

      v102 = *v256;

      v273 = v102;
      v102(v55, v290);

      if (v94)
      {
        v103 = v262;
        if (v56 != v262)
        {
          continue;
        }
      }

      else
      {
        v243 = 0;
        v103 = v262;
      }

      break;
    }

    v104 = 0;
LABEL_27:
    if (v104 != v103)
    {
      v283 = v104;
      v105 = v259 + v258 * v104;
      v106 = v251;
      v107 = v290;
      v108 = v260;
      (v260)(v251, v105, v290);
      v109 = v264;
      v108(v264, v106, v107);
      v110 = v252;
      v111 = v107;
      v112 = v255;
      v255(v252, v109, v107);
      v113 = (v110 + *(v269 + 44));
      *v113 = closure #1 in CRAttributedString.Runs<>.isItalic.getter;
      v113[1] = 0;
      v114 = (v110 + *(v271 + 36));
      *v114 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v114[1] = 0;
      v115 = (v110 + *(v270 + 44));
      *v115 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      v115[1] = 0;
      v293 = MEMORY[0x1E69E7CD0];
      v116 = v268;
      outlined init with copy of Date?(v110, v268, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
      v117 = v266;
      outlined init with take of Range<AttributedString.Index>(v116, v266, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
      v118 = v267;
      outlined init with take of Range<AttributedString.Index>(v117, v267, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
      v112(v263, v118, v111);
      v119 = v282;
      dispatch thunk of Sequence.makeIterator()();
      v120 = v118 + *(v269 + 44);
      v122 = *v120;
      v121 = *(v120 + 8);
      v123 = &v119[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44)];
      *v123 = v122;
      *(v123 + 1) = v121;
      v124 = v117 + *(v271 + 36);
      v125 = *v124;
      v126 = *(v124 + 8);
      v127 = &v119[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36)];
      *v127 = v125;
      *(v127 + 1) = v126;
      v128 = (v116 + *(v270 + 44));
      v129 = *v128;
      v130 = v128[1];
      v131 = &v119[*(v265 + 44)];
      v284 = v129;
      *v131 = v129;
      *(v131 + 1) = v130;
      v132 = v280;
      dispatch thunk of IteratorProtocol.next()();
      v133 = v281;
      outlined init with take of Range<AttributedString.Index>(v132, v281, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
      v134 = (v287)(v133, 1, v2);
      v135 = MEMORY[0x1E69E7CD0];
      if (v134 != 1)
      {
        v136 = *v286;
        (*v286)(v5, v281, v2);
        while (1)
        {
          v122(&v291, v5);
          (*v285)(v5, v2);
          v139 = v291;
          v292 = v291;
          if (v125(&v292))
          {
            v292 = v139;
            (v284)(&v291, &v292);
            specialized Set._Variant.insert(_:)(&v292, v291);
          }

          v137 = v280;
          dispatch thunk of IteratorProtocol.next()();
          v138 = v281;
          outlined init with take of Range<AttributedString.Index>(v137, v281, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          if ((v287)(v138, 1, v2) == 1)
          {
            break;
          }

          v136(v5, v138, v2);
        }

        v135 = v293;
      }

      v104 = v283 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v282, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v252, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
      result = specialized Collection.first.getter(v135);
      v140 = result;
      v141 = 0;
      v142 = 1 << *(v135 + 32);
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      else
      {
        v143 = -1;
      }

      v144 = v143 & *(v135 + 56);
      for (i = (v142 + 63) >> 6; v144; v140 &= *(*(v135 + 48) + (v147 | (v146 << 6))))
      {
        v146 = v141;
LABEL_44:
        v147 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
      }

      while (1)
      {
        v146 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          goto LABEL_97;
        }

        if (v146 >= i)
        {

          v273(v251, v290);

          if (v140)
          {
            v103 = v262;
            if (v104 != v262)
            {
              goto LABEL_27;
            }

            v243 |= 2uLL;
          }

          v148 = 0;
LABEL_50:
          v283 = v148;
          v149 = v247;
          v150 = v290;
          v151 = v260;
          (v260)(v247, v259 + v258 * v148, v290);
          v152 = v264;
          v151(v264, v149, v150);
          v153 = v248;
          v154 = v255;
          v255(v248, v152, v150);
          v155 = v269;
          v156 = (v153 + *(v269 + 44));
          *v156 = closure #1 in CRAttributedString.Runs<>.isUndlerline.getter;
          v156[1] = 0;
          v157 = (v153 + *(v271 + 36));
          *v157 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
          v157[1] = 0;
          v158 = (v153 + *(v270 + 44));
          *v158 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
          v158[1] = 0;
          v293 = MEMORY[0x1E69E7CD0];
          v159 = v268;
          outlined init with copy of Date?(v153, v268, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
          v160 = v266;
          outlined init with take of Range<AttributedString.Index>(v159, v266, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
          v161 = v267;
          outlined init with take of Range<AttributedString.Index>(v160, v267, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
          v154(v263, v161, v290);
          v162 = v276;
          dispatch thunk of Sequence.makeIterator()();
          v163 = v161 + *(v155 + 44);
          v164 = *v163;
          v165 = *(v163 + 8);
          v166 = (v162 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44));
          *v166 = v164;
          v166[1] = v165;
          v167 = v160 + *(v271 + 36);
          v169 = *v167;
          v168 = *(v167 + 8);
          v170 = (v162 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36));
          *v170 = v169;
          v170[1] = v168;
          v171 = (v159 + *(v270 + 44));
          v172 = *v171;
          v173 = v171[1];
          v174 = (v162 + *(v265 + 44));
          v284 = v172;
          *v174 = v172;
          v174[1] = v173;
          v175 = v274;
          dispatch thunk of IteratorProtocol.next()();
          v176 = v275;
          outlined init with take of Range<AttributedString.Index>(v175, v275, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
          v177 = (v287)(v176, 1, v2);
          v178 = MEMORY[0x1E69E7CD0];
          if (v177 != 1)
          {
            v179 = *v286;
            (*v286)(v5, v275, v2);
            while (1)
            {
              v164(&v291, v5);
              (*v285)(v5, v2);
              v182 = v291;
              v292 = v291;
              if (v169(&v292))
              {
                v292 = v182;
                (v284)(&v291, &v292);
                specialized Set._Variant.insert(_:)(&v292, v291);
              }

              v180 = v274;
              dispatch thunk of IteratorProtocol.next()();
              v181 = v275;
              outlined init with take of Range<AttributedString.Index>(v180, v275, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
              if ((v287)(v181, 1, v2) == 1)
              {
                break;
              }

              v179(v5, v181, v2);
            }

            v178 = v293;
          }

          v148 = v283 + 1;
          outlined destroy of StocksKitCurrencyCache.Provider?(v276, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v248, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
          result = specialized Collection.first.getter(v178);
          v183 = result;
          v184 = 0;
          v185 = 1 << *(v178 + 32);
          if (v185 < 64)
          {
            v186 = ~(-1 << v185);
          }

          else
          {
            v186 = -1;
          }

          v187 = v186 & *(v178 + 56);
          for (j = (v185 + 63) >> 6; v187; v183 &= *(*(v178 + 48) + (v190 | (v189 << 6))))
          {
            v189 = v184;
LABEL_66:
            v190 = __clz(__rbit64(v187));
            v187 &= v187 - 1;
          }

          while (1)
          {
            v189 = v184 + 1;
            if (__OFADD__(v184, 1))
            {
              goto LABEL_99;
            }

            if (v189 >= j)
            {

              v273(v247, v290);

              if (v183)
              {
                v191 = v262;
                if (v148 != v262)
                {
                  goto LABEL_50;
                }

                v243 |= 4uLL;
                v192 = v244;
              }

              else
              {
                v192 = v244;
                v191 = v262;
              }

              if (v191)
              {
                v193 = 0;
                v282 = *(v192 + 16);
                v244 = v192 + 16;
                v281 = v242 + ((*(v192 + 80) + 32) & ~*(v192 + 80));
                v280 = (v192 + 32);
                v194 = *(v192 + 72);
                v289 = (v241 + 48);
                v286 = (v241 + 8);
                v287 = (v241 + 32);
                v275 = (v192 + 8);
                v276 = v194;
LABEL_74:
                v283 = v193;
                v195 = v281 + v276 * v193;
                v196 = v249;
                v197 = v290;
                v198 = v282;
                (v282)(v249, v195, v290);
                v199 = v264;
                (v198)(v264, v196, v197);
                v200 = *v280;
                v201 = v250;
                (*v280)(v250, v199, v197);
                v202 = v269;
                v203 = (v201 + *(v269 + 44));
                *v203 = closure #1 in CRAttributedString.Runs<>.isStrikethrough.getter;
                v203[1] = 0;
                v204 = (v201 + *(v271 + 36));
                *v204 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                v204[1] = 0;
                v205 = (v201 + *(v270 + 44));
                *v205 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                v205[1] = 0;
                v293 = MEMORY[0x1E69E7CD0];
                v206 = v268;
                outlined init with copy of Date?(v201, v268, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
                v207 = v266;
                outlined init with take of Range<AttributedString.Index>(v206, v266, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
                v208 = v267;
                outlined init with take of Range<AttributedString.Index>(v207, v267, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
                v200(v263, v208, v197);
                lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
                v209 = v279;
                dispatch thunk of Sequence.makeIterator()();
                v210 = (v208 + *(v202 + 44));
                v211 = *v210;
                v212 = v210[1];
                v213 = (v209 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44));
                v288 = v211;
                *v213 = v211;
                v213[1] = v212;
                v214 = v207 + *(v271 + 36);
                v216 = *v214;
                v215 = *(v214 + 8);
                v217 = (v209 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36));
                *v217 = v216;
                v217[1] = v215;
                v218 = (v206 + *(v270 + 44));
                v219 = *v218;
                v220 = v218[1];
                v221 = (v209 + *(v265 + 44));
                v284 = v220;
                v285 = v219;
                *v221 = v219;
                v221[1] = v220;
                lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
                v222 = v277;
                dispatch thunk of IteratorProtocol.next()();
                v223 = v278;
                outlined init with take of Range<AttributedString.Index>(v222, v278, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
                v224 = *v289;
                v225 = (*v289)(v223, 1, v2);
                v226 = MEMORY[0x1E69E7CD0];
                if (v225 != 1)
                {
                  v227 = *v287;
                  (*v287)(v5, v278, v2);
                  while (1)
                  {
                    v288(&v291, v5);
                    (*v286)(v5, v2);
                    v230 = v291;
                    v292 = v291;
                    if (v216(&v292))
                    {
                      v292 = v230;
                      (v285)(&v291, &v292);
                      specialized Set._Variant.insert(_:)(&v292, v291);
                    }

                    v228 = v277;
                    dispatch thunk of IteratorProtocol.next()();
                    v229 = v278;
                    outlined init with take of Range<AttributedString.Index>(v228, v278, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
                    if (v224(v229, 1, v2) == 1)
                    {
                      break;
                    }

                    v227(v5, v229, v2);
                  }

                  v226 = v293;
                }

                v193 = v283 + 1;
                outlined destroy of StocksKitCurrencyCache.Provider?(v279, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
                outlined destroy of StocksKitCurrencyCache.Provider?(v250, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
                result = specialized Collection.first.getter(v226);
                v231 = result;
                v232 = 0;
                v233 = 1 << *(v226 + 32);
                if (v233 < 64)
                {
                  v234 = ~(-1 << v233);
                }

                else
                {
                  v234 = -1;
                }

                v235 = v234 & *(v226 + 56);
                for (k = (v233 + 63) >> 6; v235; v231 &= *(*(v226 + 48) + (v238 | (v237 << 6))))
                {
                  v237 = v232;
LABEL_90:
                  v238 = __clz(__rbit64(v235));
                  v235 &= v235 - 1;
                }

                while (1)
                {
                  v237 = v232 + 1;
                  if (__OFADD__(v232, 1))
                  {
                    goto LABEL_98;
                  }

                  if (v237 >= k)
                  {
                    v239 = *v275;

                    v239(v249, v290);

                    if ((v231 & 1) == 0)
                    {
                      return v243;
                    }

                    if (v193 != v262)
                    {
                      goto LABEL_74;
                    }

                    return v243 | 8;
                  }

                  v235 = *(v226 + 56 + 8 * v237);
                  ++v232;
                  if (v235)
                  {
                    v232 = v237;
                    goto LABEL_90;
                  }
                }
              }

              return v243 | 8;
            }

            v187 = *(v178 + 56 + 8 * v189);
            ++v184;
            if (v187)
            {
              v184 = v189;
              goto LABEL_66;
            }
          }
        }

        v144 = *(v135 + 56 + 8 * v146);
        ++v141;
        if (v144)
        {
          v141 = v146;
          goto LABEL_44;
        }
      }
    }

LABEL_100:
    __break(1u);
  }

  else
  {
    v243 = 7;
    return v243 | 8;
  }

  return result;
}

uint64_t Array<A>.allowedTextStyles.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v128 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v128 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v128 - v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
  MEMORY[0x1EEE9AC00](v151);
  v145 = &v128 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
  MEMORY[0x1EEE9AC00](v150);
  v144 = &v128 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
  MEMORY[0x1EEE9AC00](v143);
  v156 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v142 = &v128 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
  MEMORY[0x1EEE9AC00](v149);
  v131 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v128 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v29 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v130 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v128 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v147 = &v128 - v35;
  v36 = *(a1 + 16);
  if (!v36)
  {
    return 15;
  }

  v38 = *(v29 + 16);
  v37 = v29 + 16;
  v140 = v38;
  v139 = a1 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
  v138 = (v37 + 16);
  v137 = *(v37 + 56);
  v163 = (v3 + 48);
  v39 = (v3 + 32);
  v40 = (v3 + 8);
  v41 = 0;
  v159 = v40;
  v160 = v39;
  v136 = (v37 - 8);
  v128 = 12;
  v154 = v8;
  v135 = v37;
  v134 = v36;
  v129 = v28;
  while (2)
  {
    v146 = v41;
    v42 = v139 + v137 * v41;
    v43 = v147;
    v44 = v164;
    v45 = v140;
    (v140)(v147, v42, v164, v34);
    v46 = v142;
    v45(v142, v43, v44);
    v47 = *v138;
    (*v138)(v28, v46, v44);
    v48 = &v28[*(v151 + 44)];
    *v48 = closure #1 in CRAttributedString.Runs<>.supportsBold.getter;
    *(v48 + 1) = 0;
    v49 = &v28[*(v150 + 36)];
    *v49 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
    v49[1] = 0;
    v50 = v148;
    v51 = &v28[*(v149 + 44)];
    *v51 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
    *(v51 + 1) = 0;
    v167 = MEMORY[0x1E69E7CD0];
    outlined init with copy of Date?(v28, v50, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
    v52 = v144;
    outlined init with take of Range<AttributedString.Index>(v50, v144, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
    v53 = v145;
    outlined init with take of Range<AttributedString.Index>(v52, v145, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
    v133 = v47;
    v47(v141, v53, v44);
    v54 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
    v55 = v158;
    v132 = v54;
    dispatch thunk of Sequence.makeIterator()();
    v56 = v53 + *(v151 + 44);
    v58 = *v56;
    v57 = *(v56 + 8);
    v59 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44)];
    *v59 = v58;
    *(v59 + 1) = v57;
    v60 = v52 + *(v150 + 36);
    v62 = *v60;
    v61 = *(v60 + 8);
    v63 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36)];
    *v63 = v62;
    *(v63 + 1) = v61;
    v64 = &v148[*(v149 + 44)];
    v65 = *v64;
    v66 = *(v64 + 1);
    v67 = &v55[*(v143 + 44)];
    v152 = v66;
    v153 = v65;
    *v67 = v65;
    *(v67 + 1) = v66;
    v68 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
    v69 = v157;
    v162 = v68;
    dispatch thunk of IteratorProtocol.next()();
    outlined init with take of Range<AttributedString.Index>(v69, v13, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
    v161 = *v163;
    v70 = v161(v13, 1, v2);
    v71 = MEMORY[0x1E69E7CD0];
    if (v70 != 1)
    {
      v72 = *v160;
      (*v160)(v5, v13, v2);
      while (1)
      {
        v58(&v165, v5);
        (*v159)(v5, v2);
        v74 = v165;
        v166 = v165;
        if (v62(&v166))
        {
          v166 = v74;
          v153(&v165, &v166);
          specialized Set._Variant.insert(_:)(&v166, v165);
        }

        v73 = v157;
        dispatch thunk of IteratorProtocol.next()();
        outlined init with take of Range<AttributedString.Index>(v73, v13, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
        if (v161(v13, 1, v2) == 1)
        {
          break;
        }

        v72(v5, v13, v2);
      }

      v71 = v167;
      v8 = v154;
    }

    v41 = v146 + 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
    v28 = v129;
    outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
    result = specialized Collection.first.getter(v71);
    v76 = result;
    v77 = 0;
    v78 = 1 << *(v71 + 32);
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    else
    {
      v79 = -1;
    }

    v80 = v79 & *(v71 + 56);
    v81 = (v78 + 63) >> 6;
    if (v80)
    {
      while (1)
      {
        v82 = v77;
LABEL_19:
        v83 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        v76 |= *(*(v71 + 48) + (v83 | (v82 << 6)));
        if (!v80)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v82 >= v81)
      {
        break;
      }

      v80 = *(v71 + 56 + 8 * v82);
      ++v77;
      if (v80)
      {
        v77 = v82;
        goto LABEL_19;
      }
    }

    v84 = *v136;

    v153 = v84;
    v84(v147, v164);

    if (v76)
    {
      v85 = v134;
      if (v41 != v134)
      {
        continue;
      }

      v128 = 13;
    }

    else
    {
      v85 = v134;
    }

    break;
  }

  v86 = 0;
LABEL_27:
  if (v86 != v85)
  {
    v152 = v86;
    v87 = (v139 + v137 * v86);
    v88 = v130;
    v89 = v164;
    v90 = v140;
    v140(v130, v87, v164);
    v91 = v142;
    v90(v142, v88, v89);
    v92 = v131;
    v93 = v133;
    v133(v131, v91, v89);
    v94 = (v92 + *(v151 + 44));
    *v94 = closure #1 in CRAttributedString.Runs<>.supportsItalic.getter;
    v94[1] = 0;
    v95 = (v92 + *(v150 + 36));
    *v95 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
    v95[1] = 0;
    v96 = v148;
    v97 = (v92 + *(v149 + 44));
    *v97 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
    v97[1] = 0;
    v167 = MEMORY[0x1E69E7CD0];
    outlined init with copy of Date?(v92, v96, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
    v98 = v144;
    outlined init with take of Range<AttributedString.Index>(v96, v144, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd);
    v99 = v145;
    outlined init with take of Range<AttributedString.Index>(v98, v145, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd);
    v93(v141, v99, v89);
    v100 = v156;
    dispatch thunk of Sequence.makeIterator()();
    v101 = v99 + *(v151 + 44);
    v103 = *v101;
    v102 = *(v101 + 8);
    v104 = (v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd) + 44));
    *v104 = v103;
    v104[1] = v102;
    v105 = v98 + *(v150 + 36);
    v107 = *v105;
    v106 = *(v105 + 8);
    v108 = (v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd) + 36));
    *v108 = v107;
    v108[1] = v106;
    v109 = (v96 + *(v149 + 44));
    v110 = *v109;
    v111 = v109[1];
    v112 = (v100 + *(v143 + 44));
    v157 = v111;
    v158 = v110;
    *v112 = v110;
    v112[1] = v111;
    v113 = v155;
    dispatch thunk of IteratorProtocol.next()();
    outlined init with take of Range<AttributedString.Index>(v113, v8, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
    v114 = v161(v8, 1, v2);
    v115 = MEMORY[0x1E69E7CD0];
    if (v114 != 1)
    {
      v116 = *v160;
      (*v160)(v5, v8, v2);
      while (1)
      {
        v103(&v165, v5);
        (*v159)(v5, v2);
        v119 = v165;
        v166 = v165;
        if (v107(&v166))
        {
          v166 = v119;
          (v158)(&v165, &v166);
          specialized Set._Variant.insert(_:)(&v166, v165);
        }

        v117 = v155;
        dispatch thunk of IteratorProtocol.next()();
        v118 = v117;
        v8 = v154;
        outlined init with take of Range<AttributedString.Index>(v118, v154, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
        if (v161(v8, 1, v2) == 1)
        {
          break;
        }

        v116(v5, v8, v2);
      }

      v115 = v167;
    }

    v86 = v152 + 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd);
    result = specialized Collection.first.getter(v115);
    v120 = result;
    v121 = 0;
    v122 = 1 << *(v115 + 32);
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    else
    {
      v123 = -1;
    }

    v124 = v123 & *(v115 + 56);
    for (i = (v122 + 63) >> 6; v124; v120 |= *(*(v115 + 48) + (v127 | (v126 << 6))))
    {
      v126 = v121;
LABEL_44:
      v127 = __clz(__rbit64(v124));
      v124 &= v124 - 1;
    }

    while (1)
    {
      v126 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_51;
      }

      if (v126 >= i)
      {

        v153(v130, v164);

        if ((v120 & 1) == 0)
        {
          return v128;
        }

        v85 = v134;
        if (v86 != v134)
        {
          goto LABEL_27;
        }

        return v128 | 2;
      }

      v124 = *(v115 + 56 + 8 * v126);
      ++v121;
      if (v124)
      {
        v121 = v126;
        goto LABEL_44;
      }
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t Array<A>.fontColors.getter(uint64_t a1)
{
  v88 = type metadata accessor for Color(0);
  v2 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v64 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v6 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v64 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - v28;
  v31 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  v73 = *(a1 + 16);
  if (v73)
  {
    v32 = 0;
    v34 = *(v24 + 16);
    v33 = v24 + 16;
    v69 = v34;
    v68 = a1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v67 = (v33 + 16);
    v66 = *(v33 + 56);
    v35 = (v6 + 48);
    v80 = (v6 + 8);
    v81 = (v6 + 32);
    v36 = (v2 + 56);
    v37 = (v2 + 48);
    v65 = (v33 - 8);
    v64 = v16;
    v38 = v27;
    v72 = v22;
    v71 = v33;
    v70 = &v64 - v28;
    do
    {
      v79 = v32;
      v39 = v69;
      (v69)(v30, v68 + v66 * v32, v38, v29);
      v40 = v77;
      v39(v77, v30, v38);
      v41 = *v67;
      (*v67)(v22, v40, v38);
      v42 = v76;
      v43 = &v22[*(v76 + 44)];
      *v43 = closure #1 in CRAttributedString.Runs<>.fontColors.getter;
      v43[1] = 0;
      v91 = MEMORY[0x1E69E7CD0];
      v44 = v22;
      v45 = v75;
      outlined init with copy of Date?(v44, v75, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
      v41(v74, v45, v38);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      v46 = v64;
      dispatch thunk of Sequence.makeIterator()();
      v47 = (v45 + *(v42 + 44));
      v48 = *v47;
      v49 = v47[1];
      v50 = v46;
      v51 = (v46 + *(v78 + 44));
      v83 = v49;
      v84 = v48;
      *v51 = v48;
      v51[1] = v49;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
      while (1)
      {
        v52 = v87;
        dispatch thunk of IteratorProtocol.next()();
        v53 = v52;
        v54 = v89;
        outlined init with take of Range<AttributedString.Index>(v53, v89, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
        v55 = 1;
        if ((*v35)(v54, 1, v90) != 1)
        {
          v56 = v82;
          v57 = v90;
          (*v81)(v82, v89, v90);
          v84(v56);
          (*v80)(v56, v57);
          v55 = 0;
        }

        v58 = v55;
        v59 = v88;
        (*v36)(v14, v58, 1, v88);
        if ((*v37)(v14, 1, v59) == 1)
        {
          break;
        }

        v60 = v86;
        outlined init with take of Color(v14, v86);
        v61 = v85;
        specialized Set._Variant.insert(_:)(v85, v60);
        outlined destroy of Color(v61);
      }

      v32 = v79 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd);
      v84 = v91;
      v22 = v72;
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
      v30 = v70;
      (*v65)(v70, v38);
      specialized Array.append<A>(contentsOf:)(v84);
    }

    while (v32 != v73);
    v31 = v92;
  }

  v62 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit5ColorV_SayAFGTt0g5Tf4g_n(v31);

  return v62;
}

id CRAttributedString.Attributes<>.fontSize.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  if (v3 == 1)
  {
    if (one-time initialization token for textBoxDefaultFont != -1)
    {
      swift_once();
    }

    result = [static UIConstants.textBoxDefaultFont pointSize];
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v1 > -9.22337204e18)
      {
        if (v1 < 9.22337204e18)
        {
          return v1;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = outlined consume of Font?(v2, v3);
  if ((~LODWORD(v4) & 0x7F800000) == 0)
  {
    goto LABEL_13;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 9.2234e18)
  {
    return v4;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute);
  }

  return result;
}

uint64_t CRAttributedString.Attributes<>.fontColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  CRAttributedString.Attributes.subscript.getter();
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    if (one-time initialization token for textBoxDefaultTextColor != -1)
    {
      swift_once();
    }

    Color.init(cgColor:)([static UIConstants.textBoxDefaultTextColor CGColor], v8);
    if (v12(v8, 1, v2))
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd);
      __break(1u);
    }

    else
    {

      outlined init with take of Color(v8, v5);
      outlined init with take of Color(v5, a1);
      result = v12(v11, 1, v2);
      if (result != 1)
      {
        return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit5ColorVSgMd);
      }
    }
  }

  else
  {

    return outlined init with take of Color(v11, a1);
  }

  return result;
}

uint64_t CRAttributedString.Attributes<>.textStyles.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  if (v8 == 1)
  {
    v0 = 0;
  }

  else
  {
    swift_beginAccess();
    v1 = static Font.Traits.bold;
    outlined consume of Font?(v7, v8);
    v0 = (v1 & ~v9) == 0;
  }

  swift_getKeyPath();
  CRAttributedString.Attributes.subscript.getter();

  if (v8 != 1)
  {
    swift_beginAccess();
    v2 = static Font.Traits.italic;
    outlined consume of Font?(v7, v8);
    if ((v2 & ~v9) == 0)
    {
      v0 |= 2uLL;
    }
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v3 = v0 | 4;
  if ((v7 & 1) == 0)
  {
    v3 = v0;
  }

  if (v7 == 2)
  {
    v4 = v0;
  }

  else
  {
    v4 = v3;
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v5 = v4 | 8;
  if ((v7 & 1) == 0)
  {
    v5 = v4;
  }

  if (v7 == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t outlined consume of Font?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute);
  }

  return result;
}

BOOL specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t a1)
{
  return *(a1 + 8) != 0;
}

{
  return (*(a1 + 4) & 1) == 0;
}

{
  v2 = type metadata accessor for CRAsset();
  return (*(*(v2 - 8) + 48))(a1, 1, v2) != 1;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

unsigned __int8 *specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 & 1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Color(uint64_t a1)
{
  v2 = type metadata accessor for Color(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MiniTextButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MiniTextButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MiniTextButton.body.getter()
{
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v1 = v18;
  v2 = v19;
  outlined init with copy of MiniTextButton(v0, &v18);
  v3 = swift_allocObject();
  outlined init with take of MiniTextButton(&v18, v3 + 16);
  _s8PaperKit17MiniPopoverButtonV02isD7Visible17useHeightTracking5label7popoverACyxq_G7SwiftUI7BindingVySbG_Sbxycq_yctcfCAI15ModifiedContentVyANyANyANyANyAI5ImageVAI30_EnvironmentKeyWritingModifierVyAI5ColorVSgGGARyAI4FontVSgGGAI023AccessibilityAttachmentV0VGAI14_PaddingLayoutVGAI01_q9ShapeKindV0VyAI6CircleVGG_AI4ViewPAIE29presentationCompactAdaptationyQrAI22PresentationAdaptationVFQOyA14_AIE8staticIf_4thenQrqd___qd_0_xXEtAI18ViewInputPredicateRd__AIA13_Rd_0_r0_lFQOyA14_AIE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AI8SolariumVA14_AIE22presentationBackgroundyQrqd__AI10ShapeStyleRd__lFQOyANyA27_A5_G_ATQo_Qo__Qo_Tt3g5(v17, v1, *(&v1 + 1), v2, 0, closure #1 in MiniTextButton.body.getter, 0, partial apply for closure #2 in MiniTextButton.body.getter, v3, v6, v8);
  v4 = static VerticalAlignment.firstTextBaseline.getter();
  v12 = v17[4];
  v13 = v17[5];
  v14 = v17[6];
  v15 = v17[7];
  v7 = v17[0];
  v9 = v17[1];
  v10 = v17[2];
  v11 = v17[3];
  *&v16 = v4;
  *(&v16 + 1) = closure #4 in MiniColorButton.body.getter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  View.allowsSecureDrawing()();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = 0;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v18 = v7;
  v19 = v9;
  return outlined destroy of StocksKitCurrencyCache.Provider?(&v18, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd);
}

uint64_t closure #1 in MiniTextButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = Image.init(systemName:)();
  v9 = [objc_opt_self() labelColor];
  v10 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  v14 = swift_getKeyPath();
  v27[1] = v8;
  v27[2] = KeyPath;
  v27[3] = v10;
  v27[4] = v14;
  v27[5] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();

  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v7, a1);
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  *v25 = 0;
  return result;
}

uint64_t closure #2 in MiniTextButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for PresentationAdaptation();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_Md);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAcAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAH13MiniMenuStateCG_Qo__AA8SolariumVAcAE22presentationBackgroundyQrqd__AA05ShapeO0Rd__lFQOyAA15ModifiedContentVyAnA14_PaddingLayoutVG_AA5ColorVQo_Qo_Md);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = one-time initialization token for miniMenu;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static UITextFormattingViewControllerConfiguration.miniMenu;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v34 = v11;
  v35 = v12;
  v36 = v14;
  swift_unknownObjectWeakAssign();
  v16 = v14;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd);
  v18 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextStyleRepresentable<MiniMenuState> and conformance TextStyleRepresentable<A>, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd);
  View.allowsSecureDrawing()();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v34, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd);
  Solarium.init()();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAcAE19allowsSecureDrawingQryFQOy8PaperKit04TextG13RepresentableVyAI13MiniMenuStateCG_Qo_AA14_PaddingLayoutVG_AA5ColorVQo_Md);
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd);
  v22 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v34 = v21;
  v35 = MEMORY[0x1E69815C0];
  v36 = v22;
  v37 = MEMORY[0x1E6981568];
  v23 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x1E6981CD8];
  v25 = MEMORY[0x1E6981CD0];
  View.staticIf<A, B>(_:then:)();
  (*(v28 + 8))(v7, v5);
  static PresentationAdaptation.popover.getter();
  v34 = v5;
  v35 = v24;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  v38 = v25;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  View.presentationCompactAdaptation(_:)();
  (*(v31 + 8))(v4, v33);
  return (*(v29 + 8))(v10, v26);
}

uint64_t closure #1 in closure #2 in MiniTextButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - v3;
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_Md);
  (*(*(v14 - 8) + 16))(v4, a1, v14);
  v15 = &v4[*(v2 + 36)];
  *v15 = v5;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  v17[1] = static Color.clear.getter();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.presentationBackground<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0> and conformance MiniPopoverButton<A, B>, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4thenQrqd___qd_0_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_r0_lFQOyA6_ADE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA19_AYG_ALQo_Qo__Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_AAA5_Rd_1_r1_lFQOyAA6VStackVyA6_AAE19allowsSecureDrawingQryFQOyACyAD013OpacitySliderX0VAA06_FrameT0VG_Qo_G_AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA23_AYG_ALQo_A28_Qo__Qo_GAA010_AlignmentmN0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0> and conformance MiniPopoverButton<A, B>, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_ADA5_Rd_1_r1_lFQOyAD6VStackVyA6_ADE19allowsSecureDrawingQryFQOyAFyAA013OpacitySliderX0VAD06_FrameT0VG_Qo_G_AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA23_AYG_ALQo_A28_Qo__Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextStyleRepresentable<MiniMenuState> and conformance TextStyleRepresentable<A>, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SignatureLayout()
{
  result = type metadata singleton initialization cache for SignatureLayout;
  if (!type metadata singleton initialization cache for SignatureLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SignatureLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a1;
  v39 = a3;
  v40 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit9SignatureVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v38 - v19;
  (*(v6 + 16))(v8, v38[0], v5, v18);
  v21 = type metadata accessor for Signature(0);
  v22 = lazy protocol witness table accessor for type Signature and conformance Signature();
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<Signature> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  (*(v10 + 8))(v12, v9);
  v41 = v21;
  v42 = v22;
  v43 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v29 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v30 = CGRectGetHeight(v47);
  (*(v14 + 16))(v16, v20, v13);
  v31 = objc_allocWithZone(type metadata accessor for SignatureView());
  v32 = v39;
  v33 = v39;
  v34 = v40;
  v35 = v40;
  v36 = specialized SignatureView.init(frame:canvasElement:canvas:parentCanvasElement:)(v16, v34, v32, MinX, MinY, v29, v30);

  (*(v14 + 8))(v20, v13);
  return v36;
}

unint64_t lazy protocol witness table accessor for type Ref<Signature> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit9SignatureVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>);
  }

  return result;
}

void BezierPathSource.init(from:)(CGMutablePathRef *a1@<X8>)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for ValueTypes_BezierPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {

    return;
  }

  v54 = a1;
  v7 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v9 = v8;

  v58 = v7;
  v59 = v9;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  outlined copy of Data._Representation(v7, v9);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v51 = v7;
  v52 = v9;
  Mutable = CGPathCreateMutable();
  v10 = *v6;
  v11 = *(*v6 + 16);
  if (!v11)
  {
LABEL_42:
    outlined consume of Data._Representation(v51, v52);

    outlined destroy of ValueTypes_BezierPath(v6);
    *v54 = Mutable;
    return;
  }

  v12 = 0;
  v13 = 0;
  v14 = v6[1];
  v15 = *(v14 + 16);
  v49 = v14;
  v50 = v15;
  v53 = v10 + 40;
  v47 = v14 + 32;
  v48 = v11 - 1;
  while (2)
  {
    v16 = (v53 + 16 * v12);
    v17 = v12;
    while (1)
    {
      if (v17 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (*v16 != 1)
      {
        v40 = type metadata accessor for CRCodingError();
        lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
        swift_allocError();
        v42 = v41;
        v43 = 0x80000001D40882B0;
        v44 = 0xD000000000000015;
LABEL_44:
        *v41 = v44;
        v41[1] = v43;
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E6995188], v40);
        swift_willThrow();
        outlined consume of Data._Representation(v51, v52);

        outlined destroy of ValueTypes_BezierPath(v6);
        return;
      }

      v18 = *(v16 - 1);
      if (v18 != 4)
      {
        break;
      }

      ++v17;
      CGPathCloseSubpath(Mutable);
      v16 += 16;
      if (v11 == v17)
      {
        goto LABEL_42;
      }
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (!__OFADD__(v13, 4))
        {
          if (v50 < v13 + 4)
          {
LABEL_45:
            v40 = type metadata accessor for CRCodingError();
            lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
            swift_allocError();
            v42 = v41;
            v43 = 0x80000001D40882D0;
            v44 = 0xD000000000000019;
            goto LABEL_44;
          }

          if (v13 >= -2)
          {
            v23 = *(v49 + 16);
            if (v13 + 2 < v23)
            {
              if (v13 + 3 >= v23)
              {
                goto LABEL_62;
              }

              v46 = v13 + 4;
              if (v13 < v23)
              {
                v24 = *(v47 + 8 * (v13 + 2));
                v25 = *(v47 + 8 * (v13 + 3));
                v26 = (v47 + 8 * v13);
                v27 = *v26;
                v28 = v26[1];
                transform.b = 0.0;
                transform.c = 0.0;
                transform.a = 1.0;
                transform.d = 1.0;
                transform.tx = 0.0;
                transform.ty = 0.0;
                CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v25, v24), __PAIR128__(v28, v27), &transform);
                goto LABEL_6;
              }

              goto LABEL_64;
            }

            goto LABEL_55;
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!__OFADD__(v13, 6))
      {
        if (v50 >= v13 + 6)
        {
          if (v13 >= -4)
          {
            v32 = *(v49 + 16);
            if (v13 + 4 < v32)
            {
              if (v13 + 5 < v32)
              {
                v46 = v13 + 6;
                if (v13 < v32)
                {
                  v33 = *(v47 + 8 * (v13 + 4));
                  v34 = *(v47 + 8 * (v13 + 5));
                  v35 = (v47 + 8 * v13);
                  v36 = *v35;
                  v37 = v35[1];
                  v38 = v35[2];
                  v39 = v35[3];
                  v63.b = 0.0;
                  v63.c = 0.0;
                  v63.a = 1.0;
                  v63.d = 1.0;
                  v63.tx = 0.0;
                  v63.ty = 0.0;
                  CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v34, v33), __PAIR128__(v37, v36), __PAIR128__(v39, v38), &v63);
                  goto LABEL_6;
                }

                goto LABEL_63;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            goto LABEL_56;
          }

          goto LABEL_54;
        }

        goto LABEL_45;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v19 = v13 + 2;
    if (!v18)
    {
      if (__OFADD__(v13, 2))
      {
        goto LABEL_49;
      }

      if (v50 < v19)
      {
        goto LABEL_45;
      }

      if (v13 < 0)
      {
        goto LABEL_52;
      }

      v20 = *(v49 + 16);
      if (v13 >= v20)
      {
        goto LABEL_57;
      }

      v46 = v13 + 2;
      if (v13 + 1 >= v20)
      {
        goto LABEL_59;
      }

      v21 = *(v47 + 8 * v13);
      v22 = *(v47 + 8 * (v13 + 1));
      v60.b = 0.0;
      v60.c = 0.0;
      v60.a = 1.0;
      v60.d = 1.0;
      v60.tx = 0.0;
      v60.ty = 0.0;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v22, v21), &v60);
LABEL_6:
      v13 = v46;
      v12 = v17 + 1;
      if (v48 == v17)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (__OFADD__(v13, 2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v50 < v19)
  {
    goto LABEL_45;
  }

  if (v13 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v29 = *(v49 + 16);
  if (v13 >= v29)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v46 = v13 + 2;
  if (v13 + 1 < v29)
  {
    v30 = *(v47 + 8 * v13);
    v31 = *(v47 + 8 * (v13 + 1));
    v61.b = 0.0;
    v61.c = 0.0;
    v61.a = 1.0;
    v61.d = 1.0;
    v61.tx = 0.0;
    v61.ty = 0.0;
    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v31, v30), &v61);
    goto LABEL_6;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t outlined destroy of ValueTypes_BezierPath(uint64_t a1)
{
  v2 = type metadata accessor for ValueTypes_BezierPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BezierPathSource.encode(to:)()
{
  v2 = type metadata accessor for ValueTypes_BezierPath(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (aBlock - v6);
  v8 = *v0;
  v9 = MEMORY[0x1E69E7CC0];
  *v7 = MEMORY[0x1E69E7CC0];
  v7[1] = v9;
  UnknownStorage.init()();
  NumberOfElements = CGPathGetNumberOfElements();
  v11 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v11;
  if (!isUniquelyReferenced_nonNull_native || NumberOfElements > *(v11 + 3) >> 1)
  {
    if (*(v11 + 2) <= NumberOfElements)
    {
      v13 = NumberOfElements;
    }

    else
    {
      v13 = *(v11 + 2);
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 0, v11);
  }

  *v7 = v11;
  result = CGPathGetNumberOfPoints();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v15 = 2 * result;
  v16 = v7[1];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v7[1] = v16;
  if (!v17 || v15 > *(v16 + 3) >> 1)
  {
    if (*(v16 + 2) <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = *(v16 + 2);
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v18, 0, v16);
  }

  v7[1] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in BezierPathSource.encode(to:);
  *(v20 + 24) = v19;
  aBlock[4] = _sSPySo13CGPathElementVGIgy_ACIegy_TRTA_0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v8, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    goto LABEL_19;
  }

  outlined init with copy of ValueTypes_BezierPath(v7, v4);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath);
  v22 = Message.serializedData(partial:)();
  v24 = v23;
  outlined destroy of ValueTypes_BezierPath(v4);
  if (!v1)
  {
    Data.encode(to:)();
    outlined consume of Data._Representation(v22, v24);
  }

  outlined destroy of ValueTypes_BezierPath(v7);
}

uint64_t closure #1 in BezierPathSource.encode(to:)(uint64_t a1, char **a2)
{
  v4 = *a1;
  if (*a1 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_41;
      }

      v29 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        *a2 = v29;
      }

      v31 = *(v29 + 2);
      v32 = *(v29 + 3);
      v33 = v31 + 1;
      if (v31 >= v32 >> 1)
      {
        v69 = v31 + 1;
        v62 = v29;
        v63 = *(v29 + 2);
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v62);
        v31 = v63;
        v33 = v69;
        v29 = v64;
        *a2 = v64;
      }

      *(v29 + 2) = v33;
      v34 = &v29[16 * v31];
      *(v34 + 4) = 1;
      v34[40] = 1;
    }

    else
    {
      v12 = *a2;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v12;
      if ((v13 & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        *a2 = v12;
      }

      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v68 = v14 + 1;
        v57 = v12;
        v58 = *(v12 + 2);
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1, v57);
        v14 = v58;
        v16 = v68;
        v12 = v59;
        *a2 = v59;
      }

      *(v12 + 2) = v16;
      v17 = &v12[16 * v14];
      *(v17 + 4) = 0;
      v17[40] = 1;
    }

    v35 = **(a1 + 8);
    v36 = a2[1];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    a2[1] = v36;
    if ((v37 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      a2[1] = v36;
    }

    v38 = *(v36 + 2);
    v39 = *(v36 + 3);
    v40 = v38 + 1;
    if (v38 >= v39 >> 1)
    {
      v65 = v38 + 1;
      v46 = v36;
      v47 = *(v36 + 2);
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v38 + 1, 1, v46);
      v38 = v47;
      v40 = v65;
      v36 = v48;
      a2[1] = v48;
    }

    *(v36 + 2) = v40;
    *&v36[8 * v38 + 32] = v35;
    v41 = a2[1];
    v42 = *(*(a1 + 8) + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    a2[1] = v41;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1, v41);
      v41 = result;
      a2[1] = result;
    }

    v43 = *(v41 + 16);
    v44 = *(v41 + 24);
    v45 = v43 + 1;
    if (v43 >= v44 >> 1)
    {
      v49 = v41;
      v50 = *(v41 + 16);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1, v49);
      v43 = v50;
      v41 = result;
      a2[1] = result;
    }

    *(v41 + 16) = v45;
    *(v41 + 8 * v43 + 32) = v42;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = *a2;
        v6 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v5;
        if ((v6 & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          *a2 = v5;
        }

        v7 = *(v5 + 2);
        v8 = *(v5 + 3);
        v9 = v7 + 1;
        if (v7 >= v8 >> 1)
        {
          v67 = v7 + 1;
          v54 = v5;
          v55 = *(v5 + 2);
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v54);
          v7 = v55;
          v9 = v67;
          v5 = v56;
          *a2 = v56;
        }

        *(v5 + 2) = v9;
        v10 = &v5[16 * v7];
        *(v10 + 4) = 3;
        v10[40] = 1;
        return closure #2 in closure #1 in BezierPathSource.encode(to:)(*(a1 + 8), a2);
      }

      if (v4 == 4)
      {
        v24 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v24;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
          *a2 = result;
        }

        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = v25 + 1;
        if (v25 >= v26 >> 1)
        {
          v60 = v24;
          v61 = *(v24 + 16);
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1, v60);
          v25 = v61;
          v24 = result;
          *a2 = result;
        }

        *(v24 + 16) = v27;
        v28 = v24 + 16 * v25;
        *(v28 + 32) = 4;
        *(v28 + 40) = 1;
        return result;
      }

LABEL_41:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v18 = *a2;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      *a2 = v18;
    }

    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v66 = v20 + 1;
      v51 = v18;
      v52 = *(v18 + 2);
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1, v51);
      v20 = v52;
      v22 = v66;
      v18 = v53;
      *a2 = v53;
    }

    *(v18 + 2) = v22;
    v23 = &v18[16 * v20];
    *(v23 + 4) = 2;
    v23[40] = 1;
    return closure #1 in closure #1 in BezierPathSource.encode(to:)(*(a1 + 8), a2);
  }

  return result;
}

uint64_t closure #1 in closure #1 in BezierPathSource.encode(to:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  v9 = *(a2 + 8);
  v10 = a1[1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  *(v9 + 2) = v13 + 1;
  *&v9[8 * v13 + 32] = v10;
  v14 = *(a2 + 8);
  v15 = a1[2];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v14;
  if ((v16 & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  *(v14 + 2) = v18 + 1;
  *&v14[8 * v18 + 32] = v15;
  v19 = *(a2 + 8);
  v20 = a1[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v19;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *(a2 + 8) = result;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (v23 >= v22 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
    v19 = result;
    *(a2 + 8) = result;
  }

  *(v19 + 16) = v23 + 1;
  *(v19 + 8 * v23 + 32) = v20;
  return result;
}

uint64_t closure #2 in closure #1 in BezierPathSource.encode(to:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  v9 = *(a2 + 8);
  v10 = a1[1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  *(v9 + 2) = v13 + 1;
  *&v9[8 * v13 + 32] = v10;
  v14 = *(a2 + 8);
  v15 = a1[2];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v14;
  if ((v16 & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  *(v14 + 2) = v18 + 1;
  *&v14[8 * v18 + 32] = v15;
  v19 = *(a2 + 8);
  v20 = a1[3];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v19;
  if ((v21 & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *(a2 + 8) = v19;
  }

  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  if (v23 >= v22 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
    *(a2 + 8) = v19;
  }

  *(v19 + 2) = v23 + 1;
  *&v19[8 * v23 + 32] = v20;
  v24 = *(a2 + 8);
  v25 = a1[4];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v24;
  if ((v26 & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    *(a2 + 8) = v24;
  }

  v28 = *(v24 + 2);
  v27 = *(v24 + 3);
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(a2 + 8) = v24;
  }

  *(v24 + 2) = v28 + 1;
  *&v24[8 * v28 + 32] = v25;
  v29 = *(a2 + 8);
  v30 = a1[5];
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v29;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
    v29 = result;
    *(a2 + 8) = result;
  }

  v33 = *(v29 + 16);
  v32 = *(v29 + 24);
  if (v33 >= v32 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
    v29 = result;
    *(a2 + 8) = result;
  }

  *(v29 + 16) = v33 + 1;
  *(v29 + 8 * v33 + 32) = v30;
  return result;
}

uint64_t static BezierPathSource.== infix(_:_:)()
{
  type metadata accessor for CGPathRef(0);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef, type metadata accessor for CGPathRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BezierPathSource()
{
  type metadata accessor for CGPathRef(0);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef, type metadata accessor for CGPathRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueTypes_BezierPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezierPathSource and conformance BezierPathSource()
{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BezierPathSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BezierPathSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ShapeOpacitySliderView.init(axis:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = one-time initialization token for paperKitBundle;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v15._object = 0x80000001D4088490;
  v8._countAndFlagsBits = 0x7974696361704FLL;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v8._object = 0xE700000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000032;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, paperKitBundle, v10, v15)._countAndFlagsBits;
  v12 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v7 setAccessibilityLabel_];

  return v7;
}

Swift::Void __swiftcall ShapeOpacitySliderView.didMoveToSuperview()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_didMoveToSuperview);
  v1 = [v0 superview];
  if (v1)
  {

    v2 = objc_opt_self();
    v3 = [v2 blackColor];
    v4 = [v3 colorWithAlphaComponent_];

    [v0 setBackgroundColor_];
    v5 = [v0 layer];
    [v5 setMasksToBounds_];

    v6 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient;
    v7 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D405C990;
    v9 = v7;
    v10 = [v2 whiteColor];
    v11 = [v10 CGColor];

    type metadata accessor for CGColorRef(0);
    v13 = v12;
    *(v8 + 56) = v12;
    *(v8 + 32) = v11;
    v14 = [v2 blackColor];
    v15 = [v14 CGColor];

    *(v8 + 88) = v13;
    *(v8 + 64) = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setColors_];

    v17 = [v0 traitCollection];
    v18 = [v17 layoutDirection];

    if (v18 == 1)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (v18 == 1)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }

    [*&v0[v6] setStartPoint_];
    [*&v0[v6] setEndPoint_];
    v21 = [v0 layer];
    [v21 insertSublayer:*&v0[v6] atIndex:0];

    v22 = [v0 layer];
    v23 = [v2 systemGrayColor];
    v24 = [v23 colorWithAlphaComponent_];

    v25 = [v24 CGColor];
    [v22 setBorderColor_];

    v26 = [v0 layer];
    v27 = [v0 traitCollection];
    [v27 displayScale];
    v29 = v28;

    [v26 setBorderWidth_];
  }
}

Swift::Void __swiftcall ShapeOpacitySliderView.layoutSubviews()()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v2 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient];
  [v0 bounds];
  [v2 setFrame_];

  [v0 bounds];
  if (!CGRectIsEmpty(v28))
  {
    v3 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage;
    v4 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage];
    if (!v4 || ([v4 size], v6 = v5, v8 = v7, objc_msgSend(v0, sel_bounds), vabdd_f64(v6, v10) >= 0.001) || vabdd_f64(v8, v9) >= 0.001)
    {
      ShapeOpacitySliderView.makeTrackImage()();
      v11 = *&v0[v3];
      *&v0[v3] = v12;
      v13 = v12;

      [v0 setMinimumTrackImage:v13 forState:0];
      [v0 setMaximumTrackImage:*&v0[v3] forState:0];
    }
  }

  if (*&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis] == 1)
  {
    CGAffineTransformMakeRotation(&t1, -1.57079633);
    tx = t1.tx;
    ty = t1.ty;
    v21 = *&t1.c;
    v22 = *&t1.a;
    [v0 bounds];
    CGAffineTransformMakeTranslation(&t1, v16 * 0.5 - v17 * 0.5, v17 * 0.5 - v16 * 0.5);
    v18 = *&t1.a;
    v19 = *&t1.c;
    v20 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v21;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v18;
    *&t2.c = v19;
    *&t2.tx = v20;
    CGAffineTransformConcat(&v23, &t1, &t2);
    t1 = v23;
    [v0 setTransform_];
  }
}

void ShapeOpacitySliderView.makeTrackImage()()
{
  [v0 bounds];
  if (!CGRectIsEmpty(v14))
  {
    [v0 bounds];
    v1 = CGRectGetHeight(v15) / 3.0;
    [v0 bounds];
    v2 = floor(CGRectGetWidth(v16) / v1);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        v3 = v2;
        [v0 bounds];
        v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
        v7 = [objc_opt_self() blackColor];
        v8 = [v7 colorWithAlphaComponent_];

        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = 3;
        *(v9 + 32) = v3;
        *(v9 + 40) = v1;
        v10 = swift_allocObject();
        *(v10 + 16) = partial apply for closure #1 in ShapeOpacitySliderView.makeTrackImage();
        *(v10 + 24) = v9;
        v13[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
        v13[5] = v10;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 1107296256;
        v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
        v13[3] = &block_descriptor_13;
        v11 = _Block_copy(v13);
        v12 = v8;

        [v6 imageWithActions_];

        _Block_release(v11);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if ((v6 & 1) == 0)
        {
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }
}

UIImage_optional __swiftcall ShapeOpacitySliderView.thumbImage(multiSelect:)(Swift::Bool multiSelect)
{
  if (*&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis])
  {
    v2 = 37.0;
  }

  else
  {
    v2 = 33.0;
  }

  if (multiSelect)
  {
    v3 = [objc_opt_self() configurationWithPointSize:3 weight:v2 + -6.0];
    v4 = MEMORY[0x1DA6CCED0](0x69632E73756E696DLL, 0xEC000000656C6372);
    v5 = [objc_opt_self() systemImageNamed_];

    if (v5)
    {
      v6 = [v5 imageWithRenderingMode_];

      v5 = [v6 imageWithSymbolConfiguration_];
    }

    [v1 value];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:fmax(1.0 - v7 + 0.2 alpha:{0.6), 1.0}];
    [v1 setTintColor_];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v11 = swift_allocObject();
    *(v11 + 16) = 0x4004000000000000;
    *(v11 + 24) = v1;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = v2;
    *(v11 + 56) = v2;
    *(v11 + 64) = 0x4010000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in ShapeOpacitySliderView.thumbImage(multiSelect:);
    *(v12 + 24) = v11;
    v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v17[5] = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v17[3] = &block_descriptor_25;
    v13 = _Block_copy(v17);
    v14 = v1;

    v5 = [v10 imageWithActions_];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  v16 = v5;
LABEL_11:
  result.value.super.isa = v16;
  result.is_nil = v9;
  return result;
}

void closure #1 in ShapeOpacitySliderView.thumbImage(multiSelect:)(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = [a1 CGContext];
  CGContextSetLineWidth(v16, a3);

  v17 = [a1 CGContext];
  v18 = [objc_opt_self() whiteColor];
  v19 = [v18 CGColor];

  CGContextSetStrokeColorWithColor(v17, v19);
  [a2 value];
  v21 = 1.0 - v20;
  v22 = [a1 CGContext];
  GenericGray = CGColorCreateGenericGray(v21, 1.0);
  CGContextSetFillColorWithColor(v22, GenericGray);

  v24 = [a1 CGContext];
  v27.origin.x = a4;
  v27.origin.y = a5;
  v27.size.width = a6;
  v27.size.height = a7;
  v28 = CGRectInset(v27, a8, a8);
  CGContextAddEllipseInRect(v24, v28);

  v25 = [a1 CGContext];
  CGContextDrawPath(v25, kCGPathFillStroke);
}

void closure #1 in ShapeOpacitySliderView.makeTrackImage()(void *a1, void *a2, uint64_t a3, uint64_t a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  if (a3 < 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v12 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v12 == a3)
      {
        return;
      }
    }

    v13 = 0;
    while (!__OFADD__(v12, v13))
    {
      if (((v12 + v13) & 1) == 0)
      {
        v14 = [a1 CGContext];
        v15.origin.x = v13 * a5;
        v15.origin.y = v12 * a5;
        v15.size.width = a5;
        v15.size.height = a5;
        CGContextFillRect(v14, v15);
      }

      if (a4 == ++v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WeakTagged_3<>.docPage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);

  return WeakTagged_3.tagged3.getter();
}

uint64_t SharedTagged_3<>.docPage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);

  return SharedTagged_3.tagged3.getter();
}

uint64_t (*PaperPage.frame.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = PaperPage.frame.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*PaperPage.frame.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  *a1 = (*(a3 + 56))(a2, a3);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t (*PaperPage.bounds.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = PaperPage.bounds.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*PaperPage.bounds.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  *a1 = (*(a3 + 56))(a2, a3);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t (*PaperPage.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PaperPage.orientation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t PaperPage.rotation.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 64))();
  if ((result - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t PaperPage.rotation.setter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = specialized CGImagePropertyOrientation.init(rotationAngle:)(a3);
  v6 = *(a2 + 72);

  return v6(v5, a1, a2);
}

uint64_t (*PaperPage.rotation.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = PaperPage.rotation.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*PaperPage.rotation.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  PaperPage.rotation.getter(a2, a3);
  *a1 = v5;
  return PaperPage.rotation.modify;
}

uint64_t PaperPage.rotation.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = specialized CGImagePropertyOrientation.init(rotationAngle:)(*a1);
  return (*(v1 + 72))(v3, v2, v1);
}

uint64_t PaperPage.addCanvasElement<A, B>(_:capsule:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PaperPage.axisAlignedRotationInDegrees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))();
  if ((v2 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v3 = dbl_1D4063DD0[v2 - 1] / 3.14159265 * 180.0 * 90.0;
  v4 = floor(v3);
  v5 = v3 - v4;
  v6 = ceil(v3);
  if (v5 < 0.49)
  {
    v6 = v4;
  }

  v7 = v6 / 90.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      return v7;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t PaperPage.axisAlignedRotationInDegrees.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized CGImagePropertyOrientation.init(rotationAngle:)(a1 / 180.0 * 3.14159265);
  v6 = *(a3 + 72);

  return v6(v5, a2, a3);
}

PaperKit::TaggedPaperPage::Enum_optional __swiftcall TaggedPaperPage.Enum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SharedTagged_3<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);

  return MEMORY[0x1EEDF4C40](v0);
}

uint64_t SharedTagged_3<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);

  return SharedTagged_3.tagged2.getter();
}

uint64_t WeakTagged_3<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);

  return MEMORY[0x1EEDF4A18](v0);
}

uint64_t WeakTagged_3<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);

  return WeakTagged_3.tagged2.getter();
}