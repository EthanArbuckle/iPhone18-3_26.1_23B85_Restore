uint64_t sub_1C136F830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isStopped.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C136F88C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return AnimationPlaybackController.time.setter();
}

uint64_t sub_1C136F8B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = swift_weakLoadStrong();
  }

  *a2 = result;
  return result;
}

void *sub_1C136F8F4(void *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = *a2;
    return swift_weakAssign();
  }

  return result;
}

CMTimebaseRef sub_1C136F9B8@<X0>(uint64_t *a1@<X0>, CMTimebaseRef *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.clock.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C136F9E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return AnimationPlaybackController.clock.setter();
}

uint64_t sub_1C136FA10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C136FAB8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136FAF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136FB48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  REEntityGetName();
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C136FB7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return Entity.name.setter();
}

uint64_t sub_1C136FBDC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static Entity.__disableUpdateInteractionEntities;
}

uint64_t sub_1C136FC30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C136FC98()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void _s17RealityFoundation25_Proto_MeshDeformation_v1V21CustomDeformerBuilderV8InputGPUVAE0iJ0AaeHP4specAC0gH4SpecVvgTW_0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  *a1 = *(v1 + 16);
  *(a1 + 1) = v2;
}

uint64_t sub_1C136FCE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C136FD3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

float sub_1C136FD98@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasPerspectiveCamera.camera.getter(&v6);
  result = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = result;
  *(a2 + 12) = v5;
  return result;
}

uint64_t sub_1C136FDE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  return HasPerspectiveCamera.camera.setter(&v6);
}

__n128 sub_1C136FE38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C136FE78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if ((*(v0 + 80) - 1) >= 2)
  {
  }

  outlined consume of DirectUniformsState(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  v4 = *(v0 + 184);

  if (*(v0 + 232))
  {

    v5 = *(v0 + 248);
  }

  if (*(v0 + 280))
  {

    v6 = *(v0 + 296);
  }

  if ((*(v0 + 328) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 370, 7);
}

uint64_t sub_1C136FF60(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  return CustomMaterial.SurfaceShader.library.setter(v2);
}

unint64_t sub_1C13701D0@<X0>(uint64_t a1@<X8>)
{
  result = CustomMaterial.opacityThreshold.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C1370208@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 48))
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 40);
    if (v2 >= 3)
    {
      LOBYTE(v2) = 2;
    }

    *a2 = v2;
  }

  return result;
}

unsigned __int8 *sub_1C137022C(unsigned __int8 *result, uint64_t a2)
{
  *(a2 + 40) = *result;
  *(a2 + 48) = 0;
  return result;
}

double sub_1C137023C@<D0>(uint64_t a1@<X8>)
{
  CustomMaterial.blending.getter(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 20) = v3;
  *(a1 + 16) = v2;
  return result;
}

void sub_1C1370288(__int128 *a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 20);
  v3 = *a1;
  v5 = v2;
  v4 = v1;
  CustomMaterial.process(blending:doShaderUpdate:)(&v3, 1);
}

uint64_t sub_1C13705E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

char *sub_1C1370834(char *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 170) = *result;
  *(a2 + 171) = v2 ^ 1;
  return result;
}

float sub_1C1370848@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 216);
  *a2 = result;
  return result;
}

float *sub_1C1370854(float *result, uint64_t a2)
{
  v2 = fminf(*result, 2.0);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  *(a2 + 216) = v2;
  return result;
}

uint64_t sub_1C1370884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 576), 0x141uLL);
  memcpy(a2, (a1 + 576), 0x141uLL);
  return outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(__dst, &v5);
}

uint64_t sub_1C1370904@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(*a1 + 16) + 16);
  result = DRBufferGetBytesUsed();
  *a2 = result / 64;
  return result;
}

uint64_t sub_1C1370964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(*a1 + 16) + 16);
  result = DRBufferGetBytesUsed();
  *a2 = result;
  return result;
}

uint64_t sub_1C1370998@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  if (*a2 >= *(*result + 16))
  {
    result = 0;
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(*result + 8 * v4 + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C13709EC(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;

  return _proto_MeshInstancesComponent.subscript.setter(v5, v3);
}

uint64_t sub_1C1370A78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s17RealityFoundation25ConstantRadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOs0G3KeyAAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x646F4D6563726F66;
  }

  else
  {
    result = 0x6874676E65727473;
  }

  *v0;
  return result;
}

uint64_t sub_1C1370B1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for ForceEffect() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1C1370BF0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1370C38()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1C1370C9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1C1370CC4(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1C1370D10(double *a1, uint64_t *a2)
{
  v2 = *a2;
  MEMORY[0x1C68F7300](*(*a2 + 24), *(*a2 + 32), *a1);
  v3 = *(v2 + 24);

  return RENetworkMarkComponentDirty();
}

uint64_t sub_1C1370D50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C1370EC4(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

__n128 sub_1C1370F50@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  UniformParameters.subscript.getter(v7);
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v8;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

float sub_1C1370FE8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1C1371030(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

float sub_1C137107C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 20);
  *a2 = result;
  return result;
}

uint64_t sub_1C13710C4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 20) = v2;
  return result;
}

float sub_1C1371110@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1C1371158(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1C13711F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1371230()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 26) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C1371324()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C137135C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v3 | 7);
}

uint64_t sub_1C1371438()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1371480()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C13714C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13714F8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 69) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 48);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v3 | 7);
}

uint64_t sub_1C13715D4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 69) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 48);

  v12 = *(v0 + v7);

  v13 = *(v0 + v8 + 8);

  v14 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v3 | 7);
}

uint64_t sub_1C13716CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C13717A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C137184C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C1371858@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasSpotLight.shadow.getter(&v7);
  v4 = v8;
  v5 = v9;
  result = *&v7;
  *a2 = v7;
  *(a2 + 20) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1C13718A4(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20);
  v4 = *a2;
  v6 = *a1;
  v8 = v3;
  v7 = v2;
  return HasSpotLight.shadow.setter(&v6);
}

float sub_1C1371994@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 28);
  *a2 = result;
  return result;
}

float *sub_1C13719A0(float *result, uint64_t a2)
{
  v2 = *result;
  if (*result <= 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  *(a2 + 28) = v2;
  return result;
}

uint64_t sub_1C13719C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1C13719DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[6];
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  a2[6] = v3;
  a2[7] = v4;
  a2[8] = v5;
  return result;
}

uint64_t sub_1C1371A34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame;
  return result;
}

uint64_t sub_1C1371A80(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame = v1;
  return result;
}

uint64_t sub_1C1371AC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _Proto_MeshDeformation_v1.VertexTypeOptions.all;
  return result;
}

uint64_t sub_1C1371B14(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.all = v1;
  return result;
}

uint64_t sub_1C1371C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
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
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C1371CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C1371DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1371E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1371EA4()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1371EE4()
{
  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1371F2C()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);
  v2 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1371F74()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C1372068()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C1372138()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1372180()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  outlined consume of DirectUniformsState(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_1C13721E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C1372244()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C137229C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13722D4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1372354()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 16), *(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1372398()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C13723E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1372424()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C13724F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1372550()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1372594()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  v5 = *(v0 + 176);

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1C1372614()
{
  v1 = *(v0 + 24);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1C1372684()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  v10 = v0 + v6;
  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  v11 = (v6 + 95) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v10 + 80);

  v15 = *(v0 + v11);

  __swift_destroy_boxed_opaque_existential_1((v0 + v12));

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v3 | 7);
}

uint64_t sub_1C13727DC()
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = *(*(Information - 8) + 64);
  v4 = v0[3];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  v5 = (v2 + 136) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[15];

  v11 = v0[16];

  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v0 + v5, v12);
  v13 = *(v0 + v5 + *(Information + 20) + 8);

  v14 = *(v0 + v6);

  v15 = *(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v2 | 7);
}

uint64_t sub_1C137294C()
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = *(*(Information - 8) + 64);
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v4 = (v2 + 88) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[8];

  v9 = v0[10];

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v0 + v4, v10);
  v11 = *(v0 + v4 + *(Information + 20) + 8);

  v12 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_1C1372AA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_BYTE *sub_1C1372AEC(_BYTE *result, char *a2)
{
  v2 = *a2;
  if (*result == 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 3;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 2;
  }

  *a2 = v3;
  return result;
}

_BYTE *sub_1C1372B38(_BYTE *result, char *a2)
{
  v2 = *a2 & 0xFE;
  if (*result == 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 3;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C1372B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C1372C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C1372CF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1372D8C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372DC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372E10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1372E84()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1372EC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v5 = (v3 + 64) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[7];

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C1372FC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v5 = (v3 + 64) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[7];

  (*(v2 + 8))(v0 + v5, v1);

  v9 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1C13730C8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C13731A4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = v0 + v6;
  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  v9 = (v6 + 95) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v8 + 80);

  v13 = *(v0 + v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + v10));

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v3 | 7);
}

uint64_t sub_1C13732A0()
{
  v1 = *(v0 + 24);

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1C1373318()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1373368()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C13733C8()
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = *(*(Information - 8) + 64);
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v4 = (v2 + 88) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[8];

  v9 = v0[10];

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v0 + v4, v10);
  v11 = *(v0 + v4 + *(Information + 20) + 8);

  v12 = *(v0 + v6);

  v13 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v2 | 7);
}

uint64_t sub_1C1373520()
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = *(*(Information - 8) + 64);
  v4 = v0[3];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  v5 = (v2 + 136) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[15];

  v11 = v0[16];

  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v0 + v5, v12);
  v13 = *(v0 + v5 + *(Information + 20) + 8);

  v14 = *(v0 + v6);

  v15 = *(v0 + v8);

  v16 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v2 | 7);
}

uint64_t sub_1C1373698()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8);

  v13 = v0 + v9;
  if (*(v0 + v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v9));
  }

  v14 = (v9 + 95) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v13 + 80);

  v19 = *(v0 + v14);

  v20 = *(v0 + v15 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v16));

  return MEMORY[0x1EEE6BDD0](v0, v17 + 8, v3 | 7);
}

uint64_t sub_1C13737D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C13738B0()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v2 = v0[14];

  v3 = v0[16];

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1C1373908()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  v1 = *(v0 + 104);

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  v4 = *(v0 + 144);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1C13739A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C1373BDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1373C14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1373C4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

unint64_t sub_1C1373F54@<X0>(uint64_t a1@<X8>)
{
  result = PhysicallyBasedMaterial.opacityThreshold.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C1373FC8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 88) & 1) == 0)
  {
    if (*(result + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 80);
    }
  }

  *a2 = v2;
  return result;
}

void sub_1C1374038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  outlined init with copy of PhysicallyBasedMaterial.Blending(v3, v2);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v3);
}

uint64_t sub_1C137428C(uint64_t *a1)
{
  v1 = *a1;

  specialized PhysicallyBasedMaterial.program.setter(v2);
}

uint64_t sub_1C1374300()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

uint64_t sub_1C1374448()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374480()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13744C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1374508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C1374550(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1C1374594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1C13745DC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 25) = v2;
  return result;
}

uint64_t sub_1C1374620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_1C1374668(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 26);
  *(v3 + 26) = v2;
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v4);
}

uint64_t sub_1C13746D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1C1374724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C1374774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1C13747C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C13748CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374904()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 77, 7);
}

uint64_t sub_1C137493C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REAudioFileAssetGetLoopCount();
  *a2 = result == -1;
  return result;
}

uint64_t sub_1C1374974(unsigned __int8 *a1, uint64_t a2)
{
  v2 = (*a1 << 31 >> 31);
  v3 = *(*a2 + 16);
  return REAudioFileAssetSetLoopCount();
}

double sub_1C13749A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_Tt0B5(*a1, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1C1374A94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1374ACC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 37, 7);
}

uint64_t sub_1C1374B04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1C1374B80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1C1374B94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  a2[3] = *a1;
  a2[4] = v3;
  a2[5] = v4;
  return result;
}

uint64_t sub_1C1374BA8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  simd_matrix4x4(*(a1 + 48));
  result = REAABBTransform();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

__n128 sub_1C1374C0C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 48) = xmmword_1C1887660;
  *(a2 + 64) = result;
  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1C1374C24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C1374CE0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1374D8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  outlined consume of DirectUniformsState(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C1374DEC()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1374E2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1374E68()
{
  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1374EB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1374F20@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 120) & 1) == 0)
  {
    if (*(result + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 112);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C1374FA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1374FE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Scene.physicsOrigin.getter();
  *a2 = result;
  return result;
}

uint64_t *sub_1C1375014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Scene.physicsOrigin.setter(v4);
}

float sub_1C1375040@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasPointLight.light.getter(v5);
  result = v6;
  *a2 = v5[0];
  *(a2 + 8) = v5[1];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1C137509C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C13750A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  REAudioGeneratorAssetGetComponentDescription();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1C13750F0(__int128 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 4);
  return REAudioGeneratorAssetSetComponentDescription();
}

uint64_t sub_1C1375140()
{
  if (*(v0 + 72) >= 6uLL)
  {
  }

  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  v7 = *(v0 + 208);

  v8 = *(v0 + 216);

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1C13751D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375208()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  if (*(v0 + 112) >= 6uLL)
  {
  }

  v2 = *(v0 + 152);

  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1C1375288()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13752C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1375308()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375340()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C137538C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C13753C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1375504@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1375534@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1375564@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C13756D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375708()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1375748()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13757CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v0[2];

  v11 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v12 = v0[9];

  (*(v2 + 8))(v0 + v4, v1);
  v13 = (v0 + v5);

  if (*(v0 + v5 + 48) >= 6uLL)
  {
  }

  v14 = (v5 + v8 + 123) & ~v8;
  v15 = v13[11];

  v16 = v13[12];

  v17 = v13[13];

  v18 = v13[14];

  (*(v7 + 8))(v0 + v14, v6);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v9, v3 | v8 | 7);
}

uint64_t sub_1C137599C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C13759D4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[8].n128_u8[0];
  result = v3[7];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C1375A24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  result = swift_beginAccess();
  *(v5 + 112) = v2;
  *(v5 + 120) = v3;
  *(v5 + 128) = v4;
  return result;
}

__n128 sub_1C1375A78@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[10].n128_u8[0];
  result = v3[9];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C1375AC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  result = swift_beginAccess();
  *(v5 + 144) = v2;
  *(v5 + 152) = v3;
  *(v5 + 160) = v4;
  return result;
}

uint64_t sub_1C1375B1C()
{
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C1375B78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375BB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C1375C0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = Entity.defaultAnimationClock.getter();
  *a2 = result;
  return result;
}

float sub_1C1375C60@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = (*a1 * 180.0) / 3.1416;
  *a2 = result;
  return result;
}

float sub_1C1375C88(float *a1, float *a2)
{
  result = (*a1 * 3.1416) / 180.0;
  *a2 = result;
  return result;
}

void sub_1C1375CC0(uint64_t a1@<X0>, CMTimebaseRef *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  key path getter for PhysicsSimulationComponent.clock : PhysicsSimulationComponent(a1, a2);
}

void sub_1C1375D18(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  PhysicsSimulationComponent.clock.setter(v2);
}

uint64_t sub_1C1375D4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1375D84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1375DC4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static SpatialTrackingManager.shared;
}

uint64_t sub_1C1375E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C1375E60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C1375EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C1375EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of [String : String](v3 + 56, a2, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
}

uint64_t sub_1C1375F5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_1C1375FA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 144) = v2;
  return result;
}

uint64_t sub_1C1375FE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

int64_t sub_1C1376024@<X0>(__int128 *a1@<X0>, int64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  result = SkeletalPose.jointNames.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376078(uint64_t *a1)
{
  v1 = *a1;

  return SkeletalPose.jointNames.setter(v2);
}

uint64_t sub_1C13760A8(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];

  return SkeletalPose.subscript.setter(a1, v4, v5);
}

uint64_t sub_1C1376170()
{
  v1 = *(v0 + 24);

  outlined consume of BindTarget(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 133, 7);
}

uint64_t sub_1C13761B4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1C1376234()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  return MEMORY[0x1EEE6BDD0](v0, 329, 15);
}

uint64_t sub_1C13762BC()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  if (*(v0 + 224) != 1)
  {
  }

  if (*(v0 + 232) != 1)
  {
  }

  if (*(v0 + 240) != 1)
  {
  }

  v8 = *(v0 + 296);

  v9 = *(v0 + 312);

  return MEMORY[0x1EEE6BDD0](v0, 320, 15);
}

uint64_t sub_1C137637C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 456);

  v9 = *(v0 + 472);

  return MEMORY[0x1EEE6BDD0](v0, 480, 15);
}

uint64_t sub_1C1376414()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 296);

  v9 = *(v0 + 312);

  return MEMORY[0x1EEE6BDD0](v0, 320, 15);
}

uint64_t sub_1C13764A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    outlined consume of BindTarget(*(v0 + 136), *(v0 + 144), v4);
  }

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 208);
  if (v7 != 255)
  {
    outlined consume of BindTarget(*(v0 + 192), *(v0 + 200), v7);
  }

  v8 = *(v0 + 224);

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1C137652C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1C13765C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1376638@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetGenerateVertexFaceAdjacencyAttributes();
  *a2 = result;
  return result;
}

uint64_t sub_1C137667C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetReorderVertexCaching();
  *a2 = result;
  return result;
}

uint64_t sub_1C13766C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetRepairTangents();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetMergeVerticesIfPolygonSoup();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetPreserveSharpFeatures();
  *a2 = result;
  return result;
}

uint64_t sub_1C137678C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetPreserveSubdivisonSurfaceData();
  *a2 = result;
  return result;
}

uint64_t sub_1C13767D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REMeshCompileOptionsGetGenerateDecimatedMesh();
  *a2 = result;
  return result;
}

uint64_t sub_1C1376814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  result = __MeshCompileOptions.subscript.getter(&v8);
  *a3 = v8;
  return result;
}

uint64_t sub_1C1376854(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a2;
  v7 = *a1;

  return __MeshCompileOptions.subscript.setter(&v7);
}

uint64_t sub_1C13768BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_BYTE *sub_1C1376950(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_1C1376AD8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = type metadata accessor for AnchoringComponent(0);
  v5 = *(a1 + *(result + 20));
  if (v5 >= 3)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1376B18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AnchoringComponent(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_1C1376B4C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for AnchoringComponent(0);
  *a2 = *(a1 + *(result + 24)) == 1;
  return result;
}

uint64_t sub_1C1376B8C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AnchoringComponent(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

__n128 sub_1C1376C50@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasPhysicsBody.physicsBody.getter(v9);
  v4 = v10[0];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v4;
  *(a2 + 156) = *(v10 + 12);
  v5 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v5;
  v6 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v6;
  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  result = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1C1376CB4(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[9];
  v11[8] = a1[8];
  v12[0] = v3;
  *(v12 + 12) = *(a1 + 156);
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[7];
  v11[6] = a1[6];
  v11[7] = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  v8 = *a2;
  outlined init with copy of PhysicsBodyComponent?(v11, &v10);
  return HasPhysicsBody.physicsBody.setter(a1);
}

__n128 sub_1C1376D3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C1376D48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasPhysicsMotion.physicsMotion.getter(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1C1376D8C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return HasPhysicsMotion.physicsMotion.setter(v6);
}

__n128 sub_1C1376E6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1376E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BodyTrackingComponent.Target(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C1376F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BodyTrackingComponent.Target(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C1376FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1377074(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C1377124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C1377174()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13771F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1377234()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

void sub_1C13772F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 96);
  specialized Material.getLegacyBase(legacy:)(*(a1 + 80), *(a1 + 88), *(a1 + 104), &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t sub_1C1377344(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of __MaterialColorParameter(v3, v1);
  return UnlitMaterial.__baseColor.setter(&v3);
}

unint64_t sub_1C13773C4@<X0>(uint64_t a1@<X8>)
{
  result = specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

double sub_1C13773FC@<D0>(uint64_t a1@<X8>)
{
  UnlitMaterial.blending.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_1C1377440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  outlined init with copy of PhysicallyBasedMaterial.Blending(v3, v2);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v3);
}

uint64_t sub_1C13774EC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 128) & 1) == 0)
  {
    if (*(result + 120) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 120);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t _s17RealityFoundation31PhysicallyBasedMaterialResourceC0A3Kit0E0AadEP16__parameterBlockAD021__RKMaterialParameterI0VvgTW_0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = MEMORY[0x1E69E7CC0];
  result = REMaterialParameterBlockValueCreate();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1C1377608@<X0>(uint64_t a1@<X8>)
{
  result = REMaterialParameterBlockValueCreate();
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1C1377688@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REUnlitMaterialParametersGetOpacityThreshold();
  *a2 = v5;
  return result;
}

float sub_1C137788C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998A88];

  return keypath_get_25Tm(a1, v3, a2, 1.0);
}

float sub_1C1377AE0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998AB8];

  return keypath_get_25Tm(a1, v3, a2, 0.0);
}

uint64_t sub_1C1377C14(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA9TransformV_TtB5Tf4ndn_n(v4, *a2);
}

uint64_t sub_1C1377E1C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(v4, 0, *a2);
}

__n128 sub_1C1377E70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1C1377E98(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1C1377F14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1377F68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);

  *(a2 + 16) = v3;
  return result;
}

double sub_1C1377FAC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *a1;
  BlendShapeWeightsSet.default.getter(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1378018(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

void sub_1C1378068(uint64_t *a1)
{
  v1 = *a1;

  BlendShapeWeightsComponent.weightSet.setter(&v1);
}

uint64_t sub_1C13780FC@<X0>(void **a1@<X8>)
{
  *a1 = specialized static __ServiceLocator.__sharedEngine.getter();
}

uint64_t sub_1C1378134(uint64_t *a1)
{
  v1 = *a1;

  return specialized static __ServiceLocator.__sharedEngine.setter(v2);
}

uint64_t sub_1C1378160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C13781A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C13781EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  result = swift_unownedRetainStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1378244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of __REAssetService(v3 + 80, a2);
}

uint64_t sub_1C1378294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of __REAssetService(v3 + 120, a2);
}

uint64_t sub_1C13782EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 217);
  return result;
}

uint64_t sub_1C1378334(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 217) = v2;
  return result;
}

void sub_1C1378378(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = specialized simd_float4x4.init(translation:rotation:scale:)(*(a1 + 32), *(a1 + 16), COERCE_FLOAT(*a1));
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

double sub_1C13783AC(_OWORD *a1, _OWORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  *&result = key path setter for Transform.matrix : Transform(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1C1378410(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REAudioFileAssetSetInputMode();
}

uint64_t sub_1C1378434()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C137846C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C137856C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13785BC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

uint64_t sub_1C1378614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C137864C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C137868C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 45, 7);
}

uint64_t sub_1C1378714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = HasHierarchy.children.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1C1378750(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return HasHierarchy.children.setter(&v4);
}

__n128 sub_1C1378798(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C13787A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C13787F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C1378844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C137888C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C13788D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for AudioTimeStamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MTLTextureSwizzleChannels(uint64_t result, int a2, int a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1C68F4BF0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = MEMORY[0x1C68F4BE0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  MEMORY[0x1C68F4C10](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  v5 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v5, MEMORY[0x1E69695C8]);
}

{
  v3 = *(v1 + 40);
  type metadata accessor for AnyKeyPath();
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *(v1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v13 = *(a1 + 112);
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  Hasher.init(_seed:)();
  CustomMaterial.CustomShaderParameters.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ALCService.GenerationOption();
  v5 = MEMORY[0x1E698A848];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ALCService.GenerationOption and conformance ALCService.GenerationOption, MEMORY[0x1E698A848]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E698A848], &lazy protocol witness table cache variable for type ALCService.GenerationOption and conformance ALCService.GenerationOption, v5, MEMORY[0x1E698A868]);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)()
{
  type metadata accessor for TextureResource.LoadError();

  return swift_storeEnumTagMultiPayload();
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MTLTextureUsage@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MTLTextureUsage@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for BlendTreeNode.name.getter in conformance BlendTreeInvalidNode()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *protocol witness for Collection.index(after:) in conformance PhysicsJoints@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance PhysicsJoints(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for BlendTreeNode.name.setter in conformance BlendTreeInvalidNode(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance PhysicsJoints@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PhysicsJoints(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t Material.__triangleFillMode.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a2, a3);
}

{
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a2, a3);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void *specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized static __RKEntityTriggerSpecification.generateCollisionTriggerSpecifications(decodeContext:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x696669746E656469, 0xEA00000000007265, 2, *a1);
  if (v4)
  {
    v6 = result;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v8 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1887600;
    v11 = (v5 + v10);
    *v11 = v6;
    v11[1] = v7;
    result = swift_storeEnumTagMultiPayload();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  return result;
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = MEMORY[0x1C68F3280](0x65636E6174736964, 0xE800000000000000);
  v8 = [v3 property_];

  if (v8)
  {
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, v3, v4, v5, v6, &v11, v10);
  *a2 = v11;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
  v2 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  result = swift_storeEnumTagMultiPayload();
  *a1 = v5;
  return result;
}

void *specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityTriggerSpecification])@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = implicit closure #5 in variable initialization expression of static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator(v5);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateAudioActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateChangeSceneActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = static __RKEntityActionSpecification.generateGroupActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateTransformActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  result = specialized static __RKEntityActionSpecification.generateVisibilityActionSpecifications(decodeContext:)(v5);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static __RKEntityActionSpecification.generateEmphasizeActionSpecifications(decodeContext:)(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized implicit closure #4 in variable initialization expression of static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

{
  result = specialized static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

{
  result = specialized static __RKEntityActionSpecification.generateStartAnimationActionSpecifications(decodeContext:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])(uint64_t a1@<X0>, void *a2@<X8>)
{
  specialized static __RKEntityActionSpecification.generateLookAtCameraActionSpecifications(decodeContext:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = v3;
}

{
  specialized static __RKEntityActionSpecification.generateSpinActionSpecifications(decodeContext:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = v3;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed USDDecodableContext) -> (@owned [__RKEntityActionSpecification])@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, *a1);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
  v5 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1887600;
  v9 = 1.0;
  if (v4 >= 0.0)
  {
    v9 = v4;
  }

  *(v8 + v7) = v9;
  result = swift_storeEnumTagMultiPayload();
  *a2 = v8;
  return result;
}

void specialized closure #1 in SetupPair.init<A, B>(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA010PointLightD0V_TtB5(GenericRGB, 0x4120000046D2A785, 0x40000000, 0, a1);
  }
}

{
  v2 = *a1;
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA016DirectionalLightD0V_TtB5(GenericRGB, 1158028115, 0, a1);
  }
}

{
  v2 = *a1;
  if (swift_conformsToProtocol2())
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09SpotLightD0V_TtB5(GenericRGB, 0x4234000045D2A785, 0x4120000042700000, 0x40000000, 0, a1);
  }
}

uint64_t specialized closure #1 in SetupPair.init<A, B>(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  result = swift_conformsToProtocol2();
  if (result)
  {

    return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0x7F8000003C23D70ALL, 0x142700000, a1);
  }

  return result;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10[-v4];
  v6 = *a1;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = type metadata accessor for AnchoringComponent(0);
    *(v5 + v8[5]) = 1;
    *(v5 + v8[6]) = 1;
    v9 = v5 + v8[7];
    v10[0] = 1;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    v9[64] = 1;
    *v5 = *zmmword_1C1887630;
    v5[1] = *&zmmword_1C1887630[16];
    v5[2] = *&zmmword_1C1887630[32];
    v5[3] = *&zmmword_1C1887630[48];
    type metadata accessor for AnchoringComponent.Target(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 1) + 56))(v5, 0, 1, v8);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09AnchoringD0V_TtB5(v5, 0, a1);
    return outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  }

  return result;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = type metadata accessor for BodyTrackingComponent(0);
    v5[*(v9 + 20)] = 0;
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA012BodyTrackingD0V_TtB5(v5, 0, a1);
    return outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  }

  return result;
}

uint64_t specialized closure #1 in SetupPair.init<A, B>(_:_:)(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  v3 = xmmword_1C1887610;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v2, 0, a1);

  return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(0, 1);
}

{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v3[0] = xmmword_1C1887620;
  v3[1] = static simd_quatf.identity;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA9TransformV_TtB5Tf4ndn_n(v3, a1);
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildBoxWithRoundedCornersOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildBoxWithRoundedCornersOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildBoxOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildBoxOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildCylinderOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildCylinderOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildConeOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildConeOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildCapsuleOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildCapsuleOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildSphereOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildSphereOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildPlaneOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildPlaneOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REComponentClassPtr()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CGColorRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CGColorRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance REShaderStage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REShaderStage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MTLPixelFormat()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CIContextOption(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CIContextOption(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CIContextOption@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1C68F3280](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMTimebaseRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance REShaderAPI()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REShaderAPI()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MTLTextureUsage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CGImageRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CGImageRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance REComponentClassPtr()
{
  v2 = *v0;
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIContextOption()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKDataType()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKDataType and conformance USKDataType, type metadata accessor for USKDataType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKDataType and conformance USKDataType, type metadata accessor for USKDataType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKRoleType()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKRoleType and conformance USKRoleType, type metadata accessor for USKRoleType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKRoleType and conformance USKRoleType, type metadata accessor for USKRoleType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CIContextOption@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1C68F3280](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance USKNodeType()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKNodeType and conformance USKNodeType, type metadata accessor for USKNodeType);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type USKNodeType and conformance USKNodeType, type metadata accessor for USKNodeType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CMTimebaseRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMTimebaseRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CIContextOption()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1C68F34C0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CIContextOption()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CIContextOption()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CIContextOption(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
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

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t outlined destroy of BodyTrackingComponent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double3x3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double3x3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 96) = v3;
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MTLTextureLevelInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MTLTextureLevelInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for REBlendWeightsMeshMap(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for REBlendWeightsMeshMap(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REVideoPlayerVideoReceiverEndpointChangedEvent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REVideoPlayerVideoReceiverEndpointChangedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REVideoPlayerViewingModeChangedEvent(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for REVideoPlayerViewingModeChangedEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for REEntityForceEffectComputeForcesEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REEntityForceEffectComputeForcesEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnchorStateDidFailToAnchorEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnchorStateDidFailToAnchorEvent(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RECollisionDidStartEventEx(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RECollisionDidStartEventEx(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
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

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventCreated(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventCreated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventResume(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 64))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventResume(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationTimelineEventSkipped(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationTimelineEventSkipped(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventEnd(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventEnd(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REAnimationHasTimelineEventStart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REAnimationHasTimelineEventStart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REBlendWeightsDefinition(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for REBlendWeightsDefinition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for REComponentClassPtr(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REComponentClassPtr(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMotionStateDidChangeEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMotionStateDidChangeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REGeomBuildExtrudedTextOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 35);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REGeomBuildExtrudedTextOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 35) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RESkeletalModelSpacePoseDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RESkeletalModelSpacePoseDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

void type metadata accessor for REAnchoringLocation(uint64_t a1, unint64_t *a2)
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

uint64_t SimpleMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26[-1] - v9;
  outlined init with copy of SimpleMaterial(v1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897F90;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  v12 = v1[5];
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (REMaterialAssetGetSourceName())
  {
    v14 = String.init(cString:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v11 + 48) = v14;
  *(v11 + 56) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = 0x726F6C6F63;
  *(v11 + 88) = 0xE500000000000000;
  *(v11 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v18 = swift_allocObject();
  *(v11 + 96) = v18;
  v26[3] = &type metadata for SimpleMaterial;
  v26[4] = &protocol witness table for SimpleMaterial;
  v26[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v1, v26[0] + 16);
  v19 = v1[10];
  v20 = v1[11];

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)((v18 + 16), v26, v19, v20);
  *(v11 + 128) = 0x63696C6C6174656DLL;
  *(v11 + 136) = 0xE800000000000000;
  *(v11 + 168) = &type metadata for MaterialScalarParameter;
  specialized Material.getScalarParameter(_:)(1, v26);
  v21 = v26[0];
  if (v26[0] >> 60 == 15)
  {
    v21 = 0;
  }

  *(v11 + 144) = v21;
  *(v11 + 176) = 0x73656E6867756F72;
  *(v11 + 184) = 0xE900000000000073;
  *(v11 + 216) = &type metadata for MaterialScalarParameter;
  specialized Material.getScalarParameter(_:)(0, v26);
  v22 = v26[0];
  if (v26[0] >> 60 == 15)
  {
    v22 = 1065353216;
  }

  *(v11 + 192) = v22;
  *(v11 + 224) = 0xD000000000000010;
  *(v11 + 232) = 0x80000001C18DDDE0;
  *(v11 + 264) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v11 + 240) = v1[15] == 1;
  v23 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t PhysicallyBasedMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v47 - v8;
  outlined init with copy of PhysicallyBasedMaterial(v1, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897FA0;
  *(v9 + 32) = 1701667182;
  *(v9 + 40) = 0xE400000000000000;
  v10 = *v1;
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (REMaterialAssetGetSourceName())
  {
    v12 = String.init(cString:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v9 + 48) = v12;
  *(v9 + 56) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = 0x6F6C6F4365736162;
  *(v9 + 88) = 0xE900000000000072;
  *(v9 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v16 = swift_allocObject();
  *(v9 + 96) = v16;
  v86 = &type metadata for PhysicallyBasedMaterial;
  v87 = &protocol witness table for PhysicallyBasedMaterial;
  v85[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v85[0] + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)((v16 + 16), v85, 0, 0);
  *(v9 + 128) = 0x73656E6867756F72;
  *(v9 + 136) = 0xE900000000000073;
  *(v9 + 168) = &type metadata for PhysicallyBasedMaterial.Roughness;
  v17 = swift_allocObject();
  *(v9 + 144) = v17;
  v86 = &type metadata for PhysicallyBasedMaterial;
  v87 = &protocol witness table for PhysicallyBasedMaterial;
  v85[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v85[0] + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v85, v17 + 16);
  *(v9 + 176) = 0x63696C6C6174656DLL;
  *(v9 + 184) = 0xE800000000000000;
  *(v9 + 216) = &type metadata for PhysicallyBasedMaterial.Metallic;
  v18 = swift_allocObject();
  *(v9 + 192) = v18;
  v86 = &type metadata for PhysicallyBasedMaterial;
  v87 = &protocol witness table for PhysicallyBasedMaterial;
  v85[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v85[0] + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v85, v18 + 16);
  *(v9 + 224) = 0x6C616D726F6ELL;
  *(v9 + 232) = 0xE600000000000000;
  *(v9 + 264) = &type metadata for PhysicallyBasedMaterial.Normal;
  v19 = swift_allocObject();
  *(v9 + 240) = v19;
  outlined init with copy of PhysicallyBasedMaterial(v2, v85);
  v20 = v87;

  v21 = v20;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v21, v78);
  if (v79 == 255)
  {
    __MaterialResource.subscript.getter(&v80);
  }

  else
  {
    v80 = v78[0];
    v81 = v78[1];
    v82 = v78[2];
    v83 = v78[3];
    v84 = v79;
  }

  v75 = v82;
  v76 = v83;
  v77 = v84;
  v73 = v80;
  v74 = v81;
  v22 = 0uLL;
  v47 = 0;
  if (v84 != 255)
  {
    if (v84 == 1)
    {
      v23 = DWORD2(v74);
      v24 = v74;
      v22 = v73;
      goto LABEL_12;
    }

    outlined destroy of BodyTrackingComponent?(&v73, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v22 = 0uLL;
  }

  v24 = 0;
  v23 = 0;
LABEL_12:
  *(v19 + 16) = v22;
  *(v19 + 32) = v24;
  *(v19 + 40) = v23;
  outlined destroy of PhysicallyBasedMaterial(v85);
  *(v9 + 272) = 0x676E69646E656C62;
  *(v9 + 280) = 0xE800000000000000;
  *(v9 + 312) = &type metadata for PhysicallyBasedMaterial.Blending;
  v25 = swift_allocObject();
  *(v9 + 288) = v25;
  PhysicallyBasedMaterial.blending.getter(v25 + 16);
  *(v9 + 320) = 0xD000000000000010;
  *(v9 + 328) = 0x80000001C18DDE00;
  *(v9 + 360) = &type metadata for PhysicallyBasedMaterial.AmbientOcclusion;
  v26 = swift_allocObject();
  *(v9 + 336) = v26;
  outlined init with copy of PhysicallyBasedMaterial(v2, v72);
  v27 = v72[4];

  v28 = v27;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v28, v65);
  if (v66 == 255)
  {
    __MaterialResource.subscript.getter(&v67);
  }

  else
  {
    v67 = v65[0];
    v68 = v65[1];
    v69 = v65[2];
    v70 = v65[3];
    v71 = v66;
  }

  v62 = v69;
  v63 = v70;
  v64 = v71;
  v60 = v67;
  v61 = v68;
  if (v71 != 255)
  {
    if (v71 == 1)
    {
      v29 = DWORD2(v61);
      v30 = v61;
      v31 = v60;
      goto LABEL_20;
    }

    outlined destroy of BodyTrackingComponent?(&v60, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v30 = 0;
  v29 = 0;
  v31 = 0uLL;
LABEL_20:
  *(v26 + 16) = v31;
  *(v26 + 32) = v30;
  *(v26 + 40) = v29;
  outlined destroy of PhysicallyBasedMaterial(v72);
  *(v9 + 368) = 0x72616C7563657073;
  *(v9 + 376) = 0xE800000000000000;
  *(v9 + 408) = &type metadata for PhysicallyBasedMaterial.Specular;
  v32 = swift_allocObject();
  *(v9 + 384) = v32;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v57, v32 + 16);
  *(v9 + 416) = 0x6E65656873;
  *(v9 + 424) = 0xE500000000000000;
  *(v9 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23PhysicallyBasedMaterialV10SheenColorVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialV10SheenColorVSgMR);
  v33 = swift_allocObject();
  *(v9 + 432) = v33;
  if ((*(v2 + 107) & 8) != 0)
  {
    v58 = &type metadata for PhysicallyBasedMaterial;
    v59 = &protocol witness table for PhysicallyBasedMaterial;
    v57[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v57, &v53);
    v34 = v53;
    v37 = v54;
    v35 = v55;
    v36 = v56;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0uLL;
  }

  *(v33 + 16) = v34;
  *(v33 + 24) = v37;
  *(v33 + 40) = v35;
  *(v33 + 48) = v36;
  *(v9 + 464) = 0x616F637261656C63;
  *(v9 + 472) = 0xE900000000000074;
  *(v9 + 504) = &type metadata for PhysicallyBasedMaterial.Clearcoat;
  v38 = swift_allocObject();
  *(v9 + 480) = v38;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v57, v38 + 16);
  *(v9 + 512) = 0xD000000000000012;
  *(v9 + 520) = 0x80000001C18DDE40;
  *(v9 + 552) = &type metadata for PhysicallyBasedMaterial.ClearcoatRoughness;
  v39 = swift_allocObject();
  *(v9 + 528) = v39;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v57, v39 + 16);
  *(v9 + 560) = 0x6F72746F73696E61;
  *(v9 + 568) = 0xEF6C6576654C7970;
  *(v9 + 600) = &type metadata for PhysicallyBasedMaterial.AnisotropyLevel;
  v40 = swift_allocObject();
  *(v9 + 576) = v40;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v57, v40 + 16);
  *(v9 + 608) = 0x6F72746F73696E61;
  *(v9 + 616) = 0xEF656C676E417970;
  *(v9 + 648) = &type metadata for PhysicallyBasedMaterial.AnisotropyAngle;
  v41 = swift_allocObject();
  *(v9 + 624) = v41;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v57, v41 + 16);
  *(v9 + 656) = 0xD000000000000011;
  *(v9 + 664) = 0x80000001C18DDE60;
  v42 = PhysicallyBasedMaterial.emissiveIntensity.getter();
  *(v9 + 696) = MEMORY[0x1E69E6448];
  *(v9 + 672) = v42;
  strcpy((v9 + 704), "emissiveColor");
  *(v9 + 718) = -4864;
  *(v9 + 744) = &type metadata for PhysicallyBasedMaterial.EmissiveColor;
  v43 = swift_allocObject();
  *(v9 + 720) = v43;
  v58 = &type metadata for PhysicallyBasedMaterial;
  v59 = &protocol witness table for PhysicallyBasedMaterial;
  v57[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v2, v57[0] + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v57, v43 + 16);
  *(v9 + 752) = 0xD00000000000001ALL;
  *(v9 + 760) = 0x80000001C18DDE80;
  *(v9 + 792) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v9 + 768);
  *(v9 + 800) = 0xD000000000000023;
  *(v9 + 808) = 0x80000001C18DDEA0;
  *(v9 + 840) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v9 + 816);
  *(v9 + 848) = 0x6C6C754365636166;
  *(v9 + 856) = 0xEB00000000676E69;
  *(v9 + 888) = &type metadata for MaterialParameterTypes.FaceCulling;
  v44 = 2;
  if ((*(v2 + 88) & 1) == 0)
  {
    if (*(v2 + 80) >= 3uLL)
    {
      v44 = 2;
    }

    else
    {
      v44 = *(v2 + 80);
    }
  }

  *(v9 + 864) = v44;
  *(v9 + 896) = 0xD000000000000010;
  *(v9 + 904) = 0x80000001C18DDDE0;
  *(v9 + 936) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v9 + 912) = *(v2 + 136) == 1;
  v45 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
  (*(v50 + 104))(v49, *MEMORY[0x1E69E75D8], v51);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t UnlitMaterial.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27[-1] - v9;
  outlined init with copy of UnlitMaterial(v1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897F90;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  v12 = v1[5];
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (REMaterialAssetGetSourceName())
  {
    v14 = String.init(cString:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v11 + 48) = v14;
  *(v11 + 56) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = 0x726F6C6F63;
  *(v11 + 88) = 0xE500000000000000;
  *(v11 + 120) = &type metadata for PhysicallyBasedMaterial.BaseColor;
  v18 = swift_allocObject();
  *(v11 + 96) = v18;
  v27[3] = &type metadata for UnlitMaterial;
  v27[4] = &protocol witness table for UnlitMaterial;
  v27[0] = swift_allocObject();
  outlined init with copy of UnlitMaterial(v1, v27[0] + 16);
  v19 = v1[10];
  v20 = v1[11];

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)((v18 + 16), v27, v19, v20);
  *(v11 + 128) = 0x676E69646E656C62;
  *(v11 + 136) = 0xE800000000000000;
  *(v11 + 168) = &type metadata for PhysicallyBasedMaterial.Blending;
  v21 = swift_allocObject();
  *(v11 + 144) = v21;
  UnlitMaterial.blending.getter(v21 + 16);
  *(v11 + 176) = 0xD000000000000010;
  *(v11 + 184) = 0x80000001C18DD850;
  v22 = specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  *(v11 + 192) = v22;
  *(v11 + 196) = BYTE4(v22) & 1;
  *(v11 + 216) = v23;
  *(v11 + 224) = 0xD000000000000010;
  *(v11 + 232) = 0x80000001C18DDDE0;
  *(v11 + 264) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v11 + 240) = v1[14] == 1;
  v24 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void CustomMaterial.customMirror.getter(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = &v19 - v7;
  outlined init with copy of CustomMaterial(v1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1897FB0;
  *(v8 + 32) = 1701667182;
  *(v8 + 40) = 0xE400000000000000;
  v9 = *v1;
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (REMaterialAssetGetSourceName())
  {
    v11 = String.init(cString:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v8 + 48) = v11;
  *(v8 + 56) = v13;
  *(v8 + 72) = v14;
  strcpy((v8 + 80), "lightingModel");
  *(v8 + 94) = -4864;
  *(v8 + 120) = &type metadata for CustomMaterial.LightingModel;
  CustomMaterial.lightingModel.getter((v8 + 96));
  *(v8 + 128) = 0x6F6C6F4365736162;
  *(v8 + 136) = 0xE900000000000072;
  *(v8 + 168) = &type metadata for CustomMaterial.BaseColor;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.BaseColor.init(material:alternateTintKey:)((v8 + 144), v25, 0, 0);
  *(v8 + 176) = 0x73656E6867756F72;
  *(v8 + 184) = 0xE900000000000073;
  *(v8 + 216) = &type metadata for CustomMaterial.Roughness;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Roughness.init(material:alternateTintKey:)(v25, v8 + 192);
  *(v8 + 224) = 0x63696C6C6174656DLL;
  *(v8 + 232) = 0xE800000000000000;
  *(v8 + 264) = &type metadata for CustomMaterial.Metallic;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Metallic.init(material:alternateTintKey:)(v25, v8 + 240);
  *(v8 + 272) = 0x6C616D726F6ELL;
  *(v8 + 280) = 0xE600000000000000;
  *(v8 + 312) = &type metadata for CustomMaterial.Normal;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Normal.init(material:alternateTintKey:)(v25, v8 + 288);
  strcpy((v8 + 320), "emissiveColor");
  *(v8 + 334) = -4864;
  *(v8 + 360) = &type metadata for CustomMaterial.EmissiveColor;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v25, v8 + 336);
  *(v8 + 368) = 0xD000000000000010;
  *(v8 + 376) = 0x80000001C18DDE00;
  *(v8 + 408) = &type metadata for CustomMaterial.AmbientOcclusion;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.AmbientOcclusion.init(material:alternateTintKey:)(v25, v8 + 384);
  *(v8 + 416) = 0x72616C7563657073;
  *(v8 + 424) = 0xE800000000000000;
  *(v8 + 456) = &type metadata for CustomMaterial.Specular;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Specular.init(material:alternateTintKey:)(v25, v8 + 432);
  *(v8 + 464) = 0x616F637261656C63;
  *(v8 + 472) = 0xE900000000000074;
  *(v8 + 504) = &type metadata for CustomMaterial.Clearcoat;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v25, v8 + 480);
  *(v8 + 512) = 0xD000000000000012;
  *(v8 + 520) = 0x80000001C18DDE40;
  *(v8 + 552) = &type metadata for CustomMaterial.ClearcoatRoughness;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v25, v8 + 528);
  *(v8 + 560) = 0x6D6F74737563;
  *(v8 + 568) = 0xE600000000000000;
  *(v8 + 600) = &type metadata for CustomMaterial.Custom;
  v15 = swift_allocObject();
  *(v8 + 576) = v15;
  v26 = &type metadata for CustomMaterial;
  v27 = &protocol witness table for CustomMaterial;
  v25[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v25[0] + 16);
  CustomMaterial.Custom.init(material:alternateTintKey:)(v25, v15 + 1);
  *(v8 + 608) = 0x676E69646E656C62;
  *(v8 + 616) = 0xE800000000000000;
  *(v8 + 648) = &type metadata for CustomMaterial.Blending;
  CustomMaterial.blending.getter(v8 + 624);
  *(v8 + 656) = 0xD000000000000010;
  *(v8 + 664) = 0x80000001C18DD850;
  v16 = CustomMaterial.opacityThreshold.getter();
  *(v8 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  *(v8 + 672) = v16;
  *(v8 + 676) = BYTE4(v16) & 1;
  *(v8 + 704) = 0xD00000000000001ALL;
  *(v8 + 712) = 0x80000001C18DDE80;
  *(v8 + 744) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v8 + 720);
  *(v8 + 752) = 0xD000000000000023;
  *(v8 + 760) = 0x80000001C18DDEA0;
  *(v8 + 792) = &type metadata for MaterialParameterTypes.TextureCoordinateTransform;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v8 + 768);
  *(v8 + 800) = 0x6C6C754365636166;
  *(v8 + 808) = 0xEB00000000676E69;
  *(v8 + 840) = &type metadata for MaterialParameterTypes.FaceCulling;
  if (*(v1 + 48))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v1 + 40);
    if (v17 >= 3)
    {
      LOBYTE(v17) = 2;
    }

    *(v8 + 816) = v17;
    *(v8 + 848) = 0xD000000000000010;
    *(v8 + 856) = 0x80000001C18DDDE0;
    *(v8 + 888) = &type metadata for MaterialParameterTypes.TriangleFillMode;
    *(v8 + 864) = *(v1 + 344) == 1;
    v18 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
    (*(v22 + 104))(v21, *MEMORY[0x1E69E75D8], v23);
    Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t OcclusionMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-v8 - 8];
  v10 = v0[1];
  v28[0] = *v0;
  v28[1] = v10;
  v12 = *v0;
  v11 = v0[1];
  *v29 = v0[2];
  *&v29[9] = *(v0 + 41);
  v25 = v12;
  v26 = v11;
  v27[0] = v0[2];
  *(v27 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FC0;
  *(v13 + 32) = 1701667182;
  *(v13 + 40) = 0xE400000000000000;
  v14 = *&v28[0];
  swift_beginAccess();
  v15 = *(v14 + 16);
  outlined init with copy of OcclusionMaterial(v28, v24);
  if (REMaterialAssetGetSourceName())
  {
    v16 = String.init(cString:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v13 + 48) = v16;
  *(v13 + 56) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = 0xD000000000000017;
  *(v13 + 88) = 0x80000001C18DDED0;
  v20 = v29[8];
  *(v13 + 120) = MEMORY[0x1E69E6370];
  *(v13 + 96) = v20;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t PortalMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-v8 - 8];
  v10 = v0[1];
  v27[0] = *v0;
  v27[1] = v10;
  v12 = *v0;
  v11 = v0[1];
  *v28 = v0[2];
  *&v28[9] = *(v0 + 41);
  v24 = v12;
  v25 = v11;
  v26[0] = v0[2];
  *(v26 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FC0;
  *(v13 + 32) = 1701667182;
  *(v13 + 40) = 0xE400000000000000;
  v14 = *&v27[0];
  swift_beginAccess();
  v15 = *(v14 + 16);
  outlined init with copy of PortalMaterial(v27, v23);
  if (REMaterialAssetGetSourceName())
  {
    v16 = String.init(cString:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v13 + 48) = v16;
  *(v13 + 56) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = 0xD000000000000010;
  *(v13 + 88) = 0x80000001C18DDDE0;
  *(v13 + 120) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v13 + 96) = *&v28[8] == 1;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t ShaderGraphMaterial.customMirrorParameters.getter()
{
  v1 = v0[1];
  v71 = *v0;
  v2 = v0[5];
  v75 = v0[4];
  v76 = v2;
  v77[0] = v0[6];
  *(v77 + 9) = *(v0 + 105);
  v3 = v0[2];
  v4 = v0[3];
  v72 = v1;
  v73 = v3;
  v74 = v4;
  swift_beginAccess();
  v50 = v71;
  v5 = *(v71 + 16);
  v6 = REMaterialAssetCopyVisibleShaderGraphParameterNames();
  if (v6)
  {
    v7 = v6;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v8 + 16);
  if (!v49)
  {
    v11 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v11;
  }

  v9 = 0;
  v10 = (v8 + 40);
  v11 = MEMORY[0x1E69E7CC8];
  v48 = v8;
  while (v9 < *(v8 + 16))
  {
    v13 = *(v10 - 1);
    v12 = *v10;
    v14 = *(v50 + 16);

    v15 = MEMORY[0x1C68F3280](v13, v12);
    LODWORD(v14) = REMaterialAssetIsVisibleShaderGraphParameter();

    if (v14)
    {
      *&v58 = 3027236;
      *(&v58 + 1) = 0xE300000000000000;
      MEMORY[0x1C68F3410](v13, v12);
      v16 = v58;
      v70[3] = &type metadata for ShaderGraphMaterial;
      v70[4] = &protocol witness table for ShaderGraphMaterial;
      v17 = swift_allocObject();
      v70[0] = v17;
      v18 = v76;
      v17[5] = v75;
      v17[6] = v18;
      v17[7] = v77[0];
      *(v17 + 121) = *(v77 + 9);
      v19 = v72;
      v17[1] = v71;
      v17[2] = v19;
      v20 = v74;
      v17[3] = v73;
      v17[4] = v20;
      __swift_project_boxed_opaque_existential_1(v70, &type metadata for ShaderGraphMaterial);
      outlined init with copy of ShaderGraphMaterial(&v71, &v58);
      Material.subscript.getter(v16, *(&v16 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial, v63);

      if (v64 == 255)
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v69 = v64;
      }

      else
      {
        v58 = v63[0];
        v59 = v63[1];
        v60 = v63[2];
        v61 = v63[3];
        v62 = v64;
        MaterialParameters.Value.init(_:)(&v58, &v65);
      }

      outlined destroy of MaterialParameters(v70);
      v21 = v69;
      v62 = v69;
      v58 = v65;
      v59 = v66;
      v60 = v67;
      v61 = v68;
      v8 = v48;
      if (v69 != 255)
      {
        v22 = *(&v58 + 1);
        if (v69)
        {
          v53 = v58;
          v54 = v66;
          v55 = v67;
          v56 = v68;
        }

        else
        {

          outlined destroy of BodyTrackingComponent?(&v58, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
          *&v53 = v22;
          v21 = 1;
        }

        v57 = v21;
        outlined init with copy of MaterialParameters.Value(&v53, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v26 = v11[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_32;
        }

        v29 = v24;
        if (v11[3] >= v28)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v24 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }

          v25 = v30;
          if ((v29 & 1) == 0)
          {
LABEL_26:
            v11[(v25 >> 6) + 8] |= 1 << v25;
            v39 = (v11[6] + 16 * v25);
            *v39 = v13;
            v39[1] = v12;
            v40 = v11[7] + 80 * v25;
            v41 = v57;
            v42 = v56;
            v43 = v55;
            *(v40 + 16) = v54;
            *(v40 + 32) = v43;
            *(v40 + 48) = v42;
            *(v40 + 64) = v41;
            *v40 = v53;
            outlined destroy of MaterialParameters.Value(&v53);
            v44 = v11[2];
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_33;
            }

            v11[2] = v46;
            goto LABEL_28;
          }
        }

        v32 = v11[7] + 80 * v25;
        v51[0] = *v32;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        v52 = *(v32 + 64);
        v51[2] = v34;
        v51[3] = v35;
        v51[1] = v33;
        v36 = v56;
        v38 = v54;
        v37 = v55;
        *(v32 + 64) = v57;
        *(v32 + 32) = v37;
        *(v32 + 48) = v36;
        *(v32 + 16) = v38;
        *v32 = v53;
        outlined destroy of MaterialParameters.Value(v51);
        outlined destroy of MaterialParameters.Value(&v53);
LABEL_28:
        v8 = v48;
        goto LABEL_7;
      }
    }

LABEL_7:
    ++v9;
    v10 += 2;
    if (v49 == v9)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ShaderGraphMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - v8;
  v10 = v0[5];
  v11 = v0[3];
  v35 = v0[4];
  v36 = v10;
  v12 = v0[5];
  v37[0] = v0[6];
  *(v37 + 9) = *(v0 + 105);
  v13 = v0[1];
  v31 = *v0;
  v32 = v13;
  v14 = v0[3];
  v16 = *v0;
  v15 = v0[1];
  v33 = v0[2];
  v34 = v14;
  v29[8] = v35;
  v29[9] = v12;
  v30[0] = v0[6];
  *(v30 + 9) = *(v0 + 105);
  v29[4] = v16;
  v29[5] = v15;
  v29[6] = v33;
  v29[7] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C1897FD0;
  *(v17 + 32) = 1701667182;
  *(v17 + 40) = 0xE400000000000000;
  v18 = v31;
  swift_beginAccess();
  v19 = *(v18 + 16);
  outlined init with copy of ShaderGraphMaterial(&v31, v28);
  if (REMaterialAssetGetSourceName())
  {
    v20 = String.init(cString:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v17 + 48) = v20;
  *(v17 + 56) = v22;
  *(v17 + 72) = v23;
  *(v17 + 80) = 0x6574656D61726170;
  *(v17 + 88) = 0xEA00000000007372;
  v28[4] = v35;
  v28[5] = v36;
  v29[0] = v37[0];
  *(v29 + 9) = *(v37 + 9);
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v28[3] = v34;
  v24 = ShaderGraphMaterial.customMirrorParameters.getter();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS17RealityFoundation18MaterialParametersV5ValueOGMd, &_sSDySS17RealityFoundation18MaterialParametersV5ValueOGMR);
  *(v17 + 96) = v24;
  *(v17 + 120) = v25;
  *(v17 + 128) = 0xD000000000000010;
  *(v17 + 136) = 0x80000001C18DDDE0;
  *(v17 + 168) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v17 + 144) = *&v37[0] == 1;
  v26 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t VideoMaterial.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v23 - v8;
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  v26 = *(v0 + 32);
  v27 = v10;
  v12 = *(v0 + 48);
  v28 = *(v0 + 64);
  v13 = *(v0 + 16);
  v25[0] = *v0;
  v25[1] = v13;
  v23[9] = v26;
  v23[10] = v12;
  v23[11] = *(v0 + 64);
  v29 = *(v0 + 80);
  v24 = *(v0 + 80);
  v23[7] = v25[0];
  v23[8] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1897FC0;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  v15 = *&v25[0];
  swift_beginAccess();
  v16 = *(v15 + 16);
  outlined init with copy of VideoMaterial(v25, v23);
  if (REMaterialAssetGetSourceName())
  {
    v17 = String.init(cString:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v14 + 48) = v17;
  *(v14 + 56) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = 0x80000001C18DDDE0;
  *(v14 + 120) = &type metadata for MaterialParameterTypes.TriangleFillMode;
  *(v14 + 96) = *(&v27 + 1) == 1;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized String.withCString<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    closure #1 in __RKMaterialParameterBlock.get(parameter:)(a4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t specialized Material.getTextureParameter(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v8 = *(v3 + 16);
  v9 = v3[3];
  v10 = v3[4];

  v11 = v10;

  result = specialized String.withCString<A>(_:)(a1, a2, v11, v20);
  if (v21 == 255)
  {
    v13 = *v3;
    result = __MaterialResource.subscript.getter(&v22);
  }

  else
  {
    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    v25 = v20[3];
    v26 = v21;
  }

  v17 = v24;
  v18 = v25;
  v19 = v26;
  v15 = v22;
  v16 = v23;
  if (v26 != 255)
  {
    if (v26 == 1)
    {
      v14 = v16;
      *a3 = v15;
      *(a3 + 16) = v14;
      *(a3 + 24) = DWORD2(v14);
      return result;
    }

    result = outlined destroy of BodyTrackingComponent?(&v15, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  return result;
}

void specialized Material.getUVTransform(withSuffix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  LOBYTE(v31[0]) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v10 = *(v3 + 24);
  v9 = *(v3 + 32);

  v11 = v9;

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v11, v31);
  v12 = v32;
  if (v32 == 255)
  {
    v13 = *v4;
    __MaterialResource.subscript.getter(&v33);
  }

  else
  {

    v33 = v31[0];
    v34 = v31[1];
    v35 = v31[2];
    v36 = v31[3];
    v37 = v12;
  }

  v29[2] = v35;
  v29[3] = v36;
  v30 = v37;
  v29[0] = v33;
  v29[1] = v34;
  v14 = xmmword_1C1897FE0;
  if (v37 == 255)
  {
    goto LABEL_7;
  }

  if (v37 == 5)
  {
    v14 = v29[0];
LABEL_7:
    v18 = v14;
    goto LABEL_9;
  }

  v18 = xmmword_1C1897FE0;
  outlined destroy of BodyTrackingComponent?(v29, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  LOBYTE(v22[0]) = 14;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v11, v22);
  v15 = v23;
  if (v23 == 255)
  {
    v16 = *v4;
    __MaterialResource.subscript.getter(&v24);
  }

  else
  {

    v24 = v22[0];
    v25 = v22[1];
    v26 = v22[2];
    v27 = v22[3];
    v28 = v15;
  }

  v20[2] = v26;
  v20[3] = v27;
  v21 = v28;
  v20[0] = v24;
  v20[1] = v25;
  v17 = 0.0;
  if (v28 != 255)
  {
    if (v28 == 3)
    {
      v17 = *v20;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v20, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0.0;
    }
  }

  MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(a3, v17, v18);
}

{
  v4 = v3;
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  LOBYTE(v31[0]) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v10 = *(v3 + 64);
  v9 = *(v3 + 72);

  v11 = v9;

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v11, v31);
  v12 = v32;
  if (v32 == 255)
  {
    v13 = *(v4 + 40);
    __MaterialResource.subscript.getter(&v33);
  }

  else
  {

    v33 = v31[0];
    v34 = v31[1];
    v35 = v31[2];
    v36 = v31[3];
    v37 = v12;
  }

  v29[2] = v35;
  v29[3] = v36;
  v30 = v37;
  v29[0] = v33;
  v29[1] = v34;
  v14 = xmmword_1C1897FE0;
  if (v37 == 255)
  {
    goto LABEL_7;
  }

  if (v37 == 5)
  {
    v14 = v29[0];
LABEL_7:
    v18 = v14;
    goto LABEL_9;
  }

  v18 = xmmword_1C1897FE0;
  outlined destroy of BodyTrackingComponent?(v29, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  LOBYTE(v22[0]) = 14;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);

  specialized String.withCString<A>(_:)(0, 0xE000000000000000, v11, v22);
  v15 = v23;
  if (v23 == 255)
  {
    v16 = *(v4 + 40);
    __MaterialResource.subscript.getter(&v24);
  }

  else
  {

    v24 = v22[0];
    v25 = v22[1];
    v26 = v22[2];
    v27 = v22[3];
    v28 = v15;
  }

  v20[2] = v26;
  v20[3] = v27;
  v21 = v28;
  v20[0] = v24;
  v20[1] = v25;
  v17 = 0.0;
  if (v28 != 255)
  {
    if (v28 == 3)
    {
      v17 = *v20;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v20, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0.0;
    }
  }

  MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(a3, v17, v18);
}

uint64_t specialized Material.getScalarParameter(_:)@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  result = specialized Material.getTexture(_:)(10 - a1);
  if (!result)
  {
    v7 = 0x50204u >> (8 * a1);
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    v11 = *(v2 + 72);
    v12 = PbrCommonKeys.Constants.rawValue.getter(v7);
    v14 = v13;

    v15 = v11;

    specialized String.withCString<A>(_:)(v12, v14, v15, v16);

    if (v17 != 255)
    {
      if (v17 == 2)
      {
        v6 = v16[0];
        goto LABEL_8;
      }

      result = outlined destroy of BodyTrackingComponent?(v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    }

    v6 = 0xF000000000000000;
    goto LABEL_8;
  }

  v6 = result | 0x8000000000000000;
LABEL_8:
  *a2 = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t specialized MaterialWithOpacityThresholdInternal.opacityThresholdInternal.getter()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_beginAccess();
  v3 = *(v2 + 16);
  REMaterialAssetGetMaterialDefinition();
  v4 = *(v2 + 16);
  FunctionConstant = REMaterialAssetGetFunctionConstant();
  if (FunctionConstant)
  {
    v6 = FunctionConstant;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1702195828 && v7 == 0xE400000000000000)
    {

      goto LABEL_11;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_11;
    }
  }

  if ((REAssetHandleResolvesToSameAssetPath() & 1) == 0 && (REAssetHandleResolvesToSameAssetPath() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);

  v14 = v12;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18DD850, v14, v20);
  if (v21 == 255)
  {
    __MaterialResource.subscript.getter(&v22);
  }

  else
  {
    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    v25 = v20[3];
    v26 = v21;
  }

  v18[2] = v24;
  v18[3] = v25;
  v19 = v26;
  v18[0] = v22;
  v18[1] = v23;
  if (v26 == 255)
  {
    goto LABEL_18;
  }

  if (v26 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_18:
    v15 = 0;
    v16 = 1;
    return v15 | (v16 << 32);
  }

  v15 = LODWORD(v18[0]);
  outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  v16 = 0;
  return v15 | (v16 << 32);
}

uint64_t objectdestroy_17Tm()
{
  if (*(v0 + 24))
  {

    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t objectdestroy_9Tm()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

void outlined consume of DirectUniformsState(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v6 = (a5 >> 60) & 3;
  if (v6 == 1)
  {
    outlined consume of Data._Representation(a1, a2);

    outlined consume of Data._Representation(a4, a5 & 0xCFFFFFFFFFFFFFFFLL);
    v7 = a6;
  }

  else
  {
    if (v6)
    {
      return;
    }

    outlined consume of Data._Representation(a1, a2);
    v7 = a3;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void partial apply for closure #1 in __RKMaterialParameterBlock.get(parameter:)(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  closure #1 in __RKMaterialParameterBlock.get(parameter:)(a1);
}

void __RKEntityInteractionsComponent.didAdd(componentRef:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for JSONEncoder.OutputFormatting();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  if (!a1)
  {
    goto LABEL_47;
  }

  Entity = REComponentGetEntity();
  v13 = REEntityGetSwiftObject();
  v99 = v4;
  if (v13)
  {
    type metadata accessor for Entity();
    v14 = swift_dynamicCastClassUnconditional();
LABEL_4:
    v15 = v14;
    goto LABEL_8;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v16 = specialized static Entity.entityInfoType(_:)();
  if (!v16)
  {
    v14 = makeEntity(for:)(Entity);
    goto LABEL_4;
  }

  v15 = (*(v16 + 232))();
  v17 = *(v15 + 16);

  MEMORY[0x1C68F9740](v17, 0);
  *(v15 + 16) = Entity;
  MEMORY[0x1C68F9740](Entity, v15);

LABEL_8:
  swift_weakAssign();
  v108 = 91;
  v109 = 0xE100000000000000;
  v106 = 0;
  v107 = 0xE000000000000000;
  v104 = v15;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v106, v107);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v18 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v19 = v108;
  v20 = v109;
  v21 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v21, &v108);
  v22 = *(v2 + 16);
  if (!v22 || !*(v22 + 16))
  {
    v108 = v19;
    v109 = v20;
    v23 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &v108);
    v24 = __RKEntityInteractionsComponent.decodedJSON()();

    *(v2 + 16) = v24;
    v22 = v24;
  }

  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    v108 = v19;
    v109 = v20;
    v25 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v25, &v108);
    v26 = type metadata accessor for JSONEncoder();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v108 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
    lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v102 = v29;
    v32 = v31;
    v33 = v30;
    static String.Encoding.utf8.getter();
    v34 = String.init(data:encoding:)();
    if (v35)
    {
      v97 = v33;
      v98 = v32;
      v100 = v5;
      v108 = 10;
      v109 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v34);
      *(&v91 - 2) = &v108;
      v38 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v91 - 4), v36, v37, &v91);
      v40 = *(v38 + 16);
      if (v40)
      {
        v96 = v19;
        v93 = v15;
        v94 = v2;
        v92 = v38;
        v41 = (v38 + 56);
        *&v39 = 136315394;
        v101 = v39;
        do
        {
          v47 = *(v41 - 3);
          v48 = *(v41 - 2);
          v49 = *(v41 - 1);
          v50 = *v41;

          v51 = static os_log_type_t.debug.getter();
          v52 = MEMORY[0x1C68F3380](v47, v48, v49, v50);
          v54 = v53;

          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          __swift_project_value_buffer(v55, interactionsLogger);

          v56 = Logger.logObject.getter();

          if (os_log_type_enabled(v56, v51))
          {
            v42 = v20;
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v108 = v44;
            *v43 = v101;
            *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v42, &v108);
            *(v43 + 12) = 2080;
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v108);

            *(v43 + 14) = v45;
            _os_log_impl(&dword_1C1358000, v56, v51, "%s%s", v43, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v44, -1, -1);
            v46 = v43;
            v20 = v42;
            MEMORY[0x1C6902A30](v46, -1, -1);
          }

          else
          {
          }

          v41 += 4;
          --v40;
        }

        while (v40);

        outlined consume of Data._Representation(v97, v98);

        v2 = v94;
        v15 = v93;
        v19 = v96;
      }

      else
      {

        outlined consume of Data._Representation(v97, v98);
      }

      v5 = v100;
    }

    else
    {

      outlined consume of Data._Representation(v33, v32);
    }
  }

  v57 = *(v15 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v59 = SceneNullable;
    v60 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    v95 = v20;
    if (v60)
    {
      v61 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v61 = Scene.init(coreScene:)(v59);
    }

    v97 = v61;
    v64 = Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v110 = MEMORY[0x1E69E7CC0];
      v67 = *(v22 + 16);
      if (v67)
      {
        v68 = v65;
        v92 = v64;
        v96 = v19;
        v93 = v15;
        v94 = v2;
        v102 = type metadata accessor for __RKEntityTrigger();
        v69 = type metadata accessor for __RKEntityAction();
        v70 = *(v99 + 24);
        v100 = *(v99 + 20);
        *&v101 = v69;
        v99 = v103 + v70;
        v71 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        swift_beginAccess();
        v98 = *(v5 + 72);
        do
        {
          v72 = v103;
          outlined init with copy of __RKEntityInteractionSpecification(v71, v103);
          v73 = *(v68 + 40);

          v74 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v72, v73);
          v75 = static __RKEntityAction.action(for:entityLookupTable:)(v72 + v100, v73);
          v77 = *v99;
          v76 = *(v99 + 8);

          outlined destroy of __RKEntityInteractionSpecification(v72);
          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          v78 = specialized __RKEntityInteraction.init(trigger:action:)(v74, v75);

          swift_beginAccess();
          v79 = *(v78 + 56);
          *(v78 + 48) = v77;
          *(v78 + 56) = v76;

          swift_beginAccess();

          MEMORY[0x1C68F3650](v80);
          if (*((*(v68 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v68 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          MEMORY[0x1C68F3650](v81);
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v71 += v98;
          --v67;
        }

        while (v67);
        v66 = v110;
        v2 = v94;
        v19 = v96;
      }

      v83 = *(v2 + 24);

      *(v2 + 24) = v66;
      v84 = v95;
      v104 = v19;
      v105 = v95;
      v85 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v85, &v104);
      Scene.enableCollisions(_:)(1);
      v104 = v19;
      v105 = v84;
      v86 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v86, &v104);
      swift_unknownObjectRelease();

      v104 = v19;
      v105 = v84;
      v87 = static os_log_type_t.debug.getter();
      v88 = &v104;
    }

    else
    {
      swift_unknownObjectRelease();
      v89 = v95;
      v108 = v19;
      v109 = v95;
      v90 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v90, &v108);

      v108 = v19;
      v109 = v89;
      v87 = static os_log_type_t.debug.getter();
      v88 = &v108;
    }

    specialized InteractionsLogger.log(_:_:)(v87, v88);
  }

  else
  {
    v108 = v19;
    v109 = v20;
    v62 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v62, &v108);
    v108 = v19;
    v109 = v20;
    v63 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v63, &v108);
  }
}

uint64_t cloneInteractionsComponentComponent(_:)()
{
  Class = REComponentGetClass();
  v1 = REComponentCreateByClassOpaquePointer(Class);
  Object = RECustomComponentGetObject();
  if (Object && (v3 = Object, (v4 = RECustomComponentGetObject()) != 0))
  {
    v5 = v4;
    if (!v3[1])
    {
      v6 = *v3;
      if (*v3)
      {
        type metadata accessor for IntrospectionDataCleanupHelper();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v3[1] = v7;
      }
    }

    outlined init with copy of __RKEntityInteractionsComponent(v3, v10);
    outlined destroy of __RKEntityInteractionsComponent(v5);
    outlined init with take of __RKEntityInteractionsComponent(v10, v5);
  }

  else
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return v1;
}

uint64_t __RKEntityInteractionsComponent.decodedJSON()()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = strlen(*v0);
  (*(v2 + 104))(v5, *MEMORY[0x1E6969010], v1);
  v8 = specialized Data.init(bytesNoCopy:count:deallocator:)(v6, v7, v5);
  v10 = v9;
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
  lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v8, v10);
  return v15[1];
}

uint64_t __RKEntityInteractionsComponent.specifications.setter(uint64_t a1)
{
  v103 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v3 = *(v103 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v103);
  v98 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v104 = &v96 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v96 - v12;
  v100 = v1;
  v14 = v1[2];
  if (v14)
  {
    v15 = v1[2];

    v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(a1, v14);

    if (v16)
    {
    }
  }

  v18 = type metadata accessor for JSONEncoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
  lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](&lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A], &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification);
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v23 = v22;
  v97 = v21;

  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    v25 = v97;
    if (v24 != 2)
    {
      goto LABEL_22;
    }

    v27 = *(v97 + 16);
    v26 = *(v97 + 24);
    v28 = __OFSUB__(v26, v27);
    v29 = v26 - v27;
    if (!v28)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v25 = v97;
    if (!v24)
    {
      result = BYTE6(v23) + 1;
      if (!__OFADD__(BYTE6(v23), 1))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }
  }

  LODWORD(v29) = HIDWORD(v25) - v25;
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v29 = v29;
LABEL_17:
  if (v29 > 2147483646)
  {

    return outlined consume of Data._Representation(v25, v23);
  }

  if (v24 == 2)
  {
    v31 = *(v25 + 16);
    v30 = *(v25 + 24);
    v28 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v28)
    {
LABEL_23:
      result = v32 + 1;
      if (!__OFADD__(v32, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }

    __break(1u);
LABEL_22:
    v32 = 0;
    goto LABEL_23;
  }

  v51 = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    result = v51 + 1;
    if (!__OFADD__(v51, 1))
    {
LABEL_24:
      if (result < 0xFFFFFFFF80000000)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (result > 0x7FFFFFFF)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v33 = RECIntrospectionAlloc();
      v34 = v100;
      if (*v100)
      {
        v35 = v100[1];

        v34[1] = 0;
      }

      *v34 = v33;
      type metadata accessor for IntrospectionDataCleanupHelper();
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      v37 = v34[1];

      v34[1] = v36;
      if (v24 > 1)
      {
        v38 = 0;
        if (v24 == 2)
        {
          v39 = v97;
          if (__OFSUB__(*(v97 + 24), *(v97 + 16)))
          {
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          result = Data.copyBytes(to:count:)();
          v41 = *(v39 + 16);
          v40 = *(v39 + 24);
          if (__OFSUB__(v40, v41))
          {
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          *(v33 + v40 - v41) = 0;
          if (v14)
          {
LABEL_35:
            v96 = v23;
            v42 = *(v14 + 16);
            v102 = *(a1 + 16);
            v43 = 0;
            if (v102 >= v42)
            {
              v24 = v42;
            }

            else
            {
              v24 = v102;
            }

            if (v24)
            {
              while (v43 < *(v14 + 16))
              {
                v44 = (*(v3 + 80) + 32) & ~*(v3 + 80);
                v45 = *(v3 + 72) * v43;
                result = outlined init with copy of __RKEntityInteractionSpecification(v14 + v44 + v45, v13);
                if (v43 >= *(a1 + 16))
                {
                  goto LABEL_126;
                }

                outlined init with copy of __RKEntityInteractionSpecification(a1 + v44 + v45, v11);
                if ((specialized static __RKEntityTriggerSpecification.== infix(_:_:)(v13, v11) & 1) == 0 || (specialized static __RKEntityActionSpecification.== infix(_:_:)(&v13[*(v103 + 20)], &v11[*(v103 + 20)]) & 1) == 0)
                {
LABEL_51:
                  outlined destroy of __RKEntityInteractionSpecification(v11);
                  outlined destroy of __RKEntityInteractionSpecification(v13);
                  goto LABEL_62;
                }

                v46 = *(v103 + 24);
                v47 = &v13[v46];
                v48 = *&v13[v46 + 8];
                v49 = &v11[v46];
                v50 = *(v49 + 1);
                if (v48)
                {
                  if (!v50 || (*v47 != *v49 || v48 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else if (v50)
                {
                  goto LABEL_51;
                }

                outlined destroy of __RKEntityInteractionSpecification(v11);
                result = outlined destroy of __RKEntityInteractionSpecification(v13);
                if (v24 == ++v43)
                {
                  goto LABEL_61;
                }
              }

LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

LABEL_62:
            v52 = v100;
            result = swift_weakLoadStrong();
            v53 = result;
            if (result)
            {
              v54 = *(result + 16);
              SceneNullable = REEntityGetSceneNullable();
              if (SceneNullable)
              {
                v56 = SceneNullable;
                v57 = RESceneGetSwiftObject();
                type metadata accessor for Scene();
                if (v57)
                {
                  swift_dynamicCastClassUnconditional();
                }

                else
                {
                  swift_allocObject();
                  Scene.init(coreScene:)(v56);
                }

                Scene.__interactionService.getter();

                type metadata accessor for __RKEntityInteractionManager();
                result = swift_dynamicCastClass();
                v53 = result;
                if (!result)
                {
                  result = swift_unknownObjectRelease();
                }

                v52 = v100;
              }

              else
              {

                v53 = 0;
              }
            }

            v58 = v52 + 3;
            if (!v53 && v52[3])
            {
              outlined consume of Data._Representation(v97, v96);
            }

            v59 = *(v14 + 16);
            v60 = v59 - v43;
            if (v59 < v43)
            {
              goto LABEL_130;
            }

            v61 = v98;
            v101 = v52 + 3;
            if (v59 == v43)
            {
LABEL_76:
              if (v102 < v43)
              {
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }

              if (v43 == v102)
              {
LABEL_78:
                outlined consume of Data._Representation(v97, v96);
              }

LABEL_106:
              v99 = v3;
              while (v43 < *(a1 + 16))
              {
                v72 = (*(v3 + 80) + 32) & ~*(v3 + 80);
                v73 = *(v3 + 72);
                v74 = v104;
                outlined init with copy of __RKEntityInteractionSpecification(a1 + v72 + v73 * v43, v104);
                result = outlined init with copy of __RKEntityInteractionSpecification(v74, v61);
                v75 = v52[2];
                if (!v75)
                {
                  goto LABEL_137;
                }

                v76 = v52[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
                }

                v78 = v75[2];
                v77 = v75[3];
                if (v78 >= v77 >> 1)
                {
                  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v75);
                }

                v75[2] = v78 + 1;
                result = outlined init with take of __RKEntityInteractionSpecification(v61, v75 + v72 + v78 * v73);
                v52[2] = v75;
                v3 = v99;
                v79 = v102;
                if (v52[3])
                {
                  if (!v53)
                  {
                    goto LABEL_139;
                  }

                  v80 = a1;
                  swift_beginAccess();
                  v81 = *(v53 + 40);
                  type metadata accessor for __RKEntityTrigger();

                  v82 = v104;
                  v83 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v104, v81);
                  type metadata accessor for __RKEntityAction();
                  v84 = v103;
                  v85 = static __RKEntityAction.action(for:entityLookupTable:)(v82 + *(v103 + 20), v81);
                  v86 = (v82 + *(v84 + 24));
                  v88 = *v86;
                  v87 = v86[1];
                  type metadata accessor for __RKEntityInteraction();
                  swift_allocObject();

                  v89 = specialized __RKEntityInteraction.init(trigger:action:)(v83, v85);

                  swift_beginAccess();
                  v90 = *(v89 + 56);
                  *(v89 + 48) = v88;
                  *(v89 + 56) = v87;

                  swift_beginAccess();

                  MEMORY[0x1C68F3650](v91);
                  if (*((*(v53 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v95 = *((*(v53 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();

                  v93 = v101;
                  MEMORY[0x1C68F3650](v92);
                  a1 = v80;
                  v61 = v98;
                  v3 = v99;
                  v79 = v102;
                  if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v94 = *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v79 = v102;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v52 = v100;
                }

                ++v43;
                result = outlined destroy of __RKEntityInteractionSpecification(v104);
                if (v79 == v43)
                {
                  goto LABEL_78;
                }
              }

              __break(1u);
            }

            else
            {
              while (v60)
              {
                v62 = *v58;
                if (*v58)
                {
                  if (v62 >> 62)
                  {
                    if (v62 < 0)
                    {
                      v69 = *v58;
                    }

                    result = __CocoaSet.count.getter();
                    if (!result)
                    {
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!result)
                    {
                      goto LABEL_127;
                    }
                  }

                  result = specialized Array._customRemoveLast()();
                  if (!result)
                  {
                    v63 = *v58;
                    if (*v58 >> 62)
                    {
                      if (v63 < 0)
                      {
                        v70 = *v58;
                      }

                      v71 = __CocoaSet.count.getter();
                      v28 = __OFSUB__(v71, 1);
                      result = v71 - 1;
                      if (v28)
                      {
LABEL_105:
                        __break(1u);
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v28 = __OFSUB__(v64, 1);
                      result = v64 - 1;
                      if (v28)
                      {
                        goto LABEL_105;
                      }
                    }

                    result = specialized Array.remove(at:)(result);
                  }

                  if (!v53)
                  {
                    goto LABEL_140;
                  }

                  __RKEntityInteractionManager.__removeInteraction(_:)(result);
                }

                v65 = v52[2];
                if (!v65)
                {
                  goto LABEL_138;
                }

                if (!v65[2])
                {
                  goto LABEL_123;
                }

                v66 = v52[2];
                result = swift_isUniquelyReferenced_nonNull_native();
                if (result)
                {
                  v67 = v65[2];
                  if (!v67)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
                  v65 = result;
                  v67 = *(result + 16);
                  if (!v67)
                  {
                    goto LABEL_124;
                  }
                }

                v68 = v67 - 1;
                result = outlined destroy of __RKEntityInteractionSpecification(v65 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v67 - 1));
                v65[2] = v68;
                v58 = v101;
                v52[2] = v65;
                if (!--v60)
                {
                  goto LABEL_76;
                }
              }
            }

            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

LABEL_56:
          v14 = MEMORY[0x1E69E7CC0];
          v100[2] = MEMORY[0x1E69E7CC0];
          goto LABEL_35;
        }
      }

      else if (v24)
      {
        if (__OFSUB__(HIDWORD(v97), v97))
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v38 = HIDWORD(v97) - v97;
      }

      else
      {
        v38 = BYTE6(v23);
      }

      result = Data.copyBytes(to:count:)();
      *(v33 + v38) = 0;
      if (v14)
      {
        goto LABEL_35;
      }

      goto LABEL_56;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v43 = v24;
    goto LABEL_62;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t implicit closure #7 in __RKEntityInteractionsComponent.didActivate(componentRef:)()
{
  _StringGuts.grow(_:)(98);
  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18DE110);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18DE150);
  return 0;
}

uint64_t static __RKEntityInteractionsComponent.componentType.getter()
{
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    return *(static __RKEntityInteractionsComponent.registration + 3);
  }

  else
  {
    return 0;
  }
}

void __RKEntityInteractionsComponent.reRegisterInteractions()()
{
  v1 = v0;
  v53 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  v58 = 91;
  v59 = 0xE100000000000000;
  if (Strong)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    v55 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v6 = v56;
    v7 = v57;
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1C68F3410](v6, v7);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = v58;
  v10 = v59;
  v11 = swift_weakLoadStrong();
  if (!v11)
  {
    v58 = v9;
    v59 = v10;
    v17 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v58);

    return;
  }

  v12 = v11;
  v13 = *(v11 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_21;
  }

  v15 = SceneNullable;
  v16 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v16)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v15);
  }

  v18 = Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_21:
    v58 = v9;
    v59 = v10;
    v27 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v27, &v58);

    return;
  }

  v20 = v19;
  v48[1] = v18;
  v48[2] = v12;
  v21 = *(v1 + 24);
  v52 = (v1 + 24);
  if (!v21)
  {
    v58 = v9;
    v59 = v10;
    v28 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v28, &v58);
    goto LABEL_24;
  }

  v58 = v9;
  v59 = v10;
  v22 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v22, &v58);
  if (v21 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_24;
    }
  }

  v51 = v1;
  if (v23 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v24 = v2;
  for (i = 0; i != v23; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C68F41F0](i, v21);
    }

    else
    {
      v26 = *(v21 + 8 * i + 32);
    }

    __RKEntityInteractionManager.__removeInteraction(_:)(v26);
  }

  v2 = v24;
  v1 = v51;
LABEL_24:

  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  v58 = v9;
  v59 = v10;
  v29 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v29, &v58);
  v30 = *(v1 + 16);
  if (!v30)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v31 = *(v30 + 16);
  if (v31)
  {
    v51 = type metadata accessor for __RKEntityTrigger();
    v50 = type metadata accessor for __RKEntityAction();
    v32 = v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    swift_beginAccess();
    v49 = *(v2 + 72);
    do
    {
      v33 = v54;
      outlined init with copy of __RKEntityInteractionSpecification(v32, v54);
      v34 = *(v20 + 40);

      v35 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(v33, v34);
      v36 = v53;
      v37 = static __RKEntityAction.action(for:entityLookupTable:)(v33 + *(v53 + 20), v34);
      v38 = (v33 + *(v36 + 24));
      v39 = *v38;
      v40 = v38[1];
      type metadata accessor for __RKEntityInteraction();
      swift_allocObject();

      v41 = specialized __RKEntityInteraction.init(trigger:action:)(v35, v37);

      swift_beginAccess();
      v42 = *(v41 + 56);
      *(v41 + 48) = v39;
      *(v41 + 56) = v40;

      swift_beginAccess();

      MEMORY[0x1C68F3650](v43);
      if (*((*(v20 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((*(v20 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v44 = v52;
      if (*v52)
      {

        MEMORY[0x1C68F3650](v45);
        if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v47 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        outlined destroy of __RKEntityInteractionSpecification(v54);
      }

      else
      {
        outlined destroy of __RKEntityInteractionSpecification(v54);
      }

      v32 += v49;
      --v31;
    }

    while (v31);
  }

  swift_unknownObjectRelease();
}

uint64_t closure #2 in __RKEntityInteractionsComponent.didActivate(componentRef:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v21[0] = result;

    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    MEMORY[0x1C68F3410](8285, 0xE200000000000000);
    v5 = StaticString.description.getter();
    MEMORY[0x1C68F3410](v5);

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    v6 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v6, v24);
    swift_beginAccess();
    if (static __RKEntityInteractionsComponent.registration && REEntityGetComponentByClassOpaquePointer(*(v4 + 16), *(static __RKEntityInteractionsComponent.registration + 3)) && RECustomComponentGetObject())
    {
      v22 = 91;
      v23 = 0xE100000000000000;
      v7 = static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)(v7, &v22);
      __RKEntityInteractionsComponent.reRegisterInteractions()();
    }

    else
    {
      v22 = 91;
      v23 = 0xE100000000000000;
      v8 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v8, &v22);
    }

    v9 = *(v4 + 16);
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v11 = SceneNullable;
      v12 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v12)
      {
        v13 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v13 = Scene.init(coreScene:)(v11);
      }

      v14 = *(v13 + 16);
      if (RESceneGetSwiftObject())
      {
        swift_unknownObjectRetain();
        if (swift_dynamicCastClass())
        {
          Scene.__interactionService.getter();
          type metadata accessor for __RKEntityInteractionManager();
          if (swift_dynamicCastClass())
          {
            v22 = 91;
            v23 = 0xE100000000000000;
            v15 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v15, &v22);
            type metadata accessor for __RKStartTrigger();
            v16 = swift_allocObject();
            *(v16 + 16) = 0;
            swift_beginAccess();
            v17 = *(a2 + 16);

            __RKEntityInteractionManager.__performInteractions(matching:on:)(v16, v17);

            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();

            v21[0] = 91;
            v21[1] = 0xE100000000000000;
            v18 = static os_log_type_t.debug.getter();
            v19 = v21;
LABEL_19:
            specialized InteractionsLogger.log(_:_:)(v18, v19);
          }

          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
        }
      }

      else
      {
      }
    }

    v22 = 91;
    v23 = 0xE100000000000000;
    v20 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v22);
    v22 = 91;
    v23 = 0xE100000000000000;
    v18 = static os_log_type_t.debug.getter();
    v19 = &v22;
    goto LABEL_19;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t __RKEntityInteractionsComponent.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x617265746E494152, 0xEE00736E6F697463, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKEntityInteractionsComponent.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKEntityInteractionsComponent.Registration.init()@<X0>(uint64_t *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = RECustomComponentTypeCreate();
  if (v2)
  {
    v3 = v2;
    result = REComponentTypeSetCloneCallback();
    *a1 = v3;
  }

  else
  {
    lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
    swift_allocError();
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t @objc createInteractionsComponentObject(componentType:)()
{
  v0 = RECIntrospectionAlloc();
  memset(v2, 0, sizeof(v2));
  swift_weakInit();
  v3 = 2;
  outlined init with take of __RKEntityInteractionsComponent(v2, v0);
  return v0;
}

uint64_t @objc destroyInteractionsComponentObject(componentType:rawPointer:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of __RKEntityInteractionsComponent(a2);

  return RECIntrospectionFree();
}

void @objc didAddInteractionsComponentObject(componentRef:)(uint64_t a1)
{
  if (RECustomComponentGetObject())
  {
    __RKEntityInteractionsComponent.didAdd(componentRef:)(a1);
  }
}

void @objc willRemoveInteractionsComponentObject(componentRef:)()
{
  if (RECustomComponentGetObject())
  {
    specialized __RKEntityInteractionsComponent.willRemove(componentRef:)();
  }
}

uint64_t @objc interactionsComponentEntityDidActivate(componentRef:)()
{
  result = RECustomComponentGetObject();
  if (result)
  {
    return specialized __RKEntityInteractionsComponent.didActivate(componentRef:)();
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v9[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9[0] = a1;
      v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = 1;
      v5 = v9;
LABEL_6:
      v11 = v5;
      v12 = 0;
      v13 = @objc createInteractionsComponentObject(componentType:);
      v14 = @objc destroyInteractionsComponentObject(componentType:rawPointer:);
      v15 = @objc didAddInteractionsComponentObject(componentRef:);
      v16 = @objc willRemoveInteractionsComponentObject(componentRef:);
      v17 = @objc interactionsComponentEntityDidActivate(componentRef:);
      v18 = 0;
      v19 = a3;
      v20 = 0;
      v6 = RECustomComponentTypeCreate();
      if (v6)
      {
        v3 = v6;
        REComponentTypeSetCloneCallback();
      }

      else
      {
        lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
        swift_allocError();
        swift_willThrow();
      }

      goto LABEL_9;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = 1;
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    v3 = v9[2];
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  v16 = *MEMORY[0x1E69E9840];
  v7[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = 1;
      v4 = v7;
LABEL_6:
      v9 = v4;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
      v14 = a3;
      v15 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
        swift_allocError();
        result = swift_willThrow();
      }

      goto LABEL_8;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = 1;
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    result = v7[2];
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  v9[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9[0] = a1;
      v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = 1;
      v5 = v9;
LABEL_6:
      v11 = v5;
      v12 = 0;
      v13 = @objc createAnchoringComponentObject(componentType:);
      v14 = @objc destroyAnchoringComponentObject(componentType:rawPointer:);
      v15 = @objc didAddAnchoringComponentObject(componentRef:);
      v16 = @objc willRemoveAnchoringComponentObject(componentRef:);
      v17 = 0;
      v18 = 0;
      v19 = a3;
      v20 = 0;
      v6 = RECustomComponentTypeCreate();
      if (v6)
      {
        v3 = v6;
        REComponentTypeSetCloneCallback();
      }

      else
      {
        lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
        swift_allocError();
        swift_willThrow();
      }

      goto LABEL_9;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = 1;
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    v3 = v9[2];
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  v17 = *MEMORY[0x1E69E9840];
  v7[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = 1;
      v4 = v7;
LABEL_6:
      v9 = v4;
      v10 = 0;
      v11 = @objc createTagsComponentObject(componentType:);
      v12 = @objc destroyTagsComponentObject(componentType:rawComponentPointer:);
      v13 = 0u;
      v14 = 0u;
      v15 = a3;
      v16 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
        swift_allocError();
        result = swift_willThrow();
      }

      goto LABEL_8;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = 1;
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    result = v7[2];
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v16 = *MEMORY[0x1E69E9840];
  v7[5] = a3;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = 1;
      v4 = v7;
LABEL_6:
      v9 = v4;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
      v14 = a3;
      v15 = 0;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
        swift_allocError();
        result = swift_willThrow();
      }

      goto LABEL_8;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = 1;
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    result = v7[2];
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v4 = *(a3 + 24);
      return REMaterialParameterBlockValueClearParameter();
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(a3 + 24);
      return REMaterialParameterBlockValueClearParameter();
    }
  }

  return _StringGuts._slowWithCString<A>(_:)();
}