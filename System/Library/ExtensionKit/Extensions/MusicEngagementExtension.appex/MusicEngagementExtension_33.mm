uint64_t Collaboration.Management.Model.remove(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Playlist.Collaborator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  outlined init with copy of TaskPriority?(a1, v7, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v9 + 16))(v11, v14, v8);
    v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v20[1];
    v15(&v18[v17], v11, v8);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v4, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.remove(_:), v18);

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t closure #1 in Collaboration.Management.Model.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.remove(_:)()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.remove(_:);
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = closure #1 in Collaboration.Management.Model.remove(_:);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.remove(_:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v0[11] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), v2, v1);
}

{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, int a2)
{
  v21 = a1;
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(v8, a1, v5, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = static Published.subscript.modify();
  specialized Set._Variant.insert(_:)(v12, v8);
  (*(v6 + 8))(v12, v5);
  v14(v24, 0);

  v15 = type metadata accessor for TaskPriority();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  (v13)(v12, v21, v5);
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23 & 1;
  (*(v6 + 32))(v18 + v17, v12, v5);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v16, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v18);
}

uint64_t closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for Playlist.Collaborator();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:);
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC8MusicKit8PlaylistV0eF8InternalE12CollaboratorVSg_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v10);

  v0[15] = *(v6 + 16);

  v0[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v12, v11);
}

{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v7, v6);
}

uint64_t closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  specialized Set._Variant.remove(_:)(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit8PlaylistVGMd);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Collaboration.Management.Model@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIActivityViewControllerCSgMd);
  State.init(wrappedValue:)();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  State.init(wrappedValue:)();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  State.init(wrappedValue:)();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  State.init(wrappedValue:)();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIActivityViewControllerCSgMd);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v27 = v2;
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE9listStyleyQrqd__AA04ListI0Rd__lFQOyAA08ModifiedG0VyAA0J0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0O0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismissAEQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAJyAA6VStackVyAPyAJyAJyAJyAJy010_MusicKit_aB012ArtworkImageV01_z12KitInternal_aB0E18artworkPlaceholderyQrx0Z3Kit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalG0VyAJyAJyA5_0z4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA18_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA30_GGQo_A29_GA18_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA18_06BorderC8ModifierA38_LLVGAA13_ShadowEffectVG_AA4TextVAPyAJyAJyAA6HStackVyAPyAcAE5sheetAwxEQrA__A0_qd__yctAaBRd__lFQOyAJy0Z4Core13CollaborationOA18_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A56_08ActivityC10ControllerA59_LLVSgQo__AJyA66_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AJyAJyAJyAJyAJyAJyAJyAA5GroupVyA17_yA50_yAPyAA08ProgressC0VyAA05EmptyC0VA88_G_A48_tGGAJyAJyA48_AA30_EnvironmentKeyWritingModifierVyA15_SgGGA93_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA93_ySiSgGGA78_GAA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGA93_yAA4FontVSgGGA81_GA81_GAA6SpacerVtGSgA50_yA125_GtGGAA21_TraitWritingModifierVyAA0J17RowInsetsTraitKeyVGG_AJyAJyA56_06QRCodeC0A59_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA18_15ClearBackgroundA59_LLVGGSgQo_APyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAJyAJyA50_yAPyAJyAJyAJyAJyAA5ImageVA120_GA29_GA93_yAA19SymbolRenderingModeVSgGGA95_GSg_A2_yAPyA48__A48_SgtGGAPyA125__AcAE5alertAwEQrA__AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAJyAJyAJyAJyAJyAcAE10fontWeightyQrA118_6WeightVSgFQOyAJyAAA61_VyA48_GA120_G_Qo_A95_GA29_GA81_GAA011_BackgroundI8ModifierVyA15_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA173_GQo__Qo_tGSgtGGA81_GA135_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA8_8PlaylistV0Z11KitInternalE12CollaboratorVGA8_0Z6ItemIDVA57_015CollaboratorRowC0A59_LLVGtGSgA88_G_Qo__APyAUyA48_A223_A88_G_AUyA88_AcAEA168_AwEQrA__A170_yXEtFQOyAcAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyA180_yAJyAJyA48_A105_GA95_GG_AA016BorderlessButtonI0VQo__Qo_A88_GSgAUyA48_A224_A88_GtGSgAUyA48_A50_yAA6ToggleVyA48_GGA17_yA17_yA48_A48_GA48_GGSgtGGA93_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedjI0VQo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA180_yAA18DefaultButtonLabelVGGQo_Qo_Md);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_Md);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd);
  v12 = type metadata accessor for InsetGroupedListStyle();
  v13 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v16 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v28 = v15;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v9;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined init with copy of Collaboration.Management.View(v2, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd);
  v20 = v24;
  View.onChange<A>(of:initial:_:)();

  return (*(v25 + 8))(v8, v20);
}

uint64_t closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_Md);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v24 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMd);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for cellHeight != -1)
  {
    v22 = KeyPath;
    swift_once();
    KeyPath = v22;
  }

  v14 = static Collaboration.Management.View.Specs.cellHeight;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  InsetGroupedListStyle.init()();
  v16 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v17 = outlined destroy of TaskPriority?(v9, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd);
  __chkstk_darwin(v17);
  *(&v23 - 2) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  v28 = v7;
  v29 = v3;
  v30 = v16;
  v31 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v19 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  View.toolbar<A>(content:)();
  return (*(v10 + 8))(v12, v20);
}

uint64_t closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGMd);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v131 = &v130 - v3;
  v162 = type metadata accessor for Playlist();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd);
  __chkstk_darwin(v5 - 8);
  v167 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMd);
  v171 = *(v9 - 8);
  v172 = v9;
  __chkstk_darwin(v9);
  v139 = &v130 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay8MusicKit8PlaylistV0gH8InternalE12CollaboratorVGAH0G6ItemIDV0G4Core13CollaborationO0gnB0E10ManagementO4ViewV0k3RowQ033_BED032AFC26D7293E5DA491DDAECC514LLVGAA05EmptyQ0VGMd);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v151 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v130 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGMd);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd);
  __chkstk_darwin(v15 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v130 - v18;
  v19 = type metadata accessor for Locale();
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for String.LocalizationValue();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v169 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v130 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VGMd);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v130 - v26;
  v147 = type metadata accessor for Playlist.Collaborator();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd);
  __chkstk_darwin(v30 - 8);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &v130 - v33;
  v156 = type metadata accessor for Prominence();
  v34 = *(v156 - 8);
  __chkstk_darwin(v156);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMyAMyAMyAMy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAMyAMyAT0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA5_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_A16_GA5_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA5_06BorderC8ModifierA25_LLVGAA13_ShadowEffectVG_AA4TextVAQyAMyAMyAA6HStackVyAQyAcAE5sheetAefGQrAJ_AKqd__yctAaBRd__lFQOyAMy0Q4Core13CollaborationOA5_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A43_08ActivityC10ControllerA46_LLVSgQo__AMyA53_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AMyAMyAMyAMyAMyAMyAMyAA5GroupVyA4_yA37_yAQyAA08ProgressC0VyAA05EmptyC0VA75_G_A35_tGGAMyAMyA35_AA30_EnvironmentKeyWritingModifierVyA2_SgGGA80_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA80_ySiSgGGA65_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA80_yAA4FontVSgGGA68_GA68_GAA6SpacerVtGSgA37_yA112_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AMyAMyA43_06QRCodeC0A46_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA5_15ClearBackgroundA46_LLVGGSgQo_Md);
  __chkstk_darwin(v173);
  v38 = &v130 - v37;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMd);
  v155 = *(v154 - 8);
  __chkstk_darwin(v154);
  v40 = &v130 - v39;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo_Md);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v130 - v43;
  v174 = a1;
  v176 = a1;
  closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v38);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMd);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd);
  v47 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
  v48 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  v177 = v45;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?();
  Section<>.init(header:content:)();
  v49 = v156;
  (*(v34 + 104))(v36, enum case for Prominence.increased(_:), v156);
  lazy protocol witness table accessor for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>();
  v173 = v44;
  v50 = v154;
  View.headerProminence(_:)();
  v51 = v36;
  v52 = v175;
  (*(v34 + 8))(v51, v49);
  (*(v155 + 8))(v40, v50);
  v53 = *(v174 + 8);
  v54 = Collaboration.Management.Model.isPending.getter();
  v56 = v171;
  v55 = v172;
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v177 + 16))
  {

    v52 = v175;
    v56 = v171;
    v55 = v172;
LABEL_9:
    (*(v56 + 56))(v52, 1, 1, v55);
    v79 = v164;
    v80 = v170;
    goto LABEL_11;
  }

  v57 = v145;
  v58 = v133;
  v59 = v147;
  (*(v145 + 16))(v133, v177 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v147);

  v60 = (*(v57 + 32))(v143, v58, v59);
  __chkstk_darwin(v60);
  v61 = v170;
  String.LocalizationValue.init(stringLiteral:)();
  v62 = v140;
  v63 = v142;
  (*(v140 + 16))(v169, v61, v142);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v64 = static NSBundle.module;
  static Locale.current.getter();
  v65 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v66;
  (*(v62 + 8))(v61, v63);
  v177 = v65;
  v178 = v67;
  _sS2SSysWl_0();
  v177 = Text.init<A>(_:)();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  Section<>.init(header:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v156 = v53;
  if (v177 == 1)
  {
    __chkstk_darwin(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAQyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessmK0VQo__Qo_Md);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_Md);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v74 = type metadata accessor for BorderlessButtonStyle();
    v75 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v76 = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle);
    v177 = v73;
    v178 = v74;
    v179 = v75;
    v180 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v177 = v72;
    v178 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v132;
    Section<>.init(content:)();
    v84 = v134;
    v82 = v149;
    v83 = v135;
    (*(v134 + 32))(v149, v78, v135);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v149;
    v83 = v135;
    v84 = v134;
  }

  v85 = (*(v84 + 56))(v82, v81, 1, v83);
  __chkstk_darwin(v85);
  closure #7 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd);
  lazy protocol witness table accessor for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>();
  v86 = v150;
  Section<>.init(header:content:)();
  v87 = *(v146 + 16);
  v88 = v144;
  v89 = v148;
  v87(v144, v152, v148);
  v90 = v82;
  v91 = v136;
  outlined init with copy of TaskPriority?(v90, v136, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd);
  v92 = v137;
  v93 = *(v137 + 16);
  v94 = v138;
  v93(v151, v86, v138);
  v95 = v139;
  v87(v139, v88, v89);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VG_ACyAraLPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAtAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAA15ModifiedContentVyA6_yAeA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA016BorderlessButtonZ0VQo__Qo_ARGSgACyAeA7ForEachVySay0E3Kit8PlaylistV0E11KitInternalE0J0VGA26_0E6ItemIDVAPGARGtMd);
  outlined init with copy of TaskPriority?(v91, v95 + *(v96 + 48), &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd);
  v97 = v151;
  v93((v95 + *(v96 + 64)), v151, v94);
  v98 = *(v92 + 8);
  v98(v150, v94);
  outlined destroy of TaskPriority?(v149, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd);
  v99 = *(v146 + 8);
  v100 = v148;
  v99(v152, v148);
  v98(v97, v94);
  outlined destroy of TaskPriority?(v91, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd);
  v99(v144, v100);
  v52 = v175;
  outlined init with take of URL?(v95, v175, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMd);
  (*(v171 + 56))(v52, 0, 1, v172);
  (*(v145 + 8))(v143, v147);
  v80 = v170;
  v79 = v164;
LABEL_11:
  v101 = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v160;
  static Published.subscript.getter();

  v103 = Playlist.isOwner.getter();
  (*(v161 + 8))(v102, v162);
  if (v103 != 2 && (v103 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , v104 = , v177 == 1))
  {
    __chkstk_darwin(v104);
    String.LocalizationValue.init(stringLiteral:)();
    v105 = v140;
    v106 = v142;
    (*(v140 + 16))(v101, v80, v142);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v107 = static NSBundle.module;
    static Locale.current.getter();
    v108 = String.init(localized:table:bundle:locale:comment:)();
    v110 = v109;
    (*(v105 + 8))(v80, v106);
    v177 = v108;
    v178 = v110;
    _sS2SSysWl_0();
    v181 = Text.init<A>(_:)();
    v182 = v111;
    v183 = v112 & 1;
    v184 = v113;
    closure #10 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<Toggle<Text>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    v114 = v131;
    Section<>.init(header:footer:content:)();
    v115 = v165;
    v116 = v114;
    v117 = v166;
    (*(v165 + 32))(v79, v116, v166);
    v118 = v117;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v166;
    v115 = v165;
  }

  (*(v115 + 56))(v79, v119, 1, v118);
  v120 = v158;
  v121 = *(v158 + 16);
  v122 = v157;
  v123 = v159;
  v121(v157, v173, v159);
  v124 = v163;
  outlined init with copy of TaskPriority?(v52, v163, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd);
  v125 = v167;
  outlined init with copy of TaskPriority?(v79, v167, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd);
  v126 = v168;
  v121(v168, v122, v123);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo__AVyAHyA40_A215_A80_G_AHyA80_AcAEA160_AjLQrAO_A162_yXEtFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yARyARyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAHyA40_A216_A80_GtGSgAHyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtMd);
  outlined init with copy of TaskPriority?(v124, &v126[*(v127 + 48)], &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd);
  outlined init with copy of TaskPriority?(v125, &v126[*(v127 + 64)], &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd);
  outlined destroy of TaskPriority?(v79, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd);
  outlined destroy of TaskPriority?(v175, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd);
  v128 = *(v120 + 8);
  v128(v173, v123);
  outlined destroy of TaskPriority?(v125, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd);
  outlined destroy of TaskPriority?(v124, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd);
  return (v128)(v122, v123);
}

uint64_t closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v61 - v4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo_Md);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v23 = a1;
  if (Collaboration.Management.Model.isPending.getter())
  {
    v24 = v73;
    v25 = *(v72 + 56);
    v26 = v74;

    return v25(v26, 1, 1, v24);
  }

  else
  {
    *v17 = static VerticalAlignment.center.getter();
    *(v17 + 1) = 0x4028000000000000;
    v17[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA06_FrameG0VGAOyAA19SymbolRenderingModeVSgGGAOyAA5ColorVSgGGSg_AA6VStackVyAIyAA4TextV_A10_SgtGGAIyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA17_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyA17_AAE10fontWeightyQrAQ6WeightVSgFQOyAKyAA6ButtonVyA10_GASG_Qo_A4_GAVGAA08_PaddingG0VGAA016_BackgroundStyleO0VyA2_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGMd);
    closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, &v17[*(v28 + 44)]);
    v29 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMd) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMd) + 36)];
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v41 = &v17[*(v15 + 36)];
    *v41 = v40;
    v41[1] = closure #2 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    v41[2] = 0;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    v61 = v22;
    View.accessibilityElement(children:)();
    (*(v12 + 8))(v14, v11);
    outlined destroy of TaskPriority?(v17, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd);
    v75 = Collaboration.Management.Model.collaborators.getter();
    v42 = v23;
    v43 = v63;
    outlined init with copy of Collaboration.Management.View(v42, v63, type metadata accessor for Collaboration.Management.View);
    v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v45 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v43, v45 + v44, type metadata accessor for Collaboration.Management.View);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
    type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Playlist.Collaborator] and conformance [A], &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
    v46 = v70;
    ForEach<>.init(_:content:)();
    v48 = v64;
    v47 = v65;
    v49 = *(v64 + 16);
    v50 = v69;
    v49(v69, v61, v65);
    v52 = v66;
    v51 = v67;
    v53 = *(v67 + 16);
    v54 = v46;
    v55 = v68;
    v53(v66, v54, v68);
    v49(v71, v50, v47);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOABV015CollaboratorRowC033_BED032AFC26D7293E5DA491DDAECC514LLVGtMd);
    v57 = v71;
    v53(&v71[*(v56 + 48)], v52, v55);
    v58 = *(v51 + 8);
    v58(v70, v55);
    v59 = *(v48 + 8);
    v59(v61, v47);
    v58(v52, v55);
    v59(v69, v47);
    v60 = v74;
    outlined init with take of URL?(v57, v74, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd);
    return (*(v72 + 56))(v60, 0, 1, v73);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMd);
  v167 = *(v3 - 8);
  v168 = v3;
  __chkstk_darwin(v3);
  v162 = (&v138 - v4);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  __chkstk_darwin(v161);
  v153 = &v138 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  __chkstk_darwin(v150);
  v149 = &v138 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd);
  __chkstk_darwin(v145);
  v151 = &v138 - v9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAcAE10fontWeightyQrAA4FontV0L0VSgFQOyAJyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo_AWyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingV0VGAA016_BackgroundStyleS0VyA1_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAFGQo_Md);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyAA15ModifiedContentVyARyARyARyARyAcAE10fontWeightyQrAA4FontV0R0VSgFQOyARyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A3_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleY0VyA9_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyANGQo__Qo_Md);
  v159 = *(v11 - 8);
  v160 = v11;
  __chkstk_darwin(v11);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v138 - v14;
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  v143 = *(v17 - 8);
  v144 = v17;
  __chkstk_darwin(v17);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v141 = &v138 - v21;
  v22 = type metadata accessor for Playlist();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd);
  __chkstk_darwin(v24 - 8);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v138 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd);
  v28 = *(v164 - 8);
  __chkstk_darwin(v164);
  v30 = &v138 - v29;
  v31 = type metadata accessor for DynamicTypeSize();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd);
  __chkstk_darwin(v38 - 8);
  v165 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = a1;
  v172 = &v138 - v41;
  v154 = v6;
  _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v37);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v31, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v32 + 16))(v34, v42, v31);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize);
  v43 = dispatch thunk of static Comparable.< infix(_:_:)();
  v44 = *(v32 + 8);
  v44(v34, v31);
  v44(v37, v31);
  if (v43)
  {
    (*(v28 + 56))(v172, 1, 1, v164);
    v45 = v19;
  }

  else
  {
    v46 = Image.init(systemName:)();
    v45 = v19;
    if (one-time initialization token for collaborationGlyphFont != -1)
    {
      swift_once();
    }

    v47 = static Collaboration.Management.View.Specs.collaborationGlyphFont;
    KeyPath = swift_getKeyPath();
    v49 = one-time initialization token for avatarLength;

    if (v49 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v50 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGMd) + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v52 = type metadata accessor for SymbolRenderingMode();
    (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
    *v50 = swift_getKeyPath();
    *v30 = v46;
    *(v30 + 1) = KeyPath;
    *(v30 + 2) = v47;
    *(v30 + 56) = *&v177[16];
    v53 = v176;
    *(v30 + 40) = *v177;
    *(v30 + 24) = v53;
    if (one-time initialization token for keyColor != -1)
    {
      swift_once();
    }

    v54 = static Collaboration.Management.View.Specs.keyColor;
    v55 = swift_getKeyPath();
    v56 = v164;
    v57 = &v30[*(v164 + 36)];
    *v57 = v55;
    v57[1] = v54;
    v58 = v172;
    outlined init with take of URL?(v30, v172, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd);
    (*(v28 + 56))(v58, 0, 1, v56);
  }

  v164 = static HorizontalAlignment.leading.getter();
  v59 = 1;
  LOBYTE(v176) = 1;
  v60 = v171;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v171, v180);
  *&v179[7] = v180[0];
  *&v179[23] = v180[1];
  *&v179[39] = v180[2];
  *&v179[55] = v180[3];
  v163 = v176;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v176 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v138;
    static Published.subscript.getter();

    v62 = Playlist.isOwner.getter();
    (*(v139 + 8))(v61, v140);
    if (v62 == 2 || (v62 & 1) == 0)
    {
      v63 = v141;
    }

    else
    {
      v63 = v141;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v65 = v143;
    v64 = v144;
    (*(v143 + 16))(v45, v63, v144);
    v66 = v145;
    v67 = v151;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v68 = static NSBundle.module;
    static Locale.current.getter();
    v69 = String.init(localized:table:bundle:locale:comment:)();
    v71 = v70;
    (*(v65 + 8))(v63, v64);
    v145 = v69;
    *&v176 = v69;
    *(&v176 + 1) = v71;
    v72 = v148;
    outlined init with copy of Collaboration.Management.View(v60, v148, type metadata accessor for Collaboration.Management.View);
    v73 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v74 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v72, v74 + v73, type metadata accessor for Collaboration.Management.View);
    _sS2SSysWl_0();

    v75 = v149;
    Button<>.init<A>(_:action:)();
    v76 = static Font.subheadline.getter();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v150 + 36));
    *v78 = v77;
    v78[1] = v76;
    static Font.Weight.semibold.getter();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.fontWeight(_:)();
    outlined destroy of TaskPriority?(v75, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    v79 = static Color.white.getter();
    v80 = swift_getKeyPath();
    v81 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMd) + 36)];
    *v81 = v80;
    v81[1] = v79;
    if (one-time initialization token for controlLength != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v82 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMd) + 36)];
    v83 = v180[5];
    *v82 = v180[4];
    *(v82 + 1) = v83;
    *(v82 + 2) = v180[6];
    v84 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMd) + 36)];
    *v93 = v84;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    *(v93 + 3) = v90;
    *(v93 + 4) = v92;
    v93[40] = 0;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v151 = v71;
    v94 = static UIColor.MusicTint.normal;
    v95 = Color.init(_:)();
    v96 = static Edge.Set.all.getter();
    v97 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMd) + 36)];
    *v97 = v95;
    v97[8] = v96;
    v98 = &v67[*(v66 + 36)];
    v99 = enum case for RoundedCornerStyle.continuous(_:);
    v100 = type metadata accessor for RoundedCornerStyle();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    *&v98[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd) + 36)] = 256;
    v101 = v66;
    v102 = v67;
    if (one-time initialization token for dynamicSizeRange != -1)
    {
      swift_once();
    }

    v103 = v161;
    v104 = __swift_project_value_buffer(v161, static Collaboration.Management.View.Specs.dynamicSizeRange);
    v105 = v153;
    outlined init with copy of TaskPriority?(v104, v153, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    v150 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    v106 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    v107 = v152;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v105, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    outlined destroy of TaskPriority?(v102, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    v108 = (v171 + *(v154 + 11));
    v109 = *v108;
    v110 = *(v108 + 1);
    LOBYTE(v173) = v109;
    v174 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    v111 = State.projectedValue.getter();
    v154 = &v138;
    __chkstk_darwin(v111);
    v112 = v145;
    *(&v138 - 4) = v113;
    *(&v138 - 3) = v112;
    *(&v138 - 2) = v151;
    *&v176 = v101;
    *(&v176 + 1) = v103;
    *v177 = v150;
    *&v177[8] = v106;
    swift_getOpaqueTypeConformance2();
    v114 = v155;
    v115 = v158;
    View.alert(isPresented:content:)();

    (*(v156 + 8))(v107, v115);
    v117 = v159;
    v116 = v160;
    v118 = *(v159 + 16);
    v119 = v157;
    v118(v157, v114, v160);
    v120 = v162;
    *v162 = 0;
    *(v120 + 8) = 1;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyAA15ModifiedContentVyATyATyATyATyAeAE10fontWeightyQrAA4FontV0S0VSgFQOyATyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A5_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleZ0VyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAPGQo__Qo_tMd);
    v118((v120 + *(v121 + 48)), v119, v116);
    v122 = *(v117 + 8);
    v122(v114, v116);
    v122(v119, v116);
    outlined init with take of URL?(v120, v170, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMd);
    v59 = 0;
  }

  v123 = v170;
  (*(v167 + 56))(v170, v59, 1, v168);
  v124 = v172;
  v125 = v165;
  outlined init with copy of TaskPriority?(v172, v165, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd);
  v126 = v166;
  outlined init with copy of TaskPriority?(v123, v166, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd);
  v127 = v169;
  outlined init with copy of TaskPriority?(v125, v169, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSg_AA6VStackVyAA9TupleViewVyAA4TextV_A4_SgtGGA2_yAA6SpacerV_AA0S0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA11_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA11_AAE10fontWeightyQrAI6WeightVSgFQOyACyAA6ButtonVyA4_GAKG_Qo_AXGANGAA08_PaddingL0VGAA016_BackgroundStyleI0VyAVGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA22_GQo__Qo_tGSgtMd);
  v129 = v127 + *(v128 + 48);
  v130 = v164;
  v173 = v164;
  v174 = 0;
  v131 = v163;
  v175[0] = v163;
  *&v175[1] = *v179;
  *&v175[17] = *&v179[16];
  *&v175[33] = *&v179[32];
  *&v175[49] = *&v179[48];
  v132 = *&v179[63];
  *&v175[64] = *&v179[63];
  v133 = *v175;
  *v129 = v164;
  *(v129 + 16) = v133;
  v134 = *&v175[16];
  v135 = *&v175[32];
  v136 = *&v175[48];
  *(v129 + 80) = v132;
  *(v129 + 48) = v135;
  *(v129 + 64) = v136;
  *(v129 + 32) = v134;
  outlined init with copy of TaskPriority?(v126, v127 + *(v128 + 64), &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd);
  outlined init with copy of TaskPriority?(&v173, &v176, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
  outlined destroy of TaskPriority?(v123, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd);
  outlined destroy of TaskPriority?(v124, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd);
  outlined destroy of TaskPriority?(v126, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd);
  v176 = v130;
  v177[0] = v131;
  *&v177[17] = *&v179[16];
  *&v177[33] = *&v179[32];
  *v178 = *&v179[48];
  *&v178[15] = *&v179[63];
  *&v177[1] = *v179;
  outlined destroy of TaskPriority?(&v176, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
  return outlined destroy of TaskPriority?(v125, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v56[-v9];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v10, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v61 = v12;
  v62 = v14;
  _sS2SSysWl_0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  LODWORD(v61) = static HierarchicalShapeStyle.primary.getter();
  v20 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  v24 = v23;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  static Font.callout.getter();
  v25 = Text.font(_:)();
  v59 = v26;
  v28 = v27;
  v30 = v29;

  outlined consume of Text.Storage(v20, v22, v24 & 1);

  v31 = Collaboration.Management.Model.collaboratorsString.getter();
  if (v32)
  {
    v61 = v31;
    v62 = v32;
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    LODWORD(v61) = static HierarchicalShapeStyle.secondary.getter();
    v38 = Text.foregroundStyle<A>(_:)();
    v40 = v39;
    v57 = v28;
    v42 = v41;
    v60 = v30;
    outlined consume of Text.Storage(v33, v35, v37 & 1);

    static Font.caption.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v58 = a2;
    v46 = v25;
    v48 = v47;
    v50 = v49;

    v51 = v42 & 1;
    LOBYTE(v28) = v57;
    outlined consume of Text.Storage(v38, v40, v51);
    v30 = v60;

    v52 = v48 & 1;
    v25 = v46;
    a2 = v58;
    outlined copy of Text.Storage(v43, v45, v52);
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v52 = 0;
    v50 = 0;
  }

  v53 = v28 & 1;
  v54 = v59;
  outlined copy of Text.Storage(v25, v59, v53);

  outlined copy of Text?(v43, v45, v52, v50);
  outlined consume of Text?(v43, v45, v52, v50);
  LOBYTE(v61) = v53;
  *a2 = v25;
  *(a2 + 8) = v54;
  *(a2 + 16) = v53;
  *(a2 + 24) = v30;
  *(a2 + 32) = v43;
  *(a2 + 40) = v45;
  *(a2 + 48) = v52;
  *(a2 + 56) = v50;
  outlined consume of Text?(v43, v45, v52, v50);
  outlined consume of Text.Storage(v25, v54, v53);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v59 = a4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v54 = v6;
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v7 - 8);
  v58 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v50 = type metadata accessor for String.LocalizationValue();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = Playlist.isOwner.getter();
  (*(v19 + 8))(v21, v18);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v23 = *(v12 + 16);
    v24 = v50;
    v23(v14, v17, v50);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v23 = *(v12 + 16);
  v24 = v50;
  v23(v14, v17, v50);
  if (one-time initialization token for module != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v25 = static NSBundle.module;
  static Locale.current.getter();
  v26 = v25;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v17, v24);
  String.LocalizationValue.init(stringLiteral:)();
  v23(v14, v17, v24);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v29(v17, v24);
  v60 = v49;
  v61 = v28;
  _sS2SSysWl_0();
  v33 = Text.init<A>(_:)();
  v49 = v34;
  v50 = v33;
  v47 = v35;
  v48 = v36;
  v60 = v30;
  v61 = v32;
  Text.init<A>(_:)();
  v46[1] = v37;
  v60 = v51;
  v61 = v52;

  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v55;
  outlined init with copy of Collaboration.Management.View(v56, v55, type metadata accessor for Collaboration.Management.View);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v42, v44 + v43, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v38, v40, v28 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A11_GA0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA0_06BorderdX0A20_LLVGAA13_ShadowEffectVG_AA4TextVAIyAKyAKyAA6HStackVyAIyAaYPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaYRd__lFQOyAKy0kU013CollaborationOA0_E10ManagementOAYV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA024_EnvironmentKeyTransformX0VySbGG_A46_08ActivityD10ControllerA49_LLVSgQo__AKyA56_AA012_TransactionX0VGSgtGGAA010_FixedSizeG0VGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAA5GroupVyA_yA32_yAIyAA08ProgressD0VyAA05EmptyD0VA78_G_A30_tGGAKyAKyA30_AA015_EnvironmentKeywX0VyAXSgGGA83_yAA13OpenURLActionVGGGSgGAA010_FlexFrameG0VGA83_ySiSgGGA68_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGA83_yAA4FontVSgGGA71_GA71_GAA6SpacerVtGSgA32_yA115_GtGGMd);
  closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = a1 + *(v4 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  outlined init with copy of Collaboration.Management.View(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return outlined destroy of TaskPriority?(v9, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMd);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v217 = &v195 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMd);
  __chkstk_darwin(v4 - 8);
  v200 = &v195 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMd);
  __chkstk_darwin(v197);
  v209 = &v195 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMd);
  __chkstk_darwin(v207);
  v206 = &v195 - v7;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMd);
  __chkstk_darwin(v204);
  v203 = &v195 - v8;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMd);
  __chkstk_darwin(v199);
  v202 = &v195 - v9;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMd);
  __chkstk_darwin(v198);
  v205 = &v195 - v10;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMd);
  __chkstk_darwin(v201);
  v212 = &v195 - v11;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
  __chkstk_darwin(v211);
  v216 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v210 = &v195 - v14;
  __chkstk_darwin(v15);
  v215 = &v195 - v16;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd);
  __chkstk_darwin(v196);
  v214 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = (&v195 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd);
  __chkstk_darwin(v20 - 8);
  v237 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v242 = &v195 - v23;
  v235 = type metadata accessor for Playlist();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v25 - 8);
  v227 = &v195 - v26;
  v230 = type metadata accessor for Artwork.CropStyle();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v28 - 8);
  v220 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v219 = &v195 - v31;
  v231 = type metadata accessor for ArtworkImage();
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v195 - v34;
  __chkstk_darwin(v35);
  v225 = &v195 - v36;
  __chkstk_darwin(v37);
  v224 = &v195 - v38;
  v39 = type metadata accessor for ArtworkImage.ReusePolicy();
  v246 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ArtworkImage.Placeholder(0);
  v243 = *(v42 - 8);
  v43 = *(v243 + 8);
  __chkstk_darwin(v42 - 8);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v195 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v48 - 8);
  v218 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v195 - v51;
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd);
  __chkstk_darwin(v232);
  v236 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = &v195 - v58;
  v208 = a1;
  v247 = *(a1 + 8);
  Collaboration.Management.Model.artworkViewModel.getter(v55);
  v59 = enum case for Playlist.Variant.regular(_:);
  v60 = type metadata accessor for Playlist.Variant();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v47, v59, v60);
  (*(v61 + 56))(v47, 0, 1, v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  (*(*(v62 - 8) + 56))(v47, 0, 11, v62);
  v262 = 1;
  v260 = 1;
  v258 = 1;
  v63 = *(v246 + 104);
  v245 = v41;
  v223 = v39;
  v63(v41, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v39);
  v221 = v47;
  outlined init with copy of Collaboration.Management.View(v47, v44, type metadata accessor for ArtworkImage.Placeholder);
  v64 = (v243[80] + 16) & ~v243[80];
  v65 = (v43 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v44, v66 + v64, type metadata accessor for ArtworkImage.Placeholder);
  v67 = v66 + v65;
  *v67 = 0;
  *(v67 + 8) = v262;
  *(v67 + 9) = *v261;
  *(v67 + 12) = *&v261[3];
  *(v67 + 16) = 0;
  *(v67 + 24) = v260;
  *(v67 + 25) = *v259;
  *(v67 + 28) = *&v259[3];
  *(v67 + 32) = 0;
  *(v67 + 40) = v258;
  *(v67 + 41) = 2;
  v243 = v55;
  outlined init with copy of TaskPriority?(v55, v52, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v68 = type metadata accessor for ArtworkImage.ViewModel(0);
  v69 = *(*(v68 - 8) + 48);
  if (v69(v52, 1, v68) == 1)
  {
    outlined destroy of TaskPriority?(v52, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v70 = type metadata accessor for Artwork();
    v71 = v219;
    (*(*(v70 - 8) + 56))(v219, 1, 1, v70);
  }

  else
  {
    v72 = type metadata accessor for Artwork();
    v73 = *(v72 - 8);
    v71 = v219;
    (*(v73 + 16))(v219, v52, v72);
    outlined destroy of ArtworkImage.Placeholder(v52, type metadata accessor for ArtworkImage.ViewModel);
    (*(v73 + 56))(v71, 0, 1, v72);
  }

  outlined init with copy of TaskPriority?(v71, v220, &_s8MusicKit7ArtworkVSgMd_0);
  v74 = v224;
  ArtworkImage.init(_:)();
  outlined destroy of TaskPriority?(v71, &_s8MusicKit7ArtworkVSgMd_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v75 = v218;
  outlined init with copy of TaskPriority?(v243, v218, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  if (v69(v75, 1, v68) == 1)
  {
    outlined destroy of TaskPriority?(v75, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v76 = v228;
    v77 = v227;
    v78 = v230;
    (*(v228 + 56))(v227, 1, 1, v230);
    v79 = v241;
  }

  else
  {
    v77 = v227;
    outlined init with copy of TaskPriority?(v75 + *(v68 + 20), v227, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of ArtworkImage.Placeholder(v75, type metadata accessor for ArtworkImage.ViewModel);
    v76 = v228;
    v78 = v230;
    v80 = (*(v228 + 48))(v77, 1, v230);
    v79 = v241;
    if (v80 != 1)
    {
      v81 = v226;
      (*(v76 + 32))(v226, v77, v78);
      goto LABEL_12;
    }
  }

  v81 = v226;
  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v82 = __swift_project_value_buffer(v78, static Artwork.CropStyle.fallback);
  (*(v76 + 16))(v81, v82, v78);
  if ((*(v76 + 48))(v77, 1, v78) != 1)
  {
    outlined destroy of TaskPriority?(v77, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  }

LABEL_12:
  v83 = v222;
  v84 = v244;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v76 + 8))(v81, v78);
  v85 = *(v229 + 8);
  v86 = v231;
  v85(v84, v231);
  v87 = v225;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v85(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v85(v87, v86);
  v85(v74, v86);
  (*(v246 + 8))(v245, v223);
  outlined destroy of ArtworkImage.Placeholder(v221, type metadata accessor for ArtworkImage.Placeholder);
  outlined destroy of TaskPriority?(v243, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  if (one-time initialization token for artworkLength != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v88 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GMd) + 36));
  v89 = v249;
  *v88 = v248;
  v88[1] = v89;
  v88[2] = v250;
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  v90 = static Corner.small;
  v91 = *algn_10063F058;
  v92 = byte_10063F060;
  v93 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd) + 36);
  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = v92;
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v94 = static Border.artwork;
  v95 = qword_10063F0B8;
  v96 = byte_10063F0C0;
  v97 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGMd) + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  *(v97 + 16) = v96;
  *(v97 + 24) = v90;
  *(v97 + 32) = v91;
  *(v97 + 40) = v92;

  static Color.black.getter();
  v98 = Color.opacity(_:)();

  v99 = v79 + *(v232 + 36);
  *v99 = v98;
  *(v99 + 8) = xmmword_1005079F0;
  *(v99 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v233;
  static Published.subscript.getter();

  v101 = Playlist.name.getter();
  v103 = v102;
  (*(v234 + 8))(v100, v235);
  *&v251 = v101;
  *(&v251 + 1) = v103;
  _sS2SSysWl_0();
  v104 = Text.init<A>(_:)();
  v106 = v105;
  v108 = v107;
  LODWORD(v251) = static HierarchicalShapeStyle.primary.getter();
  v109 = Text.foregroundStyle<A>(_:)();
  v111 = v110;
  v113 = v112;
  outlined consume of Text.Storage(v104, v106, v108 & 1);

  if (one-time initialization token for titleFont != -1)
  {
    swift_once();
  }

  v114 = Text.font(_:)();
  v116 = v115;
  v118 = v117;

  outlined consume of Text.Storage(v109, v111, v113 & 1);

  static Font.Weight.semibold.getter();
  v245 = Text.fontWeight(_:)();
  v244 = v119;
  LODWORD(v121) = v120;
  v246 = v122;
  outlined consume of Text.Storage(v114, v116, v118 & 1);

  v123 = Collaboration.Management.Model.canShare.getter();
  v124 = 1;
  if (v123)
  {
    v125 = static VerticalAlignment.bottom.getter();
    v126 = v213;
    *v213 = v125;
    *(v126 + 8) = 0x4020000000000000;
    *(v126 + 16) = 0;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0rsB0E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A_08ActivityD10ControllerA2_LLVSgQo__AUyA9_AA20_TransactionModifierVGSgtGGMd);
    v128 = v208;
    closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v208, (v126 + *(v127 + 44)));
    *(v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGMd) + 36)) = 256;
    v129 = static Edge.Set.top.getter();
    if (one-time initialization token for shareButtonStackTopPadding != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v121;
    EdgeInsets.init(_all:)();
    v130 = v126 + *(v196 + 36);
    *v130 = v129;
    *(v130 + 8) = v131;
    *(v130 + 16) = v132;
    *(v130 + 24) = v133;
    *(v130 + 32) = v134;
    *(v130 + 40) = 0;
    v135 = v200;
    closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v128, v200);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v136 = v209;
    outlined init with take of URL?(v135, v209, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMd);
    v137 = (v136 + *(v197 + 36));
    v138 = v256;
    v137[4] = v255;
    v137[5] = v138;
    v137[6] = v257;
    v139 = v252;
    *v137 = v251;
    v137[1] = v139;
    v140 = v254;
    v137[2] = v253;
    v137[3] = v140;
    KeyPath = swift_getKeyPath();
    v142 = v136;
    v143 = v206;
    outlined init with take of URL?(v142, v206, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMd);
    v144 = v143 + *(v207 + 36);
    *v144 = KeyPath;
    *(v144 + 8) = 0;
    *(v144 + 16) = 1;
    v145 = v143;
    v146 = v203;
    outlined init with take of URL?(v145, v203, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMd);
    *(v146 + *(v204 + 36)) = 256;
    LODWORD(KeyPath) = static HierarchicalShapeStyle.secondary.getter();
    v147 = v146;
    v148 = v202;
    outlined init with take of URL?(v147, v202, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMd);
    *(v148 + *(v199 + 36)) = KeyPath;
    v149 = static Font.footnote.getter();
    v150 = swift_getKeyPath();
    v151 = v148;
    v152 = v205;
    outlined init with take of URL?(v151, v205, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMd);
    v153 = (v152 + *(v198 + 36));
    *v153 = v150;
    v153[1] = v149;
    LOBYTE(v149) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v162 = v152;
    v163 = v212;
    outlined init with take of URL?(v162, v212, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMd);
    v164 = v163 + *(v201 + 36);
    *v164 = v149;
    *(v164 + 8) = v155;
    *(v164 + 16) = v157;
    *(v164 + 24) = v159;
    *(v164 + 32) = v161;
    *(v164 + 40) = 0;
    v165 = static Edge.Set.top.getter();
    if (one-time initialization token for resetLinkGroupTopPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v163;
    v175 = v210;
    outlined init with take of URL?(v174, v210, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMd);
    v176 = v175 + *(v211 + 36);
    *v176 = v165;
    *(v176 + 8) = v167;
    *(v176 + 16) = v169;
    *(v176 + 24) = v171;
    *(v176 + 32) = v173;
    *(v176 + 40) = 0;
    v177 = v215;
    outlined init with take of URL?(v175, v215, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
    v178 = v214;
    outlined init with copy of TaskPriority?(v126, v214, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd);
    v179 = v216;
    outlined init with copy of TaskPriority?(v177, v216, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
    v121 = v126;
    v180 = v217;
    outlined init with copy of TaskPriority?(v178, v217, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd);
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAEyAGyAA08ProgressG0VyAA05EmptyG0VA29_G_AA4TextVtGGACyACyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtMd);
    outlined init with copy of TaskPriority?(v179, v180 + *(v181 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
    v182 = v180 + *(v181 + 64);
    outlined destroy of TaskPriority?(v177, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
    outlined destroy of TaskPriority?(v121, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd);
    *v182 = 0x3FF0000000000000;
    *(v182 + 8) = 0;
    outlined destroy of TaskPriority?(v179, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd);
    outlined destroy of TaskPriority?(v178, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd);
    outlined init with take of URL?(v180, v242, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMd);
    v124 = 0;
    v79 = v241;
    LOBYTE(v121) = v247;
  }

  v183 = v242;
  (*(v238 + 56))(v242, v124, 1, v239);
  v247 = static VerticalAlignment.center.getter();
  v184 = v236;
  outlined init with copy of TaskPriority?(v79, v236, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd);
  v185 = v237;
  outlined init with copy of TaskPriority?(v183, v237, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd);
  v186 = v240;
  outlined init with copy of TaskPriority?(v184, v240, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd);
  v187 = v79;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVG_AA4TextVAA05TupleN0VyACyACyAA6HStackVyA24_yAaQPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyACy0eP013CollaborationOATE10ManagementOAQV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentv9TransformS0VySbGG_A40_08ActivityN10ControllerA43_LLVSgQo__ACyA50_AA012_TransactionS0VGSgtGGAA010_FixedSizeX0VGAA08_PaddingX0VG_ACyACyACyACyACyACyACyAA5GroupVyASyA26_yA24_yAA08ProgressN0VyAA05EmptyN0VA72_G_A22_tGGACyACyA22_AA012_EnvironmentvrS0VyAPSgGGA77_yAA13OpenURLActionVGGGSgGAA05_FlexwX0VGA77_ySiSgGGA62_GAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGA77_yAA4FontVSgGGA65_GA65_GAA6SpacerVtGSgA26_yA109_GtMd);
  v189 = v186 + v188[12];
  v190 = v245;
  v191 = v244;
  *v189 = v245;
  *(v189 + 8) = v191;
  v192 = v121 & 1;
  *(v189 + 16) = v192;
  *(v189 + 24) = v246;
  outlined init with copy of TaskPriority?(v185, v186 + v188[16], &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd);
  v193 = v186 + v188[20];
  outlined copy of Text.Storage(v190, v191, v192);

  outlined destroy of TaskPriority?(v183, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd);
  outlined destroy of TaskPriority?(v187, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd);
  *v193 = v247;
  *(v193 + 8) = 0;
  *(v193 + 16) = 1;
  *(v193 + 24) = 0;
  *(v193 + 32) = 1;
  outlined destroy of TaskPriority?(v185, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd);
  outlined consume of Text.Storage(v190, v191, v192);

  return outlined destroy of TaskPriority?(v184, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd);
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd);
  __chkstk_darwin(v6 - 8);
  v109 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  __chkstk_darwin(v10 - 8);
  v96 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v87 - v13;
  v15 = type metadata accessor for Collaboration.Management.View(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v18;
  v19 = (v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  __chkstk_darwin(v20);
  v95 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  __chkstk_darwin(v102);
  v94 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo_Md);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v105 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = v87 - v31;
  v101 = type metadata accessor for Collaboration.Management.View;
  outlined init with copy of Collaboration.Management.View(a1, v19, type metadata accessor for Collaboration.Management.View);
  v32 = *(v17 + 80);
  v33 = swift_allocObject();
  v100 = type metadata accessor for Collaboration.Management.View;
  outlined init with take of Collaboration.Management.View(v19, v33 + ((v32 + 16) & ~v32), type metadata accessor for Collaboration.Management.View);
  *&v24[*(v20 + 24)] = swift_getKeyPath();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v24 = 0;
  *(v24 + 1) = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
  *(v24 + 2) = v33;
  v93 = v20;
  v35 = &v24[*(v20 + 28)];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = a1;
  v90 = *(a1 + 8);
  Collaboration.Management.Model.collaborationURL.getter(v14);
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v89 = v37;
  v88 = v39;
  v87[1] = v38 + 48;
  v40 = (v39)(v14, 1) == 1;
  outlined destroy of TaskPriority?(v14, &_s10Foundation3URLVSgMd_0);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v112;
  outlined init with take of Collaboration.Management.View(v24, v112, type metadata accessor for Collaboration.Management.View.Share.Button);
  v44 = v102;
  v45 = (v43 + *(v102 + 36));
  *v45 = v41;
  v45[1] = partial apply for closure #1 in View.disabled(_:);
  v45[2] = v42;
  v46 = v36 + *(v16 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);
  v114 = v47;
  v115 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v97 = v36;
  outlined init with copy of Collaboration.Management.View(v36, v19, v101);
  v92 = v32;
  v49 = (v32 + 16) & ~v32;
  v50 = swift_allocObject();
  v101 = v19;
  outlined init with take of Collaboration.Management.View(v19, v50 + v49, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMd);
  lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v51 = v104;
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController? and conformance <A> A?, &_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMd, &_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMR, lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  v52 = v44;
  v53 = v112;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v54 = 1;
  v55 = v103;

  outlined destroy of TaskPriority?(v53, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v56 = [objc_opt_self() currentTraitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 != 6)
  {
    v58 = v101;
    outlined init with copy of Collaboration.Management.View(v97, v101, type metadata accessor for Collaboration.Management.View);
    v59 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v58, v59 + v49, type metadata accessor for Collaboration.Management.View);
    v60 = swift_getKeyPath();
    v61 = v93;
    v62 = v95;
    *&v95[*(v93 + 24)] = v60;
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    *v62 = 1;
    *(v62 + 8) = partial apply for closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    *(v62 + 16) = v59;
    v64 = v62 + *(v61 + 28);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v96;
    Collaboration.Management.Model.collaborationURL.getter(v96);
    v66 = v88(v65, 1, v89) == 1;
    outlined destroy of TaskPriority?(v65, &_s10Foundation3URLVSgMd_0);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v94;
    outlined init with take of Collaboration.Management.View(v62, v94, type metadata accessor for Collaboration.Management.View.Share.Button);
    v70 = (v69 + *(v52 + 36));
    *v70 = v67;
    v70[1] = closure #1 in View.disabled(_:)partial apply;
    v70[2] = v68;
    v71 = v69;
    v72 = v99;
    outlined init with take of URL?(v71, v99, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v73 = (v72 + *(v51 + 36));
    *v73 = closure #4 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    v73[1] = 0;
    v74 = v72;
    v75 = v98;
    outlined init with take of URL?(v74, v98, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd);
    outlined init with take of URL?(v75, v55, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd);
    v54 = 0;
  }

  v76 = v55;
  (*(v108 + 56))(v55, v54, 1, v51);
  v78 = v105;
  v77 = v106;
  v79 = *(v106 + 16);
  v80 = v113;
  v81 = v107;
  v79(v105, v113, v107);
  v82 = v109;
  outlined init with copy of TaskPriority?(v55, v109, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd);
  v83 = v110;
  v79(v110, v78, v81);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo__AMyA1_AA20_TransactionModifierVGSgtMd);
  outlined init with copy of TaskPriority?(v82, &v83[*(v84 + 48)], &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd);
  outlined destroy of TaskPriority?(v76, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd);
  v85 = *(v77 + 8);
  v85(v80, v81);
  outlined destroy of TaskPriority?(v82, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd);
  return (v85)(v78, v81);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Collaboration.Management.Model.collaborationURL.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd_0);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v2;
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v3 + 8))(v5, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v14;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedD0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGG_GMd);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v43 == 1)
  {
    *v13 = static VerticalAlignment.center.getter();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA08ProgressD0VyAA05EmptyD0VAMG_AA4TextVtGGMd);
    closure #1 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v13[*(v14 + 44)]);
    outlined init with copy of TaskPriority?(v13, v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
    v15 = v42;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v17 = v42;
    Collaboration.Management.Model.invitationExpirationString.getter();
    if (v18)
    {
      LocalizedStringKey.init(_:)();
      v19 = Text.init(_:tableName:bundle:comment:)();
      v34 = v20;
      v35 = v19;
      v33 = v21;
      v36 = v22;
      v32 = static Color.accentColor.getter();
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = v41;
      outlined init with copy of Collaboration.Management.View(v40, v41, type metadata accessor for Collaboration.Management.View);
      v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v27 = swift_allocObject();
      outlined init with take of Collaboration.Management.View(v25, v27 + v26, type metadata accessor for Collaboration.Management.View);
      v28 = &v7[*(v5 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd);
      OpenURLAction.init(handler:)();
      *v28 = v24;
      v29 = v34;
      *v7 = v35;
      *(v7 + 1) = v29;
      v7[16] = v33 & 1;
      *(v7 + 3) = v36;
      *(v7 + 4) = KeyPath;
      *(v7 + 5) = v32;
      outlined init with copy of TaskPriority?(v7, v10, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressG0VyAA05EmptyG0VAKG_AA4TextVtGGAA08ModifiedD0VyARyAnA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA13OpenURLActionVGGGMd);
  return (*(*(v30 - 8) + 56))(v17, v16, 1, v30);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  ProgressView<>.init<>()();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v8, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v16 = static NSBundle.module;
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  (*(v3 + 8))(v8, v2);
  v36 = v17;
  v37 = v19;
  _sS2SSysWl_0();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v10 + 16);
  v27(v12, v15, v9);
  v34 = v15;
  v28 = v12;
  v29 = v35;
  v27(v35, v28, v9);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEG_AA4TextVtMd) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v30[16] = v24 & 1;
  *(v30 + 3) = v26;
  outlined copy of Text.Storage(v20, v22, v24 & 1);
  v31 = *(v10 + 8);

  v31(v34, v9);
  outlined consume of Text.Storage(v20, v22, v24 & 1);

  return (v31)(v28, v9);
}

uint64_t closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 1;

  static Published.subscript.setter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v5, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.resetInvitationURL(), v8);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Collaboration.Management.Model.collaborationURL.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = outlined destroy of TaskPriority?(v4, &_s10Foundation3URLVSgMd_0);
    v10 = 0;
    v11 = 0;
LABEL_6:
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = URL.dataRepresentation.getter();
  v14 = QRCode.init(data:errorCorrectionLevel:)(v12, v13, 76, &v28);
  v15 = *(&v28 + 1);
  v16 = v29;
  v17 = v30;
  result = (*(v6 + 8))(v8, v5, v14);
  v11 = v30;
  if (!v30)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v31;
  v10 = v29;
  v27 = v28;
  outlined copy of Data._Representation(v15, v16);
  v19 = v17;
  v20 = static SafeAreaRegions.all.getter();
  v21 = static Edge.Set.all.getter();
  v22 = static Alignment.center.getter();
  v24 = v23;
  result = outlined destroy of TaskPriority?(&v28, &_s9MusicCore6QRCodeVSgMd_0);
  v25 = v27;
  v26 = v21;
LABEL_7:
  *a1 = v25;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v26;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __chkstk_darwin(v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = type metadata accessor for Playlist.Collaborator();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3, a1, v12);
  v14 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  *(a3 + v16[9]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[5]) = v14;
  v17 = a3 + v16[6];
  v21[15] = 0;

  State.init(wrappedValue:)();
  v18 = v22;
  *v17 = v21[16];
  *(v17 + 8) = v18;
  (*(v13 + 56))(v11, 1, 1, v12);
  outlined init with copy of TaskPriority?(v11, v8, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  State.init(wrappedValue:)();
  outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  v19 = v16[8];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Collaboration.Management.View(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_Md);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  outlined init with copy of Collaboration.Management.View(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v21 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v22 = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle);
  v23 = v32;
  View.buttonStyle<A>(_:)();
  v24 = v23;
  (*(v33 + 8))(v6, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v31;
  v26 = v31 + *(v8 + 56);
  v27 = *v26;
  v28 = *(v26 + 8);
  v42 = v27;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v37 = v25;
  v38 = v11;
  v39 = v24;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  View.alert(isPresented:content:)();

  return (*(v35 + 8))(v18, v29);
}

uint64_t closure #1 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 closure #2 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *&v27[0] = v11;
  *(&v27[0] + 1) = v13;
  _sS2SSysWl_0();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v18 & 1;
  v28 = v18 & 1;
  v22 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  v24 = v27[5];
  *(a1 + 96) = v27[4];
  *(a1 + 112) = v24;
  *(a1 + 128) = v27[6];
  v25 = v27[1];
  *(a1 + 32) = v27[0];
  *(a1 + 48) = v25;
  result = v27[3];
  *(a1 + 64) = v27[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v22;
  return result;
}

uint64_t closure #3 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v10 + 16);
  v48[4] = v10 + 16;
  v49 = v16;
  v16(v12, v15, v9);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  v18 = static NSBundle.module;
  v63 = v17;
  v19 = v18;
  static Locale.current.getter();
  v20 = v19;
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v15, v9);
  v48[1] = v10 + 8;
  v64 = v21;
  v65 = v23;
  v48[0] = _sS2SSysWl_0();
  v25 = Text.init<A>(_:)();
  v54 = v26;
  v55 = v25;
  v52 = v27;
  v53 = v28;
  String.LocalizationValue.init(stringLiteral:)();
  v29 = v49;
  v49(v12, v15, v9);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v24(v15, v9);
  v64 = v30;
  v65 = v32;
  v51 = Text.init<A>(_:)();
  v48[3] = v33;
  v50 = v34;
  v48[2] = v35 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v29(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v24(v15, v9);
  v64 = v36;
  v65 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  outlined init with copy of Collaboration.Management.View(v58, v59, type metadata accessor for Collaboration.Management.View);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v44, v46 + v45, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v39, v41, v43 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *(a1 + 8);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v11, a3, v14);

  type metadata accessor for Collaboration.Management.View(0);
  specialized Environment.wrappedValue.getter(v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #6 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined init with copy of Collaboration.Management.View(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Playlist.Collaborator] and conformance [A], &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #7 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *(v23 + 16);

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v23 = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v13._object = 0x80000001004D2100;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v4 + 16))(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v4 + 8))(v9, v3);
  v23 = v15;
  v24 = v17;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Collaboration.Management.View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6ToggleVyAA4TextVGGMd) + 44);
  outlined init with copy of Collaboration.Management.View(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Management.View(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for Collaboration.Management.View);
  outlined init with copy of Collaboration.Management.View(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Management.View(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for Collaboration.Management.View);
  Binding.init(get:set:)();
  return Toggle.init(isOn:label:)();
}

uint64_t closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = (v9 & 1) == 0;
  v15[15] = v11;

  static Published.subscript.setter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5_0(0, 0, v8, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:), v13);
}

uint64_t closure #3 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

__n128 closure #10 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v43 & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v23 = static NSBundle.module;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    _sS2SSysWl_0();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v27 & 1;
    v41.n128_u64[0] = v27 & 1;
    v41.n128_u64[1] = v28;
    LOBYTE(v42) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *(v43 + 16);

  v11 = (v4 + 16);
  if (v10)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v11)(v6, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v12 = static NSBundle.module;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    *&v43 = v13;
    *(&v43 + 1) = v15;
    _sS2SSysWl_0();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    v21 = v20 & 1;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v41.n128_u64[0] = v20 & 1;
    v41.n128_u64[1] = v22;
    LOBYTE(v42) = 1;
LABEL_9:
    outlined copy of Text.Storage(v16, v17, v21);

    _ConditionalContent<>.init(storage:)();
    v40 = v43;
    v41 = v44;
    v42 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v18, v19, v21);

    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v11)(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v32 = static NSBundle.module;
  static Locale.current.getter();
  v33 = String.init(localized:table:bundle:locale:comment:)();
  v35 = v34;
  (*(v4 + 8))(v9, v3);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  _sS2SSysWl_0();
  *&v40 = Text.init<A>(_:)();
  *(&v40 + 1) = v36;
  v41.n128_u64[0] = v37 & 1;
  v41.n128_u64[1] = v38;
  v42 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  result = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v43;
  *(a1 + 16) = result;
  *(a1 + 32) = v30;
  *(a1 + 33) = v31;
  return result;
}

uint64_t closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  static ButtonRole.close.getter();
  outlined init with copy of Collaboration.Management.View(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Collaboration.Management.View);
  return Button<>.init(role:action:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  outlined init with copy of TaskPriority?(a1 + *(v12 + 20), v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

void closure #2 in Collaboration.Management.View.body.getter(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    specialized Environment.wrappedValue.getter(v6);
    DismissAction.callAsFunction()();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t one-time initialization function for collaborationGlyphFont()
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = static Font.largeTitle.getter();
    v1 = result;
  }

  else
  {
    static Font.title2.getter();
    v1 = Font.bold()();
  }

  static Collaboration.Management.View.Specs.collaborationGlyphFont = v1;
  return result;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Font.Design();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static Font.system(size:weight:design:)();
  result = outlined destroy of TaskPriority?(v2, &_s7SwiftUI4FontV6DesignOSgMd);
  static Collaboration.Flow.Specs.collaborationGlyphFont = v4;
  return result;
}

uint64_t one-time initialization function for cellHeight()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 68.0;
  }

  static Collaboration.Management.View.Specs.cellHeight = *&v0;
  return result;
}

uint64_t one-time initialization function for titleFont(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (one-time initialization token for isVision != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t one-time initialization function for shareButtonFontWeight()
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = static Font.Weight.semibold.getter();
  }

  else
  {
    result = static Font.Weight.regular.getter();
  }

  static Collaboration.Management.View.Specs.shareButtonFontWeight = v1;
  return result;
}

uint64_t one-time initialization function for shareButtonStackTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 0.0;
  }

  static Collaboration.Management.View.Specs.shareButtonStackTopPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for resetLinkGroupTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 0.0;
  }

  static Collaboration.Management.View.Specs.resetLinkGroupTopPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for controlLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 44.0;
  }

  static Collaboration.Management.View.Specs.controlLength = *&v0;
  return result;
}

uint64_t one-time initialization function for artworkLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 169.0;
  }

  static Collaboration.Management.View.Specs.artworkLength = *&v0;
  return result;
}

uint64_t one-time initialization function for avatarLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 48.0;
  }

  static Collaboration.Management.View.Specs.avatarLength = *&v0;
  return result;
}

uint64_t one-time initialization function for keyColor()
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = static Color.accentColor.getter();
  }

  else
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = Color.init(_:)();
  }

  static Collaboration.Management.View.Specs.keyColor = result;
  return result;
}

uint64_t one-time initialization function for maxDynamicSize()
{
  v0 = type metadata accessor for DynamicTypeSize();
  __swift_allocate_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  v1 = __swift_project_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t one-time initialization function for dynamicSizeRange()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  __swift_allocate_value_buffer(v4, static Collaboration.Management.View.Specs.dynamicSizeRange);
  v5 = __swift_project_value_buffer(v4, static Collaboration.Management.View.Specs.dynamicSizeRange);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v1 + 16))(v3, v6, v0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_Md);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_Md);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAJQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAVyAVyAVy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalY0VyAVyAVyA1_09MusicCoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yAVyAA08ProgressC0VyAA05EmptyC0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_Y13ShapeModifierVyAA9RectangleVGG_AVyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_Md);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v29 - v12;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA11_GAA012_AspectRatioG0VGSg_AA6VStackVyAIyAA4TextVSg_A_yA30_A30_GSgtGGAA6SpacerVA_yAKyAA08ProgressD0VyAA05EmptyD0VA41_GA11_GAIy0kU013CollaborationOA0_E10ManagementOAYV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A54_tGGSgtGGMd);
  closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
  v15 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  v16 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd);
  v17 = v1 + *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  View.alert(isPresented:content:)();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  static AccessibilityChildBehavior.combine.getter();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  View.accessibilityElement(children:)();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  static AccessibilityTraits.isButton.getter();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = v4;
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA12_FrameLayoutVGAA05TupleH0Vy9MusicCore13CollaborationO0mnB0E10ManagementO0H0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A2_tG_GMd);
  __chkstk_darwin(v129);
  v132 = &v124 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd);
  __chkstk_darwin(v131);
  v128 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMd);
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v130 = &v124 - v8;
  v9 = type metadata accessor for Playlist();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v15 - 8);
  v143 = &v124 - v16;
  v17 = type metadata accessor for Artwork.CropStyle();
  v144 = *(v17 - 8);
  v145 = v17;
  __chkstk_darwin(v17);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v19 - 8);
  v138 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v124 - v22;
  v23 = type metadata accessor for ArtworkImage();
  v146 = *(v23 - 8);
  v147 = v23;
  __chkstk_darwin(v23);
  v149 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v139 = &v124 - v26;
  __chkstk_darwin(v27);
  v141 = &v124 - v28;
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v152 = type metadata accessor for ArtworkImage.ReusePolicy();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v165 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ArtworkImage.Placeholder(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  __chkstk_darwin(v32 - 8);
  v134 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v36 - 8);
  v136 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v124 - v39;
  __chkstk_darwin(v40);
  v164 = &v124 - v41;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMd);
  v153 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = &v124 - v42;
  v43 = type metadata accessor for DynamicTypeSize();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v124 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd);
  __chkstk_darwin(v50 - 8);
  v158 = &v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v124 - v53;
  v157 = v3;
  v55 = a1;
  _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v49);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v43, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v44 + 16))(v46, v56, v43);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize);
  v57 = dispatch thunk of static Comparable.< infix(_:_:)();
  v58 = *(v44 + 8);
  v58(v46, v43);
  v58(v49, v43);
  v59 = 1;
  v60 = 1;
  v61 = v55;
  v62 = v54;
  v63 = v167;
  v166 = v54;
  if ((v57 & 1) == 0)
  {
    v64 = v164;
    Playlist.Collaborator.artworkViewModel.getter(v164);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    v66 = v148;
    (*(*(v65 - 8) + 56))(v148, 8, 11, v65);
    v190 = 1;
    v188 = 1;
    v186 = 1;
    (*(v150 + 104))(v165, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v152);
    v67 = v134;
    outlined init with copy of Collaboration.Management.View(v66, v134, type metadata accessor for ArtworkImage.Placeholder);
    v68 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v69 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v67, v69 + v68, type metadata accessor for ArtworkImage.Placeholder);
    v134 = v69;
    v70 = v69 + ((v33 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v70 = 0;
    *(v70 + 8) = v190;
    *(v70 + 9) = *v189;
    *(v70 + 12) = *&v189[3];
    *(v70 + 16) = 0;
    *(v70 + 24) = v188;
    *(v70 + 25) = *v187;
    *(v70 + 28) = *&v187[3];
    *(v70 + 32) = 0;
    *(v70 + 40) = v186;
    *(v70 + 41) = 2;
    v71 = v135;
    outlined init with copy of TaskPriority?(v64, v135, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v71, 1, v72) == 1)
    {
      outlined destroy of TaskPriority?(v71, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      v74 = type metadata accessor for Artwork();
      v75 = v137;
      (*(*(v74 - 8) + 56))(v137, 1, 1, v74);
    }

    else
    {
      v76 = type metadata accessor for Artwork();
      v77 = *(v76 - 8);
      v75 = v137;
      (*(v77 + 16))(v137, v71, v76);
      outlined destroy of ArtworkImage.Placeholder(v71, type metadata accessor for ArtworkImage.ViewModel);
      (*(v77 + 56))(v75, 0, 1, v76);
    }

    outlined init with copy of TaskPriority?(v75, v138, &_s8MusicKit7ArtworkVSgMd_0);
    ArtworkImage.init(_:)();
    outlined destroy of TaskPriority?(v75, &_s8MusicKit7ArtworkVSgMd_0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v78 = v136;
    outlined init with copy of TaskPriority?(v164, v136, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v79 = v73(v78, 1, v72);
    v124 = v61;
    if (v79 == 1)
    {
      outlined destroy of TaskPriority?(v78, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      v80 = v143;
      v81 = v144;
      v82 = v145;
      (*(v144 + 56))(v143, 1, 1, v145);
      v83 = v142;
      v59 = 1;
    }

    else
    {
      v80 = v143;
      outlined init with copy of TaskPriority?(v78 + *(v72 + 20), v143, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
      outlined destroy of ArtworkImage.Placeholder(v78, type metadata accessor for ArtworkImage.ViewModel);
      v81 = v144;
      v82 = v145;
      v84 = (*(v144 + 48))(v80, 1, v145);
      v83 = v142;
      v59 = 1;
      if (v84 != 1)
      {
        (*(v81 + 32))(v142, v80, v82);
LABEL_15:
        v86 = v139;
        v87 = v149;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v81 + 8))(v83, v82);
        v88 = v147;
        v89 = *(v146 + 8);
        v89(v87, v147);
        v90 = v141;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v89(v86, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
        v91 = v140;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v89(v90, v88);
        v89(v151, v88);
        (*(v150 + 8))(v165, v152);
        outlined destroy of ArtworkImage.Placeholder(v148, type metadata accessor for ArtworkImage.Placeholder);
        outlined destroy of TaskPriority?(v164, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        v92 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd) + 36);
        *v92 = 0;
        *(v92 + 8) = 0;
        *(v92 + 16) = 2;
        if (one-time initialization token for avatarLength != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v93 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GMd) + 36));
        v94 = v181;
        *v93 = v180;
        v93[1] = v94;
        v93[2] = v182;
        v62 = v166;
        v63 = v167;
        v95 = v91 + *(v167 + 36);
        *v95 = 0;
        *(v95 + 8) = 257;
        outlined init with take of URL?(v91, v62, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMd);
        v60 = 0;
        v61 = v124;
        goto LABEL_18;
      }
    }

    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v85 = __swift_project_value_buffer(v82, static Artwork.CropStyle.fallback);
    (*(v81 + 16))(v83, v85, v82);
    if ((*(v81 + 48))(v80, 1, v82) != 1)
    {
      outlined destroy of TaskPriority?(v80, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v153 + 56))(v62, v60, 1, v63);
  v167 = static HorizontalAlignment.leading.getter();
  LOBYTE(v170[0]) = 1;
  closure #1 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(v61, v178);
  *&v177[23] = v178[1];
  *&v177[39] = v178[2];
  *&v177[55] = v178[3];
  v177[71] = v179;
  *&v177[7] = v178[0];
  LODWORD(v165) = LOBYTE(v170[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v154;
  static Published.subscript.getter();

  v97 = Playlist.isOwner.getter();
  (*(v155 + 8))(v96, v156);
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = Playlist.Collaborator.isPending.getter();
    if (v98 != 2 && (v98 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v99 = specialized Set.contains(_:)(v61, v170[0]);

      if (v99)
      {
        v100 = v128;
        ProgressView<>.init<>()();
        if (one-time initialization token for controlLength != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v101 = (v100 + *(v131 + 36));
        v102 = v184;
        *v101 = v183;
        v101[1] = v102;
        v101[2] = v185;
        outlined init with copy of TaskPriority?(v100, v132, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd);
        lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd);
        v103 = v130;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TaskPriority?(v100, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd);
      }

      else
      {
        v104 = v127;
        outlined init with copy of Collaboration.Management.View(v61, v127, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        v105 = (*(v125 + 80) + 16) & ~*(v125 + 80);
        v106 = swift_allocObject();
        outlined init with take of Collaboration.Management.View(v104, v106 + v105, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        outlined init with copy of Collaboration.Management.View(v61, v104, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        v107 = swift_allocObject();
        outlined init with take of Collaboration.Management.View(v104, v107 + v105, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);

        v108 = v132;
        *v132 = 1;
        *(v108 + 1) = partial apply for closure #2 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter;
        *(v108 + 2) = v106;
        v108[24] = 0;
        *(v108 + 4) = partial apply for closure #3 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter;
        *(v108 + 5) = v107;

        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd);
        lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd);
        v103 = v130;
        _ConditionalContent<>.init(storage:)();
      }

      outlined init with take of URL?(v103, v163, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMd);
      v59 = 0;
    }
  }

  v109 = v163;
  (*(v159 + 56))(v163, v59, 1, v160);
  v110 = v62;
  v111 = v158;
  outlined init with copy of TaskPriority?(v110, v158, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd);
  v112 = v161;
  outlined init with copy of TaskPriority?(v109, v161, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd);
  v113 = v162;
  outlined init with copy of TaskPriority?(v111, v162, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSg_AA6VStackVyAA05TupleN0VyAA4TextVSg_ASyA24_A24_GSgtGGAA6SpacerVASyACyAA08ProgressN0VyAA05EmptyN0VA35_GA3_GA22_y0eP013CollaborationOATE10ManagementOAQV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A48_tGGSgtMd);
  v115 = (v113 + v114[12]);
  v116 = v167;
  v168[0] = v167;
  v168[1] = 0;
  v117 = v165;
  LOBYTE(v169[0]) = v165;
  *(v169 + 1) = *v177;
  *(&v169[1] + 1) = *&v177[16];
  *(&v169[2] + 1) = *&v177[32];
  *(&v169[3] + 1) = *&v177[48];
  *(&v169[4] + 1) = *&v177[64];
  v118 = v169[0];
  *v115 = v167;
  v115[1] = v118;
  v119 = v169[1];
  v120 = v169[2];
  v121 = v169[3];
  *(v115 + 73) = *(&v169[3] + 9);
  v115[3] = v120;
  v115[4] = v121;
  v115[2] = v119;
  v122 = v113 + v114[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  outlined init with copy of TaskPriority?(v112, v113 + v114[20], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd);
  outlined init with copy of TaskPriority?(v168, v170, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMd);
  outlined destroy of TaskPriority?(v109, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd);
  outlined destroy of TaskPriority?(v166, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd);
  outlined destroy of TaskPriority?(v112, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd);
  v170[0] = v116;
  v170[1] = 0;
  v171 = v117;
  v173 = *&v177[16];
  v174 = *&v177[32];
  v175 = *&v177[48];
  v176 = *&v177[64];
  v172 = *v177;
  outlined destroy of TaskPriority?(v170, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMd);
  return outlined destroy of TaskPriority?(v111, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd);
}

uint64_t Playlist.Collaborator.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v28 - v9;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v2 + 56);
  v17(&v28 - v15, 1, 1, v1, v14);
  Playlist.Collaborator.artwork.getter();
  v33 = *(v2 + 48);
  if (v33(v12, 1, v1) == 1)
  {
    v29 = v17;
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0);
    type metadata accessor for UIAction(0, &_sSo16MPArtworkCatalogCML_0);
    v18 = Playlist.Collaborator.name.getter();
    v30 = v7;
    v20 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v18, v19, 0, 1);
    v7 = v30;

    if (v20)
    {
      v21 = v31;
      Artwork.init(_:)();
      outlined destroy of TaskPriority?(v16, &_s8MusicKit7ArtworkVSgMd_0);
      (v29)(v21, 0, 1, v1);
      outlined init with take of URL?(v21, v16, &_s8MusicKit7ArtworkVSgMd_0);
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v16, &_s8MusicKit7ArtworkVSgMd_0);
    (*(v2 + 32))(v16, v12, v1);
    (v17)(v16, 0, 1, v1);
  }

  outlined init with copy of TaskPriority?(v16, v7, &_s8MusicKit7ArtworkVSgMd_0);
  if (v33(v7, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s8MusicKit7ArtworkVSgMd_0);
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
    v22 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v24 = v32;
    (*(v2 + 16))(v32, v4, v1);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    v26 = *(v25 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v2 + 8))(v4, v1);
    outlined destroy of TaskPriority?(v16, &_s8MusicKit7ArtworkVSgMd_0);
    v27 = type metadata accessor for Artwork.CropStyle();
    (*(*(v27 - 8) + 56))(v24 + v26, 0, 1, v27);
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

uint64_t closure #1 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v101 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = v96 - v10;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v96[1] = v15;
  static Published.subscript.getter();

  v16 = Playlist.isOwner.getter();
  (*(v12 + 8))(v14, v11);
  v17 = Playlist.Collaborator.displayName(isDeviceHost:)(v16 & 1);
  if (v18)
  {
    v97 = v7;
    v98 = v6;
    v109 = v17;
    v110 = v18;
    _sS2SSysWl_0();
    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    LODWORD(v109) = static HierarchicalShapeStyle.primary.getter();
    v24 = Text.foregroundStyle<A>(_:)();
    v26 = v25;
    v28 = v27;
    outlined consume of Text.Storage(v19, v21, v23 & 1);

    if (one-time initialization token for collaboratorRowTitleFont != -1)
    {
      swift_once();
    }

    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    outlined consume of Text.Storage(v24, v26, v28 & 1);

    v36 = v31 & 1;
    outlined copy of Text.Storage(v29, v35, v31 & 1);
    v102 = v33;

    v6 = v98;
    v7 = v97;
  }

  else
  {
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v102 = 0;
  }

  v37 = Playlist.Collaborator.isPending.getter();
  if (v37 == 2 || (v37 & 1) == 0 || (Collaboration.Management.Model.isPending.getter() & 1) != 0)
  {
    v38 = Playlist.Collaborator.handle.getter();
    if (!v39)
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = -1;
      goto LABEL_17;
    }

    v40 = v38;
    v41 = v39;
    v98 = v35;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 64;
    v42._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    v43._countAndFlagsBits = v40;
    v43._object = v41;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v43);

    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
    v45 = v100;
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v7 + 16))(v99, v45, v6);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v97 = v29;
    v46 = static NSBundle.module;
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    v49 = v48;
    (*(v7 + 8))(v45, v6);
    v109 = v47;
    v110 = v49;
    _sS2SSysWl_0();
    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    LODWORD(v109) = static HierarchicalShapeStyle.secondary.getter();
    v55 = Text.foregroundStyle<A>(_:)();
    v57 = v56;
    v59 = v58;
    outlined consume of Text.Storage(v50, v52, v54 & 1);

    if (one-time initialization token for collaboratorRowSubtitleFont != -1)
    {
      swift_once();
    }

    v60 = Text.font(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    outlined consume of Text.Storage(v55, v57, v59 & 1);

    v104 = v60;
    v105 = v62;
    v106 = v64 & 1;
    v107 = v66;
    v108 = 1;
    _ConditionalContent<>.init(storage:)();
    v67 = v109;
    v68 = v110;
    v69 = v111;
    v70 = v112;
    v71 = v113;
    outlined copy of _ConditionalContent<Text, Text>.Storage(v109, v110, v111);
    v29 = v97;
  }

  else
  {
    v98 = v35;
    v75 = v100;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v7 + 16))(v99, v75, v6);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v76 = static NSBundle.module;
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v79 = v78;
    (*(v7 + 8))(v75, v6);
    v109 = v77;
    v110 = v79;
    _sS2SSysWl_0();
    v80 = Text.init<A>(_:)();
    v82 = v81;
    v84 = v83;
    LODWORD(v109) = static HierarchicalShapeStyle.secondary.getter();
    v85 = Text.foregroundStyle<A>(_:)();
    v87 = v86;
    v89 = v88;
    outlined consume of Text.Storage(v80, v82, v84 & 1);

    if (one-time initialization token for collaboratorRowSubtitleFont != -1)
    {
      swift_once();
    }

    v90 = Text.font(_:)();
    v92 = v91;
    v94 = v93;
    v101 = v95;

    outlined consume of Text.Storage(v85, v87, v89 & 1);

    v104 = v90;
    v105 = v92;
    v106 = v94 & 1;
    v107 = v101;
    v108 = 0;
    _ConditionalContent<>.init(storage:)();
    v67 = v109;
    v68 = v110;
    v69 = v111;
    v70 = v112;
    v71 = v113;
    outlined copy of _ConditionalContent<Text, Text>.Storage(v109, v110, v111);
  }

  v35 = v98;
LABEL_17:
  v72 = v102;
  outlined copy of Text?(v29, v35, v36, v102);
  outlined copy of _ConditionalContent<Text, Text>?(v67, v68, v69, v70, v71);
  outlined consume of Text?(v29, v35, v36, v72);
  outlined consume of _ConditionalContent<Text, Text>?(v67, v68, v69, v70, v71);
  v73 = v103;
  *v103 = v29;
  v73[1] = v35;
  v73[2] = v36;
  v73[3] = v72;
  v73[4] = v67;
  v73[5] = v68;
  v73[6] = v69;
  v73[7] = v70;
  *(v73 + 64) = v71;
  outlined consume of _ConditionalContent<Text, Text>?(v67, v68, v69, v70, v71);
  return outlined consume of Text?(v29, v35, v36, v72);
}

uint64_t Playlist.Collaborator.displayName(isDeviceHost:)(char a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  result = Playlist.Collaborator.name.getter();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (Playlist.Collaborator.isHost.getter())
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v10);

      v11._countAndFlagsBits = 0x2972656E774F2820;
      v11._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
      String.LocalizationValue.init(stringInterpolation:)();
      if (a1)
      {
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }
      }

      else if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v12 = static NSBundle.module;
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t a1, const char *a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  return Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, a3);
}

uint64_t closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd_0);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - v9;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = Playlist.isOwner.getter();
  (*(v11 + 8))(v13, v10);
  if (v14 == 2 || (v14 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v15 = Playlist.Collaborator.isPending.getter(), v15 == 2) || (v15 & 1) != 0)
  {
    v16 = 1;
    v17 = v34;
  }

  else
  {
    v19 = v32;
    static ButtonRole.cancel.getter();
    v20 = type metadata accessor for ButtonRole();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = v33;
    outlined init with copy of Collaboration.Management.View(a1, v33, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v23 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v21, v23 + v22, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    v24 = v30;
    Button.init(role:action:label:)();
    v25 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v27 = (v24 + *(v7 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v34;
    outlined init with take of URL?(v24, v34, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    v17 = v28;
    v16 = 0;
  }

  return (*(v8 + 56))(v17, v16, 1, v7);
}

uint64_t closure #1 in closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = type metadata accessor for Playlist.Collaborator();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  outlined init with copy of TaskPriority?(v11, v8, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd);
  State.wrappedValue.setter();
  outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  v15 = (a1 + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v18 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Management] Remove swipe action triggered", v21, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v10 + 16);
  v49(v12, v15, v9);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v16 = static NSBundle.module;
  v17 = static NSBundle.module;
  v48[3] = v16;
  v18 = v17;
  static Locale.current.getter();
  v19 = v18;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v48[1] = v10 + 8;
  v63 = v20;
  v64 = v22;
  v48[2] = _sS2SSysWl_0();
  v24 = Text.init<A>(_:)();
  v54 = v25;
  v55 = v24;
  v52 = v26;
  v53 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  v28 = v49;
  v49(v12, v15, v9);
  static Locale.current.getter();
  v48[0] = v10 + 16;
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v23(v15, v9);
  v63 = v29;
  v64 = v31;
  v32 = Text.init<A>(_:)();
  v50 = v33;
  v51 = v32;
  v48[4] = v34 & 1;
  v48[5] = v35;
  String.LocalizationValue.init(stringLiteral:)();
  v28(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v23(v15, v9);
  v63 = v36;
  v64 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  outlined init with copy of Collaboration.Management.View(v58, v59, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v44, v46 + v45, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v39, v41, v43 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd);
  State.wrappedValue.getter();
  Collaboration.Management.Model.remove(_:)(v2);
  return outlined destroy of TaskPriority?(v2, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
}

uint64_t Collaboration.Management.View.Share.title.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Collaboration.Management.View.Share.Button.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = type metadata accessor for ColorScheme();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  v6 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd);
  __chkstk_darwin(v52);
  v53 = &v52 - v17;
  outlined init with copy of Collaboration.Management.View(v1, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View.Share.Button);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View.Share.Button);
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v10 + 32))(v16, v12, v9);
  v20 = &v16[*(v14 + 44)];
  v21 = v64;
  *(v20 + 4) = v63;
  *(v20 + 5) = v21;
  *(v20 + 6) = v65;
  v22 = v60;
  *v20 = v59;
  *(v20 + 1) = v22;
  v23 = v62;
  *(v20 + 2) = v61;
  *(v20 + 3) = v23;
  if (Collaboration.Management.View.Share.Button.isEnabled.getter())
  {
    if (one-time initialization token for keyColor != -1)
    {
      swift_once();
    }

    v24 = static Collaboration.Management.View.Specs.keyColor;
  }

  else
  {
    v25 = [objc_opt_self() tertiaryLabelColor];
    v24 = Color.init(_:)();
  }

  KeyPath = swift_getKeyPath();
  v27 = v53;
  outlined init with take of URL?(v16, v53, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd);
  v28 = (v27 + *(v52 + 36));
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = v54;
  Collaboration.Management.View.Share.Button.colorScheme.getter(v54);
  v31 = v55;
  v30 = v56;
  (*(v2 + 104))(v55, enum case for ColorScheme.light(_:), v56);
  v32 = static ColorScheme.== infix(_:_:)();
  v33 = *(v2 + 8);
  v33(v31, v30);
  v33(v29, v30);
  v34 = objc_opt_self();
  v35 = &selRef_systemBackgroundColor;
  if ((v32 & 1) == 0)
  {
    v35 = &selRef_secondarySystemBackgroundColor;
  }

  v36 = [v34 *v35];
  v37 = Color.init(_:)();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMd);
  v39 = v57;
  v40 = (v57 + *(v38 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd);
  v42 = v40 + *(v41 + 52);
  v43 = *(type metadata accessor for RoundedRectangle() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *v40 = v37;
  *(v40 + *(v41 + 56)) = 256;
  return outlined init with take of URL?(v27, v39, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd);
}

__n128 closure #2 in Collaboration.Management.View.Share.Button.body.getter@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  closure #2 in closure #2 in Collaboration.Management.View.Share.Button.body.getter(a1, &v7[*(v5 + 52)]);
  if (*a1)
  {
    v12 = 2.5;
  }

  else
  {
    v12 = 0.0;
  }

  outlined init with take of URL?(v7, v11, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd);
  v13 = &v11[*(v9 + 44)];
  *v13 = 0;
  *(v13 + 1) = v12;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v11, a2, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t closure #2 in closure #2 in Collaboration.Management.View.Share.Button.body.getter@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  __chkstk_darwin(v50);
  v4 = v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAcAE10fontWeightyQrAA4FontV0J0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo__s19PartialRangeThroughVyAFGQo_Md);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[1] = *a1;
  v13 = Image.init(systemName:)();
  v14 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = KeyPath;
  v58 = v14;
  static Font.Weight.semibold.getter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  v17 = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  if (one-time initialization token for dynamicSizeRange != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v50, static Collaboration.Management.View.Specs.dynamicSizeRange);
  outlined init with copy of TaskPriority?(v18, v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v55 = v12;
  v19 = v49;
  View.dynamicTypeSize<A>(_:)();
  outlined destroy of TaskPriority?(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  (*(v48 + 8))(v7, v19);
  v56 = Collaboration.Management.View.Share.title.getter();
  v57 = v20;
  _sS2SSysWl_0();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  if (one-time initialization token for shareButtonFont != -1)
  {
    swift_once();
  }

  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;

  outlined consume of Text.Storage(v21, v23, v25 & 1);

  if (one-time initialization token for shareButtonFontWeight != -1)
  {
    swift_once();
  }

  v31 = Text.fontWeight(_:)();
  v33 = v32;
  v35 = v34;
  v50 = v36;
  outlined consume of Text.Storage(v26, v28, v30 & 1);

  v37 = v51;
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v55, v53);
  v41 = v54;
  *v54 = 0;
  *(v41 + 8) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo__s19PartialRangeThroughVyAHGQo_AA4TextVACtMd);
  v39(v41 + v42[12], v37, v40);
  v43 = v41 + v42[16];
  *v43 = v31;
  *(v43 + 1) = v33;
  v35 &= 1u;
  v43[16] = v35;
  *(v43 + 3) = v50;
  v44 = v41 + v42[20];
  *v44 = 0x4020000000000000;
  v44[8] = 0;
  outlined copy of Text.Storage(v31, v33, v35);
  v45 = *(v38 + 8);

  v45(v55, v40);
  outlined consume of Text.Storage(v31, v33, v35);

  return (v45)(v37, v40);
}

uint64_t Collaboration.Management.View.Share.Button.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for Collaboration.Management.View.Share.Button(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t Collaboration.Management.View.Share.Button.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  outlined init with copy of TaskPriority?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #1 in Collaboration.Management.View.Moderation.Button.body.getter()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t closure #2 in Collaboration.Management.View.Moderation.Button.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v16 = Image.init(systemName:)();
  static Font.subheadline.getter();
  v6 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v8 = static Color.white.getter();
  v9 = swift_getKeyPath();
  if (one-time initialization token for controlLength != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a1)
  {
    v10 = static Color.red.getter();
  }

  else
  {
    v10 = static Color.green.getter();
  }

  v11 = v10;
  v12 = static Edge.Set.all.getter();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (one-time initialization token for dynamicSizeRange != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, static Collaboration.Management.View.Specs.dynamicSizeRange);
  outlined init with copy of TaskPriority?(v13, v5, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  View.dynamicTypeSize<A>(_:)();
  outlined destroy of TaskPriority?(v5, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return outlined destroy of TaskPriority?(v21, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd);
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Management.View.Moderation.Button@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGANyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleO0VyAUGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAFGQo_Md);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v15 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  v16 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
  static ButtonBorderShape.circle.getter();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v0);

  Collaboration.Management.View.init(model:)(v3);
  v5 = UIHostingController.init(rootView:)();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)()
{
  v0 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = UIHostingController.init(rootView:)();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void @objc Collaboration.Management.ViewController.viewWillLayoutSubviews()(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void @objc Collaboration.Management.ViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (one-time initialization token for padding != -1)
    {
      swift_once();
    }

    v14 = *&static HI.Modal.padding + *&static HI.Modal.padding;
    if (v11 + *&static HI.Modal.padding + *&static HI.Modal.padding > *&a2)
    {
      v11 = *&a2 - (*&static HI.Modal.padding + *&static HI.Modal.padding);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Collaboration.Management.ActivityViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Collaboration.Management.ActivityViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance Collaboration.Management.ActivityViewController()
{
  lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *Collaboration.Management.QRCodeView.makeUIViewController(context:)()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v9;
  v19 = *(v0 + 32);
  outlined init with copy of Collaboration.Management.QRCodeView(v0, v17);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v16[1] = String.init(localized:table:bundle:locale:comment:)();
  v13 = *(v3 + 8);
  v13(v8, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v5, v8, v2);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13(v8, v2);
  v14 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v18);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Collaboration.Management.QRCodeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Collaboration.Management.QRCodeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance Collaboration.Management.QRCodeView()
{
  lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return outlined init with take of URL?(a3, a4 + *(v6 + 20), &_s8MusicKit7ArtworkVSgMd_0);
}

uint64_t PlaylistCurators.View.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  outlined init with copy of TaskPriority?(v1 + *(v10 + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of URL?(v9, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0F0VyAIyAMyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAKyAKyAKyAKyAKy01_n4Kit_aB012ArtworkImageV01_nt9Internal_aB0E18artworkPlaceholderyQrx0nT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAzQE0Y0OA9_VAA26_PreferenceWritingModifierVyAQ29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AQ0Y13StyleModifierVGA22_GAQ20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AKyAKyAKyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGAQ05HoverD8ModifierA34_LLVG_AA6SpacerVSgtGGMd);
  closure #1 in PlaylistCurators.View.body.getter(v0, &v3[*(v4 + 44)]);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<HStack<TupleView<(HStack<ForEach<[(offset: Int, element: PlaylistCurators.Curator)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)>>, HoverViewModifier>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd);
  View.artworkCaching(id:limit:)();
  return outlined destroy of TaskPriority?(v3, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd);
}

uint64_t closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  __chkstk_darwin(v53);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMd);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
  __chkstk_darwin(v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0x4018000000000000;
  v16[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0F0VyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAWyAWyAWyAWy01_l4Kit_aB012ArtworkImageV01_lt9Internal_aB0E18artworkPlaceholderyQrx0lT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalS0VyAWyAWyAzOE0Y0OA9_VAA26_PreferenceWritingModifierVyAO29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AO0Y13StyleModifierVGA22_GAO20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAO06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AWyAWyAWyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGMd);
  closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1, &v16[*(v25 + 44)]);
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  v26 = unk_10063F070;
  v27 = byte_10063F078;
  if (byte_10063F078)
  {
    v28 = *&static Corner.medium;
  }

  else
  {
    v28 = *&static Corner.medium + -3.0;
  }

  outlined init with take of URL?(v16, v21, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMd);
  v29 = &v21[*(v17 + 36)];
  *v29 = v28;
  *(v29 + 1) = v26;
  v29[16] = v27;
  *(v29 + 3) = 0x4008000000000000;
  *(v29 + 4) = 0;
  *(v29 + 20) = 257;
  outlined init with take of URL?(v21, v24, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
  v30 = v58;
  PlaylistCurators.View.horizontalSizeClass.getter(v58);
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v55);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = *(v53 + 48);
  outlined init with copy of TaskPriority?(v30, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of TaskPriority?(v11, &v6[v33], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v34 = *(v32 + 48);
  v35 = v34(v6, 1, v31);
  v53 = v24;
  if (v35 != 1)
  {
    v50 = v11;
    v38 = v52;
    outlined init with copy of TaskPriority?(v6, v52, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v39 = v31;
    if (v34(&v6[v33], 1, v31) != 1)
    {
      v40 = &v6[v33];
      v41 = v51;
      (*(v32 + 32))(v51, v40, v31);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass);
      v42 = v38;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v32 + 8);
      v43(v41, v39);
      outlined destroy of TaskPriority?(v50, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of TaskPriority?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v43(v42, v39);
      v37 = v53;
      outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_13;
    }

    outlined destroy of TaskPriority?(v50, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of TaskPriority?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v32 + 8))(v38, v31);
    goto LABEL_11;
  }

  outlined destroy of TaskPriority?(v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of TaskPriority?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v34(&v6[v33], 1, v31) != 1)
  {
LABEL_11:
    outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v36 = 0;
    v37 = v53;
    goto LABEL_13;
  }

  outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v36 = 1;
  v37 = v53;
LABEL_13:
  v44 = v56;
  outlined init with copy of TaskPriority?(v37, v56, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
  v45 = v37;
  v46 = v57;
  outlined init with copy of TaskPriority?(v44, v57, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVG_AA6SpacerVSgtMd) + 48);
  *v47 = 0;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = (v36 & 1) == 0;
  outlined destroy of TaskPriority?(v45, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
  return outlined destroy of TaskPriority?(v44, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd);
}

uint64_t closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  __chkstk_darwin(v3 - 8);
  v70 = &v55[-v4];
  v5 = type metadata accessor for Font.TextStyle();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v67 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Text.Suffix();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd) - 8;
  __chkstk_darwin(v68);
  v69 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v55[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd);
  __chkstk_darwin(v15 - 8);
  v66 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  PlaylistCurators.View.horizontalSizeClass.getter(v14);
  v20 = specialized static PlaylistCurators.View.Specs.faceholeSpacing(for:)(v14);
  outlined destroy of TaskPriority?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  *v19 = static VerticalAlignment.center.getter();
  v19[1] = v20;
  *(v19 + 16) = 0;
  v65 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyASyASyASyASy01_k4Kit_aB012ArtworkImageV01_ks9Internal_aB0E18artworkPlaceholderyQrx0kS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalR0VyASyASyAvKE0X0OA5_VAA26_PreferenceWritingModifierVyAK29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA19_GGQo_AK0X13StyleModifierVGA18_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderD8ModifierA30_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGGMd);
  v62 = a1;
  closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1);
  v74 = PlaylistCurators.View.curatorsString.getter();
  v75 = v21;
  _sS2SSysWl_0();
  v58 = Text.init<A>(_:)();
  v57 = v22;
  v59 = v23;
  v74 = v58;
  v75 = v22;
  v56 = v24 & 1;
  v76 = v24 & 1;
  v77 = v23;
  String.nonBreakingSpace.unsafeMutableAddressor();

  Image.init(systemName:)();

  v25 = Text.init(_:)();
  v27 = v26;
  v29 = v28;
  v30 = static Text.+ infix(_:_:)();
  v32 = v31;
  v34 = v33;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v35 = v61;
  static Text.Suffix.alwaysVisible(_:)();
  outlined consume of Text.Storage(v30, v32, v34 & 1);

  v36 = v60;
  View.textSuffix(_:)();
  (*(v63 + 8))(v35, v64);
  outlined consume of Text.Storage(v58, v57, v56);

  KeyPath = swift_getKeyPath();
  v38 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd) + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  v39 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGMd) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = type metadata accessor for Image.Scale();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v67;
  PlaylistCurators.View.fontTextStyle.getter(v67);
  v44 = type metadata accessor for Font.Design();
  v45 = v70;
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v46 = static Font.system(_:design:weight:)();
  outlined destroy of TaskPriority?(v45, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v71 + 8))(v43, v72);
  v47 = swift_getKeyPath();
  v48 = (v36 + *(v68 + 44));
  *v48 = v47;
  v48[1] = v46;
  v50 = v65;
  v49 = v66;
  outlined init with copy of TaskPriority?(v65, v66, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd);
  v51 = v69;
  outlined init with copy of TaskPriority?(v36, v69, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd);
  v52 = v73;
  outlined init with copy of TaskPriority?(v49, v73, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGG_AOyAOyAOyAAA1_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA43__Qo_AA015_EnvironmentKeyZ8ModifierVySiSgGGA48_yAA0Q0V5ScaleOGGA48_yAA4FontVSgGGtMd);
  outlined init with copy of TaskPriority?(v51, v52 + *(v53 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd);
  outlined destroy of TaskPriority?(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd);
  outlined destroy of TaskPriority?(v50, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd);
  outlined destroy of TaskPriority?(v51, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd);
  return outlined destroy of TaskPriority?(v49, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCurators.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  outlined init with copy of Collaboration.Management.View(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  outlined init with take of Collaboration.Management.View(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: PlaylistCurators.Curator)] and conformance [A], &_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    PlaylistCurators.View.faceholeView(_:)(a2, a4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t PlaylistCurators.View.faceholeView(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v125 = a2;
  v2 = type metadata accessor for Artwork.CropStyle();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkImage();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v127 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v95 - v7;
  __chkstk_darwin(v8);
  v121 = &v95 - v9;
  __chkstk_darwin(v10);
  v119 = &v95 - v11;
  v12 = type metadata accessor for ArtworkImage.ReusePolicy();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v130 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v95 - v26;
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v30 - 8);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v98 = &v95 - v33;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_AL19_ConditionalContentVyAL08ModifiedN0VyASyAC0a4CoreD0E0I0OAOVAL26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAL12_FrameLayoutVGAL14GeometryReaderVyA4_GGQo_Md);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v95 - v37;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd);
  __chkstk_darwin(v104);
  v111 = &v95 - v38;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd);
  __chkstk_darwin(v108);
  v109 = &v95 - v39;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  __chkstk_darwin(v107);
  v115 = &v95 - v40;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd);
  __chkstk_darwin(v112);
  v113 = &v95 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v42 - 8);
  v44 = &v95 - v43;
  PlaylistCurators.View.horizontalSizeClass.getter(&v95 - v43);
  v45 = specialized static PlaylistCurators.View.Specs.avatarLength(for:)(v44);
  outlined destroy of TaskPriority?(v44, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v46 = type metadata accessor for PlaylistCurators.Curator(0);
  outlined init with copy of TaskPriority?(v122 + *(v46 + 20), v29, &_s8MusicKit7ArtworkVSgMd_0);
  static Artwork.CropStyle.boundedBox.getter();
  v47 = *(v129 + 56);
  v122 = v2;
  v97 = v129 + 56;
  v96 = v47;
  v47(v22, 0, 1, v2);
  v48 = type metadata accessor for Artwork();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v29, 1, v48) == 1)
  {
    outlined destroy of TaskPriority?(v22, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of TaskPriority?(v29, &_s8MusicKit7ArtworkVSgMd_0);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
  }

  else
  {
    (*(v49 + 32))(v36, v29, v48);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(v22, &v36[*(v50 + 20)], &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v52 = v126;
  (*(*(v51 - 8) + 56))(v126, 8, 11, v51);
  v100 = v45;
  v138 = 0;
  v136 = 0;
  v134 = 1;
  v53 = *(v128 + 104);
  v120 = v12;
  v53(v130, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  v54 = v101;
  outlined init with copy of Collaboration.Management.View(v52, v101, type metadata accessor for ArtworkImage.Placeholder);
  v55 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v54, v57 + v55, type metadata accessor for ArtworkImage.Placeholder);
  v58 = v57 + v56;
  *v58 = v45;
  *(v58 + 8) = v138;
  *(v58 + 9) = *v137;
  *(v58 + 12) = *&v137[3];
  *(v58 + 16) = v45;
  *(v58 + 24) = v136;
  *(v58 + 25) = *v135;
  *(v58 + 28) = *&v135[3];
  *(v58 + 32) = 0;
  *(v58 + 40) = v134;
  *(v58 + 41) = 1;
  v59 = v98;
  outlined init with copy of TaskPriority?(v36, v98, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v60 = *(*(v50 - 8) + 48);
  v61 = v36;
  if (v60(v59, 1, v50) == 1)
  {
    outlined destroy of TaskPriority?(v59, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v62 = 1;
    v63 = v102;
  }

  else
  {
    v63 = v102;
    (*(v49 + 16))(v102, v59, v48);
    outlined destroy of ArtworkImage.Placeholder(v59, type metadata accessor for ArtworkImage.ViewModel);
    v62 = 0;
  }

  (*(v49 + 56))(v63, v62, 1, v48);
  outlined init with copy of TaskPriority?(v63, v106, &_s8MusicKit7ArtworkVSgMd_0);
  v64 = v119;
  ArtworkImage.init(_:width:height:)();
  outlined destroy of TaskPriority?(v63, &_s8MusicKit7ArtworkVSgMd_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v106 = v61;
  v65 = v103;
  outlined init with copy of TaskPriority?(v61, v103, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v66 = v60(v65, 1, v50);
  v67 = v120;
  if (v66 == 1)
  {
    outlined destroy of TaskPriority?(v65, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v68 = v105;
    v69 = v122;
    v96(v105, 1, 1, v122);
    v70 = v129;
    v71 = v118;
  }

  else
  {
    v68 = v105;
    outlined init with copy of TaskPriority?(v65 + *(v50 + 20), v105, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of ArtworkImage.Placeholder(v65, type metadata accessor for ArtworkImage.ViewModel);
    v70 = v129;
    v69 = v122;
    v72 = (*(v129 + 48))(v68, 1, v122);
    v71 = v118;
    if (v72 != 1)
    {
      (*(v70 + 32))(v118, v68, v69);
      goto LABEL_15;
    }
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v73 = __swift_project_value_buffer(v69, static Artwork.CropStyle.fallback);
  (*(v70 + 16))(v71, v73, v69);
  if ((*(v70 + 48))(v68, 1, v69) != 1)
  {
    outlined destroy of TaskPriority?(v68, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  }

LABEL_15:
  v74 = v117;
  v75 = v127;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v70 + 8))(v71, v69);
  v76 = v124;
  v77 = *(v123 + 8);
  v77(v75, v124);
  v78 = v121;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v77(v74, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  v79 = v110;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v77(v78, v76);
  v77(v64, v76);
  (*(v128 + 8))(v130, v67);
  outlined destroy of ArtworkImage.Placeholder(v126, type metadata accessor for ArtworkImage.Placeholder);
  outlined destroy of TaskPriority?(v106, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v80 = v111;
  v81 = &v111[*(v104 + 36)];
  v82 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v81 + v82) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  *v81 = closure #1 in PlaylistCurators.View.faceholeView(_:);
  v81[1] = 0;
  (*(v114 + 32))(v80, v79, v116);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v83 = v109;
  outlined init with take of URL?(v80, v109, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd);
  v84 = (v83 + *(v108 + 36));
  v85 = v132;
  *v84 = v131;
  v84[1] = v85;
  v84[2] = v133;
  v86 = v115;
  outlined init with take of URL?(v83, v115, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd);
  v87 = v86 + *(v107 + 36);
  *v87 = 0;
  *(v87 + 8) = 0;
  *(v87 + 16) = 2;
  if (one-time initialization token for faceholeBorder != -1)
  {
    swift_once();
  }

  v88 = static PlaylistCurators.View.Specs.faceholeBorder;
  v89 = qword_10060C5A0;
  v90 = byte_10060C5A8;
  v91 = v86;
  v92 = v113;
  outlined init with take of URL?(v91, v113, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  v93 = v92 + *(v112 + 36);
  *v93 = v88;
  *(v93 + 8) = v89;
  *(v93 + 16) = v90;
  *(v93 + 24) = 0;
  *(v93 + 32) = 0;
  *(v93 + 40) = 2;
  outlined init with take of URL?(v92, v125, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd);
}

uint64_t PlaylistCurators.View.curatorsString.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  __chkstk_darwin(v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v0 + 16);
  if (v14)
  {
    outlined init with copy of Collaboration.Management.View(*v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v15 = v14 - 1;
    if (v15)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v13);
      v18._countAndFlagsBits = 2106912;
      v18._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
      v22[1] = v15;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v19._countAndFlagsBits = 0x7328726568744F20;
      v19._object = 0xE900000000000029;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v3 + 16))(v5, v8, v2);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v20 = static NSBundle.module;
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      countAndFlagsBits = v13->_countAndFlagsBits;
    }

    outlined destroy of ArtworkImage.Placeholder(v13, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  PlaylistCurators.View.horizontalSizeClass.getter(&v27 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  outlined init with copy of TaskPriority?(v15, v7, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of TaskPriority?(v12, &v7[v16], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of TaskPriority?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      outlined destroy of TaskPriority?(v7, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_9:
      v18 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v7, v29, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of TaskPriority?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    outlined destroy of TaskPriority?(v7, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v20, v1);
  outlined destroy of TaskPriority?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of TaskPriority?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v23(v21, v1);
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v24 = *v18;
  v25 = type metadata accessor for Font.TextStyle();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t closure #1 in PlaylistCurators.View.faceholeView(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = Color.init(_:)();
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v4, a1 + 40, &_s7SwiftUI10ShapeStyle_pSgMd);
}

uint64_t one-time initialization function for borderColor()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = closure #1 in variable initialization expression of static PlaylistCurators.View.Specs.borderColor;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v4[3] = &block_descriptor_59;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  static PlaylistCurators.View.Specs.borderColor = v2;
  return result;
}

id closure #1 in variable initialization expression of static PlaylistCurators.View.Specs.borderColor(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t one-time initialization function for faceholeBorder()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  v0 = static PlaylistCurators.View.Specs.borderColor;
  result = Color.init(uiColor:)();
  static PlaylistCurators.View.Specs.faceholeBorder = result;
  qword_10060C5A0 = 0x3FF0000000000000;
  byte_10060C5A8 = 1;
  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  *v5 = a1;

  return v4(v7, 0);
}

void (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PlaylistCurators.ViewController.configuration.modify;
}

void PlaylistCurators.ViewController.configuration.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = dispatch thunk of UIHostingController.rootView.modify();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v1);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return UIHostingController.init(rootView:)();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return UIHostingController.init(rootView:)();
}

id Collaboration.Management.ViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance ClearBackground()
{
  type metadata accessor for ClearBackground.Controller();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClearBackground(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClearBackground(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ClearBackground()
{
  lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t key path setter for Collaboration.Management.Model.pendingCollaborators : Collaboration.Management.Model()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  __chkstk_darwin(v2 - 8);
  outlined init with copy of TaskPriority?(a1, &v5 - v3, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL specialized static PlaylistCurators.Curator.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v17 = *(v11 + 48);
    outlined init with copy of TaskPriority?(a1 + v16, v13, &_s8MusicKit7ArtworkVSgMd_0);
    outlined init with copy of TaskPriority?(a2 + v16, &v13[v17], &_s8MusicKit7ArtworkVSgMd_0);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
        return 1;
      }
    }

    else
    {
      outlined init with copy of TaskPriority?(v13, v10, &_s8MusicKit7ArtworkVSgMd_0);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSg_ADtMd);
    return 0;
  }

  return result;
}

uint64_t specialized Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v68 = type metadata accessor for Playlist();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v8;
  __chkstk_darwin(v9);
  v61 = &v56 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd);
  v13 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
  Published.init(initialValue:)();
  v21 = *(v17 + 32);
  v21(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v21(v3 + v22, v19, v16);
  v23 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v71[0] = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd);
  Published.init(initialValue:)();
  (*(v13 + 32))(v3 + v23, v15, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v71[0]) = 0;
  Published.init(initialValue:)();
  v25 = *(v59 + 32);
  v26 = v60;
  v25(v3 + v24, v12, v60);
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v71[0]) = 0;
  Published.init(initialValue:)();
  v25(v3 + v27, v12, v26);
  v28 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v71);
  outlined destroy of ApplicationCapabilities(v71);
  v70 = BYTE1(v71[0]);
  Published.init(initialValue:)();
  v25(v3 + v28, v12, v26);
  v29 = v63;
  v30 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v59 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v64;
  v32 = v67;
  v33 = *(v67 + 16);
  v34 = v61;
  v35 = v68;
  v33(v61, v29, v68);
  swift_beginAccess();
  v60 = v33;
  v33(v62, v34, v35);

  v36 = v35;
  Published.init(initialValue:)();
  v37 = *(v32 + 8);
  v38 = v34;
  v64 = v32 + 8;
  v62 = v37;
  v37(v34, v36);
  swift_endAccess();
  v39 = v58;
  v40 = v29;
  Playlist.collaboration.getter();
  v41 = type metadata accessor for Playlist.Collaboration();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v39, 1, v41) == 1)
  {
    outlined destroy of TaskPriority?(v39, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
    v43 = 0;
  }

  else
  {
    v43 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v42 + 8))(v39, v41);
  }

  swift_beginAccess();
  v69 = v43 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v44 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v45 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v46 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v47 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, partial apply for closure #1 in Collaboration.Management.Model.init(manager:playlist:), v46);
  *(v3 + v59) = v47;

  v48 = type metadata accessor for TaskPriority();
  v49 = v66;
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v50 = v68;
  (v60)(v34, v40, v68);
  v51 = v67;
  v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (*(v51 + 32))(v54 + v52, v38, v50);
  *(v54 + v53) = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v49, &async function pointer to partial apply for closure #2 in Collaboration.Management.Model.init(manager:playlist:), v54);

  v62(v40, v50);
  return v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA0F0PAAE16headerProminenceyQrAA0H0OFQOyAA7SectionVyAiAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAA15ModifiedContentVyAA6VStackVyAGyAXyAXyAXyAXy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaHRzlFQOy_AA012_ConditionalT0VyAXyAXyA1_0v4CoreB0E11PlaceholderOAHVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderF8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAGyAXyAXyAA6HStackVyAGyAiAE5sheetApqRQrAU_AVqd__yctAaHRd__lFQOyAXy0V4Core13CollaborationOA14_E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityF10ControllerA55_LLVSgQo__AXyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AXyAXyAXyAXyAXyAXyAXyAA5GroupVyA13_yA46_yAGyAA08ProgressF0VyAA05EmptyF0VA84_G_A44_tGGAXyAXyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0C17RowInsetsTraitKeyVGG_AXyAXyA52_06QRCodeF0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AGyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAXyAXyAXyA46_yAGyAXyAXyAXyAXyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAGyA44__A44_SgtGGAGyA121__AiAE5alertApRQrAU_AA5AlertVyXEtFQOyAiAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAXyAXyAXyAXyAXyAiAE10fontWeightyQrA114_6WeightVSgFQOyAXyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowF0A55_LLVGtGSgA84_G_Qo__AGyANyA44_A219_A84_G_ANyA84_AiAEA164_ApRQrAU_A166_yXEtFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yAXyAXyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgANyA44_A220_A84_GtGSgANyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #2 in Collaboration.Management.View.body.getter(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  closure #2 in Collaboration.Management.View.body.getter(a1, a2);
}

uint64_t lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for PlaylistCurators.View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type PlaylistCurators.View and conformance PlaylistCurators.View, type metadata accessor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for Collaboration.Management.Model()
{
  type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Published<[Playlist.Collaborator]>, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Published<Set<Playlist.Collaborator>>, &_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Published<Playlist>, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &_s7Combine9PublishedVySbGML_0, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for ArtworkImage.ViewModel??, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1003499AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_100349B50(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for Collaboration.Management.View()
{
  type metadata accessor for ObservedObject<Collaboration.Management.Model>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<DismissAction>, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Playlist>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for State<UIActivityViewController?>, &_sSo24UIActivityViewControllerCSgMd, &_sSo24UIActivityViewControllerCSgMR, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<Collaboration.Management.Model>()
{
  if (!lazy cache variable for type metadata for ObservedObject<Collaboration.Management.Model>)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<Collaboration.Management.Model>);
    }
  }
}

uint64_t sub_100349FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034A070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PlaylistCurators.Curator()
{
  type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Artwork?, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034A1E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034A2B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PlaylistCurators.View()
{
  type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034A494()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034A540()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<HStack<TupleView<(HStack<ForEach<[(offset: Int, element: PlaylistCurators.Curator)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)>>, HoverViewModifier>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034A5EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10034A7E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Playlist.Collaborator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void type metadata completion function for Collaboration.Management.View.CollaboratorRowView()
{
  type metadata accessor for Playlist.Collaborator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for State<Playlist.Collaborator?>, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Playlist>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<[Playlist.Collaborator]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10034AC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034AD10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Collaboration.Management.View.Share.Button()
{
  _syycMa_0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Published<Playlist>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground()
{
  result = lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground;
  if (!lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground;
  if (!lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAEyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyAGyAA08ProgressE0VyAA05EmptyE0VA37_GA7_GAEy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWL_0, &_s7SwiftUI6ButtonVyAA4TextVGMd_0);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Collaboration.Management.View(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Collaboration.Management.View(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ArtworkImage.Placeholder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined copy of _ConditionalContent<Text, Text>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined copy of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<Text, Text>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10034BAD8()
{
  v1 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _LayoutRoot<VStackLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA06VStackC0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAOSgGG_Qo__s19PartialRangeThroughVyAJGQo_AA4TextVAEtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10034BF50()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_189Tm()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.remove(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.remove(_:)(a1, v6, v7, v8, v1 + v5);
}

double specialized static PlaylistCurators.View.Specs.faceholeSpacing(for:)(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  outlined init with copy of TaskPriority?(a1, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of TaskPriority?(v16, &v9[v17], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      return -9.0;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v9, v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v21(v12, v2);
  outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10034C9B8()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1, a2, v7, a3);
}

uint64_t sub_10034CBC0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed PlaylistCurators.Curator) -> (@out ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMd);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type PlaceholderStyleModifier and conformance PlaceholderStyleModifier, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized static PlaylistCurators.View.Specs.avatarLength(for:)(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  outlined init with copy of TaskPriority?(a1, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of TaskPriority?(v16, &v9[v17], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      return 25.0;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v9, v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  outlined destroy of TaskPriority?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v21(v12, v2);
  outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034D3B4@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.defaultMinListRowHeight.getter();
  *a1 = v3;
  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ClearBackground> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVy09MusicCoreB005ClearC033_BED032AFC26D7293E5DA491DDAECC514LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.end()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.end()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

uint64_t objectdestroy_277Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

uint64_t partial apply for closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:)(a1, a2, v2 + v6, v7);
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.resetInvitationURL()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.resetInvitationURL()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.Share.Button and conformance Collaboration.Management.View.Share.Button, type metadata accessor for Collaboration.Management.View.Share.Button);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAEyAA4TextV_A6_SgtGGAEyAA6SpacerV_AA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyA13_AAE10fontWeightyQrAM6WeightVSgFQOyAGyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWL_0, &_s7SwiftUI6ButtonVyAA4TextVGMd_0);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_269Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10034F0D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10034F118()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Collaboration.Management.Model.init(manager:playlist:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034F310@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWl_0()
{
  result = _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0;
  if (!_sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0)
  {
    type metadata accessor for UIAction(255, &_sSo17OS_dispatch_queueCML_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE12swipeActions4edge15allowsFullSwipeALQrAA14HorizontalEdgeO_Sbqd__yXEtAaDRd__lFQOyACyAA6HStackVyAA05TupleE0VyACyACyACy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalD0VyACyACyA1_09MusicCoreB0E11PlaceholderOADVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yACyAA08ProgressE0VyAA05EmptyE0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOADV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_D13ShapeModifierVyAA9RectangleVGG_ACyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&_s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWL_0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation);
  }

  return result;
}

uint64_t sub_10034F888()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd);
    type metadata accessor for BorderlessButtonStyle();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_1);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        outlined init with copy of AnyHashable(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v25 + 8, v20);
        outlined destroy of TaskPriority?(v24, &_ss11AnyHashableV3key_yp5valuetMd_0);
        v21 = v18;
        outlined init with take of Any(v20, v22);
        v13 = v21;
        outlined init with take of Any(v22, v23);
        outlined init with take of Any(v23, &v21);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = outlined init with take of Any(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = outlined init with take of Any(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      outlined destroy of TaskPriority?(v24, &_ss11AnyHashableV3key_yp5valuetMd_0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for Artwork();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = outlined assign with take of Artwork?(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t outlined assign with take of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return outlined assign with take of Artwork?(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = type metadata accessor for Playlist.Collaborator();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Collaboration.Flow(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v7 + 16))(v9, v12, v6);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v20 = static NSBundle.module;
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v7 + 8))(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd_0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004F2400;
      v22 = Playlist.Collaborator.name.getter();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = _sS2Ss7CVarArg10FoundationWl_0();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = static String.localizedStringWithFormat(_:_:)();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v7 + 16))(v9, v12, v6);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v29 = static NSBundle.module;
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v7 + 16))(v9, v12, v6);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v30 = static NSBundle.module;
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    (*(v7 + 8))(v12, v6);
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    outlined destroy of TaskPriority?(v15, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v92 = hasProfileEdit;
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v91 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v87 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_SbtMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v87 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v87 - v13;
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for String.LocalizationValue();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Collaboration.Flow(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v25 = v93;
      v26 = v96;
      (*(v93 + 16))(v95, v20, v96);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v27 = static NSBundle.module;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      outlined destroy of Collaboration.Flow(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v93;
      v40 = (v93 + 16);
      v41 = v20;
      v42 = v95;
      v43 = v96;
      String.LocalizationValue.init(stringLiteral:)();
      (*v40)(v42, v41, v43);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v46 = static NSBundle.module;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v89 = v32;
  v90 = v34;
  outlined init with take of URL?(v34, v14, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  v88 = v14;
  outlined init with copy of TaskPriority?(v14, v11, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  if ((*(v91 + 48))(v11, 1, v3) == 1)
  {
    v36 = v93;
    v37 = (v93 + 16);
    v38 = v20;
    String.LocalizationValue.init(stringLiteral:)();
    v48 = v96;
    (*v37)(v95, v38, v96);
    v49 = v88;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v50 = static NSBundle.module;
    static Locale.current.getter();
    v28 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    outlined destroy of TaskPriority?(v49, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
    v52 = type metadata accessor for URL();
    (*(*(v52 - 8) + 8))(v90 + v89, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    outlined init with take of Collaboration.Flow.Collaborator(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v92)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v90;
    if (object)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0x100000000000002ELL;
      v62._object = 0x80000001004D2660;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v8);
      v63._countAndFlagsBits = 4204576;
      v63._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
      v64._countAndFlagsBits = countAndFlagsBits;
      v64._object = object;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v64);
      v65._countAndFlagsBits = 0xD000000000000031;
      v65._object = 0x80000001004D2690;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
LABEL_26:
      String.LocalizationValue.init(stringInterpolation:)();
      v72 = v93;
      v73 = v96;
      (*(v93 + 16))(v95, v44, v96);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v74 = static NSBundle.module;
      static Locale.current.getter();
      v28 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v75;
      (*(v72 + 8))(v44, v73);
LABEL_32:
      outlined destroy of TaskPriority?(v88, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
      outlined destroy of Collaboration.Flow(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v83 = type metadata accessor for URL();
      (*(*(v83 - 8) + 8))(v61 + v89, v83);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  outlined init with take of Collaboration.Flow.Collaborator(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v92)
  {
    v66 = v5[1]._countAndFlagsBits;
    v67 = v5[1]._object;
    v61 = v90;
    if (v67)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v68._countAndFlagsBits = 0x100000000000002ALL;
      v68._object = 0x80000001004D2570;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v5);
      v69._countAndFlagsBits = 4204576;
      v69._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
      v70._countAndFlagsBits = v66;
      v70._object = v67;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v70);
      v71._countAndFlagsBits = 0xD000000000000048;
      v71._object = 0x80000001004D25A0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v71);
      goto LABEL_26;
    }

LABEL_29:
    String.LocalizationValue.init(stringLiteral:)();
    v76 = v93;
    v77 = v96;
    (*(v93 + 16))(v95, v44, v96);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v78 = static NSBundle.module;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v76 + 8))(v44, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd_0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1004F2400;
    v80 = v45->_countAndFlagsBits;
    v81 = v45->_object;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = _sS2Ss7CVarArg10FoundationWl_0();
    *(v79 + 32) = v80;
    *(v79 + 40) = v81;

    v28 = static String.localizedStringWithFormat(_:_:)();
    v30 = v82;

    goto LABEL_32;
  }

LABEL_19:
  String.LocalizationValue.init(stringLiteral:)();
  v53 = v93;
  v54 = v96;
  (*(v93 + 16))(v95, v44, v96);
  v55 = v90;
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v56 = static NSBundle.module;
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  outlined destroy of TaskPriority?(v88, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  outlined destroy of Collaboration.Flow(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = type metadata accessor for URL();
  (*(*(v58 - 8) + 8))(v55 + v89, v58);
LABEL_33:
  v84 = v28;
  v85 = v30;
  result._object = v85;
  result._countAndFlagsBits = v84;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Collaboration.Flow(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of Collaboration.Flow(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v4 + 16))(v6, v9, v3);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v16 = static NSBundle.module;
      static Locale.current.getter();
      v14 = String.init(localized:table:bundle:locale:comment:)();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v17 = static NSBundle.module;
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v9, v3);
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    outlined destroy of TaskPriority?(v12, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  closure #1 in variable initialization expression of Collaboration.Flow.View._isRestricted();
  State.init(wrappedValue:)();
  *a9 = v25;
  *(a9 + 8) = v26;
  State.init(wrappedValue:)();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = implicit closure #2 in implicit closure #1 in variable initialization expression of Collaboration.Flow.View._profileContext;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  outlined init with take of Collaboration.Flow.Collaborator(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = type metadata accessor for Playlist();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOyAKy9MusicCore13CollaborationO0lmB0E4FlowO010GlyphImageD033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA31AccessibilityAttachmentModifierVGSg_AKyAKyAmAEANyQrSbFQOyAKyAKyAA4TextVAA010_FixedSizeG0VGA1_G_Qo_AYyAA13TextAlignmentOGGAA08_PaddingG0VGAKyAKyAKyAKyA13_A17_GAYyAA5ColorVSgGGA20_GA20_GAKyAT014ProfileEditingD0AVLLVA20_GSgAA012_ConditionalJ0VyA35_yAIyAKyAKyAKyAKyAA6ToggleVyA9_GA20_GAA24_BackgroundStyleModifierVyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameG0VG_AKyAKyAKyAKyAKyAKyAKyA12_A53_GA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA1_GA20_GA20_GA20_GAmAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAKyAT12ActionButtonAVLLVAA01_Z20KeyTransformModifierVySbGG_Qo_tGA80_GAIyAKyAKyAKy01_l4Kit_aB007ArtworkQ0V01_l12KitInternal_aB0E18artworkPlaceholderyQrx0L3Kit7ArtworkVSg_So6CGSizeVA24_tcAaLRzlFQOy_AR015CNSwiftUIAvatarD0VQo_AA06_FrameG0VGA47_yAA6CircleVGGA20_G_AKyA76_A20_GA106_tGGtGGMd);
  return closure #1 in Collaboration.Flow.View.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = type metadata accessor for Artwork.CropStyle();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = type metadata accessor for ArtworkImage();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = type metadata accessor for ArtworkImage.ReusePolicy();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = type metadata accessor for Playlist.Collaborator();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = type metadata accessor for URL();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51_GAGyAIyAIyAIy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA29_RzlFQOy_A42_015CNSwiftUIAvatarG0VQo_AA01_uL0VGAYyAA6CircleVGGAPG_AIyA47_APGA79_tG_GMd);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51__GMd);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0lmB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGG_Qo_Md);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = type metadata accessor for Locale();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for String.LocalizationValue();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMd);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageC033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_Md);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  outlined init with copy of Collaboration.Flow(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  outlined destroy of Collaboration.Flow(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (one-time initialization token for collaborationGlyphFont != -1)
    {
      swift_once();
    }

    v92 = static Collaboration.Flow.Specs.collaborationGlyphFont;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    v94 = lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.bold(_:)();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    View.accessibilityHidden(_:)();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGMd);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = _sS2SSysWl_0();
  v98 = Text.init<A>(_:)();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (one-time initialization token for subtitleFont != -1)
  {
    swift_once();
  }

  v105 = static Collaboration.Flow.Specs.subtitleFont;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v107 = v481;
  View.bold(_:)();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  outlined destroy of TaskPriority?(v544, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = static Edge.Set.top.getter();
  v111 = v477;
  outlined init with copy of Collaboration.Flow(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  outlined destroy of Collaboration.Flow(v111, type metadata accessor for Collaboration.Flow);
  EdgeInsets.init(_all:)();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  outlined init with take of URL?(v107, v479, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMd);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  outlined init with take of URL?(v120, v488, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = Text.init<A>(_:)();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = static Color.secondary.getter();
  v131 = swift_getKeyPath();
  v471 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = static Edge.Set.bottom.getter();
  if (one-time initialization token for subtitleBottomPadding != -1)
  {
    swift_once();
  }

  v473 = v131;
  EdgeInsets.init(_all:)();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
      v149 = StateObject.wrappedValue.getter();
      v150 = type metadata accessor for Collaboration.Flow.ProfileEditingView(0);
      v151 = v397;
      outlined init with copy of Collaboration.Flow(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      outlined init with take of URL?(v151, v490, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
  StateObject.wrappedValue.getter();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  outlined init with copy of Collaboration.Flow(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.projectedValue.getter();
      v200 = v403;
      Toggle.init(isOn:label:)();
      v201 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMd) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = static Edge.Set.all.getter();
      *(v200 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGMd) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(type metadata accessor for RoundedRectangle() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = type metadata accessor for RoundedCornerStyle();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v221 = v404;
      outlined init with take of URL?(v200, v404, &_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      outlined init with take of URL?(v221, v447, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      State.wrappedValue.getter();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      String.LocalizationValue.init(stringLiteral:)();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v239 = static NSBundle.module;
      static Locale.current.getter();
      v240 = String.init(localized:table:bundle:locale:comment:)();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = Text.init<A>(_:)();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = static HierarchicalShapeStyle.secondary.getter();
      v248 = static Font.footnote.getter();
      v249 = swift_getKeyPath();
      v250 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = static Edge.Set.top.getter();
      if (one-time initialization token for toggleDescriptionTextTopPadding != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      outlined init with copy of Collaboration.Flow(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      outlined init with take of Collaboration.Flow.Collaborator(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      State.init(wrappedValue:)();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = partial apply for closure #2 in closure #1 in Collaboration.Flow.View.body.getter;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = closure #1 in View.disabled(_:)partial apply;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = State.projectedValue.getter();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
      v491 = lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      v287 = v438;
      View.alert(isPresented:content:)();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      outlined destroy of TaskPriority?(&v513, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
      v288 = v420;
      outlined init with copy of TaskPriority?(v447, v420, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      outlined init with copy of TaskPriority?(v288, v422, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VG_ACyACyACyACyACyACyACyACyAgA010_FixedSizeH0VGAYGAA022_EnvironmentKeyWritingK0VyAA0F9AlignmentOGGAA011_ForegroundjK0VyAA017HierarchicalShapeJ0VGGA4_yAA4FontVSgGGAJGAJGAJGAA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_tu9TransformK0VySbGG_Qo_tMd);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      outlined init with copy of TaskPriority?(v493, v499, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd);
      outlined init with copy of TaskPriority?(v498, v499, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      outlined destroy of TaskPriority?(v499, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd);
      outlined destroy of TaskPriority?(v288, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
      outlined init with copy of TaskPriority?(v291, v441, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
      v295 = v442;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TaskPriority?(v295, v459, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TaskPriority?(v493, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd);
      outlined destroy of TaskPriority?(v295, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
      outlined destroy of TaskPriority?(v291, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
      (v470)(v438, v449);
      outlined destroy of TaskPriority?(v447, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    Playlist.Collaborator.artworkViewModel.getter(v445);
    v166 = Playlist.Collaborator.name.getter();
    v168 = v167;
    if (one-time initialization token for avatarSizeLength != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    outlined init with copy of TaskPriority?(v165, v407, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      outlined destroy of TaskPriority?(v170, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      v175 = type metadata accessor for Artwork();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = type metadata accessor for Artwork();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      outlined destroy of Collaboration.Flow(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    outlined init with copy of TaskPriority?(v174, v410, &_s8MusicKit7ArtworkVSgMd_0);
    ArtworkImage.init(_:width:height:)();
    outlined destroy of TaskPriority?(v174, &_s8MusicKit7ArtworkVSgMd_0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v231 = v408;
    outlined init with copy of TaskPriority?(v445, v408, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    if ((v464)(v231, 1, v171) == 1)
    {
      outlined destroy of TaskPriority?(v231, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      outlined init with copy of TaskPriority?(v231 + *(v171 + 20), v399, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
      outlined destroy of Collaboration.Flow(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v298(v234, v297);
        lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
        v300 = v414;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        outlined destroy of TaskPriority?(v445, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v301 = (v300 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        outlined init with take of URL?(v300, v411, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        outlined init with take of URL?(v311, v455, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
        v313 = v451;
        String.LocalizationValue.init(stringLiteral:)();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v317 = static NSBundle.module;
        v318 = static NSBundle.module;
        v463 = v317;
        v319 = v318;
        static Locale.current.getter();
        v320 = v319;
        v321 = String.init(localized:table:bundle:locale:comment:)();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        outlined init with copy of Collaboration.Flow(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        outlined init with take of Collaboration.Flow.Collaborator(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = static Edge.Set.top.getter();
        v338 = v448;
        v339 = v337;
        EdgeInsets.init(_all:)();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = partial apply for closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        String.LocalizationValue.init(stringLiteral:)();
        v345 = v452;
        (v464)(v338, v344, v452);
        static Locale.current.getter();
        v465 = String.init(localized:table:bundle:locale:comment:)();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        outlined init with copy of Collaboration.Flow(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        outlined init with take of Collaboration.Flow.Collaborator(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = partial apply for closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        outlined init with copy of TaskPriority?(v455, v423, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        outlined init with copy of TaskPriority?(v358, v424, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
        v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VG_ACy0eO013CollaborationOARE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA4_GA14_tMd);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        outlined init with copy of TaskPriority?(&v521, v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined init with copy of TaskPriority?(&v529, v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined init with copy of TaskPriority?(v492, v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined init with copy of TaskPriority?(v493, v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined destroy of TaskPriority?(v498, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        outlined destroy of TaskPriority?(v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined destroy of TaskPriority?(v358, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
        outlined init with copy of TaskPriority?(v359, v459, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TaskPriority?(&v529, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined destroy of TaskPriority?(&v521, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd);
        outlined destroy of TaskPriority?(v359, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
        outlined destroy of TaskPriority?(v455, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v236 = __swift_project_value_buffer(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      outlined destroy of TaskPriority?(v232, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    }

    goto LABEL_38;
  }

  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  outlined init with copy of Collaboration.Flow(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = partial apply for closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = closure #1 in View.disabled(_:)partial apply;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of TaskPriority?(v499, v498, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
  lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v196 = v442;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TaskPriority?(v196, v459, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v499, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of TaskPriority?(v196, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
  (*(v430 + 8))(v429, v431);
  outlined destroy of TaskPriority?(v464, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
LABEL_42:
  v378 = v482;
  outlined init with copy of TaskPriority?(v486, v482, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd);
  v379 = v484;
  outlined init with copy of TaskPriority?(v488, v484, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  outlined init with copy of TaskPriority?(v490, v483, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd);
  outlined init with copy of TaskPriority?(v489, v485, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd);
  v380 = v378;
  v381 = v461;
  outlined init with copy of TaskPriority?(v380, v461, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSg_ACyACyAeAEAFyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAUG_Qo_AQyAA13TextAlignmentOGGAA14_PaddingLayoutVGACyACyACyACyA5_A9_GAQyAA5ColorVSgGGA12_GA12_GACyAL014ProfileEditingE0ANLLVA12_GSgAA012_ConditionalD0VyA27_yAA05TupleE0VyACyACyACyACyAA6ToggleVyA1_GA12_GAA016_BackgroundStyleX0VyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FlexFrameLayoutVG_ACyACyACyACyACyACyACyA4_A47_GA9_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAUGA12_GA12_GA12_GAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACyAL12ActionButtonANLLVAA01_uv9TransformX0VySbGG_Qo_tGA74_GA29_yACyACyACy01_g4Kit_aB007ArtworkL0V01_g12KitInternal_aB0E18artworkPlaceholderyQrx0G3Kit7ArtworkVSg_So6CGSizeVA16_tcAaDRzlFQOy_AJ015CNSwiftUIAvatarE0VQo_AA12_FrameLayoutVGA41_yAA6CircleVGGA12_G_ACyA70_A12_GA100_tGGtMd);
  outlined init with copy of TaskPriority?(v379, v381 + v382[12], &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  outlined init with copy of TaskPriority?(v483, v381 + v382[20], &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd);
  v394 = v485;
  outlined init with copy of TaskPriority?(v485, v381 + v382[24], &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd);
  outlined init with copy of TaskPriority?(v498, v499, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMd);
  outlined destroy of TaskPriority?(v489, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd);
  outlined destroy of TaskPriority?(v490, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd);
  outlined destroy of TaskPriority?(v488, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  outlined destroy of TaskPriority?(v486, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd);
  outlined destroy of TaskPriority?(v394, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd);
  outlined destroy of TaskPriority?(v393, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  outlined destroy of TaskPriority?(v499, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMd);
  outlined destroy of TaskPriority?(v484, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd);
  return outlined destroy of TaskPriority?(v482, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd);
}