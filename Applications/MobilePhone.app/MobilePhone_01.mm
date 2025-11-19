uint64_t storeEnumTagSinglePayload for Defaults.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11MobilePhone8DefaultsC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Defaults.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Defaults.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Defaults.Error(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecentCallView.isPresentingContactDetails.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for RecentCallView.isPresentingContactDetails : RecentCallView@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*RecentCallView.isPresentingContactDetails.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 8);
  *(v3 + 50) = v5;
  v6 = *(v1 + 16);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return RecentCallView.isPresentingContactDetails.modify;
}

void RecentCallView.isPresentingContactDetails.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  State.wrappedValue.setter();

  free(v1);
}

uint64_t RecentCallView.$isPresentingContactDetails.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  return v1;
}

id RecentCallView.recentsController.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    return v1;
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController()
{
  result = lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController;
  if (!lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController)
  {
    type metadata accessor for ObservableRecentsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController);
  }

  return result;
}

uint64_t RecentCallView.$recentsController.getter()
{
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();

  return EnvironmentObject.projectedValue.getter();
}

uint64_t RecentCallView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for RecentCallView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAIy11MobilePhone010RecentCallH0V013TitleAndCountH0V_AN08SubtitleH0VAGyAIyAN013FormattedDateH0V_AA6SpacerVAL0lm4IconH0VtGGtGG_AvA6ButtonVyAN04InfoV0VGSgtGGAA08ModifiedE0VyAGyAIyAGyAIyA10_yAxA14_PaddingLayoutVG_AKyAIyA10_yAPA12_G_ARtGGtGG_AvTA6_tGGA12_GGGMd);
  __chkstk_darwin(v37);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyASy11MobilePhone010RecentCallC0V013TitleAndCountC0V_AX08SubtitleC0VAQyASyAX013FormattedDateC0V_AA6SpacerVAV0st4IconC0VtGGtGG_A4_AA6ButtonVyAX10InfoButtonVGSgtGGAA08ModifiedM0VyAQyASyAQyASyA20_yA6_AA14_PaddingLayoutVG_AUyASyA20_yAZA22_G_A0_tGGtGG_A4_A2_A16_tGGA22_GGG_A20_yAV0st7ContactC0VAA30_EnvironmentKeyWritingModifierVyAV27ObservableRecentsControllerCSgGGQo_Md);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v35 = &v28 - v8;
  v9 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 24);
  if (v12)
  {
    v13 = *v1;
    v14 = v1;
    v15 = v12;
    ObservableRecentsController.localizedRecentCallInfo(for:)(v13, v11);

    closure #1 in RecentCallView.body.getter(v14, v11, v6);
    v16 = *(v14 + 16);
    v45 = *(v14 + 8);
    v46 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v28 = v41;
    v29 = v43;
    v34 = type metadata accessor for RecentCallView;
    outlined init with copy of RecentCallView(v14, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentCallView);
    v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v18 = swift_allocObject();
    v33 = v4;
    v19 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with take of RecentCallView(v19, v18 + v17);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone21RecentCallContactViewVAA30_EnvironmentKeyWritingModifierVyAD27ObservableRecentsControllerCSgGGMd);
    v20 = lazy protocol witness table accessor for type Group<_ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>>> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAIy11MobilePhone010RecentCallH0V013TitleAndCountH0V_AN08SubtitleH0VAGyAIyAN013FormattedDateH0V_AA6SpacerVAL0lm4IconH0VtGGtGG_AvA6ButtonVyAN04InfoV0VGSgtGGAA08ModifiedE0VyAGyAIyAGyAIyA10_yAxA14_PaddingLayoutVG_AKyAIyA10_yAPA12_G_ARtGGtGG_AvTA6_tGGA12_GGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAIy11MobilePhone010RecentCallH0V013TitleAndCountH0V_AN08SubtitleH0VAGyAIyAN013FormattedDateH0V_AA6SpacerVAL0lm4IconH0VtGGtGG_AvA6ButtonVyAN04InfoV0VGSgtGGAA08ModifiedE0VyAGyAIyAGyAIyA10_yAxA14_PaddingLayoutVG_AKyAIyA10_yAPA12_G_ARtGGtGG_AvTA6_tGGA12_GGGMR, lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
    v36 = v11;
    v31 = v20;
    v21 = v6;
    v32 = lazy protocol witness table accessor for type ModifiedContent<RecentCallContactView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>> and conformance <> ModifiedContent<A, B>();
    v22 = v35;
    v23 = v37;
    View.sheet<A>(isPresented:onDismiss:content:)();

    outlined destroy of (NSAttributedStringKey, Any)(v21, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAIy11MobilePhone010RecentCallH0V013TitleAndCountH0V_AN08SubtitleH0VAGyAIyAN013FormattedDateH0V_AA6SpacerVAL0lm4IconH0VtGGtGG_AvA6ButtonVyAN04InfoV0VGSgtGGAA08ModifiedE0VyAGyAIyAGyAIyA10_yAxA14_PaddingLayoutVG_AKyAIyA10_yAPA12_G_ARtGGtGG_AvTA6_tGGA12_GGGMd);
    outlined init with copy of RecentCallView(v14, v19, v34);
    v24 = swift_allocObject();
    v25 = outlined init with take of RecentCallView(v19, v24 + v17);
    __chkstk_darwin(v25);
    v41 = v23;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    v26 = v39;
    Button.init(action:label:)();
    (*(v38 + 8))(v22, v26);
    return outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v36, type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo);
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in RecentCallView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGG_AA6SpacerVAQ013FormattedDateE0VAA6ButtonVyAQ04InfoW0VGSgtGGMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyACy11MobilePhone014RecentCallIconG0VAA14_PaddingLayoutVG_AA6VStackVyAGyACyAH0jkG0V013TitleAndCountG0VALG_AQ08SubtitleG0VtGGtGG_AA6SpacerVAQ013FormattedDateG0VAA6ButtonVyAQ04InfoW0VGSgtGGALGMd);
  v7 = __chkstk_darwin(v47);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v42 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA6VStackVyAIy11MobilePhone010RecentCallH0V013TitleAndCountH0V_AN08SubtitleH0VAGyAIyAN013FormattedDateH0V_AA6SpacerVAL0lm4IconH0VtGGtGG_AvA6ButtonVyAN04InfoV0VGSgtGGAA08ModifiedD0VyAGyAIyAGyAIyA10_yAxA14_PaddingLayoutVG_AKyAIyA10_yAPA12_G_ARtGGtGG_AvTA6_tGGA12_G_GMd);
  __chkstk_darwin(v45);
  v12 = &v42 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd);
  __chkstk_darwin(v46);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ContentSizeCategory();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  type metadata accessor for RecentCallView(0);
  specialized Environment.wrappedValue.getter(v21);
  (*(v16 + 32))(v19, v21, v15);
  v22 = (*(v16 + 88))(v19, v15);
  if (v22 == enum case for ContentSizeCategory.extraSmall(_:) || v22 == enum case for ContentSizeCategory.small(_:) || v22 == enum case for ContentSizeCategory.medium(_:) || v22 == enum case for ContentSizeCategory.large(_:) || v22 == enum case for ContentSizeCategory.extraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVy11MobilePhone014RecentCallIconD0VAA08_PaddingG0VG_AA6VStackVyAIyAMyAN0mnD0V013TitleAndCountD0VARG_AW08SubtitleD0VtGGtGG_AA6SpacerVAW013FormattedDateD0VAA6ButtonVyAW04InfoY0VGSgtGGMd);
    closure #1 in RecentCallView.regularBody(for:)(v44, a1, &v6[*(v26 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100209F70;
    v28 = static Edge.Set.top.getter();
    *(inited + 32) = v28;
    v29 = static Edge.Set.bottom.getter();
    *(inited + 33) = v29;
    v30 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v28)
    {
      v30 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v29)
    {
      v30 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v6, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGG_AA6SpacerVAQ013FormattedDateE0VAA6ButtonVyAQ04InfoW0VGSgtGGMd);
    v39 = &v9[*(v47 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = v43;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v9, v43, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyACy11MobilePhone014RecentCallIconG0VAA14_PaddingLayoutVG_AA6VStackVyAGyACyAH0jkG0V013TitleAndCountG0VALG_AQ08SubtitleG0VtGGtGG_AA6SpacerVAQ013FormattedDateG0VAA6ButtonVyAQ04InfoW0VGSgtGGALGMd);
    outlined init with copy of Binding<EditMode>?(v40, v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyACy11MobilePhone014RecentCallIconG0VAA14_PaddingLayoutVG_AA6VStackVyAGyACyAH0jkG0V013TitleAndCountG0VALG_AQ08SubtitleG0VtGGtGG_AA6SpacerVAQ013FormattedDateG0VAA6ButtonVyAQ04InfoW0VGSgtGGALGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v40;
    v25 = &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyACy11MobilePhone014RecentCallIconG0VAA14_PaddingLayoutVG_AA6VStackVyAGyACyAH0jkG0V013TitleAndCountG0VALG_AQ08SubtitleG0VtGGtGG_AA6SpacerVAQ013FormattedDateG0VAA6ButtonVyAQ04InfoW0VGSgtGGALGMd;
  }

  else
  {
    if (v22 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v22 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      (*(v16 + 8))(v19, v15);
    }

    *v14 = static VerticalAlignment.center.getter();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIy11MobilePhone010RecentCallD0V013TitleAndCountD0V_AN08SubtitleD0VAA0F0VyAIyAN013FormattedDateD0V_AA6SpacerVAL0lm4IconD0VtGGtGG_AxA6ButtonVyAN04InfoV0VGSgtGGMd);
    closure #1 in RecentCallView.accessibleBody(for:)(v44, a1, &v14[*(v23 + 44)]);
    outlined init with copy of Binding<EditMode>?(v14, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v14;
    v25 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd;
  }

  return outlined destroy of (NSAttributedStringKey, Any)(v24, v25);
}

uint64_t closure #2 in RecentCallView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
  v5 = v4;
  v6 = EnvironmentObject.init()();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    result = static ObservableObject.environmentStore.getter();
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v5;
    a2[3] = result;
    a2[4] = v8;
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of RecentCallView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCallView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in RecentCallView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RecentCallView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in RecentCallView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGy11MobilePhone010RecentCallG0V013TitleAndCountG0V_AL08SubtitleG0VAEyAGyAL013FormattedDateG0V_AA6SpacerVAJ0kl4IconG0VtGGtGG_AtA6ButtonVyAL04InfoU0VGSgtGGAA08ModifiedD0VyAEyAGyAEyAGyA8_yAvA14_PaddingLayoutVG_AIyAGyA8_yANA10_G_APtGGtGG_AtRA4_tGGA10_GGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AJ08SubtitleE0VACyAEyAJ013FormattedDateE0V_AA6SpacerVAH0ij4IconE0VtGGtGG_ArA6ButtonVyAJ04InfoS0VGSgtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAGyACy11MobilePhone014RecentCallIconG0VAA14_PaddingLayoutVG_AA6VStackVyAGyACyAH0jkG0V013TitleAndCountG0VALG_AQ08SubtitleG0VtGGtGG_AA6SpacerVAQ013FormattedDateG0VAA6ButtonVyAQ04InfoW0VGSgtGGALGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGG_AA6SpacerVAQ013FormattedDateE0VAA6ButtonVyAQ04InfoW0VGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RecentCallContactView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RecentCallContactView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RecentCallContactView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone21RecentCallContactViewVAA30_EnvironmentKeyWritingModifierVyAD27ObservableRecentsControllerCSgGGMd);
    lazy protocol witness table accessor for type RecentCallContactView and conformance RecentCallContactView();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ObservableRecentsController?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11MobilePhone27ObservableRecentsControllerCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RecentCallContactView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RecentCallContactView and conformance RecentCallContactView()
{
  result = lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView;
  if (!lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView;
  if (!lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentCallContactView and conformance RecentCallContactView);
  }

  return result;
}

id closure #3 in RecentCallView.body.getter(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = *a1;
    v4 = *(v2 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController);

    return [v4 performDialRequestForRecentCall:v3];
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RecentCallView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGMd);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = type metadata accessor for EditMode();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ContentSizeCategory();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id partial apply for closure #3 in RecentCallView.body.getter()
{
  v1 = *(type metadata accessor for RecentCallView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return closure #3 in RecentCallView.body.getter(v2);
}

uint64_t partial apply for closure #4 in RecentCallView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyASy11MobilePhone010RecentCallC0V013TitleAndCountC0V_AX08SubtitleC0VAQyASyAX013FormattedDateC0V_AA6SpacerVAV0st4IconC0VtGGtGG_A4_AA6ButtonVyAX10InfoButtonVGSgtGGAA08ModifiedM0VyAQyASyAQyASyA20_yA6_AA14_PaddingLayoutVG_AUyASyA20_yAZA22_G_A0_tGGtGG_A4_A2_A16_tGGA22_GGG_A20_yAV0st7ContactC0VAA30_EnvironmentKeyWritingModifierVyAV27ObservableRecentsControllerCSgGGQo_Md);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t closure #1 in RecentCallView.regularBody(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v6 = type metadata accessor for RecentCallView(0);
  v49[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v49[1] = v7;
  v50 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGMd);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v51 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  v14 = __chkstk_darwin(v13 - 8);
  v57 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = v49 - v16;
  v17 = type metadata accessor for RecentCallView.FormattedDateView(0);
  v18 = __chkstk_darwin(v17 - 8);
  v56 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v49 - v20;
  v58 = static VerticalAlignment.firstTextBaseline.getter();
  v66 = 1;
  closure #1 in closure #1 in RecentCallView.regularBody(for:)(a1, &v62);
  v77 = *&v63[144];
  v78 = *&v63[160];
  v79 = *&v63[176];
  v80 = *&v63[192];
  v73 = *&v63[80];
  v74 = *&v63[96];
  v75 = *&v63[112];
  v76 = *&v63[128];
  v69 = *&v63[16];
  v70 = *&v63[32];
  v71 = *&v63[48];
  v72 = *&v63[64];
  v67 = v62;
  v68 = *v63;
  v81[10] = *&v63[144];
  v81[11] = *&v63[160];
  v81[12] = *&v63[176];
  v81[13] = *&v63[192];
  v81[6] = *&v63[80];
  v81[7] = *&v63[96];
  v81[8] = *&v63[112];
  v81[9] = *&v63[128];
  v81[2] = *&v63[16];
  v81[3] = *&v63[32];
  v81[4] = *&v63[48];
  v81[5] = *&v63[64];
  v81[0] = v62;
  v81[1] = *v63;
  outlined init with copy of Binding<EditMode>?(&v67, &v60, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone014RecentCallIconD0VAA14_PaddingLayoutVG_AA6VStackVyACyAEyAF0ijD0V013TitleAndCountD0VAJG_AO08SubtitleD0VtGGtGMd);
  v22 = a2;
  outlined destroy of (NSAttributedStringKey, Any)(v81, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone014RecentCallIconD0VAA14_PaddingLayoutVG_AA6VStackVyACyAEyAF0ijD0V013TitleAndCountD0VAJG_AO08SubtitleD0VtGGtGMd);
  *&v65[167] = v77;
  *&v65[183] = v78;
  *&v65[199] = v79;
  *&v65[215] = v80;
  *&v65[103] = v73;
  *&v65[119] = v74;
  *&v65[135] = v75;
  *&v65[151] = v76;
  *&v65[39] = v69;
  *&v65[55] = v70;
  *&v65[71] = v71;
  *&v65[87] = v72;
  *&v65[7] = v67;
  *&v65[23] = v68;
  v59 = v66;
  v23 = *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 32);
  v24 = type metadata accessor for Date();
  v25 = v21;
  v26 = v21;
  v27 = v53;
  v28 = v55;
  (*(*(v24 - 8) + 16))(v26, v52 + v23, v24);
  v29 = v54;
  specialized Environment.wrappedValue.getter(v12);
  LOBYTE(v23) = Optional<A>.isEditing.getter();
  outlined destroy of (NSAttributedStringKey, Any)(v12, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  v30 = 1;
  if ((v23 & 1) == 0)
  {
    v31 = v50;
    outlined init with copy of RecentCallView(v22, v50, type metadata accessor for RecentCallView);
    v32 = (*(v49[0] + 80) + 16) & ~*(v49[0] + 80);
    v33 = swift_allocObject();
    outlined init with take of RecentCallView(v31, v33 + v32);
    lazy protocol witness table accessor for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton();
    v34 = v51;
    Button.init(action:label:)();
    (*(v29 + 32))(v27, v34, v28);
    v30 = 0;
  }

  (*(v29 + 56))(v27, v30, 1, v28);
  v35 = v25;
  v36 = v56;
  outlined init with copy of RecentCallView(v25, v56, type metadata accessor for RecentCallView.FormattedDateView);
  v37 = v57;
  outlined init with copy of Binding<EditMode>?(v27, v57, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  *&v61[177] = *&v65[176];
  *&v61[193] = *&v65[192];
  *&v61[209] = *&v65[208];
  *&v61[113] = *&v65[112];
  *&v61[129] = *&v65[128];
  *&v61[145] = *&v65[144];
  *&v61[161] = *&v65[160];
  *&v61[49] = *&v65[48];
  *&v61[65] = *&v65[64];
  *&v61[81] = *&v65[80];
  *&v61[97] = *&v65[96];
  *&v61[1] = *v65;
  v38 = v58;
  v60 = v58;
  v61[0] = v59;
  v39 = *&v65[223];
  *&v61[224] = *&v65[223];
  *&v61[17] = *&v65[16];
  *&v61[33] = *&v65[32];
  v40 = *&v61[192];
  *(a3 + 192) = *&v61[176];
  *(a3 + 208) = v40;
  *(a3 + 224) = *&v61[208];
  v41 = *&v61[128];
  *(a3 + 128) = *&v61[112];
  *(a3 + 144) = v41;
  v42 = *&v61[160];
  *(a3 + 160) = *&v61[144];
  *(a3 + 176) = v42;
  v43 = *&v61[64];
  *(a3 + 64) = *&v61[48];
  *(a3 + 80) = v43;
  v44 = *&v61[96];
  *(a3 + 96) = *&v61[80];
  *(a3 + 112) = v44;
  v45 = *v61;
  *a3 = v60;
  *(a3 + 16) = v45;
  v46 = *&v61[32];
  *(a3 + 32) = *&v61[16];
  *(a3 + 48) = v46;
  *(a3 + 240) = v39;
  *(a3 + 248) = 0;
  *(a3 + 256) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGG_AA6SpacerVAQ013FormattedDateE0VAA6ButtonVyAQ04InfoW0VGSgtMd);
  outlined init with copy of RecentCallView(v36, a3 + *(v47 + 64), type metadata accessor for RecentCallView.FormattedDateView);
  outlined init with copy of Binding<EditMode>?(v37, a3 + *(v47 + 80), &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  outlined init with copy of Binding<EditMode>?(&v60, &v62, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v27, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v35, type metadata accessor for RecentCallView.FormattedDateView);
  outlined destroy of (NSAttributedStringKey, Any)(v37, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v36, type metadata accessor for RecentCallView.FormattedDateView);
  *&v63[177] = *&v65[176];
  *&v63[193] = *&v65[192];
  *v64 = *&v65[208];
  *&v63[113] = *&v65[112];
  *&v63[129] = *&v65[128];
  *&v63[145] = *&v65[144];
  *&v63[161] = *&v65[160];
  *&v63[49] = *&v65[48];
  *&v63[65] = *&v65[64];
  *&v63[81] = *&v65[80];
  *&v63[97] = *&v65[96];
  *&v63[1] = *v65;
  *&v63[17] = *&v65[16];
  v62 = v38;
  v63[0] = v59;
  *&v64[15] = *&v65[223];
  *&v63[33] = *&v65[32];
  return outlined destroy of (NSAttributedStringKey, Any)(&v62, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone014RecentCallIconE0VAA14_PaddingLayoutVG_AA6VStackVyAEyAGyAH0jkE0V013TitleAndCountE0VALG_AQ08SubtitleE0VtGGtGGMd);
}

uint64_t closure #1 in closure #1 in RecentCallView.regularBody(for:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 36));
  v5 = [objc_opt_self() tertiaryLabelColor];
  v6 = Color.init(_:)();
  v7 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v73) = 0;
  v16 = static HorizontalAlignment.leading.getter();
  v35[0] = 0;
  closure #1 in closure #1 in closure #1 in RecentCallView.regularBody(for:)(a1, &v73);
  v63 = *&v74[80];
  v64 = *&v74[96];
  v59 = *&v74[16];
  v60 = *&v74[32];
  v61 = *&v74[48];
  v62 = *&v74[64];
  v57 = v73;
  v58 = *v74;
  v66[6] = *&v74[80];
  v66[7] = *&v74[96];
  v66[2] = *&v74[16];
  v66[3] = *&v74[32];
  v66[4] = *&v74[48];
  v66[5] = *&v74[64];
  v65 = *&v74[112];
  v67 = *&v74[112];
  v66[0] = v73;
  v66[1] = *v74;
  outlined init with copy of Binding<EditMode>?(&v57, &v71, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA14_PaddingLayoutVG_AH08SubtitleD0VtGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v66, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA14_PaddingLayoutVG_AH08SubtitleD0VtGMd);
  *&v56[87] = v62;
  *&v56[103] = v63;
  *&v56[119] = v64;
  *&v56[135] = v65;
  *&v56[23] = v58;
  *&v56[39] = v59;
  *&v56[55] = v60;
  *&v56[71] = v61;
  *&v56[7] = v57;
  LOBYTE(v68) = v4;
  *(&v68 + 1) = v6;
  LOBYTE(v69) = v7;
  *(&v69 + 1) = v9;
  *v70 = v11;
  *&v70[8] = v13;
  *&v70[16] = v15;
  v70[24] = 0;
  v43 = v68;
  v44 = v69;
  v71 = v16;
  v72[0] = 0;
  v17 = *&v56[16];
  *&v72[1] = *v56;
  *v45 = *v70;
  *&v45[9] = *&v70[9];
  *&v72[65] = *&v56[64];
  v19 = *&v56[48];
  v18 = *&v56[64];
  *&v72[49] = *&v56[48];
  v20 = *&v56[32];
  *&v72[33] = *&v56[32];
  v21 = *v56;
  *&v72[17] = *&v56[16];
  *&v72[128] = *&v56[127];
  v22 = *&v56[96];
  *&v72[113] = *&v56[112];
  v23 = *&v56[112];
  *&v72[97] = *&v56[96];
  v24 = *&v56[80];
  *&v72[81] = *&v56[80];
  v53 = *&v72[96];
  v54 = *&v72[112];
  v55 = *&v72[128];
  v25 = *&v72[16];
  v49 = *&v72[32];
  v50 = *&v72[48];
  v51 = *&v72[64];
  v52 = *&v72[80];
  v46 = v16;
  v47 = *v72;
  v48 = *&v72[16];
  v26 = *&v72[96];
  a2[10] = *&v72[80];
  a2[11] = v26;
  v27 = v55;
  a2[12] = v54;
  a2[13] = v27;
  v28 = v49;
  v30 = v50;
  v29 = v51;
  a2[6] = v25;
  a2[7] = v28;
  a2[8] = v30;
  a2[9] = v29;
  v31 = *&v45[16];
  a2[2] = *v45;
  a2[3] = v31;
  v32 = v47;
  a2[4] = v46;
  a2[5] = v32;
  v33 = v44;
  *a2 = v43;
  a2[1] = v33;
  *&v74[81] = v24;
  *&v74[97] = v22;
  *&v74[113] = v23;
  *&v74[128] = *&v56[127];
  *&v74[17] = v17;
  v73 = v16;
  v74[0] = 0;
  *&v74[33] = v20;
  *&v74[49] = v19;
  *&v74[65] = v18;
  *&v74[1] = v21;
  outlined init with copy of Binding<EditMode>?(&v68, v35, &_s7SwiftUI15ModifiedContentVy11MobilePhone18RecentCallIconViewVAA14_PaddingLayoutVGMd);
  outlined init with copy of Binding<EditMode>?(&v71, v35, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallE0V013TitleAndCountE0VAA14_PaddingLayoutVG_AJ08SubtitleE0VtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(&v73, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallE0V013TitleAndCountE0VAA14_PaddingLayoutVG_AJ08SubtitleE0VtGGMd);
  v35[0] = v4;
  v36 = v6;
  v37 = v7;
  v38 = v9;
  v39 = v11;
  v40 = v13;
  v41 = v15;
  v42 = 0;
  return outlined destroy of (NSAttributedStringKey, Any)(v35, &_s7SwiftUI15ModifiedContentVy11MobilePhone18RecentCallIconViewVAA14_PaddingLayoutVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in RecentCallView.regularBody(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);

  if (v8 == 1)
  {
    v9 = static Color.red.getter();
  }

  else
  {
    v9 = static Color.primary.getter();
  }

  v10 = v9;
  v11 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v49 = 0;
  v21 = a1[2];
  v20 = a1[3];
  v22 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v23 = *(a1 + *(v22 + 40));
  v24 = (a1 + *(v22 + 44));
  v26 = *v24;
  v25 = v24[1];
  *&v32 = v5;
  *(&v32 + 1) = v4;
  *&v33 = v7;
  *(&v33 + 1) = v6;
  *&v34 = v10;
  *(&v34 + 1) = 1;
  LOBYTE(v35) = v11;
  *(&v35 + 1) = v13;
  *v36 = v15;
  *&v36[8] = v17;
  *&v36[16] = v19;
  v36[24] = 0;
  v37 = v32;
  v38 = v33;
  *&v41[9] = *&v36[9];
  v40 = v35;
  *v41 = *v36;
  v39 = v34;
  v27 = v33;
  *a2 = v32;
  *(a2 + 16) = v27;
  v28 = v39;
  v29 = v40;
  v30 = *&v41[16];
  *(a2 + 64) = *v41;
  *(a2 + 80) = v30;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  *(a2 + 96) = v21;
  *(a2 + 104) = v20;
  *(a2 + 112) = v23;
  *(a2 + 120) = v26;
  *(a2 + 128) = v25;

  outlined init with copy of Binding<EditMode>?(&v32, v42, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA14_PaddingLayoutVGMd);
  v42[0] = v5;
  v42[1] = v4;
  v42[2] = v7;
  v42[3] = v6;
  v42[4] = v10;
  v42[5] = 1;
  v43 = v11;
  v44 = v13;
  v45 = v15;
  v46 = v17;
  v47 = v19;
  v48 = 0;
  return outlined destroy of (NSAttributedStringKey, Any)(v42, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA14_PaddingLayoutVGMd);
}

uint64_t RecentCallView.TitleAndCountView.init(title:count:color:lineLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void __swiftcall RecentCallView.SubtitleView.init(subtitle:isVerified:lineName:)(MobilePhone::RecentCallView::SubtitleView *__return_ptr retstr, Swift::String subtitle, Swift::Bool isVerified, Swift::String_optional lineName)
{
  retstr->subtitle = subtitle;
  retstr->isVerified = isVerified;
  retstr->lineName = lineName;
}

uint64_t RecentCallView.FormattedDateView.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t closure #1 in RecentCallView.accessibleBody(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = type metadata accessor for RecentCallView(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGGMd);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  *v23 = static HorizontalAlignment.leading.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy11MobilePhone010RecentCallD0V013TitleAndCountD0V_AL08SubtitleD0VAA6HStackVyAIyAL013FormattedDateD0V_AA6SpacerVAJ0kl4IconD0VtGGtGGMd);
  closure #1 in closure #1 in RecentCallView.accessibleBody(for:)(v39, &v23[*(v24 + 44)]);
  specialized Environment.wrappedValue.getter(v11);
  v25 = Optional<A>.isEditing.getter();
  outlined destroy of (NSAttributedStringKey, Any)(v11, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  v26 = 1;
  if ((v25 & 1) == 0)
  {
    v27 = v37;
    outlined init with copy of RecentCallView(a2, v37, type metadata accessor for RecentCallView);
    v28 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v29 = swift_allocObject();
    outlined init with take of RecentCallView(v27, v29 + v28);
    lazy protocol witness table accessor for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton();
    v30 = v38;
    Button.init(action:label:)();
    (*(v7 + 32))(v17, v30, v6);
    v26 = 0;
  }

  (*(v7 + 56))(v17, v26, 1, v6);
  outlined init with copy of Binding<EditMode>?(v23, v21, &_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGGMd);
  outlined init with copy of Binding<EditMode>?(v17, v15, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  v31 = v40;
  outlined init with copy of Binding<EditMode>?(v21, v40, &_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGGMd);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGG_ArA6ButtonVyAH04InfoS0VGSgtMd);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  outlined init with copy of Binding<EditMode>?(v15, v31 + *(v32 + 64), &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v17, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v23, &_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v15, &_s7SwiftUI6ButtonVy11MobilePhone14RecentCallViewV04InfoC0VGSgMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v21, &_s7SwiftUI6VStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013TitleAndCountE0V_AH08SubtitleE0VAA6HStackVyAEyAH013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGtGGMd);
}

uint64_t closure #1 in closure #1 in RecentCallView.accessibleBody(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 40);
  v28 = *(a1 + 32);
  v29 = v10;
  v13 = *(a1 + 48);

  if (v13 == 1)
  {
    v14 = static Color.red.getter();
  }

  else
  {
    v14 = static Color.primary.getter();
  }

  v15 = v14;
  v16 = *(a1 + 24);
  v27 = *(a1 + 16);
  v17 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v18 = *(v17 + 44);
  v26 = *(a1 + *(v17 + 40));
  v19 = *(a1 + v18 + 8);
  v25 = *(a1 + v18);

  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy11MobilePhone010RecentCallD0V013FormattedDateD0V_AA6SpacerVAJ0kl4IconD0VtGGMd);
  closure #1 in closure #1 in closure #1 in RecentCallView.accessibleBody(for:)(a1, &v9[*(v20 + 44)]);
  outlined init with copy of Binding<EditMode>?(v9, v7, &_s7SwiftUI6HStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGMd);
  v21 = v28;
  *a2 = v29;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = 2;
  *(a2 + 48) = v27;
  *(a2 + 56) = v16;
  *(a2 + 64) = v26;
  *(a2 + 72) = v25;
  *(a2 + 80) = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone14RecentCallViewV013TitleAndCountE0V_AC08SubtitleE0V7SwiftUI6HStackVyAH05TupleE0VyAC013FormattedDateE0V_AH6SpacerVAA0cd4IconE0VtGGtMd);
  outlined init with copy of Binding<EditMode>?(v7, a2 + *(v22 + 64), &_s7SwiftUI6HStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGMd);

  outlined destroy of (NSAttributedStringKey, Any)(v9, &_s7SwiftUI6HStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v7, &_s7SwiftUI6HStackVyAA9TupleViewVy11MobilePhone010RecentCallE0V013FormattedDateE0V_AA6SpacerVAF0hi4IconE0VtGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in RecentCallView.accessibleBody(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecentCallView.FormattedDateView(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(v9, a1 + v11, v12);
  LOBYTE(v11) = *(a1 + *(v10 + 36));
  v13 = [objc_opt_self() tertiaryLabelColor];
  v14 = Color.init(_:)();
  outlined init with copy of RecentCallView(v9, v7, type metadata accessor for RecentCallView.FormattedDateView);
  outlined init with copy of RecentCallView(v7, a2, type metadata accessor for RecentCallView.FormattedDateView);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone14RecentCallViewV013FormattedDateE0V_7SwiftUI6SpacerVAA0cd4IconE0VtMd);
  v16 = a2 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a2 + *(v15 + 64);
  *v17 = v11;
  *(v17 + 8) = v14;

  outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v9, type metadata accessor for RecentCallView.FormattedDateView);

  return outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v7, type metadata accessor for RecentCallView.FormattedDateView);
}

uint64_t VoicemailAccountManagerCache.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.localizedSubtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double RecentCallView.TitleAndCountView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  closure #1 in RecentCallView.TitleAndCountView.body.getter(v2, &v13);
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[10] = v23;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  outlined init with copy of Binding<EditMode>?(&v26, &v12, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AVSgtGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v37, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AVSgtGMd);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v5 = *&v24[144];
  *(a1 + 145) = *&v24[128];
  *(a1 + 161) = v5;
  *(a1 + 177) = *&v24[160];
  v6 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v6;
  v7 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v7;
  v8 = *&v24[16];
  *(a1 + 17) = *v24;
  *(a1 + 33) = v8;
  result = *&v24[32];
  v10 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 192) = *&v24[175];
  *(a1 + 65) = v10;
  return result;
}

uint64_t closure #1 in RecentCallView.TitleAndCountView.body.getter@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[1];
  v56 = *a1;
  v57 = v4;
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v35 = v6;
  v36 = v5;
  LOBYTE(v4) = v7;
  *(&v38 + 1) = a1[5];
  v39 = v8;
  *&v38 = swift_getKeyPath();
  v34 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v9 = v4 & 1;
  LOBYTE(v56) = v4 & 1;
  LOBYTE(v55[0]) = 0;
  v10 = a1[4];
  v33 = swift_getKeyPath();
  v11 = a1[3];
  if (v11)
  {
    v56 = a1[2];
    v57 = v11;
    swift_bridgeObjectRetain_n();

    v12 = Text.init<A>(_:)();
    v31 = v13;
    v32 = v12;
    v15 = v14;
    v30 = v16;
    v17 = swift_getKeyPath();
    v18 = static Font.headline.getter();
    v19 = swift_getKeyPath();
    LOBYTE(v56) = v15 & 1;
    LOBYTE(v55[0]) = 0;
    v20 = v15 & 1;
    v21 = swift_getKeyPath();

    v22 = v17;
    v24 = v30;
    v23 = v31;
    v25 = v32;
    v26 = 1;
    v27 = v10;
  }

  else
  {

    v25 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v26 = 0;
    v19 = 0;
    v18 = 0;
    v21 = 0;
    v27 = 0;
    v20 = 0;
  }

  *&v43 = v36;
  *(&v43 + 1) = v39;
  LOBYTE(v44) = v9;
  *(&v44 + 1) = v35;
  v45 = v38;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = KeyPath;
  *&v47 = v34;
  *(&v47 + 1) = v33;
  v48 = v10;
  *v42 = v10;
  v40 = v46;
  v41 = v47;
  *&v49 = v25;
  *(&v49 + 1) = v23;
  *&v50 = v20;
  *(&v50 + 1) = v24;
  *&v51 = v22;
  *(&v51 + 1) = v26;
  *&v52 = 0;
  *(&v52 + 1) = v19;
  *&v53 = v18;
  *(&v53 + 1) = v21;
  v54 = v27;
  *&v42[24] = v50;
  *&v42[8] = v49;
  *&v42[88] = v27;
  *&v42[72] = v53;
  *&v42[56] = v52;
  *&v42[40] = v51;
  v28 = v44;
  *a2 = v43;
  a2[1] = v28;
  a2[4] = v41;
  a2[5] = *v42;
  a2[2] = v38;
  a2[3] = v40;
  a2[9] = *&v42[64];
  a2[10] = *&v42[80];
  a2[7] = *&v42[32];
  a2[8] = *&v42[48];
  a2[6] = *&v42[16];
  v55[0] = v25;
  v55[1] = v23;
  v55[2] = v20;
  v55[3] = v24;
  v55[4] = v22;
  v55[5] = v26;
  v55[6] = 0;
  v55[7] = v19;
  v55[8] = v18;
  v55[9] = v21;
  v55[10] = v27;
  outlined init with copy of Binding<EditMode>?(&v43, &v56, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd);
  outlined init with copy of Binding<EditMode>?(&v49, &v56, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v55, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGSgMd);
  v56 = v36;
  v57 = v39;
  v58 = v9;
  v59 = v35;
  v60 = v38;
  v61 = 0;
  v62 = KeyPath;
  v63 = v34;
  v64 = v33;
  v65 = v10;
  return outlined destroy of (NSAttributedStringKey, Any)(&v56, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd);
}

double protocol witness for View.body.getter in conformance RecentCallView.TitleAndCountView@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v26[0] = *v1;
  v26[1] = v3;
  v26[2] = v1[2];
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  closure #1 in RecentCallView.TitleAndCountView.body.getter(v26, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v38[8] = v21;
  v38[9] = v22;
  v38[10] = v23;
  v38[4] = v17;
  v38[5] = v18;
  v38[6] = v19;
  v38[7] = v20;
  v38[0] = v13;
  v38[1] = v14;
  v38[2] = v15;
  v38[3] = v16;
  outlined init with copy of Binding<EditMode>?(&v27, &v12, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AVSgtGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v38, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AVSgtGMd);
  *&v24[119] = v34;
  *&v24[135] = v35;
  *&v24[151] = v36;
  *&v24[167] = v37;
  *&v24[55] = v30;
  *&v24[71] = v31;
  *&v24[87] = v32;
  *&v24[103] = v33;
  *&v24[7] = v27;
  *&v24[23] = v28;
  *&v24[39] = v29;
  v5 = *&v24[144];
  *(a1 + 145) = *&v24[128];
  *(a1 + 161) = v5;
  *(a1 + 177) = *&v24[160];
  v6 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v6;
  v7 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v7;
  v8 = *&v24[16];
  *(a1 + 17) = *v24;
  *(a1 + 33) = v8;
  result = *&v24[32];
  v10 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 192) = *&v24[175];
  *(a1 + 65) = v10;
  return result;
}

uint64_t AccelerometerOrientationMonitorWrapper.sourceName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double RecentCallView.SubtitleView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v19 = 1;
  closure #1 in RecentCallView.SubtitleView.body.getter(v2, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28 = v17;
  outlined init with copy of Binding<EditMode>?(&v20, &v10, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV11MobilePhone010RecentCallD0V09SecondaryG8ModifierVGSg_AEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA5ColorVSgGGSgAMtGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v27, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV11MobilePhone010RecentCallD0V09SecondaryG8ModifierVGSg_AEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA5ColorVSgGGSgAMtGMd);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v6 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v6;
  *(a1 + 112) = *&v18[95];
  result = *v18;
  v8 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v8;
  v9 = v19;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

uint64_t closure #1 in RecentCallView.SubtitleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v35 = *(a1 + 24);
  v36 = v4;
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v33 = v6;
  v34 = v5;
  v32 = v7;
  v9 = v8;
  v10 = [objc_opt_self() tertiaryLabelColor];
  v30 = v9 & 1;
  v31 = Color.init(_:)();
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v35 = 0xD000000000000015;
  v36 = 0x8000000100241EC0;
  v37 = 1;
  v38 = UIFontTextStyleFootnote;
  v39 = UIContentSizeCategoryAccessibilityLarge;
  v11 = UIFontTextStyleFootnote;
  v12 = UIContentSizeCategoryAccessibilityLarge;
  v13 = specialized Image.init(symbolDescription:)(&v35);

  v14 = [objc_opt_self() tertiaryLabelColor];
  v15 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v17 = v13;

  v18 = KeyPath;

  v19 = v15;

LABEL_6:
  lazy protocol witness table accessor for type String and conformance String();

  v20 = Text.init<A>(_:)();
  v29 = v21;
  v22 = v21;
  v24 = v23;
  v28 = v25;
  v26 = static Color.secondary.getter();
  outlined copy of ModifiedContent<Text, RecentCallView.SecondaryTextModifier>?(v34, v32, v30, v33);
  outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v17);
  v24 &= 1u;
  outlined copy of Text.Storage(v20, v22, v24);

  outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v17);
  *a2 = v34;
  *(a2 + 8) = v32;
  *(a2 + 16) = v30;
  *(a2 + 24) = v33;
  *(a2 + 32) = v31;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v20;
  *(a2 + 72) = v29;
  *(a2 + 80) = v24;
  *(a2 + 88) = v28;
  *(a2 + 96) = v26;
  outlined consume of Text.Storage(v20, v29, v24);

  outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v17);
  return outlined consume of ModifiedContent<Text, RecentCallView.SecondaryTextModifier>?(v34, v32, v30, v33);
}

double protocol witness for View.body.getter in conformance RecentCallView.SubtitleView@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v3;
  v21 = *(v1 + 32);
  v4 = static VerticalAlignment.center.getter();
  v19 = 1;
  closure #1 in RecentCallView.SubtitleView.body.getter(v20, &v11);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v30 = v17;
  outlined init with copy of Binding<EditMode>?(&v22, &v10, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV11MobilePhone010RecentCallD0V09SecondaryG8ModifierVGSg_AEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA5ColorVSgGGSgAMtGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v29, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV11MobilePhone010RecentCallD0V09SecondaryG8ModifierVGSg_AEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA5ColorVSgGGSgAMtGMd);
  *&v18[55] = v25;
  *&v18[71] = v26;
  *&v18[87] = v27;
  *&v18[103] = v28;
  *&v18[7] = v22;
  *&v18[23] = v23;
  *&v18[39] = v24;
  v5 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v6 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v6;
  *(a1 + 112) = *&v18[95];
  result = *v18;
  v8 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v8;
  v9 = v19;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

uint64_t RecentCallView.FormattedDateView.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id RecentCallView.FormattedDateView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for formattingDateLabel != -1)
  {
    swift_once();
  }

  v2 = static RecentCallView.FormattedDateView.formattingDateLabel;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v2 setDate:isa];

  result = [static RecentCallView.FormattedDateView.formattingDateLabel text];
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();

    v6 = Text.init<A>(_:)();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = static Color.secondary.getter();

    v14 = v10 & 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v14;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

id one-time initialization function for formattingDateLabel()
{
  result = [objc_allocWithZone(UIDateLabel) init];
  static RecentCallView.FormattedDateView.formattingDateLabel = result;
  return result;
}

uint64_t RecentCallView.InfoButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v7[0] = 0x7269632E6F666E69;
  v7[1] = 0xEB00000000656C63;
  v7[2] = -1;
  v7[3] = UIFontTextStyleHeadline;
  v7[4] = UIContentSizeCategoryAccessibilityLarge;
  v2 = UIFontTextStyleHeadline;
  v3 = UIContentSizeCategoryAccessibilityLarge;
  v4 = specialized Image.init(symbolDescription:)(v7);

  v5 = static Color.accentColor.getter();
  result = swift_getKeyPath();
  *a1 = v4;
  a1[1] = result;
  a1[2] = v5;
  return result;
}

uint64_t RecentCallView.SecondaryTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy11MobilePhone010RecentCallC0V013SecondaryTextD0VGMd);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGMd) + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGMd) + 36));
  *v11 = v10;
  v11[1] = v9;
  v12 = swift_getKeyPath();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGAMyAA5ColorVSgGGMd) + 36));
  *v13 = v12;
  v13[1] = a2;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RecentCallView.SecondaryTextModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy11MobilePhone010RecentCallC0V013SecondaryTextD0VGMd);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGMd) + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGMd) + 36));
  *v11 = v10;
  v11[1] = v9;
  v12 = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGAMyAA5ColorVSgGGMd) + 36));
  *v13 = v12;
  v13[1] = v5;
}

uint64_t default argument 0 of RecentCallContactView.init(recentsController:recentCall:)()
{
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();

  return EnvironmentObject.init()();
}

uint64_t RecentCallView.init(recentCall:isPresentingContactDetails:recentsController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  State.init(wrappedValue:)();
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v7 = type metadata accessor for RecentCallView(0);
  v8 = *(v7 + 28);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
  swift_storeEnumTagMultiPayload();
  v9 = *(v7 + 32);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  return swift_storeEnumTagMultiPayload();
}

__n128 one-time initialization function for configurations()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone25TitleAndCountView_PreviewV13Configuration33_24E871CBE69E9DA70ABABD958776BE07LLVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100209F80;
  v1 = static Color.primary.getter();
  strcpy((v0 + 32), "(408) 239-3118");
  *(v0 + 47) = -18;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  *(v0 + 72) = 1;
  v2 = static Color.primary.getter();
  *(v0 + 80) = 0xD000000000000020;
  *(v0 + 88) = 0x8000000100241E90;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  *(v0 + 120) = 1;
  v3 = static Color.primary.getter();
  strcpy((v0 + 128), "(408) 239-3118");
  *(v0 + 143) = -18;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = v3;
  *(v0 + 168) = 2;
  v4 = static Color.primary.getter();
  *(v0 + 176) = 0xD000000000000020;
  *(v0 + 184) = 0x8000000100241E90;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = v4;
  *(v0 + 216) = 2;
  v5 = static Color.primary.getter();
  strcpy((v0 + 224), "(408) 239-3118");
  *(v0 + 239) = -18;
  *(v0 + 240) = xmmword_100209F90;
  *(v0 + 256) = v5;
  *(v0 + 264) = 1;
  v6 = static Color.primary.getter();
  *(v0 + 272) = 0xD000000000000020;
  *(v0 + 280) = 0x8000000100241E90;
  *(v0 + 288) = xmmword_100209F90;
  *(v0 + 304) = v6;
  *(v0 + 312) = 1;
  v7 = static Color.primary.getter();
  strcpy((v0 + 320), "(408) 239-3118");
  *(v0 + 335) = -18;
  *(v0 + 336) = xmmword_100209F90;
  *(v0 + 352) = v7;
  *(v0 + 360) = 2;
  v8 = static Color.primary.getter();
  *(v0 + 368) = 0xD000000000000020;
  *(v0 + 376) = 0x8000000100241E90;
  result = xmmword_100209F90;
  *(v0 + 384) = xmmword_100209F90;
  *(v0 + 400) = v8;
  *(v0 + 408) = 2;
  static TitleAndCountView_Preview.configurations = v0;
  return result;
}

uint64_t static TitleAndCountView_Preview.previews.getter()
{
  if (one-time initialization token for configurations != -1)
  {
    swift_once();
  }

  v0 = *(static TitleAndCountView_Preview.configurations + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA21_TraitWritingModifierVyAA013PreviewLayoutN3KeyVGG_APtGMd);
  v2 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA21_TraitWritingModifierVyAA013PreviewLayoutN3KeyVGG_APtGMd);

  return ForEach<>.init(_:content:)(0, v0, partial apply for closure #1 in closure #1 in static TitleAndCountView_Preview.previews.getter, 0, v1, v2);
}

uint64_t closure #1 in closure #1 in static TitleAndCountView_Preview.previews.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  if (one-time initialization token for configurations == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(static TitleAndCountView_Preview.configurations + 2) > a1)
  {
    v17 = (static TitleAndCountView_Preview.configurations + 48 * a1);
    v43 = v10;
    v44 = v7;
    v18 = v17[5];
    v40 = v17[4];
    v41 = v18;
    v19 = v17[6];
    v20 = v17[7];
    v22 = v17[8];
    v21 = v17[9];
    v37 = v22;
    v39 = v21;
    v23 = *(v4 + 36);
    *&v16[v23] = xmmword_100209FA0;
    v24 = enum case for PreviewLayout.fixed(_:);
    v25 = type metadata accessor for PreviewLayout();
    v42 = a2;
    v26 = v25;
    v27 = *(v25 - 8);
    v38 = v4;
    v28 = *(v27 + 104);
    v28(&v16[v23], v24, v25);
    v30 = v40;
    v29 = v41;
    *v16 = v40;
    *(v16 + 1) = v29;
    *(v16 + 2) = v19;
    *(v16 + 3) = v20;
    *(v16 + 4) = v22;
    v31 = v38;
    v32 = v39;
    *(v16 + 5) = v39;
    v28(&v13[*(v31 + 36)], enum case for PreviewLayout.sizeThatFits(_:), v26);
    *v13 = v30;
    *(v13 + 1) = v29;
    *(v13 + 2) = v19;
    *(v13 + 3) = v20;
    *(v13 + 4) = v37;
    *(v13 + 5) = v32;
    v33 = v43;
    outlined init with copy of Binding<EditMode>?(v16, v43, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    v34 = v44;
    outlined init with copy of Binding<EditMode>?(v13, v44, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    v35 = v42;
    outlined init with copy of Binding<EditMode>?(v33, v42, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGG_ANtMd);
    outlined init with copy of Binding<EditMode>?(v34, v35 + *(v36 + 48), &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    outlined destroy of (NSAttributedStringKey, Any)(v13, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    outlined destroy of (NSAttributedStringKey, Any)(v16, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    outlined destroy of (NSAttributedStringKey, Any)(v34, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
    return outlined destroy of (NSAttributedStringKey, Any)(v33, &_s7SwiftUI15ModifiedContentVy11MobilePhone14RecentCallViewV013TitleAndCountI0VAA21_TraitWritingModifierVyAA013PreviewLayoutM3KeyVGGMd);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance TitleAndCountView_Preview()
{
  if (one-time initialization token for configurations != -1)
  {
    swift_once();
  }

  v0 = *(static TitleAndCountView_Preview.configurations + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA21_TraitWritingModifierVyAA013PreviewLayoutN3KeyVGG_APtGMd);
  v2 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA21_TraitWritingModifierVyAA013PreviewLayoutN3KeyVGG_APtGMd);

  return ForEach<>.init(_:content:)(0, v0, closure #1 in closure #1 in static TitleAndCountView_Preview.previews.getterpartial apply, 0, v1, v2);
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance TitleAndCountView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance TitleAndCountView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C2384@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C23DC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000C2440@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview()
{
  result = lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview;
  if (!lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview;
  if (!lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TitleAndCountView_Preview and conformance TitleAndCountView_Preview);
  }

  return result;
}

uint64_t sub_1000C25E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA8EditModeOGSgGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000C2734(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA8EditModeOGSgGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for RecentCallView()
{
  type metadata accessor for CHRecentCall();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<ObservableRecentsController>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<Binding<EditMode>?>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<ContentSizeCategory>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for CHRecentCall()
{
  result = lazy cache variable for type metadata for CHRecentCall;
  if (!lazy cache variable for type metadata for CHRecentCall)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CHRecentCall);
  }

  return result;
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

void type metadata accessor for EnvironmentObject<ObservableRecentsController>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<ObservableRecentsController>)
  {
    type metadata accessor for ObservableRecentsController(255);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<ObservableRecentsController>);
    }
  }
}

void type metadata accessor for Environment<Binding<EditMode>?>()
{
  if (!lazy cache variable for type metadata for Environment<Binding<EditMode>?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Binding<EditMode>?>);
    }
  }
}

void type metadata accessor for Environment<ContentSizeCategory>()
{
  if (!lazy cache variable for type metadata for Environment<ContentSizeCategory>)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ContentSizeCategory>);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RecentCallView.SubtitleView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RecentCallView.SubtitleView(uint64_t result, int a2, int a3)
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

uint64_t sub_1000C2BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C2C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RecentCallView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RecentCallView.FormattedDateView()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV11MobilePhone14RecentCallViewV09SecondaryE8ModifierVGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV11MobilePhone14RecentCallViewV09SecondaryE8ModifierVGMd);
    lazy protocol witness table accessor for type RecentCallView.SecondaryTextModifier and conformance RecentCallView.SecondaryTextModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, RecentCallView.SecondaryTextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RecentCallView.SecondaryTextModifier and conformance RecentCallView.SecondaryTextModifier()
{
  result = lazy protocol witness table cache variable for type RecentCallView.SecondaryTextModifier and conformance RecentCallView.SecondaryTextModifier;
  if (!lazy protocol witness table cache variable for type RecentCallView.SecondaryTextModifier and conformance RecentCallView.SecondaryTextModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentCallView.SecondaryTextModifier and conformance RecentCallView.SecondaryTextModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGAMyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGAMyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy11MobilePhone010RecentCallE0V013SecondaryTextF0VGAA022_EnvironmentKeyWritingF0VySiSgGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<RecentCallView.SecondaryTextModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy11MobilePhone010RecentCallC0V013SecondaryTextD0VGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RecentCallView.SecondaryTextModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<HStack<TupleView<(VStack<TupleView<(RecentCallView.TitleAndCountView, RecentCallView.SubtitleView, HStack<TupleView<(RecentCallView.FormattedDateView, Spacer, RecentCallIconView)>>)>>, Spacer, Button<RecentCallView.InfoButton>?)>>, ModifiedContent<HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>, _PaddingLayout>>> and conformance <A> Group<A>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallF0V013TitleAndCountF0VAA21_TraitWritingModifierVyAA013PreviewLayoutP3KeyVGG_AStGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy11MobilePhone010RecentCallD0V013TitleAndCountD0VAA21_TraitWritingModifierVyAA013PreviewLayoutN3KeyVGG_APtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>, ModifiedContent<RecentCallView.TitleAndCountView, _TraitWritingModifier<PreviewLayoutTraitKey>>)>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined copy of ModifiedContent<Text, RecentCallView.SecondaryTextModifier>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of ModifiedContent<Text, RecentCallView.SecondaryTextModifier>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton()
{
  result = lazy protocol witness table cache variable for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton;
  if (!lazy protocol witness table cache variable for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentCallView.InfoButton and conformance RecentCallView.InfoButton);
  }

  return result;
}

uint64_t outlined init with copy of RecentCallView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecentCallView.TitleAndCountView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for RecentCallView.TitleAndCountView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id _s11MobilePhone23VoicemailAccountManagerC21accountSourceProvider9diskCache6loggerACyxq_GAA0cdE8Protocol_pyYbYTc_q_2os6LoggerVtcfc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v36 = a1;
  v37 = a2;
  ObjectType = swift_getObjectType();
  v7 = *v4;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & v7) + 0x58);
  v10 = type metadata accessor for Mutex();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v33 - v13);
  v15 = *((v8 & v7) + 0x68);
  *&v5[v15] = [swift_getObjCClassFromMetadata() empty];
  v16 = *((swift_isaMask & *v5) + 0x70);
  v39 = 0;
  *&v5[v16] = 0;
  *&v5[v16 + 8] = 0;
  v17 = &v5[v16 + 8];
  v18 = type metadata accessor for Optional();
  swift_unknownObjectRetain();
  _sSpsRi_zrlE10initialize2toyxn_tF(&v39, v17, v18);
  v19 = &v5[*((swift_isaMask & *v5) + 0x80)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = *((swift_isaMask & *v5) + 0x88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  swift_allocObject();
  *&v5[v20] = PassthroughSubject.init()();
  v21 = &v5[*((swift_isaMask & *v5) + 0x90)];
  *v21 = 0;
  *(v21 + 1) = &_swiftEmptyArrayStorage;
  v22 = &v5[*((swift_isaMask & *v5) + 0x98)];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = *((swift_isaMask & *v5) + 0xA0);
  type metadata accessor for TaskQueue();
  *&v5[v23] = TaskQueue.__allocating_init()();
  *v14 = 0;
  v24 = *(v11 + 36);
  v25 = type metadata accessor for _Cell();
  bzero(v14 + v24, *(*(v25 - 8) + 64));
  _sSpsRi_zrlE10initialize2toyxn_tF(v34, v14 + v24, v9);
  memcpy(&v5[*((swift_isaMask & *v5) + 0xA8)], v14, v12);
  v26 = *((swift_isaMask & *v5) + 0xB0);
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v5[v26], a4, v27);
  v29 = &v5[*((swift_isaMask & *v5) + 0x78)];
  v30 = v37;
  *v29 = v36;
  *(v29 + 1) = v30;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v38, "init");
  VoicemailAccountManager.loadCacheFromDisk()(_s11MobilePhone23VoicemailAccountManagerC17loadCacheFromDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_);
  VoicemailAccountManager.scheduleInitialUpdateOfCache()();

  (*(v28 + 8))(a4, v27);
  return v31;
}

uint64_t VoicemailAccountManager.scheduleInitialUpdateOfCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  static TaskPriority.low.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v6 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = v6;
  v7[4] = v0;
  v8 = v0;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache(), v7);
}

uint64_t VoicemailAccountManager.withAccountSource<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + *((swift_isaMask & *v4) + 0xB0), v8);
  v12 = v4 + *((swift_isaMask & *v4) + 0x80);
  os_unfair_lock_lock(v12);
  _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_(v12 + 1, v4, v11, a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone31VoicemailAccountManagerProtocol_pSgMd);
  _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v12);
  return (*(v9 + 8))(v11, v8);
}

void _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_(void **a1, uint64_t *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a4;
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
LABEL_5:
    swift_unknownObjectRetain_n();
    v8(v11);
    swift_unknownObjectRelease_n();
    return;
  }

  v11 = (*(a2 + *((swift_isaMask & *a2) + 0x78)))();
  *a1 = v11;
  v15 = a2 + *((swift_isaMask & *a2) + 0x90);
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v15);
  _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_(v15 + 1, v11, a2, a3, a6);
  if (!v7)
  {
    os_unfair_lock_unlock(v15);
    v8 = a4;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v15);
  __break(1u);
}

_OWORD *_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a2;
  v24 = a1;
  v7 = *a3;
  v8 = swift_isaMask;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v12 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = *((v8 & v7) + 0x50);
  *(v13 + 3) = *((v8 & v7) + 0x58);
  *(v13 + 4) = v25;
  v14 = v8 & v7;
  v15 = v24;
  *(v13 + 5) = *(v14 + 96);
  *(v13 + 6) = a3;
  (*(v10 + 32))(&v13[v12], &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v30 = _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_TA;
  v31 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed VoicemailAccountManagerUpdate, @in_guaranteed UUID?) -> ();
  ObjectType = &block_descriptor_172;
  v16 = _Block_copy(&aBlock);
  v17 = a3;

  v18 = [v26 listenForChangesWithHandler:v16];
  ObjectType = swift_getObjectType();
  *&aBlock = v18;
  v19 = *v15;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
  }

  swift_unknownObjectRelease();
  *(v19 + 2) = v21 + 1;
  result = outlined init with take of Any(&aBlock, &v19[32 * v21 + 32]);
  *v15 = v19;
  return result;
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a1;
  v32 = a2;
  v34 = *a3;
  v33 = swift_isaMask;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v31 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v30 = &v29 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a4;
  v19 = v9;
  (*(v10 + 16))(v12, v18, v9);
  outlined init with copy of Binding<EditMode>?(v32, v8, &_s10Foundation4UUIDVSgMd);
  v20 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v31 + 80) + v21 + 8) & ~*(v31 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v25 = v33;
  v24 = v34;
  *(v23 + 4) = *((v33 & v34) + 0x50);
  *(v23 + 5) = *((v25 & v24) + 0x58);
  *(v23 + 6) = v35;
  *(v23 + 7) = *((v25 & v24) + 0x60);
  *(v23 + 8) = v17;
  (*(v10 + 32))(&v23[v20], v12, v19);
  v26 = v36;
  *&v23[v21] = v36;
  outlined init with take of UUID?(v30, &v23[v22]);
  v27 = v26;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TATu, v23);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TY0_()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    outlined init with copy of Binding<EditMode>?(v0[8], v0[11], &_s10Foundation4UUIDVSgMd);
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      outlined init with copy of Binding<EditMode>?(v7, v8, &_s10Foundation4UUIDVSgMd);
      v13 = v9;
      v14 = String.init<A>(describing:)();
      v16 = v15;
      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation4UUIDVSgMd);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      outlined destroy of (NSAttributedStringKey, Any)(v11, &_sSo8NSObjectCSgMd);

      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {

      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation4UUIDVSgMd);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TQ1_;
    v22 = v0[7];
    v21 = v0[8];

    return VoicemailAccountManager.updateCache(for:uuid:)(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TQ1_()
{

  return (_swift_task_switch)(_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TY2_, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoicemailAccountManager.updateCache(for:uuid:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_isaMask & *v2;
  v4 = type metadata accessor for CancellationError();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();

  return (_swift_task_switch)(VoicemailAccountManager.updateCache(for:uuid:), 0, 0);
}

uint64_t VoicemailAccountManager.updateCache(for:uuid:)()
{
  v39 = v0;
  v1 = *(v0 + 24);
  *(v0 + 104) = *((swift_isaMask & **(v0 + 40)) + 0xB0);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating voicemail account Cache with updates: %@", v6, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v7, &_sSo8NSObjectCSgMd);
  }

  v36 = *(v0 + 96);
  v37 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);
  v35 = v12;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_task_alloc();
  v15 = v10[10];
  v14[2] = v15;
  v16 = v10[11];
  v14[3] = v16;
  v17 = v10[12];
  v14[4] = v17;
  v14[5] = v13;
  v14[6] = v12;
  VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.updateCache(for:uuid:), v14, &type metadata for () + 8);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Binding<EditMode>?(v11, v36, &_s10Foundation4UUIDVSgMd);
  v19 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v35;
  outlined init with take of UUID?(v36, v20 + v19);
  v21 = v35;

  dispatch thunk of TaskQueue.async(_:)();

  v22 = v9 + *((swift_isaMask & *v9) + 0x98);
  os_unfair_lock_lock(v22);
  _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_(v22 + 1, v9, &v38);
  os_unfair_lock_unlock(v22);
  v23 = v38;
  *(v0 + 112) = v38;
  if (v23)
  {

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    *(v0 + 128) = v25;
    *v24 = v0;
    v24[1] = VoicemailAccountManager.updateCache(for:uuid:);

    return Task.value.getter(v25, v23, &type metadata for () + 8, v25, &protocol self-conformance witness table for Error);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Finished Updating voicemail account Cache with updates: %@", v30, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v31, &_sSo8NSObjectCSgMd);
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = VoicemailAccountManager.updateCache(for:uuid:);
  }

  else
  {
    v2 = VoicemailAccountManager.updateCache(for:uuid:);
  }

  return (_swift_task_switch)(v2, 0, 0);
}

{

  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v6, &_sSo8NSObjectCSgMd);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v0[2] = v0[17];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v10, &_sSo8NSObjectCSgMd);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for AnyCancellable();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (NSAttributedStringKey, Any)(v25[0], &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for AnyCancellable();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for CachedVoicemailManager.Cache();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (NSAttributedStringKey, Any)(v25[0], &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for CachedVoicemailManager.Cache();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSo10PhoneBadgea_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for PhoneBadge(0);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (NSAttributedStringKey, Any)(v25[0], &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for PhoneBadge(0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return (_swift_task_switch)(closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache(), v7, v6);
}

uint64_t closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()()
{
  ContinuousClock.init()();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  }

  else
  {
    v8 = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  }

  return (_swift_task_switch)(v8, v7, v6);
}

{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = static VoicemailAccountManagerUpdate.all;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  v5 = *(v0 + 24);

  return VoicemailAccountManager.updateCache(for:uuid:)(v2, v5);
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s10Foundation4UUIDVSgMd);

  v2 = *(v4 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC10nilOrValue33_919A6ECA62650D38DFB63EF032987E64LLyqd__SgxSgzYuYTcqd__xclFAfGzYuYTcfU_@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v7 = swift_unknownObjectRetain();
    a2(v7);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(*(a3 - 8) + 56);

  return v9(a4, v8, 1, a3);
}

uint64_t VoicemailAccountManager.withCache<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = swift_isaMask;
  v10 = *((swift_isaMask & *v4) + 0x50);
  v11 = *((swift_isaMask & *v4) + 0x58);
  v12 = *((swift_isaMask & *v4) + 0x60);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = v12;
  v13[6] = a1;
  v13[7] = a2;
  v14 = (v4 + *((v9 & v8) + 0x70));

  os_unfair_lock_lock(v14);
  _s11MobilePhone23VoicemailAccountManagerC10nilOrValue33_919A6ECA62650D38DFB63EF032987E64LLyqd__SgxSgzYuYTcqd__xclFAfGzYuYTcfU_(&v14[2]._os_unfair_lock_opaque, a1, a3, a4);
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v14);
}

uint64_t @objc VoicemailAccountManager.anyAccountSubscribed.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.anyAccountSubscribed.getter();

  return v2 & 1;
}

uint64_t VoicemailAccountManager.anyAccountSubscribed.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.anyAccountSubscribed.getter;
  v6[6] = v5;
  VoicemailAccountManager.withCache<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned Bool), v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  VoicemailAccountManager.withAccountSource<A>(_:)(specialized implicit closure #3 in VoicemailAccountManager.anyAccountSubscribed.getter, 0, &type metadata for Bool);
  return v8;
}

id _s11MobilePhone23VoicemailAccountManagerC03anyD10SubscribedSbvgSbAA0cdE8Protocol_pcfu1_32ced3fc882ce1148014227b8766c8b894AaE_pSbTf3nnpk_n_0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isAnyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t @objc VoicemailAccountManager.online.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.online.getter();

  return v2 & 1;
}

uint64_t VoicemailAccountManager.online.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.online.getter;
  v6[6] = v5;
  VoicemailAccountManager.withCache<A>(_:)(thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned Bool)partial apply, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  VoicemailAccountManager.withAccountSource<A>(_:)(specialized implicit closure #2 in VoicemailAccountManager.online.getter, 0, &type metadata for Bool);
  return v8;
}

id specialized implicit closure #2 in VoicemailAccountManager.online.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isOnline];
  *a2 = result;
  return result;
}

uint64_t @objc VoicemailAccountManager.isMessageWaiting.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.isMessageWaiting.getter();

  return v2 & 1;
}

uint64_t VoicemailAccountManager.isMessageWaiting.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.online.getter;
  v6[6] = v5;
  VoicemailAccountManager.withCache<A>(_:)(thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned Bool)partial apply, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

id @objc VoicemailAccountManager.storageUsage.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.storageUsage.getter();

  return v2;
}

id VoicemailAccountManager.storageUsage.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.storageUsage.getter;
  v6[6] = v5;
  VoicemailAccountManager.withCache<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned UInt), v6, &type metadata for UInt, &v8);

  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) storageUsage];
  }

  else
  {
    return v8;
  }
}

uint64_t implicit closure #1 in VoicemailAccountManager.storageUsage.getter()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t @objc VoicemailAccountManager.estimatedAccountCount.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.estimatedAccountCount.getter();

  return v2;
}

uint64_t VoicemailAccountManager.estimatedAccountCount.getter()
{
  v0 = VoicemailAccountManager.accounts.getter();
  if (v0 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

unint64_t VoicemailAccountManager.accounts.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.storageUsage.getter;
  v6[6] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone16VoicemailAccountCGMd);
  VoicemailAccountManager.withCache<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned [VoicemailAccount]), v6, v7, &v11);

  result = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_4;
  }

  v9 = v11;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  result = v9;
  if (!v10)
  {
LABEL_4:

LABEL_5:
    VoicemailAccountManager.withAccountSource<A>(_:)(specialized implicit closure #3 in VoicemailAccountManager.accounts.getter, 0, v7);
    return v11;
  }

  return result;
}

Class @objc VoicemailAccountManager.accounts.getter(void *a1)
{
  v1 = a1;
  VoicemailAccountManager.accounts.getter();

  type metadata accessor for VoicemailAccount();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

void key path getter for VoicemailAccountManagerDataProtocol.accounts : <A, B>A(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void specialized implicit closure #2 in VoicemailAccountManager.accounts.getter(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t @objc VoicemailAccountManager.transcriptionEnabled.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.transcriptionEnabled.getter();

  return v2 & 1;
}

uint64_t VoicemailAccountManager.transcriptionEnabled.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.online.getter;
  v6[6] = v5;
  VoicemailAccountManager.withCache<A>(_:)(thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned Bool)partial apply, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

uint64_t implicit closure #1 in VoicemailAccountManager.anyAccountSubscribed.getter()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

id @objc VoicemailAccountManager.transcriptionProgress.getter(void *a1)
{
  v1 = a1;
  v2 = VoicemailAccountManager.transcriptionProgress.getter();

  return v2;
}

id VoicemailAccountManager.transcriptionProgress.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = partial apply for implicit closure #1 in VoicemailAccountManager.storageUsage.getter;
  v6[6] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSProgressCSgMd);
  VoicemailAccountManager.withCache<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned NSProgress?), v6, v7, &v9);

  result = v9;
  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) transcriptionProgress];
  }

  return result;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t VoicemailAccountManager.isCallVoicemailSupported(for:)(uint64_t a1, uint64_t (*a2)(id *), void *a3, void (*a4)(void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = VoicemailAccountManager.accounts.getter();
  v28 = a1;
  v13 = specialized Sequence.first(where:)(a2, v27, v12);

  if (v13)
  {
    v14 = v13[*a3];
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.mobilePhone);
    (*(v9 + 16))(v11, a1, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v18 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = a4;
      v21 = v20;
      (*(v9 + 8))(v11, v8);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29);
      a4 = v26;

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "No Account found for %s in cache.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {

      v23 = (*(v9 + 8))(v11, v8);
    }

    __chkstk_darwin(v23);
    *(&v25 - 2) = a1;
    VoicemailAccountManager.withAccountSource<A>(_:)(a4, (&v25 - 4), &type metadata for Bool);
    return v29;
  }

  return v14;
}

uint64_t VoicemailAccountManager.isPasscodeChangeSupported(forAccountUUID:)(uint64_t a1)
{
  v2[2] = a1;
  VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.isPasscodeChangeSupported(forAccountUUID:), v2, &type metadata for Bool);
  return v3;
}

uint64_t @objc VoicemailAccountManager.isCallVoicemailSupported(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  LOBYTE(a4) = a4(v9);

  (*(v7 + 8))(v9, v6);
  return a4 & 1;
}

uint64_t VoicemailAccountManager.maximumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v2[2] = a1;
  VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.maximumPasscodeLength(forAccountUUID:), v2, &type metadata for Int);
  return v2[3];
}

uint64_t VoicemailAccountManager.minimumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v2[2] = a1;
  VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.minimumPasscodeLength(forAccountUUID:), v2, &type metadata for Int);
  return v2[3];
}

uint64_t @objc VoicemailAccountManager.maximumPasscodeLength(forAccountUUID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t VoicemailAccountManager.set(passcode:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.set(passcode:forAccountUUID:completion:), v6, &type metadata for () + 8);
}

void closure #1 in VoicemailAccountManager.set(passcode:forAccountUUID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_156;
  v11 = _Block_copy(v12);

  [a1 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t @objc VoicemailAccountManager.set(passcode:forAccountUUID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a1;
  VoicemailAccountManager.set(passcode:forAccountUUID:completion:)(v12, v14, v10, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply, v15);

  return (*(v8 + 8))(v10, v7);
}

double VoicemailAccountManager.maximumGreetingDuration(ForAccountUUID:)(uint64_t a1)
{
  v2[2] = a1;
  VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.maximumGreetingDuration(ForAccountUUID:), v2, &type metadata for Double);
  return *&v2[3];
}

double @objc VoicemailAccountManager.maximumGreetingDuration(ForAccountUUID:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = VoicemailAccountManager.maximumGreetingDuration(ForAccountUUID:)(v5);

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t VoicemailAccountManager.greeting(ForAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.greeting(ForAccountUUID:completion:), v4, &type metadata for () + 8);
}

void closure #1 in VoicemailAccountManager.greeting(ForAccountUUID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_153;
  v8 = _Block_copy(v9);

  [a1 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t @objc VoicemailAccountManager.greeting(ForAccountUUID:completion:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  VoicemailAccountManager.greeting(ForAccountUUID:completion:)(v9, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned VMVoicemailGreeting?, @unowned NSError?) -> (), v11);

  return (*(v7 + 8))(v9, v6);
}

uint64_t VoicemailAccountManager.set(greeting:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return VoicemailAccountManager.withAccountSource<A>(_:)(partial apply for closure #1 in VoicemailAccountManager.set(greeting:forAccountUUID:completion:), v5, &type metadata for () + 8);
}

void closure #1 in VoicemailAccountManager.set(greeting:forAccountUUID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_1;
  v10 = _Block_copy(v11);

  [a1 setGreeting:a2 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t @objc VoicemailAccountManager.set(greeting:forAccountUUID:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a1;
  VoicemailAccountManager.set(greeting:forAccountUUID:completion:)(v14, v11, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> (), v13);

  return (*(v9 + 8))(v11, v8);
}

uint64_t VoicemailAccountManager.listen(with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VoicemailAccountManager.listen(with:), v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v14 = AnyCancellable.init(_:)();

  return v14;
}

uint64_t closure #1 in VoicemailAccountManager.listen(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManager.listen(with:), v7, v6);
}

uint64_t closure #1 in VoicemailAccountManager.listen(with:)()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + *((swift_isaMask & *v0[4]) + 0x88));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in VoicemailAccountManager.listen(with:)(char *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd) + 48);

  v4(v5, &a1[v6]);
}

id @objc VoicemailAccountManager.listen(with:)(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1;
  v8 = VoicemailAccountManager.listen(with:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned VoicemailAccountManagerUpdate, @unowned NSUUID?) -> (), v6);

  _Block_release(aBlock);

  return v8;
}

uint64_t @objc VoicemailAccountManager.__ivar_destroyer(char *a1)
{
  swift_unknownObjectRelease();
  type metadata accessor for Optional();
  type metadata accessor for _Cell();
  _s15Synchronization5_CellVAARi_zrlEfD();

  outlined destroy of (NSAttributedStringKey, Any)(&a1[*((swift_isaMask & *a1) + 0x80) + 8], &_s11MobilePhone31VoicemailAccountManagerProtocol_pSgMd);

  outlined destroy of (NSAttributedStringKey, Any)(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &_sSayypGMd);
  outlined destroy of (NSAttributedStringKey, Any)(&a1[*((swift_isaMask & *a1) + 0x98) + 8], &_sScTyyts5Error_pGSgMd);

  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  _s15Synchronization5_CellVAARi_zrlEfD();
  v2 = *((swift_isaMask & *a1) + 0xB0);
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

void specialized closure #1 in VoicemailAccountManager.updateCache(for:uuid:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + *((swift_isaMask & *Strong) + 0x70);
    os_unfair_lock_lock(v7);
    v8 = *(v7 + 1);
    v9 = v8;
    os_unfair_lock_unlock(v7);
    v48 = v9;
    if (v8)
    {
      v10 = one-time initialization token for subscriptionStatus;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = static VoicemailAccountManagerUpdate.subscriptionStatus;
      v13 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(static VoicemailAccountManagerUpdate.subscriptionStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v14 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v14 = [v11 anyAccountSubscribed];
      }

      v47 = v14;
      if (one-time initialization token for onlineStatus != -1)
      {
        swift_once();
      }

      v22 = static VoicemailAccountManagerUpdate.onlineStatus;
      v23 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(static VoicemailAccountManagerUpdate.onlineStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v24 = [a1 isOnline];
      }

      else
      {
        v24 = [v11 online];
      }

      v45 = v24;
      if ((*(v22 + v23) & v13) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v11;
      }

      v44 = [v25 isMessageWaiting];
      if (one-time initialization token for storageUsage != -1)
      {
        swift_once();
      }

      if ((*(static VoicemailAccountManagerUpdate.storageUsage + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = v11;
      }

      v43 = [v26 storageUsage];
      if (one-time initialization token for transcribingStatus != -1)
      {
        swift_once();
      }

      v27 = static VoicemailAccountManagerUpdate.transcribingStatus;
      v28 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(static VoicemailAccountManagerUpdate.transcribingStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v29 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v29 = [v11 transcriptionEnabled];
      }

      v30 = v29;
      if ((*(v27 + v28) & v13) != 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = v11;
      }

      v32 = [v31 transcriptionProgress];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100209A90;
      if (one-time initialization token for accounts != -1)
      {
        swift_once();
      }

      v34 = static VoicemailAccountManagerUpdate.accounts;
      *(inited + 32) = static VoicemailAccountManagerUpdate.accounts;
      *(inited + 40) = v12;
      v35 = v34;
      v36 = v12;
      updated = _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC11MobilePhone29VoicemailAccountManagerUpdateC_SayAHGTt1g5Tf4g_n(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v38 = specialized SetAlgebra.isDisjoint(with:)(updated);

      if (v38)
      {
        v39 = v11;
      }

      else
      {
        v39 = a1;
      }

      v40 = [v39 accounts];
      type metadata accessor for VoicemailAccount();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerData());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [v41 initWithAnyAccountSubscribed:v47 online:v45 isMessageWaiting:v44 storageUsage:v43 transcriptionEnabled:v30 transcriptionProgress:v32 accounts:isa];
    }

    else
    {
      v46 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerData());
      v15 = [a1 isAnyAccountSubscribed];
      v16 = [a1 isOnline];
      v17 = [a1 isMessageWaiting];
      v18 = [a1 storageUsage];
      v19 = [a1 isTranscriptionEnabled];
      isa = [a1 transcriptionProgress];
      v11 = [a1 accounts];
      v21 = [v46 initWithAnyAccountSubscribed:v15 online:v16 isMessageWaiting:v17 storageUsage:v18 transcriptionEnabled:v19 transcriptionProgress:isa accounts:v11];
    }

    v42 = v21;
    os_unfair_lock_lock(v7);

    *(v7 + 1) = v42;
    os_unfair_lock_unlock(v7);
  }
}

void *closure #1 in VoicemailAccountManager.updateCache(for:uuid:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = (result + *((swift_isaMask & *result) + 0x70));
    os_unfair_lock_lock(v7);
    v8 = *&v7[2]._os_unfair_lock_opaque;
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v7);
    if (v8)
    {
      v9 = one-time initialization token for subscriptionStatus;
      swift_unknownObjectRetain();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = static VoicemailAccountManagerUpdate.subscriptionStatus;
      v11 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(static VoicemailAccountManagerUpdate.subscriptionStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v12 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v12 = [v8 anyAccountSubscribed];
      }

      v45 = v12;
      if (one-time initialization token for onlineStatus != -1)
      {
        swift_once();
      }

      v21 = static VoicemailAccountManagerUpdate.onlineStatus;
      v22 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(static VoicemailAccountManagerUpdate.onlineStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v23 = [a1 isOnline];
      }

      else
      {
        v23 = [v8 online];
      }

      v44 = v23;
      if ((*(v21 + v22) & v11) != 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = v8;
      }

      v43 = [v24 isMessageWaiting];
      if (one-time initialization token for storageUsage != -1)
      {
        swift_once();
      }

      if ((*(static VoicemailAccountManagerUpdate.storageUsage + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v8;
      }

      v42 = [v25 storageUsage];
      if (one-time initialization token for transcribingStatus != -1)
      {
        swift_once();
      }

      v26 = static VoicemailAccountManagerUpdate.transcribingStatus;
      v27 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(static VoicemailAccountManagerUpdate.transcribingStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v28 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v28 = [v8 transcriptionEnabled];
      }

      v29 = v28;
      if ((*(v26 + v27) & v11) != 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = v8;
      }

      v31 = [v30 transcriptionProgress];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100209A90;
      if (one-time initialization token for accounts != -1)
      {
        swift_once();
      }

      v33 = static VoicemailAccountManagerUpdate.accounts;
      *(inited + 32) = static VoicemailAccountManagerUpdate.accounts;
      *(inited + 40) = v10;
      v34 = v33;
      v35 = v10;
      updated = _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC11MobilePhone29VoicemailAccountManagerUpdateC_SayAHGTt1g5Tf4g_n(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = specialized SetAlgebra.isDisjoint(with:)(updated);

      if (v37)
      {
        v38 = v8;
      }

      else
      {
        v38 = a1;
      }

      v39 = [v38 accounts];
      type metadata accessor for VoicemailAccount();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v40 initWithAnyAccountSubscribed:v45 online:v44 isMessageWaiting:v43 storageUsage:v42 transcriptionEnabled:v29 transcriptionProgress:v31 accounts:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = [a1 isAnyAccountSubscribed];
      v14 = [a1 isOnline];
      v15 = [a1 isMessageWaiting];
      v16 = [a1 storageUsage];
      v17 = [a1 isTranscriptionEnabled];
      v18 = [a1 transcriptionProgress];
      v19 = [a1 accounts];
      v20 = [v46 initWithAnyAccountSubscribed:v13 online:v14 isMessageWaiting:v15 storageUsage:v16 transcriptionEnabled:v17 transcriptionProgress:v18 accounts:v19];
    }

    swift_unknownObjectRetain();
    os_unfair_lock_lock(v7);
    swift_unknownObjectRelease();
    *&v7[2]._os_unfair_lock_opaque = v20;
    swift_unknownObjectRetain();
    _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v7);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t closure #2 in VoicemailAccountManager.updateCache(for:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);
  v3[9] = swift_task_alloc();

  return (_swift_task_switch)(closure #2 in VoicemailAccountManager.updateCache(for:uuid:), 0, 0);
}

uint64_t closure #2 in VoicemailAccountManager.updateCache(for:uuid:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (!Strong)
  {

    v4 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[11] = *((swift_isaMask & *Strong) + 0x88);
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #2 in VoicemailAccountManager.updateCache(for:uuid:), v3, v2);
}

{
  v0[12] = *(v0[10] + v0[11]);
  return (_swift_task_switch)(closure #2 in VoicemailAccountManager.updateCache(for:uuid:), 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 48);
  *v1 = v4;
  outlined init with copy of Binding<EditMode>?(v3, v1 + v5, &_s10Foundation4UUIDVSgMd);
  v6 = v4;
  PassthroughSubject.send(_:)();
  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);

  v7 = v0[1];

  return v7();
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = swift_isaMask & *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    Task.cancel()();
  }

  static TaskPriority.low.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = *(v5 + 80);
  *(v11 + 48) = *(v5 + 96);
  *(v11 + 56) = v10;
  v12 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &_s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATu, v11);

  *a1 = v12;
  *a3 = v12;
  return result;
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY0_()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    ContinuousClock.init()();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TQ1_;

    return specialized Clock.sleep(for:tolerance:)(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TQ1_()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY3_;
  }

  else
  {
    v3 = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY2_;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY2_()
{
  v1 = v0[11];
  static Task<>.checkCancellation()();
  v2 = v0[9];
  if (!v1)
  {
    VoicemailAccountManager.loadCacheFromDisk()(_s11MobilePhone23VoicemailAccountManagerC16writeCacheToDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_);
    v4 = (v2 + *((swift_isaMask & *v2) + 0x98));
    os_unfair_lock_lock(v4);

    *&v4[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v4);
  }

  v3 = v0[1];

  return v3();
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TY3_()
{

  v1 = *(v0 + 8);

  return v1();
}

void VoicemailAccountManager.loadCacheFromDisk()(void (*a1)(char *, void *))
{
  v3 = (v1 + *((swift_isaMask & *v1) + 0xA8));
  os_unfair_lock_lock(v3);
  v4 = type metadata accessor for Mutex();
  a1(v3 + *(v4 + 28), v1);

  _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v3);
}

void _s11MobilePhone23VoicemailAccountManagerC17loadCacheFromDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_(uint64_t a1, void *a2)
{
  (*(*((swift_isaMask & *a2) + 0x60) + 24))(&v9, *((swift_isaMask & *a2) + 0x58));
  v4 = v9;
  if (v9)
  {
    v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
    os_unfair_lock_lock(v5);
    swift_unknownObjectRelease();
    *&v5[2]._os_unfair_lock_opaque = v4;
    swift_unknownObjectRetain();
    type metadata accessor for Optional();
    _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v5);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No cache was found for AccountSource", v8, 2u);
    }
  }
}

void _s11MobilePhone23VoicemailAccountManagerC16writeCacheToDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_isaMask;
  v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v5);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x60);
  v8 = *&v5[2]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  if (v2)
  {
    type metadata accessor for Optional();
    _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v5);
    __break(1u);
  }

  else
  {
    type metadata accessor for Optional();
    _s15Synchronization5MutexVAARi_zrlE8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF6_deferL_yysAERd_0_Ri_zRi_d__r_0_lF(v5);
    if (v8)
    {
      v17 = v8;
      v9 = (*(v7 + 16))(&v17, v6, v7);
      v10 = Logger.logObject.getter();
      if (v9)
      {
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to update cache on Disk";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
        }
      }

      else
      {
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Updated cache on Disk";
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update cache on Disk because the cache was nil", v16, 2u);
    }
  }
}

uint64_t sub_1000CB264()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CB2AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in VoicemailAccountManager.updateCache(for:uuid:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #2 in VoicemailAccountManager.updateCache(for:uuid:)(v4, v5, v0 + v3);
}

id sub_1000CB55C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 anyAccountSubscribed];
  *a2 = result;
  return result;
}

__n128 sub_1000CB59C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1000CB5D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result & 1;
  return result;
}

id sub_1000CB64C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 online];
  *a2 = result;
  return result;
}

uint64_t sub_1000CB68C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000CB6D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMessageWaiting];
  *a2 = result;
  return result;
}

id sub_1000CB71C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storageUsage];
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@unowned UInt)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned [VoicemailAccount])@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

id sub_1000CB7F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 transcriptionEnabled];
  *a2 = result;
  return result;
}

id sub_1000CB83C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptionProgress];
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned NSProgress?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

void partial apply for closure #2 in VoicemailAccountManager.isCallVoicemailSupported(for:)(void *a1@<X0>, SEL *a2@<X1>, _BYTE *a3@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  LOBYTE(a2) = [a1 *a2];

  *a3 = a2;
}

void partial apply for closure #1 in VoicemailAccountManager.maximumPasscodeLength(forAccountUUID:)(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [a1 *a2];

  *a3 = v7;
}

void partial apply for closure #1 in VoicemailAccountManager.maximumGreetingDuration(ForAccountUUID:)(void *a1@<X0>, void *a2@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a1 maximumGreetingDurationForAccountUUID:isa];
  v6 = v5;

  *a2 = v6;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CBAC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManager.listen(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailAccountManager.listen(with:)(a1, v4, v5, v7, v6);
}

void partial apply for implicit closure #2 in implicit closure #1 in VoicemailAccountManager.listen(with:)()
{
  type metadata accessor for AnyCancellable();

  Task.cancel()();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR7Combine14AnyCancellableC_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR7Combine14AnyCancellableC_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo10PhoneBadgea_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo10PhoneBadgea_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo10PhoneBadgea_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t type metadata completion function for VoicemailAccountManager()
{
  result = type metadata accessor for Mutex();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_1000CC4A4()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for Optional();
  return type metadata accessor for Mutex();
}

char *sub_1000CC4F0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone31VoicemailAccountManagerProtocol_pSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000CC520()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySayypGGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000CC550()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScTyyts5Error_pGSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000CC580()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return type metadata accessor for Mutex();
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000CC5C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CC610()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo10PhoneBadgea_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo10PhoneBadgea_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR7Combine14AnyCancellableC_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR7Combine14AnyCancellableC_TG5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return outlined init with copy of Any(a2 + 32, a1 + 32);
}

uint64_t sub_1000CCA64()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000CCA9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_(a1, v4, v5, v6);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000CCCA4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_TA(void *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v2 + 48);
  v8 = v2 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_(a1, a2, v7, v8, v5);
}

uint64_t sub_1000CCDF4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TA(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1000CD16C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(a1, v4, v5, v6);
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.vmd.getter()
{
  v1 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v1 + 8), v0, &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a1[1];
    *a3 = v5;
    a3[1] = v6;
    return swift_unknownObjectRetain();
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailAccountManagerDecorator: Creating VMD", v11, 2u);
    }

    v12 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory);
    v13 = VoicemailAccountManagerWithDelegateDecorator.delegate.getter();
    v14 = v12();
    v16 = v15;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "VoicemailAccountManagerDecorator: Created VMD", v19, 2u);
    }

    *a1 = v14;
    a1[1] = v16;
    *a3 = v14;
    a3[1] = v16;
    return swift_unknownObjectRetain();
  }
}

id VoicemailAccountManagerWithDelegateDecorator.delegate.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for VoicemailDelegateDecorator();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  v5 = v0;
  *&v3[v4] = TaskQueue.__allocating_init()();
  v6 = &v3[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.mobilePhone);
  (*(*(v8 - 8) + 16))(&v3[v7], v9, v8);
  v10 = &v3[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate];
  *v10 = &async function pointer to partial apply for closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter;
  *(v10 + 1) = v1;
  v21.receiver = v3;
  v21.super_class = v2;
  v11 = objc_msgSendSuper2(&v21, "init");
  v12 = &v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  os_unfair_lock_lock(&v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables]);
  v20 = v2;
  *&v19 = v11;
  v13 = *(v12 + 1);
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 1) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  *(v13 + 2) = v17 + 1;
  outlined init with take of Any(&v19, &v13[32 * v17 + 32]);
  os_unfair_lock_unlock(v12);
  return v14;
}

uint64_t closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);
  v3[6] = swift_task_alloc();
  v3[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter, 0, 0);
}

uint64_t closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter()
{
  v21 = v0;
  v1 = v0[2];
  outlined init with copy of UUID?(v0[3], v0[9]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    outlined init with copy of UUID?(v6, v7);
    v12 = v8;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    outlined destroy of (NSAttributedStringKey, Any)(v6, &_s10Foundation4UUIDVSgMd);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VoicemailAccountManagerDecorator: processing update %@, uuid: %s", v9, 0x16u);
    outlined destroy of (NSAttributedStringKey, Any)(v10, &_sSo8NSObjectCSgMd);

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {

    outlined destroy of (NSAttributedStringKey, Any)(v6, &_s10Foundation4UUIDVSgMd);
  }

  v0[10] = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter, v18, v17);
}

{
  v0[11] = *(v0[4] + v0[10]);
  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter, 0, 0);
}

{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  outlined init with copy of UUID?(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);

  v6 = v0[1];

  return v6();
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.online.getter()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 40))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.mobilePhone);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) online: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return v4 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.anyAccountSubscribed.getter(const char *a1)
{
  v3 = &v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v3 + 1, v1, &v18);
  os_unfair_lock_unlock(v3);
  v4 = *(&v18 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.mobilePhone);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    os_unfair_lock_lock(v3);
    _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v3 + 1, v8, &v18);
    os_unfair_lock_unlock(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return v6 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.storageUsage.getter()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.mobilePhone);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) storageUsage: %lu", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return v4;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.estimatedAccountCount.getter()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v0, &v17);
  os_unfair_lock_unlock(v1);
  v2 = *(&v17 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.mobilePhone);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    os_unfair_lock_lock(v1);
    _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_(v1 + 1, v7, &v17);
    os_unfair_lock_unlock(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "VMD(%s) estimatedAccountCount: %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return v5;
}

void *VoicemailAccountManagerWithDelegateDecorator.accounts.getter()
{
  v66 = type metadata accessor for UUID();
  v1 = *(v66 - 8);
  v2 = __chkstk_darwin(v66);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v64 = &v55 - v5;
  v6 = __chkstk_darwin(v4);
  v63 = &v55 - v7;
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  v9 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  v67 = v0;
  v10 = 0;
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v9 + 8), v0, &v75);
  v61 = v9;
  os_unfair_lock_unlock(v9);
  v11 = v76;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 64))(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = v14;
      v74 = &_swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v15 < 0)
      {
        break;
      }

      v14 = 0;
      v18 = v16;
      v60 = v16 & 0xC000000000000001;
      v55 = v16 & 0xFFFFFFFFFFFFFF8;
      v57 = v1 + 8;
      v56 = (v1 + 32);
      v58 = v16;
      v59 = v15;
      v19 = v61;
      v20 = (v1 + 8);
      while (!__OFADD__(v14, 1))
      {
        v71 = v14 + 1;
        v72 = v14;
        if (v60)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v55 + 16))
          {
            goto LABEL_18;
          }

          v21 = *(v18 + 8 * v14 + 32);
        }

        v22 = v21;
        v23 = [v21 UUID];
        v24 = v62;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        v25 = v67;
        _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v19 + 8), v67, &v75);
        os_unfair_lock_unlock(v19);
        v26 = v76;
        v27 = swift_getObjectType();
        v69 = (*(v26 + 88))(v24, v27, v26);
        swift_unknownObjectRelease();
        v28 = *v20;
        v29 = v66;
        (*v20)(v24, v66);
        v30 = [v22 UUID];
        v31 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v19 + 8), v25, &v75);
        os_unfair_lock_unlock(v19);
        v32 = v76;
        v33 = swift_getObjectType();
        v68 = (*(v32 + 96))(v31, v33, v32);
        swift_unknownObjectRelease();
        v28(v31, v29);
        v34 = [v22 UUID];
        v35 = v64;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v19 + 8), v25, &v75);
        v70 = v10;
        os_unfair_lock_unlock(v19);
        v36 = v76;
        v37 = swift_getObjectType();
        v38 = (*(v36 + 104))(v35, v37, v36);
        swift_unknownObjectRelease();
        v28(v35, v29);
        v39 = type metadata accessor for VoicemailAccount();
        v40 = objc_allocWithZone(v39);
        v41 = [v22 UUID];
        v42 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v56)(&v40[OBJC_IVAR___MPVoicemailAccount_uuid], v42, v29);
        v43 = [v22 accountDescription];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = v59;
        v49 = v71;
        v50 = &v40[OBJC_IVAR___MPVoicemailAccount_accountDescription];
        *v50 = v45;
        v50[1] = v47;
        v40[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v69 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_subscribed] = v68 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v38 & 1;
        v51 = [v22 isProvisioned];
        v40[OBJC_IVAR___MPVoicemailAccount_provisioned] = v51;
        v52 = [v22 handle];
        v53 = v52;
        if (v52)
        {
        }

        v40[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v53 != 0;
        v73.receiver = v40;
        v73.super_class = v39;
        v1 = objc_msgSendSuper2(&v73, "init");

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 = v72 + 1;
        v18 = v58;
        v10 = v70;
        if (v49 == v48)
        {

          return v74;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v54 = v14;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v54;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.isCallVoicemailSupported(for:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v7);
  os_unfair_lock_unlock(v3);
  v4 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = (*(v4 + 88))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.isAccountSubscribed(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v7);
  os_unfair_lock_unlock(v3);
  v4 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = (*(v4 + 96))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.isGreetingChangeSupported(forAccountUUID:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v7);
  os_unfair_lock_unlock(v3);
  v4 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = (*(v4 + 104))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.transcriptionEnabled.getter()
{
  v1 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v1 + 8), v0, v5);
  os_unfair_lock_unlock(v1);
  v2 = v5[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 72))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.transcriptionProgress.getter()
{
  v1 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v1 + 8), v0, v6);
  os_unfair_lock_unlock(v1);
  v2 = v6[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 80))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

id _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC10vmdFactoryACSo011VMVoicemailE0CAA0cgH0CYbYTc_tcfc(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.mobilePhone);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v11 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  swift_allocObject();
  *&v3[v11] = PassthroughSubject.init()();
  v12 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  *v12 = 0;
  *(v12 + 1) = &_swiftEmptyArrayStorage;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory];
  *v14 = _s11MobilePhone26VoicemailDelegateDecoratorCSo18VMVoicemailManagerCIeghTgo_AcA0fG8Protocol_pIeghgo_TRTA;
  v14[1] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.isPasscodeChangeSupported(forAccountUUID:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v7);
  os_unfair_lock_unlock(v3);
  v4 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = (*(v4 + 112))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.maximumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v8);
  os_unfair_lock_unlock(v3);
  v4 = v8[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 120))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.minimumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v8);
  os_unfair_lock_unlock(v3);
  v4 = v8[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 128))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.set(passcode:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v5 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v11 + 8), v5, v15);
  os_unfair_lock_unlock(v11);
  v12 = v15[1];
  ObjectType = swift_getObjectType();
  (*(v12 + 136))(a1, a2, a3, a4, a5, ObjectType, v12);

  return swift_unknownObjectRelease();
}

double VoicemailAccountManagerWithDelegateDecorator.maximumGreetingDuration(ForAccountUUID:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v1 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v3 + 8), v1, v8);
  os_unfair_lock_unlock(v3);
  v4 = v8[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 144))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.greeting(ForAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v3 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v7 + 8), v3, v11);
  os_unfair_lock_unlock(v7);
  v8 = v11[1];
  ObjectType = swift_getObjectType();
  (*(v8 + 152))(a1, a2, a3, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.set(greeting:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v4 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v9 + 8), v4, v13);
  os_unfair_lock_unlock(v9);
  v10 = v13[1];
  ObjectType = swift_getObjectType();
  (*(v10 + 160))(a1, a2, a3, a4, ObjectType, v10);

  return swift_unknownObjectRelease();
}

uint64_t VoicemailAccountManagerWithDelegateDecorator.listen(with:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v23 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, v2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger, v5);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = inited;
  *(v18 + 3) = v15;
  *(v18 + 4) = v2;
  (*(v6 + 32))(&v18[v16], v8, v23);
  *&v18[v17] = v12;
  v19 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:), v18);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v20 = AnyCancellable.init(_:)();

  return v20;
}

uint64_t closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:), v10, v9);
}

uint64_t closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v13 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>();
  v10 = Publisher<>.sink(receiveValue:)();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailAccountManagerDecorator: processing listener.", v7, 2u);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *a1;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd) + 48);

  v8(v9, &a1[v10]);
}

uint64_t protocol witness for VoicemailBadgeCalculatorAccountManager.isAccountSubscribed(_:) in conformance VoicemailAccountManagerWithDelegateDecorator(uint64_t a1)
{
  v3 = *v1;
  v4 = v3 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v3 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC3vmdAA011VMVoicemailE8Protocol_pvgAaE_pAaE_pSgzYuYTXEfU_((v4 + 8), v3, v8);
  os_unfair_lock_unlock(v4);
  v5 = v8[1];
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = (*(v5 + 96))(a1, ObjectType, v5);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t sub_1000D0F10()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor()
{
  result = lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor;
  if (!lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor)
  {
    type metadata accessor for VoicemailActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor);
  }

  return result;
}

uint64_t sub_1000D0FD0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t type metadata accessor for VoicemailAccountManagerWithDelegateDecorator()
{
  result = type metadata singleton initialization cache for VoicemailAccountManagerWithDelegateDecorator;
  if (!type metadata singleton initialization cache for VoicemailAccountManagerWithDelegateDecorator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailAccountManagerWithDelegateDecorator()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1000D12F4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone26VMVoicemailManagerProtocol_pSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000D1324()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySayypGGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000D1354()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id _s11MobilePhone26VoicemailDelegateDecoratorCSo18VMVoicemailManagerCIeyBhTya_AcEIeghTgo_TRTA()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1000D13C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(char *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in VoicemailAccountManagerWithDelegateDecorator.listen(with:)(a1, v1 + v4, v5);
}

uint64_t sub_1000D1500()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailAccountManagerWithDelegateDecorator.delegate.getter(a1, a2, v6);
}

Swift::Void __swiftcall MPRecentsTableViewController.didSelectSuggestedSearch(token:)(UISearchToken token)
{
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  if ([(objc_class *)token.super.isa representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v18, &v19);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CSSuggestion);
    swift_dynamicCast();
    v4 = [v1 searchController];
    v5 = [v4 searchBar];

    v6 = [v5 searchTextField];
    v7 = [v17 currentToken];
    if (v7 && (v8 = v7, v9 = [v7 tokenKind], v8, !v9))
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSAttributedString);
      v15 = v6;
      CSSuggestion.localizedAttributedSuggestion.getter();
      v16 = NSAttributedString.init(_:)();
      v14 = [v16 string];

      if (!v14)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = String._bridgeToObjectiveC()();
      }
    }

    else
    {
      v10 = [v6 tokens];
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UISearchToken);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v6 insertToken:token.super.isa atIndex:v12];
      v13 = v6;
      v14 = String._bridgeToObjectiveC()();
    }

    [v6 setText:v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FavoritesListViewController.__allocating_init(dataSource:detailsPresenter:isInTab:)()
{
  v1 = type metadata accessor for FavoritesList();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = objc_allocWithZone(v0);

  FavoritesList.init(dataSource:detailsPresenter:isInTab:editOnAppear:dismiss:)();
  (*(v2 + 16))(v5, v7, v1);
  v9 = UIHostingController.init(rootView:)();

  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t FavoritesListViewController.init(dataSource:detailsPresenter:isInTab:)()
{
  v0 = type metadata accessor for FavoritesList();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;

  FavoritesList.init(dataSource:detailsPresenter:isInTab:editOnAppear:dismiss:)();
  (*(v1 + 16))(v4, v6, v0);
  v7 = UIHostingController.init(rootView:)();

  (*(v1 + 8))(v6, v0);
  return v7;
}

id FavoritesListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FavoritesListViewController()
{
  result = type metadata singleton initialization cache for FavoritesListViewController;
  if (!type metadata singleton initialization cache for FavoritesListViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall FavoritesListViewController.tabBarIconName()()
{
  v0 = [objc_opt_self() mainBundle];
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x455449524F564146;
  v1._object = 0xEF454C5449545F53;
  v2.value._countAndFlagsBits = 0x657469726F766146;
  v2.value._object = 0xE900000000000073;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id @objc FavoritesListViewController.tabBarIconName()()
{
  v0 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x455449524F564146;
  v1._object = 0xEF454C5449545F53;
  v2.value._countAndFlagsBits = 0x657469726F766146;
  v2.value._object = 0xE900000000000073;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v7);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

UIImage_optional __swiftcall FavoritesListViewController.tabBarIconImage()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void @objc FavoritesListViewController.tabBarIconImage()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {

    v2 = v1;
  }

  else
  {
    __break(1u);
  }
}

id @objc static FavoritesListViewController.defaultPNGName()()
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v8 = type metadata accessor for LiveVoicemailTip();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[54] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  v6[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[59] = swift_task_alloc();
  v6[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[61] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[62] = v10;
  v6[63] = *(v10 - 8);
  v6[64] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[65] = v11;
  v6[66] = *(v11 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = type metadata accessor for MainActor();
  v6[69] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[70] = v13;
  v6[71] = v12;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v13, v12);
}

uint64_t specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  *(v0 + 576) = lazy protocol witness table accessor for type LiveVoicemailTip and conformance LiveVoicemailTip();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 704) = enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 584) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 600) = v7;
  *(v0 + 592) = v5;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[73];
  v0[76] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);
  v3 = v0[54];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 608))();
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[57], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[78] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[79] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[71];
  v5 = v0[70];

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v5, v4);
}

{
  return (*(v0 + 608))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 440);

  (*(v3 + 8))(v2, v4);
  *(v1 + 709) = *(v1 + 708);
  v5 = *(v1 + 600);
  v6 = *(v1 + 592);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v2, v1);
}

{
  v71 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

LABEL_20:

    v64 = *(v0 + 8);

    return v64();
  }

  if (*(v0 + 709))
  {
    v69 = Strong;
    v2 = [Strong voicemailTipView];
    if (v2)
    {
      v3 = v2;

      if (one-time initialization token for mobilePhoneTips != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 408);
      v5 = *(v0 + 416);
      v6 = *(v0 + 400);
      v7 = *(v0 + 344);
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.mobilePhoneTips);
      (*(v4 + 16))(v5, v7, v6);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v66 = *(v0 + 528);
        v67 = *(v0 + 520);
        v68 = *(v0 + 536);
        v12 = *(v0 + 408);
        v11 = *(v0 + 416);
        v13 = *(v0 + 400);
        v14 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v14 = 136315394;
        v15 = _typeName(_:qualified:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v70);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = v13;
        v19 = dispatch thunk of Tip.id.getter();
        v21 = v20;
        (*(v12 + 8))(v11, v18);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v70);

        *(v14 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v9, v10, "%s: Already tracking tip %s, ignoring to add new one.", v14, 0x16u);
        swift_arrayDestroy();

        (*(v66 + 8))(v68, v67);
      }

      else
      {
        v58 = *(v0 + 536);
        v59 = *(v0 + 528);
        v60 = *(v0 + 520);
        v62 = *(v0 + 408);
        v61 = *(v0 + 416);
        v63 = *(v0 + 400);

        (*(v62 + 8))(v61, v63);
        (*(v59 + 8))(v58, v60);
      }

      goto LABEL_20;
    }

    v47 = *(v0 + 576);
    v49 = *(v0 + 400);
    v48 = *(v0 + 408);
    v50 = *(v0 + 360);
    v51 = *(v0 + 344);
    *(v0 + 120) = v49;
    *(v0 + 128) = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v53 = *(v48 + 16);
    *(v0 + 648) = v53;
    *(v0 + 656) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53(boxed_opaque_existential_1, v51, v49);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v50;
    v56 = objc_allocWithZone(type metadata accessor for TipUIView());
    v57 = TipUIView.init(_:arrowEdge:actionHandler:)();
    *(v0 + 664) = v57;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    type metadata accessor for TPTipsHelper();
    v45 = swift_task_alloc();
    *(v0 + 672) = v45;
    *v45 = v0;
    v46 = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);
  }

  else
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 424);
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    v26 = *(v0 + 344);
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.mobilePhoneTips);
    (*(v25 + 16))(v23, v26, v24);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 424);
      v32 = *(v0 + 400);
      v31 = *(v0 + 408);
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = _typeName(_:qualified:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v70);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = v32;
      v38 = dispatch thunk of Tip.id.getter();
      v40 = v39;
      (*(v31 + 8))(v30, v37);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v70);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Stopping observation of tip %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v42 = *(v0 + 424);
      v43 = *(v0 + 400);
      v44 = *(v0 + 408);

      (*(v44 + 8))(v42, v43);
    }

    type metadata accessor for TPTipsHelper();
    v45 = swift_task_alloc();
    *(v0 + 688) = v45;
    *v45 = v0;
    v46 = specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);
  }

  v45[1] = v46;

  return static TPTipsHelper.shared.getter();
}

{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v28 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 576);
  v3 = *(v0 + 400);
  v4 = *(v0 + 344);
  (*(*(v0 + 376) + 104))(*(v0 + 392), *(v0 + 704), *(v0 + 368));
  *(v0 + 160) = v3;
  *(v0 + 168) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v4, v3);
  v6 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v8 = v7;
  v9 = *(v0 + 392);
  v10 = *(v0 + 368);
  v11 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v8;
    *v8 = 0x8000000000000000;
    v12 = *(v0 + 240);
    v25 = v10;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v12);
    v14 = v6;
    v15 = *(v12 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v13, v12);
    v6 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native, &v27);
    (*v11)(v9, v25);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v8 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v9, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v11)(v9, v10);
  }

  v17 = *(v0 + 680);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v6(v0 + 288, 0);

  [v19 setVoicemailTipView:v18];
  v20 = static MainActor.shared.getter();
  *(v0 + 584) = v20;
  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v0 + 600) = v23;
  *(v0 + 592) = v21;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v21);
}

{
  v1 = *(v0 + 696);
  v2 = *(v0 + 704);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);

  (*(v4 + 104))(v3, v2, v5);
  v6 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 384)), (v8 & 1) == 0))
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v22 = *(v0 + 368);

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    goto LABEL_11;
  }

  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v11 = *(v0 + 368);
  outlined init with copy of Tip(*(v6 + 56) + 40 * v7, v0 + 56);
  (*(v10 + 8))(v9, v11);

  outlined init with take of Tip((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v12 = dispatch thunk of Tip.id.getter();
  v14 = v13;
  if (v12 == dispatch thunk of Tip.id.getter() && v14 == v15)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      v29 = *(v0 + 640);
      (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

      goto LABEL_10;
    }
  }

  v24 = *(v0 + 640);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = [v24 voicemailTipView];
  [v28 removeFromSuperview];

  [v24 setVoicemailTipView:0];
  [v24 loadExpandedViewsIfNecessary];

  (*(v26 + 8))(v25, v27);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
LABEL_11:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 680) = a1;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 696) = a1;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v4, v3);
}

void closure #1 in closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhoneTips);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Calling voicemailMessageTableViewCellShouldPresentWelcomeViewController", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v10 = [v1 delegate];
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector:"voicemailMessageTableViewCellShouldPresentWelcomeViewController:"])
      {
        [v11 voicemailMessageTableViewCellShouldPresentWelcomeViewController:v1];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall PHVoicemailMessageTableViewCell.tipKitStartObservation()()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for mobilePhoneTips != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.mobilePhoneTips);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Starting observation of tips", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_1000D406C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for LiveVoicemailTip();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation();

  return static TPTipsHelper.shared.getter();
}

uint64_t closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation()(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation(), 0, 0);
}

uint64_t closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation()()
{
  *(v0 + 96) = type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation(), v2, v1);
}

{
  v1 = *(v0 + 88);

  dispatch thunk of TPTipsHelper.setup()();

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation(), 0, 0);
}

{
  v23 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhoneTips);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Observing LiveVoicemailTip", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    LiveVoicemailTip.init()();
    v0[15] = static MainActor.shared.getter();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation();
    v11 = v0[9];

    return specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(v11);
  }

  else
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.mobilePhoneTips);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: Observing tip failed because self is nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    v21 = v0[1];

    return v21();
  }
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation(), v1, v0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation()(v2, v3);
}

Swift::Void __swiftcall PHVoicemailMessageTableViewCell.tipKitStopObservation()()
{
  swift_getObjectType();
  if (one-time initialization token for mobilePhoneTips != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.mobilePhoneTips);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Stopping observation of tips", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation()()
{
  v1 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation();

  return static TPTipsHelper.shared.getter();
}

{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation(), v2, v1);
}

{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation(), 0, 0);
}

uint64_t specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for LiveVoicemailTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v4, v3);
}

uint64_t specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized PHVoicemailMessageTableViewCell.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type LiveVoicemailTip and conformance LiveVoicemailTip();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D5648()
{
  v1 = type metadata accessor for LiveVoicemailTip();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for LiveVoicemailTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized closure #1 in PHVoicemailMessageTableViewCell.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t lazy protocol witness table accessor for type LiveVoicemailTip and conformance LiveVoicemailTip()
{
  result = lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip;
  if (!lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip)
  {
    type metadata accessor for LiveVoicemailTip();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip);
  }

  return result;
}

uint64_t outlined init with copy of Tip(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of Tip(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000D593C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id VoicemailBadge.__allocating_init(count:known:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count] = a1;
  v5[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id VoicemailBadge.init(count:known:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count] = a1;
  v2[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VoicemailBadge();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t PhoneVoicemailBadgeController.unreadVoicemailCountPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGGMd);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGGSo9NSRunLoopCGMd);
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v20 - v12;
  v23 = *(v0 + OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_unreadVoicemailCount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<VoicemailBadge, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  lazy protocol witness table accessor for type VoicemailBadge and conformance NSObject(&lazy protocol witness table cache variable for type VoicemailBadge and conformance NSObject, v14, type metadata accessor for VoicemailBadge);
  Publisher<>.removeDuplicates()();
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v15 = [objc_opt_self() mainRunLoop];
  v23 = v15;
  v16 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<VoicemailBadge, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of (NSAttributedStringKey, Any)(v3, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  (*(v21 + 8))(v6, v22);
  (*(v8 + 8))(v10, v7);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.RemoveDuplicates<CurrentValueSubject<VoicemailBadge, Never>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGGSo9NSRunLoopCGMd);
  v17 = v20;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v11 + 8))(v13, v17);
  return v18;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSMutableArray(255, &lazy cache variable for type metadata for NSRunLoop);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

void *PhoneVoicemailBadgeController.voicemailController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_voicemailController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhoneVoicemailBadgeController.voicemailController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_voicemailController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PhoneVoicemailBadgeController.listeners.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_listeners;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id PhoneVoicemailBadgeController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_unreadVoicemailCount;
  v3 = type metadata accessor for VoicemailBadge();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count] = 0;
  v4[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known] = 1;
  v9.receiver = v4;
  v9.super_class = v3;
  v8 = objc_msgSendSuper2(&v9, "init");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  swift_allocObject();
  *&v1[v2] = CurrentValueSubject.init(_:)();
  *&v1[OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_voicemailController] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone29PhoneVoicemailBadgeController_listeners] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PhoneVoicemailBadgeController();
  v5 = objc_msgSendSuper2(&v7, "init");
  PhoneVoicemailBadgeController.setupListeners()();
  PhoneVoicemailBadgeController.sendUpdate()();

  return v5;
}

uint64_t PhoneVoicemailBadgeController.setupListeners()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in PhoneVoicemailBadgeController.setupListeners(), v5);

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  [v8 addObserver:v6 selector:"handleNotification:" name:@"MPVoicemailControllerMessagesDidChangeNotification" object:0];

  v9 = [v7 defaultCenter];
  [v9 addObserver:v6 selector:"handleNotification:" name:@"MPVoicemailControllerUnreadMessageCountDidChangeNotification" object:0];

  v10 = [v7 defaultCenter];
  [v10 addObserver:v6 selector:"handleNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  type metadata accessor for ApplicationServices();
  v11 = [swift_getObjCClassFromMetadata() sharedInstance];
  v12 = (*((swift_isaMask & *v11) + 0xC0))();
  v14 = v13;

  ObjectType = swift_getObjectType();
  v20[1] = v12;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v14 + 40);

  v18 = v17(partial apply for closure #2 in PhoneVoicemailBadgeController.setupListeners(), v16, ObjectType, v14);

  return (*((swift_isaMask & *v6) + 0x90))(v18);
}

uint64_t closure #1 in PhoneVoicemailBadgeController.setupListeners()()
{
  type metadata accessor for ApplicationServices();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[3] = v1;
  v2 = ((swift_isaMask & *v1) + 160) & 0xFFFFFFFFFFFFLL | 0x212B000000000000;
  v0[4] = *((swift_isaMask & *v1) + 0xA0);
  v0[5] = v2;
  type metadata accessor for ApplicationServicesActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailBadge and conformance NSObject(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, 255, type metadata accessor for ApplicationServicesActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PhoneVoicemailBadgeController.setupListeners(), v4, v3);
}

{
  v1 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  return (_swift_task_switch)(closure #1 in PhoneVoicemailBadgeController.setupListeners(), 0, 0);
}

{
  (*((swift_isaMask & **(v0 + 16)) + 0x78))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

void closure #2 in PhoneVoicemailBadgeController.setupListeners()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for subscriptionStatus != -1)
    {
      swift_once();
    }

    if ((*(static VoicemailAccountManagerUpdate.subscriptionStatus + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue)) != 0)
    {
      PhoneVoicemailBadgeController.sendUpdate()();
    }
  }
}

void PhoneVoicemailBadgeController.handleNotification(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.mobilePhone);
  v18 = *(v9 + 16);
  v18(v16, a1, v8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v30 = v20;
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v21 = 136315138;
    v18(v7, v16, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    outlined init with copy of Notification?(v7, v5);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      outlined destroy of (NSAttributedStringKey, Any)(v5, &_s10Foundation12NotificationVSgMd);
      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation12NotificationVSgMd);
      (*(v9 + 8))(v16, v8);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      (*(v9 + 32))(v14, v5, v8);
      v18(v31, v14, v8);
      v24 = String.init<A>(reflecting:)();
      v22 = v25;
      v26 = *(v9 + 8);
      v26(v14, v8);
      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation12NotificationVSgMd);
      v26(v16, v8);
      v23 = v24;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v32);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v30, "PhoneVoicemailBadgeController: handling notification %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {

    (*(v9 + 8))(v16, v8);
  }

  PhoneVoicemailBadgeController.sendUpdate()();
}

void PhoneVoicemailBadgeController.sendUpdate()()
{
  [objc_opt_self() _invalidateBadge];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHVoicemailNavigationController);
  v0 = [swift_getObjCClassFromMetadata() badge];
  v2 = v1;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.mobilePhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "PhoneVoicemailBadgeController: sending update of badge %s known: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for VoicemailBadge();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count] = v2;
    v14[OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known] = v0 & 1;
    v17.receiver = v14;
    v17.super_class = v13;
    v15 = objc_msgSendSuper2(&v17, "init");
    v16 = v15;
    CurrentValueSubject.send(_:)();
  }
}

id VoicemailBadge.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000D70FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1000D7158(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1000D71C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_1000D721C(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x90);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t outlined init with copy of Notification?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D734C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in PhoneVoicemailBadgeController.setupListeners()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in PhoneVoicemailBadgeController.setupListeners()(a1, v4, v5, v6);
}

uint64_t sub_1000D7440()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type VoicemailBadge and conformance NSObject(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);

  return specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:), v5, v4);
}

uint64_t @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)()
{
  v1 = v0[3];

  v0[8] = _Block_copy(v1);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);
  v3 = v0[6];

  return specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(v3);
}

uint64_t @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;

  (*(v5 + 8))(v4, v6);
  if (a1)
  {
    type metadata accessor for PhoneSmartActions();
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = *(v3 + 64);
  (v9)[2](v9, v8.super.isa);

  _Block_release(v9);

  v10 = *(v7 + 8);

  return v10();
}

uint64_t MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return (specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:))(a1, a2, a3, a4);
}

uint64_t @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:), v8, v7);
}

uint64_t @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[11] = _Block_copy(v1);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v0[12] = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:);
  v8 = v0[9];
  v9 = v0[4];

  return specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)(v8, v3, v5, v9);
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t PhoneSmartActions.appBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_appBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PhoneSmartActions.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_appBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id @objc PhoneSmartActions.dateCreated.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = *a4;
  swift_beginAccess();
  v13 = (*(v9 + 16))(v11, a1 + v12, v8);
  v14 = a5(v13);
  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t PhoneSmartActions.dateCreated.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

void @objc PhoneSmartActions.dateCreated.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t *a6)
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  a5(a3);
  v14 = *a6;
  swift_beginAccess();
  v15 = *(v11 + 40);
  v16 = a1;
  v15(&a1[v14], v13, v10);
  swift_endAccess();
}

uint64_t PhoneSmartActions.dateCreated.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t PhoneSmartActions.parameters.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_parameters;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t one-time initialization function for actionDescriptionMap()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionDescriptionMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd);
  result = swift_arrayDestroy();
  static PhoneSmartActions.actionDescriptionMap = v0;
  return result;
}

uint64_t *PhoneSmartActions.actionDescriptionMap.unsafeMutableAddressor()
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  return &static PhoneSmartActions.actionDescriptionMap;
}

uint64_t static PhoneSmartActions.actionDescriptionMap.getter()
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PhoneSmartActions.actionDescriptionMap.setter(uint64_t a1)
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PhoneSmartActions.actionDescriptionMap = a1;
}

uint64_t (*static PhoneSmartActions.actionDescriptionMap.modify())()
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return PhoneVoicemailBadgeController.listeners.modify;
}

uint64_t key path getter for static PhoneSmartActions.actionDescriptionMap : PhoneSmartActions.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static PhoneSmartActions.actionDescriptionMap;
}

uint64_t key path setter for static PhoneSmartActions.actionDescriptionMap : PhoneSmartActions.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for actionDescriptionMap;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PhoneSmartActions.actionDescriptionMap = v1;
}

id PhoneSmartActions.init(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmartAction.dateCreated.getter();
  (*(v9 + 32))(&v2[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_dateCreated], v11, v8);
  v12 = SmartAction.appBundleIdentifier.getter();
  v13 = &v2[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_appBundleIdentifier];
  *v13 = v12;
  v13[1] = v14;
  *&v2[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_parameters] = SmartAction.parameters.getter();
  SmartAction.id.getter();
  v15 = *(v5 + 32);
  v15(&v2[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_recommendationId], v7, v4);
  SmartAction.referenceID.getter();
  v15(&v2[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_voicemailId], v7, v4);
  v16 = type metadata accessor for PhoneSmartActions();
  v20.receiver = v2;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "init");
  v18 = type metadata accessor for SmartAction();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

Swift::String_optional __swiftcall PhoneSmartActions.getAppActionTitle()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xD8))();
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];

  if (one-time initialization token for actionDescriptionMap != -1)
  {
    swift_once();
  }

  v8 = (*((swift_isaMask & *v1) + 0x90))();
  v10 = v9;
  swift_beginAccess();
  v11 = static PhoneSmartActions.actionDescriptionMap;
  if (!*(static PhoneSmartActions.actionDescriptionMap + 16))
  {

    goto LABEL_10;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_10:
    swift_endAccess();
LABEL_11:

    v20 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  v15 = (*(v11 + 56) + 16 * v12);
  v17 = *v15;
  v16 = v15[1];
  swift_endAccess();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v7;
  v19._object = v6;
  String.append(_:)(v19);

  v20 = v17;
  v21 = v16;
LABEL_12:
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

id PhoneSmartActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSmartActions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for SmartAction();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for SmartActionQuery();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v7;
  v1[20] = v6;

  return (_swift_task_switch)(specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:), v7, v6);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 120);
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v3 + 160);
  v9 = *(v3 + 152);
  if (v1)
  {
    v10 = specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);
  }

  else
  {
    v10 = specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);
  }

  return (_swift_task_switch)(v10, v9, v8);
}

uint64_t specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v0[4] = &_swiftEmptyArrayStorage;
  type metadata accessor for SmartActionsController();
  swift_allocObject();
  v0[21] = SmartActionsController.init()();
  (*(v5 + 16))(v1, v6, v4);
  (*(v2 + 104))(v1, enum case for SmartActionQuery.voicemail(_:), v3);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = specialized MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);
  v8 = v0[17];

  return SmartActionsController.fetchSmartActions(query:)(v8);
}

{
  super_class = v0[11].super_class;

  v2 = *(super_class + 2);
  if (v2)
  {
    v3 = v0[6].super_class;
    v30 = *(v3 + 2);
    v4 = v0[11].super_class + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = (v0[3].super_class + 32);
    v29 = (v0[5].receiver + 32);
    v26 = *(v3 + 9);
    v27 = (v3 + 8);
    do
    {
      v31 = v2;
      receiver = v0[7].receiver;
      v7 = v0[5].super_class;
      v6 = v0[6].receiver;
      v8 = v0[4].receiver;
      v9 = v0[4].super_class;
      v10 = v0[3].receiver;
      v30(receiver, v4, v6);
      v11 = type metadata accessor for PhoneSmartActions();
      v12 = objc_allocWithZone(v11);
      SmartAction.dateCreated.getter();
      (*v29)(&v12[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_dateCreated], v7, v9);
      v13 = SmartAction.appBundleIdentifier.getter();
      v14 = &v12[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_appBundleIdentifier];
      *v14 = v13;
      v14[1] = v15;
      *&v12[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_parameters] = SmartAction.parameters.getter();
      SmartAction.id.getter();
      v16 = *v28;
      (*v28)(&v12[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_recommendationId], v8, v10);
      SmartAction.referenceID.getter();
      (*v27)(receiver, v6);
      v16(&v12[OBJC_IVAR____TtC11MobilePhone17PhoneSmartActions_voicemailId], v8, v10);
      v0[1].receiver = v12;
      v0[1].super_class = v11;
      v17 = objc_msgSendSuper2(v0 + 1, "init");
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 += v26;
      v2 = v31 - 1;
    }

    while (v31 != 1);
    v18 = v0[2].receiver;
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.mobilePhone);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    if (v18 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v23;

    _os_log_impl(&_mh_execute_header, v20, v21, "Voicemail smart action suggestions returning %ld recommendations", v22, 0xCu);
  }

  else
  {
  }

  v24 = v0->super_class;

  return v24(v18);
}

{

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.mobilePhone);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error querying for Smart action: %@", v4, 0xCu);
    outlined destroy of NSObject?(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t specialized static PhoneSmartActions.getBundleFromAction(_:)()
{
  if (one-time initialization token for actionDescriptionMap != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = static PhoneSmartActions.actionDescriptionMap;
    v1 = 1 << *(static PhoneSmartActions.actionDescriptionMap + 32);
    v2 = -1;
    if (v1 < 64)
    {
      v2 = ~(-1 << v1);
    }

    v3 = v2 & *(static PhoneSmartActions.actionDescriptionMap + 64);
    v4 = (v1 + 63) >> 6;

    v5 = 0;
    if (v3)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {

        return 0;
      }

      v3 = *(v0 + 64 + 8 * v6);
      ++v5;
      if (v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  while (1)
  {
    v6 = v5;
LABEL_9:
    v7 = (v6 << 10) | (16 * __clz(__rbit64(v3)));
    v8 = *(*(v0 + 48) + v7);
    v11 = *(*(v0 + 56) + v7);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    if (String.hasPrefix(_:)(v11))
    {
      break;
    }

    v3 &= v3 - 1;

    v5 = v6;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v8;
}

uint64_t specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return (_swift_task_switch)(specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:), v6, v5);
}

uint64_t specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)()
{
  v28 = v0;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.mobilePhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v4, &v27);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "Voicemail smart action suggestions executing recommendation: %s, button: %llu", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v9 = specialized static PhoneSmartActions.getBundleFromAction(_:)();
  v0[10] = v10;
  if (v10)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v0[11] = v12;
    v16 = v12;
    type metadata accessor for SmartActionsController();
    swift_allocObject();
    v0[12] = SmartActionsController.init()();
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:);
    v18 = v0[2];

    return SmartActionsController.processAppAction(for:recommendation:bundleName:)(v18, v15, v16, v13, v14);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[3];
      v21 = v0[4];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v27);
      _os_log_impl(&_mh_execute_header, v19, v20, "SmartActions: Error processing app action: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    v25 = v0[1];

    return v25();
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = specialized MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:);
  }

  return (_swift_task_switch)(v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SmartActions: Error processing app action: %@", v3, 0xCu);
    outlined destroy of NSObject?(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t type metadata accessor for PhoneSmartActions()
{
  result = type metadata singleton initialization cache for PhoneSmartActions;
  if (!type metadata singleton initialization cache for PhoneSmartActions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PhoneSmartActions()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000DAD0C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:)(v2, v3, v4, v5, v6);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t sub_1000DAEF4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:)(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_23()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *static VisualVoicemailManagerFactory.getVisualVoiceMail(visualVoicemailManager:onVoicemailsChanged:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for VisualVoicemailManager());
  v7 = a1;

  return VisualVoicemailManager.init(visualVoicemailManager:onVoicemailsChanged:)(v7, a2, a3);
}

id VisualVoicemailManagerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000DB3C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t ObservableRecentsController.localizedRecentCallInfo(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone27ObservableRecentsControllerC23LocalizedRecentCallInfoVSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v38 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_localizedRecentCallInfoCache);
  v17 = a1;
  v18 = [a1 uniqueId];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v42 = v19;
  v43 = v21;
  (*(*v16 + 128))(&v42);

  v39 = v5;
  v22 = *(v5 + 48);
  if (v22(v15, 1, v4) != 1)
  {
    return outlined init with take of ObservableRecentsController.LocalizedRecentCallInfo(v15, v41);
  }

  outlined destroy of (NSAttributedStringKey, Any)(v15, &_s11MobilePhone27ObservableRecentsControllerC23LocalizedRecentCallInfoVSgMd);
  v23 = *(v38 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController);
  v24 = v17;
  ObservableRecentsController.LocalizedRecentCallInfo.init(call:recentsItem:)(v24, [v23 itemForRecentCall:v24], v13);
  if (v22(v13, 1, v4) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v13, &_s11MobilePhone27ObservableRecentsControllerC23LocalizedRecentCallInfoVSgMd);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v32._object = 0x8000000100242530;
    v32._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v32);
    v33 = [v24 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v25 = v40;
    outlined init with take of ObservableRecentsController.LocalizedRecentCallInfo(v13, v40);
    v26 = v41;
    outlined init with copy of ObservableRecentsController.LocalizedRecentCallInfo(v25, v41);
    v27 = [v24 uniqueId];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    outlined init with copy of ObservableRecentsController.LocalizedRecentCallInfo(v26, v10);
    (*(v39 + 56))(v10, 0, 1, v4);
    v42 = v28;
    v43 = v30;
    (*(*v16 + 136))(v10, &v42);
    return outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v25);
  }

  return result;
}

uint64_t ObservableRecentsController.recentCalls.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for ObservableRecentsController.recentCalls : ObservableRecentsController@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ObservableRecentsController.recentCalls : ObservableRecentsController(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path setter for ObservableRecentsController.$recentCalls : ObservableRecentsController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo12CHRecentCallCG_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo12CHRecentCallCGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ObservableRecentsController.filter.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for ObservableRecentsController.filter : ObservableRecentsController@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ObservableRecentsController.filter : ObservableRecentsController(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return ObservableRecentsController.filter.didset(v4);
}

uint64_t ObservableRecentsController.filter.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  return ObservableRecentsController.filter.didset(v3);
}

uint64_t ObservableRecentsController.filter.didset(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 != (a1 & 1))
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController] recentCalls];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    specialized ObservableRecentsController.filteredRecentCalls(from:filter:)(v6, v8);

    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v1;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t (*ObservableRecentsController.filter.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return ObservableRecentsController.filter.modify;
}

uint64_t ObservableRecentsController.filter.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  static Published.subscript.getter();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  static Published.subscript.setter();
  return ObservableRecentsController.filter.didset(v4);
}

uint64_t key path setter for ObservableRecentsController.$filter : ObservableRecentsController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11MobilePhone27ObservableRecentsControllerC6FilterO_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11MobilePhone27ObservableRecentsControllerC6FilterOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ObservableRecentsController.$filter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11MobilePhone27ObservableRecentsControllerC6FilterO_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11MobilePhone27ObservableRecentsControllerC6FilterOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ObservableRecentsController.$filter.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11MobilePhone27ObservableRecentsControllerC6FilterO_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController__filter;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11MobilePhone27ObservableRecentsControllerC6FilterOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ObservableRecentsController.$filter.modify;
}

void ObservableRecentsController.$filter.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t property wrapper backing initializer of ObservableRecentsController.contactsChangedDate(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6);
  outlined init with copy of Date?(v7, v5);
  Published.init(initialValue:)();
  outlined destroy of (NSAttributedStringKey, Any)(a1, &_s10Foundation4DateVSgMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation4DateVSgMd);
}