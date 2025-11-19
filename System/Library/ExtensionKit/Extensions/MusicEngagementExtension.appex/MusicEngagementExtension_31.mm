uint64_t getEnumTagSinglePayload for GlowView.StaticGradientProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlowView.StaticGradientProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for GradientMaskModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy80_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StrokeView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StrokeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<AnimatedGlowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties()
{
  result = lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties;
  if (!lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowModifier.StaticGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties()
{
  result = lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties;
  if (!lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_1002F5898()
{
  type metadata accessor for GradientMaskModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  HostedScenePhaseModel.init(label:)(a1, a2, a3);
  State.init(wrappedValue:)();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = type metadata singleton initialization cache for HostedScenePhaseModel;
  if (!type metadata singleton initialization cache for HostedScenePhaseModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model()
{
  type metadata accessor for HostedScenePhaseModel();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = static Alignment.center.getter();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo13UIWindowSceneCSgGMd);
  State.projectedValue.getter();
  v30 = v36;
  v17 = v37;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMd);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMd) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMd);
  State.wrappedValue.getter();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMd) + 28);
  v25 = type metadata accessor for ScenePhase();
  (*(*(v25 - 8) + 16))(v23 + v24, v21 + v22, v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  State.wrappedValue.getter();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of TaskPriority?(v13, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd);
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.scenePhase.setter();
}

void closure #2 in HostedScenePhaseSupport.body(content:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMd);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  HostedScenePhaseModel.windowScene.didset(Strong);
}

uint64_t View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  HostedScenePhaseModel.init(label:)(a1, a2, a3);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

uint64_t HostedScenePhaseModel.init(label:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = type metadata accessor for ScenePhase();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.scenes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = StaticString.description.getter();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  return v4;
}

uint64_t HostedScenePhaseModel.scenePhase.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, &type metadata accessor for ScenePhase);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    HostedScenePhaseModel._scenePhase.didset();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.scenes);
}

uint64_t HostedScenePhaseModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.scenes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = StaticString.description.getter();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      outlined init with copy of Any(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_0Tm(v20, v20[3]);
      [v14 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = type metadata accessor for ScenePhase();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = type metadata accessor for ObservationRegistrar();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t HostedScenePhaseModel.__deallocating_deinit()
{
  HostedScenePhaseModel.deinit();

  return swift_deallocClassInstance();
}

void HostedScenePhaseModel._scenePhase.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.scenes);

  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = StaticString.description.getter();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = String.init<A>(describing:)();
    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t HostedScenePhaseModel.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = type metadata accessor for ScenePhase();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path getter for HostedScenePhaseModel.scenePhase : HostedScenePhaseModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = type metadata accessor for ScenePhase();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for HostedScenePhaseModel.scenePhase : HostedScenePhaseModel(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return HostedScenePhaseModel.scenePhase.setter(v5);
}

uint64_t sub_1002F6F38()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ScenePhase> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HostedScenePhaseSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<WindowSceneResolver> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd);
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject, type metadata accessor for UIWindowScene);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UIWindowScene()
{
  result = _sSo13UIWindowSceneCML_0;
  if (!_sSo13UIWindowSceneCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13UIWindowSceneCML_0);
  }

  return result;
}

uint64_t closure #1 in HostedScenePhaseModel.scenePhase.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  HostedScenePhaseModel._scenePhase.didset();
  return (*(v5 + 8))(v8, v4);
}

void HostedScenePhaseModel.windowScene.didset(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScenePhaseOSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      type metadata accessor for UIWindowScene();
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.scenes);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = StaticString.description.getter();
    v30 = v4;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v17, v18, &v32);
    v29 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v31 = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v21, v22, &v32);
    v4 = v30;

    *(v16 + 14) = v23;
    v8 = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 activationState];

    v27 = &enum case for ScenePhase.background(_:);
    v28 = &enum case for ScenePhase.active(_:);
    if (v26)
    {
      v28 = &enum case for ScenePhase.inactive(_:);
    }

    if (v26 != 2)
    {
      v27 = v28;
    }

    (*(v6 + 104))(v4, *v27, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    (*(v6 + 104))(v8, enum case for ScenePhase.inactive(_:), v5);
  }

  HostedScenePhaseModel.scenePhase.setter(v8);
  HostedScenePhaseModel.setupNotificationObservers()();
}

uint64_t HostedScenePhaseModel.setupNotificationObservers()()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd);
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.scenes);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = StaticString.description.getter();
      v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtGMd);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      outlined init with copy of (NSNotificationName?, ScenePhase)(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = partial apply for closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers();
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = _s10Foundation12NotificationVIeghn_So14NSNotificationCIeyBhy_TR_0;
      ObjectType = &block_descriptor_57;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      outlined destroy of TaskPriority?(v54, &_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      outlined init with take of Any(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    specialized HostedScenePhaseModel.notificationObservers.didset(v70);
  }

  else
  {
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.scenes);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = StaticString.description.getter();
      v80 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    specialized HostedScenePhaseModel.notificationObservers.didset(v81);
  }
}

uint64_t closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.scenes);
    v12 = a3;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = StaticString.description.getter();
      v27 = a4;
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSgMd);
      v22 = String.init<A>(describing:)();
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    HostedScenePhaseModel.scenePhase.setter(v9);
  }

  return result;
}

uint64_t _s10Foundation12NotificationVIeghn_So14NSNotificationCIeyBhy_TR_0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t one-time initialization function for scenes()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.scenes);
  __swift_project_value_buffer(v0, static Logger.scenes);
  return static Logger.music(_:)();
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata completion function for HostedScenePhaseModel()
{
  result = type metadata accessor for ScenePhase();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1002F86E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002F8774()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport()
{
  result = lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport;
  if (!lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport);
  }

  return result;
}

uint64_t specialized HostedScenePhaseModel.notificationObservers.didset(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      outlined init with copy of Any(v4, v6);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_0Tm(v6, v6[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t outlined init with copy of (NSNotificationName?, ScenePhase)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8970()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002F89A8()
{
  v1 = type metadata accessor for ScenePhase();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(uint64_t a1)
{
  v3 = *(type metadata accessor for ScenePhase() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WindowSceneResolver.windowScene.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.wrappedValue.getter();
  return v1;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.wrappedValue.getter();
  return WindowSceneResolver.windowScene.modify;
}

void WindowSceneResolver.windowScene.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.projectedValue.getter();
  return v1;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.projectedValue.getter();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.wrappedValue.setter();
}

void WindowSceneResolver.View.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver()
{
  result = lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver;
  if (!lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver;
  if (!lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance WindowSceneResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance WindowSceneResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance WindowSceneResolver()
{
  lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 __swift_memcpy24_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  outlined init with take of NoticePresenter.Configuration(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t NoticePresenter.notice.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v6, v5, &_s9MusicCore6NoticeVSgMd);
  v7 = specialized NoticePresenter.shouldNotifyObservers<A>(_:_:)(v5, a1);
  outlined destroy of TaskPriority?(v5, &_s9MusicCore6NoticeVSgMd);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of TaskPriority?(a1, v5, &_s9MusicCore6NoticeVSgMd);
    swift_beginAccess();
    outlined assign with take of Notice?(v5, v1 + v6);
    swift_endAccess();
  }

  return outlined destroy of TaskPriority?(a1, &_s9MusicCore6NoticeVSgMd);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v3, v8);
  v4 = specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(v8, a1);
  outlined destroy of NoticePresenter.Configuration(v8);
  if (v4)
  {
    outlined init with copy of NoticePresenter.Configuration(a1, v8);
    outlined init with copy of NoticePresenter.Configuration(v1 + v3, v7);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v8, v1 + v3);
    swift_endAccess();
    NoticePresenter._configuration.didset(v7);
    outlined destroy of NoticePresenter.Configuration(v7);
    outlined destroy of NoticePresenter.Configuration(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[0] = v1;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of NoticePresenter.Configuration(a1);
}

uint64_t NoticePresenter.willPresentHandler.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1);
}

uint64_t key path getter for NoticePresenter.notice : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v3 + v4, a2, &_s9MusicCore6NoticeVSgMd);
}

uint64_t key path setter for NoticePresenter.notice : NoticePresenter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of TaskPriority?(a1, &v6 - v3, &_s9MusicCore6NoticeVSgMd);
  return NoticePresenter.notice.setter(v4);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v5 + v3, a1, &_s9MusicCore6NoticeVSgMd);
}

uint64_t closure #1 in NoticePresenter.notice.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined assign with copy of Notice?(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v7, v6, &_s9MusicCore6NoticeVSgMd);
  v8 = type metadata accessor for Notice(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  outlined destroy of TaskPriority?(v6, &_s9MusicCore6NoticeVSgMd);
  if (v7 != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-16] = v2;
    *&v13[-8] = 0;
    v14 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (a1)
    {
      static Animation.default.getter();
    }

    withAnimation<A>(_:_:)();

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v11 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + v10))
    {
      type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
      v12 = static OS_dispatch_queue.main.getter();

      OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in NoticePresenter.dismiss(_:), v2);
    }
  }
}

uint64_t closure #1 in NoticePresenter.dismiss(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notice(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return NoticePresenter.notice.setter(v2);
}

void closure #2 in NoticePresenter.dismiss(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - v3;
  swift_getKeyPath();
  v7[1] = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(a1 + v5, v4, &_s9MusicCore6NoticeVSgMd);
  v6 = type metadata accessor for Notice(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  outlined destroy of TaskPriority?(v4, &_s9MusicCore6NoticeVSgMd);
  if (v5 == 1)
  {
    NoticePresenter.passthroughWindow.setter(0);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  specialized NoticePresenter.present(_:internalOnly:animated:)(v6, a2);
  return outlined destroy of Notice(v6);
}

void createWindowIfNeeded #1 () in NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v10[0] = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v10[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(a1 + v5, v10);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = specialized NoticePresenter.UIRootViewController.init(noticePresenter:configuration:)(v7, v10);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    NoticePresenter.passthroughWindow.setter(v4);
  }
}

void closure #1 in NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  outlined init with copy of Notice(a2, &v19 - v5);
  v7 = type metadata accessor for Notice(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  NoticePresenter.notice.setter(v6);
  swift_getKeyPath();
  v20 = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 view];

        if (!v13)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }

  swift_getKeyPath();
  v20 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + v8);
  if (v14)
  {
    v15 = [v14 rootViewController];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
LABEL_12:

        return;
      }

      v18 = [v17 view];

      if (v18)
      {
        [v18 layoutIfNeeded];
        v16 = v18;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t NoticePresenter.dismissalWorkItem.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for NoticePresenter.dismissalWorkItem : NoticePresenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

uint64_t key path setter for NoticePresenter.dismissalWorkItem : NoticePresenter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in NoticePresenter.dismissalWorkItem.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;
  if (!v2)
  {
  }

  dispatch thunk of DispatchWorkItem.cancel()();
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

void NoticePresenter._configuration.didset(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v4, v9);
  v5 = specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(a1, v9);
  outlined destroy of NoticePresenter.Configuration(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          outlined init with copy of NoticePresenter.Configuration(v2 + v4, v9);
          NoticePresenter.UIRootViewController.configuration.setter(v9);
        }
      }
    }
  }
}

void (*NoticePresenter._configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v5, v4);
  return NoticePresenter._configuration.modify;
}

void NoticePresenter._configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    outlined init with copy of NoticePresenter.Configuration(*a1, v2 + 56);
    outlined init with copy of NoticePresenter.Configuration(v3 + v4, v2 + 112);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v2 + 56, v3 + v4);
    swift_endAccess();
    NoticePresenter._configuration.didset(v2 + 112);
    outlined destroy of NoticePresenter.Configuration(v2 + 112);
  }

  else
  {
    outlined init with copy of NoticePresenter.Configuration(v3 + v4, v2 + 56);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v2, v3 + v4);
    swift_endAccess();
    NoticePresenter._configuration.didset(v2 + 56);
  }

  outlined destroy of NoticePresenter.Configuration(v2 + 56);
  outlined destroy of NoticePresenter.Configuration(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return outlined init with copy of NoticePresenter.Configuration(v5 + v3, a1);
}

uint64_t key path getter for NoticePresenter.configuration : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return outlined init with copy of NoticePresenter.Configuration(v3 + v4, a2);
}

uint64_t closure #1 in NoticePresenter.configuration.setter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NoticePresenter.Configuration(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(a1 + v3, v5);
  swift_beginAccess();
  outlined assign with copy of NoticePresenter.Configuration(v6, a1 + v3);
  swift_endAccess();
  NoticePresenter._configuration.didset(v5);
  outlined destroy of NoticePresenter.Configuration(v5);
  return outlined destroy of NoticePresenter.Configuration(v6);
}

void (*NoticePresenter.configuration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = NoticePresenter._configuration.modify(v4);
  return NoticePresenter.configuration.modify;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t key path getter for NoticePresenter.willPresentHandler : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = partial apply for thunk for @escaping @callee_guaranteed (@inout NoticePresenter.Configuration) -> ();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t key path setter for NoticePresenter.willPresentHandler : NoticePresenter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@inout NoticePresenter.Configuration) -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
}

uint64_t closure #1 in NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

void (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = NoticePresenter._willPresentHandler.modify();
  return NoticePresenter.willPresentHandler.modify;
}

void *NoticePresenter.passthroughWindow.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id key path getter for NoticePresenter.passthroughWindow : NoticePresenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void NoticePresenter.passthroughWindow.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = *(v2 + v4);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v7 = 0;
LABEL_8:
  *(v2 + v4) = a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  v11 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v9)
  {
    v12 = *(v2 + v4);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v9 = v9, v14 = static NSObject.== infix(_:_:)(), v9, v13, (v14 & 1) == 0))
    {
      [v9 resignKeyWindow];
    }
  }

  else
  {
  }
}

void closure #1 in NoticePresenter.passthroughWindow.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  v6 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = static NSObject.== infix(_:_:)(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &_s9MusicCore6NoticeVSgMd);

  outlined destroy of NoticePresenter.Configuration(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &_s9MusicCore6NoticeVSgMd);

  outlined destroy of NoticePresenter.Configuration(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.noticePresenting(_:configurator:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  State.init(wrappedValue:)();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd);
  Binding.wrappedValue.getter();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  outlined init with copy of TaskPriority?((v4 + 7), (v4 + 3), &_s11MusicCoreUI15NoticePresenterCSgMd);
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd);
  Binding.wrappedValue.getter();
  return NoticePresentingResolverModifier.noticePresenter.modify;
}

void NoticePresentingResolverModifier.noticePresenter.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction((v2 + 6));

    outlined destroy of TaskPriority?((v2 + 7), &_s11MusicCoreUI15NoticePresenterCSgMd);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction((v2 + 6));

    outlined destroy of TaskPriority?((v2 + 7), &_s11MusicCoreUI15NoticePresenterCSgMd);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v12 = v2[6];
  v28[0] = v2[5];
  v11 = v28[0];
  v28[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo13UIWindowSceneCSgGMd);
  State.projectedValue.getter();
  v22 = v26;
  v13 = v27;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMd);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v22;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  State.wrappedValue.getter();
  v16 = v28[0];
  v25 = v28[0];
  *&v26 = v12;
  v17 = *v3;
  v18 = v3[3];
  v29 = v3[2];
  v30 = v17;
  v28[0] = v11;
  v19 = swift_allocObject();
  v20 = *(v3 + 1);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 2);
  *(v19 + 64) = v3[6];
  outlined init with copy of Transaction(&v30, v24);

  outlined init with copy of TaskPriority?(&v29, v24, &_s11MusicCoreUI15NoticePresenterCSgMd);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v18);
  outlined init with copy of TaskPriority?(v28, v24, &_sSo13UIWindowSceneCSgMd);
  outlined init with copy of TaskPriority?(&v26, v24, &_s7SwiftUI11AnyLocationCySo13UIWindowSceneCSgGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd);
}

uint64_t closure #2 in NoticePresentingResolverModifier.body(content:)(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  outlined copy of (@escaping @callee_guaranteed () -> ())?(*(a3 + 3));
  v6 = v4;
  v7 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v12 = v7;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v7 + v8, &v12);

  v5(&v12);
  UIWindowScene.noticePresenter.getter();
  outlined init with copy of NoticePresenter.Configuration(&v12, v11);
  NoticePresenter.configuration.setter(v11);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

  outlined destroy of NoticePresenter.Configuration(&v12);
LABEL_5:
  v9 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v12 = *a3;
  v13 = *(a3 + 2);
  v11[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd);
  return Binding.wrappedValue.setter();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    outlined destroy of TaskPriority?(v5, &_s9MusicCore16NoticePresenting_pSgMd_0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pMd_0);
  type metadata accessor for NoticePresenter();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter();
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    outlined init with copy of NoticePresenter.Configuration(v0 + v2, v4);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v5, v0 + v2);
    swift_endAccess();
    NoticePresenter._configuration.didset(v4);
    outlined destroy of NoticePresenter.Configuration(v4);
    outlined destroy of NoticePresenter.Configuration(v5);
    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    return v0;
  }

  return v4[0];
}

__n128 NoticePresentationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AKyAKyAKyAKyAKy09MusicCoreB006NoticeD0VAA08_PaddingG0VGAUGAUGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGAA012_EnvironmenturS0VyAQ0O9DismissalVSgGGSgAPtGGMd);
  closure #1 in NoticePresentationView.body.getter(v1, &v5[*(v6 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v5, a1, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMd) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t closure #1 in NoticePresentationView.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMd);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v4 = &KeyPath - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &KeyPath - v16;
  v88 = a1[4];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v92 = v100;
  v91 = v102;
  v90 = v104;
  v89 = v105;
  v114 = 1;
  v113 = v101;
  v112 = v103;
  v17 = a1[1];
  v86 = *a1;
  v106 = v86;
  v107 = v17;
  v85 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd);
  State.wrappedValue.getter();
  v18 = v99;
  swift_getKeyPath();
  v106 = v18;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v18 + v19, v7, &_s9MusicCore6NoticeVSgMd);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s9MusicCore6NoticeVSgMd);
    v20 = 1;
    v21 = v87;
    v22 = v93;
  }

  else
  {
    v84 = v11;
    outlined init with take of Notice(v7, v11);
    outlined init with copy of Notice(v11, v4);
    v23 = type metadata accessor for NoticeView(0);
    v24 = &v4[v23[5]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = &v4[v23[6]];
    v111 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v26 = v107;
    *v25 = v106;
    *(v25 + 1) = v26;
    v27 = &v4[v23[7]];
    LOBYTE(v111) = 0;
    GestureState.init(wrappedValue:)();
    v28 = v107;
    v29 = v108;
    *v27 = v106;
    *(v27 + 1) = v28;
    *(v27 + 1) = v29;
    v30 = &v4[v23[8]];
    LOBYTE(v111) = 0;
    State.init(wrappedValue:)();
    v31 = v107;
    *v30 = v106;
    *(v30 + 1) = v31;
    LOBYTE(v30) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGMd) + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v30) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGMd) + 36)];
    *v49 = v30;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v30) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGMd) + 36)];
    *v58 = v30;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    static AnyTransition.opacity.getter();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static AnyTransition.asymmetric(insertion:removal:)();

    v59 = AnyTransition.combined(with:)();

    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd) + 36)] = v59;
    KeyPath = swift_getKeyPath();
    v111 = v85;
    type metadata accessor for MainActor();

    outlined init with copy of TaskPriority?(&v111, &v106, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMd);
    v60 = static MainActor.shared.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);

    outlined init with copy of TaskPriority?(&v111, &v106, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMd);
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = &protocol witness table for MainActor;
    v65 = *(a1 + 1);
    *(v64 + 32) = *a1;
    *(v64 + 48) = v65;
    *(v64 + 64) = *(a1 + 2);
    Binding.init(get:set:)();
    outlined destroy of Notice(v84);
    v66 = v106;
    v67 = v107;
    v68 = v108;
    v69 = v93;
    v70 = &v4[*(v93 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = v66;
    *(v70 + 2) = v67;
    v70[24] = v68;
    v21 = v87;
    outlined init with take of URL?(v4, v87, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMd);
    v20 = 0;
    v22 = v69;
  }

  (*(v94 + 56))(v21, v20, 1, v22);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v106;
  v93 = v108;
  v88 = v109;
  v87 = v110;
  v98 = 1;
  v97 = v107;
  v96 = BYTE8(v108);
  v71 = v114;
  v72 = v113;
  v73 = v112;
  outlined init with copy of TaskPriority?(v21, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd);
  v74 = v98;
  v75 = v97;
  v76 = v96;
  v77 = v95;
  *v95 = 0;
  *(v77 + 8) = v71;
  v77[2] = v92;
  *(v77 + 24) = v72;
  v77[4] = v91;
  *(v77 + 40) = v73;
  v78 = v89;
  v77[6] = v90;
  v77[7] = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB010NoticeViewVAA08_PaddingG0VGAMGAMGAA21_TraitWritingModifierVyAA010TransitionM3KeyVGGAA012_EnvironmentqnO0VyAI0J9DismissalVSgGGSgAHtMd);
  outlined init with copy of TaskPriority?(v14, v77 + *(v79 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd);
  v80 = v77 + *(v79 + 64);
  *v80 = 0;
  v80[8] = v74;
  *(v80 + 2) = v94;
  v80[24] = v75;
  *(v80 + 4) = v93;
  v80[40] = v76;
  v81 = v87;
  *(v80 + 6) = v88;
  *(v80 + 7) = v81;
  outlined destroy of TaskPriority?(v21, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd);
  return outlined destroy of TaskPriority?(v14, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd);
}

uint64_t closure #1 in closure #1 in NoticePresentationView.body.getter@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd);
  State.wrappedValue.getter();
  v7 = v12;
  swift_getKeyPath();
  *&v11 = v7;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v7 + v8, v6, &_s9MusicCore6NoticeVSgMd);

  v9 = type metadata accessor for Notice(0);
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  result = outlined destroy of TaskPriority?(v6, &_s9MusicCore6NoticeVSgMd);
  *a2 = v8;
  return result;
}

_BYTE *closure #2 in closure #1 in NoticePresentationView.body.getter(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd);
    State.wrappedValue.getter();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id NoticePresenter.PassthroughWindow.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id NoticePresenter.UIRootViewController.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  outlined assign with copy of NoticePresenter.Configuration(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return outlined destroy of NoticePresenter.Configuration(a1);
  }

  Edge.Set.init(_:)();
  v5 = specialized EdgeInsets.init(_:length:)(*(v4 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = dispatch thunk of UIHostingController.rootView.modify();
  v13[2] = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  v12(&v17, 0);
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result layoutIfNeeded];

      return outlined destroy of NoticePresenter.Configuration(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void NoticePresenter.UIRootViewController.viewDidLoad()()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  Edge.Set.init(_:)();
  v7 = specialized EdgeInsets.init(_:length:)(v6[2]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = dispatch thunk of UIHostingController.rootView.modify();
  v15[2] = v7;
  *(v15 + 3) = v9;
  *(v15 + 4) = v11;
  *(v15 + 5) = v13;
  v14(v22, 0);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v17 addSubview:v18];

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void NoticePresenter.UIRootViewController.viewDidLayoutSubviews()()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  CGRect.inset(by:for:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in NoticePresenter.UIRootViewController.viewDidLayoutSubviews();
  *(v16 + 24) = v15;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_58;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  CGRect.centeringAlong(axes:bounds:scale:)();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void closure #1 in NoticePresenter.UIRootViewController.viewDidLayoutSubviews()(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id NoticePresenter.PassthroughWindow.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      type metadata accessor for UIAction(0, &_sSo13UIWindowSceneCML_0);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = Edge.rawValue.getter();
  if (v8 != Edge.rawValue.getter() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter()
{
  result = type metadata singleton initialization cache for NoticePresenter;
  if (!type metadata singleton initialization cache for NoticePresenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FE818(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NoticePresenter.passthroughWindow.setter(v1);
}

uint64_t specialized NoticePresenter.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSg_ADtMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of TaskPriority?(a1, &v20 - v12, &_s9MusicCore6NoticeVSgMd);
  outlined init with copy of TaskPriority?(a2, &v13[v15], &_s9MusicCore6NoticeVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v13, v10, &_s9MusicCore6NoticeVSgMd);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of Notice(&v13[v15], v7);
      v18 = static Notice.== infix(_:_:)(v10, v7);
      outlined destroy of Notice(v7);
      outlined destroy of Notice(v10);
      outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeVSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    outlined destroy of Notice(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeVSgMd);
  v17 = 0;
  return v17 & 1;
}

char *specialized NoticePresenter.UIRootViewController.init(noticePresenter:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v7 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  outlined init with copy of NoticePresenter.Configuration(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  Edge.Set.init(_:)();
  v8 = specialized EdgeInsets.init(_:length:)(v7[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter();
  State.init(wrappedValue:)();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy09MusicCoreB022NoticePresentationView33_D8FBFBA4851A241D976DAD2E389878C1LLVGMd));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = UIHostingController.init(rootView:)();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  outlined destroy of NoticePresenter.Configuration(a2);
  return v22;
}

_BYTE *specialized NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v48 = type metadata accessor for DispatchTime();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Notice(0);
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  if ((a2 & 1) == 0 || (result = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *result == 1))
  {
    v44[1] = v11;
    v44[2] = v13;
    v45 = v7;
    v46 = v10;
    v47 = v5;
    swift_getKeyPath();
    aBlock = v3;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
    swift_beginAccess();
    v18 = *v17;
    p_superclass = (&OBJC_METACLASS___MusicLyricsLoader + 8);
    if (*v17)
    {
      v44[0] = v14;
      swift_getKeyPath();
      aBlock = v3;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v3;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v20 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      outlined init with copy of NoticePresenter.Configuration(v3 + v20, &aBlock);
      v18(&aBlock);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18);
      outlined init with copy of NoticePresenter.Configuration(v3 + v20, v52);
      swift_beginAccess();
      v21 = v3 + v20;
      p_superclass = &OBJC_METACLASS___MusicLyricsLoader.superclass;
      outlined assign with copy of NoticePresenter.Configuration(&aBlock, v21);
      swift_endAccess();
      NoticePresenter._configuration.didset(v52);
      outlined destroy of NoticePresenter.Configuration(v52);
      outlined destroy of NoticePresenter.Configuration(&aBlock);
      aBlock = v3;
      v14 = v44[0];
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = p_superclass[488];
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(v22 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of NoticePresenter.Configuration(&aBlock);
    if (Strong)
    {
      createWindowIfNeeded #1 () in NoticePresenter.present(_:internalOnly:animated:)(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v25 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v3 + v24);
    if (v26)
    {
      [v26 makeKeyAndVisible];
    }

    v27 = objc_opt_self();
    outlined init with copy of Notice(v50, v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    outlined init with take of Notice(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in NoticePresenter.present(_:internalOnly:animated:);
    *(v30 + 24) = v29;
    v57 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed () -> ();
    v56 = &block_descriptor_90;
    v31 = _Block_copy(&aBlock);

    [v27 performWithoutAnimation:v31];
    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v32 = v49;
      v33 = (v50 + *(v49 + 36));
      if ((v33[1] & 1) == 0)
      {
        v34 = *v33;
        v35 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v35 notificationOccurred:v34];
      }

      if (*(v50 + *(v32 + 40)) == 1)
      {
        v57 = partial apply for closure #2 in NoticePresenter.present(_:internalOnly:animated:);
        v58 = v3;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = thunk for @escaping @callee_guaranteed () -> ();
        v56 = &block_descriptor_93_0;
        _Block_copy(&aBlock);
        v51 = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0, &_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v36 = DispatchWorkItem.init(flags:block:)();

        type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
        v37 = static OS_dispatch_queue.main.getter();
        v38 = v45;
        static DispatchTime.now()();
        v39 = v46;
        + infix(_:_:)();
        v40 = *(v47 + 8);
        v41 = v38;
        v42 = v48;
        v40(v41, v48);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v40(v39, v42);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        v44[-1] = v36;
        aBlock = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_1002FF6E4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NoticePresentingResolverModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<WindowSceneResolver> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIWindowScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &_sSo13UIWindowSceneCML_0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject);
  }

  return result;
}

void type metadata completion function for NoticePresenter()
{
  type metadata accessor for Notice?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Notice?()
{
  if (!lazy cache variable for type metadata for Notice?)
  {
    type metadata accessor for Notice(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Notice?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI15NoticePresenterC13ConfigurationVIegl_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NoticePresenter.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NoticePresenter.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1002FFB38()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier()
{
  result = lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier;
  if (!lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier);
  }

  return result;
}

uint64_t sub_1002FFBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined init with take of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002FFDE0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of Notice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Notice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FFF60()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in NoticePresenter.present(_:internalOnly:animated:)()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in NoticePresenter.present(_:internalOnly:animated:)(v2, v3);
}

uint64_t lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003001DC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  GestureState.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return outlined init with take of Notice(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

double key path getter for EnvironmentValues.noticeDismissal : EnvironmentValues@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_10030051C@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.noticeDismissal : EnvironmentValues(uint64_t *a1)
{
  outlined copy of NoticeDismissal?(*a1, a1[1]);
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  return EnvironmentValues.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey);
  }

  return result;
}

uint64_t outlined assign with take of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    outlined copy of NoticeDismissal?(*v5, v7);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<NoticeDismissal?>.Content(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t outlined consume of Environment<NoticeDismissal?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined consume of NoticeDismissal?(a1, a2);
  }

  else
  {
  }
}

uint64_t outlined consume of NoticeDismissal?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of NoticeDismissal?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
  __chkstk_darwin(v116);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v111 - v5;
  v142 = type metadata accessor for DynamicTypeSize();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v111 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd);
  __chkstk_darwin(v113);
  v112 = &v111 - v9;
  v137 = type metadata accessor for TapGesture();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for NoticeView(0);
  v124 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v11;
  v148 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v122);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd);
  __chkstk_darwin(v138);
  v134 = &v111 - v13;
  v14 = type metadata accessor for NoticeView.Content(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v111 - v24;
  *&v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  __chkstk_darwin(v119);
  v27 = &v111 - v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd);
  __chkstk_darwin(v120);
  v29 = &v111 - v28;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd);
  __chkstk_darwin(v146);
  v145 = &v111 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_Md);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v111 - v31;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy09MusicCoreB006NoticeC0V0M033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceJ0VyAA0j5StateJ0VyAA04DragJ0VSbGAA06_EndedJ0VyAA03TapJ0VGGQo__0nO00P0VQo_Md);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v111 - v32;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
  __chkstk_darwin(v123);
  v130 = &v111 - v33;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd);
  __chkstk_darwin(v127);
  v133 = &v111 - v34;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd);
  __chkstk_darwin(v144);
  v143 = &v111 - v35;
  v36 = v2;
  outlined init with copy of Notice(v2, v17, type metadata accessor for Notice);
  *&v17[*(v15 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  swift_storeEnumTagMultiPayload();
  *&v157 = 0x4041000000000000;
  _sS2dSBsWl_0();
  ScaledMetric.init(wrappedValue:)();
  *&v157 = 0x4010000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of Notice(v17, v21, type metadata accessor for NoticeView.Content);
  v37 = &v21[*(v19 + 44)];
  v38 = v162;
  *(v37 + 4) = v161;
  *(v37 + 5) = v38;
  *(v37 + 6) = v163;
  v39 = v158;
  *v37 = v157;
  *(v37 + 1) = v39;
  v40 = v160;
  *(v37 + 2) = v159;
  *(v37 + 3) = v40;
  v41 = &v25[*(v23 + 44)];
  static Material.regular.getter();
  LOBYTE(v23) = static Edge.Set.all.getter();
  v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)] = v23;
  outlined init with take of URL?(v21, v25, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd);
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  v42 = static Corner.extraLarge;
  v43 = unk_10063F0A0;
  v44 = byte_10063F0A8;
  outlined init with take of URL?(v25, v27, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd);
  v45 = &v27[*(v119 + 36)];
  *v45 = v42;
  *(v45 + 1) = v43;
  v45[16] = v44;
  v46 = v2 + *(v149 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  LOBYTE(v153) = *v46;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12GestureStateVySbGMd);
  GestureState.wrappedValue.getter();
  if (v150)
  {
    v51 = 0.4;
  }

  else
  {
    v51 = 1.0;
  }

  outlined init with take of URL?(v27, v29, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  *&v29[*(v120 + 36)] = v51;
  v52 = static Animation.easeIn(duration:)();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  GestureState.wrappedValue.getter();
  v53 = v150;
  v54 = v29;
  v55 = v145;
  outlined init with take of URL?(v54, v145, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd);
  v56 = v55 + *(v146 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  static CoordinateSpaceProtocol<>.local.getter();
  v57 = v134;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  GestureState.projectedValue.getter();
  LODWORD(v121) = v150;
  v120 = v151;
  v119 = v152;
  v118 = v36;
  v58 = v148;
  v122 = type metadata accessor for NoticeView;
  outlined init with copy of Notice(v36, v148, type metadata accessor for NoticeView);
  v59 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v60 = swift_allocObject();
  v124 = type metadata accessor for NoticeView;
  outlined init with take of Notice(v58, v60 + v59, type metadata accessor for NoticeView);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI012GestureStateC0VyAA04DragC0VSbGMd);
  v62 = v57 + *(v61 + 44);
  *v62 = v121;
  *(v62 + 8) = v120;
  *(v62 + 16) = v119;
  v63 = (v57 + *(v61 + 48));
  *v63 = partial apply for closure #1 in NoticeView.body.getter;
  v63[1] = v60;
  v64 = v135;
  TapGesture.init(count:)();
  outlined init with copy of Notice(v36, v58, type metadata accessor for NoticeView);
  v65 = swift_allocObject();
  outlined init with take of Notice(v58, v65 + v59, type metadata accessor for NoticeView);
  v66 = swift_allocObject();
  *(v66 + 16) = partial apply for closure #2 in NoticeView.body.getter;
  *(v66 + 24) = v65;
  v67 = v138;
  v68 = v137;
  Gesture.onEnded(_:)();

  (*(v136 + 8))(v64, v68);
  static GestureMask.all.getter();
  v69 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v70 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SequenceGesture<GestureStateGesture<DragGesture, Bool>, _EndedGesture<TapGesture>> and conformance SequenceGesture<A, B>, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd);
  v71 = v125;
  v72 = v146;
  v73 = v145;
  View.gesture<A>(_:including:)();
  outlined destroy of TaskPriority?(v57, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd);
  outlined destroy of TaskPriority?(v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd);
  v74 = v118;
  v75 = v148;
  outlined init with copy of Notice(v118, v148, v122);
  v76 = swift_allocObject();
  outlined init with take of Notice(v75, v76 + v59, v124);
  type metadata accessor for Notice(0);
  v153 = v72;
  v154 = v67;
  v155 = v69;
  v156 = v70;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type Notice and conformance Notice, type metadata accessor for Notice);
  v77 = v126;
  v78 = v131;
  View.onChange<A>(of:initial:_:)();

  (*(v128 + 8))(v71, v78);
  v79 = v130;
  v80 = &v130[*(v123 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
  static ContentTransition.opacity.getter();
  *v80 = swift_getKeyPath();
  (*(v129 + 32))(v79, v77, v132);
  v81 = (v74 + *(v149 + 24));
  v82 = *v81;
  v83 = v81[1];
  v153 = v82;
  v154 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v84 = v150;
  static UnitPoint.center.getter();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v133;
  outlined init with take of URL?(v89, v133, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
  v91 = (v90 + *(v127 + 36));
  *v91 = v84;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v92 = Animation.delay(_:)();

  v93 = v143;
  v94 = &v143[*(v144 + 36)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMd);
  outlined init with copy of Notice(v74, v94 + *(v95 + 36), type metadata accessor for Notice);
  *v94 = v92;
  outlined init with take of URL?(v90, v93, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd);
  v96 = v141;
  v97 = *(v141 + 104);
  v98 = v139;
  v99 = v142;
  v97(v139, enum case for DynamicTypeSize.xSmall(_:), v142);
  v100 = v140;
  v97(v140, enum case for DynamicTypeSize.accessibility2(_:), v99);
  lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v102 = v98;
    v103 = *(v96 + 32);
    v104 = v114;
    v103(v114, v102, v99);
    v105 = v116;
    v103((v104 + *(v116 + 48)), v100, v99);
    v106 = v115;
    outlined init with copy of TaskPriority?(v104, v115, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
    v107 = *(v105 + 48);
    v108 = v112;
    v103(v112, v106, v99);
    v109 = *(v96 + 8);
    v109(v106 + v107, v99);
    outlined init with take of URL?(v104, v106, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
    v103((v108 + *(v113 + 36)), (v106 + *(v105 + 48)), v99);
    v109(v106, v99);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    v110 = v143;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v108, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    return outlined destroy of TaskPriority?(v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in NoticeView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 40)) & 1) != 0 || *(a4 + *(result + 32)) && (type metadata accessor for NoticeView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd), result = State.wrappedValue.getter(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t closure #2 in NoticeView.body.getter(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    State.wrappedValue.setter();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  result = type metadata accessor for Notice(0);
  if (*(a1 + *(result + 40)) == 1)
  {
    result = NoticeView.dismiss.getter();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
      Binding.wrappedValue.setter();
    }
  }

  return result;
}

void closure #3 in NoticeView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v11 = a3;
  withAnimation<A>(_:_:)();

  _sSo17OS_dispatch_queueCMa_0();
  v7 = static OS_dispatch_queue.main.getter();
  outlined init with copy of Notice(a3, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of Notice(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in closure #3 in NoticeView.body.getter, v9);
}

uint64_t closure #2 in closure #3 in NoticeView.body.getter()
{
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #3 in NoticeView.body.getter()
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  return State.wrappedValue.setter();
}

uint64_t NoticeView.Content.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  outlined init with copy of TaskPriority?(v1 + *(v10 + 28), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
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

uint64_t NoticeView.Content.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  outlined init with copy of TaskPriority?(v1 + *(v10 + 32), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
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

__n128 NoticeView.Content.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notice(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Notice(v1, v11, type metadata accessor for Notice);
  NoticeView.Content.dynamicTypeSize.getter(v8);
  specialized NoticeView.Content.DynamicSizeSpecs.init(notice:typeSize:)(v11, v8, v19);
  if (NoticeView.Content.canOutdentMessage.getter())
  {
    v12 = static VerticalAlignment.top.getter();
  }

  else
  {
    v12 = static VerticalAlignment.center.getter();
  }

  v13 = v20;
  *v5 = v12;
  *(v5 + 1) = v13;
  v5[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAOyAA5ImageVAKyAKy010_MusicKit_aB007ArtworkM0V0n4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAU06BorderdT0AWLLVGGAOyAKy05MediaqB0016CircularProgressD0VAA06_FrameG0VGAA05EmptyD0VGGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGAA010_FlexFrameG0VGAA012_AspectRatioG0VG_AA6VStackVyAIyAKyAA4TextVA14_ySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr0Q8Graphics7CGFloatVFQOyAKyAMyAOyAOyA35_A35_GA35_GGA18_G_Qo_A37_GtGGtGGMd);
  closure #1 in NoticeView.Content.body.getter(v1, v19, &v5[*(v14 + 44)]);
  v15 = static Edge.Set.all.getter();
  outlined init with take of URL?(v5, a1, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMd);
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAKyAA5ImageVACyACy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordergQ0ASLLVGGAKyACy05MedianB0016CircularProgressG0VAA12_FrameLayoutVGAA05EmptyG0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAGyACyAA4TextVA10_ySiSgGGSg_ACyAA0G0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyACyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGAA14_PaddingLayoutVGMd) + 36);
  *v16 = v15;
  result = v19[0];
  *(v16 + 24) = v19[1];
  *(v16 + 8) = result;
  *(v16 + 40) = 0;
  return result;
}

BOOL NoticeView.Content.canOutdentMessage.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NoticeView.Content.dynamicTypeSize.getter(v8);
  v9 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = type metadata accessor for Notice(0);
    v11 = (v1 + *(v10 + 28));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13)
      {
        outlined init with copy of TaskPriority?(v1 + *(v10 + 20), v4, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
        v15 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v15 - 8) + 48))(v4, 1, v15) != 1)
        {
          v17 = swift_getEnumCaseMultiPayload() == 1;
          outlined destroy of Notice.Thumbnail(v4, type metadata accessor for Notice.Thumbnail);
          return v17;
        }

        outlined destroy of TaskPriority?(v4, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
      }
    }
  }

  return 0;
}

uint64_t closure #1 in NoticeView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMd);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMd);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  closure #1 in closure #1 in NoticeView.Content.body.getter(a1, v12);
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v26 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGMd) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  *&v12[*(v10 + 44)] = static HierarchicalShapeStyle.primary.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v12, v16, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMd);
  v29 = &v16[*(v14 + 44)];
  v30 = v50;
  *(v29 + 4) = v49;
  *(v29 + 5) = v30;
  *(v29 + 6) = v51;
  v31 = v46;
  *v29 = v45;
  *(v29 + 1) = v31;
  v32 = v48;
  *(v29 + 2) = v47;
  *(v29 + 3) = v32;
  outlined init with take of URL?(v16, v22, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMd);
  v33 = &v22[*(v18 + 44)];
  *v33 = 0x3FF0000000000000;
  *(v33 + 4) = 0;
  outlined init with take of URL?(v22, v25, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAKyAA5GroupVyAA012_ConditionalJ0VyA1_yA2MGAMGGAOyAA4FontVSgGG_Qo_AQGtGGMd);
  closure #2 in closure #1 in NoticeView.Content.body.getter(v40, v43, &v8[*(v34 + 44)]);
  v35 = v41;
  outlined init with copy of TaskPriority?(v25, v41, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
  v36 = v42;
  outlined init with copy of TaskPriority?(v8, v42, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd);
  v37 = v44;
  outlined init with copy of TaskPriority?(v35, v44, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAA05TupleW0VyACyAA4TextVA6_ySiSgGGSg_ACyAA0W0PAAE15bodyHeadOutdentyQr0K8Graphics7CGFloatVFQOyACyAEyAGyAGyA29_A29_GA29_GGA10_G_Qo_A31_GtGGtMd);
  outlined init with copy of TaskPriority?(v36, v37 + *(v38 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd);
  outlined destroy of TaskPriority?(v25, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
  outlined destroy of TaskPriority?(v36, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd);
  return outlined destroy of TaskPriority?(v35, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd);
}

uint64_t closure #1 in closure #1 in NoticeView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyK0V_GMd);
  __chkstk_darwin(v62);
  v4 = &v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd);
  __chkstk_darwin(v63);
  v6 = &v46 - v5;
  v50 = type metadata accessor for CircularProgressView.LineStyle();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd);
  __chkstk_darwin(v8);
  v51 = &v46 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd);
  __chkstk_darwin(v61);
  v54 = &v46 - v10;
  v55 = type metadata accessor for Artwork();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGACyAIy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VG_GMd);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVG_GMd);
  __chkstk_darwin(v57);
  v58 = (&v46 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd);
  __chkstk_darwin(v18);
  v59 = &v46 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
  __chkstk_darwin(v20 - 8);
  v22 = (&v46 - v21);
  v23 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  outlined init with copy of TaskPriority?(a1 + v23, v22, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
  v24 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v25 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd;
    outlined init with copy of TaskPriority?(v6, v16, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v26 = v6;
LABEL_9:
    v42 = v25;
    return outlined destroy of TaskPriority?(v26, v42);
  }

  v46 = v16;
  v56 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v22;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();

    v41 = v59;
    _ConditionalContent<>.init(storage:)();
    v25 = &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd;
    outlined init with copy of TaskPriority?(v41, v46, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v26 = v41;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    static Color.white.getter();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    outlined init with copy of TaskPriority?(v43, v4, &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of TaskPriority?(v6, v46, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v6, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd);
    v26 = v43;
    v42 = &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd;
    return outlined destroy of TaskPriority?(v26, v42);
  }

  v62 = v14;
  v28 = v53;
  v29 = v60;
  v30 = v55;
  (*(v53 + 32))(v60, v22, v55);
  (*(v28 + 16))(v47, v29, v30);
  type metadata accessor for NoticeView.Content(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
  ScaledMetric.wrappedValue.getter();
  v31 = v54;
  ArtworkImage.init(_:height:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  ScaledMetric.wrappedValue.getter();
  v32 = v65;
  v33 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGMd) + 36);
  *v33 = v32;
  *(v33 + 8) = -1;
  *(v33 + 16) = 0;
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v34 = static Border.artwork;
  v35 = qword_10063F0B8;
  v36 = byte_10063F0C0;
  ScaledMetric.wrappedValue.getter();
  v37 = v65;
  v38 = v31 + *(v61 + 36);
  *v38 = v34;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  *(v38 + 32) = -1;
  *(v38 + 40) = 0;
  outlined init with copy of TaskPriority?(v31, v58, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();

  v39 = v59;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TaskPriority?(v39, v46, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v39, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd);
  outlined destroy of TaskPriority?(v31, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd);
  return (*(v28 + 8))(v60, v30);
}

uint64_t closure #2 in closure #1 in NoticeView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v65 = a3;
  v66 = type metadata accessor for Font.Leading();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalK0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_Md);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v59 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  __chkstk_darwin(v74);
  v79 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v59 - v10;
  __chkstk_darwin(v11);
  v78 = &v59 - v12;
  v13 = *(type metadata accessor for Notice(0) + 28);
  v73 = a1;
  v14 = (a1 + v13);
  v15 = v14[1];
  if (v15)
  {
    *&v81 = *v14;
    *(&v81 + 1) = v15;
    _sS2SSysWl_0();

    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Font.footnote.getter();
    v21 = Text.font(_:)();
    v23 = v22;
    v25 = v24;

    outlined consume of Text.Storage(v16, v18, v20 & 1);

    LODWORD(v81) = static HierarchicalShapeStyle.secondary.getter();
    v26 = Text.foregroundStyle<A>(_:)();
    v28 = v27;
    LOBYTE(v16) = v29;
    v31 = v30;
    outlined consume of Text.Storage(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v26;
    v70 = v28;
    v67 = v16 & 1;
    outlined copy of Text.Storage(v26, v28, v16 & 1);
    v69 = v31;

    v68 = KeyPath;

    v64 = 2;
  }

  else
  {
    v71 = 0;
    v70 = 0;
    v67 = 0;
    v69 = 0;
    v68 = 0;
    v64 = 0;
  }

  closure #1 in closure #2 in closure #1 in NoticeView.Content.body.getter(v73, &v81);
  v80 = *(&v81 + 1);
  v33 = v81;
  v34 = v83;
  v61 = v82;
  v60 = v84;
  v35 = v85;
  static Font.subheadline.getter();
  v36 = v63;
  v37 = v66;
  (*(v63 + 104))(v5, enum case for Font.Leading.tight(_:), v66);
  Font.leading(_:)();

  v38 = v5;
  v39 = v34;
  v40 = v61;
  v41 = v37;
  v42 = v60;
  (*(v36 + 8))(v38, v41);
  static Font.Weight.semibold.getter();
  v43 = Font.weight(_:)();

  v44 = swift_getKeyPath();
  v92 = v35;
  v62 = v33;
  *&v81 = v33;
  *(&v81 + 1) = v80;
  v82 = v40;
  v83 = v39;
  v63 = v39;
  v84 = v42;
  LODWORD(v66) = v35;
  v85 = v35;
  v86 = v90;
  v87 = v91;
  v88 = v44;
  v89 = v43;
  if (NoticeView.Content.canOutdentMessage.getter())
  {
    type metadata accessor for NoticeView.Content(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
    ScaledMetric.wrappedValue.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v45 = v75;
  View.bodyHeadOutdent(_:)();
  outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(v62, v80, v40, v63, v42, v66);

  v46 = swift_getKeyPath();
  v47 = v72;
  (*(v76 + 32))(v72, v45, v77);
  v48 = v47 + *(v74 + 36);
  *v48 = v46;
  *(v48 + 8) = 4;
  *(v48 + 16) = 0;
  v49 = v78;
  outlined init with take of URL?(v47, v78, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  v50 = v79;
  outlined init with copy of TaskPriority?(v49, v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  v51 = v71;
  v52 = v65;
  v53 = v70;
  *v65 = v71;
  v52[1] = v53;
  v54 = v67;
  v55 = v69;
  v52[2] = v67;
  v52[3] = v55;
  v56 = v64;
  v52[4] = v68;
  v52[5] = v56;
  *(v52 + 48) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_ACyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAUyA2EGAEGGAGyAA4FontVSgGG_Qo_AIGtMd);
  outlined init with copy of TaskPriority?(v50, v52 + *(v57 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  outlined copy of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v51, v53, v54, v55);
  outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v51, v53, v54, v55);
  outlined destroy of TaskPriority?(v49, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  outlined destroy of TaskPriority?(v50, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd);
  return outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v51, v53, v54, v55);
}

void closure #1 in closure #2 in closure #1 in NoticeView.Content.body.getter(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v132 = a2;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v130 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v124[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v124[-v13];
  v15 = type metadata accessor for Notice(0);
  if (*(a1 + *(v15 + 32)))
  {
    v128 = v3;
    NoticeView.Content.dynamicTypeSize.getter(v14);
    v16 = type metadata accessor for DynamicTypeSize();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = UIContentSizeCategory.init(_:)();
    v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
    v22 = [v21 fontDescriptorWithSymbolicTraits:32770];

    v129 = v4;
    if (v22)
    {

      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
      v22 = v20;
    }

    v24 = v23;

    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    if (v27)
    {
      v28 = [v27 imageWithRenderingMode:2];

      v29 = v129;
      if (v28)
      {
        NoticeView.Content.layoutDirection.getter(v11);
        v30 = v131;
        (v131)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v31 = static LayoutDirection.== infix(_:_:)();
        v32 = v30[1];
        v32(v8, v6);
        v32(v11, v6);
        v127 = v28;
        if (v31)
        {
          v33 = objc_opt_self();
          v34 = (a1 + *(v15 + 24));
          v36 = *v34;
          v35 = v34[1];
          v37 = String._bridgeToObjectiveC()();
          v38 = [v33 dominantLanguageForString:v37];

          if (v38)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v130;
            Locale.Language.init(identifier:)();
            v40 = Locale.Language.characterDirection.getter();
            (*(v29 + 8))(v39, v128);
            if (v40 == 1)
            {
              v41 = v28;
              Image.init(uiImage:)();
              v42 = Text.init(_:)();
              v44 = v43;
              v131 = v38;
              v46 = v45;
              LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
              v47 = Text.foregroundStyle<A>(_:)();
              v49 = v48;
              v51 = v50;
              outlined consume of Text.Storage(v42, v44, v46 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v130 = static Text.+ infix(_:_:)();
              v129 = v52;
              LODWORD(v126) = v53;
              v128 = v54;

              outlined consume of Text.Storage(v47, v49, v51 & 1);

              *&v136 = v36;
              *(&v136 + 1) = v35;
              _sS2SSysWl_0();

              v55 = Text.init<A>(_:)();
              v57 = v56;
              v59 = v58;
              LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
              v60 = Text.foregroundStyle<A>(_:)();
              v62 = v61;
              LOBYTE(v42) = v63;
              outlined consume of Text.Storage(v55, v57, v59 & 1);

              v64 = v130;
              v65 = v129;
              v66 = static Text.+ infix(_:_:)();
              v68 = v67;
              v125 = v69;
              v71 = v70;
              outlined consume of Text.Storage(v60, v62, v42 & 1);

              outlined consume of Text.Storage(v64, v65, v126 & 1);

              LOBYTE(v42) = v125 & 1;
              *&v133 = v66;
              *(&v133 + 1) = v68;
              *&v134 = v125 & 1;
              *(&v134 + 1) = v71;
              LOBYTE(v135) = 0;
              outlined copy of Text.Storage(v66, v68, v125 & 1);

              outlined copy of Text.Storage(v66, v68, v42);

              _ConditionalContent<>.init(storage:)();

              outlined consume of Text.Storage(v66, v68, v42);

              outlined consume of Text.Storage(v66, v68, v42);

LABEL_15:
              v134 = v137;
              v133 = v136;
              v135 = v138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
              lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
              _ConditionalContent<>.init(storage:)();

              v86 = v136;
              v87 = v137;
              goto LABEL_16;
            }
          }
        }

        v88 = (a1 + *(v15 + 24));
        v89 = v88[1];
        *&v136 = *v88;
        *(&v136 + 1) = v89;
        _sS2SSysWl_0();

        v90 = Text.init<A>(_:)();
        v92 = v91;
        v94 = v93;
        LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
        v95 = Text.foregroundStyle<A>(_:)();
        v97 = v96;
        v99 = v98;
        outlined consume of Text.Storage(v90, v92, v94 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v131 = static Text.+ infix(_:_:)();
        v130 = v100;
        LODWORD(v128) = v101;
        v129 = v102;

        outlined consume of Text.Storage(v95, v97, v99 & 1);

        v103 = v28;
        Image.init(uiImage:)();
        v104 = Text.init(_:)();
        v106 = v105;
        v108 = v107;
        LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
        v109 = Text.foregroundStyle<A>(_:)();
        v111 = v110;
        LOBYTE(v92) = v112;
        outlined consume of Text.Storage(v104, v106, v108 & 1);

        v113 = v131;
        v114 = v130;
        v126 = static Text.+ infix(_:_:)();
        v116 = v115;
        v118 = v117;
        v120 = v119;
        outlined consume of Text.Storage(v109, v111, v92 & 1);

        outlined consume of Text.Storage(v113, v114, v128 & 1);

        *&v133 = v126;
        *(&v133 + 1) = v116;
        *&v134 = v118 & 1;
        *(&v134 + 1) = v120;
        LOBYTE(v135) = 1;
        _ConditionalContent<>.init(storage:)();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v72 = (a1 + *(v15 + 24));
  v73 = v72[1];
  *&v136 = *v72;
  *(&v136 + 1) = v73;
  _sS2SSysWl_0();

  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
  v79 = Text.foregroundStyle<A>(_:)();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  outlined consume of Text.Storage(v74, v76, v78 & 1);

  *&v133 = v79;
  *(&v133 + 1) = v81;
  *&v134 = v83 & 1;
  *(&v134 + 1) = v85;
  v135 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v86 = v136;
  v87 = v137;
LABEL_16:
  v121 = v138;
  v122 = v139;
  v123 = v132;
  *v132 = v86;
  v123[1] = v87;
  *(v123 + 32) = v121;
  *(v123 + 33) = v122;
}

uint64_t NoticeDismissal.presented.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.getter();
  return v1;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.getter();
  return NoticeDismissal.presented.modify;
}

void NoticeDismissal.presented.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  return v1;
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.NoticeDismissalContextKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return EnvironmentValues.noticeDismissal.modify;
}

void EnvironmentValues.noticeDismissal.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    outlined copy of NoticeDismissal?(v4, v5);
    EnvironmentValues.subscript.setter();
    outlined consume of NoticeDismissal?(*v3, v3[1]);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  free(v3);
}

unint64_t _sS2dSBsWl_0()
{
  result = _sS2dSBsWL_0;
  if (!_sS2dSBsWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2dSBsWL_0);
  }

  return result;
}

uint64_t outlined init with take of Notice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Notice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in NoticeView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in NoticeView.body.getter(a1, a2, a3, v8);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  outlined consume of Environment<NoticeDismissal?>.Content(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_1003054AC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type NoticeView.Content and conformance NoticeView.Content, type metadata accessor for NoticeView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #3 in NoticeView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  closure #3 in NoticeView.body.getter(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Notice> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_Md);
    type metadata accessor for Notice(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SequenceGesture<GestureStateGesture<DragGesture, Bool>, _EndedGesture<TapGesture>> and conformance SequenceGesture<A, B>, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type Notice and conformance Notice, type metadata accessor for Notice);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100305D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100305E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for NoticeView()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<NoticeDismissal?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for State<Double>, &type metadata for Double, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for GestureState<Bool>, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<NoticeDismissal?>()
{
  if (!lazy cache variable for type metadata for Environment<NoticeDismissal?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI15NoticeDismissalVSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<NoticeDismissal?>);
    }
  }
}

void type metadata accessor for State<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NoticeDismissal(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for NoticeDismissal(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10030618C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100306264(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100306478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void type metadata completion function for NoticeView.Content()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<Double>(319, &lazy cache variable for type metadata for ScaledMetric<Double>, _sS2dSBsWl_0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<Double>(319, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<DynamicTypeSize>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for Environment<LayoutDirection>, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ScaledMetric<Double>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t specialized NoticeView.Content.DynamicSizeSpecs.init(notice:typeSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Notice(0);
  outlined init with copy of TaskPriority?(a1 + *(v9 + 20), v8, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
  v10 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0);
    v11 = 0;
  }

  else
  {
    v11 = swift_getEnumCaseMultiPayload() == 1;
    outlined destroy of Notice.Thumbnail(v8, type metadata accessor for Notice.Thumbnail);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(a2, v12);
  if (v14 == enum case for DynamicTypeSize.xSmall(_:) || v14 == enum case for DynamicTypeSize.small(_:))
  {
    result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
    v17 = 6.0;
    if (!v11)
    {
      v17 = 0.0;
    }

    v18 = 4.0;
    v19 = 12.0;
    if (v11)
    {
      v20 = 12.0;
    }

    else
    {
      v20 = 4.0;
    }
  }

  else
  {
    if (v14 == enum case for DynamicTypeSize.medium(_:) || v14 == enum case for DynamicTypeSize.large(_:) || v14 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v14 != enum case for DynamicTypeSize.xxLarge(_:) && v14 != enum case for DynamicTypeSize.xxxLarge(_:) && v14 != enum case for DynamicTypeSize.accessibility1(_:) && v14 != enum case for DynamicTypeSize.accessibility2(_:) && v14 != enum case for DynamicTypeSize.accessibility3(_:) && v14 != enum case for DynamicTypeSize.accessibility4(_:) && v14 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v13 + 8))(a2, v12);
LABEL_29:
      if (v11)
      {
        v20 = 10.0;
      }

      else
      {
        v20 = 12.0;
      }

      v23 = *(a1 + *(v9 + 32));
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v23);
      result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v23);
        v19 = 19.0;
      }

      else
      {
        v19 = 20.0;
      }

      v18 = 4.0;
      if (v11)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      goto LABEL_41;
    }

    result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
    v17 = 10.0;
    if (!v11)
    {
      v17 = 6.0;
    }

    v19 = 20.0;
    v20 = 12.0;
    v18 = 8.0;
  }

LABEL_41:
  *a3 = v18;
  a3[1] = v20;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4TextVAGGAGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t sub_100306FA0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined copy of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type CircularProgressView and conformance CircularProgressView, &type metadata accessor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ArtworkImage, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArtworkImage, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type ArtworkImage and conformance ArtworkImage, &type metadata accessor for ArtworkImage);
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of Notice.Thumbnail(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _sSo17OS_dispatch_queueCMa_0()
{
  result = _sSo17OS_dispatch_queueCML_0;
  if (!_sSo17OS_dispatch_queueCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo17OS_dispatch_queueCML_0);
  }

  return result;
}

uint64_t partial apply for closure #2 in NoticeView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>>, _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _AspectRatioLayout>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?, ModifiedContent<<<opaque return type of View.bodyHeadOutdent(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>>, _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _AspectRatioLayout>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?, ModifiedContent<<<opaque return type of View.bodyHeadOutdent(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>>, _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _AspectRatioLayout>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?, ModifiedContent<<<opaque return type of View.bodyHeadOutdent(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAKyAA5ImageVACyACy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordergQ0ASLLVGGAKyACy05MedianB0016CircularProgressG0VAA12_FrameLayoutVGAA05EmptyG0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAGyACyAA4TextVA10_ySiSgGGSg_ACyAA0G0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyACyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>>, _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _AspectRatioLayout>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?, ModifiedContent<<<opaque return type of View.bodyHeadOutdent(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>)>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>>, _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView>>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _AspectRatioLayout>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?, ModifiedContent<<<opaque return type of View.bodyHeadOutdent(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v5, v1, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11[-v7 - 8];
  outlined init with copy of ActionPerforming(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  swift_dynamicCast();
  (*(a3 + 48))(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return MusicUIContentView.configuration.modify;
}

void MusicUIContentView.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    outlined init with copy of ActionPerforming(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter((v2 + 5), v4, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = type metadata accessor for Playlist.Variant();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = type metadata accessor for Playlist.Variant();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Artwork();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return outlined init with take of URL?(a2, a3 + *(v7 + 20), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
}

uint64_t Logger.artwork.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  outlined init with copy of TaskPriority?(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artwork();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(a2, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of TaskPriority?(a1, &_s8MusicKit7ArtworkVSgMd_0);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(a2, a3 + *(v13 + 20), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    Artwork.init(_:)();
    (*(v7 + 32))(a3, v9, v6);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(a2, a3 + *(v11 + 20), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (Artwork.maximumWidth.getter() < 1 || Artwork.maximumHeight.getter() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = Artwork.maximumWidth.getter();
    *&result = v0 / Artwork.maximumHeight.getter();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  outlined init with take of URL?(a1, a9, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  outlined init with take of ArtworkImage.Placeholder(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ArtworkImage.Size(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return specialized static ArtworkImage.Size.__derived_struct_equals(_:_:)(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v8 - 8);
  if (a3)
  {
    outlined init with copy of TaskPriority?(a1, &v11 - v9, &_s8MusicKit7ArtworkVSgMd_0);
    if (a5)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else
  {
    outlined init with copy of TaskPriority?(a1, &v11 - v9, &_s8MusicKit7ArtworkVSgMd_0);
    if (a5)
    {
      ArtworkImage.init(_:width:)();
    }

    else
    {
      ArtworkImage.init(_:width:height:)();
    }
  }

  return outlined destroy of TaskPriority?(a1, &_s8MusicKit7ArtworkVSgMd_0);
}

uint64_t static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ArtworkImage.Placeholder(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  outlined init with copy of ArtworkImage.Placeholder(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of ArtworkImage.Placeholder(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ArtworkImage.Placeholder);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = a3[1];
  *v15 = *a3;
  v15[1] = v16;
  *(v15 + 26) = *(a3 + 26);
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAR19_ConditionalContentVyAR08ModifiedV0VyA2_yAcDE11PlaceholderOAZVAR26_PreferenceWritingModifierVyAD016RadiosityEnabledY3KeyVGGAR12_FrameLayoutVGAR14GeometryReaderVyA14_GG_Tt4g5(a1, partial apply for closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:), v14, a3, a4, a5);
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)(uint64_t a1)
{
  v3 = type metadata accessor for ArtworkImage.Placeholder(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAK016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAXG_GMd);
  __chkstk_darwin(v6);
  v8 = (v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGAA12_FrameLayoutVGMd);
  __chkstk_darwin(v9);
  v11 = (v31 - v10);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    outlined init with copy of ArtworkImage.Placeholder(v1, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    outlined init with take of ArtworkImage.Placeholder(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
    v14 = (v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    v15 = *(a1 + 16);
    *v14 = *a1;
    v14[1] = v15;
    *(v14 + 26) = *(a1 + 26);
    *v8 = partial apply for closure #1 in ArtworkImage.Placeholder.view(availableSize:);
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 16);
    v19 = ArtworkImage.Placeholder.symbolConfiguration.getter();
    v21 = v20;
    ArtworkImage.Placeholder.symbolConfiguration.getter();
    v23 = v22;

    ArtworkImage.Placeholder.symbolConfiguration.getter();
    v25 = v24;

    v26 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v27 = *(v26 + 32);
    *(v11 + v27) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
    swift_storeEnumTagMultiPayload();
    v28 = *(v26 + 36);
    *(v11 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
    swift_storeEnumTagMultiPayload();
    *v11 = v19;
    v11[1] = v21;
    v11[2] = v23;
    v11[3] = v17;
    v11[4] = v18;
    v11[5] = v25;
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGMd) + 36)) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = (v11 + *(v9 + 36));
    v30 = v31[1];
    *v29 = v31[0];
    v29[1] = v30;
    v29[2] = v31[2];
    outlined init with copy of TaskPriority?(v11, v8, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGAA12_FrameLayoutVGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of TaskPriority?(v11, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGAA12_FrameLayoutVGMd);
  }
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAR19_ConditionalContentVyAR08ModifiedV0VyA2_yAcDE11PlaceholderOAZVAR26_PreferenceWritingModifierVyAD016RadiosityEnabledY3KeyVGGAR12_FrameLayoutVGAR14GeometryReaderVyA14_GG_Tt4g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = type metadata accessor for Artwork.CropStyle();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = type metadata accessor for ArtworkImage();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  outlined init with copy of TaskPriority?(a1, v16, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v36 = type metadata accessor for Artwork();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = type metadata accessor for Artwork();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    outlined destroy of ArtworkImage.ViewModel(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  outlined init with copy of TaskPriority?(v22, v19, &_s8MusicKit7ArtworkVSgMd_0);
  if (v40)
  {
    if (v41)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v41)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v42 = v64;
  outlined destroy of TaskPriority?(v22, &_s8MusicKit7ArtworkVSgMd_0);
  (*(v70 + 32))(v69, v31, v42);
  ArtworkImage.artworkReusablePolicy(_:)();
  v43 = v56;
  outlined init with copy of TaskPriority?(v61, v56, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v43, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    outlined init with copy of TaskPriority?(v43 + *(v34 + 20), v66, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of ArtworkImage.ViewModel(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    outlined destroy of TaskPriority?(v47, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v51(v49, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAD015CNSwiftUIAvatarJ0V_Tt4g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = type metadata accessor for Artwork.CropStyle();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = type metadata accessor for ArtworkImage();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  outlined init with copy of TaskPriority?(a1, v16, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    outlined destroy of TaskPriority?(v16, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v36 = type metadata accessor for Artwork();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = type metadata accessor for Artwork();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    outlined destroy of ArtworkImage.ViewModel(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  outlined init with copy of TaskPriority?(v22, v19, &_s8MusicKit7ArtworkVSgMd_0);
  if (v40)
  {
    if (v41)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v41)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v42 = v64;
  outlined destroy of TaskPriority?(v22, &_s8MusicKit7ArtworkVSgMd_0);
  (*(v70 + 32))(v69, v31, v42);
  ArtworkImage.artworkReusablePolicy(_:)();
  v43 = v56;
  outlined init with copy of TaskPriority?(v61, v56, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v43, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    outlined init with copy of TaskPriority?(v43 + *(v34 + 20), v66, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of ArtworkImage.ViewModel(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    outlined destroy of TaskPriority?(v47, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v51(v49, v42);
  lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v75 = a5;
  v90 = a4;
  v87 = a2;
  v88 = a3;
  v77 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v11 - 8);
  v80 = v69 - v12;
  v13 = type metadata accessor for Artwork.CropStyle();
  v81 = *(v13 - 8);
  v82 = v13;
  __chkstk_darwin(v13);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a6;
  v91 = a6;
  v92 = a7;
  v76 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v86 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v83 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v20 - 8);
  v71 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v25 - 8);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v69 - v29;
  v78 = type metadata accessor for ArtworkImage();
  v31 = *(v78 - 8);
  __chkstk_darwin(v78);
  v33 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v73 = v69 - v35;
  __chkstk_darwin(v36);
  v74 = v69 - v37;
  __chkstk_darwin(v38);
  v40 = v69 - v39;
  __chkstk_darwin(v41);
  v43 = v69 - v42;
  v72 = a1;
  outlined init with copy of TaskPriority?(a1, v24, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v44 = type metadata accessor for ArtworkImage.ViewModel(0);
  v45 = *(v44 - 8);
  v70 = *(v45 + 48);
  v69[1] = v45 + 48;
  v46 = v70(v24, 1, v44);
  v79 = v15;
  if (v46 == 1)
  {
    outlined destroy of TaskPriority?(v24, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v47 = type metadata accessor for Artwork();
    (*(*(v47 - 8) + 56))(v30, 1, 1, v47);
  }

  else
  {
    v48 = type metadata accessor for Artwork();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v30, v24, v48);
    outlined destroy of ArtworkImage.ViewModel(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  v50 = *(v90 + 8);
  v51 = *(v90 + 24);
  outlined init with copy of TaskPriority?(v30, v27, &_s8MusicKit7ArtworkVSgMd_0);
  if (v50)
  {
    if (v51)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v51)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v52 = v79;
  outlined destroy of TaskPriority?(v30, &_s8MusicKit7ArtworkVSgMd_0);
  v53 = v78;
  (*(v31 + 32))(v43, v40, v78);
  ArtworkImage.artworkReusablePolicy(_:)();
  v54 = v71;
  outlined init with copy of TaskPriority?(v72, v71, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  if (v70(v54, 1, v44) == 1)
  {
    outlined destroy of TaskPriority?(v54, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v55 = v80;
    v56 = v81;
    v57 = v82;
    (*(v81 + 56))(v80, 1, 1, v82);
  }

  else
  {
    v55 = v80;
    outlined init with copy of TaskPriority?(v54 + *(v44 + 20), v80, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of ArtworkImage.ViewModel(v54, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v81;
    v57 = v82;
    if ((*(v81 + 48))(v55, 1, v82) != 1)
    {
      (*(v56 + 32))(v52, v55, v57);
      goto LABEL_19;
    }
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v57, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v52, v58, v57);
  if ((*(v56 + 48))(v55, 1, v57) != 1)
  {
    outlined destroy of TaskPriority?(v55, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  }

LABEL_19:
  v59 = v73;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v56 + 8))(v52, v57);
  v60 = *(v31 + 8);
  v60(v33, v53);
  v61 = v74;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v60(v59, v53);
  v62 = v83;
  ArtworkImage.artworkPlaceholder<A>(_:)();
  v60(v61, v53);
  v60(v43, v53);
  v64 = v84;
  v63 = v85;
  v65 = *(v85 + 16);
  v66 = v86;
  v65(v84, v62, v86);
  v67 = *(v63 + 8);
  v67(v62, v66);
  v65(v77, v64, v66);
  return (v67)(v64, v66);
}

uint64_t static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAD015CNSwiftUIAvatarJ0V_Tt4g5(a1, partial apply for closure #1 in static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:), v12, a4, a5, a6);
}

uint64_t closure #1 in static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = ArtworkImage.Placeholder.symbolConfiguration.getter();
  v8 = v7;
  ArtworkImage.Placeholder.symbolConfiguration.getter();
  v10 = v9;

  ArtworkImage.Placeholder.symbolConfiguration.getter();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t ArtworkImage.Placeholder.symbolConfiguration.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ArtworkImage.Placeholder(v1, v17, type metadata accessor for ArtworkImage.Placeholder);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v19 = (*(*(v18 - 8) + 48))(v17, 11, v18);
  if (v19 > 5)
  {
    if (v19 > 8)
    {
      if (v19 == 9)
      {
        v20 = 0x6F69646172;
        static Font.Weight.regular.getter();
        return v20;
      }

      if (v19 != 10)
      {
        static Font.Weight.light.getter();
        return 0xD000000000000013;
      }

      v20 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v19 == 6)
    {
      v20 = 30324;
      static Font.Weight.regular.getter();
      return v20;
    }

    if (v19 == 7)
    {
      static Font.Weight.regular.getter();
      return 0x696D2E636973756DLL;
    }

    v20 = 0x662E6E6F73726570;
LABEL_24:
    static Font.Weight.regular.getter();
    return v20;
  }

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v20 = 0xD000000000000011;
      static Font.Weight.light.getter();
      return v20;
    }

    if (v19 == 4)
    {
      v20 = 1937075312;
      static Font.Weight.light.getter();
      return v20;
    }

    v20 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v19)
  {
    v20 = 0x636973756DLL;
LABEL_5:
    static Font.Weight.light.getter();
    return v20;
  }

  outlined init with take of URL?(v17, v14, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  outlined init with copy of TaskPriority?(v14, v11, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  v21 = *(v3 + 48);
  if (v21(v11, 1, v2) == 1)
  {
    (*(v3 + 104))(v8, enum case for Playlist.Variant.regular(_:), v2);
    if (v21(v11, 1, v2) != 1)
    {
      outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
  }

  (*(v3 + 16))(v5, v8, v2);
  v22 = (*(v3 + 88))(v5, v2);
  if (v22 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7061687372616567;
  }

  else if (v22 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7375696E6567;
  }

  else
  {
    v23 = enum case for Playlist.Variant.folder(_:);
    v24 = *(v3 + 8);
    v25 = v22;
    v24(v8, v2);
    if (v25 == v23)
    {
      v20 = 0x7265646C6F66;
    }

    else
    {
      v20 = 0x6F6E2E636973756DLL;
      v24(v5, v2);
    }
  }

  static Font.Weight.light.getter();
  outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  return v20;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double closure #1 in ArtworkImage.Placeholder.view(availableSize:)@<D0>(uint64_t *a1@<X8>)
{
  GeometryProxy.size.getter();
  v3 = v2;
  v5 = v4;
  v6 = ArtworkImage.Placeholder.symbolConfiguration.getter();
  v8 = v7;
  ArtworkImage.Placeholder.symbolConfiguration.getter();
  v10 = v9;

  ArtworkImage.Placeholder.symbolConfiguration.getter();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v12;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGMd) + 36)) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGAA12_FrameLayoutVGMd) + 36));
  *v16 = v18;
  v16[1] = v19;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t key path setter for EnvironmentValues.placeholderStyle : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  outlined init with copy of TaskPriority?(a1, &v9 - v6, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  outlined init with copy of TaskPriority?(v7, v4, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  lazy protocol witness table accessor for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey();
  EnvironmentValues.subscript.setter();
  return outlined destroy of TaskPriority?(v7, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v2 - 8);
  outlined init with copy of TaskPriority?(a1, &v5 - v3, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  lazy protocol witness table accessor for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey();
  EnvironmentValues.subscript.setter();
  return outlined destroy of TaskPriority?(a1, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorSchemeContrast();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v37[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  specialized Environment.wrappedValue.getter(v12);
  v13 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    outlined init with copy of TaskPriority?((v12 + 40), &v40, &_s7SwiftUI10ShapeStyle_pSgMd);
    outlined destroy of ArtworkImage.ViewModel(v12, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v41 + 1))
    {
      outlined init with take of ActionPerforming(&v40, v43);
      v37[2] = v45;
      v15 = __swift_project_boxed_opaque_existential_0Tm(v43, v44);
      v37[1] = v37;
      v16 = __chkstk_darwin(v15);
      (*(v18 + 16))(v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v19 = AnyShapeStyle.init<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(&v40, &_s7SwiftUI10ShapeStyle_pSgMd);
  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &type metadata accessor for ColorSchemeContrast, v6);
  v20 = [objc_opt_self() secondarySystemFillColor];
  v21 = Color.init(_:)();
  (*(v38 + 8))(v6, v39);
  v43[0] = v21;
  v19 = AnyShapeStyle.init<A>(_:)();
LABEL_6:
  specialized Environment.wrappedValue.getter(v9);
  if (v14(v9, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
LABEL_10:
    outlined destroy of TaskPriority?(&v40, &_s7SwiftUI10ShapeStyle_pSgMd);
    specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &type metadata accessor for ColorSchemeContrast, v6);
    v27 = [objc_opt_self() tertiaryLabelColor];
    v28 = Color.init(_:)();
    (*(v38 + 8))(v6, v39);
    v43[0] = v28;
    v26 = AnyShapeStyle.init<A>(_:)();
    goto LABEL_11;
  }

  outlined init with copy of TaskPriority?(v9, &v40, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined destroy of ArtworkImage.ViewModel(v9, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v41 + 1))
  {
    goto LABEL_10;
  }

  outlined init with take of ActionPerforming(&v40, v43);
  v22 = __swift_project_boxed_opaque_existential_0Tm(v43, v44);
  v23 = __chkstk_darwin(v22);
  (*(v25 + 16))(v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = AnyShapeStyle.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
LABEL_11:
  v29 = static Color.clear.getter();
  v30 = static Edge.Set.all.getter();

  v31 = static Alignment.center.getter();
  v33 = v32;
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA24_BackgroundStyleModifierVyAA08AnyShapeG0VGGAA08_OverlayH0VyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyACyACyAA5ImageVAA011_ForegroundgH0VyAIGGAA022_EnvironmentKeyWritingH0VyARSgGG_Qo_AA023AccessibilityAttachmentH0VGAA16_BlendModeEffectVGGGMd) + 36);
  closure #1 in ArtworkImage.Placeholder.View.body.getter(v2, v26, v34);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAEyAEyAA5ImageVAA016_ForegroundStyleD0VyAA08AnyShapeM0VGGAA022_EnvironmentKeyWritingD0VyAJSgGG_Qo_AA023AccessibilityAttachmentD0VGAA16_BlendModeEffectVGGMd);
  v36 = (v34 + *(result + 36));
  *v36 = v31;
  v36[1] = v33;
  *a1 = v29;
  *(a1 + 8) = v19;
  *(a1 + 16) = v30;
  return result;
}

uint64_t closure #1 in ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v5 - 8);
  v42 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v7 - 8);
  v46 = v39 - v8;
  v9 = type metadata accessor for BlendMode();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGAA022_EnvironmentKeyWritingL0VyAFSgGG_Qo_Md);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGAA022_EnvironmentKeyWritingL0VyAHSgGG_Qo_AA023AccessibilityAttachmentL0VGMd);
  __chkstk_darwin(v18 - 8);
  v20 = v39 - v19;
  v39[1] = a1;

  v21 = Image.init(_internalSystemName:)();
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);

  v23 = static Font.system(size:weight:design:)();
  outlined destroy of TaskPriority?(v13, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  v48 = v21;
  v49 = a2;
  v50 = KeyPath;
  v51 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeG0VGGAA022_EnvironmentKeyWritingH0VyAA4FontVSgGGMd);
  v26 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v48 = v25;
  v49 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v40;
  View.accessibility(hidden:)();
  (*(v41 + 8))(v17, v27);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v28 = v42;
  specialized Environment.wrappedValue.getter(v42);
  v29 = v28;
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    outlined destroy of TaskPriority?(v29, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
    v32 = v43;
    v31 = v44;
    v33 = v46;
    (*(v43 + 56))(v46, 1, 1, v44);
  }

  else
  {
    v34 = v29 + *(v30 + 24);
    v33 = v46;
    outlined init with copy of TaskPriority?(v34, v46, &_s7SwiftUI9BlendModeOSgMd);
    outlined destroy of ArtworkImage.ViewModel(v29, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v32 = v43;
    v31 = v44;
    if ((*(v43 + 48))(v33, 1, v44) != 1)
    {
      v35 = v45;
      (*(v32 + 32))(v45, v33, v31);
      goto LABEL_7;
    }
  }

  v35 = v45;
  (*(v32 + 104))(v45, enum case for BlendMode.normal(_:), v31);
  if ((*(v32 + 48))(v33, 1, v31) != 1)
  {
    outlined destroy of TaskPriority?(v33, &_s7SwiftUI9BlendModeOSgMd);
  }

LABEL_7:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGAA022_EnvironmentKeyWritingL0VyAHSgGG_Qo_AA023AccessibilityAttachmentL0VGAA16_BlendModeEffectVGMd);
  v37 = v47;
  (*(v32 + 32))(v47 + *(v36 + 36), v35, v31);
  return sub_100317668(v20, v37);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = type metadata accessor for BlendMode();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(a1, a4, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(a2, (a4 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(a3, &a4[v9], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t one-time initialization function for nowPlaying()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v4 = __swift_project_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  static Color.white.getter();
  v5 = Color.opacity(_:)();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  static Color.black.getter();
  v6 = Color.opacity(_:)();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v6;
  v7 = type metadata accessor for BlendMode();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v9 = *(v3 + 24);
  v8(&v4[v9], 1, 1, v7);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v12, v4, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v11, (v4 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, &v4[v9], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t one-time initialization function for miniPlayer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = __swift_project_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v5 = objc_opt_self();
  v6 = [v5 quaternaryLabelColor];
  v7 = Color.init(_:)();
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v15[0] = v7;
  v8 = [v5 tertiarySystemFillColor];
  v9 = Color.init(_:)();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v9;
  v10 = type metadata accessor for BlendMode();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v12 = *(v3 + 24);
  v11(&v4[v12], 1, 1, v10);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v15, v4, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v14, (v4 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, &v4[v12], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t one-time initialization function for widgets()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  v4 = __swift_project_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  static Color.white.getter();
  v5 = Color.opacity(_:)();

  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v5;
  static Color.white.getter();
  v6 = Color.opacity(_:)();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v6;
  v7 = enum case for BlendMode.plusLighter(_:);
  v8 = type metadata accessor for BlendMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  v10 = *(v9 + 56);
  v10(v2, 0, 1, v8);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v11 = *(v3 + 24);
  v10(&v4[v11], 1, 1, v8);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v14, v4, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v13, (v4 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, &v4[v11], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t one-time initialization function for accentuated()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = __swift_project_value_buffer(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v5 = static Color.accentColor.getter();
  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = type metadata accessor for BlendMode();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v8 = *(v3 + 24);
  v7(&v4[v8], 1, 1, v6);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v12, v4, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v10, (v4 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, &v4[v8], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t static ArtworkImage.Placeholder.View.Style.nowPlaying.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of ArtworkImage.Placeholder(v6, a3, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t static ArtworkImage.Placeholder.View.Style.standard(with:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v5 = objc_opt_self();
  v6 = [v5 tertiaryLabelColor];
  v7 = Color.init(_:)();
  v14[4] = &protocol witness table for Color;
  v15[0] = v7;
  v14[3] = &type metadata for Color;
  v8 = [v5 secondarySystemFillColor];
  v14[0] = Color.init(_:)();
  v9 = type metadata accessor for BlendMode();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v12 = *(v11 + 24);
  v10(&a1[v12], 1, 1, v9);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v15, a1, &_s7SwiftUI10ShapeStyle_pSgMd);
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v14, (a1 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v4, &a1[v12], &_s7SwiftUI9BlendModeOSgMd);
}

uint64_t ArtworkImage.Placeholder.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArtworkImage.Placeholder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ArtworkImage.Placeholder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.ComposerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.ComposerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO18ComposerCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOs0J3KeyADsAJP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.GenreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.GenreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.MicrophoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.MicrophoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.MusicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.MusicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.MusicVideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.MusicVideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.NewFolderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.NewFolderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.NowPlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.NowPlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArtworkImage.Placeholder.PlaylistCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.PlaylistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.PlaylistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.RadioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.RadioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArtworkImage.Placeholder.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArtworkImage.Placeholder.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO18ComposerCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO15GenreCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v80 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO15RadioCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO16PersonCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO20MicrophoneCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v53 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO12TvCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v53 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO0D15VideoCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO18PlaylistCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v15 - 8);
  v61 = &v53 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO21NewPlaylistCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v53 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO19NewFolderCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v53 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO20NowPlayingCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO0D10CodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v53 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO10CodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v29 = *(v28 - 8);
  v88 = v28;
  v89 = v29;
  __chkstk_darwin(v28);
  v31 = &v53 - v30;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys();
  v87 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ArtworkImage.Placeholder(v86, v27, type metadata accessor for ArtworkImage.Placeholder);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v33 = (*(*(v32 - 8) + 48))(v27, 11, v32);
  if (v33 <= 5)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v92 = 2;
        lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys();
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = *(v56 + 8);
        v44 = v19;
        v45 = &v89;
      }

      else if (v33 == 4)
      {
        v93 = 3;
        lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys();
        v42 = v58;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = *(v59 + 8);
        v44 = v42;
        v45 = v94;
      }

      else
      {
        v94[17] = 5;
        lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys();
        v52 = v62;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = *(v63 + 8);
        v44 = v52;
        v45 = &v95;
      }
    }

    else
    {
      if (!v33)
      {
        v46 = v61;
        outlined init with take of URL?(v27, v61, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
        v94[16] = 4;
        lazy protocol witness table accessor for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys();
        v47 = v64;
        v49 = v87;
        v48 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Playlist.Variant();
        lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, &type metadata accessor for Playlist.Variant);
        v50 = v68;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        (*(v67 + 8))(v47, v50);
        outlined destroy of TaskPriority?(v46, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
        return (*(v89 + 8))(v49, v48);
      }

      if (v33 == 1)
      {
        v90 = 0;
        lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys();
        v34 = v87;
        v35 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v53 + 8))(v24, v22);
        return (*(v89 + 8))(v34, v35);
      }

      v91 = 1;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys();
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = *(v54 + 8);
      v44 = v21;
      v45 = &v87;
    }

    goto LABEL_23;
  }

  if (v33 > 8)
  {
    if (v33 == 9)
    {
      v94[21] = 9;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys();
      v37 = v77;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v78;
      v40 = v79;
    }

    else if (v33 == 10)
    {
      v94[22] = 10;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys();
      v37 = v80;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v81;
      v40 = v82;
    }

    else
    {
      v94[23] = 11;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys();
      v37 = v83;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v84;
      v40 = v85;
    }

    goto LABEL_25;
  }

  if (v33 != 6)
  {
    if (v33 == 7)
    {
      v94[19] = 7;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys();
      v37 = v71;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v72;
      v40 = v73;
    }

    else
    {
      v94[20] = 8;
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys();
      v37 = v74;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v75;
      v40 = v76;
    }

LABEL_25:
    v43 = *(v41 + 8);
    v44 = v37;
    goto LABEL_26;
  }

  v94[18] = 6;
  lazy protocol witness table accessor for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys();
  v51 = v66;
  v39 = v87;
  v38 = v88;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v43 = *(v69 + 8);
  v44 = v51;
  v45 = &v96;
LABEL_23:
  v40 = *(v45 - 32);
LABEL_26:
  v43(v44, v40);
  return (*(v89 + 8))(v39, v38);
}

void ArtworkImage.Placeholder.hash(into:)()
{
  v1 = type metadata accessor for Playlist.Variant();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ArtworkImage.Placeholder(v0, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 9;
      }

      else if (v15 == 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = 11;
      }
    }

    else if (v15 == 6)
    {
      v16 = 6;
    }

    else if (v15 == 7)
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    goto LABEL_23;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 2;
    }

    else if (v15 == 4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    goto LABEL_23;
  }

  if (v15)
  {
    v16 = v15 != 1;
LABEL_23:
    Hasher._combine(_:)(v16);
    return;
  }

  outlined init with take of URL?(v13, v10, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  Hasher._combine(_:)(4uLL);
  outlined init with copy of TaskPriority?(v10, v7, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOAFSHADWL_0, &type metadata accessor for Playlist.Variant);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  outlined destroy of TaskPriority?(v10, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  Hasher.init(_seed:)();
  ArtworkImage.Placeholder.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO18ComposerCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v100 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO15GenreCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v101 = &v68 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO15RadioCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v68 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO16PersonCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v99 = &v68 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO20MicrophoneCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v98 = &v68 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO12TvCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v97 = &v68 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO0D15VideoCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v95 = &v68 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO18PlaylistCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v96 = &v68 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO21NewPlaylistCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v103 = &v68 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO19NewFolderCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v94 = &v68 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO20NowPlayingCodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v93 = &v68 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO0D10CodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17_MusicKit_SwiftUI12ArtworkImageV0d4CoreG0E11PlaceholderO10CodingKeys33_CE2B17AC87FDA6A9302F8C95BF89C377LLOGMd);
  v105 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v27 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v27);
  lazy protocol witness table accessor for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys();
  v28 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v68 = v23;
    v30 = v103;
    v29 = v104;
    v106 = v26;
    v31 = KeyedDecodingContainer.allKeys.getter();
    if (*(v31 + 16) == 1)
    {
      v32 = *(v31 + 32);
      if (v32 != 12)
      {
        if (*(v31 + 32) > 5u)
        {
          v41 = v105;
          if (*(v31 + 32) > 8u)
          {
            v33 = v102;
            if (v32 == 9)
            {
              v117 = 9;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v87 + 8))(v29, v88);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v54 - 8) + 56))(v106, 9, 11, v54);
            }

            else if (v32 == 10)
            {
              v118 = 10;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys();
              v48 = v101;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v89 + 8))(v48, v90);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v49 - 8) + 56))(v106, 10, 11, v49);
            }

            else
            {
              v60 = v102;
              v119 = 11;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys();
              v61 = v100;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v91 + 8))(v61, v92);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v66 - 8) + 56))(v106, 11, 11, v66);
              v33 = v60;
            }
          }

          else
          {
            v33 = v102;
            if (v32 == 6)
            {
              v114 = 6;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys();
              v50 = v97;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v80 + 8))(v50, v82);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v51 - 8) + 56))(v106, 6, 11, v51);
            }

            else if (v32 == 7)
            {
              v115 = 7;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys();
              v42 = v98;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v83 + 8))(v42, v84);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v43 - 8) + 56))(v106, 7, 11, v43);
            }

            else
            {
              v116 = 8;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys();
              v57 = v99;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v85 + 8))(v57, v86);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v58 - 8) + 56))(v106, 8, 11, v58);
            }
          }

          goto LABEL_29;
        }

        if (*(v31 + 32) <= 2u)
        {
          v33 = v102;
          if (*(v31 + 32))
          {
            if (v32 == 1)
            {
              v109 = 1;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys();
              v34 = v93;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v35 = v105;
              (*(v71 + 8))(v34, v72);
              (*(v35 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v36 - 8) + 56))(v106, 2, 11, v36);
            }

            else
            {
              v110 = 2;
              lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys();
              v55 = v94;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v56 = v105;
              (*(v73 + 8))(v55, v74);
              (*(v56 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
              v37 = v106;
              (*(*(v64 - 8) + 56))(v106, 3, 11, v64);
            }
          }

          else
          {
            v108 = 0;
            lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v69 + 8))(v17, v70);
            (*(v105 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
            v37 = v106;
            (*(*(v63 - 8) + 56))(v106, 1, 11, v63);
          }

          goto LABEL_29;
        }

        if (v32 == 3)
        {
          v111 = 3;
          lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v105;
          (*(v76 + 8))(v30, v75);
          (*(v52 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
          v37 = v106;
          (*(*(v53 - 8) + 56))(v106, 4, 11, v53);
        }

        else
        {
          v44 = v105;
          if (v32 == 4)
          {
            v112 = 4;
            lazy protocol witness table accessor for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys();
            v45 = v96;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            type metadata accessor for Playlist.Variant();
            lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, &type metadata accessor for Playlist.Variant);
            v46 = v68;
            v47 = v81;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            (*(v79 + 8))(v45, v47);
            (*(v44 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
            (*(*(v67 - 8) + 56))(v46, 0, 11, v67);
            v37 = v106;
            outlined init with take of ArtworkImage.Placeholder(v46, v106, type metadata accessor for ArtworkImage.Placeholder);
            v33 = v102;
LABEL_29:
            outlined init with take of ArtworkImage.Placeholder(v37, v33, type metadata accessor for ArtworkImage.Placeholder);
            return __swift_destroy_boxed_opaque_existential_0Tm(v107);
          }

          v113 = 5;
          lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys();
          v59 = v95;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v77 + 8))(v59, v78);
          (*(v44 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
          v37 = v106;
          (*(*(v65 - 8) + 56))(v106, 5, 11, v65);
        }

        v33 = v102;
        goto LABEL_29;
      }
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v40 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v105 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v107);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArtworkImage.Placeholder()
{
  Hasher.init(_seed:)();
  ArtworkImage.Placeholder.hash(into:)();
  return Hasher._finalize()();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = *(v8 + 16);
  v14(&v45 - v12, v1, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v49 = a1;
  if (v15 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v13, v7);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    v19 = 7;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.composer(_:))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    (*(*(v21 - 8) + 56))(v49, 11, 11, v21);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.creditArtist(_:) || v15 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v13, v7);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    goto LABEL_3;
  }

  if (v15 == enum case for GenericMusicItem.genre(_:))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    (*(*(v23 - 8) + 56))(v49, 10, 11, v23);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    (*(*(v25 - 8) + 56))(v49, 5, 11, v25);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v4 + 32))(v6, v13, v3);
    v26 = v49;
    Playlist.variant.getter();
    (*(v4 + 8))(v6, v3);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    return (*(*(v27 - 8) + 56))(v26, 0, 11, v27);
  }

  if (v15 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v28 = enum case for Playlist.Variant.folder(_:);
    v29 = type metadata accessor for Playlist.Variant();
    v30 = *(v29 - 8);
    v31 = v49;
    (*(v30 + 104))(v49, v28, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    (*(*(v32 - 8) + 56))(v31, 0, 11, v32);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v15 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    (*(*(v34 - 8) + 56))(v49, 8, 11, v34);
    return (*(v8 + 8))(v13, v7);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v13, v7);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    return (*(*(v33 - 8) + 56))(v49, 9, 11, v33);
  }

  if (v15 == enum case for GenericMusicItem.tvEpisode(_:) || v15 == enum case for GenericMusicItem.tvSeason(_:) || v15 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v13, v7);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    return (*(*(v24 - 8) + 56))(v49, 6, 11, v24);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v13, v7);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1;
LABEL_3:
    v19 = 1;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.artwork);
  (v14)(v48, v1, v7);
  v36 = Logger.logObject.getter();
  v47 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v36, v47))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v37 = 136315394;
    *(v37 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v50);
    *(v37 + 12) = 2080;
    lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0, &type metadata accessor for GenericMusicItem);
    v38 = v48;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v8 + 8);
    v42(v38, v7);
    v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v39, v41, &v50);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v36, v47, "Unhandled case for %s: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v8 + 8);
    v42(v48, v7);
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  (*(*(v44 - 8) + 56))(v49, 1, 11, v44);
  return (v42)(v13, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v35[-v2];
  v4 = type metadata accessor for UploadedVideo();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v14 = &v35[-v13];
  v15 = *(v8 + 16);
  v15(&v35[-v13], v0, v7, v12);
  v16 = (*(v8 + 88))(v14, v7);
  v22 = v16 == enum case for GenericMusicItem.album(_:) || v16 == enum case for GenericMusicItem.artist(_:) || v16 == enum case for GenericMusicItem.composer(_:) || v16 == enum case for GenericMusicItem.creditArtist(_:) || v16 == enum case for GenericMusicItem.curator(_:) || v16 == enum case for GenericMusicItem.editorialItem(_:) || v16 == enum case for GenericMusicItem.genre(_:);
  if (v22 || v16 == enum case for GenericMusicItem.musicMovie(_:) || v16 == enum case for GenericMusicItem.musicVideo(_:) || v16 == enum case for GenericMusicItem.playlist(_:) || v16 == enum case for GenericMusicItem.playlistFolder(_:) || v16 == enum case for GenericMusicItem.radioShow(_:) || v16 == enum case for GenericMusicItem.recordLabel(_:) || v16 == enum case for GenericMusicItem.socialProfile(_:) || v16 == enum case for GenericMusicItem.song(_:) || v16 == enum case for GenericMusicItem.station(_:) || v16 == enum case for GenericMusicItem.tvEpisode(_:) || v16 == enum case for GenericMusicItem.tvSeason(_:) || v16 == enum case for GenericMusicItem.tvShow(_:) || v16 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (v16 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 96))(v14, v7);
    v24 = v37;
    (*(v37 + 32))(v6, v14, v4);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v3);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
    {
      (*(v24 + 8))(v6, v4);
      return outlined destroy of TaskPriority?(v3, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    }

    else if (Artwork.maximumWidth.getter() < 1 || Artwork.maximumHeight.getter() < 1)
    {
      (*(v24 + 8))(v6, v4);
      return outlined destroy of ArtworkImage.ViewModel(v3, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      Artwork.maximumWidth.getter();
      Artwork.maximumHeight.getter();
      (*(v24 + 8))(v6, v4);
      return outlined destroy of ArtworkImage.ViewModel(v3, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v16 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.artwork);
  (v15)(v10, v0, v7);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v29 = 136315394;
    *(v29 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v38);
    *(v29 + 12) = 2080;
    lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0, &type metadata accessor for GenericMusicItem);
    v36 = v28;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v8 + 8);
    v33(v10, v7);
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v30, v32, &v38);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v36, "Unhandled case for %s: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v10, v7);
  }

  return (v33)(v14, v7);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    Artwork.init(_:)();
    v14 = [v13 token];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for UIAction(0, &_sSo26MPStoreArtworkRequestTokenCML_0);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = type metadata accessor for Artwork.CropStyle();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    outlined init with take of ArtworkImage.Placeholder(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    static Artwork.CropStyle.boundedBox.getter();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    static Artwork.CropStyle.constrainedWidth.getter();
    goto LABEL_17;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

LABEL_21:
    static Artwork.CropStyle.constrainedHeight.getter();
    goto LABEL_17;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

LABEL_26:
    static Artwork.CropStyle.featuredContentCrop270.getter();
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_31:
    static Artwork.CropStyle.featuredContentCrop44.getter();
    goto LABEL_17;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

LABEL_36:
    static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    goto LABEL_17;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

LABEL_41:
    static Artwork.CropStyle.sourceSize.getter();
    goto LABEL_17;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

LABEL_46:
    static Artwork.CropStyle.specificRectangle.getter();
    goto LABEL_17;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

LABEL_51:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_17;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t one-time initialization function for fallback()
{
  v0 = type metadata accessor for Artwork.CropStyle();
  __swift_allocate_value_buffer(v0, static Artwork.CropStyle.fallback);
  __swift_project_value_buffer(v0, static Artwork.CropStyle.fallback);
  return static Artwork.CropStyle.boundedBox.getter();
}

{
  v0 = type metadata accessor for Artwork.ImageFormat();
  __swift_allocate_value_buffer(v0, static Artwork.ImageFormat.fallback);
  v1 = __swift_project_value_buffer(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for UIAction(0, &_sSo16MPArtworkCatalogCML_0);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    Artwork.init(_:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for Artwork();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t static Artwork.CropStyle.fallback.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PlaceholderStyleKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.PlaceholderStyleKey.defaultValue);
  return outlined init with copy of TaskPriority?(v3, a1, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = lazy protocol witness table accessor for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.placeholderStyle.modify;
}

void EnvironmentValues.placeholderStyle.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  outlined init with copy of TaskPriority?((*a1)[3], (*a1)[2], &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    outlined init with copy of TaskPriority?(v3[2], v3[1], &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
    EnvironmentValues.subscript.setter();
    outlined destroy of TaskPriority?(v6, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  outlined destroy of TaskPriority?(v4, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t closure #1 in PlaceholderStyleModifier.init(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for BlendMode();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a2, v11, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of TaskPriority?(v11, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  }

  outlined init with take of ArtworkImage.Placeholder(v11, v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  outlined init with copy of TaskPriority?(v15, &v23, &_s7SwiftUI10ShapeStyle_pSgMd);
  if (v24)
  {
    outlined init with take of ActionPerforming(&v23, v25);
    v17 = v22;
    outlined destroy of TaskPriority?(v22, &_s7SwiftUI10ShapeStyle_pSgMd);
    outlined init with take of ActionPerforming(v25, v17);
  }

  else
  {
    outlined destroy of TaskPriority?(&v23, &_s7SwiftUI10ShapeStyle_pSgMd);
    v17 = v22;
  }

  v18 = v21;
  outlined init with copy of TaskPriority?((v15 + 40), &v23, &_s7SwiftUI10ShapeStyle_pSgMd);
  if (v24)
  {
    outlined init with take of ActionPerforming(&v23, v25);
    outlined destroy of TaskPriority?(v17 + 40, &_s7SwiftUI10ShapeStyle_pSgMd);
    outlined init with take of ActionPerforming(v25, v17 + 40);
  }

  else
  {
    outlined destroy of TaskPriority?(&v23, &_s7SwiftUI10ShapeStyle_pSgMd);
  }

  outlined init with copy of TaskPriority?(&v15[*(v12 + 24)], v5, &_s7SwiftUI9BlendModeOSgMd);
  outlined destroy of ArtworkImage.ViewModel(v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v18 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of TaskPriority?(v5, &_s7SwiftUI9BlendModeOSgMd);
  }

  v19 = *(v18 + 32);
  v19(v8, v5, v6);
  v20 = *(v12 + 24);
  outlined destroy of TaskPriority?(v17 + v20, &_s7SwiftUI9BlendModeOSgMd);
  v19((v17 + v20), v8, v6);
  return (*(v18 + 56))(v17 + v20, 0, 1, v6);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0016PlaceholderStyleF0VGAA022_EnvironmentKeyWritingF0Vy01_g4Kit_aB012ArtworkImageVAFE0I0O0E0V0J0VSgGGMd) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd) + 28);
  PlaceholderStyleModifier.configuredStyle.getter(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0016PlaceholderStyleD0VGMd);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t PlaceholderStyleModifier.configuredStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for PlaceholderStyleModifier(0);
  specialized Environment.wrappedValue.getter(v9);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v12 = type metadata accessor for BlendMode();
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v13 = *(*(v12 - 8) + 56);
    v13(v6, 1, 1, v12);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v18 = v2;
    v14 = *(v10 + 24);
    v13(&a1[v14], 1, 1, v12);
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v21, a1, &_s7SwiftUI10ShapeStyle_pSgMd);
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v19, (a1 + 40), &_s7SwiftUI10ShapeStyle_pSgMd);
    v15 = &a1[v14];
    v2 = v18;
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v6, v15, &_s7SwiftUI9BlendModeOSgMd);
    if (v11(v9, 1, v10) != 1)
    {
      outlined destroy of TaskPriority?(v9, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
    }
  }

  else
  {
    outlined init with take of ArtworkImage.Placeholder(v9, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TaskPriority?(a1, v7, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v11 = *(v8 + 20);
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  outlined init with take of URL?(v7, v13 + v12, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  *v10 = partial apply for closure #1 in PlaceholderStyleModifier.init(_:);
  v10[1] = v13;
  View.modifier<A>(_:)();
  return outlined destroy of ArtworkImage.ViewModel(v10, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PlaceholderStyleModifier(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v7);
  v10 = *(v6 + 20);
  *(v9 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  outlined init with take of URL?(v5, v12 + v11, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  *v9 = closure #1 in PlaceholderStyleModifier.init(_:)partial apply;
  v9[1] = v12;
  View.modifier<A>(_:)();
  return outlined destroy of ArtworkImage.ViewModel(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 20);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;
  v6[1] = a2;

  View.modifier<A>(_:)();
  return outlined destroy of ArtworkImage.ViewModel(v6, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t specialized static ArtworkImage.Size.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (static ContentMode.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t specialized static ArtworkImage.Info.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v39[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v39[-1] - v12;
  v15 = *(v14 + 56);
  outlined init with copy of TaskPriority?(a1, &v39[-1] - v12, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  outlined init with copy of TaskPriority?(a2, &v13[v15], &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v13, v10, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of ArtworkImage.Placeholder(&v13[v15], v7, type metadata accessor for ArtworkImage.ViewModel);
      v17 = specialized static ArtworkImage.ViewModel.__derived_struct_equals(_:_:)(v10, v7);
      outlined destroy of ArtworkImage.ViewModel(v7, type metadata accessor for ArtworkImage.ViewModel);
      outlined destroy of ArtworkImage.ViewModel(v10, type metadata accessor for ArtworkImage.ViewModel);
      outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    outlined destroy of ArtworkImage.ViewModel(v10, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
LABEL_8:
  v18 = type metadata accessor for ArtworkImage.Info(0);
  if (specialized static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(a1 + v18[5], a2 + v18[5]))
  {
    v19 = v18[6];
    v20 = (a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = (a2 + v19);
    v23 = *(a2 + v19 + 8);
    if (v21)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      if (*v20 != *v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v24 = (a1 + v18[7]);
    v25 = *(v24 + 26);
    v26 = v24[1];
    v38 = *v24;
    v39[0] = v26;
    *(v39 + 10) = v25;
    v27 = (a2 + v18[7]);
    *&v41[10] = *(v27 + 26);
    v28 = v27[1];
    v40 = *v27;
    *v41 = v28;
    if (specialized static ArtworkImage.Size.__derived_struct_equals(_:_:)(&v38, &v40))
    {
      v29 = v18[8];
      v30 = a1 + v29;
      v31 = *(a1 + v29);
      v32 = *(a1 + v29 + 16);
      v33 = a2 + v29;
      v34 = *(a2 + v29);
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (v32)
      {
        if (v32 == 1)
        {
          if (v36 != 1 || v31 != v34)
          {
            return 0;
          }
        }

        else if (v36 != 2 || v35 | *&v34)
        {
          return 0;
        }
      }

      else if (v36 || v31 != v34 || *(v30 + 8) != v35)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}