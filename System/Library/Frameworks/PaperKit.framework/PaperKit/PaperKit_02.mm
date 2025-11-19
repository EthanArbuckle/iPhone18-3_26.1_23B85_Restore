uint64_t sub_1D38F6784(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_23;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_23;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[19];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_1D38F6BE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F6C38()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F6C70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F6D0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F6D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F6D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1D38F6DBC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_extensionHostSafeAreaInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D38F6EA0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_participantDetailsDataSource;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D38F6F3C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D38F6FFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F7040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F70AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38F7130(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F7268()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F72A0()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F72D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F7318()
{
  swift_unknownObjectRelease();

  outlined consume of MagicGenerativePlaygroundContext(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1D38F7364@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized Canvas.liveStreamMessenger.getter();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

__n128 sub_1D38F73B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F74DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized Canvas.xpcMulticast.getter();
}

double sub_1D38F7550@<D0>(uint64_t a1@<X8>)
{
  Canvas.visibleBoundsOverride.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

id sub_1D38F75C8@<X0>(_BYTE *a1@<X8>)
{
  result = Canvas.isRulerActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38F7698()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F76D0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38F7750()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F7788()
{
  v1 = type metadata accessor for CapsuleUndoAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D38F7858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F7898()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F78D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F7908()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D38F7954()
{
  v1 = type metadata accessor for CRStableAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 32, v3 | 7);
}

uint64_t sub_1D38F7A34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F7A7C()
{
  v1 = *(type metadata accessor for CRAssetOrData() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined consume of Data._Representation(*v5, *(v5 + 8));
    outlined consume of Data._Representation(*(v5 + 16), *(v5 + 24));
  }

  else
  {
    v6 = type metadata accessor for CRAsset();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D38F7BBC()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D38F7D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F7D50()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F7D88()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F7DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F7DF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D38F7F9C()
{
  v17 = type metadata accessor for UUID();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v14 = (v2 + 56) & ~v2;
  v15 = (*(v1 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for Capsule();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (((v15 + 47) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v7 = *(v13 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v2 | v8 | v4;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v14, v17);
  __swift_destroy_boxed_opaque_existential_0(v0 + v15);

  (*(v3 + 8))(v0 + v5, v16);

  (*(v7 + 8))(v0 + v9, v13);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F81F0()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F838C()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F8548()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F85AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F8600()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F8638()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F8680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F86B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38F87A0()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F8874()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D38F88AC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 40));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38F895C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D38F8A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F8B10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F8B64()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D38F8BCC()
{
  v1 = type metadata accessor for CapsuleUndoAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D38F8D30()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v1[12];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v18 = v1[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  (*(*(v19 - 8) + 8))(v0 + v3 + v18, v19);
  v20 = v1[14];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  (*(*(v21 - 8) + 8))(v0 + v3 + v20, v21);
  v22 = v1[15];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  (*(*(v23 - 8) + 8))(v0 + v3 + v22, v23);
  v24 = v1[16];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  (*(*(v25 - 8) + 8))(v0 + v3 + v24, v25);
  v26 = v1[17];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  (*(*(v27 - 8) + 8))(v0 + v3 + v26, v27);
  v17(v0 + v3 + v1[18], v16);
  v28 = v1[19];
  v29 = type metadata accessor for UnknownProperties();
  (*(*(v29 - 8) + 8))(v0 + v3 + v28, v29);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38F9208()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F93DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownValueProperties();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D38F94F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownValueProperties();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38F9598()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F95D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9608()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F9648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F9680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F96EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38F9770(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F978C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F97C4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F98A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F9978()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F99B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F9A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D38F9AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38F9BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D38F9C90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CropResizeView.HUDState.hudString.setter(v1, v2);
}

uint64_t sub_1D38F9D18()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9D74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F9DC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9DFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F9E64()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v3 | v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v13, v11 | 7);
}

uint64_t sub_1D38FA030()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FA090()
{

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1D38FA0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38FA190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D38FA1F0()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA228()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1D38FA278()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38FA2C0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FA310()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA348()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1D38FA3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FA3F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FA494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FA500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38FA584(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1D38FA654(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FA6A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FA6F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38FA740()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38FA790()
{
  v1 = type metadata accessor for FBKSEvaluation.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38FA870()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA8B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D38FA974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38FAA2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1D38FAAF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *sub_1D38FAB10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FAB6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

double sub_1D38FABD0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  CanvasElement.coordinateSpace.getter(*(a1 + a2 - 24), *(a1 + a2 - 8), v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

void sub_1D38FAC20(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = a1[2];
  CanvasElement.coordinateSpace.setter(v7, v4, v5);
}

uint64_t sub_1D38FAC88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FACE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FAD50()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D38FADA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s8PaperKit11TextBoxViewC28keyboardWillShowNotification33_C8A78019CA71D0F9D8BFC7CF31EEDAE3LLyySo14NSNotificationCFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  TextBoxView.keyboardWillHideNotification(_:)(v4);
}

__n128 sub_1D38FAF38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *sub_1D38FAF4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FAFA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 48))(&v7, v4);
}

void *sub_1D38FB00C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FB068(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

uint64_t sub_1D38FB174()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FB1AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38FB224()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FB338()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FB398()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FB3D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FB40C()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1D38FB444()
{

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1D38FB47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

void sub_1D38FB4D8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38FB588(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FB624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Color(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D38FB69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Color(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D38FB71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FB794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FB8A8()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FB8F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = off_1F4F629B8[0];
  type metadata accessor for Paper(0);
  result = v2();
  *a1 = v4 & 1;
  return result;
}

void sub_1D38FB98C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38FBA38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FBA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FBAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38FBB74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FBB88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FBBDC()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FBC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FBC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FBD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D38FBDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38FBEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D38FBFEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D38FC128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd);
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

uint64_t sub_1D38FC1F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd);
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

uint64_t sub_1D38FC2B4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D38FC30C()
{
  v1 = type metadata accessor for MiniColorSwatch(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);

  v6 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd) + 32));
  v7 = type metadata accessor for Color(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 20);
    v9 = type metadata accessor for UnknownValueProperties();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D38FC4E4()
{
  v1 = type metadata accessor for MultiColorSwatchButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + v4), *(v0 + v4 + 8));

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentValues();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D38FC724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D38FC850(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D38FC9B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D38FCA08()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FCA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D38FCABC@<X0>(_BYTE *a1@<X8>)
{
  result = ImageCanvasElementViewController.isInCanvasSelectionMode.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D38FCB04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FCB4C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FCB84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38FCC70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FCCB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void _s8PaperKit18MiniMenuControllerC019popoverPresentationE17DidDismissPopoveryySo09UIPopovergE0CFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized MiniMenuController.colorPickerViewControllerDidFinish(_:)();
}

uint64_t sub_1D38FCDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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

uint64_t sub_1D38FCE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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

uint64_t sub_1D38FCF30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FCF70()
{
  v1 = *(type metadata accessor for LoupeRenderDebouncer.RenderState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38FD06C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FD0A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D38FD0F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FD10C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FD154()
{
  v1 = type metadata accessor for CRAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38FD254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FD2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FD330()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38FD3B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PDFPageID.CodingKeys@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PDFPageID.CodingKeys@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

CGPath *ppk_bezierPathWithRoundedRect(int a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  Mutable = CGPathCreateMutable();
  if (a1)
  {
    _sanitizeRadiusForRect(a7, a3, a4, a5, a6);
    v40 = v21;
    _sanitizeRadiusForRect(a8, a3, a4, a5, a6);
    v42 = v22;
    _sanitizeRadiusForRect(a9, a3, a4, a5, a6);
    v44 = v23;
    _sanitizeRadiusForRect(a10, a3, a4, a5, a6);
    v25 = v24;
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    MinY = CGRectGetMinY(v47);
    CGPathMoveToPoint(Mutable, 0, v25 + MinX, MinY);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 0, a2, a3, a4, a5, a6, v40);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 1, a2, a3, a4, a5, a6, v42);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 2, a2, a3, a4, a5, a6, v44);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 3, a2, a3, a4, a5, a6, v25);
  }

  else
  {
    _sanitizeRadiusForRect(a7, a3, a4, a5, a6);
    v41 = v28;
    _sanitizeRadiusForRect(a8, a3, a4, a5, a6);
    v43 = v29;
    _sanitizeRadiusForRect(a9, a3, a4, a5, a6);
    v45 = v30;
    _sanitizeRadiusForRect(a10, a3, a4, a5, a6);
    v32 = v31;
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    Width = CGRectGetWidth(v48);
    v34 = Width * 0.5;
    v35 = Width - v41 * 1.528665;
    if (v34 >= v35)
    {
      v35 = v34;
    }

    if (v35 >= v32 * 1.528665)
    {
      v36 = v32 * 1.528665;
    }

    else
    {
      v36 = v35;
    }

    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    v37 = CGRectGetMinX(v49);
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    v38 = CGRectGetMinY(v50);
    CGPathMoveToPoint(Mutable, 0, v37 + v36, v38);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 0, a2, a3, a4, a5, a6, v41, v32, v43);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 1, a2, a3, a4, a5, a6, v43, v45, v41);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 2, a2, a3, a4, a5, a6, v45, v43, v32);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 3, a2, a3, a4, a5, a6, v32, v41, v45);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void _sanitizeRadiusForRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9.origin.x = a2;
  v9.origin.y = a3;
  v9.size.width = a4;
  v9.size.height = a5;
  CGRectGetWidth(v9);
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  CGRectGetHeight(v10);
}

double _cornerPointOnRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      MinX = CGRectGetMinX(*&a2);
      goto LABEL_9;
    }

    MaxX = CGRectGetMinX(*&a2);
  }

  else
  {
    if (!a1)
    {
      MinX = CGRectGetMaxX(*&a2);
LABEL_9:
      v11 = MinX;
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMinY(v14);
      return v11;
    }

    MaxX = CGRectGetMaxX(*&a2);
  }

  v11 = MaxX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMaxY(v13);
  return v11;
}

void _addContinuousRectangleQuarterThroughCorner(CGPath *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, float64_t a9, float64_t a10)
{
  Width = CGRectGetWidth(*&a4);
  v83.origin.x = a4;
  v83.origin.y = a5;
  v83.size.width = a6;
  v83.size.height = a7;
  Height = CGRectGetHeight(v83);
  v19.f64[0] = a9;
  v19.f64[1] = a10;
  v20.f64[0] = Width;
  v20.f64[1] = Height;
  v21 = a8 * 1.528665;
  __asm { FMOV            V1.2D, #0.5 }

  v27 = vmulq_f64(v20, _Q1);
  v28 = vmlaq_f64(v20, vdupq_n_s64(0xBFF875696E58A32FLL), v19);
  v29 = vbslq_s8(vcgtq_f64(v28, v27), v28, v27);
  v30 = vdupq_lane_s64(COERCE__INT64(a8 * 1.528665), 0);
  v31 = vbslq_s8(vcgtq_f64(v30, v29), v29, v30);
  v74 = a8;
  v32 = a8 * 1.528665 - a8;
  v33 = 0.0;
  v71 = 0.0;
  if (v32 != 0.0)
  {
    v71 = 1.0 - (v21 - *v31.i64) / v32;
    v33 = 1.0 - (v21 - *&v31.i64[1]) / v32;
  }

  v79 = *v31.i64;
  v34 = _cornerPointOnRect(a2, a4, a5, a6, a7);
  v36 = v35;
  v37 = _insetCorner(a2, v34, v35, v79);
  v39 = a2 & 0xFFFFFFFFFFFFFFFDLL;
  v76 = v36;
  v73 = v38;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v36 = v38;
  }

  v80 = v34;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = v37;
  }

  v41 = v37;
  if (a3)
  {
    CGPathAddLineToPoint(a1, 0, v40, v36);
LABEL_19:
    v70 = v41;
    v43 = dbl_1D4056238[a2];
    if (v71 >= v33)
    {
      v44 = v33;
    }

    else
    {
      v44 = v71;
    }

    v68 = v33;
    v45 = 1.0 - v44;
    v46 = _insetCorner(a2, v80, v76, ((1.0 - v44) * 0.05 + 0.95) * v74);
    v48 = v47;
    v49 = v43 * 0.0174532925;
    v50 = (v43 + 50.0) * 0.0174532925;
    v51 = (v45 * 0.06875015 + 0.93124985) * v74;
    v52 = __sincos_stret(v49);
    v53 = v46 + v51 * v52.__cosval;
    v67 = v48 + v51 * v52.__sinval;
    v54 = __sincos_stret(v50);
    v55 = v48 + v51 * v54.__sinval;
    if (v39)
    {
      v56 = v71;
    }

    else
    {
      v56 = v68;
    }

    v69 = v56;
    if (v39)
    {
      v57 = v68;
    }

    else
    {
      v57 = v71;
    }

    v58 = v70;
    if (!v39)
    {
      v58 = v80;
    }

    v81 = v58;
    v59 = v73;
    if (v39)
    {
      v59 = v76;
    }

    v77 = v59;
    _addContinuationSegment(a1, a2, 1, v53, v67, v74, v57);
    v60 = __sincos_stret((v50 - v49) * 0.5);
    v61 = v51 * ((1.0 - v60.__cosval) * 4.0 / (v60.__sinval * 3.0));
    CGPathAddCurveToPoint(a1, 0, v53 - v61 * v52.__sinval, v67 + v61 * v52.__cosval, v46 + v51 * v54.__cosval + v61 * v54.__sinval, v55 - v61 * v54.__cosval, v46 + v51 * v54.__cosval, v55);

    _addContinuationSegment(a1, a2, 0, v81, v77, v74, v69);
    return;
  }

  CurrentPoint = CGPathGetCurrentPoint(a1);
  if (CurrentPoint.x != v40 && vabdd_f64(CurrentPoint.x, v40) >= 0.1 || CurrentPoint.y != v36 && vabdd_f64(CurrentPoint.y, v36) >= 0.1 || ((v62 = a4, v63 = a5, v64 = a6, v65 = a7, !v39) ? (v66 = CGRectGetWidth(*&v62)) : (v66 = CGRectGetHeight(*&v62)), v66 == 0.0 || fabs(v66) < 0.00999999978))
  {
    CGPathAddLineToPoint(a1, 0, v40, v36);
  }

  if (v80 != v41 && vabdd_f64(v80, v41) >= 0.1 || v76 != v73 && vabdd_f64(v76, v73) >= 0.1)
  {
    goto LABEL_19;
  }
}

double _insetCorner(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2 + a4;
  result = a2 - a4;
  if (a1 > 1)
  {
    return v4;
  }

  return result;
}

void _addContinuationSegment(const CGPath *a1, uint64_t a2, int a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v15 = dbl_1D4056258[a2];
  v16 = (a2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  v17 = 0.8;
  v18 = 0.0;
  if (v16 != a3)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 0.8;
  }

  if (v16 != a3)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 0.5;
  }

  if (v16 != a3)
  {
    v18 = 0.5;
  }

  else
  {
    v17 = 0.0;
  }

  if (a3)
  {
    y = a5;
  }

  else
  {
    y = CurrentPoint.y;
  }

  if (a3)
  {
    v22 = CurrentPoint.y;
  }

  else
  {
    v22 = a5;
  }

  v23 = y - v22;
  v24 = v22 + v23 * v19;
  v25 = v22 + v23 * v20;
  if (a3)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v42 = v26;
  if (a3)
  {
    x = a4;
  }

  else
  {
    x = CurrentPoint.x;
  }

  if (a3)
  {
    v28 = CurrentPoint.x;
  }

  else
  {
    v28 = a4;
  }

  v29 = x - v28;
  v30 = v28 + v29 * v17;
  v31 = v28 + v29 * v18;
  if (a3)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (a3)
  {
    v24 = v25;
  }

  v40 = v24;
  v41 = v32;
  if (a3)
  {
    v30 = v31;
  }

  v39 = v30;
  if (!a3)
  {
    v15 = v15 + 50.0 + 20.0;
  }

  v33 = v15 * 0.0174532925;
  v34 = (v15 + 20.0) * 0.0174532925;
  v35 = __sincos_stret((v34 - v15 * 0.0174532925) * 0.5);
  v36 = (1.0 - v35.__cosval) * 4.0 / (v35.__sinval * 3.0) * a6;
  v37 = __sincos_stret(v33);
  v38 = __sincos_stret(v34);

  CGPathAddCurveToPoint(a1, 0, v39 * a7 + (CurrentPoint.x - v36 * v37.__sinval) * (1.0 - a7), v40 * a7 + (CurrentPoint.y + v36 * v37.__cosval) * (1.0 - a7), v41 * a7 + (a4 + v36 * v38.__sinval) * (1.0 - a7), v42 * a7 + (a5 - v36 * v38.__cosval) * (1.0 - a7), a4, a5);
}

void _addLegacyRectangleQuarterThroughCorner(CGPath *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v16 = _cornerPointOnRect(a2, a4, a5, a6, a7);
  v18 = v17;
  v37 = a8;
  v19 = _insetCorner(a2, v16, v17, a8);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v19;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v16 = v19;
  }

  else
  {
    v18 = v20;
  }

  if (a3)
  {
    CGPathAddLineToPoint(a1, 0, v21, v22);
LABEL_21:
    CurrentPoint = CGPathGetCurrentPoint(a1);
    v25 = dbl_1D4056258[a2];
    v26 = v25 * 0.0174532925;
    v27 = (v25 + 90.0) * 0.0174532925;
    v28 = __sincos_stret((v27 - v25 * 0.0174532925) * 0.5);
    v30 = __sincos_stret(v26);
    v31 = __sincos_stret(v27);

    v29 = (1.0 - v28.__cosval) * 4.0 / (v28.__sinval * 3.0) * v37;
    CGPathAddCurveToPoint(a1, 0, CurrentPoint.x - v29 * v30.__sinval, CurrentPoint.y + v29 * v30.__cosval, v16 + v29 * v31.__sinval, v18 - v29 * v31.__cosval, v16, v18);
    return;
  }

  v23 = CGPathGetCurrentPoint(a1);
  if (v23.x != v21 && vabdd_f64(v23.x, v21) >= 0.1 || v23.y != v22 && vabdd_f64(v23.y, v22) >= 0.1 || ((v32 = a4, v33 = a5, v34 = a6, v35 = a7, (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0) ? (Width = CGRectGetWidth(*&v32)) : (Width = CGRectGetHeight(*&v32)), Width == 0.0 || fabs(Width) < 0.00999999978))
  {
    CGPathAddLineToPoint(a1, 0, v21, v22);
  }

  if (v21 != v16 && vabdd_f64(v21, v16) >= 0.1 || v22 != v18 && vabdd_f64(v22, v18) >= 0.1)
  {
    goto LABEL_21;
  }
}

void generateRandomKey(void *__buf)
{
  do
  {
    arc4random_buf(__buf, 0x10uLL);
    if (*__buf)
    {
      v2 = 0;
    }

    else
    {
      v2 = __buf[1] == 0;
    }
  }

  while (v2 || (*__buf & __buf[1]) == -1);
}

void OUTLINED_FUNCTION_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

BOOL OUTLINED_FUNCTION_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id getMUImageReaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMUImageReaderClass_softClass;
  v7 = getMUImageReaderClass_softClass;
  if (!getMUImageReaderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMUImageReaderClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getMUImageReaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMUImageReaderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MarkupUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MarkupUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E845C130;
    v6 = 0;
    MarkupUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MarkupUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MUImageReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMUImageReaderClass_block_invoke_cold_1();
  }

  getMUImageReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MarkupUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MarkupUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D390181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E845C148;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
    if (MediaAccessibilityLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningCopyCaptionWithSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D390360C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3903808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D3903EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_1D3904F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3905178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3905E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PPKSetAccessibilityDescriptionIntoMetadata(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  err = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
  v16 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
  if (!getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke;
    v19 = &unk_1E845C110;
    v20 = &v13;
    __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(&buf);
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    +[PPKImageReader imageDescriptionFromSource:];
    __break(1u);
  }

  if ((v4(a1, v3, &err) & 1) == 0)
  {
    if (err)
    {
      v5 = CFErrorCopyDescription(err);
      CFRelease(err);
    }

    else
    {
      v5 = 0;
    }

    v6 = [(__CFString *)v5 length]== 0;
    v7 = +[PPKImageWriter log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(buf) = 0;
        v9 = "Error setting image description into metadata";
        v10 = v7;
        v11 = 2;
        goto LABEL_13;
      }
    }

    else if (v8)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      v9 = "Error setting image description: %@";
      v10 = v7;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_1D38C4000, v10, OS_LOG_TYPE_DEFAULT, v9, &buf, v11);
    }
  }
}

void sub_1D39079C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E845C388;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
    if (MediaAccessibilityLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningSetCaptionIntoMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return [a1 writeUsingBaseImage:a2 annotationImage:a3 sdrAnnotationImage:a4 asImageOfType:a5 toConsumer:a6 annotationMetadata:a7 modifiedMetadataHandler:? encryptPrivateMetadata:? error:?];
}

id getPXFileBackedUIMediaProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPXFileBackedUIMediaProviderClass_softClass;
  v7 = getPXFileBackedUIMediaProviderClass_softClass;
  if (!getPXFileBackedUIMediaProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPXFileBackedUIMediaProviderClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getPXFileBackedUIMediaProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D3908F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPXFileBackedAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPXFileBackedAssetClass_softClass;
  v7 = getPXFileBackedAssetClass_softClass;
  if (!getPXFileBackedAssetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPXFileBackedAssetClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getPXFileBackedAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3909E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390A828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D390AA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getPXDisplayAssetViewClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXDisplayAssetView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXDisplayAssetViewClass_block_invoke_cold_1();
  }

  getPXDisplayAssetViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PhotosUICoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotosUICoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C4C8;
    v3 = 0;
    PhotosUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPXFileBackedUIMediaProviderClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXFileBackedUIMediaProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXFileBackedUIMediaProviderClass_block_invoke_cold_1();
  }

  getPXFileBackedUIMediaProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPXFileBackedAssetClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXFileBackedAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXFileBackedAssetClass_block_invoke_cold_1();
  }

  getPXFileBackedAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVKCImageAnalyzerClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalyzerClass_block_invoke_cold_1();
  }

  getVKCImageAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VisionKitCoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C4E0;
    v3 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVKCImageAnalysisInteractionClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalysisInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalysisInteractionClass_block_invoke_cold_1();
  }

  getVKCImageAnalysisInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVKCImageAnalyzerRequestClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalyzerRequestClass_block_invoke_cold_1();
  }

  getVKCImageAnalyzerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PPKUnzipData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 URLByAppendingPathComponent:v6];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
  v9 = archive_read_new();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  [v1 bytes];
  [v1 length];
  if (archive_read_open_memory())
  {
    PPKUnzipData_cold_1();
  }

  v22 = v1;
  archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  archive_entry_new();
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header == 1)
    {
      break;
    }

    if (next_header < 0)
    {
      v21 = NSDataZipUtilsLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        PPKUnzipData_cold_4(v9, v21);
      }

      __assert_rtn("PPKUnzipData", "PPKUnzipData.m", 49, "0");
    }

    v12 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:archive_entry_pathname() isDirectory:0 relativeToURL:v7];
    v13 = [v12 pathComponents];
    v14 = [v7 pathComponents];
    v15 = [v13 objectAtIndex:{objc_msgSend(v14, "count")}];

    if (v15)
    {
      [v10 addObject:v15];
    }

    v16 = [v12 path];
    [v16 fileSystemRepresentation];
    archive_entry_set_pathname();

    if (archive_write_header())
    {
      PPKUnzipData_cold_2();
    }

    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block != 1)
      {
        PPKUnzipData_cold_3();
      }
    }

    else
    {
      archive_write_data_block();
    }
  }

  archive_read_close();
  archive_read_free();
  archive_write_close();
  archive_write_free();
  if ([v10 count] == 1)
  {
    v18 = [v10 anyObject];
    v19 = [v7 URLByAppendingPathComponent:v18];
  }

  else
  {
    v19 = v7;
  }

  return v19;
}

id NSDataZipUtilsLogger()
{
  if (NSDataZipUtilsLogger_onceToken != -1)
  {
    NSDataZipUtilsLogger_cold_1();
  }

  v1 = NSDataZipUtilsLogger_log;

  return v1;
}

void __NSDataZipUtilsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.PaperKit", "NSDataZipArchiveLogger");
  v1 = NSDataZipUtilsLogger_log;
  NSDataZipUtilsLogger_log = v0;
}

id PPKGPInProcessMagicPaperViewControllerLogger()
{
  if (PPKGPInProcessMagicPaperViewControllerLogger_onceToken != -1)
  {
    PPKGPInProcessMagicPaperViewControllerLogger_cold_1();
  }

  v1 = PPKGPInProcessMagicPaperViewControllerLogger_log;

  return v1;
}

void __PPKGPInProcessMagicPaperViewControllerLogger_block_invoke()
{
  v0 = os_log_create("com.apple.PaperKit", "PPKGPInProcessMagicPaperViewController");
  v1 = PPKGPInProcessMagicPaperViewControllerLogger_log;
  PPKGPInProcessMagicPaperViewControllerLogger_log = v0;
}

id getGPInProcessMagicPaperViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPInProcessMagicPaperViewControllerClass_softClass;
  v7 = getGPInProcessMagicPaperViewControllerClass_softClass;
  if (!getGPInProcessMagicPaperViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPInProcessMagicPaperViewControllerClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPInProcessMagicPaperViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPRecipeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPRecipeClass_softClass;
  v7 = getGPRecipeClass_softClass;
  if (!getGPRecipeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPRecipeClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPRecipeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPPromptElementClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPPromptElementClass_softClass;
  v7 = getGPPromptElementClass_softClass;
  if (!getGPPromptElementClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPPromptElementClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPPromptElementClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390EA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPGenerationRecipeDataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPGenerationRecipeDataClass_softClass;
  v7 = getGPGenerationRecipeDataClass_softClass;
  if (!getGPGenerationRecipeDataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPGenerationRecipeDataClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPGenerationRecipeDataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getGPInProcessMagicPaperViewControllerClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundInternalLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GPInProcessMagicPaperViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPInProcessMagicPaperViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPInProcessMagicPaperViewControllerClass_block_invoke_cold_1();
    ImagePlaygroundInternalLibrary();
  }
}

void ImagePlaygroundInternalLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ImagePlaygroundInternalLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ImagePlaygroundInternalLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C548;
    v3 = 0;
    ImagePlaygroundInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ImagePlaygroundInternalLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ImagePlaygroundInternalLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImagePlaygroundInternalLibraryCore_frameworkLibrary = result;
  return result;
}

void __getGPRecipeClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GPRecipe");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPRecipeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPRecipeClass_block_invoke_cold_1();
    ImagePlaygroundLibrary();
  }
}

void ImagePlaygroundLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ImagePlaygroundLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ImagePlaygroundLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C560;
    v3 = 0;
    ImagePlaygroundLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ImagePlaygroundLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ImagePlaygroundLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImagePlaygroundLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGPDrawOnImageRecipeClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPDrawOnImageRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPDrawOnImageRecipeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPDrawOnImageRecipeClass_block_invoke_cold_1();
    return __getGPMagicPaperStateClass_block_invoke(v3);
  }

  return result;
}

Class __getGPMagicPaperStateClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundInternalLibrary();
  result = objc_getClass("GPMagicPaperState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPMagicPaperStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPMagicPaperStateClass_block_invoke_cold_1();
    return __getGPPromptElementClass_block_invoke(v3);
  }

  return result;
}

Class __getGPPromptElementClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPPromptElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPPromptElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPPromptElementClass_block_invoke_cold_1();
    return __getGPGenerationRecipeDataClass_block_invoke(v3);
  }

  return result;
}

PPKQuickLookBannerView *__getGPGenerationRecipeDataClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPGenerationRecipeData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPGenerationRecipeDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPGenerationRecipeDataClass_block_invoke_cold_1();
    return [(PPKQuickLookBannerView *)v3 initWithFrame:v4, v5];
  }

  return result;
}

uint64_t one-time initialization function for mathLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, mathLogger);
  __swift_project_value_buffer(v0, mathLogger);
  return Logger.init(subsystem:category:)();
}

void AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v36 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x440))(v12);
  v17 = v16;
  ObjectType = swift_getObjectType();
  v38 = (*(v17 + 16))(ObjectType, v17);

  v19 = v38;
  if (v38)
  {
    v37 = a3;
    v20 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate;
    v21 = *&v38[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
      if (v22)
      {
        v23 = v22;
        if (a2)
        {
          a2 = MEMORY[0x1DA6CCED0](v36, a2);
        }

        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v23 mathResult:a2 itemUUID:isa];

        v19 = v38;
      }
    }

    if (a4)
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v8);
      type metadata accessor for MainActor();

      v27 = static MainActor.shared.getter();
      v28 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E85E0];
      *(v29 + 2) = v27;
      *(v29 + 3) = v30;
      *(v29 + 4) = v26;
      (*(v9 + 32))(&v29[v28], &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v29);
    }

    else
    {
      v31 = *&v19[v20];
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
        if (v32)
        {
          v33 = v32;
          v34 = UUID._bridgeToObjectiveC()().super.isa;
          [v33 mathResultAttributionImage:0 darkModeImage:0 string:0 date:0 itemUUID:v34];

          v19 = v38;
        }
      }
    }
  }
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v7, v6);
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v0[15] = static CalculateResultAttributionHandler.shared;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

    return specialized CalculateResultAttributionHandler.lightModeImage()();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

{
  v0[20] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[21] = v2;
  v0[22] = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v2, v1);
}

{
  v0[23] = type metadata accessor for StocksKitCurrencyCache();
  v0[24] = static StocksKitCurrencyCache.shared.getter();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);
  v2 = v0[9];

  return MEMORY[0x1EEDF1D98](v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 192);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v4, v3);
}

{
  v1 = v0[9];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[9];
  if (v4 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[9], &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.name.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v0[26] = v6;
  v0[27] = v7;
  v9 = v0[12];
  v10 = v0[13];

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v9, v10);
}

{
  v0[28] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[29] = v2;
  v0[30] = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v2, v1);
}

{
  v0[31] = static StocksKitCurrencyCache.shared.getter();
  v4 = (*MEMORY[0x1E69921F0] + MEMORY[0x1E69921F0]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);
  v2 = v0[8];

  return v4(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 248);

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v4, v3);
}

{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v1, v2);
}

{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController), v4 = *(v0 + 216), v3))
  {
    if (v4)
    {
      v5 = *(v0 + 208);
      v6 = v3;
      v7 = MEMORY[0x1DA6CCED0](v5, v4);
    }

    else
    {
      v10 = v3;
      v7 = 0;
    }

    v11 = *(v0 + 56);
    outlined init with copy of Date?(*(v0 + 64), v11, &_s10Foundation4DateVSgMd);
    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    isa = 0;
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v15 = *(v0 + 56);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v15, v12);
    }

    v16 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    [v3 mathResultAttributionImage:v17 darkModeImage:v16 string:v7 date:isa itemUUID:v19];
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 64), &_s10Foundation4DateVSgMd);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 136) = a1;

  v5 = a1;
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  *v6 = v4;
  v6[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized CalculateResultAttributionHandler.darkModeImage()();
}

{
  v3 = *v1;
  *(*v1 + 152) = a1;

  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v5, v4);
}

void AnyCanvas.calculateDocumentSetAttributes(_:itemUUID:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x440))();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);

  if (v7)
  {
    outlined init with copy of Date?(a1, v13, &_s8PaperKit25PKCalculateItemAttributes_pSgMd);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit25PKCalculateItemAttributes_pMd);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItemAttributes);
      if (swift_dynamicCast())
      {
        v8 = *&v7[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
          if (v9)
          {
            v10 = v9;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v10 setItemAttributes:v12 forItemUUID:isa];
          }
        }
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit25PKCalculateItemAttributes_pSgMd);
    }
  }
}

Swift::Void __swiftcall AnyCanvas.calculateDocumentExpressionsChanged()()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x440))(v3);
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);

  if (v10)
  {
    v11 = v10;
    v12 = [v11 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    PKDrawing._bridgeToObjectiveC()(v13);
    v15 = v14;
    v16 = [v14 uuid];

    (*(v2 + 8))(v5, v1);
    v38 = &unk_1F4FC4E80;
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (v17 && (v18 = v17, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), swift_dynamicCastMetatype()))
    {
      v19 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = static CalculateDocumentController.controllers;
      if (*(static CalculateDocumentController.controllers + 2) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v22 & 1) != 0))
      {
        v23 = *(v20[7] + 8 * v21);
        swift_endAccess();
        v24 = v23;
        swift_unknownObjectRelease();
        v25 = CalculateDocumentController.calculateDocumentProvider.getter();
        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, mathLogger);
        swift_unknownObjectRetain_n();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          v30 = [v25 recognizedExpressions];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CHMathExpression_pMd);
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v31 >> 62)
          {
            v32 = __CocoaSet.count.getter();
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v29 + 4) = v32;
          swift_unknownObjectRelease();
          *(v29 + 12) = 2048;
          v33 = [v25 declaredVariables];
          v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = *(v34 + 16);

          *(v29 + 14) = v35;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1D38C4000, v27, v28, "Updating CalculateDocumentProvider: %ld, %ld", v29, 0x16u);
          MEMORY[0x1DA6D0660](v29, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        v36 = [v11 recognitionController];

        [v36 setCalculateDocumentProvider_];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();

        swift_unknownObjectRelease_n();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
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

unint64_t lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle()
{
  result = lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle;
  if (!lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type GraphableExpressionsView and conformance GraphableExpressionsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphableExpressionsView and conformance GraphableExpressionsView()
{
  result = lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView;
  if (!lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy09CalculateB00g11GraphBoundsC0V_Qo_Md);
    type metadata accessor for CalculateGraphBoundsView();
    lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateGraphBoundsView and conformance CalculateGraphBoundsView, MEMORY[0x1E69922C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1DA6CA140](a5);
  }

  return View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();
}

uint64_t type metadata completion function for CGMutablePathRef(uint64_t a1)
{
  type metadata accessor for CGPathRef(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGPathElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CGPathElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA6C8BF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1DA6C8C00](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA6CD480](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1DA6CD490](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGPathRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CGLineCap()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGLineCap()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSTextAlignment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSTextAlignment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3B70](a1, v2);
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
  v3 = MEMORY[0x1DA6CCED0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIRectCorner@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for SYErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for SYErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for SYErrorCode()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIKeyModifierFlags@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UITextContentType()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UITextContentType and conformance UITextContentType, type metadata accessor for UITextContentType);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UITextContentType and conformance UITextContentType, type metadata accessor for UITextContentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CalculateKey()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateKey and conformance CalculateKey, type metadata accessor for CalculateKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateKey and conformance CalculateKey, type metadata accessor for CalculateKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActionIdentifier()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFDocumentWriteOption()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AFTextContentType()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type AFTextContentType and conformance AFTextContentType, type metadata accessor for AFTextContentType);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type AFTextContentType and conformance AFTextContentType, type metadata accessor for AFTextContentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFPageDrawWithBoxOption()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFPageImageInitializationOption()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for SYErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UITextContentType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1DA6CCED0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA6CE840](*&v1);
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CalculateKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1DA6CD080](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CalculateKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CalculateKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UITextContentType()
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

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void closure #1 in variable initialization expression of static PageLabelView.sidebarAttributedString()
{
  v0 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D40819A0);
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v5 = v3;
    v6 = MEMORY[0x1DA6CCED0](32, 0xE100000000000000);
    v7 = [v4 initWithString_];

    [v5 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

char *PageLabelView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v75[-1] - v12;
  v14 = OBJC_IVAR____TtC8PaperKit13PageLabelView_blurEffect;
  *&v5[v14] = [objc_opt_self() effectWithStyle_];
  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] = 0;
  v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = 1;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8PaperKit13PageLabelView_label;
  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_label] = v15;
  [v15 setOpaque_];
  [*&v5[v16] setBackgroundColor_];
  [*&v5[v16] setTextAlignment_];
  v17 = _UISolariumEnabled();
  v18 = *&v5[v16];
  v19 = objc_opt_self();
  if (v17)
  {
    v20 = *MEMORY[0x1E69DDCF8];
    v21 = *MEMORY[0x1E69DB970];
    v22 = v18;
    v23 = [v19 _preferredFontForTextStyle_weight_];
    [v22 setFont_];

    v24 = *&v5[v16];
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 labelColor];
    [v26 setTextColor_];
  }

  else
  {
    v28 = v18;
    v29 = [v19 boldSystemFontOfSize_];
    [v28 setFont_];

    v30 = *&v5[v16];
    v31 = objc_opt_self();
    v32 = v30;
    v33 = [v31 blackColor];
    [v32 setTextColor_];

    [*&v5[v16] setAlpha_];
  }

  if (_UISolariumEnabled())
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    static _UICornerMaskingConfiguration.capsule.getter();
    v35 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
    UIView.cornerMaskingConfiguration.setter();
    static _Glass._GlassVariant.regular.getter();
    v75[3] = type metadata accessor for _Glass();
    v75[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v75);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
    [v34 addSubview_];
  }

  else
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v34 _setContinuousCornerRadius_];
    v36 = [v34 contentView];

    [v36 addSubview_];
  }

  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView] = v34;
  v37 = type metadata accessor for PageLabelView();
  v76.receiver = v5;
  v76.super_class = v37;
  v38 = objc_msgSendSuper2(&v76, sel_initWithFrame_, a1, a2, a3, a4);
  v39 = OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView;
  v40 = *&v38[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView];
  v41 = v38;
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = *&v38[v39];
  v43 = v41;
  [v43 addSubview_];
  v44 = OBJC_IVAR____TtC8PaperKit13PageLabelView_label;
  [*&v43[OBJC_IVAR____TtC8PaperKit13PageLabelView_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = 10.0;
  if (_UISolariumEnabled())
  {
    v46 = 10.0;
  }

  else
  {
    v46 = 6.0;
  }

  if (_UISolariumEnabled())
  {
    v45 = 18.0;
  }

  v74 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D4058C60;
  v48 = [*&v38[v39] topAnchor];
  v49 = [v43 topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v47 + 32) = v50;
  v51 = [*&v38[v39] bottomAnchor];
  v52 = [v43 bottomAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v47 + 40) = v53;
  v54 = [*&v38[v39] trailingAnchor];
  v55 = [v43 &selRef_imageAnalysisOrientation + 4];

  v56 = [v54 constraintEqualToAnchor_];
  *(v47 + 48) = v56;
  v57 = [*&v38[v39] leadingAnchor];
  v58 = [v43 leadingAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v47 + 56) = v59;
  v60 = [*&v43[v44] topAnchor];
  v61 = [*&v38[v39] topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:v46];

  *(v47 + 64) = v62;
  v63 = [*&v43[v44] bottomAnchor];
  v64 = [*&v38[v39] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-v46];

  *(v47 + 72) = v65;
  v66 = [*&v43[v44] leadingAnchor];
  v67 = [*&v38[v39] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:v45];

  *(v47 + 80) = v68;
  v69 = [*&v43[v44] trailingAnchor];
  v70 = [*&v38[v39] trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-v45];

  *(v47 + 88) = v71;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints_];

  return v43;
}

id PageLabelView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  [*&v0[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PageLabelView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall PageLabelView.showNow(in:with:)(UIView *in, Swift::String with)
{
  v3 = v2;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v7 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v7 - 8);
  [v2 setAlpha_];
  v8 = *&v2[OBJC_IVAR____TtC8PaperKit13PageLabelView_label];
  v9 = _UISolariumEnabled();
  v10 = 0.4;
  if (v9)
  {
    v10 = 1.0;
  }

  [v8 setAlpha_];
  if (_UISolariumEnabled())
  {
    static _Glass._GlassVariant.regular.getter();
    v23[3] = type metadata accessor for _Glass();
    v23[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v23);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
  }

  else
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 setEffect_];
    }
  }

  if (v2[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] == 1)
  {
    if (one-time initialization token for sidebarAttributedString != -1)
    {
      swift_once();
    }

    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  }

  v13 = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = v13;
  v16 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
  v17 = [v14 initWithString_];

  [v15 appendAttributedString_];
  [v8 setAttributedText_];

  v18 = [v3 superview];
  v19 = &selRef_addSubview_;
  if (v18)
  {
    v20 = v18;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v21 = in;
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      v19 = &selRef_bringSubviewToFront_;
    }
  }

  [in *v19];
  PageLabelView.resetFadeOutTimer()();
}

Swift::Void __swiftcall PageLabelView.resetFadeOutTimer()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  v6 = *(v0 + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer);
  if (v6)
  {
    v7 = v6;
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
    [v7 setFireDate_];
  }

  else
  {
    v9 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel__fadeOut selector:0 userInfo:1 repeats:2.0];
    v10 = *(v0 + v5);
    *(v0 + v5) = v9;
  }
}

void PageLabelView._fadeOut()()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer))
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = partial apply for closure #1 in PageLabelView.fadeOut(animated:);
    v11 = v2;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9 = &block_descriptor;
    v3 = _Block_copy(&v6);

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = partial apply for closure #2 in PageLabelView.fadeOut(animated:);
    v11 = v4;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v9 = &block_descriptor_10;
    v5 = _Block_copy(&v6);

    [v1 animateWithDuration:v3 animations:v5 completion:0.5];
    _Block_release(v5);
    _Block_release(v3);
  }
}

Swift::Void __swiftcall PageLabelView.fadeOut(animated:)(Swift::Bool animated)
{
  v2 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  if (*&v1[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer])
  {
    if (animated)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = closure #1 in PageLabelView.fadeOut(animated:)partial apply;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v12 = &block_descriptor_15;
      v5 = _Block_copy(&v9);

      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = closure #2 in PageLabelView.fadeOut(animated:)partial apply;
      v14 = v6;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v12 = &block_descriptor_20;
      v7 = _Block_copy(&v9);

      [v3 animateWithDuration:v5 animations:v7 completion:0.5];
      _Block_release(v7);
      _Block_release(v5);
    }

    else
    {
      [v1 removeFromSuperview];
      [*&v1[v2] invalidate];
      v8 = *&v1[v2];
      *&v1[v2] = 0;
    }
  }
}

void closure #1 in PageLabelView.fadeOut(animated:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (_UISolariumEnabled())
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      UIView._background.setter();
    }

    [v1 setAlpha_];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v2 = *&v1[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView];
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = v2;
        [v4 setEffect_];
      }
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #2 in PageLabelView.fadeOut(animated:)(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v3 = Strong;
      [Strong removeFromSuperview];
      v4 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
      [*&v3[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] invalidate];
      v5 = *&v3[v4];
      *&v3[v4] = 0;

      Strong = v5;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(0, 0.0, 0.0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        v10 = &v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate];
        v11 = swift_unknownObjectWeakLoadStrong();
        v12 = *(v10 + 1);

        if (v11)
        {
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      v4 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v5 = v4;
      v6 = *&v4[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        v8 = &v7[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate];
        v9 = swift_unknownObjectWeakLoadStrong();
        v10 = *(v8 + 1);

        if (v9)
        {
          ObjectType = swift_getObjectType();
          (*(v10 + 16))(ObjectType, v10);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(PPKGPInProcessMagicPaperViewController *_, UIImage didGenerate)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, generativeLogger);
  v9 = v2;
  v10 = didGenerate.super.isa;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001D4081A70, &v29);
    *(v13 + 22) = 2080;
    [(objc_class *)v10 size];
    v18 = CGSize.debugDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_1D38C4000, v11, v12, "%s - %s: (image.size = %s)", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v14, -1, -1);
    MEMORY[0x1DA6D0660](v13, -1, -1);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v23 = v10;

  v24 = _;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v22;
  v26[5] = v24;
  v26[6] = v23;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:), v26);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  v6[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:), v9, v8);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)()
{
  v79 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[15];
    v6 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
    swift_beginAccess();
    outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v2 + v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v0[15]);
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, generativeLogger);
      v8 = v2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v78 = v12;
        *v11 = 136315138;
        v13 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v78);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1D38C4000, v9, v10, "%s returning (continuation is nil)", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1DA6D0660](v12, -1, -1);
        MEMORY[0x1DA6D0660](v11, -1, -1);
      }
    }

    else
    {
      v23 = v0[13];
      (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
      v24 = [v23 encodedRecipe];
      if (!v24)
      {
        if (one-time initialization token for generativeLogger != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, generativeLogger);
        v30 = v2;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v78 = v34;
          *v33 = 136315138;
          v35 = CanvasGenerationTool.nameAndPointerDescription.getter();
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v78);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_1D38C4000, v31, v32, "%s returning (encodedRecipe is nil)", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1DA6D0660](v34, -1, -1);
          MEMORY[0x1DA6D0660](v33, -1, -1);
        }

        v38 = v30[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
        if (v38 < 8 || v38 == 8)
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v58 & 1) == 0)
          {
            v72 = v0[17];
            v71 = v0[18];
            v73 = v0[16];
            LOBYTE(v78) = 9;
            CanvasGenerationTool.magicGenerativeState.setter(&v78);
            lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
            v74 = swift_allocError();
            *v75 = 0xD000000000000015;
            *(v75 + 8) = 0x80000001D4081AA0;
            *(v75 + 16) = 1;
            v0[11] = v74;
            CheckedContinuation.resume(throwing:)();

            (*(v72 + 8))(v71, v73);
            goto LABEL_13;
          }
        }

        else
        {
        }

        v59 = v30;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        v62 = os_log_type_enabled(v60, v61);
        v64 = v0[17];
        v63 = v0[18];
        v65 = v0[16];
        if (v62)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 136315138;
          v78 = v67;
          v68 = CanvasGenerationTool.nameAndPointerDescription.getter();
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v78);

          *(v66 + 4) = v70;
          _os_log_impl(&dword_1D38C4000, v60, v61, "%s returning (image generation has already failed)", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x1DA6D0660](v67, -1, -1);
          MEMORY[0x1DA6D0660](v66, -1, -1);
        }

        else
        {
        }

        (*(v64 + 8))(v63, v65);
        goto LABEL_13;
      }

      v25 = v24;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (*(v2 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState) == 8)
      {
        outlined copy of Data._Representation(v26, v28);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of Data._Representation(v26, v28);

        if ((v39 & 1) == 0)
        {
          v53 = v0[17];
          v54 = v0[18];
          v55 = v0[16];
          v56 = v0[14];
          LOBYTE(v78) = 8;
          CanvasGenerationTool.magicGenerativeState.setter(&v78);
          v0[8] = v56;
          v0[9] = v26;
          v0[10] = v28;
          v57 = v56;
          CheckedContinuation.resume(returning:)();
          outlined consume of Data._Representation(v26, v28);

          (*(v53 + 8))(v54, v55);
          goto LABEL_13;
        }
      }

      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, generativeLogger);
      v41 = v2;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v46 = v0[17];
      v45 = v0[18];
      v47 = v0[16];
      if (v44)
      {
        v76 = v28;
        v48 = swift_slowAlloc();
        v77 = v47;
        v78 = swift_slowAlloc();
        v49 = v78;
        *v48 = 136315138;
        v50 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v78);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1D38C4000, v42, v43, "%s returning (image has been generated already)", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1DA6D0660](v49, -1, -1);
        MEMORY[0x1DA6D0660](v48, -1, -1);

        outlined consume of Data._Representation(v26, v76);
        outlined consume of Data._Representation(v26, v76);

        (*(v46 + 8))(v45, v77);
      }

      else
      {
        outlined consume of Data._Representation(v26, v28);
        outlined consume of Data._Representation(v26, v28);

        (*(v46 + 8))(v45, v47);
      }
    }
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, generativeLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v78 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4081A50, &v78);
      _os_log_impl(&dword_1D38C4000, v17, v18, "%s returning (self is nil)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1DA6D0660](v20, -1, -1);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }
  }

LABEL_13:

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:), v7, v6);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)()
{
  v43 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
    swift_beginAccess();
    outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v2 + v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v0[10]);
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, generativeLogger);
      v8 = v2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v42 = v12;
        *v11 = 136315138;
        v13 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v42);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1D38C4000, v9, v10, "%s returning (continuation is nil)", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1DA6D0660](v12, -1, -1);
        MEMORY[0x1DA6D0660](v11, -1, -1);
      }
    }

    else
    {
      (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
      if (*(v2 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState) == 7)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          v36 = v0[12];
          v35 = v0[13];
          v37 = v0[11];
          LOBYTE(v42) = 7;
          CanvasGenerationTool.magicGenerativeState.setter(&v42);
          lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
          v38 = swift_allocError();
          *v39 = 0;
          *(v39 + 8) = 0;
          *(v39 + 16) = 2;
          v0[8] = v38;
          CheckedContinuation.resume(throwing:)();

          (*(v36 + 8))(v35, v37);
          goto LABEL_22;
        }
      }

      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, generativeLogger);
      v23 = v2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      v26 = os_log_type_enabled(v24, v25);
      v28 = v0[12];
      v27 = v0[13];
      v29 = v0[11];
      if (v26)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 136315138;
        v42 = v31;
        v32 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1D38C4000, v24, v25, "%s returning (continuation has been cancelled already)", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1DA6D0660](v31, -1, -1);
        MEMORY[0x1DA6D0660](v30, -1, -1);

        (*(v28 + 8))(v27, v29);
      }

      else
      {

        (*(v28 + 8))(v27, v29);
      }
    }
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, generativeLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4081A50, &v42);
      _os_log_impl(&dword_1D38C4000, v17, v18, "%s returning (self is nil)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1DA6D0660](v20, -1, -1);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }
  }

LABEL_22:

  v40 = v0[1];

  return v40();
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001D4081AF0, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:), v16);
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001D4081AC0, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:), v16);
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001D4081A20, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:), v16);
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(a1, v4, v5, v6);
}

uint64_t outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError()
{
  result = lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError;
  if (!lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError);
  }

  return result;
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(a1, v4, v5, v6, v7, v8);
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

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphableVariablesView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GraphableVariablesView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for labelFont()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for Font.Design();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static Font.system(size:weight:design:)();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s7SwiftUI4FontV6DesignOSgMd);
  static GraphableVariablesView.labelFont = v4;
  return result;
}

uint64_t GraphableVariablesView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  v6 = specialized Collection.count.getter();

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAHyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAHyAHyAHyAHyAA6ButtonVyAA012_ConditionalJ0VyAcAE15dynamicTypeSizeyQrAA07DynamictU0OFQOyAA5ImageV_Qo_AHyA1_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameO0VGAPGAA01_J13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGAPG_Qo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t closure #1 in GraphableVariablesView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd);
  MEMORY[0x1EEE9AC00](v44);
  v40 = (&v40 - v9);
  v10 = *a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v46);
  v12 = v46;
  swift_getKeyPath();
  v47 = v12;
  lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  v14 = *(v12 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8);

  v41 = a2;
  v42 = a3;
  v47 = a2;
  v48 = a3;
  v43 = a4;
  v49 = a4;
  MEMORY[0x1DA6CA790](&v46, v11);
  v15 = v46;
  swift_getKeyPath();
  v47 = v15;
  v16 = v15 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables);

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= *(v17 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v18 = v17 + 16 * v10;
  v16 = *(v18 + 32);
  v15 = *(v18 + 40);

  if (v14)
  {
    if (v13 == v16 && v14 == v15)
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      LOBYTE(v13) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v50._object = 0x80000001D4081B40;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._object = 0x80000001D4081B20;
  v50._countAndFlagsBits = 0xD00000000000004CLL;
  v20._countAndFlagsBits = 0xD000000000000011;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D4058CF0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v16;
  *(v22 + 40) = v15;

  v23 = String.init(format:_:)();
  v25 = v24;

  v47 = v23;
  v48 = v25;
  v26 = static VerticalAlignment.center.getter();
  v27 = v40;
  *v40 = v26;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalJ0VyAA0D0PAAE15dynamicTypeSizeyQrAA07DynamicqR0OFQOyAA5ImageV_Qo_AKyA2_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAOGAA01_jzX0VyAA9RectangleVGGAA023AccessibilityAttachmentX0VGtGGMd);
  v29 = v41;
  v30 = v42;
  v31 = v43;
  specialized closure #1 in closure #1 in GraphableVariablesView.body.getter(&v47, v13 & 1, v41, v42, v43, v16, v15, v27 + *(v28 + 44));
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v27 + *(v44 + 36);
  *v33 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v13 & 1;
  *(v38 + 24) = v29;
  *(v38 + 32) = v30;
  *(v38 + 40) = v31;
  *(v38 + 48) = v16;
  *(v38 + 56) = v15;
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();

  View.onTapGesture(count:perform:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd);
}

uint64_t specialized getter of attrString #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = type metadata accessor for AttributedString();
  v96 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  v5 = MEMORY[0x1EEE9AC00](v85);
  v83 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v82 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  v103 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v86 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = v80 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v98 = v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v81 = v80 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v87 = v80 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v80 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v80 - v28;
  v30 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v97 = a1;

  AttributeContainer.init()();
  v92 = v32;
  AttributedString.init(_:attributes:)();
  v33 = *(v12 + 56);
  v100 = v29;
  v80[1] = v12 + 56;
  v80[0] = v33;
  v33(v29, 1, 1, v11);
  v106 = 91;
  v107 = 0xE100000000000000;
  v34 = type metadata accessor for Locale();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v99 = v35 + 56;
  v36(v10, 1, 1, v34);
  lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v37 = lazy protocol witness table accessor for type String and conformance String();
  v102 = a2;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s10Foundation6LocaleVSgMd);
  v38 = *(v12 + 48);
  v39 = v103;
  v101 = v12 + 48;
  v40 = v38(v27, 1);
  v93 = v38;
  v91 = v34;
  v90 = v36;
  v89 = v10;
  v88 = v37;
  if (v40 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
    v41 = v97;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v27, v98, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v106 = 93;
    v107 = 0xE100000000000000;
    v36(v10, 1, 1, v34);
    v42 = v87;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s10Foundation6LocaleVSgMd);
    v43 = v39;
    if ((v38)(v42, 1, v39) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
      v41 = v97;
    }

    else
    {
      v44 = v84;
      outlined init with take of Range<AttributedString.Index>(v42, v84, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v45 = *(v39 + 36);
      v46 = type metadata accessor for AttributedString.Index();
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v47 = dispatch thunk of static Comparable.<= infix(_:_:)();
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
      v41 = v97;
      if ((v47 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v49 = *(v46 - 8);
      v50 = v49[2];
      v51 = v82;
      v52 = v98;
      v50(v82, v98, v46);
      outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v53 = v85;
      v50((v51 + *(v85 + 48)), v44 + v45, v46);
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v54 = v83;
      outlined init with copy of Date?(v51, v83, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
      v98 = *(v53 + 48);
      v55 = v49[4];
      v56 = v81;
      v55(v81, v54, v46);
      v57 = v49[1];
      v57(v54 + v98, v46);
      outlined init with take of Range<AttributedString.Index>(v51, v54, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
      v55((v56 + *(v43 + 36)), v54 + *(v85 + 48), v46);
      v57(v54, v46);
      (v80[0])(v56, 0, 1, v43);
      outlined init with take of Range<AttributedString.Index>(v56, v100, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
    }
  }

  swift_beginAccess();
  v58 = v41[1];
  v106 = *v41;
  v107 = v58;
  v108 = 91;
  v109 = 0xE100000000000000;
  v59 = v89;
  v60 = v91;
  v61 = v90;
  v90(v89, 1, 1, v91);

  v99 = StringProtocol.range<A>(of:options:range:locale:)();
  v63 = v62;
  outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s10Foundation6LocaleVSgMd);

  if ((v63 & 1) == 0)
  {
    swift_beginAccess();
    v64 = v41[1];
    v106 = *v41;
    v107 = v64;
    v108 = 93;
    v109 = 0xE100000000000000;
    v61(v59, 1, 1, v60);

    StringProtocol.range<A>(of:options:range:locale:)();
    v66 = v65;
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s10Foundation6LocaleVSgMd);

    if ((v66 & 1) == 0)
    {
      v108 = 32;
      v109 = 0xE100000000000000;
      swift_beginAccess();
      lazy protocol witness table accessor for type String and conformance String();
      String.replaceSubrange<A>(_:with:)();
      v108 = 32;
      v109 = 0xE100000000000000;
      String.replaceSubrange<A>(_:with:)();
      swift_endAccess();
    }
  }

  swift_beginAccess();

  AttributeContainer.init()();
  v67 = v94;
  AttributedString.init(_:attributes:)();
  v68 = v96;
  v69 = v102;
  v70 = v104;
  (*(v96 + 8))(v102, v104);
  (*(v68 + 32))(v69, v67, v70);
  if (one-time initialization token for labelFont != -1)
  {
    swift_once();
  }

  v106 = static GraphableVariablesView.labelFont;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();

  AttributedString.subscript.setter();
  v71 = objc_opt_self();
  v72 = [v71 secondaryLabelColor];
  v106 = Color.init(uiColor:)();
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
  AttributedString.subscript.setter();
  v73 = v100;
  v74 = v95;
  outlined init with copy of Date?(v100, v95, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
  if (v93(v74, 1, v103) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
    v73 = v74;
  }

  else
  {
    v75 = v74;
    v76 = v86;
    outlined init with take of Range<AttributedString.Index>(v75, v86, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v77 = [v71 labelColor];
    v78 = Color.init(uiColor:)();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v79 = AttributedString.subscript.modify();
    v105 = v78;
    AttributedSubstring.subscript.setter();
    v79(&v106, 0);
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_sSny10Foundation16AttributedStringV5IndexVGMd);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_sSny10Foundation16AttributedStringV5IndexVGSgMd);
}

uint64_t specialized closure #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a6;
  v77 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  v17 = MEMORY[0x1EEE9AC00](v76);
  v83 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v74 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v73 - v21;
  v22 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v22 - 8);
  specialized getter of attrString #1 in closure #1 in GraphableVariablesView.body.getter(a1, &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = Text.init(_:)();
  v78 = v25;
  v79 = v24;
  v27 = v26;
  v81 = v28;
  v80 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v84 = v27 & 1;
  LOBYTE(v90._countAndFlagsBits) = v27 & 1;
  LOBYTE(v86) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  *(v37 + 24) = a3;
  *(v37 + 32) = a4;
  v38 = v75;
  *(v37 + 40) = a5;
  *(v37 + 48) = v38;
  *(v37 + 56) = a7;
  LODWORD(v75) = a2;
  v85 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd) + 36)];
  v40 = v102;
  *v39 = v101;
  *(v39 + 1) = v40;
  *(v39 + 2) = v103;
  LOBYTE(a4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd) + 36)];
  *v49 = a4;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v16[*(v14 + 36)] = 0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v50.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0x64657463656C6553;
  isa = paperKitBundle.super.isa;
  v106._object = 0x80000001D4081B90;
  v51._object = 0xE800000000000000;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v106._countAndFlagsBits = 0xD000000000000028;
  v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v50, paperKitBundle, v53, v106);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v54 = v74;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd);
  v72 = 0x80000001D4081B90;
  if (v75)
  {
    v55 = 0x64657463656C6553;
    v56 = 0xE800000000000000;
  }

  else
  {
    v55 = 0x656C655320746F4ELL;
    v56 = 0xEC00000064657463;
  }

  v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57.value._object = 0xEB00000000656C62;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v59 = 0xD000000000000028;
  v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v55, v57, isa, v58, *(&v72 - 1));
  v60 = v82;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  v61 = v83;
  outlined init with copy of Date?(v60, v83, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  v62 = v78;
  v63 = v79;
  *&v86 = v79;
  *(&v86 + 1) = v78;
  LOBYTE(v87) = v84;
  *(&v87 + 1) = v105[0];
  DWORD1(v87) = *(v105 + 3);
  v64 = v81;
  *(&v87 + 1) = v81;
  v65 = v80;
  LOBYTE(v88) = v80;
  *(&v88 + 1) = *v104;
  DWORD1(v88) = *&v104[3];
  *(&v88 + 1) = v30;
  *&v89[0] = v32;
  *(&v89[0] + 1) = v34;
  *&v89[1] = v36;
  BYTE8(v89[1]) = 0;
  v66 = v86;
  v67 = v87;
  v68 = v77;
  *(v77 + 57) = *(v89 + 9);
  v69 = v89[0];
  *(v68 + 32) = v88;
  *(v68 + 48) = v69;
  *v68 = v66;
  *(v68 + 16) = v67;
  *(v68 + 80) = 0;
  *(v68 + 88) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicmN0OFQOyAA5ImageV_Qo_ACyAvA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAGGAA01_dvT0VyAA9RectangleVGGAA023AccessibilityAttachmentT0VGtMd);
  outlined init with copy of Date?(v61, v68 + *(v70 + 64), &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  outlined init with copy of Date?(&v86, &v90, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  v90._countAndFlagsBits = v63;
  v90._object = v62;
  v91 = v84;
  *v92 = v105[0];
  *&v92[3] = *(v105 + 3);
  v93 = v64;
  v94 = v65;
  *v95 = *v104;
  *&v95[3] = *&v104[3];
  v96 = v30;
  v97 = v32;
  v98 = v34;
  v99 = v36;
  v100 = 0;
  return outlined destroy of StocksKitCurrencyCache.Provider?(&v90, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in GraphableVariablesView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
    MEMORY[0x1DA6CA790](&v19);
    v10 = v19;
    if (*(v19 + 24))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v20 = v10;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v19 + 24) = 0;
    }

    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1DA6CA790](&v19, v9);
    v15 = v19;
    v16 = (v19 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
    if (*(v19 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8))
    {
      goto LABEL_8;
    }

    *v16 = 0;
    v16[1] = 0;
  }

  else
  {
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
    MEMORY[0x1DA6CA790](&v19);

    GraphableExpressionState.graphableVariable.setter(a5, a6);

    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1DA6CA790](&v19, v14);
    v15 = v19;
    if (*(v19 + 24) != 1)
    {
LABEL_8:
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      v20 = v15;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *(v19 + 24) = 1;
  }
}

uint64_t closure #2 in closure #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGG_GMd);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA5ImageV_Qo_Md);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v28 = Image.init(systemName:)();
  (*(v8 + 104))(v10, *MEMORY[0x1E697E708], v7);
  if (a1)
  {
    v15 = MEMORY[0x1E6981748];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    (*(v12 + 16))(v6, v14, v11);
    swift_storeEnumTagMultiPayload();
    v28 = v15;
    v29 = MEMORY[0x1E6981710];
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = MEMORY[0x1E6981748];
    v18 = MEMORY[0x1E6981710];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    v19 = [objc_opt_self() separatorColor];
    v20 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v28 = v20;
    v22 = AnyShapeStyle.init<A>(_:)();
    v23 = &v4[*(v26 + 36)];
    *v23 = KeyPath;
    v23[1] = v22;
    outlined init with copy of Date?(v4, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    v29 = v18;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  }
}

uint64_t closure #2 in closure #1 in GraphableVariablesView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
    MEMORY[0x1DA6CA790](&v14, v6);
    v7 = v14;
    v8 = (v14 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
    if (*(v14 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v15 = v7;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
    MEMORY[0x1DA6CA790](&v14, v13);

    GraphableExpressionState.graphableVariable.setter(a5, a6);
  }
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAGyAGyAA6ButtonVyAA012_ConditionalG0VyAA0E0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_AGyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_gxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedE0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleE0VyAKyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalL0VyAfAE15dynamicTypeSizeyQrAA07DynamicvW0OFQOyAA5ImageV_Qo_AKyA4_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameQ0VGASGAA01_L13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGASG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

id TiledDocumentView.init(in:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments] = MEMORY[0x1E69E7CC0];
  type metadata accessor for PKDrawingCoherence(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TiledDocumentView();
  v5 = objc_msgSendSuper2(&v9, sel_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly_, a1, 1, ObjCClassFromMetadata, 0);
  v6 = [v5 canvasView];
  if (v6)
  {
    v7 = v6;
    [v6 setOpaque_];
  }

  [v5 setCanvasViewZOrderPolicy_];

  return v5;
}

Swift::Void __swiftcall TiledDocumentView.didMoveToWindow()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TiledDocumentView();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit33TiledSelectionInteractionDelegateCyAA0C12DocumentViewCGMd);
    v3 = objc_allocWithZone(v2);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v9.receiver = v3;
    v9.super_class = v2;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    v5 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate;
    v6 = *&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate];
    *&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate] = v4;

    v7 = [v0 selectionInteraction];
    [v7 setDelegate_];
    v8 = &protocol witness table for TiledDocumentView;
  }

  else
  {
    v7 = [v0 selectionInteraction];
    [v7 setDelegate_];
    v8 = 0;
  }

  *(*&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController] + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8) = v8;
  swift_unknownObjectWeakAssign();
  CanvasElementController.delegate.didset();
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v31 = a1 + 32;
  v3 = &_sSay8PaperKit9AnyCanvasCGMd;
  while (1)
  {
    v36 = v1;
    v5 = v31 + 16 * v1;
    v7 = *v5;
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 104);
    v10 = v7;
    v11 = v9(ObjectType, v6);

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v2 >> 62;
    if (v2 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      v16 = v30 + v13;
      if (__OFADD__(v30, v13))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v14)
      {
        v17 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v19 >> 1) - v18) < v13)
    {
      goto LABEL_36;
    }

    v33 = v13;
    v34 = v2;
    v21 = v17 + 8 * v18 + 32;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvas] and conformance [A], v3);
      v22 = v3;
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v22);
        v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v11);
        v26 = *v25;
        (v24)(v35, 0);
        v22 = v3;
        *(v21 + 8 * i) = v26;
      }
    }

    else
    {
      type metadata accessor for AnyCanvas();
      swift_arrayInitWithCopy();
      v22 = v3;
    }

    v3 = v22;

    v2 = v34;
    if (v33 >= 1)
    {
      v27 = *(v17 + 16);
      v28 = __OFADD__(v27, v33);
      v29 = v27 + v33;
      if (v28)
      {
        goto LABEL_37;
      }

      *(v17 + 16) = v29;
    }

LABEL_4:
    v1 = v36 + 1;
    if (v36 + 1 == v32)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v20 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v13 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

{
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v33 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &_sSaySo16PKAttachmentViewCGMd;
  while (1)
  {
    v5 = v33 + 16 * v1;
    v6 = *v5;
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = v6;
    v10 = [v9 window];
    if (v10)
    {

      v11 = (*(v7 + 96))(ObjectType, v7);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v2 >> 62;
    if (v2 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      v16 = v31 + v13;
      if (__OFADD__(v31, v13))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v14)
      {
        v17 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_17:
      __CocoaSet.count.getter();
      goto LABEL_18;
    }

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v19 >> 1) - v18) < v13)
    {
      goto LABEL_39;
    }

    v35 = v2;
    v37 = v1;
    v22 = v17 + 8 * v18 + 32;
    v32 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_41;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], v3);
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v24 = v3;
        v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v11);
        v27 = *v26;
        (v25)(v36, 0);
        v3 = v24;
        *(v22 + 8 * i) = v27;
      }
    }

    else
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
      swift_arrayInitWithCopy();
    }

    v2 = v35;
    v1 = v37;
    if (v13 >= 1)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v13);
      v30 = v28 + v13;
      if (v29)
      {
        goto LABEL_40;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v1 == v34)
    {
      return v2;
    }
  }

  v21 = v17;
  result = __CocoaSet.count.getter();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v13 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v37 = *(a1 + 16);
  if (!v37)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v36 = a1 + 32;
  type metadata accessor for ReflowSpace();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = v36 + 168 * v1;
    v5 = *(v4 + 144);
    v39[8] = *(v4 + 128);
    v39[9] = v5;
    v40 = *(v4 + 160);
    v6 = *(v4 + 80);
    v39[4] = *(v4 + 64);
    v39[5] = v6;
    v7 = *(v4 + 112);
    v39[6] = *(v4 + 96);
    v39[7] = v7;
    v8 = *(v4 + 16);
    v39[0] = *v4;
    v39[1] = v8;
    v9 = *(v4 + 48);
    v39[2] = *(v4 + 32);
    v39[3] = v9;
    v10 = *&v39[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    v12 = swift_allocObject();
    *(v12 + 160) = 1;
    *(v12 + 152) = 0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0;
    v13 = outlined init with copy of ReflowTextLine(v39, v38);
    v15 = UnknownCanvasElementView.flags.modify(v13, v14);
    *(v12 + 88) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = v15;
    *(v12 + 112) = v16;
    *(v12 + 120) = -1;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    *(v12 + 144) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = xmmword_1D40671D0;
    *(inited + 32) = v12;

    v38[0] = v10;
    specialized Array.append<A>(contentsOf:)(inited);
    v17 = v38[0];
    outlined destroy of ReflowTextLine(v39);
    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v2 >> 62;
    if (v2 >> 62)
    {
      v35 = __CocoaSet.count.getter();
      v22 = v35 + v19;
      if (__OFADD__(v35, v19))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v21 + v19;
      if (__OFADD__(v21, v19))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v20)
      {
        v23 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v18)
    {
      break;
    }

    v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v25 >> 1) - v24) < v19)
    {
      goto LABEL_36;
    }

    v41 = v2;
    v27 = v23 + 8 * v24 + 32;
    if (v18)
    {
      if (v26 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd);
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd);
        v29 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, i, v17);
        v31 = *v30;

        (v29)(v38, 0);
        *(v27 + 8 * i) = v31;
      }
    }

    else
    {
      type metadata accessor for ReflowElement();
      swift_arrayInitWithCopy();
    }

    v2 = v41;
    if (v19 >= 1)
    {
      v32 = *(v23 + 16);
      v33 = __OFADD__(v32, v19);
      v34 = v32 + v19;
      if (v33)
      {
        goto LABEL_37;
      }

      *(v23 + 16) = v34;
    }

LABEL_4:
    if (++v1 == v37)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v26 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v19 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t TiledDocumentView.paperAttachmentsIncludingSubAttachments.getter()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v4 = v1;
    while (1)
    {
      v5 = [v4 superview];

      if (!v5)
      {
        break;
      }

      v4 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v3 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v1;
LABEL_7:

  v7 = v4;
  v8 = specialized UIView.firstDescendent(where:)(v3);

  if (!v8)
  {
LABEL_16:
    swift_beginAccess();

    v29 = specialized Sequence.flatMap<A>(_:)(v28);

    return v29;
  }

  type metadata accessor for TiledTextView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_16;
  }

  v10 = v9;
  v11 = v8;
  v12 = TiledTextView.paperAttachments.getter();
  v13 = [v10 scrollView];
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
LABEL_18:
    v30 = specialized Sequence.flatMap<A>(_:)(v14);

    aBlock[0] = v12;
    specialized Array.append<A>(contentsOf:)(v30);

    return aBlock[0];
  }

  v15 = v13;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16 || (v17 = v16, v18 = [v16 textContainer], v19 = objc_msgSend(v18, sel_textLayoutManager), v18, !v19))
  {

    goto LABEL_18;
  }

  v37 = v14;
  v20 = [v17 textStorage];
  v34 = [v20 length];

  v35 = &v32;
  MEMORY[0x1EEE9AC00](v21);
  v31[2] = &v37;
  v22 = [v17 textStorage];
  v33 = *MEMORY[0x1E69DB5F8];
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = 0;
  *(v23 + 32) = partial apply for closure #1 in TiledTextView.paperDocumentAttachments.getter;
  *(v23 + 40) = v31;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:);
  *(v24 + 24) = v23;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_0;
  v25 = _Block_copy(aBlock);
  v26 = v15;

  [v22 enumerateAttribute:v33 inRange:0 options:v34 usingBlock:{0, v25}];

  _Block_release(v25);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v14 = v37;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void *specialized TiledPaperKitView.selectedOrMostVisibleAttachment()()
{
  v1 = TiledTextView.paperAttachments.getter();
  v2 = v1;
  v14 = v0;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_24:
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!*(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
    {
      __break(1u);
      return result;
    }

    v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v8);

    v10 = *(v9 + 16);

    if (v10)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_25;
    }
  }

  v11 = [v6 window];
  v12 = [v14 window];
  if (v11)
  {
    if (v12)
    {
      v13 = v12;

      if (v11 == v13)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  else
  {
    if (!v12)
    {
      return v6;
    }
  }

LABEL_26:

  return specialized TiledPaperKitView.mostVisibleAttachment()();
}

{
  swift_beginAccess();

  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  v14 = v0;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    return specialized TiledPaperKitView.mostVisibleAttachment()();
  }

LABEL_23:
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (!*(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
    {
      __break(1u);
      return result;
    }

    v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v8);

    v10 = *(v9 + 16);

    if (v10)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_24;
    }
  }

  v11 = [v6 window];
  v12 = [v14 window];
  if (v11)
  {
    if (v12)
    {
      v13 = v12;

      if (v11 == v13)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  else
  {
    if (!v12)
    {
      return v6;
    }
  }

  return specialized TiledPaperKitView.mostVisibleAttachment()();
}

id TiledDocumentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TiledDocumentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for TiledPaperKitView.currentPaperView.setter in conformance TiledDocumentView(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t protocol witness for TiledPaperKitView.paperAttachments.getter in conformance TiledDocumentView()
{
  swift_beginAccess();

  v1 = specialized Sequence.flatMap<A>(_:)(v0);

  return v1;
}

void *protocol witness for CanvasElementControllerDelegate.canvasElementControllerToolPicker.getter in conformance TiledDocumentView()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker);
  v2 = v1;
  return v1;
}

id protocol witness for CanvasElementControllerDelegate.canvasElementControllerWindow(_:) in conformance TiledDocumentView()
{
  v1 = [v0 window];

  return v1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized TiledDocumentView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TiledDocumentView._canvasView(_:didCompleteRefinementEntry:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v47 - v8;
  [a1 duration];
  v11 = v10;
  v12 = [a1 refinedStrokes];
  type metadata accessor for PKStroke();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);

  v15 = [a1 originalStrokes];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);

  v18 = [a1 refinedWordCount];
  [a1 tokenDeviation];
  v20 = v19;
  [a1 tokenTranslation];
  v22 = v21;
  v23 = [a1 locale];
  if (v23)
  {
    v24 = v23;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for Locale();
    (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  }

  else
  {
    v25 = type metadata accessor for Locale();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  }

  v26 = v14 - v17;
  outlined init with take of Locale?(v7, v9);
  type metadata accessor for Locale();
  v27 = *(v25 - 8);
  if ((*(v27 + 48))(v9, 1, v25) == 1)
  {
    outlined destroy of Locale?(v9);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = Locale.identifier.getter();
    v29 = v30;
    (*(v27 + 8))(v9, v25);
  }

  v33 = [a1 isAutoRefined] ^ 1;
  v48[0] = 0;
  v49 = 0;
  v50 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  swift_unknownObjectWeakInit();
  v34 = v11 * 1000.0;
  v53 = v34;
  v56 = v33;
  v54 = v26;
  v55 = v18;
  v31 = v20;
  v58 = v31;
  v32 = v22;
  v59 = v32;
  v57 = [v2 isAutoRefineEnabled];
  swift_unknownObjectWeakAssign();
  v51 = v28;
  v52 = v29;
  Strong = swift_unknownObjectWeakLoadStrong();
  v36 = [objc_opt_self() activePencil];
  v37 = [v36 isConnected];

  v48[0] = v37;
  v47[1] = static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v38 = BidirectionalCollection<>.joined(separator:)();
  v40 = v39;

  v49 = v38;
  v50 = v40;
  if (Strong)
  {
    v41 = Strong;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v41);
  }

  v42 = v52;
  if (v52)
  {
    v43 = v51;

    v49 = v43;
    v50 = v42;
  }

  v62 = 1;
  v44 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4081D40);
  if (specialized AnalyticsEvent.caEventPayload.getter())
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v45.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v45.super.isa = 0;
  }

  AnalyticsSendEvent();

  return outlined destroy of MagicPaperUsageAutoRefineEvent(v48);
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GraphableExpressionState.graphableVariables.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t GraphableExpressionState.graphableVariables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GraphableExpressionState.graphableVariable.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);

  return v1;
}

uint64_t GraphableExpressionState.enabled.setter(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.graphableVariable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  v6 = *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t GraphableExpressionState.expression.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t GraphableExpressionState.expression.setter(uint64_t a1)
{
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GraphableExpressionState.enabled.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t GraphableExpressionState.color.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t GraphableExpressionState.color.setter(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Color.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t closure #1 in GraphableExpressionState.color.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t GraphableExpressionState.id.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path getter for GraphableExpressionState.id : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for GraphableExpressionState.id : GraphableExpressionState(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return GraphableExpressionState.id.setter(v4);
}

uint64_t GraphableExpressionState.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t closure #1 in GraphableExpressionState.id.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t closure #1 in GraphableExpressionState.graphableVariable.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t GraphableExpressionState.shouldBeObserved.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved);
}

uint64_t GraphableExpressionState.shouldBeObserved.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.expressionIndex.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t GraphableExpressionState.expressionIndex.setter(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GraphableExpressionState()
{
  result = type metadata singleton initialization cache for GraphableExpressionState;
  if (!type metadata singleton initialization cache for GraphableExpressionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GraphableExpressionState()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GraphableExpressionState@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t partial apply for closure #1 in GraphableExpressionState.graphableVariables.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables) = *(v0 + 24);
}

uint64_t _s8PaperKit24GraphableExpressionStateC17graphableVariableSSSgvsyyXEfU_TA_0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t partial apply for closure #1 in GraphableExpressionState.color.setter()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t specialized GraphableExpressionState.init(expression:enabled:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  v10 = (v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables) = MEMORY[0x1E69E7CC0];
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  CalculateExpression.id.getter();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id, v9, v6);
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__expressionIndex) = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__numExpressions) = 1;
  v11 = *(CalculateExpression.graphableVariables.getter() + 16);

  if (v11 >= 2)
  {
    if (a2)
    {
      v12 = CalculateExpression.graphableVariable.getter();
      GraphableExpressionState.graphableVariable.setter(v12, v13);
    }

    v14 = CalculateExpression.graphableVariables.getter();
    GraphableExpressionState.graphableVariables.setter(v14);
  }

  return v3;
}

uint64_t partial apply for closure #1 in GraphableExpressionState.expression.setter()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t UnknownCanvasElementView.sharedCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v11[4] = *&v1[direct field offset for UnknownCanvasElementView.canvasElementTag];
  v12 = 1;
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  Capsule.rootID.getter();
  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

void *UnknownCanvasElementView.init(canvasElement:tag:canvas:parentCanvasElement:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v66 = a4;
  v67 = a3;
  v8 = type metadata accessor for CRKeyPath();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = direct field offset for UnknownCanvasElementView.displayedAsset;
  v17 = type metadata accessor for CRAsset();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.getImageTask] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.appearanceStreamView] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.canvasElementTag] = a2;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v18 = v72;
  v19 = v73;
  v20 = v74;
  v21 = v75;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v23 = direct field offset for UnknownCanvasElementView.thumbnailView;
  *&v5[direct field offset for UnknownCanvasElementView.thumbnailView] = v22;
  [v22 setContentMode_];
  [*&v5[v23] setClipsToBounds_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v25 = direct field offset for UnknownCanvasElementView.questionMarkView;
  *&v5[direct field offset for UnknownCanvasElementView.questionMarkView] = v24;
  [v24 setContentMode_];
  [*&v5[v25] setClipsToBounds_];
  v26 = *&v5[v25];
  v27 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4081FA0);
  v28 = [objc_opt_self() systemImageNamed_];

  [v26 setImage_];
  v29 = [objc_opt_self() effectWithStyle_];
  v30 = objc_allocWithZone(MEMORY[0x1E69DD298]);
  v70 = v29;
  v31 = [v30 initWithEffect_];
  v32 = direct field offset for UnknownCanvasElementView.blurEffectView;
  *&v5[direct field offset for UnknownCanvasElementView.blurEffectView] = v31;
  [v31 setMaskView_];
  [*&v5[v32] setFrame_];
  v33 = *(v11 + 16);
  v71 = a1;
  v34 = a1;
  v35 = v11;
  v33(v15, v34, v10);
  v36 = MEMORY[0x1E69E7D40];
  (*(v11 + 56))(&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x3F8)], 1, 1, v10);
  *&v5[*((*v36 & *v5) + 0x400)] = 0;
  *&v5[*((*v36 & *v5) + 0x408)] = 0;
  *&v5[*((*v36 & *v5) + 0x410)] = 0;
  *&v5[*((*v36 & *v5) + 0x418)] = 0;
  *&v5[*((*v36 & *v5) + 0x420)] = 0;
  v33(&v5[*((*v36 & *v5) + 0x3F0)], v15, v10);
  v37 = v66;
  v68 = v66;
  v38 = v67;
  v69 = v67;
  v39 = v38;
  v40 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v38, v37, v18, v19, v20, v21);
  specialized CanvasElementView.setupAccessibility()();
  if (v39)
  {
    (*((*v36 & *v40) + 0x520))();
  }

  v41 = *(v35 + 8);
  v41(v15, v10);
  v42 = *(v40 + direct field offset for UnknownCanvasElementView.thumbnailView);
  v43 = v40;
  [v43 addSubview_];
  [v43 addSubview_];
  if (one-time initialization token for imageMissingBackgroundColor != -1)
  {
    swift_once();
  }

  [v43 setBackgroundColor_];
  v44 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4081FC0);
  [v43 setAccessibilityIdentifier_];

  if (!*(v43 + direct field offset for UnknownCanvasElementView.appearanceStreamView) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v49 = Strong, v50 = (*((*v36 & *Strong) + 0x9E8))(), v49, v50) && (v51 = *((*v36 & *v43) + 0x3F0), swift_beginAccess(), v52 = v43 + v51, v53 = v62, v33(v62, v52, v10), v54 = v63, Capsule.rootID.getter(), v41(v53, v10), v55 = [v50 annotations], type metadata accessor for PDFAnnotation(), v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v55, MEMORY[0x1EEE9AC00](v57), *(&v62 - 2) = v54, v45 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v62 - 4), v56), v50, , (*(v64 + 8))(v54, v65), v45))
  {
    type metadata accessor for CanvasElementPDFAnnotation();
    v58 = swift_dynamicCastClass();
    if (v58 && (v59 = v58, [v58 hasAppearanceStream]))
    {
      objc_allocWithZone(type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView());
      v60 = v45;
      v61 = CanvasElementPDFAnnotationAppearanceStreamView.init(annotation:)(v59);
      [v43 addSubview_];
      v46 = v61;
      specialized UnknownCanvasElementView.appearanceStreamView.setter(v61);

      v45 = v46;
    }

    else
    {
      v46 = v43;
      v60 = v68;
    }
  }

  else
  {
    v45 = v43;
    v46 = v68;
  }

  v41(v71, v10);
  return v43;
}

void @objc UnknownCanvasElementView.init(coder:)(uint64_t a1)
{
  v2 = direct field offset for UnknownCanvasElementView.displayedAsset;
  v3 = type metadata accessor for CRAsset();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels) = 0;
  *(a1 + direct field offset for UnknownCanvasElementView.getImageTask) = 0;
  *(a1 + direct field offset for UnknownCanvasElementView.appearanceStreamView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void UnknownCanvasElementView.__ivar_destroyer()
{
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + direct field offset for UnknownCanvasElementView.displayedAsset, &_s9Coherence7CRAssetVSgMd);

  v1 = *(v0 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
}

id UnknownCanvasElementView.__deallocating_deinit()
{
  if (*&v0[direct field offset for UnknownCanvasElementView.getImageTask])
  {

    MEMORY[0x1DA6CD3C0](v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UnknownCanvasElementView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id @objc UnknownCanvasElementView.__deallocating_deinit(char *a1)
{
  if (*&a1[direct field offset for UnknownCanvasElementView.getImageTask])
  {
    v2 = a1;

    MEMORY[0x1DA6CD3C0](v3, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    v4 = a1;
  }

  v6.receiver = a1;
  v6.super_class = type metadata accessor for UnknownCanvasElementView();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void @objc UnknownCanvasElementView.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of StocksKitCurrencyCache.Provider?(a1 + direct field offset for UnknownCanvasElementView.displayedAsset, &_s9Coherence7CRAssetVSgMd);

  v2 = *(a1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
}

Swift::Void __swiftcall UnknownCanvasElementView.layoutSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - v4;
  v6 = type metadata accessor for UnknownCanvasElementView();
  v53.receiver = v1;
  v53.super_class = v6;
  objc_msgSendSuper2(&v53, sel_layoutSubviews);
  v7 = *(v1 + direct field offset for UnknownCanvasElementView.thumbnailView);
  [v1 bounds];
  [v7 setFrame_];

  v8 = *(v1 + direct field offset for UnknownCanvasElementView.blurEffectView);
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v1 bounds];
  v18 = v17 * 0.2;
  [v1 bounds];
  v20 = v19 * 0.2;
  v54.origin.x = v10;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v18, v20);
  [v8 setFrame_];
  v21 = *(v1 + direct field offset for UnknownCanvasElementView.questionMarkView);
  [v8 bounds];
  [v21 setFrame_];

  v22 = *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
  if (v22)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = v22;
    v49 = v24;
    if (Strong)
    {
      [Strong bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v56.origin.x = v26;
      v56.origin.y = v28;
      v56.size.width = v30;
      v56.size.height = v32;
      v57 = CGRectIntegral(v56);
    }

    else
    {
      [v24 frame];
    }

    width = v57.size.width;
    height = v57.size.height;
    v35 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v48 = *(v3 + 16);
    v36 = v48(v5, v1 + v35, v2);
    v47 = &v47;
    MEMORY[0x1EEE9AC00](v36);
    v37 = type metadata accessor for UnknownCanvasElement(0);
    *(&v47 - 4) = v37;
    v38 = lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
    *(&v47 - 3) = v38;
    *(&v47 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39 = *(v3 + 8);
    v39(v5, v2);
    v40 = v52 - height;
    v41 = v48(v5, v1 + v35, v2);
    MEMORY[0x1EEE9AC00](v41);
    *(&v47 - 4) = v37;
    *(&v47 - 3) = v38;
    *(&v47 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39(v5, v2);
    v42 = v50;
    v43 = v51;
    [v1 frame];
    v46 = v49;
    [v49 setFrame_];
  }
}

void @objc UnknownCanvasElementView.layoutSubviews()(void *a1)
{
  v1 = a1;
  UnknownCanvasElementView.layoutSubviews()();
}

uint64_t type metadata accessor for UnknownCanvasElementView()
{
  result = type metadata singleton initialization cache for UnknownCanvasElementView;
  if (!type metadata singleton initialization cache for UnknownCanvasElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UnknownCanvasElementView()
{
  type metadata accessor for CRAsset?();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

Swift::Void __swiftcall UnknownCanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v106 = &v101 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v104 = &v101 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v111 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v101 - v12;
  v115 = type metadata accessor for CRAsset();
  v114 = *(v115 - 8);
  v13 = MEMORY[0x1EEE9AC00](v115);
  v108 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v101 - v15;
  v109 = type metadata accessor for UnknownCanvasElement(0);
  MEMORY[0x1EEE9AC00](v109);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v18 = *(v123 - 8);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v101 - v22;
  specialized CanvasElementView.updateGestures()();
  specialized CanvasElementView.updateFrame()();
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v25 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v26 = *((*v24 & *v1) + 0x3F0);
  swift_beginAccess();
  v27 = *(v18 + 16);
  v29 = v122;
  v28 = v123;
  v27(v122, &v1[v26], v123);
  Capsule.root.getter();
  outlined destroy of UnknownCanvasElement(v17);
  v30 = *(v18 + 8);
  v30(v29, v28);
  v118 = v26;
  v121 = v27;
  v117 = v18 + 16;
  v27(v21, &v1[v26], v28);
  swift_getKeyPath();
  v31 = v113;
  Capsule.subscript.getter();

  v119 = v30;
  v120 = v18 + 8;
  v30(v21, v28);
  v32 = v114;
  v33 = *(v114 + 48);
  v34 = v115;
  v35 = &unk_1EC7C3000;
  v36 = &unk_1EC7C3000;
  if (v33(v31, 1, v115) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence7CRAssetVSgMd);
    [*&v1[direct field offset for UnknownCanvasElementView.thumbnailView] setImage_];
    v37 = 0;
    v38 = v1;
    goto LABEL_26;
  }

  v39 = *(v32 + 32);
  v40 = v116;
  v103 = v32 + 32;
  v102 = v39;
  v39(v116, v31, v34);
  [v1 bounds];
  Width = CGRectGetWidth(v127);
  [v1 bounds];
  Height = CGRectGetHeight(v128);
  if (Width > Height)
  {
    v43 = Width;
  }

  else
  {
    v43 = Height;
  }

  v44 = [v1 window];
  v38 = v1;
  if (v44)
  {
    v45 = v44;
    v46 = [v44 screen];

    [v46 scale];
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v110;
  v50 = v111;
  v51 = v43 * v48;
  if (COERCE__INT64(fabs(v43 * v48)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v113 = v51;
  v101 = *(v32 + 16);
  v101(v111, v40, v34);
  (*(v32 + 56))(v50, 0, 1, v34);
  v52 = direct field offset for UnknownCanvasElementView.displayedAsset;
  swift_beginAccess();
  v53 = *(v107 + 48);
  outlined init with copy of CRAsset?(v50, v49);
  outlined init with copy of CRAsset?(&v38[v52], v49 + v53);
  if (v33(v49, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence7CRAssetVSgMd);
    if (v33(v49 + v53, 1, v34) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence7CRAssetVSgMd);
      v54 = v116;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v55 = v104;
  outlined init with copy of CRAsset?(v49, v104);
  if (v33(v49 + v53, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence7CRAssetVSgMd);
    (*(v32 + 8))(v55, v34);
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence7CRAssetVSg_ADtMd);
    v54 = v116;
LABEL_23:
    v111 = direct field offset for UnknownCanvasElementView.getImageTask;
    if (*&v38[direct field offset for UnknownCanvasElementView.getImageTask])
    {

      MEMORY[0x1DA6CD3C0](v60, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v61 = type metadata accessor for TaskPriority();
    v62 = v106;
    (*(*(v61 - 8) + 56))(v106, 1, 1, v61);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = v108;
    v101(v108, v54, v34);
    v65 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v66 = (v105 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    v102(v67 + v65, v64, v34);
    v37 = v113;
    *(v67 + v66) = v113;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
    v68 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in UnknownCanvasElementView.updateUI(), v67);
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_sScPSgMd);
    (*(v32 + 8))(v116, v34);
    *&v38[v111] = v68;

    v36 = &unk_1EC7C3000;
    v35 = &unk_1EC7C3000;
    goto LABEL_26;
  }

  v56 = (v49 + v53);
  v57 = v108;
  v102(v108, v56, v34);
  lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v32 + 8);
  v59(v57, v34);
  outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence7CRAssetVSgMd);
  v59(v55, v34);
  outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence7CRAssetVSgMd);
  v54 = v116;
  if ((v58 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (*&v38[direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels] != v113)
  {
    goto LABEL_23;
  }

  (*(v32 + 8))(v54, v34);
  v36 = &unk_1EC7C3000;
  v35 = &unk_1EC7C3000;
  v37 = v113;
LABEL_26:
  *&v38[v35[400]] = v37;
  v70 = v122;
  v69 = v123;
  v121(v122, &v38[v118], v123);
  swift_getKeyPath();
  v71 = v112;
  Capsule.subscript.getter();

  v119(v70, v69);
  v72 = v36[399];
  swift_beginAccess();
  outlined assign with take of CRAsset?(v71, &v38[v72]);
  swift_endAccess();
  v73 = *&v38[direct field offset for UnknownCanvasElementView.appearanceStreamView];
  if (v73)
  {
    v74 = swift_unknownObjectWeakLoadStrong();
    v75 = v73;
    v116 = v75;
    if (v74)
    {
      [v74 bounds];
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;

      v129.origin.x = v77;
      v129.origin.y = v79;
      v129.size.width = v81;
      v129.size.height = v83;
      v130 = CGRectIntegral(v129);
    }

    else
    {
      [v75 frame];
    }

    v84 = v130.size.width;
    v85 = v130.size.height;
    v86 = v118;
    v88 = v122;
    v87 = v123;
    v89 = (v121)(v122, &v38[v118], v123, v130.origin, *&v130.origin.y);
    v115 = v38;
    MEMORY[0x1EEE9AC00](v89);
    v90 = v109;
    *(&v101 - 4) = v109;
    v91 = lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
    *(&v101 - 3) = v91;
    *(&v101 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v92 = v119;
    v119(v88, v87);
    v93 = v126 - v85;
    v94 = v115;
    v95 = (v121)(v88, v115 + v86, v87);
    MEMORY[0x1EEE9AC00](v95);
    *(&v101 - 4) = v90;
    *(&v101 - 3) = v91;
    *(&v101 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v92(v88, v87);
    v96 = v124;
    v97 = v125;
    [v94 frame];
    v100 = v116;
    [v116 setFrame_];
  }
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = closure #1 in UnknownCanvasElementView.updateUI();

  return CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(a5, 1, 0);
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), 0, 0);
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()()
{
  v1 = v0[7];
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[8] = Strong;
    if (Strong)
    {
      type metadata accessor for MainActor();
      v0[9] = static MainActor.shared.getter();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), v4, v3);
    }
  }

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *&v1[direct field offset for UnknownCanvasElementView.thumbnailView];
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v5 = v3;
  v6 = [v4 initWithCGImage_];
  [v5 setImage_];

  return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void type metadata accessor for CRAsset?()
{
  if (!lazy cache variable for type metadata for CRAsset?)
  {
    type metadata accessor for CRAsset();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRAsset?);
    }
  }
}

uint64_t outlined destroy of UnknownCanvasElement(uint64_t a1)
{
  v2 = type metadata accessor for UnknownCanvasElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of CRAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CRAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in UnknownCanvasElementView.updateUI()(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement()
{
  result = lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement;
  if (!lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement);
  }

  return result;
}

unint64_t type metadata accessor for PDFAnnotation()
{
  result = lazy cache variable for type metadata for PDFAnnotation;
  if (!lazy cache variable for type metadata for PDFAnnotation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PDFAnnotation);
  }

  return result;
}

id specialized UnknownCanvasElementView.appearanceStreamView.setter(void *a1)
{
  v2 = direct field offset for UnknownCanvasElementView.appearanceStreamView;
  v3 = *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
  *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView) = a1;
  v4 = a1;

  [*(v1 + direct field offset for UnknownCanvasElementView.thumbnailView) setHidden_];
  v5 = *(v1 + direct field offset for UnknownCanvasElementView.blurEffectView);
  v6 = *(v1 + v2) != 0;

  return [v5 setHidden_];
}

uint64_t PKStrokeProperties.additionalFields.getter()
{
  type metadata accessor for PKStrokeProperties(0);
}

uint64_t PKStrokeProperties.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PKStrokeProperties(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) > 8)
  {
    *v1 = 9;
  }

  else
  {
    *v1 = byte_1D405A5FA[rawValue + 1];
  }

  return rawValue;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7367616C665FLL && stringValue._object == 0xE600000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x444970756F7267 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x7079546570616873 && object == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 1752457584 && object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1802723693 && object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6E616C5070696C63 && object == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x6E6172546B6E695FLL && object == 0xED00006D726F6673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x72477265646E6572 && object == 0xED0000444970756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 7;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001D4081FF0 == object)
  {

    v7 = 8;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 8;
    }

    else
    {
      v7 = 9;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = v1;
  result.value = PKStrokeProperties.CodingKeys.init(rawValue:)(intValue).value;
  *v2 = v4;
  return result;
}

uint64_t PKStrokeProperties.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7367616C665FLL;
    v7 = 0x7079546570616873;
    if (v1 != 2)
    {
      v7 = 1752457584;
    }

    if (*v0)
    {
      v6 = 0x444970756F7267;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6172546B6E695FLL;
    v3 = 0x72477265646E6572;
    if (v1 != 7)
    {
      v3 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1802723693;
    if (v1 != 4)
    {
      v4 = 0x6E616C5070696C63;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKStrokeProperties.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](qword_1D405A608[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKStrokeProperties.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](qword_1D405A608[v1]);
  return Hasher._finalize()();
}

PaperKit::PKStrokeProperties::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance PKStrokeProperties.CodingKeys@<W0>(Swift::Int a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = PKStrokeProperties.CodingKeys.init(rawValue:)(a1).value;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  v5 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}