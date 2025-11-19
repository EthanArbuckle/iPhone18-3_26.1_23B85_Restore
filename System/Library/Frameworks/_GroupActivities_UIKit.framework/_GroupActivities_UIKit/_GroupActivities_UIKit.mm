uint64_t sub_23B6FBFC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for WeakGroupActivityAssociationBox(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeakGroupActivityAssociationBox(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23B6FC048()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void *sub_23B6FC098@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_23B6FC104(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x80))(&v4);
}

uint64_t sub_23B6FC170()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B6FC1B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FC1E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FC220()
{
  MEMORY[0x23EEA72C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FC258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FC2E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FC344(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);

  return v2(v3);
}

uint64_t sub_23B6FC3A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FC404(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);

  return v2(v3);
}

uint64_t sub_23B6FC468@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FC4C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t sub_23B6FC53C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FC5F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FC62C()
{
  v1 = type metadata accessor for AnyGroupActivity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6FC6F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy22_GroupActivities_UIKit0A21ActivitySharingResultOs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6FC7AC()
{
  MEMORY[0x23EEA72C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void _sSo34_EXHostViewControllerConfigurationCSgSgWOe_0(id a1)
{
  if (a1 != 1)
  {
  }
}

id _sSo34_EXHostViewControllerConfigurationCSgSgWOy_0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23B6FC804()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B6FC854()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FC88C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FC8C4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6FC904()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23B6FC93C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FC974()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6FC9BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FCA18(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_23B6FCB3C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FCB98(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

uint64_t sub_23B6FCC10@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FCCC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FCD90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FCE60@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FCEC4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FCF34@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FCF98(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x158);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FD008@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x180))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FD06C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x188);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_23B6FD0E8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy22_GroupActivities_UIKit22PeoplePickerControllerC33ConnectionCompletionHandlingState33_16EE2DB14B9295AC9F0FE6CCD04E6800LLVGMd);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B6FD118()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_23B6FD1EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_23B6FD1FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FD234()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6FD270()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6FD304(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B6FD31C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FD36C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FD3B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FD408@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for GroupSessionPreviewPresentationController + 48))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FD480(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for GroupSessionPreviewPresentationController + 56);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_23B6FD51C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for GroupSessionPreviewPresentationController + 72))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FD594(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for GroupSessionPreviewPresentationController + 80);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_23B6FD62C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FD688(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FD748@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FD7A4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FD80C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FD8C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6FD90C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FD968(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FD9D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FDA34(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x108);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23B6FDAA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FDC24()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FDC5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FDCA8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

__n128 sub_23B6FDD08(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_23B6FDD34()
{
  type metadata accessor for GroupSessionPreviewViewModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B6FDDE8()
{
  lazy protocol witness table accessor for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle();
  type metadata accessor for GroupSessionPreviewViewModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B6FDEA4()
{
  type metadata accessor for GroupSessionPreviewViewModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for GroupSessionPreviewHostingView();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B6FDFF8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23B6FE07C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FE0B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FE100(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);

  return v4(v2, v3);
}

uint64_t sub_23B6FE168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FE1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_23B6FE224(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_23B6FE2F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FE344(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

uint64_t sub_23B6FE398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FE3E4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 240);

  return v2(v3);
}

uint64_t sub_23B6FE440()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd);
  lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B6FE4DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>>, ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ReactionHistoryEntry.ImageProvider? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B6FE5B4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80) != 255)
  {
  }

  outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(*(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_23B6FE630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6FE6C8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23B6FE720@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B6FE778@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B6FE838()
{
  MEMORY[0x23EEA72C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FE870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6FE8C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B6FE8F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6FE998@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FEA50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FEAB4(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x158);
  outlined copy of ReactionEffectInteraction.PresentationContext?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_23B6FEB38@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

__n128 sub_23B6FEBFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_23B6FEC08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FEC64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);

  return v2(v3);
}

uint64_t sub_23B6FECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B6FED90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B6FEE50()
{
  type metadata accessor for ReactionEffectModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ReactionEffectSourceViewRepresentable();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B6FEF7C()
{
  type metadata accessor for ReactionEffectModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B6FF0AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FF0FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FF148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

uint64_t sub_23B6FF1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FF204(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 280);

  return v2(v3);
}

uint64_t sub_23B6FF260@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FF2B4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t sub_23B6FF318()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FF350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyALyALyAA5ColorVAA23_SafeAreaIgnoringLayoutVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_Qo__AA09_VariadicE0O4TreeVy_AA01_Q4RootVy22_GroupActivities_UIKit022ReactionPickerAnchoredQ0VGA4_20ReactionPickerBubbleVSgGtGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6FF540()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FF588()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_23B6FF5C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamichI0O5BoundRtd__lFQOyAA4TextV_s19PartialRangeThroughVyAJGQo_GAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6FF630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyAA6ButtonVyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyAA4TextV_s19PartialRangeThroughVyAMGQo_GAA31AccessibilityAttachmentModifierVG_AA09AutomatickG0VQo_22_GroupActivities_UIKit08ReactionL9Transform33_9D4D9DA63C5F5125479283FAAC3C6084LLVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6FF6B0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23B6FF6E8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

void sub_23B6FF74C(uint64_t *a1@<X8>)
{
  v2 = UIScene.reactionEffectSceneComponent.getter();
  v3 = ReactionEffectSceneComponent.reactionEffectInteraction.getter();

  *a1 = v3;
}

uint64_t sub_23B6FF794()
{
  MEMORY[0x23EEA72C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FF7CC()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6FF81C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for ReactionPickerOverlayViewController + 80))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FF894(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for ReactionPickerOverlayViewController + 88);

  return v2(v3);
}

uint64_t sub_23B6FF914@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for ReactionPickerOverlayViewController + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B6FF98C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for ReactionPickerOverlayViewController + 112);

  return v4(v2, v3);
}

uint64_t sub_23B6FFA24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for ReactionPickerOverlayViewController + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FFA9C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for ReactionPickerOverlayViewController + 136);

  return v2(v3);
}

uint64_t sub_23B6FFB1C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for ReactionPickerOverlayViewController + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23B6FFC14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FFC4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6FFC8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6FFCC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6FFCFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_23B6FFD58(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t key path getter for ReactionPickerView.reactions : ReactionPickerView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ReactionPickerView.reactions : ReactionPickerView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v2(v3);
}

uint64_t ReactionPickerView.reactions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_reactions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for ReactionPickerView.selectedReaction : ReactionPickerView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ReactionPickerView.selectedReaction : ReactionPickerView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);

  return v4(v2, v3);
}

uint64_t ReactionPickerView.selectedReaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ReactionPickerView.selectedReaction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*ReactionPickerView.selectedReaction.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ReactionPickerView.selectedReaction.modify;
}

void ReactionPickerView.selectedReaction.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for ReactionPickerView.$selectedReaction : ReactionPickerView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC8))(v7);
}

uint64_t ReactionPickerView.$selectedReaction.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ReactionPickerView.$selectedReaction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ReactionPickerView.$selectedReaction.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView__selectedReaction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ReactionPickerView.$selectedReaction.modify;
}

void ReactionPickerView.$selectedReaction.modify(uint64_t a1, char a2)
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

uint64_t key path getter for ReactionPickerView.history : ReactionPickerView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ReactionPickerView.history : ReactionPickerView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);

  return v2(v3);
}

uint64_t ReactionPickerView.history.getter()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_historyModel) + 160);

  v3 = v1(v2);

  return v3;
}

uint64_t ReactionPickerView.history.setter(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_historyModel) + 168);

  v3(a1);
}

uint64_t (*ReactionPickerView.history.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_historyModel;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(**(v1 + v3) + 160);

  v6 = v4(v5);

  *a1 = v6;
  return ReactionPickerView.history.modify;
}

uint64_t ReactionPickerView.history.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(**(a1[1] + a1[2]) + 168);
  if (a2)
  {

    v3(v2);
  }

  else
  {

    v3(v2);
  }
}

id ReactionPickerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ReactionPickerView.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 264))(&outlined read-only object #0 of ReactionPickerView.init());
  swift_deallocPartialClassInstance();
  return v1;
}

id ReactionPickerView.init(reactions:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView__selectedReaction;
  v16 = 0;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v2[v9], v8, v4);
  v10 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_historyModel;
  type metadata accessor for ReactionHistoryViewModel();
  swift_allocObject();
  *&v2[v10] = ReactionHistoryViewModel.init(entries:)(MEMORY[0x277D84F90]);
  v11 = [objc_opt_self() buttonWithType_];
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton] = v11;
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_reactions] = a1;
  v12 = type metadata accessor for ReactionPickerView();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ReactionPickerView.configureEmojiButton()();

  return v13;
}

id ReactionPickerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ReactionPickerView.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

void ReactionPickerView.configureEmojiButton()()
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = *&v0[OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton];
  v7 = v2;
  v4 = MEMORY[0x23EEA6320](0x6972672E65636166, 0xED0000676E696E6ELL);
  v5 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v3 setImage:v5 forState:0];
  [v3 setOverrideUserInterfaceStyle_];
  v6 = [objc_opt_self() whiteColor];
  [v3 setTintColor_];

  [v3 addTarget:v0 action:sel_presentReactionPicker forControlEvents:64];
  [v0 addSubview_];
}

Swift::Void __swiftcall ReactionPickerView.present(from:in:animated:)(UIView *from, UIWindow *in, Swift::Bool animated)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x277D85000];
  if (Strong)
  {
    v8 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + class metadata base offset for ReactionPickerOverlayViewController + 224))();
  }

  v9 = objc_allocWithZone(type metadata accessor for ReactionPickerOverlayViewController());
  v10 = ReactionPickerOverlayViewController.init()();
  v11 = (*((*v7 & *v4) + 0x90))();
  v12 = *(v11 + 16);
  if (v12)
  {
    v34 = in;
    v35 = v4;
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v38;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);

      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v38 + 16) = v18 + 1;
      v19 = v38 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 2;
      --v12;
    }

    while (v12);

    v4 = v35;
    v7 = MEMORY[0x277D85000];
    in = v34;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  (*((*v7 & *v10) + class metadata base offset for ReactionPickerOverlayViewController + 136))(v13);
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = in;
  v21 = v7;
  v22 = *((*v7 & *v10) + class metadata base offset for ReactionPickerOverlayViewController + 184);
  v23 = v4;
  v24 = in;
  v25 = v22(partial apply for closure #2 in ReactionPickerView.present(from:in:animated:), v20);
  v26 = v21;
  v27 = (*((*v21 & *v23) + 0xA8))(v25);
  v28 = (*((*v21 & *v10) + class metadata base offset for ReactionPickerOverlayViewController + 112))(v27);
  v29 = *((*((*v21 & *v23) + 0xD8))(v28) + 16);

  if (v29)
  {
    type metadata accessor for ReactionHistoryViewModel();
    lazy protocol witness table accessor for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel(&lazy protocol witness table cache variable for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel, type metadata accessor for ReactionHistoryViewModel);

    ObservedObject.init(wrappedValue:)();
    lazy protocol witness table accessor for type ReactionHistoryView and conformance ReactionHistoryView();
    v30 = AnyView.init<A>(_:)();
    (*((*v21 & *v10) + class metadata base offset for ReactionPickerOverlayViewController + 88))(v30);
  }

  v31 = v10;
  v32 = [v23 traitCollection];
  v33 = [v32 userInterfaceStyle];

  [v31 setOverrideUserInterfaceStyle_];
  (*((*v26 & *v31) + class metadata base offset for ReactionPickerOverlayViewController + 216))(from, v24, animated, 0, 0);
  swift_unknownObjectWeakAssign();
}

void closure #2 in ReactionPickerView.present(from:in:animated:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = *((*MEMORY[0x277D85000] & *a3) + 0xB0);

  v12(a1, a2);
  if (a2)
  {
    v13 = [a4 windowScene];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    type metadata accessor for MainActor();

    v15 = v13;
    v16 = a3;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v13;
    v18[5] = v16;
    v18[6] = a1;
    v18[7] = a2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:), v18);
  }
}

Swift::Void __swiftcall ReactionPickerView.dismiss()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + class metadata base offset for ReactionPickerOverlayViewController + 224))();
  }
}

uint64_t closure #1 in ReactionPickerView.sendReaction(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[16] = type metadata accessor for Reaction(0);
  v7[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[19] = v9;
  v7[20] = v8;

  return MEMORY[0x2822009F8](closure #1 in ReactionPickerView.sendReaction(_:to:), v9, v8);
}

uint64_t closure #1 in ReactionPickerView.sendReaction(_:to:)()
{
  v61 = v0;
  receiver = v0[6].receiver;
  if (receiver)
  {
    v2 = v0[6].receiver;
  }

  else
  {
    v3 = [(objc_class *)v0[6].super_class window];
    v2 = [v3 windowScene];

    if (!v2)
    {

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      super_class = v0[6].super_class;
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.default);

      v30 = super_class;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v34 = v0[7].receiver;
        v33 = v0[7].super_class;
        v35 = v0[6].super_class;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v60 = v37;
        *v36 = 136315650;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v60);
        *(v36 + 12) = 2080;
        v38 = [(objc_class *)v35 window];
        if (v38)
        {
          v0[5].super_class = v38;
          type metadata accessor for UIView(0, &lazy cache variable for type metadata for UIWindow);
          v39 = String.init<A>(reflecting:)();
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v51 = v0[6].super_class;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v60);

        *(v36 + 14) = v52;
        *(v36 + 22) = 2080;
        v53 = [(objc_class *)v51 superview];
        if (v53)
        {
          v0[5].receiver = v53;
          type metadata accessor for UIView(0, &lazy cache variable for type metadata for UIView);
          v54 = String.init<A>(reflecting:)();
          v56 = v55;
        }

        else
        {
          v56 = 0xE300000000000000;
          v54 = 7104878;
        }

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v60);

        *(v36 + 24) = v57;
        _os_log_impl(&dword_23B6FA000, v31, v32, "Could not find a window scene to render this reaction: %s window: %s superview: %s", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EEA7200](v37, -1, -1);
        MEMORY[0x23EEA7200](v36, -1, -1);
      }

      goto LABEL_44;
    }

    receiver = v0[6].receiver;
  }

  v0[10].super_class = v2;
  v4 = one-time initialization token for sceneComponentKey;
  v5 = v2;
  v6 = receiver;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = static ReactionEffectSceneComponent.sceneComponentKey;
  if ([(objc_class *)v5 _sceneComponentForKey:static ReactionEffectSceneComponent.sceneComponentKey])
  {
    type metadata accessor for ReactionEffectSceneComponent();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v9 = type metadata accessor for ReactionEffectSceneComponent();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v0[4].receiver = v10;
  v0[4].super_class = v9;
  v8 = objc_msgSendSuper2(v0 + 4, sel_init);
  [(objc_class *)v5 _registerSceneComponent:v8 forKey:v7];
LABEL_11:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

LABEL_13:
    v0[11].receiver = v12;
    v14 = v0[8].receiver;
    v13 = v0[8].super_class;
    v16 = v0[7].receiver;
    v15 = v0[7].super_class;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B757EF0;
    *(inited + 32) = v16;
    *(inited + 40) = v15;

    v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    UUID.init()();
    *(v13 + v14[5]) = v18;
    v19 = *((*MEMORY[0x277D85000] & *v12) + 0x130);
    v59 = (v19 + *v19);
    v20 = swift_task_alloc();
    v0[11].super_class = v20;
    *v20 = v0;
    *(v20 + 1) = closure #1 in ReactionPickerView.sendReaction(_:to:);
    v21 = v0[8].super_class;

    return v59(v21);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = [v25 keyWindow];
      if (v26)
      {
        v27 = v26;
        v12 = UIView.firstReactionEffectInteraction.getter();
      }

      else
      {
        v12 = 0;
      }

      swift_unknownObjectWeakAssign();
      if (v12)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

LABEL_27:

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Log.default);
  v43 = v5;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&dword_23B6FA000, v44, v45, "Dropping rendering of interaction as we didn't find a reaction effect interaction on the given scene: %@", v46, 0xCu);
    outlined destroy of NSObject?(v47);
    MEMORY[0x23EEA7200](v47, -1, -1);
    MEMORY[0x23EEA7200](v46, -1, -1);
  }

  if (one-time initialization token for runtimeIssues != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v42, static Log.runtimeIssues);
  v31 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v31, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_23B6FA000, v31, v49, "Reaction effect was not rendered, ensure that you add a ReactionEffectInteraction to a view contained within the same window scene as your reaction picker.", v50, 2u);
    MEMORY[0x23EEA7200](v50, -1, -1);
  }

LABEL_44:

  v58 = v0->super_class;

  return v58();
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);

  outlined destroy of Reaction(v2);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](closure #1 in ReactionPickerView.sendReaction(_:to:), v4, v3);
}

{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

id ReactionPickerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ReactionPickerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReactionPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ReactionPickerView()
{
  result = type metadata singleton initialization cache for ReactionPickerView;
  if (!type metadata singleton initialization cache for ReactionPickerView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EEA6320](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x23EEA63B0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EEA6320](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ReactionHistoryView and conformance ReactionHistoryView()
{
  result = lazy protocol witness table cache variable for type ReactionHistoryView and conformance ReactionHistoryView;
  if (!lazy protocol witness table cache variable for type ReactionHistoryView and conformance ReactionHistoryView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionHistoryView and conformance ReactionHistoryView);
  }

  return result;
}

void type metadata completion function for ReactionPickerView()
{
  type metadata accessor for Published<String?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<String?>()
{
  if (!lazy cache variable for type metadata for Published<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<String?>);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22_GroupActivities_UIKit20ReactionHistoryEntryVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #1 in ReactionPickerView.sendReaction(_:to:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for UIView(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Reaction(uint64_t a1)
{
  v2 = type metadata accessor for Reaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CGImageRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC22_GroupActivities_UIKit0E21ActivitySharingResultO_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

Swift::Int GroupActivitySharingResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivitySharingResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivitySharingResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  return Hasher._finalize()();
}

void *key path getter for GroupActivitySharingController.resultValue : GroupActivitySharingController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for GroupActivitySharingController.resultValue : GroupActivitySharingController(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x80))(&v4);
}

uint64_t GroupActivitySharingController.resultValue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t GroupActivitySharingController.resultValue.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*GroupActivitySharingController.resultValue.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ReactionPickerView.selectedReaction.modify;
}

uint64_t key path setter for GroupActivitySharingController.$resultValue : GroupActivitySharingController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy22_GroupActivities_UIKit0D21ActivitySharingResultOSg_GMd);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x98))(v7);
}

uint64_t GroupActivitySharingController.$resultValue.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupActivitySharingController.$resultValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy22_GroupActivities_UIKit0D21ActivitySharingResultOSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*GroupActivitySharingController.$resultValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy22_GroupActivities_UIKit0D21ActivitySharingResultOSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController__resultValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ReactionPickerView.$selectedReaction.modify;
}

uint64_t GroupActivitySharingController.resultHandlers.getter()
{
  return GroupActivitySharingController.resultHandlers.getter();
}

{
  swift_beginAccess();
}

uint64_t GroupActivitySharingController.resultHandlers.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t (*GroupActivitySharingController.shareSheetSessionID.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller);
  a1[2] = v3;
  *a1 = (*((*MEMORY[0x277D85000] & *v3) + 0xD0))();
  a1[1] = v4;
  return GroupActivitySharingController.shareSheetSessionID.modify;
}

uint64_t GroupActivitySharingController.shareSheetSessionID.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & *a1[2]) + 0xD8);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v4(v3, v2);
}

uint64_t (*GroupActivitySharingController.startStagedActivity.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller);
  *a1 = v2;
  *(a1 + 8) = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))() & 1;
  return GroupActivitySharingController.startStagedActivity.modify;
}

uint64_t GroupActivitySharingController.result.getter(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](GroupActivitySharingController.result.getter, v4, v3);
}

uint64_t GroupActivitySharingController.result.getter()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[7];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v8 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC22_GroupActivities_UIKit0E21ActivitySharingResultO_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.result.getter, v6);
  v0[13] = v8;
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0xD0);

  v10 = v9(v0 + 2);
  specialized Set._Variant.insert(_:)(&v14, v8);

  v10(v0 + 2, 0);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = GroupActivitySharingController.result.getter;
  v12 = v0[6];

  return MEMORY[0x282200460](v12, v8, &type metadata for GroupActivitySharingResult);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](GroupActivitySharingController.result.getter, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in GroupActivitySharingController.result.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.result.getter, v6, v5);
}

uint64_t closure #1 in GroupActivitySharingController.result.getter()
{
  v1 = v0[3];
  v2 = static MainActor.shared.getter();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in GroupActivitySharingController.result.getter;
  v5 = v0[2];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v5, v2, v6, 0x746C75736572, 0xE600000000000000, partial apply for closure #1 in closure #1 in GroupActivitySharingController.result.getter, v3, &type metadata for GroupActivitySharingResult);
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.result.getter, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.result.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return closure #1 in GroupActivitySharingController.result.getter(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in GroupActivitySharingController.result.getter(uint64_t a1, void *a2)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy22_GroupActivities_UIKit0A21ActivitySharingResultOs5NeverOGMd);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy22_GroupActivities_UIKit0D21ActivitySharingResultOSg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy22_GroupActivities_UIKit0F21ActivitySharingResultOSg_GGMd);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v22 - v16;
  (*((*MEMORY[0x277D85000] & *a2) + 0x90))(v15);
  lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy22_GroupActivities_UIKit0D21ActivitySharingResultOSg_GMd);
  Publisher.filter(_:)();
  (*(v8 + 8))(v11, v7);
  v18 = v22;
  (*(v3 + 16))(v6, v23, v22);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v6, v18);
  lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Filter<Published<GroupActivitySharingResult?>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy22_GroupActivities_UIKit0F21ActivitySharingResultOSg_GGMd);
  Publisher<>.sinkOnce(_:)();

  return (*(v13 + 8))(v17, v12);
}

_BYTE *closure #2 in closure #1 in closure #1 in GroupActivitySharingController.result.getter(_BYTE *result)
{
  if (*result == 2)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy22_GroupActivities_UIKit0A21ActivitySharingResultOs5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

char *GroupActivitySharingController.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized GroupActivitySharingController.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v8;
}

char *GroupActivitySharingController.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized GroupActivitySharingController.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t closure #1 in GroupActivitySharingController.init<A>(_:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = closure #1 in GroupActivitySharingController.init<A>(_:);

  return MEMORY[0x28211FB68](v2, v2);
}

{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = closure #1 in GroupActivitySharingController.init<A>(_:);
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = closure #1 in GroupActivitySharingController.init<A>(_:);
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t closure #1 in GroupActivitySharingController.init<A>(_:)()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22TUConversationActivityC_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd);
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
      v23[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of NSObject?(v23[0], &_sScPSgMd);

      return v21;
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

  outlined destroy of NSObject?(a3, &_sScPSgMd);
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd);
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

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd);

      return v21;
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

  outlined destroy of NSObject?(a3, &_sScPSgMd);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

char *GroupActivitySharingController.init<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller;
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for PeoplePickerController()) init];
  v20 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController__resultValue;
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit0A21ActivitySharingResultOSgMd);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v5[v20], v18, v14);
  *&v5[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_resultHandlers] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_observationTasks] = MEMORY[0x277D84FA0];
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a1;
  v23[7] = a2;
  *&v5[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_activity] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22TUConversationActivityC_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.init<A>(preparationHandler:), v23);
  v25 = type metadata accessor for GroupActivitySharingController();
  v33.receiver = v5;
  v33.super_class = v25;
  v26 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  v27 = *&v26[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller];
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x188);
  v29 = v26;
  v30 = v27;
  v28(v26, &protocol witness table for GroupActivitySharingController);

  return v29;
}

uint64_t closure #1 in GroupActivitySharingController.init<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = *(a6 - 8);
  v9 = swift_task_alloc();
  v7[6] = v9;
  v10 = type metadata accessor for AnyGroupActivity();
  v7[7] = v10;
  v7[8] = *(v10 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[12] = v11;
  *v11 = v7;
  v11[1] = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);

  return v13(v9);
}

uint64_t closure #1 in GroupActivitySharingController.init<A>(preparationHandler:)()
{
  v2 = *v1;
  v2[13] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;
  if (v0)
  {
    v5 = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);
  }

  else
  {
    v5 = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  GroupActivity.eraseToAnyGroupActivity()();
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);

    return MEMORY[0x28211FB68](v7, v7);
  }
}

{
  v1 = v0[18];
  v2 = v0[2];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in GroupActivitySharingController.init<A>(preparationHandler:)(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = v4[14];
    v9 = v4[15];
    v10 = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);
  }

  else
  {
    v4[18] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = v4[14];
    v9 = v4[15];
    v10 = closure #1 in GroupActivitySharingController.init<A>(preparationHandler:);
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

char *GroupActivitySharingController.init(itemProvider:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - v11;
  v13 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller;
  *&v2[v13] = [objc_allocWithZone(type metadata accessor for PeoplePickerController()) init];
  v14 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController__resultValue;
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit0A21ActivitySharingResultOSgMd);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v14], v12, v8);
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_resultHandlers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_observationTasks] = MEMORY[0x277D84FA0];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = a1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_activity] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22TUConversationActivityC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.init(itemProvider:), v18);
  v20 = type metadata accessor for GroupActivitySharingController();
  v28.receiver = v2;
  v28.super_class = v20;
  v21 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  v22 = *&v21[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller];
  v23 = *((*MEMORY[0x277D85000] & *v22) + 0x188);
  v24 = v21;
  v25 = v22;
  v23(v21, &protocol witness table for GroupActivitySharingController);

  return v24;
}

uint64_t closure #1 in GroupActivitySharingController.init(itemProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.init(itemProvider:), 0, 0);
}

uint64_t closure #1 in GroupActivitySharingController.init(itemProvider:)()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
  *v3 = v0;
  v3[1] = closure #1 in GroupActivitySharingController.init(itemProvider:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023B75BF00, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v4);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupActivitySharingController.init(itemProvider:);
  }

  else
  {

    v2 = closure #1 in GroupActivitySharingController.init(itemProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 80) = *(v0 + 16);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.init(itemProvider:), v2, v1);
}

{
  v1 = v0[10];
  v2 = v0[3];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.init(itemProvider:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id GroupActivitySharingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GroupActivitySharingController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller;
  *&v2[v13] = [objc_allocWithZone(type metadata accessor for PeoplePickerController()) init];
  v14 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController__resultValue;
  v24 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit0A21ActivitySharingResultOSgMd);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v14], v12, v8);
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_resultHandlers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_observationTasks] = MEMORY[0x277D84FA0];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_activity] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22TUConversationActivityC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.init(coder:), v17);
  v19 = type metadata accessor for GroupActivitySharingController();
  v23.receiver = v2;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_initWithCoder_, a1);

  if (v20)
  {
  }

  return v20;
}

uint64_t closure #1 in GroupActivitySharingController.init(coder:)()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.init(coder:), v2, v1);
}

{

  lazy protocol witness table accessor for type Errno and conformance Errno();
  swift_allocError();
  *v1 = 78;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall GroupActivitySharingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v42 = 2;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(&v42);
  v5 = GroupActivitySharingController._isPossibleToDirectlyCreateActivity.getter();
  v6 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v8 = *((*v4 & *v6) + 0x168);
    v9 = v2;
    v8(partial apply for closure #1 in GroupActivitySharingController.viewWillAppear(_:), v7);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B6FA000, v11, v12, "Successfully able to bypass viewController", v13, 2u);
      MEMORY[0x23EEA7200](v13, -1, -1);
    }

    v14 = type metadata accessor for GroupActivitySharingController();
    v39.receiver = v9;
    v15 = &v39;
    goto LABEL_19;
  }

  v16 = (*((*v4 & *v6) + 0x150))();
  if (!v16)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.default);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23B6FA000, v36, v37, "Failed to fetch extensionViewController", v38, 2u);
      MEMORY[0x23EEA7200](v38, -1, -1);
    }

    v42 = 1;
    GroupActivitySharingController.dismissViewController(result:)(&v42);
    v14 = type metadata accessor for GroupActivitySharingController();
    v41 = v2;
    v15 = &v41;
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v2 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame_];
  v30 = [v17 view];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  [v30 setAutoresizingMask_];

  v32 = [v2 view];
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = [v17 view];

  if (v34)
  {
    [v33 addSubview_];

    v14 = type metadata accessor for GroupActivitySharingController();
    v40 = v2;
    v15 = &v40;
LABEL_19:
    v15->super_class = v14;
    [(objc_super *)v15 viewWillAppear:a1];
    return;
  }

LABEL_24:
  __break(1u);
}

void closure #1 in GroupActivitySharingController.viewWillAppear(_:)(char a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Created activity status: %{BOOL}d", v5, 8u);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  v6 = (a1 & 1) == 0;
  GroupActivitySharingController.dismissViewController(result:)(&v6);
}

Swift::Void __swiftcall GroupActivitySharingController.dismissViewController(result:)(_GroupActivities_UIKit::GroupActivitySharingResult result)
{
  v2 = result;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26[-v5];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  v14 = v1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_23B6FA000, v15, v16, "ViewController %@ told to dismiss", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd);
    MEMORY[0x23EEA7200](v18, -1, -1);
    MEMORY[0x23EEA7200](v17, -1, -1);
  }

  type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v20)
  {
    v28 = v12;
    (*((*MEMORY[0x277D85000] & *v14) + 0x80))(&v28);
    v27 = v12;
    GroupActivitySharingController.sendResultToInternalSubscribers(_:)(&v27);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    type metadata accessor for MainActor();
    v22 = v14;
    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.dismissViewController(result:), v24);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall GroupActivitySharingController.viewDidLoad()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & **&v0[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller]) + 0x150))();
  if (v3)
  {
    v4 = v3;
    [v0 addChildViewController_];
    [v4 didMoveToParentViewController_];
    v5 = [objc_allocWithZone(type metadata accessor for GroupActivityPlaceholderSharingController()) init];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *((*v2 & *v5) + 0x68);

    v7(partial apply for closure #1 in GroupActivitySharingController.viewDidLoad(), v6);

    [v4 setPlaceholderViewController_];

    v8 = type metadata accessor for GroupActivitySharingController();
    v17.receiver = v1;
    v9 = &v17;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_23B6FA000, v12, v13, "Failed to build remote hostViewController for %@", v14, 0xCu);
      outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd);
      MEMORY[0x23EEA7200](v15, -1, -1);
      MEMORY[0x23EEA7200](v14, -1, -1);
    }

    v19 = 1;
    GroupActivitySharingController.dismissViewController(result:)(&v19);
    v8 = type metadata accessor for GroupActivitySharingController();
    v18 = v11;
    v9 = &v18;
  }

  v9->super_class = v8;
  [(objc_super *)v9 viewDidLoad];
}

void closure #1 in GroupActivitySharingController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = 1;
    GroupActivitySharingController.dismissViewController(result:)(&v2);
  }
}

uint64_t GroupActivitySharingController._isPossibleToDirectlyCreateActivity.getter()
{
  (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xA0))();
  v1 = ConversationManager.activeConversation.getter();

  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B6FA000, v8, v9, "No active conversation. Returning 'false' to 'isPossibleToDirectlyCreateActivity'", v10, 2u);
      MEMORY[0x23EEA7200](v10, -1, -1);
    }

    return 0;
  }

  if ((Conversation.isEligibleForGroupSessions.getter() & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B6FA000, v12, v13, "The active conversation is ineligible for group sessions. Returning 'false' to 'isPossibleToDirectlyCreateActivity'", v14, 2u);
      MEMORY[0x23EEA7200](v14, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B6FA000, v3, v4, "There is an active conversation that is eligible for group sessions. Returning 'true' to 'isPossibleToDirectlyCreateActivity'", v5, 2u);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  return 1;
}

uint64_t GroupActivitySharingController.sendResultToInternalSubscribers(_:)(char *a1)
{
  v2 = *a1;
  v26 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
  v3 = *(v26 + 16);
  if (v3)
  {
    v25 = v2;
    v4 = v2 ^ 1;
    v5 = 32;
    v24 = v4;
    do
    {
      v6 = swift_allocObject();
      v7 = *(v26 + v5);
      *(v6 + 16) = v7;
      v8 = one-time initialization token for default;
      v27 = v7;
      swift_retain_n();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.default);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = v11;
      if (os_log_type_enabled(v10, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315394;
        v15 = swift_allocObject();
        *(v15 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
        *(v15 + 24) = v6;
        v28[0] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        v28[1] = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbScMYccMd);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

        *(v13 + 4) = v18;
        *(v13 + 12) = 2080;
        LOBYTE(v28[0]) = v25;
        v19 = String.init<A>(reflecting:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_23B6FA000, v10, v12, "Responding to resultHandler %s for result: %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEA7200](v14, -1, -1);
        v22 = v13;
        v4 = v24;
        MEMORY[0x23EEA7200](v22, -1, -1);
      }

      LOBYTE(v28[0]) = v4;
      v27(v28);

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

id GroupActivitySharingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x23EEA6320]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GroupActivitySharingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupActivitySharingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in GroupActivitySharingController.dismissViewController(result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.dismissViewController(result:), v6, v5);
}

uint64_t closure #1 in GroupActivitySharingController.dismissViewController(result:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xC0))();
  *(v0 + 48) = v1;
  v2 = *(v1 + 32);
  *(v0 + 89) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  if (v5)
  {
    v6 = 0;
LABEL_8:
    *(v0 + 56) = v5;
    *(v0 + 64) = v6;
    v9 = *(*(v1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 72) = v9;

    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = closure #1 in GroupActivitySharingController.dismissViewController(result:);

    return MEMORY[0x282200460](v0 + 88, v9, &type metadata for GroupActivitySharingResult);
  }

  else
  {
    v7 = 0;
    v8 = ((63 - v4) >> 6) - 1;
    while (v8 != v7)
    {
      v6 = v7 + 1;
      v5 = *(v1 + 8 * v7++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 16);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&dword_23B6FA000, v14, v15, "Self dismissing %@ after waiting for listeners to dismiss", v17, 0xCu);
      outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd);
      MEMORY[0x23EEA7200](v18, -1, -1);
      MEMORY[0x23EEA7200](v17, -1, -1);
    }

    v20 = *(v0 + 16);

    [v20 dismissViewControllerAnimated:1 completion:0];
    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in GroupActivitySharingController.dismissViewController(result:), v3, v2);
}

{

  v1 = *(v0 + 64);
  v2 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v2)
  {
    v3 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
    v5 = *(*(v3 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 72) = v5;

    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = closure #1 in GroupActivitySharingController.dismissViewController(result:);

    return MEMORY[0x282200460](v0 + 88, v5, &type metadata for GroupActivitySharingResult);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v3 = *(v0 + 48);
      if (v4 >= (((1 << *(v0 + 89)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    if (one-time initialization token for default == -1)
    {
      goto LABEL_11;
    }

LABEL_17:
    swift_once();
LABEL_11:
    v7 = *(v0 + 16);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 16);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&dword_23B6FA000, v10, v11, "Self dismissing %@ after waiting for listeners to dismiss", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd);
      MEMORY[0x23EEA7200](v14, -1, -1);
      MEMORY[0x23EEA7200](v13, -1, -1);
    }

    v16 = *(v0 + 16);

    [v16 dismissViewControllerAnimated:1 completion:0];
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t GroupActivitySharingController.registerResultHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v27[0] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
    v27[1] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B6FA000, v7, v8, "Received register with resultHandler %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);

  v17 = v16(v27);
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20, &_ss23_ContiguousArrayStorageCyySbScMYccGMd);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20, &_ss23_ContiguousArrayStorageCyySbScMYccGMd);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v24[5] = v15;
  return v17(v27, 0);
}

Swift::Void __swiftcall GroupActivitySharingController.directlyCreateActivity()()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Attempting to directly create the activity from the sharing controller", v5, 2u);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = *((*MEMORY[0x277D85000] & *v6) + 0x168);
  v1;
  v9 = v8(partial apply for closure #1 in GroupActivitySharingController.directlyCreateActivity(), v7);

  v10 = Logger.logObject.getter();
  if (v9)
  {
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B6FA000, v10, v11, "Successfully made direct activity creation request", v12, 2u);
      MEMORY[0x23EEA7200](v12, -1, -1);
    }

    v17 = 0;
    v13 = &v17;
  }

  else
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000023B75BD50, &v18);
      _os_log_impl(&dword_23B6FA000, v10, v14, "%s unexpectedly called when direct activity creation is not possible", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23EEA7200](v16, -1, -1);
      MEMORY[0x23EEA7200](v15, -1, -1);
    }

    v19 = 1;
    v13 = &v19;
  }

  GroupActivitySharingController.sendResultToInternalSubscribers(_:)(v13);
}

uint64_t closure #1 in GroupActivitySharingController.directlyCreateActivity()(char a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_23B6FA000, v5, v6, "Direct activity creation result: %{BOOL}d", v7, 8u);
    MEMORY[0x23EEA7200](v7, -1, -1);
  }

  v9 = (a1 & 1) == 0;
  return (*((*MEMORY[0x277D85000] & *a2) + 0x80))(&v9);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR22_GroupActivities_UIKit0D21ActivitySharingResultO_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR22_GroupActivities_UIKit0D21ActivitySharingResultO_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR22_GroupActivities_UIKit0D21ActivitySharingResultO_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
    swift_arrayInitWithCopy();
  }

  return v11;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = type metadata accessor for Reaction(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v24 = &v24 - v11;
  v25 = v2;
  v12 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v13 = *(a2 + *(v4 + 20));
  specialized Set.hash(into:)(v27, v13);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of Reaction(*(v12 + 48) + v18 * v16, v9);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*&v9[*(v4 + 20)], v13))
      {
        break;
      }

      outlined destroy of Reaction(v9);
      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined destroy of Reaction(v9);
    outlined destroy of Reaction(a2);
    outlined init with copy of Reaction(*(v12 + 48) + v18 * v16, v26);
    return 0;
  }

  else
  {
LABEL_7:
    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v24;
    outlined init with copy of Reaction(a2, v24);
    v27[0] = *v20;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v16, isUniquelyReferenced_nonNull_native);
    v23 = v26;
    *v20 = v27[0];
    outlined init with take of Reaction(a2, v23);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static Task.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v13;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v11, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v15;
    *a1 = a2;
    return 1;
  }
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = type metadata accessor for Reaction(0);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22_GroupActivities_UIKit8ReactionVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v23 = v0;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    for (i = result + 56; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = *(v25 + 72);
      outlined init with take of Reaction(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
      specialized Set.hash(into:)(v27, *&v5[*(v26 + 20)]);
      Hasher._finalize()();
      v19 = i;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = outlined init with take of Reaction(v5, *(v8 + 48) + v20 * v18);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v6 + 32);
    if (v21 >= 64)
    {
      bzero((v6 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v21;
    }

    v1 = v23;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTy22_GroupActivities_UIKit0C21ActivitySharingResultOs5NeverOGGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Task.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Reaction(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v25 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v13 > v12)
      {
        v14 = v8;
        specialized _NativeSet.copy()();
        goto LABEL_15;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v15 = *v3;
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    v16 = *(a1 + *(v7 + 20));
    specialized Set.hash(into:)(v26, v16);
    v17 = Hasher._finalize()();
    v18 = -1 << *(v15 + 32);
    a2 = v17 & ~v18;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v14 = v8;
      v8 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of Reaction(*(v15 + 48) + v8 * a2, v11);
        if (static UUID.== infix(_:_:)() & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*&v11[*(v7 + 20)], v16))
        {
          break;
        }

        outlined destroy of Reaction(v11);
        a2 = (a2 + 1) & v19;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      outlined destroy of Reaction(v11);
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  v14 = v8;
LABEL_15:
  v20 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of Reaction(a1, *(v20 + 48) + *(v14 + 72) * a2);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy22_GroupActivities_UIKit0A21ActivitySharingResultOs5NeverOGMd);

      v11 = static Task.== infix(_:_:)();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v16;
  *(*v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for Reaction(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22_GroupActivities_UIKit8ReactionVGMd);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of Reaction(*(v7 + 48) + v22, v6);
        result = outlined init with take of Reaction(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTy22_GroupActivities_UIKit0C21ActivitySharingResultOs5NeverOGGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = type metadata accessor for Reaction(0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22_GroupActivities_UIKit8ReactionVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v0;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = *(v23 + 72);
      outlined init with copy of Reaction(*(v6 + 48) + v17 * (v14 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
      specialized Set.hash(into:)(v25, *&v5[*(v24 + 20)]);
      Hasher._finalize()();
      v18 = i;
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of Reaction(v5, *(v8 + 48) + v19 * v17);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v21;
        goto LABEL_16;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTy22_GroupActivities_UIKit0C21ActivitySharingResultOs5NeverOGGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();

      Task.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *specialized GroupActivitySharingController.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v4 = v3;
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v40 = &v38 - v7;
  v8 = type metadata accessor for AnyGroupActivity();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy22_GroupActivities_UIKit0C21ActivitySharingResultOSgGMd);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller;
  *&v4[v20] = [objc_allocWithZone(type metadata accessor for PeoplePickerController()) init];
  v21 = OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController__resultValue;
  v49 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit0A21ActivitySharingResultOSgMd);
  Published.init(initialValue:)();
  (*(v16 + 32))(&v4[v21], v19, v15);
  *&v4[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_resultHandlers] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_observationTasks] = MEMORY[0x277D84FA0];
  v43 = v14;
  v22 = v47;
  GroupActivity.eraseToAnyGroupActivity()();
  if (v22)
  {

    (*(v16 + 8))(&v4[v21], v15);

    type metadata accessor for GroupActivitySharingController();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = type metadata accessor for TaskPriority();
    v24 = v40;
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    v26 = v41;
    v25 = v42;
    v27 = v39;
    (*(v41 + 16))(v39, v43, v42);
    type metadata accessor for MainActor();
    v47 = 0;
    v28 = static MainActor.shared.getter();
    v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v28;
    *(v30 + 24) = v31;
    (*(v26 + 32))(v30 + v29, v27, v25);
    *&v4[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_activity] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22TUConversationActivityC_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #1 in GroupActivitySharingController.init<A>(_:), v30);
    v32 = type metadata accessor for GroupActivitySharingController();
    v48.receiver = v4;
    v48.super_class = v32;
    v33 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
    v34 = *&v33[OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller];
    v35 = *((*MEMORY[0x277D85000] & *v34) + 0x188);
    v4 = v33;
    v36 = v34;
    v35(v33, &protocol witness table for GroupActivitySharingController);

    (*(v26 + 8))(v43, v25);
  }

  return v4;
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.init<A>(preparationHandler:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return closure #1 in GroupActivitySharingController.init<A>(preparationHandler:)(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t type metadata accessor for GroupActivitySharingController()
{
  result = type metadata singleton initialization cache for GroupActivitySharingController;
  if (!type metadata singleton initialization cache for GroupActivitySharingController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.init(itemProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #1 in GroupActivitySharingController.init(itemProvider:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.init(coder:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return closure #1 in GroupActivitySharingController.init(coder:)();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.dismissViewController(result:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #1 in GroupActivitySharingController.dismissViewController(result:)(a1, v4, v5, v6);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type GroupActivitySharingResult and conformance GroupActivitySharingResult()
{
  result = lazy protocol witness table cache variable for type GroupActivitySharingResult and conformance GroupActivitySharingResult;
  if (!lazy protocol witness table cache variable for type GroupActivitySharingResult and conformance GroupActivitySharingResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitySharingResult and conformance GroupActivitySharingResult);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupActivitySharingResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupActivitySharingResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for GroupActivitySharingController()
{
  type metadata accessor for Published<GroupActivitySharingResult?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of GroupActivitySharingController.result.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return v7(a1);
}

void type metadata accessor for Published<GroupActivitySharingResult?>()
{
  if (!lazy cache variable for type metadata for Published<GroupActivitySharingResult?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s22_GroupActivities_UIKit0A21ActivitySharingResultOSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<GroupActivitySharingResult?>);
    }
  }
}

uint64_t outlined init with copy of Reaction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Reaction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t partial apply for closure #1 in GroupActivitySharingController.init<A>(_:)(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return closure #1 in GroupActivitySharingController.init<A>(_:)(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR22_GroupActivities_UIKit0D21ActivitySharingResultO_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR22_GroupActivities_UIKit0D21ActivitySharingResultO_Tg5(a1, v4);
}

_BYTE *partial apply for closure #2 in closure #1 in closure #1 in GroupActivitySharingController.result.getter(_BYTE *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy22_GroupActivities_UIKit0A21ActivitySharingResultOs5NeverOGMd);

  return closure #2 in closure #1 in closure #1 in GroupActivitySharingController.result.getter(a1);
}

uint64_t lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PeoplePickerController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PeoplePickerController.conversationManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_conversationManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PeoplePickerController.conversationManagerClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_conversationManagerClient;
  swift_beginAccess();
  return outlined init with copy of ConversationManagerClientProtocol(v1 + v3, a1);
}

uint64_t outlined init with copy of ConversationManagerClientProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PeoplePickerController.conversationManagerClient.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_conversationManagerClient;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  outlined init with take of ConversationManagerClientProtocol(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined init with take of ConversationManagerClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PeoplePickerController.shareSheetSessionID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shareSheetSessionID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PeoplePickerController.shareSheetSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shareSheetSessionID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PeoplePickerController.startStagedActivity.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_startStagedActivity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PeoplePickerController.startStagedActivity.setter(char a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_startStagedActivity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PeoplePickerController.shouldDismissRemoteViewControllerIfNoRecipients.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shouldDismissRemoteViewControllerIfNoRecipients;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PeoplePickerController.shouldDismissRemoteViewControllerIfNoRecipients.setter(char a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shouldDismissRemoteViewControllerIfNoRecipients;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PeoplePickerController.configuration.getter()
{
  v1 = [objc_allocWithZone(type metadata accessor for PeoplePickerConfiguration()) init];
  (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  dispatch thunk of PeoplePickerConfiguration.shareSheetSessionID.setter();
  return v1;
}

id PeoplePickerController.connection.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection);
  }

  else
  {
    type metadata accessor for PeoplePickerClient();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v5 = XPCClient.__allocating_init(connection:)();
    lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type PeoplePickerController and conformance PeoplePickerController, v6, type metadata accessor for PeoplePickerController);
    swift_unknownObjectRetain();
    PeoplePickerClient.delegate.setter();
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t closure #1 in closure #1 in PeoplePickerController.connection.getter()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_6:
    __break(1u);
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x150))();
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v9[0] = 0;
  v4 = [v2 makeXPCConnectionWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];

    return v5;
  }

  else
  {
    v8 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*PeoplePickerController.connection.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PeoplePickerController.connection.getter();
  return PeoplePickerController.connection.modify;
}

void PeoplePickerController.connection.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection);
  *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection) = v2;
}

id closure #1 in PeoplePickerController.hostViewControllerConfig.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = MEMORY[0x23EEA6320](0xD000000000000019, 0x800000023B75C150);
  v4 = [v2 extensionPointIdentifierQuery_];

  v5 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v6 = [v2 executeQuery_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [objc_allocWithZone(MEMORY[0x277CC5E78]) init];
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.extensionController);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = v7 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_8;
  }

  v41 = v4;
  v42 = v8;
  v4 = v5;
  v5 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v44[0] = v8;
  *v5 = 136315138;
  v40 = a1;
  if (v12)
  {
    goto LABEL_24;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v45 = i;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v44);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_23B6FA000, v10, v11, "Found %s people picker extensions.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEA7200](v8, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);

    v5 = v4;
    v4 = v41;
    v8 = v42;
    a1 = v40;
LABEL_8:
    if (v12)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_17:

        v31 = v4;
        v32 = a1;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412546;
          *(v35 + 4) = v31;
          *(v35 + 12) = 2112;
          *(v35 + 14) = v32;
          *v36 = v31;
          v36[1] = v32;
          v37 = v31;
          v38 = v32;
          _os_log_impl(&dword_23B6FA000, v33, v34, "Failed to lookup mobile extension with query %@ on %@", v35, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
          swift_arrayDestroy();
          MEMORY[0x23EEA7200](v36, -1, -1);
          MEMORY[0x23EEA7200](v35, -1, -1);
        }

        else
        {
        }

        return 0;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v7 + 32);
      swift_unknownObjectRetain();
      goto LABEL_13;
    }

    __break(1u);
LABEL_24:
    ;
  }

  v17 = MEMORY[0x23EEA67C0](0, v7);
LABEL_13:

  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136315138;
    v22 = [v17 bundleIdentifier];
    v43 = v5;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v4;
    v25 = v8;
    v27 = v26;

    v44[0] = v23;
    v44[1] = v27;
    v8 = v25;
    v4 = v24;
    v28 = String.init<A>(reflecting:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v45);

    *(v20 + 4) = v30;
    v5 = v43;
    _os_log_impl(&dword_23B6FA000, v18, v19, "Proceed with mobile extension %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23EEA7200](v21, -1, -1);
    MEMORY[0x23EEA7200](v20, -1, -1);
  }

  [v8 setExtension_];
  swift_unknownObjectRelease();
  return v8;
}

void PeoplePickerController.hostViewControllerConfig.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___hostViewControllerConfig);
  *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___hostViewControllerConfig) = a1;
  _sSo34_EXHostViewControllerConfigurationCSgSgWOe_0(v2);
}

void (*PeoplePickerController.hostViewControllerConfig.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = PeoplePickerController.hostViewControllerConfig.getter();
  return PeoplePickerController.hostViewControllerConfig.modify;
}

void *PeoplePickerController.hostViewControllerConfig.getter(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id closure #1 in PeoplePickerController.extensionViewController.getter(void *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x138))();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CC5E70]) initWithConfiguration_];
    [v4 setDelegate_];
  }

  else
  {
    if (one-time initialization token for extensionController != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.extensionController);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      type metadata accessor for PeoplePickerController();
      v11 = v6;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_23B6FA000, v7, v8, "Failed to fetch config for hostViewController %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23EEA7200](v10, -1, -1);
      MEMORY[0x23EEA7200](v9, -1, -1);
    }

    return 0;
  }

  return v4;
}

void PeoplePickerController.extensionViewController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___extensionViewController);
  *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___extensionViewController) = a1;
  _sSo34_EXHostViewControllerConfigurationCSgSgWOe_0(v2);
}

void (*PeoplePickerController.extensionViewController.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = PeoplePickerController.extensionViewController.getter();
  return PeoplePickerController.extensionViewController.modify;
}

void PeoplePickerController.hostViewControllerConfig.modify(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v5 + *a3);
  *(v5 + *a3) = *a1;
  if (a2)
  {
    v8 = v4;
    a4(v6);
  }

  else
  {

    a4(v6);
  }
}

BOOL PeoplePickerController.createActivityIfPossible(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v25 - v8;
  (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v7);
  v10 = ConversationManager.activeConversation.getter();

  if (v10)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v2;

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = v10;
    v14[6] = a1;
    v14[7] = a2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PeoplePickerController.createActivityIfPossible(completion:), v14);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.default);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B6FA000, v17, v18, "Proceeding with bypassing viewController", v19, 2u);
      MEMORY[0x23EEA7200](v19, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23B6FA000, v21, v22, "Not creating activitySession directly because we don't have a valid conversation", v23, 2u);
      MEMORY[0x23EEA7200](v23, -1, -1);
    }
  }

  return v10 != 0;
}

uint64_t closure #1 in PeoplePickerController.createActivityIfPossible(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for UUID();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v9 = type metadata accessor for GroupActivityDescription();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[22] = v11;
  v7[23] = v10;

  return MEMORY[0x2822009F8](closure #1 in PeoplePickerController.createActivityIfPossible(completion:), v11, v10);
}

uint64_t closure #1 in PeoplePickerController.createActivityIfPossible(completion:)()
{
  v1 = v0[10];
  v2 = [objc_opt_self() placeholderActivity];
  v0[24] = v2;
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x180))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v0[25] = v6;
    swift_unknownObjectRelease();
    v7 = swift_task_alloc();
    v0[26] = v7;
    v8 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v0[27] = v9;
    *v7 = v0;
    v7[1] = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
    v10 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 7, v6, v8, v9, v10);
  }

  else
  {
    v0[29] = v2;
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    static GroupActivityDescription.generic.getter();
    v14 = GroupActivityDescription.tuActivityContext.getter();
    (*(v12 + 8))(v11, v13);
    v15 = [objc_allocWithZone(MEMORY[0x277D6EE78]) initWithContext:v14 linkMetadata:0 fallbackURL:0 invitationURL:0 supportsContinuationOnTV:0 title:0 subTitle:0 imageData:0];
    v0[30] = v15;

    v16 = [v2 metadata];
    if (!v16)
    {
      v16 = v15;
    }

    v40 = v16;
    v17 = [v2 applicationContext];
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v2 activityIdentifier];
    if (!v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = MEMORY[0x23EEA6320](v22);
    }

    v23 = v0[17];
    v24 = v0[15];
    v39 = v0[14];
    v25 = v0[10];
    v26 = [v2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = objc_allocWithZone(MEMORY[0x277D6EE70]);
    v28 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = UUID._bridgeToObjectiveC()().super.isa;
    v38 = [v27 initWithMetadata:v40 applicationContext:isa activityIdentifier:v21 uuid:v30];
    v0[31] = v38;

    outlined consume of Data._Representation(v28, v20);
    v31 = *(v24 + 8);
    v0[32] = v31;
    v0[33] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = v31(v23, v39);
    (*((*MEMORY[0x277D85000] & *v25) + 0xB8))(v32);
    v33 = v0[5];
    v34 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v33);
    dispatch thunk of Conversation.id.getter();
    v35 = swift_task_alloc();
    v0[34] = v35;
    *v35 = v0;
    v35[1] = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
    v36 = v0[16];

    return MEMORY[0x28214FCB8](v38, v36, v33, v34);
  }
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  }

  else
  {
    v5 = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[7];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v3;
    *v9 = v3;
    v10 = v3;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Received activity %@ from hostViewController", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x23EEA7200](v9, -1, -1);
    MEMORY[0x23EEA7200](v8, -1, -1);
  }

  v0[29] = v3;
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  static GroupActivityDescription.generic.getter();
  v14 = GroupActivityDescription.tuActivityContext.getter();
  (*(v12 + 8))(v11, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277D6EE78]) initWithContext:v14 linkMetadata:0 fallbackURL:0 invitationURL:0 supportsContinuationOnTV:0 title:0 subTitle:0 imageData:0];
  v0[30] = v15;

  v16 = [v3 metadata];
  if (!v16)
  {
    v16 = v15;
  }

  v40 = v16;
  v17 = [v3 applicationContext];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v3 activityIdentifier];
  if (!v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = MEMORY[0x23EEA6320](v22);
  }

  v23 = v0[17];
  v24 = v0[15];
  v39 = v0[14];
  v25 = v0[10];
  v26 = [v3 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = objc_allocWithZone(MEMORY[0x277D6EE70]);
  v28 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30 = UUID._bridgeToObjectiveC()().super.isa;
  v38 = [v27 initWithMetadata:v40 applicationContext:isa activityIdentifier:v21 uuid:v30];
  v0[31] = v38;

  outlined consume of Data._Representation(v28, v20);
  v31 = *(v24 + 8);
  v0[32] = v31;
  v0[33] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32 = v31(v23, v39);
  (*((*MEMORY[0x277D85000] & *v25) + 0xB8))(v32);
  v33 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v33);
  dispatch thunk of Conversation.id.getter();
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  v36 = v0[16];

  return MEMORY[0x28214FCB8](v38, v36, v33, v34);
}

{
  v1 = *(v0 + 288);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v1 == 1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    (*(v0 + 96))(1);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 248);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_23B6FA000, v8, v9, "Failed to create activitySession for request %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x23EEA7200](v12, -1, -1);
      MEMORY[0x23EEA7200](v11, -1, -1);
    }

    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    v14 = *(v0 + 96);

    v14(0);
  }

  v15 = *(v0 + 8);

  return v15();
}

{
  v20 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v0 + 64) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B6FA000, v7, v8, "Failed to create activity, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEA7200](v11, -1, -1);
    MEMORY[0x23EEA7200](v10, -1, -1);
  }

  v16 = *(v0 + 280);
  (*(v0 + 96))(0);

  v17 = *(v0 + 8);

  return v17();
}

{
  v46 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315138;
    v0[9] = v7;
    v10 = v7;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v45);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Failed to create activity, error: %s falling back to placeholderActivity", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA7200](v9, -1, -1);
    MEMORY[0x23EEA7200](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[24];
  v0[29] = v14;
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  static GroupActivityDescription.generic.getter();
  v18 = GroupActivityDescription.tuActivityContext.getter();
  (*(v16 + 8))(v15, v17);
  v19 = [objc_allocWithZone(MEMORY[0x277D6EE78]) initWithContext:v18 linkMetadata:0 fallbackURL:0 invitationURL:0 supportsContinuationOnTV:0 title:0 subTitle:0 imageData:0];
  v0[30] = v19;

  v20 = [v14 metadata];
  if (!v20)
  {
    v20 = v19;
  }

  v44 = v20;
  v21 = [v14 applicationContext];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [v14 activityIdentifier];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x23EEA6320](v26);
  }

  v27 = v0[17];
  v28 = v0[15];
  v43 = v0[14];
  v29 = v0[10];
  v30 = [v14 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = objc_allocWithZone(MEMORY[0x277D6EE70]);
  v32 = v22;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34 = UUID._bridgeToObjectiveC()().super.isa;
  v42 = [v31 initWithMetadata:v44 applicationContext:isa activityIdentifier:v25 uuid:v34];
  v0[31] = v42;

  outlined consume of Data._Representation(v32, v24);
  v35 = *(v28 + 8);
  v0[32] = v35;
  v0[33] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36 = v35(v27, v43);
  (*((*MEMORY[0x277D85000] & *v29) + 0xB8))(v36);
  v37 = v0[5];
  v38 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v37);
  dispatch thunk of Conversation.id.getter();
  v39 = swift_task_alloc();
  v0[34] = v39;
  *v39 = v0;
  v39[1] = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  v40 = v0[16];

  return MEMORY[0x28214FCB8](v42, v40, v37, v38);
}

uint64_t closure #1 in PeoplePickerController.createActivityIfPossible(completion:)(char a1)
{
  v4 = *v2;
  *(v4 + 280) = v1;

  v5 = *(v4 + 256);
  v6 = *(v4 + 128);
  v7 = *(v4 + 112);
  if (v1)
  {
    v5(v6, v7);
    v8 = *(v4 + 176);
    v9 = *(v4 + 184);
    v10 = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  }

  else
  {
    *(v4 + 288) = a1 & 1;
    v5(v6, v7);
    v8 = *(v4 + 176);
    v9 = *(v4 + 184);
    v10 = closure #1 in PeoplePickerController.createActivityIfPossible(completion:);
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t PeoplePickerController.establishConnectionWithExtensionViewController(onCompletion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v2[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState];
  os_unfair_lock_lock(v16);
  if ((v16[2]._os_unfair_lock_opaque & 0x100) != 0)
  {
    os_unfair_lock_unlock(v16);
    if (one-time initialization token for extensionController != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.extensionController);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B75BF30, aBlock);
      _os_log_impl(&dword_23B6FA000, v18, v19, "%s: Already established connection with view controller", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEA7200](v21, -1, -1);
      MEMORY[0x23EEA7200](v20, -1, -1);
    }

    return a1();
  }

  else
  {
    v39 = v12;
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    v24 = *&v16[4]._os_unfair_lock_opaque;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[4]._os_unfair_lock_opaque = v24;
    v40 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      *&v16[4]._os_unfair_lock_opaque = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
      *&v16[4]._os_unfair_lock_opaque = v24;
    }

    v24[2] = v27 + 1;
    v28 = &v24[2 * v27];
    v28[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v28[5] = v23;
    os_unfair_lock_unlock(v16);
    if (one-time initialization token for extensionController != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.extensionController);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B75BF30, aBlock);
      _os_log_impl(&dword_23B6FA000, v30, v31, "%s: Establishing connection with view controller", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23EEA7200](v33, -1, -1);
      MEMORY[0x23EEA7200](v32, -1, -1);
    }

    v34 = v39;
    type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v3;
    aBlock[4] = partial apply for closure #2 in PeoplePickerController.establishConnectionWithExtensionViewController(onCompletion:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor;
    v37 = _Block_copy(aBlock);
    v38 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEA6630](0, v15, v10, v37);
    _Block_release(v37);

    (*(v7 + 8))(v10, v6);
    return (*(v34 + 8))(v15, v40);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

uint64_t PeoplePickerController.isShareSheetSessionWithRecipients.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  if (!v4)
  {
    if (one-time initialization token for extensionController != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.extensionController);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000023B75BF70, aBlock);
    v22 = "%s: no share sheet session ID";
    goto LABEL_18;
  }

  v5 = v3;
  v6 = v4;
  v7 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState));
  os_unfair_lock_opaque_low = LOBYTE(v7[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v7);
  if (os_unfair_lock_opaque_low == 2)
  {
    os_unfair_lock_lock(v7);
    v9 = BYTE1(v7[2]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v7);
    if (v9 == 1)
    {
      v31 = 0;
      v10 = (*((*v2 & *v1) + 0x120))();
      v11 = XPCClient.queue.getter();

      v12 = swift_allocObject();
      v12[2] = v1;
      v12[3] = v5;
      v12[4] = v6;
      v12[5] = &v31;
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in PeoplePickerController.isShareSheetSessionWithRecipients.getter;
      *(v13 + 24) = v12;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_20;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      dispatch_sync(v11, v14);

      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        os_unfair_lock_lock(v7);
        LOBYTE(v7[2]._os_unfair_lock_opaque) = v31;
        os_unfair_lock_unlock(v7);
        LOBYTE(os_unfair_lock_opaque_low) = v31;

        return os_unfair_lock_opaque_low & 1;
      }

      __break(1u);
    }

    else
    {

      if (one-time initialization token for extensionController == -1)
      {
LABEL_16:
        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Log.extensionController);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v18, v19))
        {
LABEL_19:

          LOBYTE(os_unfair_lock_opaque_low) = 0;
          return os_unfair_lock_opaque_low & 1;
        }

        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000023B75BF70, aBlock);
        v22 = "%s: no connection to extension view controller";
LABEL_18:
        _os_log_impl(&dword_23B6FA000, v18, v19, v22, v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x23EEA7200](v21, -1, -1);
        MEMORY[0x23EEA7200](v20, -1, -1);
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_16;
  }

  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.extensionController);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000023B75BF70, aBlock);
    *(v26 + 12) = 1024;
    *(v26 + 14) = os_unfair_lock_opaque_low & 1;
    _os_log_impl(&dword_23B6FA000, v24, v25, "%s: cached result %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23EEA7200](v27, -1, -1);
    MEMORY[0x23EEA7200](v26, -1, -1);
  }

  return os_unfair_lock_opaque_low & 1;
}

void closure #1 in PeoplePickerController.isShareSheetSessionWithRecipients.getter(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t closure #1 in closure #1 in PeoplePickerController.isShareSheetSessionWithRecipients.getter(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = MEMORY[0x23EEA6320](a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in closure #1 in PeoplePickerController.isShareSheetSessionWithRecipients.getter;
  *(v8 + 24) = v7;
  v11[4] = partial apply for thunk for @callee_guaranteed (@unowned Bool) -> ();
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v11[3] = &block_descriptor_114;
  v9 = _Block_copy(v11);

  [v5 shareSheetSessionHasRecipientsWithSessionID:v6 reply:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in PeoplePickerController.isShareSheetSessionWithRecipients.getter(char a1, _BYTE *a2)
{
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.extensionController);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000023B75BF70, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_23B6FA000, v5, v6, "%s: received result %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEA7200](v8, -1, -1);
    MEMORY[0x23EEA7200](v7, -1, -1);
  }

  *a2 = a1 & 1;
}

uint64_t PeoplePickerController.hostViewController.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_hostViewController;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerController.hostViewController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_hostViewController;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PeoplePickerController.hostViewController.modify;
}

void PeoplePickerController.hostViewController.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id PeoplePickerController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_conversationManager;
  type metadata accessor for ConversationManager();
  *&v0[v2] = static ConversationManager.shared.getter();
  v3 = &v0[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_conversationManagerClient];
  v4 = type metadata accessor for ConversationManagerClient();
  v5 = static ConversationManagerClient.shared.getter();
  v6 = MEMORY[0x277CFD150];
  v3[3] = v4;
  v3[4] = v6;
  *v3 = v5;
  v7 = &v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shareSheetSessionID];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_startStagedActivity] = 0;
  v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_shouldDismissRemoteViewControllerIfNoRecipients] = 0;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___connection] = 0;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___hostViewControllerConfig] = 1;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController____lazy_storage___extensionViewController] = 1;
  v8 = &v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState];
  *v8 = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 1) = 0;
  *(v8 + 2) = v9;
  v8[8] = 2;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_hostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PeoplePickerController();
  return objc_msgSendSuper2(&v11, sel_init);
}

id PeoplePickerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PeoplePickerController.handleServerDisconnect()()
{
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.extensionController);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Controller %@ had extension's XPC disconnect", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x23EEA7200](v6, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  PeoplePickerController.dismissViewController(success:)(0);
}

Swift::Void __swiftcall PeoplePickerController.dismissViewController(success:)(Swift::Bool success)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = success;
  aBlock[4] = partial apply for closure #1 in PeoplePickerController.dismissViewController(success:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEA6630](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in PeoplePickerController.dismissViewController(success:)(void *a1, char a2)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x180))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (a2 & 1) == 0;
    (*(v5 + 16))(&v7, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerController.requestActivity()()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](PeoplePickerController.requestActivity(), v3, v2);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B6FA000, v2, v3, "Received request for activity", v4, 2u);
    MEMORY[0x23EEA7200](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = (*((*MEMORY[0x277D85000] & *v5) + 0x180))();
  v0[7] = v6;
  if (v6)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(ObjectType, v8);
    v0[8] = v10;
    v11 = swift_task_alloc();
    v0[9] = v11;
    v12 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    *v11 = v0;
    v11[1] = PeoplePickerController.requestActivity();
    v14 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v10, v12, v13, v14);
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B6FA000, v15, v16, "Failed to get hostViewController during activity fetch", v17, 2u);
      MEMORY[0x23EEA7200](v17, -1, -1);
    }

    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v18 = 96;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = PeoplePickerController.requestActivity();
  }

  else
  {
    v5 = PeoplePickerController.requestActivity();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[3];

  v3 = v0[2];
  [v3 setStartWhenStaged_];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v3);
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for PeoplePickerClientDelegate.requestActivity() in conformance PeoplePickerController()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PeoplePickerClientDelegate.requestActivity() in conformance PeoplePickerController;

  return PeoplePickerController.requestActivity()();
}

uint64_t protocol witness for PeoplePickerClientDelegate.requestActivity() in conformance PeoplePickerController(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v53 = &v53 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.extensionController);
  v18 = a1;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    *v23 = v18;
    v23[1] = v19;
    v24 = v18;
    v25 = v19;
    _os_log_impl(&dword_23B6FA000, v20, v21, "Received signal that viewController %@ is prepared to host view %@", v22, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v23, -1, -1);
    MEMORY[0x23EEA7200](v22, -1, -1);
  }

  v26 = v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit22PeoplePickerController_connectionCompletionHandlingState));
  v26[9] = 1;
  v27 = *(v26 + 2);
  v28 = MEMORY[0x277D84F90];
  *(v26 + 2) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock(v26);
  if (*(v27 + 16))
  {
    type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v61 = partial apply for closure #2 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
    v62 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = thunk for @escaping @callee_guaranteed () -> ();
    v60 = &block_descriptor_34;
    v31 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = v28;
    lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEA6630](0, v16, v12, v31);
    _Block_release(v31);

    (*(v56 + 8))(v12, v9);
    v32 = (*(v54 + 8))(v16, v55);
  }

  else
  {
  }

  v33 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x100))(v32) & 1) != 0 && ((*((*v33 & *v3) + 0x178))() & 1) == 0)
  {
    v47 = (*((*v33 & *v3) + 0x120))();
    v48 = XPCClient.queue.getter();

    v49 = swift_allocObject();
    *(v49 + 16) = v3;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #3 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
    *(v50 + 24) = v49;
    v61 = thunk for @callee_guaranteed () -> ()partial apply;
    v62 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = thunk for @escaping @callee_guaranteed () -> ();
    v60 = &block_descriptor_54;
    v51 = _Block_copy(&aBlock);
    v52 = v3;

    dispatch_sync(v48, v51);

    _Block_release(v51);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      __break(1u);
    }
  }

  else
  {
    v34 = v28;
    result = (*((*v33 & *v3) + 0x180))();
    if (result)
    {
      v37 = result;
      v38 = v36;
      type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v39 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v3;
      v61 = partial apply for closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
      v62 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = thunk for @escaping @callee_guaranteed () -> ();
      v60 = &block_descriptor_40;
      v41 = _Block_copy(&aBlock);
      v42 = v3;

      static DispatchQoS.unspecified.getter();
      aBlock = v34;
      lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x23EEA6630](0, v16, v12, v41);
      _Block_release(v41);

      (*(v56 + 8))(v12, v9);
      (*(v54 + 8))(v16, v55);
      v43 = type metadata accessor for TaskPriority();
      v44 = v53;
      (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v37;
      v45[5] = v38;
      v45[6] = v42;
      v46 = v42;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v44, &async function pointer to partial apply for closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:), v45);
    }
  }

  return result;
}

uint64_t closure #2 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

void closure #3 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  v3 = XPCClient.queue.getter();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  *(v5 + 24) = v4;
  v9[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_102;
  v6 = _Block_copy(v9);
  v7 = a1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t closure #1 in closure #1 in closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x118))();
  v6[4] = specialized thunk for @callee_guaranteed (@unowned Bool) -> ();
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v6[3] = &block_descriptor_105;
  v4 = _Block_copy(v6);

  [v2 checkIn:v3 reply:v4];

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #4 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(char a1)
{
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.extensionController);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_23B6FA000, oslog, v3, "Received checkIn result %{BOOL}d", v4, 8u);
    MEMORY[0x23EEA7200](v4, -1, -1);
  }
}

uint64_t closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:), 0, 0);
}

uint64_t closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)()
{
  v1 = v0[15];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  v0[23] = v3;
  v4 = swift_task_alloc();
  v0[24] = v4;
  v5 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
  v0[25] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v0[26] = v6;
  *v4 = v0;
  v4[1] = closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 10, v3, v5, v6, v7);
}

{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  }

  else
  {
    v2 = closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v27 = v0;
  v1 = v0[10];
  [v1 setStartWhenStaged_];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v0[13] = v3;
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Fetched activity %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA7200](v7, -1, -1);
    MEMORY[0x23EEA7200](v6, -1, -1);
  }

  v12 = v0[22];
  v13 = v0[19];
  v24 = v0[21];
  v25 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[16];
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v23 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v3;
  v0[6] = partial apply for closure #1 in closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  v0[7] = v17;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_81;
  v18 = _Block_copy(v0 + 2);
  v19 = v3;
  v20 = v16;
  static DispatchQoS.unspecified.getter();
  v0[11] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEA6630](0, v12, v13, v18);
  _Block_release(v18);

  (*(v15 + 8))(v13, v14);
  (*(v24 + 8))(v12, v25);

  v21 = v0[1];

  return v21();
}

{
  v32 = v0;
  if (one-time initialization token for extensionController != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.extensionController);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v29 = *(v0 + 7);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315394;
    *(v0 + 4) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit26PeoplePickerViewController_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v31);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[12] = v7;
    v13 = v7;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Not able to get activity from hostViewController %s reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v9, -1, -1);
    MEMORY[0x23EEA7200](v8, -1, -1);
  }

  else
  {
  }

  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v30 = v0[20];
  v20 = v0[17];
  v21 = v0[18];
  v22 = v0[16];
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v28 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = 0;
  v0[6] = partial apply for closure #1 in closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  v0[7] = v23;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_81;
  v24 = _Block_copy(v0 + 2);
  v25 = v22;
  static DispatchQoS.unspecified.getter();
  v0[11] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEA6630](0, v17, v19, v24);
  _Block_release(v24);

  (*(v21 + 8))(v19, v20);
  (*(v18 + 8))(v17, v30);

  v26 = v0[1];

  return v26();
}

uint64_t closure #1 in closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1, void *a2)
{
  v3 = a1;
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))(a2);
  v5 = XPCClient.queue.getter();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in closure #1 in closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_92;
  v8 = _Block_copy(v11);
  v9 = v3;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void PeoplePickerController.hostViewController(_:didFailToHost:error:)(void *a1, void *a2, void *a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2080;
    v15 = v7;
    v16 = v8;
    if (a3)
    {
      v17 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_23B6FA000, v10, v11, "Received signal that viewController %@ has failed to host view %@ error %s", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEA7200](v14, -1, -1);
    MEMORY[0x23EEA7200](v12, -1, -1);
  }

  PeoplePickerController.dismissViewController(success:)(0);
}

void PeoplePickerController.hostViewController(_:didEndHosting:error:)(void *a1, void *a2, void *a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2080;
    v15 = v7;
    v16 = v8;
    if (a3)
    {
      v17 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_23B6FA000, v10, v11, "Received signal that viewController %@ has ended hosting view %@ error %s", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEA7200](v14, -1, -1);
    MEMORY[0x23EEA7200](v12, -1, -1);
  }

  if (a3)
  {
    v22 = a3;
    PeoplePickerController.dismissViewController(success:)(0);
  }

  else
  {
    PeoplePickerController.dismissViewController(success:)(1);
  }
}

void @objc PeoplePickerController.hostViewController(_:didFailToHost:error:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

uint64_t partial apply for closure #1 in PeoplePickerController.createActivityIfPossible(completion:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in GroupActivitySharingController.result.getter;

  return closure #1 in PeoplePickerController.createActivityIfPossible(completion:)(a1, v4, v5, v6, v7, v9, v8);
}

void partial apply for closure #2 in PeoplePickerController.establishConnectionWithExtensionViewController(onCompletion:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x150))();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type PeoplePickerController and conformance PeoplePickerController(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #5 in PeoplePickerController.hostViewController(_:didPrepareToHost:)(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for PeoplePickerController.ConnectionCompletionHandlingState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for PeoplePickerController.ConnectionCompletionHandlingState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void GroupSessionPreviewHostingController.Delegate.viewDataNeedsUpdate()()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v1(v2);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }
}

uint64_t GroupSessionPreviewHostingController.Delegate.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t GroupSessionPreviewHostingController.Delegate.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t GroupSessionPreviewHostingController.session.getter()
{
  specialized GroupSessionPreviewHostingController.session.getter();
}

uint64_t key path setter for GroupSessionPreviewHostingController.rootView : <A, B>GroupSessionPreviewHostingController<A, B>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 144))(v4);
}

uint64_t GroupSessionPreviewHostingController.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  specialized GroupSessionPreviewHostingController.rootView.setter(a1);
  v4 = *(*(*(v3 + 88) - 8) + 8);

  return v4(a1);
}

void (*GroupSessionPreviewHostingController.rootView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 88);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _ArchivedViewHost.content.getter();
  return GroupSessionPreviewHostingController.rootView.modify;
}

void GroupSessionPreviewHostingController.rootView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized GroupSessionPreviewHostingController.rootView.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized GroupSessionPreviewHostingController.rootView.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *GroupSessionPreviewHostingController.__allocating_init(session:rootView:previewPresenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = specialized GroupSessionPreviewHostingController.__allocating_init(session:rootView:previewPresenter:)(a1, a2, a3);
  (*(*(*(v3 + 88) - 8) + 8))(a2);

  return v5;
}

void *GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  v6 = specialized GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)(a1, a2, a3);
  (*(*(*(v5 + 88) - 8) + 8))(a2);

  return v6;
}

uint64_t closure #1 in GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v19 = v23;
  v18[4] = v22;
  v18[5] = v19;
  v18[6] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEA6630](0, v16, v12, v20);
  _Block_release(v20);

  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v24);
}

uint64_t closure #1 in closure #1 in GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 168))(result);
  }

  return result;
}

Swift::Void __swiftcall GroupSessionPreviewHostingController.updatePreviewIfNecessary()()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.previews);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v22[0] = v7;
    *v6 = 136315138;
    v23 = v0[2];
    type metadata accessor for GroupSession();

    swift_getWitnessTable();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Updating previews if necessary for session: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA7200](v7, -1, -1);
    MEMORY[0x23EEA7200](v6, -1, -1);
  }

  else
  {
  }

  v12 = _ArchivedViewHost.archiveStates(count:body:)();
  v13 = v1[7];
  v14 = v1[8];
  v15 = v12;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v1 + 4, v13);
  v24 = v17;
  v25 = v1;
  v23 = v15;
  v18 = *(v14 + 16);
  outlined copy of Data._Representation(v15, v17);
  v19 = *(v2 + 96);
  v22[0] = *(v2 + 80);
  v22[1] = v19;
  v20 = type metadata accessor for GroupSessionPreviewHostingController();
  WitnessTable = swift_getWitnessTable();
  v18(&v25, &v23, v20, WitnessTable, v13, v14);
  outlined consume of Data._Representation(v15, v17);
  outlined consume of Data._Representation(v23, v24);
}

uint64_t GroupSessionPreviewHostingController.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  return v0;
}

uint64_t GroupSessionPreviewHostingController.__deallocating_deinit()
{
  GroupSessionPreviewHostingController.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for GroupSessionPreviewSource.session.getter in conformance GroupSessionPreviewHostingController<A, B>()
{
  specialized GroupSessionPreviewHostingController.session.getter();
}

uint64_t specialized GroupSessionPreviewHostingController.rootView.setter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return _ArchivedViewHost.content.setter();
}

void *specialized GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(*v4 + 88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v30 - v10;
  v31 = *(v12 + 80);
  *&v13 = v31;
  *(&v13 + 1) = v8;
  v32 = *(v14 + 96);
  v34 = v13;
  v35 = v32;
  v15 = type metadata accessor for GroupSessionPreviewHostingController.Delegate();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v4[2] = a1;
  WitnessTable = swift_getWitnessTable();
  *&v34 = v8;
  *(&v34 + 1) = v15;
  *&v35 = *(&v32 + 1);
  *(&v35 + 1) = WitnessTable;
  type metadata accessor for _ArchivedViewHost();
  (*(v9 + 16))(v11, a2, v8);
  *&v34 = v16;

  v4[3] = _ArchivedViewHost.__allocating_init(content:delegate:)();
  outlined init with copy of ConversationManagerClientProtocol(a3, (v4 + 4));

  _ArchivedViewHost.encodesStableDisplayListIdentifiers.setter();

  v18 = _ArchivedViewHost.environment.modify();
  EnvironmentValues.displayScale.setter();
  v18(&v34, 0);

  _ArchivedViewHost.size.setter();

  v30 = a3;
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = *(v20 + 8);
  v22 = v31;
  v33 = v4;
  *&v34 = v31;
  *(&v34 + 1) = v8;
  v35 = v32;
  v23 = type metadata accessor for GroupSessionPreviewHostingController();
  v24 = swift_getWitnessTable();
  v21(&v33, v23, v24, v19, v20);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v8;
  *(v26 + 32) = v32;
  *(v26 + 48) = v25;
  v27 = *(v16 + 16);
  *(v16 + 16) = partial apply for closure #1 in GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:);
  *(v16 + 24) = v26;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v27);

  (*(*v4 + 168))(v28);

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v4;
}

void *specialized GroupSessionPreviewHostingController.__allocating_init(session:rootView:previewPresenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for GroupSessionPreviewHostingController();
  swift_allocObject();
  return specialized GroupSessionPreviewHostingController.init(session:rootView:previewPresenter:)(a1, a2, a3);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t NSItemProvider.loadGroupActivity()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](NSItemProvider.loadGroupActivity(), 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
  *v3 = v0;
  v3[1] = NSItemProvider.loadGroupActivity();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023B75BF00, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v4);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = NSItemProvider.loadGroupActivity();
  }

  else
  {

    v2 = NSItemProvider.loadGroupActivity();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType._groupActivity.getter();
  v13 = UTType.identifier.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = MEMORY[0x23EEA6320](v13, v15);

  (*(v4 + 16))(v7, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v7, v3);
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  [v21 loadItemForTypeIdentifier:v16 options:0 completionHandler:v19];
  _Block_release(v19);
}

void closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
    if (swift_dynamicCast())
    {
      type metadata accessor for UIView(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
      type metadata accessor for UIView(0, &lazy cache variable for type metadata for TUConversationActivity);
      v13 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v14 = one-time initialization token for default;
      v15 = v13;
      v16 = v15;
      if (v14 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v16;
        *v21 = v13;
        v22 = v16;
        _os_log_impl(&dword_23B6FA000, v18, v19, "Unarchiving activity from item provider data: %@", v20, 0xCu);
        outlined destroy of NSObject?(v21);
        MEMORY[0x23EEA7200](v21, -1, -1);
        MEMORY[0x23EEA7200](v20, -1, -1);
      }

      outlined consume of Data._Representation(v26, v27);

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        swift_unknownObjectRetain();
      }

      v2 = one-time initialization token for default;
      v3 = v13;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Log.default);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v3;
        *v8 = v13;
        v9 = v3;
        _os_log_impl(&dword_23B6FA000, v5, v6, "Received activity object from item provider: %@", v7, 0xCu);
        outlined destroy of NSObject?(v8);
        MEMORY[0x23EEA7200](v8, -1, -1);
        MEMORY[0x23EEA7200](v7, -1, -1);
      }

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v23 = [v13 sanitizedCopy];

    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);
      CheckedContinuation.resume(returning:)();

LABEL_24:
      swift_unknownObjectRelease();

      return;
    }

LABEL_23:
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    *v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_24;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    v11 = v10;
    a2 = 0;
    *v11 = 1;
  }

  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);
  CheckedContinuation.resume(throwing:)();
}

void partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd);

  closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(a1, a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError()
{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

uint64_t key path getter for CustomReactionPickerEntryView.onReaction : CustomReactionPickerEntryView@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for CustomReactionPickerEntryView.onReaction : CustomReactionPickerEntryView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  sub_23B6FD304(v3);
  return v7(v6, v5);
}

uint64_t CustomReactionPickerEntryView.onReaction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction);
  swift_beginAccess();
  v2 = *v1;
  sub_23B6FD304(*v1);
  return v2;
}

uint64_t CustomReactionPickerEntryView.onReaction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id CustomReactionPickerEntryView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomReactionPickerEntryView.init()()
{
  v1 = &v0[OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction];
  v2 = type metadata accessor for CustomReactionPickerEntryView();
  *v1 = 0;
  *(v1 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v2;
  v3 = objc_msgSendSuper2(&v5, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  [v3 setKeyboardType_];
  [v3 setForceDisableDictation_];

  return v3;
}

id CustomReactionPickerEntryView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CustomReactionPickerEntryView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CustomReactionPickerEntryView.insertText(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = countAndFlagsBits;
  v18[1] = object;
  v10 = [objc_opt_self() whitespaceAndNewlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = (*((*MEMORY[0x277D85000] & *v2) + 0x58))(v14);
    if (v16)
    {
      v17 = v16;
      v16(countAndFlagsBits, object);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

id CustomReactionPickerEntryView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id CustomReactionPickerEntryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomReactionPickerEntryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CustomReactionPicker.model.getter(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}